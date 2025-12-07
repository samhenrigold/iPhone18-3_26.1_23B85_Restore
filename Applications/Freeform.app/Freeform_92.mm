uint64_t storeEnumTagSinglePayload for CRLBoardLibraryFolderViewModel.TimeBucket.BucketType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100C0389C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101876610, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100C038F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (*(v9 + 16) && (v10 = sub_10003E994(a1), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for UUID();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v7, v13 + *(v15 + 72) * v12, v14);
    (*(v15 + 56))(v7, 0, 1, v14);
  }

  else
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  swift_endAccess();
  type metadata accessor for UUID();
  v16 = *(v14 - 8);
  v17 = *(v16 + 48);
  if (v17(v7, 1, v14) != 1)
  {
    return (*(v16 + 32))(a2, v7, v14);
  }

  (*(v16 + 16))(a2, a1, v14);
  result = (v17)(v7, 1, v14);
  if (result != 1)
  {
    return sub_1005C5FFC(v7);
  }

  return result;
}

uint64_t sub_100C03B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v24 - v14;
  if (*(v2 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    v24 = v12;
    v16 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_objectUUIDMap;
    swift_beginAccess();
    v17 = *(v2 + v16);
    if (*(v17 + 16) && (v18 = sub_10003E994(a1), (v19 & 1) != 0))
    {
      (*(v24 + 16))(v15, *(v17 + 56) + *(v24 + 72) * v18, v8);
      (*(v24 + 32))(a2, v15, v8);
    }

    else
    {
      swift_endAccess();
      UUID.init()();
      v22 = *(v24 + 16);
      v22(v10, a1, v8);
      v22(v7, a2, v8);
      v23 = *(v24 + 56);
      v24 += 56;
      v23(v7, 0, 1, v8);
      swift_beginAccess();
      sub_100BC2288(v7, v10);
      v22(v10, a2, v8);
      v22(v7, a2, v8);
      v23(v7, 0, 1, v8);
      sub_100BC2288(v7, v10);
    }

    return swift_endAccess();
  }

  else
  {
    v20 = *(v12 + 16);

    return v20(a2, a1, v8, v13);
  }
}

void *sub_100C03F20()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v73 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v74 = v71 - v5;
  __chkstk_darwin(v6);
  v8 = v71 - v7;
  __chkstk_darwin(v9);
  v11 = v71 - v10;
  __chkstk_darwin(v12);
  v81 = v71 - v13;
  __chkstk_darwin(v14);
  v80 = v71 - v15;
  v16 = sub_1005B981C(&qword_101A15618, &qword_1014A07A0);
  __chkstk_darwin(v16 - 8);
  v18 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v71 - v20;
  v22 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_objectUUIDMap;
  swift_beginAccess();
  v23 = *(v0 + v22);
  v24 = v11;
  v25 = *(v23 + 64);
  v76 = v23 + 64;
  v26 = 1 << *(v23 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v89 = (v2 + 32);
  v86 = (v2 + 16);
  v87 = (v2 + 8);
  v84 = v2;
  v71[1] = v2 + 40;
  v85 = v23;

  v30 = 0;
  v75 = _swiftEmptyDictionarySingleton;
  v82 = v11;
  v83 = v8;
  v78 = v21;
  v79 = v18;
  v77 = v29;
  v88 = v1;
  while (2)
  {
    v31 = v30;
    if (v28)
    {
      while (1)
      {
        v32 = v31;
LABEL_12:
        v34 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v36 = v84;
        v35 = v85;
        v37 = *(v84 + 72) * (v34 | (v32 << 6));
        v38 = *(v84 + 16);
        v39 = v80;
        v38(v80, *(v85 + 48) + v37, v1);
        v40 = v81;
        v38(v81, *(v35 + 56) + v37, v1);
        v41 = sub_1005B981C(&qword_101A15620, &qword_1014A07A8);
        v42 = *(v41 + 48);
        v43 = *(v36 + 32);
        v18 = v79;
        v43(v79, v39, v1);
        v43(&v18[v42], v40, v1);
        (*(*(v41 - 8) + 56))(v18, 0, 1, v41);
        v90 = v32;
        v24 = v82;
        v8 = v83;
        v29 = v77;
        v21 = v78;
LABEL_13:
        sub_100C04A7C(v18, v21);
        v44 = sub_1005B981C(&qword_101A15620, &qword_1014A07A8);
        if ((*(*(v44 - 8) + 48))(v21, 1, v44) == 1)
        {

          return v75;
        }

        v45 = *(v44 + 48);
        v1 = v88;
        v46 = *v89;
        (*v89)(v24, v21, v88);
        v46(v8, &v21[v45], v1);
        sub_100C04A38(&qword_1019F37C0, &protocol conformance descriptor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }

        v47 = *v87;
        (*v87)(v8, v1);
        v47(v24, v1);
        v31 = v90;
        if (!v28)
        {
          goto LABEL_6;
        }
      }

      v49 = *v86;
      (*v86)(v74, v8, v1);
      v71[0] = v49;
      v49(v73, v24, v1);
      v50 = v75;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v50;
      v52 = sub_10003E994(v74);
      v53 = v50[2];
      v54 = (v51 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_30;
      }

      if (v50[3] >= v55)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = v52;
          v69 = v51;
          sub_100AA4CB8();
          v51 = v69;
          v52 = v75;
        }
      }

      else
      {
        v56 = v51;
        sub_100A8A7C4(v55, isUniquelyReferenced_nonNull_native);
        v57 = sub_10003E994(v74);
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_32;
        }

        v52 = v57;
        v51 = v56;
      }

      v75 = v91;
      if (v51)
      {
        v59 = v84;
        (*(v84 + 40))(v91[7] + *(v84 + 72) * v52, v73, v1);
        v60 = *(v59 + 8);
        v60(v74, v1);
        v60(v8, v1);
        v60(v24, v1);
        v30 = v90;
        continue;
      }

      v91[(v52 >> 6) + 8] |= 1 << v52;
      v61 = v74;
      v62 = v84;
      v63 = *(v84 + 72) * v52;
      (v71[0])(v75[6] + v63, v74, v1);
      v46((v75[7] + v63), v73, v1);
      v64 = *(v62 + 8);
      v65 = v61;
      v24 = v82;
      v8 = v83;
      v64(v65, v1);
      v64(v8, v1);
      v64(v24, v1);
      v66 = v75[2];
      v67 = __OFADD__(v66, 1);
      v68 = v66 + 1;
      if (!v67)
      {
        v75[2] = v68;
        v30 = v90;
        continue;
      }
    }

    else
    {
LABEL_6:
      if (v29 <= v31 + 1)
      {
        v33 = v31 + 1;
      }

      else
      {
        v33 = v29;
      }

      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v32 >= v29)
        {
          v90 = v33 - 1;
          v48 = sub_1005B981C(&qword_101A15620, &qword_1014A07A8);
          (*(*(v48 - 8) + 56))(v18, 1, 1, v48);
          v28 = 0;
          goto LABEL_13;
        }

        v28 = *(v76 + 8 * v32);
        ++v31;
        if (v28)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100C046E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v17 - v12;
  sub_100C04A38(&qword_1019F37C0, &protocol conformance descriptor for UUID);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v15 = *(v8 + 16);
    v17[1] = a2;
    v15(v10, a2, v7);
    swift_beginAccess();
    sub_1008BC4EC(v10, a1, v6);
    swift_endAccess();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_1005C5FFC(v6);
    }

    else
    {
      (*(v8 + 32))(v13, v6, v7);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        sub_1006B305C();
        swift_allocError();
        *v16 = 13;
        swift_willThrow();
      }

      return (*(v8 + 8))(v13, v7);
    }
  }

  return result;
}

uint64_t sub_100C04A38(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for UUID();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100C04A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A15618, &qword_1014A07A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100C04AEC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD78A8 = v4;
  unk_101AD78B0 = v6;
}

void sub_100C04BBC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD78B8 = v4;
  unk_101AD78C0 = v6;
}

double sub_100C04CD4()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v48 = &v46 - v3;
  v4 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v46 - v16;
  v18 = [*(v0 + 16) share];
  v19 = [v18 recordID];

  v20 = [v19 zoneID];
  sub_100EE9190(v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000CAAC(v9, &unk_1019F52D0, &unk_10147C1C0);
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.shareState;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v22, "Could not extract board identifier from share metadata.", 55, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    sub_1000254C8(v9, v17, type metadata accessor for CRLBoardIdentifier);
    sub_1005F1308(v17, v6);
    (*(v11 + 56))(v6, 0, 1, v10);
    v24 = OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_boardIdentifier;
    swift_beginAccess();
    sub_10002C638(v6, v1 + v24, &unk_1019F52D0, &unk_10147C1C0);
    swift_endAccess();
    v25 = [objc_opt_self() defaultCenter];
    if (qword_1019F2748 != -1)
    {
      swift_once();
    }

    v46 = qword_101AD8948;
    v26 = *(v1 + 24);
    v27 = swift_allocObject();
    swift_weakInit();
    sub_1005F1308(v17, v13);
    v28 = *(v11 + 80);
    v47 = ~v28;
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    sub_1000254C8(v13, v29 + ((v28 + 24) & ~v28), type metadata accessor for CRLBoardIdentifier);
    v51 = sub_100C081E4;
    v52 = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100059694;
    ObjectType = &unk_10189A800;
    v30 = _Block_copy(aBlock);

    v31 = [v25 addObserverForName:v46 object:v26 queue:0 usingBlock:v30];
    _Block_release(v30);

    ObjectType = swift_getObjectType();
    aBlock[0] = v31;
    sub_100C075EC(aBlock);
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v34 = sub_10084B8C8();
    v36 = v35;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v34;
    *(inited + 40) = v36;
    v37 = static os_log_type_t.default.getter();
    sub_100005404(v32, &_mh_execute_header, v37, "Started listening for a CRLBoardLibraryProvidingDidUpdateSnapshot notification that contains the identifier for the board we are trying to join: %@.", 148, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v38 = type metadata accessor for TaskPriority();
    v39 = v48;
    (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
    v40 = swift_allocObject();
    swift_weakInit();
    sub_1005F1308(v17, v13);
    type metadata accessor for MainActor();

    v41 = static MainActor.shared.getter();
    v42 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = (v28 + 40) & v47;
    v44 = swift_allocObject();
    v44[2] = v41;
    v44[3] = &protocol witness table for MainActor;
    v44[4] = v40;
    sub_1000254C8(v42, v44 + v43, type metadata accessor for CRLBoardIdentifier);

    v45 = sub_10064191C(0, 0, v39, &unk_1014A0898, v44);
    sub_100025F68(v17, type metadata accessor for CRLBoardIdentifier);
    *(v1 + OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_acceptShareTask) = v45;
  }

  return result;
}

void sub_100C053D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v4 = _s5BoardVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_1019FA3E0, &unk_101474F20);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v14 = type metadata accessor for Notification();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v40 = v10;
    v41 = v5;
    v42 = v4;
    v43 = v7;
    v44 = v13;
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v22 = UUID.uuidString.getter();
    v24 = v23;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v22;
    *(inited + 40) = v24;
    v25 = static os_log_type_t.default.getter();
    v45 = v20;
    sub_100005404(v20, &_mh_execute_header, v25, "Snapshot updated after a share was accepted. Attempting to open accepted shared board with UUID: %@.", 100, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    (*(v15 + 16))(v17, v46, v14);
    sub_100F7CC80(v17, v47);
    v26 = v47[0];
    if (!v47[0] || (v28 = v47[3], v27 = v47[4], v29 = v47[2], v30 = sub_10079DDA0(a3, v47[1]), v48 = v26, sub_10000CAAC(&v48, &unk_1019FB880, &unk_101474EC0), , v49 = v29, sub_10000CAAC(&v49, &unk_101A22E80, &unk_1014A08B0), v50 = v28, sub_10000CAAC(&v50, &qword_1019FB890, &qword_101474ED0), v51 = v27, sub_10000CAAC(&v51, &qword_1019FB890, &qword_101474ED0), (v30 & 1) == 0))
    {
      v36 = static os_log_type_t.default.getter();
      sub_100005404(v45, &_mh_execute_header, v36, "Snapshot update didn't contain shared board identifier. Skipping.", 65, 2, _swiftEmptyArrayStorage);

      return;
    }

    v31 = *(v19 + 24);
    v32 = v44;
    sub_1010AB99C(a3, v44);
    v33 = v42;
    v34 = v41;
    v35 = v40;
    v37 = v43;

    (*(v34 + 56))(v32, 0, 1, v33);
    sub_10000BE14(v32, v35, &unk_1019FA3E0, &unk_101474F20);
    if ((*(v34 + 48))(v35, 1, v33) == 1)
    {
      sub_10000CAAC(v35, &unk_1019FA3E0, &unk_101474F20);
    }

    else
    {
      sub_1000254C8(v35, v37, _s5BoardVMa);
      if ((*(v37 + *(v33 + 60)) & 1) == 0)
      {
        sub_100C07768();
        v39 = *(v19 + OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_didConfirmBoardIsReadyToOpen);
        *(v19 + OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_didConfirmBoardIsReadyToOpen) = 1;
        if ((v39 & 1) == 0)
        {
          sub_100C078A0();
        }

        sub_100025F68(v37, _s5BoardVMa);
        goto LABEL_16;
      }

      sub_100025F68(v37, _s5BoardVMa);
    }

    v38 = static os_log_type_t.default.getter();
    sub_100005404(v45, &_mh_execute_header, v38, "Snapshot update contained the board identifier but the board metadata says it's still just an invitation. Keep watching for snapshot updates.", 141, 2, _swiftEmptyArrayStorage);

LABEL_16:
    sub_10000CAAC(v32, &unk_1019FA3E0, &unk_101474F20);
  }
}

uint64_t sub_100C05988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[121] = a5;
  v5[120] = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[122] = v6;
  v5[123] = *(v6 - 8);
  v5[124] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[125] = v7;
  v5[126] = *(v7 - 8);
  v5[127] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v5[128] = swift_task_alloc();
  sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  v5[129] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[130] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[131] = v9;
  v5[132] = v8;

  return _swift_task_switch(sub_100C05B50, v9, v8);
}

uint64_t sub_100C05B50()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[133] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.shareState;
    v0[134] = static OS_os_log.shareState;
    v0[135] = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v5 = *(v2 + 16);
    *(inited + 56) = sub_100006370(0, &qword_101A157F8, CKShareMetadata_ptr);
    *(inited + 64) = sub_10000FE24(&qword_101A15800, &qword_101A157F8, CKShareMetadata_ptr);
    *(inited + 32) = v5;
    v6 = v5;
    v7 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v7, "Accepting share with metadata: %@.", 34, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v8 = *(v2 + 24);
    v0[136] = v8;
    v9 = *(v2 + 16);
    v0[137] = v9;
    v8;
    v10 = v9;
    v11 = swift_task_alloc();
    v0[138] = v11;
    *v11 = v0;
    v11[1] = sub_100C05DAC;
    v12 = v0[121];

    return sub_1010B029C(v10, v12);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100C05DAC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1112) = a1;
  *(v3 + 1120) = v1;

  if (v1)
  {
    v4 = *(v3 + 1056);
    v5 = *(v3 + 1048);
    v6 = sub_100C069F4;
  }

  else
  {
    v7 = *(v3 + 1088);

    v4 = *(v3 + 1056);
    v5 = *(v3 + 1048);
    v6 = sub_100C05EDC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100C05EDC()
{
  v77 = v0;

  v1 = static Task<>.isCancelled.getter();
  v2 = *(v0 + 139);
  if ((v1 & 1) == 0)
  {
    if (v2 || (v3 = *(v0 + 129), v4 = *(v0 + 121), v5 = *(*(*(v0 + 133) + 24) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot), v6 = swift_task_alloc(), *(v6 + 16) = v4, , sub_10003CF3C(1, sub_1006EEE54, v6, v5, v3), , , v7 = _s4NodeVMa(0), LODWORD(v5) = (*(*(v7 - 8) + 48))(v3, 1, v7), sub_10000CAAC(v3, &unk_1019FB770, &unk_10146FA30), v5 == 1))
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v0 + 133);
        v9 = *(v8 + 48);
        ObjectType = swift_getObjectType();
        (*(v9 + 8))(v8, ObjectType, v9);
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = objc_opt_self();
        v11 = [v74 _atomicIncrementAssertCount];
        v76 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v76, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("attemptToAcceptShareAndOpenBoard()", 34, 2);
        v12 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLAcceptCloudKitShareAttempt.swift", 105, 2);
        v13 = String._bridgeToObjectiveC()();

        v14 = [v13 lastPathComponent];

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v18 = static OS_os_log.crlAssert;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v11;
        v20 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v20;
        v21 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
        *(inited + 104) = v21;
        *(inited + 72) = v12;
        *(inited + 136) = &type metadata for String;
        v22 = sub_1000053B0();
        *(inited + 112) = v15;
        *(inited + 120) = v17;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v22;
        *(inited + 152) = 128;
        v23 = v76;
        *(inited + 216) = v20;
        *(inited + 224) = v21;
        *(inited + 192) = v23;
        v24 = v12;
        v25 = v23;
        v26 = static os_log_type_t.error.getter();
        sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v27 = static os_log_type_t.error.getter();
        sub_100005404(v18, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v28 = swift_allocObject();
        v28[2] = 8;
        v28[3] = 0;
        v28[4] = 0;
        v28[5] = 0;
        v29 = __VaListBuilder.va_list()();
        StaticString.description.getter("attemptToAcceptShareAndOpenBoard()", 34, 2);
        v30 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLAcceptCloudKitShareAttempt.swift", 105, 2);
        v31 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v32 = String._bridgeToObjectiveC()();

        [v74 handleFailureInFunction:v30 file:v31 lineNumber:128 isFatal:0 format:v32 args:v29];
      }

      v33 = *(*(v0 + 133) + 32);
      if (v33)
      {
        v34 = 0xED000065706F6353;
        v35 = 0x5320646572616853;
        v36 = sub_100EFF9E4(*(v0 + 121));
        v37 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine;
        swift_beginAccess();
        sub_10000BE14(&v33[v37], v0 + 824, &qword_101A0BA28, &qword_10148CE40);
        if (*(v0 + 106))
        {
          sub_100050F74((v0 + 824), (v0 + 49));
          if (qword_1019F2270 != -1)
          {
            swift_once();
          }

          v68 = *(v0 + 128);
          v69 = *(v0 + 127);
          v73 = *(v0 + 126);
          v75 = *(v0 + 125);
          v72 = *(v0 + 123);
          v70 = *(v0 + 124);
          v71 = *(v0 + 122);
          v67 = static OS_os_log.dataSync;
          v38 = swift_initStackObject();
          v39 = v38;
          *(v38 + 16) = xmmword_10146BDE0;
          if (v33[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
          {
            v34 = 0xEC00000065706F63;
          }

          else
          {
            v35 = 0x2065746176697250;
          }

          *(v38 + 56) = &type metadata for String;
          v40 = sub_1000053B0();
          v39[8] = v40;
          v39[4] = v35;
          v39[5] = v34;
          v41 = [(objc_class *)v36 zoneName];
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;

          v39[12] = &type metadata for String;
          v39[13] = v40;
          v39[9] = v42;
          v39[10] = v44;
          v45 = static os_log_type_t.default.getter();
          sub_100005404(v67, &_mh_execute_header, v45, "<%{public}@> Fetching targeted changes for zoneID: <%{public}@>", 63, 2, v39);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          static TaskPriority.userInitiated.getter();
          v46 = type metadata accessor for TaskPriority();
          (*(*(v46 - 8) + 56))(v68, 0, 1, v46);
          v47 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_10000630C((v0 + 49), (v0 + 54));
          v48 = swift_allocObject();
          *(v48 + 16) = 0;
          *(v48 + 24) = 0;
          *(v48 + 32) = v47;
          *(v48 + 40) = v36;
          sub_100050F74(v0 + 54, v48 + 48);
          *(v48 + 88) = 0;
          *(v48 + 96) = 33;
          *(v48 + 104) = 0;
          v49 = v36;
          v50 = sub_10064191C(0, 0, v68, &unk_1014A08A0, v48);
          v51 = swift_allocObject();
          v51[2] = v33;
          v51[3] = v49;
          v51[4] = v50;
          *(v0 + 96) = sub_100C08440;
          *(v0 + 97) = v51;
          *(v0 + 92) = _NSConcreteStackBlock;
          *(v0 + 93) = *"";
          *(v0 + 94) = sub_100007638;
          *(v0 + 95) = &unk_10189A8C8;
          v52 = _Block_copy(v0 + 46);
          v53 = v49;
          v54 = v33;

          static DispatchQoS.unspecified.getter();
          *(v0 + 119) = _swiftEmptyArrayStorage;
          sub_1005D91D8();
          sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
          sub_10000D494();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v52);

          (*(v72 + 8))(v70, v71);
          (*(v73 + 8))(v69, v75);
          sub_100005070(v0 + 98);
        }

        else
        {
          sub_10000CAAC(v0 + 824, &qword_101A0BA28, &qword_10148CE40);
          if (qword_1019F2270 != -1)
          {
            swift_once();
          }

          v55 = static OS_os_log.dataSync;
          v56 = swift_initStackObject();
          v57 = v56;
          *(v56 + 16) = xmmword_10146C6B0;
          if (v33[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
          {
            v34 = 0xEC00000065706F63;
          }

          else
          {
            v35 = 0x2065746176697250;
          }

          *(v56 + 56) = &type metadata for String;
          *(v56 + 64) = sub_1000053B0();
          *(v57 + 32) = v35;
          *(v57 + 40) = v34;
          v58 = static os_log_type_t.error.getter();
          sub_100005404(v55, &_mh_execute_header, v58, "<%{public}@> Can't fetch records for zoneID. There is no syncEngine set", 71, 2, v57);

          swift_setDeallocating();
          sub_100005070((v57 + 32));
        }
      }
    }

    else
    {
      v59 = *(v0 + 134);
      v60 = *(v0 + 133);
      v61 = static os_log_type_t.default.getter();
      sub_100005404(v59, &_mh_execute_header, v61, "Found an existing board to open.", 32, 2, _swiftEmptyArrayStorage);
      v62 = *(v60 + OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_didConfirmBoardIsReadyToOpen);
      *(v60 + OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_didConfirmBoardIsReadyToOpen) = 1;
      if ((v62 & 1) == 0)
      {
        sub_100C078A0();
      }
    }

    v63 = *(v0 + 133);
    v64 = *(v63 + OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_didCheckIfBoardAlreadyExistsInSnapshot);
    *(v63 + OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_didCheckIfBoardAlreadyExistsInSnapshot) = 1;
    v2 = *(v0 + 139);
    if ((v64 & 1) == 0)
    {
      sub_100C078A0();
    }
  }

  v65 = *(v0 + 1);

  return v65();
}

uint64_t sub_100C069F4()
{
  v34 = v0;
  v1 = v0[137];
  v2 = v0[136];

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v0[140];
    v4 = v0[133];
    v5 = *(v4 + 48);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v4, v3, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = objc_opt_self();
    v7 = [v32 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("attemptToAcceptShareAndOpenBoard()", 34, 2);
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLAcceptCloudKitShareAttempt.swift", 105, 2);
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v11;
    v30 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v14 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v14;
    v15 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v15;
    *(inited + 72) = v31;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v30;
    *(inited + 120) = v29;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 136;
    v17 = v33;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v31;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter("attemptToAcceptShareAndOpenBoard()", 34, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLAcceptCloudKitShareAttempt.swift", 105, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v26 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v24 file:v25 lineNumber:136 isFatal:0 format:v26 args:v23];
  }

  v27 = v0[1];

  return v27();
}

void sub_100C06E78(id a1)
{
  v3 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v3);
  v5 = &v47 - v4;
  sub_100C0817C(a1, &v53);
  if (v54)
  {
    v49 = a1;
    sub_100050F74(&v53, v52);
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v48 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    sub_10000630C(v52, &v51);
    sub_1005B981C(&qword_101A157F0, &unk_1014A0880);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(inited + 56) = &type metadata for String;
    v10 = sub_1000053B0();
    *(inited + 64) = v10;
    *(inited + 32) = v7;
    *(inited + 40) = v9;
    v11 = OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_boardIdentifier;
    swift_beginAccess();
    sub_10000BE14(v1 + v11, v5, &unk_1019F52D0, &unk_10147C1C0);
    v12 = String.init<A>(describing:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v10;
    *(inited + 72) = v12;
    *(inited + 80) = v13;
    v14 = static os_log_type_t.default.getter();
    sub_100005404(v48, &_mh_execute_header, v14, "Timed out after %@ opening newly-joined board with identifier: %@.", 66, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    sub_100005070(v52);
    a1 = v49;
  }

  else
  {
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_10146C6B0;
    v17 = OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_boardIdentifier;
    swift_beginAccess();
    sub_10000BE14(v1 + v17, v5, &unk_1019F52D0, &unk_10147C1C0);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000053B0();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    v21 = static os_log_type_t.default.getter();
    sub_100005404(v15, &_mh_execute_header, v21, "Received a user-initiated request to cancel opening newly-joined board with identifier: %@.", 91, 2, v16);
    swift_setDeallocating();
    sub_100005070((v16 + 32));
  }

  sub_100C07768();
  v22 = OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_acceptShareTask;
  if (*(v1 + OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_acceptShareTask))
  {

    Task.cancel()();
  }

  *(v1 + v22) = 0;

  sub_100C0817C(a1, &v53);
  if (v54)
  {
    sub_100C081B4(&v53);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v1 + 48);
    ObjectType = swift_getObjectType();
    (*(v23 + 24))(v1, ObjectType, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = objc_opt_self();
    v25 = [v49 _atomicIncrementAssertCount];
    v50 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v50, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("cancel(reason:)", 15, 2);
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLAcceptCloudKitShareAttempt.swift", 105, 2);
    v27 = String._bridgeToObjectiveC()();

    v28 = [v27 lastPathComponent];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_10146CA70;
    *(v33 + 56) = &type metadata for Int32;
    *(v33 + 64) = &protocol witness table for Int32;
    *(v33 + 32) = v25;
    v34 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v33 + 96) = v34;
    v35 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(v33 + 104) = v35;
    *(v33 + 72) = v26;
    *(v33 + 136) = &type metadata for String;
    v36 = sub_1000053B0();
    *(v33 + 112) = v29;
    *(v33 + 120) = v31;
    *(v33 + 176) = &type metadata for UInt;
    *(v33 + 184) = &protocol witness table for UInt;
    *(v33 + 144) = v36;
    *(v33 + 152) = 181;
    v37 = v50;
    *(v33 + 216) = v34;
    *(v33 + 224) = v35;
    *(v33 + 192) = v37;
    v38 = v26;
    v39 = v37;
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v32, &_mh_execute_header, v40, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v33);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v41 = static os_log_type_t.error.getter();
    sub_100005404(v32, &_mh_execute_header, v41, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v42 = swift_allocObject();
    v42[2] = 8;
    v42[3] = 0;
    v42[4] = 0;
    v42[5] = 0;
    v43 = __VaListBuilder.va_list()();
    StaticString.description.getter("cancel(reason:)", 15, 2);
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLAcceptCloudKitShareAttempt.swift", 105, 2);
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v46 = String._bridgeToObjectiveC()();

    [v49 handleFailureInFunction:v44 file:v45 lineNumber:181 isFatal:0 format:v46 args:v43];
  }
}

uint64_t sub_100C075EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_snapshotUpdateObservationToken;
  swift_beginAccess();
  sub_10000BE14(v1 + v3, &v7, &unk_1019F4D00, &unk_10146E7F0);
  if (v8)
  {
    sub_10000BF3C(&v7, &v9);
    v4 = [objc_opt_self() defaultCenter];
    sub_100020E58(&v9, v10);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    if (qword_1019F2748 != -1)
    {
      swift_once();
    }

    [v4 removeObserver:v5 name:qword_101AD8948 object:*(v1 + 24)];

    swift_unknownObjectRelease();
    sub_100005070(&v9);
  }

  else
  {
    sub_10000CAAC(&v7, &unk_1019F4D00, &unk_10146E7F0);
  }

  swift_beginAccess();
  sub_10002C638(a1, v1 + v3, &unk_1019F4D00, &unk_10146E7F0);
  return swift_endAccess();
}

uint64_t sub_100C07768()
{
  v1 = OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_snapshotUpdateObservationToken;
  swift_beginAccess();
  sub_10000BE14(v0 + v1, &v5, &unk_1019F4D00, &unk_10146E7F0);
  if (!v6)
  {
    return sub_10000CAAC(&v5, &unk_1019F4D00, &unk_10146E7F0);
  }

  sub_10000BF3C(&v5, &v7);
  v2 = [objc_opt_self() defaultCenter];
  sub_100020E58(&v7, v8);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  if (qword_1019F2748 != -1)
  {
    swift_once();
  }

  [v2 removeObserver:v3 name:qword_101AD8948 object:*(v0 + 24)];

  swift_unknownObjectRelease();
  return sub_100005070(&v7);
}

void sub_100C078A0()
{
  v1 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v38 - v2;
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_didConfirmBoardIsReadyToOpen) == 1 && *(v0 + OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_didCheckIfBoardAlreadyExistsInSnapshot) == 1)
  {
    v8 = OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_boardIdentifier;
    swift_beginAccess();
    sub_10000BE14(v0 + v8, v3, &unk_1019F52D0, &unk_10147C1C0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000CAAC(v3, &unk_1019F52D0, &unk_10147C1C0);
    }

    else
    {
      sub_1000254C8(v3, v7, type metadata accessor for CRLBoardIdentifier);
      v9 = [objc_opt_self() defaultCenter];
      if (qword_1019F1EE0 != -1)
      {
        swift_once();
      }

      v10 = qword_101AD78C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v40[0] = 0xD000000000000033;
      v40[1] = 0x80000001015912D0;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = v4;
      v12 = sub_10002C58C((inited + 72));
      sub_1005F1308(v7, v12);
      sub_100078EA4(inited);
      swift_setDeallocating();
      sub_10000CAAC(inited + 32, &unk_1019FB8B0, &unk_101471280);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v9 postNotificationName:v10 object:0 userInfo:isa];

      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v0 + 48);
        ObjectType = swift_getObjectType();
        (*(v14 + 32))(v0, v7, ObjectType, v14);
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = objc_opt_self();
        v16 = [v39 _atomicIncrementAssertCount];
        v40[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v40, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("signalReadyToOpenBoardIfNeeded()", 32, 2);
        v38 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLAcceptCloudKitShareAttempt.swift", 105, 2);
        v17 = String._bridgeToObjectiveC()();

        v18 = [v17 lastPathComponent];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v22 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v23 = swift_initStackObject();
        *(v23 + 16) = xmmword_10146CA70;
        *(v23 + 56) = &type metadata for Int32;
        *(v23 + 64) = &protocol witness table for Int32;
        *(v23 + 32) = v16;
        v24 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v23 + 96) = v24;
        v25 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
        *(v23 + 104) = v25;
        v26 = v38;
        *(v23 + 72) = v38;
        *(v23 + 136) = &type metadata for String;
        v27 = sub_1000053B0();
        *(v23 + 112) = v19;
        *(v23 + 120) = v21;
        *(v23 + 176) = &type metadata for UInt;
        *(v23 + 184) = &protocol witness table for UInt;
        *(v23 + 144) = v27;
        *(v23 + 152) = 236;
        v28 = v40[0];
        *(v23 + 216) = v24;
        *(v23 + 224) = v25;
        *(v23 + 192) = v28;
        v29 = v26;
        v30 = v28;
        v31 = static os_log_type_t.error.getter();
        sub_100005404(v22, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v23);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v32 = static os_log_type_t.error.getter();
        sub_100005404(v22, &_mh_execute_header, v32, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v33 = swift_allocObject();
        v33[2] = 8;
        v33[3] = 0;
        v33[4] = 0;
        v33[5] = 0;
        v34 = __VaListBuilder.va_list()();
        StaticString.description.getter("signalReadyToOpenBoardIfNeeded()", 32, 2);
        v35 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLAcceptCloudKitShareAttempt.swift", 105, 2);
        v36 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v37 = String._bridgeToObjectiveC()();

        [v39 handleFailureInFunction:v35 file:v36 lineNumber:236 isFatal:0 format:v37 args:v34];
      }

      sub_100025F68(v7, type metadata accessor for CRLBoardIdentifier);
    }
  }
}

uint64_t sub_100C07F98()
{
  sub_1000C1024((v0 + 5));
  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_boardIdentifier, &unk_1019F52D0, &unk_10147C1C0);

  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_snapshotUpdateObservationToken, &unk_1019F4D00, &unk_10146E7F0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLAcceptCloudKitShareAttempt(uint64_t a1)
{
  result = qword_101A15678;
  if (!qword_101A15678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C080B0(uint64_t a1)
{
  sub_100028BF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100C081E4(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_100C053D8(a1, v4, v5);
}

uint64_t sub_100C08258(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100C05988(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100C08350(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_1009E1BC8(a1, v4, v5, v6, v7, v1 + 48, v8, v9);
}

uint64_t sub_100C0844C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100C08464(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100C084B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_100C08534()
{
  result = qword_101A15808[0];
  if (!qword_101A15808[0])
  {
    result = swift_getWitnessTable("%,9", &type metadata for CRLAcceptCloudKitShareAttemptError, v0, v1);
    atomic_store(result, qword_101A15808);
  }

  return result;
}

uint64_t sub_100C08588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_100C085F0()
{
  result = qword_101A15890;
  if (!qword_101A15890)
  {
    result = swift_getWitnessTable("E+9", &type metadata for CRLTimeoutTaskError, v0, v1);
    atomic_store(result, &qword_101A15890);
  }

  return result;
}

uint64_t sub_100C08644(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100C086F0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_100C08818(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1005B981C(&qword_101A15AE0, &qword_1014A0D68);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_100064110(*(a1 + 48) + 40 * v11, v24);
        sub_100064288(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_100064110(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_10000CAAC(v21, &unk_101A15AE8, &unk_1014A0D70);

          goto LABEL_23;
        }

        sub_100064288(v22 + 8, v20);
        sub_10000CAAC(v21, &unk_101A15AE8, &unk_1014A0D70);
        sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_10000BE7C(v18, v19);
        v12 = result;
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;

          *(v2[7] + 8 * v12) = v18;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100C08AF8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019F6E18, qword_10146FC08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = (&v14 - v7);
  *v8 = a1;
  v8[1] = a2;

  UUID.init()();
  v9 = *(v2 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100B38A34(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_100B38A34((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  sub_10003DFF8(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, &qword_1019F6E18, qword_10146FC08);
  v12 = *(v2 + 16);
  *(v2 + 16) = v9;
  sub_100C08C70(v12);
}

void sub_100C08C70(uint64_t a1)
{
  v32 = a1;
  v2 = sub_1005B981C(&qword_1019F6E18, qword_10146FC08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - v4;
  v6 = sub_1005B981C(&qword_101A15B60, &qword_1014A0EC0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = sub_1005B981C(&unk_101A15B68, &qword_1014A0EC8);
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  __chkstk_darwin(v13);
  v16 = &v27 - v14;
  v17 = *(v1 + 16);
  if (*(v17 + 16))
  {
    v30 = v1;
    v31 = v6;
    v28 = v5;
    v29 = v15;
    v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    sub_10000BE14(v17 + v18, &v27 - v14, &qword_1019F6E18, qword_10146FC08);
    v19 = *(v3 + 56);
    v20 = 1;
    (v19)(v16, 0, 1);
    if (*(v32 + 16))
    {
      sub_10000BE14(v32 + v18, v12, &qword_1019F6E18, qword_10146FC08);
      v20 = 0;
    }

    v19(v12, v20, 1, v2);
    v21 = *(v31 + 48);
    sub_10000BE14(v16, v8, &unk_101A15B68, &qword_1014A0EC8);
    sub_10000BE14(v12, &v8[v21], &unk_101A15B68, &qword_1014A0EC8);
    v22 = *(v3 + 48);
    if (v22(v8, 1, v2) == 1)
    {
      sub_10000CAAC(v12, &unk_101A15B68, &qword_1014A0EC8);
      sub_10000CAAC(v16, &unk_101A15B68, &qword_1014A0EC8);
      if (v22(&v8[v21], 1, v2) == 1)
      {
        sub_10000CAAC(v8, &unk_101A15B68, &qword_1014A0EC8);
        return;
      }
    }

    else
    {
      v23 = v29;
      sub_10000BE14(v8, v29, &unk_101A15B68, &qword_1014A0EC8);
      if (v22(&v8[v21], 1, v2) != 1)
      {
        v24 = v23;
        v25 = v28;
        sub_10003DFF8(&v8[v21], v28, &qword_1019F6E18, qword_10146FC08);
        v26 = static UUID.== infix(_:_:)();
        sub_10000CAAC(v25, &qword_1019F6E18, qword_10146FC08);
        sub_10000CAAC(v12, &unk_101A15B68, &qword_1014A0EC8);
        sub_10000CAAC(v16, &unk_101A15B68, &qword_1014A0EC8);
        sub_10000CAAC(v24, &qword_1019F6E18, qword_10146FC08);
        sub_10000CAAC(v8, &unk_101A15B68, &qword_1014A0EC8);
        if (v26)
        {
          return;
        }

        goto LABEL_10;
      }

      sub_10000CAAC(v12, &unk_101A15B68, &qword_1014A0EC8);
      sub_10000CAAC(v16, &unk_101A15B68, &qword_1014A0EC8);
      sub_10000CAAC(v23, &qword_1019F6E18, qword_10146FC08);
    }

    sub_10000CAAC(v8, &qword_101A15B60, &qword_1014A0EC0);
LABEL_10:
    sub_100C090F8();
  }
}

uint64_t sub_100C090F8()
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v51 - v2;
  v4 = sub_1005B981C(&unk_101A15B68, &qword_1014A0EC8);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = sub_1005B981C(&qword_1019F6E18, qword_10146FC08);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v17 = &v51 - v15;
  v18 = *(v0 + 16);
  if (*(v18 + 16))
  {
    sub_10000BE14(v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v6, &qword_1019F6E18, qword_10146FC08);
    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    v58 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = &v51 - v15;
    v60 = v3;
    v61 = v0;
    v57 = v11;
    (*(v11 + 56))(v6, 1, 1, v10, v16);
    v56 = objc_opt_self();
    v19 = [v56 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v62, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("runNextTask()", 13, 2);
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTaskQueue.swift", 83, 2);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v22;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v55 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v19;
    v24 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v24;
    v25 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v25;
    v26 = v54;
    *(inited + 72) = v54;
    *(inited + 136) = &type metadata for String;
    v27 = sub_1000053B0();
    v28 = v52;
    *(inited + 112) = v53;
    *(inited + 120) = v28;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v27;
    *(inited + 152) = 31;
    v29 = v62;
    *(inited + 216) = v24;
    *(inited + 224) = v25;
    *(inited + 192) = v29;
    v30 = v26;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    v33 = v55;
    sub_100005404(v55, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v34, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
    v35[2] = 8;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
    v36 = __VaListBuilder.va_list()();
    StaticString.description.getter("runNextTask()", 13, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTaskQueue.swift", 83, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v39 = String._bridgeToObjectiveC()();

    [v56 handleFailureInFunction:v37 file:v38 lineNumber:31 isFatal:0 format:v39 args:v36];

    v0 = v61;
    v3 = v60;
    v17 = v59;
    v13 = v58;
    v11 = v57;
  }

  sub_10003DFF8(v6, v9, &unk_101A15B68, &qword_1014A0EC8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v40 = &unk_101A15B68;
    v41 = &qword_1014A0EC8;
    v42 = v9;
  }

  else
  {
    sub_10003DFF8(v9, v17, &qword_1019F6E18, qword_10146FC08);
    v43 = type metadata accessor for TaskPriority();
    (*(*(v43 - 8) + 56))(v3, 1, 1, v43);
    sub_10000BE14(v17, v13, &qword_1019F6E18, qword_10146FC08);
    v44 = v17;
    v45 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v46 = v13;
    v47 = (v12 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = v3;
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    sub_10003DFF8(v46, v49 + v45, &qword_1019F6E18, qword_10146FC08);
    *(v49 + v47) = v0;

    sub_10064191C(0, 0, v48, &unk_1014A0ED8, v49);

    v42 = v44;
    v40 = &qword_1019F6E18;
    v41 = qword_10146FC08;
  }

  return sub_10000CAAC(v42, v40, v41);
}

uint64_t sub_100C09894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1005B981C(&qword_1019F6E18, qword_10146FC08);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C09978, 0, 0);
}

uint64_t sub_100C09978()
{
  v1 = (**(v0 + 16))();
  *(v0 + 72) = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_100C09A40;

  return Task.value.getter(v2, v1, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100C09A40()
{
  *(*v1 + 88) = v0;

  if (v0)
  {

    v2 = sub_100C09EEC;
  }

  else
  {
    v2 = sub_100C09B68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C09B68()
{
  v1 = v0;

  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v28 = v2;
  v5 = *(v2 + 16);

  result = sub_10097F450(sub_100C32D70, v4, v5);
  if (v7)
  {
    v8 = v5[2];
    v9 = v8;
    goto LABEL_7;
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v32 = result;
  v11 = v5 + 2;
  v10 = v5[2];
  if (v8 != v10)
  {
    v29 = v0[5];
    while (v8 < v10)
    {
      v20 = v0[8];
      v21 = v5;
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v22 = v5 + v30;
      v23 = *(v29 + 72);
      v31 = v23 * v8;
      sub_10000BE14(&v22[v23 * v8], v20, &qword_1019F6E18, qword_10146FC08);
      v24 = static UUID.== infix(_:_:)();
      result = sub_10000CAAC(v20, &qword_1019F6E18, qword_10146FC08);
      if (v24)
      {
        v5 = v21;
      }

      else
      {
        v25 = v32;
        if (v8 == v32)
        {
          v5 = v21;
        }

        else
        {
          if (v32 < 0)
          {
            goto LABEL_34;
          }

          v26 = *v11;
          if (v32 >= *v11)
          {
            goto LABEL_35;
          }

          v27 = v23 * v32;
          result = sub_10000BE14(&v22[v23 * v32], v0[7], &qword_1019F6E18, qword_10146FC08);
          if (v8 >= v26)
          {
            goto LABEL_36;
          }

          sub_10000BE14(&v22[v31], v0[6], &qword_1019F6E18, qword_10146FC08);
          v5 = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10113CEF8(v21);
          }

          result = sub_10002C638(v0[6], v5 + v30 + v27, &qword_1019F6E18, qword_10146FC08);
          if (v8 >= v5[2])
          {
            goto LABEL_37;
          }

          result = sub_10002C638(v0[7], v5 + v30 + v31, &qword_1019F6E18, qword_10146FC08);
          v25 = v32;
        }

        v32 = v25 + 1;
      }

      ++v8;
      v11 = v5 + 2;
      v10 = v5[2];
      if (v8 == v10)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_5:
  v9 = v32;
  if (v8 < v32)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v32 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_7:
  v12 = v9;
  v13 = v9 - v8;
  v14 = v8 + v13;
  if (__OFADD__(v8, v13))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v14 <= v5[3] >> 1)
  {
    v16 = v5;
  }

  else
  {
    if (v8 <= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v8;
    }

    v16 = sub_100B38A34(isUniquelyReferenced_nonNull_native, v17, 1, v5);
  }

  sub_10067CEFC(v12, v8, 0);
  v18 = *(v28 + 16);
  *(v28 + 16) = v16;
  sub_100C08C70(v18);

  v19 = v1[1];

  return v19();
}

uint64_t sub_100C09EEC()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v28 = v2;
  v5 = *(v2 + 16);

  result = sub_10097F450(sub_100C32D70, v4, v5);
  if (v7)
  {
    v8 = v5[2];
    v9 = v8;
    goto LABEL_7;
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v32 = result;
  v11 = v5 + 2;
  v10 = v5[2];
  if (v8 != v10)
  {
    v29 = v0[5];
    while (v8 < v10)
    {
      v20 = v0[8];
      v21 = v5;
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v22 = v5 + v30;
      v23 = *(v29 + 72);
      v31 = v23 * v8;
      sub_10000BE14(&v22[v23 * v8], v20, &qword_1019F6E18, qword_10146FC08);
      v24 = static UUID.== infix(_:_:)();
      result = sub_10000CAAC(v20, &qword_1019F6E18, qword_10146FC08);
      if (v24)
      {
        v5 = v21;
      }

      else
      {
        v25 = v32;
        if (v8 == v32)
        {
          v5 = v21;
        }

        else
        {
          if (v32 < 0)
          {
            goto LABEL_34;
          }

          v26 = *v11;
          if (v32 >= *v11)
          {
            goto LABEL_35;
          }

          v27 = v23 * v32;
          result = sub_10000BE14(&v22[v23 * v32], v0[7], &qword_1019F6E18, qword_10146FC08);
          if (v8 >= v26)
          {
            goto LABEL_36;
          }

          sub_10000BE14(&v22[v31], v0[6], &qword_1019F6E18, qword_10146FC08);
          v5 = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10113CEF8(v21);
          }

          result = sub_10002C638(v0[6], v5 + v30 + v27, &qword_1019F6E18, qword_10146FC08);
          if (v8 >= v5[2])
          {
            goto LABEL_37;
          }

          result = sub_10002C638(v0[7], v5 + v30 + v31, &qword_1019F6E18, qword_10146FC08);
          v25 = v32;
        }

        v32 = v25 + 1;
      }

      ++v8;
      v11 = v5 + 2;
      v10 = v5[2];
      if (v8 == v10)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_5:
  v9 = v32;
  if (v8 < v32)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v32 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_7:
  v12 = v9;
  v13 = v9 - v8;
  v14 = v8 + v13;
  if (__OFADD__(v8, v13))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v14 <= v5[3] >> 1)
  {
    v16 = v5;
  }

  else
  {
    if (v8 <= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v8;
    }

    v16 = sub_100B38A34(isUniquelyReferenced_nonNull_native, v17, 1, v5);
  }

  sub_10067CEFC(v12, v8, 0);
  v18 = *(v28 + 16);
  *(v28 + 16) = v16;
  sub_100C08C70(v18);

  v19 = v1[1];

  return v19();
}

void sub_100C0A2E0(uint64_t a1, const mach_header_64 *a2, const char *a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  swift_getObjectType();
  sub_1005B981C(a10, a11);
  String.init<A>(describing:)();
  v14 = String._bridgeToObjectiveC()();

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v66 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v66;
  v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v14;
  v17 = inited + 32;
  *(inited + 64) = v16;
  v57 = objc_opt_self();
  v58 = v14;
  LODWORD(v63) = [v57 _atomicIncrementAssertCount];
  v70 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v70, "Abstract method not overridden by %{public}@", 44, 2u);
  v59 = a3;
  v65 = a4;
  v60 = a5;
  StaticString.description.getter(a3, a4, a5);
  v18 = String._bridgeToObjectiveC()();

  StaticString.description.getter(a6, a7, a8);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v19 lastPathComponent];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v61 = static OS_os_log.crlAssert;
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10146CA70;
    *(v24 + 56) = &type metadata for Int32;
    *(v24 + 64) = &protocol witness table for Int32;
    *(v24 + 32) = v63;
    *(v24 + 96) = v66;
    *(v24 + 104) = v16;
    v25 = v18;
    *(v24 + 72) = v18;
    *(v24 + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(v24 + 112) = v21;
    *(v24 + 120) = v23;
    *(v24 + 176) = &type metadata for UInt;
    *(v24 + 184) = &protocol witness table for UInt;
    v56 = v26;
    *(v24 + 144) = v26;
    *(v24 + 152) = a9;
    v27 = v70;
    *(v24 + 216) = v66;
    *(v24 + 224) = v16;
    v63 = v16;
    *(v24 + 192) = v27;
    v28 = v25;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v61, a2, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v61, a2, v31, "Abstract method not overridden by %{public}@", 44, 2, inited);

    type metadata accessor for __VaListBuilder();
    v32 = swift_allocObject();
    v32[2] = 8;
    v32[3] = 0;
    v21 = v32 + 3;
    v32[4] = 0;
    v32[5] = 0;
    a2 = inited;
    v33 = *(inited + 16);
    if (!v33)
    {
      break;
    }

    v23 = 0;
    v18 = 40;
    while (1)
    {
      inited = sub_100020E58((v17 + 40 * v23), *(v17 + 40 * v23 + 24));
      v34 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v16 = *v21;
      v35 = *(v34 + 16);
      v36 = __OFADD__(*v21, v35);
      v37 = *v21 + v35;
      if (v36)
      {
        break;
      }

      v38 = v34;
      inited = v32[4];
      if (inited >= v37)
      {
        goto LABEL_19;
      }

      if (inited + 0x4000000000000000 < 0)
      {
        goto LABEL_30;
      }

      v39 = v32[5];
      if (2 * inited > v37)
      {
        v37 = 2 * inited;
      }

      v32[4] = v37;
      if ((v37 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_31;
      }

      v40 = swift_slowAlloc();
      v32[5] = v40;
      if (v39)
      {
        if (v40 != v39 || v40 >= &v39[8 * v16])
        {
          memmove(v40, v39, 8 * v16);
        }

        inited = v32;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_19:
        v40 = v32[5];
      }

      if (!v40)
      {
        goto LABEL_34;
      }

      v42 = *(v38 + 16);
      if (v42)
      {
        v43 = (v38 + 32);
        v44 = *v21;
        while (1)
        {
          v45 = *v43++;
          *&v40[8 * v44] = v45;
          v44 = *v21 + 1;
          if (__OFADD__(*v21, 1))
          {
            break;
          }

          *v21 = v44;
          if (!--v42)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:

      if (++v23 == v33)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_26:
  v62 = __VaListBuilder.va_list()();
  StaticString.description.getter(v59, v65, v60);
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter(a6, a7, a8);
  v47 = String._bridgeToObjectiveC()();

  if (a9 < 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    StaticString.description.getter("Abstract method not overridden by %{public}@", 44, 2);
    v48 = String._bridgeToObjectiveC()();

    [v57 handleFailureInFunction:v46 file:v47 lineNumber:a9 isFatal:0 format:v48 args:v62];

    swift_setDeallocating();
    swift_arrayDestroy();
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_10146BDE0;
    *(v49 + 56) = v66;
    *(v49 + 64) = v63;
    *(v49 + 32) = v58;
    v50 = v58;
    v51 = StaticString.description.getter(v59, v65, v60);
    *(v49 + 96) = &type metadata for String;
    *(v49 + 104) = v56;
    *(v49 + 72) = v51;
    *(v49 + 80) = v52;
    String.init(format:_:)();
    v53 = objc_allocWithZone(NSException);
    v54 = String._bridgeToObjectiveC()();

    v55 = [v53 initWithName:NSInternalInconsistencyException reason:v54 userInfo:0];

    [v55 raise];
  }
}

uint64_t sub_100C0A9A0(uint64_t a1, char a2)
{
  v3 = *sub_100020E58((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

NSString sub_100C0A9FC()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD78F8 = result;
  return result;
}

NSString sub_100C0AA34()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD7908 = result;
  return result;
}

NSString sub_100C0AA6C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD7910 = result;
  return result;
}

id sub_100C0AB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v16.super_class = type metadata accessor for CRLOBWelcomeController();
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:symbolName:contentLayout:", v11, v12, v13, a7);

  return v14;
}

uint64_t sub_100C0AF94@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_1005B981C(&unk_1019FA3E0, &unk_101474F20);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = _s5BoardVMa(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*((swift_isaMask & *v1) + 0x1A0))(v14);
  if (v17)
  {
    v18 = v17;
    sub_101012C40(v11);

    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_100025530(v11, v16, _s5BoardVMa);
      sub_100025530(v16, a1, _s5BoardVMa);
      v21 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
      goto LABEL_7;
    }

    sub_10000CAAC(v11, &unk_1019FA3E0, &unk_101474F20);
  }

  v19 = sub_100C0B3C0();
  if (v19)
  {
    v20 = v19;
    sub_10004FE64(v19 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);

    sub_100025530(v5, v8, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_100025530(v8, a1, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v21 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
  }

  v23 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
}

uint64_t sub_100C0B3C0()
{
  v0 = sub_100051290();
  v1 = [v0 viewControllerForColumn:2];

  if (!v1)
  {
LABEL_7:
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("folderGridViewController", 24, 2);
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v15;
    v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 125;
    v18 = v28;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter("folderGridViewController", 24, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:125 isFatal:0 format:v27 args:v24];

    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    goto LABEL_7;
  }

  v3 = [v2 topViewController];

  if (v3)
  {
    type metadata accessor for CRLiOSFolderGridViewController(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_100C0B810(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_101A15AC0, &qword_1014A0D18);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_welcomeControllerDidDismissContinuation;
  swift_beginAccess();
  sub_10000BE14(v1 + v9, v8, &unk_101A15AC0, &qword_1014A0D18);
  swift_beginAccess();
  sub_100C33044(a1, v1 + v9);
  swift_endAccess();
  sub_10000BE14(v8, v5, &unk_101A15AC0, &qword_1014A0D18);
  v10 = sub_1005B981C(&qword_101A15A30, &qword_1014B6A70);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_10000CAAC(a1, &unk_101A15AC0, &qword_1014A0D18);
    sub_10000CAAC(v8, &unk_101A15AC0, &qword_1014A0D18);
    return sub_10000CAAC(v5, &unk_101A15AC0, &qword_1014A0D18);
  }

  else
  {
    CheckedContinuation.resume(returning:)();
    sub_10000CAAC(a1, &unk_101A15AC0, &qword_1014A0D18);
    sub_10000CAAC(v8, &unk_101A15AC0, &qword_1014A0D18);
    return (*(v11 + 8))(v5, v10);
  }
}

uint64_t sub_100C0BA2C()
{
  v1 = v0;
  v2 = sub_100051290();
  v3 = [v2 presentedViewController];

  if (!v3)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v4 = [*(v1 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController) presentedViewController];
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (v4)
  {
    if (Strong)
    {
      sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
      v7 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_9;
  }

  if (Strong)
  {
    v7 = 0;
    v4 = Strong;
LABEL_9:

    goto LABEL_10;
  }

  v7 = 1;
LABEL_10:
  v8 = *((swift_isaMask & *v1) + 0x360);
  v9 = v8();
  v10 = [v9 presentedViewController];

  if (v10)
  {

    v11 = v8();
    v12 = [v11 presentedViewController];

    v13 = swift_unknownObjectWeakLoadStrong();
    v14 = v13;
    if (v12)
    {
      if (v13)
      {
        sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
        v15 = static NSObject.== infix(_:_:)();

        v7 |= v15;
      }

      else
      {
      }
    }

    else if (v13)
    {
    }

    else
    {
      v7 = 1;
    }
  }

  return v7 & 1;
}

void *sub_100C0BC28()
{
  v0 = objc_opt_self();
  v1 = [v0 _atomicIncrementAssertCount];
  v24 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v24, "CRLSceneDelegate subclass must override", 39, 2u);
  StaticString.description.getter("whatsNewBullets", 15, 2);
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v3 lastPathComponent];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v1;
  v10 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v10;
  v11 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v11;
  *(inited + 72) = v2;
  *(inited + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(inited + 112) = v5;
  *(inited + 120) = v7;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v12;
  *(inited + 152) = 156;
  v13 = v24;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  *(inited + 192) = v13;
  v14 = v2;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "CRLSceneDelegate subclass must override", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter("whatsNewBullets", 15, 2);
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter("CRLSceneDelegate subclass must override", 39, 2);
  v22 = String._bridgeToObjectiveC()();

  [v0 handleFailureInFunction:v20 file:v21 lineNumber:156 isFatal:0 format:v22 args:v19];

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100C0BFF0()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C0C088, v3, v2);
}

uint64_t sub_100C0C088()
{
  v1 = *(v0 + 16);

  sub_100C0A2E0(v1, &_mh_execute_header, "present(boardViewController:animated:restoringFrom:)", 52, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2u, 164, &qword_101A15B08, &unk_1014A0E58);
  v2 = *(v0 + 8);

  return v2();
}

void sub_100C0C138()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v46 - v5;
  v7 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  (*(*(v7 - 8) + 56))(v6, 1, 5, v7);
  sub_10004FE64(v6, v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10005013C();
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  sub_1000505F0();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v49 = v10;
  v50 = v6;
  v11 = *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___boardLibrary];
  v51 = v3;
  v47 = v9;
  if (v11)
  {
    v12 = type metadata accessor for CRLBoardLibrary();
    v13 = &off_1018B0BE8;
    v14 = v11;
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v54[1] = 0;
    v54[2] = 0;
  }

  v54[0] = v14;
  v54[3] = v12;
  v54[4] = v13;
  v48 = type metadata accessor for CRLiOSFolderGridViewController(0);
  v15 = objc_allocWithZone(v48);
  v16 = &v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate];
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_thumbnailProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___diffableDataSource] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_pendingBoardIdentifiersToRefresh] = _swiftEmptySetSingleton;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_storeMetadataObserver] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver] = 0;
  v17 = &v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString];
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchComplete] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_gridLayout] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_listLayout] = 0;
  v18 = &v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_iCloudStatusObserver];
  *v18 = 0u;
  v18[1] = 0u;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidEndObserver] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidBeginObserver] = 0;
  v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController] = 0;
  v19 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  v20 = sub_1005B981C(&unk_101A23860, qword_10147BC00);
  (*(*(v20 - 8) + 56))(&v15[v19], 1, 1, v20);
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections] = _swiftEmptySetSingleton;
  v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___layoutBarButtonItem] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToAddBoard] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToSelectAllOrNone] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___editModeToolbarButtonToDuplicateSelectedItems] = 0;
  v21 = &v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_defaultTitleForToolbarItemToSelectAllOrNone];
  v22 = objc_opt_self();
  sub_1000505E0(v11);
  v46 = v0;
  v23 = [v22 mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *v21 = v27;
  v21[1] = v29;
  v30 = &v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_alternateTitleForToolbarItemToSelectAllOrNone];
  v31 = [v22 mainBundle];
  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  *v30 = v35;
  v30[1] = v37;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_cachedSearchController] = 0;
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint] = 0;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight] = 0;
  v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView] = 0;
  v38 = v51;
  sub_10004FE64(v51, &v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter], type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v39 = &v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider];
  v40 = v46;
  *v39 = v47;
  v39[1] = &off_1018B0AB8;
  *(v16 + 1) = &off_10189AB48;
  swift_unknownObjectWeakAssign();
  v41 = v49;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_boardPreviewImageCache] = v49;
  sub_10000BE14(v54, v53, &qword_101A15AD0, &qword_101483860);
  type metadata accessor for CRLBoardSearchHelper();
  swift_allocObject();
  v42 = v41;
  *&v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_boardSearchHelper] = sub_100050DA4(v53);
  v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout] = 1;
  v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldRestoreViewState] = 1;
  v43 = &v15[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions];
  *v43 = 1;
  v43[2] = 0;
  v44 = [objc_allocWithZone(UICollectionViewLayout) init];
  v52.receiver = v15;
  v52.super_class = v48;
  v45 = objc_msgSendSuper2(&v52, "initWithCollectionViewLayout:", v44);

  [v45 setHidesBottomBarWhenPushed:1];
  sub_10000CAAC(v54, &qword_101A15AD0, &qword_101483860);
  sub_10005117C(v38, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10005117C(v50, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  *&v45[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_thumbnailProvider + 8] = &off_10189AB78;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100C0C7FC(uint64_t a1)
{
  v2[41] = a1;
  v2[42] = v1;
  sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  v2[43] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[48] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[49] = v5;
  v2[50] = v4;

  return _swift_task_switch(sub_100C0C934, v5, v4);
}

void sub_100C0C934()
{
  *(v0[41] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosing) = 1;
  sub_10005013C();
  v0[51] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[52] = v2;
    *v2 = v0;
    v2[1] = sub_100C0C9F4;
    v3 = v0[41];

    sub_1010B0A3C(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C0C9F4()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_100C0CD38;
  }

  else
  {

    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_100C0CB10;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100C0CB10()
{

  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[41];
  sub_10101542C();
  *(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosed) = 1;
  sub_100C0AF94(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000CAAC(v0[43], &unk_101A15B20, &qword_10146F1E0);
  }

  else
  {
    v5 = v0[46];
    v6 = v0[47];
    sub_100025530(v0[43], v6, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10004FE64(v6, v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v0[46];
    v8 = v0[47];
    if (EnumCaseMultiPayload == 2)
    {
      sub_10005117C(v0[47], type metadata accessor for CRLBoardLibraryViewModel.Item);
      v10 = _s5BoardVMa;
      v11 = v9;
    }

    else
    {
      sub_10005117C(v0[46], type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1000513C8();
      v13 = v12;
      sub_10061D55C(v8, 1);

      v11 = v8;
      v10 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    }

    sub_10005117C(v11, v10);
  }

  v14 = v0[42];
  v15.n128_f64[0] = sub_100C13F48();
  (*((swift_isaMask & *v14) + 0x2E0))(v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100C0CD38()
{
  v65 = v0;
  v7 = v0[53];
  v1 = v0[51];

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[40] = v7;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 32) = v3;
  v62 = v6;
  v63 = inited + 32;
  *(inited + 64) = v6;
  *(inited + 40) = v5;
  v59 = objc_opt_self();
  LODWORD(v7) = [v59 _atomicIncrementAssertCount];
  v64 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v64, "Error closing board: %{public}@", 31, 2u);
  StaticString.description.getter("tearDownBoardViewController(boardViewController:)", 49, 2);
  v61 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v8 lastPathComponent];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v13 = static OS_os_log.crlAssert;
    v60 = v0;
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_10146CA70;
    *(v14 + 56) = &type metadata for Int32;
    *(v14 + 64) = &protocol witness table for Int32;
    *(v14 + 32) = v7;
    v15 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v14 + 96) = v15;
    v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v14 + 72) = v61;
    *(v14 + 136) = &type metadata for String;
    *(v14 + 144) = v62;
    *(v14 + 104) = v16;
    *(v14 + 112) = v10;
    *(v14 + 120) = v12;
    *(v14 + 176) = &type metadata for UInt;
    *(v14 + 184) = &protocol witness table for UInt;
    *(v14 + 152) = 183;
    v17 = v64;
    *(v14 + 216) = v15;
    *(v14 + 224) = v16;
    *(v14 + 192) = v17;
    v18 = v61;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v14);
    swift_setDeallocating();
    v62 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "Error closing board: %{public}@", 31, 2, inited);

    type metadata accessor for __VaListBuilder();
    v12 = swift_allocObject();
    v12[2] = 8;
    v12[3] = 0;
    v22 = v12 + 3;
    v12[4] = 0;
    v12[5] = 0;
    v23 = *(inited + 16);
    v0 = inited;
    if (!v23)
    {
      break;
    }

    v24 = 0;
    while (1)
    {
      v25 = (v63 + 40 * v24);
      v10 = v25[4];
      LODWORD(v7) = sub_100020E58(v25, v25[3]);
      v26 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v27 = *v22;
      v28 = *(v26 + 16);
      v29 = __OFADD__(*v22, v28);
      v30 = *v22 + v28;
      if (v29)
      {
        break;
      }

      v7 = v12[4];
      if (v7 >= v30)
      {
        goto LABEL_19;
      }

      if (v7 + 0x4000000000000000 < 0)
      {
        goto LABEL_38;
      }

      v10 = v12[5];
      if (2 * v7 > v30)
      {
        v30 = 2 * v7;
      }

      v12[4] = v30;
      if ((v30 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_39;
      }

      inited = v26;
      v31 = swift_slowAlloc();
      v32 = v31;
      v12[5] = v31;
      if (v10)
      {
        if (v31 != v10 || v31 >= &v10[8 * v27])
        {
          memmove(v31, v10, 8 * v27);
        }

        LODWORD(v7) = v12;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v26 = inited;
LABEL_19:
        v32 = v12[5];
        if (!v32)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }

      v26 = inited;
      if (!v32)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_20:
      v34 = *(v26 + 16);
      if (v34)
      {
        v35 = (v26 + 32);
        v36 = *v22;
        while (1)
        {
          v37 = *v35++;
          *&v32[8 * v36] = v37;
          v36 = *v22 + 1;
          if (__OFADD__(*v22, 1))
          {
            break;
          }

          *v22 = v36;
          if (!--v34)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:

      if (++v24 == v23)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

LABEL_27:
  v38 = __VaListBuilder.va_list()();
  StaticString.description.getter("tearDownBoardViewController(boardViewController:)", 49, 2);
  v39 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
  v40 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Error closing board: %{public}@", 31, 2);
  v41 = String._bridgeToObjectiveC()();

  [v59 handleFailureInFunction:v39 file:v40 lineNumber:183 isFatal:0 format:v41 args:v38];

  swift_setDeallocating();
  swift_arrayDestroy();

  v42 = v60[44];
  v43 = v60[45];
  v44 = v60[43];
  v45 = v60[41];
  sub_10101542C();
  *(v45 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosed) = 1;
  sub_100C0AF94(v44);
  if ((*(v43 + 48))(v44, 1, v42) == 1)
  {
    sub_10000CAAC(v60[43], &unk_101A15B20, &qword_10146F1E0);
  }

  else
  {
    v46 = v60[46];
    v47 = v60[47];
    sub_100025530(v60[43], v47, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10004FE64(v47, v46, type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v50 = v60[46];
    v49 = v60[47];
    if (EnumCaseMultiPayload == 2)
    {
      sub_10005117C(v60[47], type metadata accessor for CRLBoardLibraryViewModel.Item);
      v51 = _s5BoardVMa;
      v52 = v50;
    }

    else
    {
      sub_10005117C(v60[46], type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1000513C8();
      v54 = v53;
      sub_10061D55C(v49, 1);

      v52 = v49;
      v51 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    }

    sub_10005117C(v52, v51);
  }

  v55 = v60[42];
  v56.n128_f64[0] = sub_100C13F48();
  (*((swift_isaMask & *v55) + 0x2E0))(v56);

  v57 = v60[1];

  return v57();
}

uint64_t sub_100C0D4E8()
{
  v1[33] = v0;
  type metadata accessor for MainActor();
  v1[34] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[35] = v3;
  v1[36] = v2;

  return _swift_task_switch(sub_100C0D580, v3, v2);
}

uint64_t sub_100C0D580()
{
  v1 = (*((swift_isaMask & **(v0 + 264)) + 0x360))();
  *(v0 + 296) = v1;
  v2 = [v1 presentedViewController];
  v3 = v2;
  *(v0 + 304) = v2;
  if (!v2)
  {

    goto LABEL_7;
  }

  if ([v2 isBeingDismissed] & 1) != 0 || (objc_msgSend(v3, "isBeingPresented"))
  {

    v4 = 0;
LABEL_5:
    sub_100C32FF0();
    swift_allocError();
    *v5 = v4;
    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    swift_willThrow();

LABEL_7:
    v8 = *(v0 + 8);

    return v8();
  }

  if (![v3 crl_canBeDismissed])
  {

    if (qword_1019F2220 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.sceneManagement;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
    *(inited + 64) = sub_10000FDE0(&qword_101A15B78, &qword_101A10AB0, UIViewController_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 32) = v3;
    v14 = v3;
    v15 = static os_log_type_t.default.getter();
    sub_100005404(v12, &_mh_execute_header, v15, "View controller can't be dismissed: %@", 38, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v4 = 1;
    goto LABEL_5;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass() == 0;
  v11 = swift_task_alloc();
  *(v0 + 312) = v11;
  *v11 = v0;
  v11[1] = sub_100C0D884;

  return sub_100D1CCA4(v10);
}

uint64_t sub_100C0D884()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_100C0DA30;
  }

  else
  {
    v5 = sub_100C0D9C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100C0D9C0()
{
  v1 = v0[37];
  v2 = v0[38];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C0DA30()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v3 = Error.publicDescription.getter(v0[26], v0[27]);
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.fullDescription.getter(v0[29]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Caught error trying to dismiss view controller: %{public}@ <%@>", 63, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v11 = v0[37];
  v10 = v0[38];
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100C0DBF8()
{
  v1[31] = v0;
  v1[32] = type metadata accessor for MainActor();
  v1[33] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[34] = v3;
  v1[35] = v2;

  return _swift_task_switch(sub_100C0DC94, v3, v2);
}

uint64_t sub_100C0DC94()
{
  v31 = v0;
  v1 = *(v0[31] + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
  if (!v1 || ([v1 isUserInteractionEnabled] & 1) == 0)
  {
    v29 = objc_opt_self();
    v2 = [v29 _atomicIncrementAssertCount];
    v30 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v30, "Waiting for user to dismiss Welcome, but user interaction is disabled", 69, 2u);
    StaticString.description.getter("waitForWelcomeControllerDismissal()", 35, 2);
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v11;
    v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 1724;
    v14 = v30;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Waiting for user to dismiss Welcome, but user interaction is disabled", 69, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter("waitForWelcomeControllerDismissal()", 35, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Waiting for user to dismiss Welcome, but user interaction is disabled", 69, 2);
    v23 = String._bridgeToObjectiveC()();

    [v29 handleFailureInFunction:v21 file:v22 lineNumber:1724 isFatal:0 format:v23 args:v20];
  }

  v24 = v0[31];
  v25 = static MainActor.shared.getter();
  v0[36] = v25;
  v26 = swift_task_alloc();
  v0[37] = v26;
  *(v26 + 16) = v24;
  v27 = swift_task_alloc();
  v0[38] = v27;
  *v27 = v0;
  v27[1] = sub_100C0E150;

  return withCheckedContinuation<A>(isolation:function:_:)(v27, v25, &protocol witness table for MainActor, 0xD000000000000023, 0x8000000101591EC0, sub_100C2F5B0, v26, &type metadata for () + 8);
}

uint64_t sub_100C0E150()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_100C0E2B0, v3, v2);
}

uint64_t sub_100C0E2B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C0E37C()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C0E414, v3, v2);
}

uint64_t sub_100C0E414()
{
  v1 = *(v0 + 16);

  sub_100C0A2E0(v1, &_mh_execute_header, "revealSplitViewIfNeeded(hidingView:)", 36, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2u, 293, &qword_101A15B08, &unk_1014A0E58);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C0E4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v4[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100C0E584, v6, v5);
}

uint64_t sub_100C0E584()
{
  v1 = v0[4];
  v2 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  (*(*(v2 - 8) + 56))(v1, 1, 5, v2);
  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v0[8] = v9;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100C0E720;
  v11 = v0[4];

  return sub_100C0E89C(v11, v7, v9, 1, 0);
}

uint64_t sub_100C0E720(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 80) = a1;

  sub_10005117C(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v4 = *(v2 + 56);
  v5 = *(v2 + 48);

  return _swift_task_switch(sub_100C33560, v5, v4);
}

uint64_t sub_100C0E89C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 425) = a5;
  *(v6 + 424) = a4;
  *(v6 + 184) = a3;
  *(v6 + 192) = v5;
  *(v6 + 168) = a1;
  *(v6 + 176) = a2;
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  *(v6 + 200) = v7;
  *(v6 + 208) = *(v7 - 8);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = sub_1005B981C(&qword_101A15AA0, &qword_1014A0CE0);
  *(v6 + 232) = swift_task_alloc();
  sub_1005B981C(&qword_101A15AA8, &qword_1014A0CE8);
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = type metadata accessor for MainActor();
  *(v6 + 288) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 296) = v9;
  *(v6 + 304) = v8;

  return _swift_task_switch(sub_100C0EA5C, v9, v8);
}

uint64_t sub_100C0EA5C()
{
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = static OS_os_log.sceneManagement;
  v0[39] = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = type metadata accessor for CRLSceneDelegate(0);
  *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v1;
  v4 = v1;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v5, "Scene delegate (%p) will show new board.", 40, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_100C0EBF0;

  return sub_100C0D4E8();
}

uint64_t sub_100C0EBF0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_100C0FBD4;
  }

  else
  {
    v5 = sub_100C0ED2C;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_100C0ED2C()
{
  sub_10004FE64(*(v0 + 168), *(v0 + 272), type metadata accessor for CRLBoardLibraryViewModel.Filter);
  swift_storeEnumTagMultiPayload();
  sub_10005013C();
  *(v0 + 336) = v1;
  if (v1)
  {
    *(v0 + 344) = static MainActor.shared.getter();
    v2 = swift_task_alloc();
    *(v0 + 352) = v2;
    *v2 = v0;
    v2[1] = sub_100C0EE30;
    v3 = *(v0 + 425);
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    v6 = *(v0 + 168);

    sub_1010B6164(v6, v4, v5, v3, 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C0EE30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100C0F520;
  }

  else
  {
    *(v4 + 368) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100C0EFB0;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100C0EFB0()
{
  v1 = v0[46];
  v2 = v0[42];

  v0[47] = sub_1010BF428(v1, v2);

  v3 = v0[37];
  v4 = v0[38];

  return _swift_task_switch(sub_100C0F034, v3, v4);
}

uint64_t sub_100C0F034()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 192);
  *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_delegate + 8) = &off_1018A45C8;
  swift_unknownObjectWeakAssign();
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shareSheetProvider);
  v4 = &v3[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_thumbnailProvider];
  *v4 = v2;
  *(v4 + 1) = &off_10189AB78;
  v5 = v3;
  swift_unknownObjectRelease();
  v6 = v2;

  v7 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker);
  if (v7)
  {
    *(v7 + 16) = 1;
  }

  v8 = sub_100C0B3C0();
  if (v8)
  {
    v9 = v8;
    sub_10004FE64(v8 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, *(v0 + 256), type metadata accessor for CRLBoardLibraryViewModel.Filter);

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  v17 = *(v0 + 168);
  v18 = *(v16 + 56);
  v18(v11, v10, 1, v15);
  sub_10004FE64(v17, v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v18(v12, 0, 1, v15);
  v19 = *(v14 + 48);
  sub_10000BE14(v11, v13, &qword_101A15AA8, &qword_1014A0CE8);
  sub_10000BE14(v12, v13 + v19, &qword_101A15AA8, &qword_1014A0CE8);
  v20 = *(v16 + 48);
  if (v20(v13, 1, v15) == 1)
  {
    v21 = *(v0 + 256);
    v22 = *(v0 + 200);
    sub_10000CAAC(*(v0 + 248), &qword_101A15AA8, &qword_1014A0CE8);
    sub_10000CAAC(v21, &qword_101A15AA8, &qword_1014A0CE8);
    if (v20(v13 + v19, 1, v22) == 1)
    {
      sub_10000CAAC(*(v0 + 232), &qword_101A15AA8, &qword_1014A0CE8);
LABEL_16:
      v34 = *(*(*(v0 + 376) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
      *(v0 + 400) = v34;
      v35 = v34;
      sub_1006632BC();
      v36 = swift_task_alloc();
      *(v0 + 408) = v36;
      *v36 = v0;
      v36[1] = sub_100C0F96C;
      v37 = *(v0 + 376);
      v38 = *(v0 + 424);

      return sub_100C22ED8(v37, 0, v38, 0);
    }

    goto LABEL_11;
  }

  v23 = *(v0 + 200);
  sub_10000BE14(*(v0 + 232), *(v0 + 240), &qword_101A15AA8, &qword_1014A0CE8);
  v24 = v20(v13 + v19, 1, v23);
  v26 = *(v0 + 248);
  v25 = *(v0 + 256);
  v27 = *(v0 + 240);
  if (v24 == 1)
  {
    sub_10000CAAC(*(v0 + 248), &qword_101A15AA8, &qword_1014A0CE8);
    sub_10000CAAC(v25, &qword_101A15AA8, &qword_1014A0CE8);
    sub_10005117C(v27, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_11:
    sub_10000CAAC(*(v0 + 232), &qword_101A15AA0, &qword_1014A0CE0);
    goto LABEL_12;
  }

  v31 = *(v0 + 232);
  v32 = *(v0 + 216);
  sub_100025530(v13 + v19, v32, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v33 = sub_100068604(v27, v32);
  sub_10005117C(v32, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10000CAAC(v26, &qword_101A15AA8, &qword_1014A0CE8);
  sub_10000CAAC(v25, &qword_101A15AA8, &qword_1014A0CE8);
  sub_10005117C(v27, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10000CAAC(v31, &qword_101A15AA8, &qword_1014A0CE8);
  if (v33)
  {
    goto LABEL_16;
  }

LABEL_12:
  v28 = swift_task_alloc();
  *(v0 + 384) = v28;
  *v28 = v0;
  v28[1] = sub_100C0F750;
  v29 = *(v0 + 272);

  return sub_100C176F4(v29, 0, 0, 0, 0);
}

uint64_t sub_100C0F520()
{
  v1 = v0[42];

  v2 = v0[37];
  v3 = v0[38];

  return _swift_task_switch(sub_100C0F588, v2, v3);
}

uint64_t sub_100C0F588()
{
  v1 = v0[34];

  sub_10005117C(v1, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v2 = v0[45];
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.crlDefault;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[20] = v2;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v8, "Error adding new board: %@", 26, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_100C0F750(void *a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = *(v4 + 296);
    v6 = *(v4 + 304);
    v7 = sub_100C0FD7C;
  }

  else
  {

    v5 = *(v4 + 296);
    v6 = *(v4 + 304);
    v7 = sub_100C0F878;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C0F878()
{
  v1 = *(v0 + 272);
  sub_1000513C8();
  v3 = v2;
  sub_10061D55C(v1, 1);

  v4 = *(*(*(v0 + 376) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  *(v0 + 400) = v4;
  v5 = v4;
  sub_1006632BC();
  v6 = swift_task_alloc();
  *(v0 + 408) = v6;
  *v6 = v0;
  v6[1] = sub_100C0F96C;
  v7 = *(v0 + 376);
  v8 = *(v0 + 424);

  return sub_100C22ED8(v7, 0, v8, 0);
}

uint64_t sub_100C0F96C()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_100C0FF4C;
  }

  else
  {
    v5 = sub_100C0FAA8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100C0FAA8()
{
  v1 = v0[47];
  v2 = v0[34];
  v3 = v0[24];

  v4.n128_f64[0] = sub_100C13F48();
  (*((swift_isaMask & *v3) + 0x2E0))(v4);

  sub_10005117C(v2, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v5 = v0[50];

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_100C0FBD4()
{

  v1 = v0[41];
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlDefault;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[20] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error adding new board: %@", 26, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_100C0FD7C()
{
  v1 = v0[47];
  v2 = v0[34];

  sub_10005117C(v2, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v3 = v0[49];
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlDefault;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[20] = v3;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v4, &_mh_execute_header, v9, "Error adding new board: %@", 26, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_100C0FF4C()
{
  v1 = v0[47];
  v2 = v0[34];

  sub_10005117C(v2, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v3 = v0[52];
  v4 = v0[50];
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.crlDefault;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[20] = v3;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v5, &_mh_execute_header, v10, "Error adding new board: %@", 26, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));

  v11 = v0[1];

  return v11(v4);
}

uint64_t sub_100C10128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1005F1164;

  return sub_100C101E4(a5);
}

uint64_t sub_100C101E4(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v2[39] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v2[45] = v4;
  v2[46] = *(v4 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[49] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[50] = v6;
  v2[51] = v5;

  return _swift_task_switch(sub_100C103BC, v6, v5);
}

uint64_t sub_100C103BC()
{
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = static OS_os_log.sceneManagement;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = type metadata accessor for CRLSceneDelegate(0);
  *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v1;
  v1;
  v4 = URL.description.getter();
  v6 = v5;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  *(inited + 72) = v4;
  *(inited + 80) = v6;
  v7 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Scene Delegate (%p) Opening board from URL: %@.", 47, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  sub_10005013C();
  if (!v8)
  {
    __break(1u);
    return _swift_continuation_await(v8);
  }

  v9 = v8;
  v10 = v0[45];
  v11 = v0[46];
  v12 = v0[44];
  sub_1010B1828(0, v12);

  v13 = *(v11 + 48);
  if (v13(v12, 1, v10) == 1)
  {
    v14 = v0[45];
    v15 = v0[43];
    sub_10000CAAC(v0[44], &unk_1019F52D0, &unk_10147C1C0);
    sub_1007AECE4(v15);
    if (v13(v15, 1, v14) == 1)
    {
      v16 = sub_10000CAAC(v0[43], &unk_1019F52D0, &unk_10147C1C0);
      v17 = sub_1007AF7B4(v16);
      if (v18)
      {
        v19 = v0[40];
        v20 = v0[41];
        v21 = v0[39];
        String.append(_:)(*&v17);

        URL.init(string:)();

        if ((*(v20 + 48))(v21, 1, v19) == 1)
        {
          v22 = v0[39];

          sub_10000CAAC(v22, &unk_1019F33C0, &unk_101468A60);
LABEL_18:

          v29 = v0[1];

          return v29();
        }

        (*(v0[41] + 32))(v0[42], v0[39], v0[40]);
        if (qword_1019F2098 != -1)
        {
          swift_once();
        }

        v30 = static OS_os_log.crlDefault;
        v31 = static os_log_type_t.default.getter();
        sub_100005404(v30, &_mh_execute_header, v31, "Opening URL to start share acceptance flow.", 43, 2, _swiftEmptyArrayStorage);
        v32 = [objc_opt_self() sharedApplication];
        v0[54] = v32;
        URL._bridgeToObjectiveC()(v33);
        v35 = v34;
        v0[55] = v34;
        sub_100BD72C0(_swiftEmptyArrayStorage);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_100C2E798(&qword_1019F3CF0, type metadata accessor for OpenExternalURLOptionsKey, "}~<");
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v0[56] = isa;

        v0[2] = v0;
        v0[7] = v0 + 57;
        v0[3] = sub_100C10EA0;
        v37 = swift_continuation_init();
        v0[31] = sub_1005B981C(&unk_101A15B50, &qword_101488160);
        v0[24] = _NSConcreteStackBlock;
        v0[25] = *"";
        v0[26] = sub_100C0A9A0;
        v0[27] = &unk_10189B278;
        v0[28] = v37;
        [v32 openURL:v35 options:isa completionHandler:v0 + 24];
        v8 = v0 + 2;

        return _swift_continuation_await(v8);
      }

LABEL_17:

      goto LABEL_18;
    }

    sub_100025530(v0[43], v0[47], type metadata accessor for CRLBoardIdentifier);
    v0[35] = &type metadata for CRLFeatureFlags;
    v0[36] = sub_100004D60();
    *(v0 + 256) = 21;
    v26 = isFeatureEnabled(_:)();
    sub_100005070(v0 + 32);
    if ((v26 & 1) == 0)
    {
      sub_10005117C(v0[47], type metadata accessor for CRLBoardIdentifier);
      goto LABEL_17;
    }

    v27 = swift_task_alloc();
    v0[53] = v27;
    *v27 = v0;
    v27[1] = sub_100C10CB4;
    v28 = v0[47];

    return sub_100C18D7C(v28);
  }

  else
  {
    sub_100025530(v0[44], v0[48], type metadata accessor for CRLBoardIdentifier);
    v23 = swift_task_alloc();
    v0[52] = v23;
    *v23 = v0;
    v23[1] = sub_100C10ACC;
    v24 = v0[48];

    return sub_100C1E55C(v24);
  }
}

uint64_t sub_100C10ACC()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_100C10BEC, v3, v2);
}

uint64_t sub_100C10BEC()
{
  v1 = *(v0 + 384);

  sub_10005117C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C10CB4()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return _swift_task_switch(sub_100C10DD4, v3, v2);
}

uint64_t sub_100C10DD4()
{
  v1 = *(v0 + 376);

  sub_10005117C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C10EA0()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);

  return _swift_task_switch(sub_100C10FA8, v2, v1);
}

uint64_t sub_100C10FA8()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[40];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

void sub_100C11088(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v7 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.sceneManagement;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  v31 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v12 = type metadata accessor for CRLSceneDelegate(0);
  *(inited + 56) = v12;
  v13 = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
  *(inited + 64) = v13;
  *(inited + 32) = a1;
  v14 = a1;
  v15 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v15, "Scene delegate (%p) performing cleanup", 38, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = a2;
  v18 = v14;
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v18;
  v20[5] = a2;
  sub_10064191C(0, 0, v9, &unk_1014A0F00, v20);

  v21.n128_f64[0] = sub_100C13F48();
  (*((swift_isaMask & *v18) + 0x2E0))(v21);
  v22 = swift_beginAccess();
  if (*(a3 + 16) == 1 && !*(v18 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt))
  {
    v28 = swift_initStackObject();
    *(v28 + 16) = v31;
    *(v28 + 56) = v12;
    *(v28 + 64) = v13;
    *(v28 + 32) = v18;
    v29 = v18;
    v30 = static os_log_type_t.default.getter();
    sub_100005404(v10, &_mh_execute_header, v30, "Scene delegate (%p) showing first launch action.", 48, 2, v28);
    swift_setDeallocating();
    sub_100005070((v28 + 32));
    if (v32 == 2)
    {
      sub_100C29FB8();
    }

    else if (v32 == 1)
    {
      sub_100C289F4();
    }
  }

  else
  {
    v23 = (*((swift_isaMask & *v18) + 0x360))(v22);
    sub_100C5D58C();
    if (v24)
    {
      sub_100C5D8C4(v23, 0, 0);
    }

    else
    {
      v25 = [objc_opt_self() standardUserDefaults];
      v26 = sub_100131204();
      v27 = String._bridgeToObjectiveC()();
      [v25 setInteger:v26 forKey:v27];
    }
  }
}

uint64_t sub_100C114C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v10 = (*((swift_isaMask & *a4) + 0x248) + **((swift_isaMask & *a4) + 0x248));
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_1005F1164;

  return v10(a5);
}

double sub_100C1162C(void *a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v12 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v15 = &v41 - v14;
  v16 = [a1 cloudKitShareMetadata];
  if (v16)
  {
    v17 = v16;
    if (qword_1019F2220 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.sceneManagement;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = type metadata accessor for CRLSceneDelegate(0);
    *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
    *(inited + 32) = a2;
    v20 = a2;
    v21 = static os_log_type_t.default.getter();
    sub_100005404(v18, &_mh_execute_header, v21, "Scene delegate (%p) accepting CloudKit share", 44, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    sub_100C196F0(v17);

    goto LABEL_5;
  }

  swift_beginAccess();
  v23 = *(a3 + 16);
  if (v23)
  {
    v24 = qword_1019F2220;
    v25 = v23;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.sceneManagement;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_10146C6B0;
    *(v27 + 56) = type metadata accessor for CRLSceneDelegate(0);
    *(v27 + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
    *(v27 + 32) = a2;
    v28 = a2;
    v29 = static os_log_type_t.default.getter();
    sub_100005404(v26, &_mh_execute_header, v29, "Scene delegate (%p) handling user activity", 42, 2, v27);
    swift_setDeallocating();
    sub_100005070((v27 + 32));
    v30 = swift_allocObject();
    v30[2] = v28;
    v30[3] = v25;
    v30[4] = a4;
    v30[5] = a5;
    v31 = v28;
    v32 = v25;

    sub_100C08AF8(sub_100C3359C, v30);
  }

  else
  {
    swift_beginAccess();
    if ((*(a6 + 16) & 1) == 0)
    {
LABEL_5:
      a4();
      return result;
    }

    if (qword_1019F2220 != -1)
    {
      swift_once();
    }

    v33 = static OS_os_log.sceneManagement;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_10146C6B0;
    *(v34 + 56) = type metadata accessor for CRLSceneDelegate(0);
    *(v34 + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
    *(v34 + 32) = a2;
    v35 = a2;
    v36 = static os_log_type_t.default.getter();
    sub_100005404(v33, &_mh_execute_header, v36, "Scene delegate (%p) showing new board before First Launch", 57, 2, v34);
    swift_setDeallocating();
    sub_100005070((v34 + 32));
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v15, 1, 1, v37);
    type metadata accessor for MainActor();
    v38 = v35;

    v39 = static MainActor.shared.getter();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = &protocol witness table for MainActor;
    v40[4] = v38;
    v40[5] = a4;
    v40[6] = a5;
    sub_10064191C(0, 0, v15, &unk_1014A0EF0, v40);
  }

  return result;
}

uint64_t sub_100C11B60(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = a1;
  v13 = a2;

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = a3;
  v15[7] = a4;
  return sub_10064191C(0, 0, v10, &unk_1014A0EE8, v15);
}

uint64_t sub_100C11CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v7[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[9] = v9;
  v7[10] = v8;

  return _swift_task_switch(sub_100C11D60, v9, v8);
}

uint64_t sub_100C11D60()
{
  if (sub_100C0BA2C())
  {
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_100C11F50;

    return sub_100C0DBF8();
  }

  else
  {

    v3 = *(v0[2] + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
    if (!v3 || (v4 = [v3 rootViewController]) == 0 || (v5 = v4, v6 = objc_msgSend(v4, "crl_windowWrapper"), v5, !v6) || (v7 = objc_msgSend(v6, "newWrapperBeginningIgnoringUserInteractionSafely"), v6, !v7))
    {
      if (qword_1019F20A8 != -1)
      {
        swift_once();
      }

      v8 = static OS_os_log.crlError;
      v9 = static os_log_type_t.error.getter();
      sub_100005404(v8, &_mh_execute_header, v9, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
      v7 = 0;
    }

    v0[12] = v7;
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_100C121EC;
    v11 = v0[3];

    return sub_100C15078(v11);
  }
}

uint64_t sub_100C11F50()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_100C12070, v3, v2);
}

uint64_t sub_100C12070()
{

  v1 = *(v0[2] + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
  if (!v1 || (v2 = [v1 rootViewController]) == 0 || (v3 = v2, v4 = objc_msgSend(v2, "crl_windowWrapper"), v3, !v4) || (v5 = objc_msgSend(v4, "newWrapperBeginningIgnoringUserInteractionSafely"), v4, !v5))
  {
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.crlError;
    v7 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v7, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
    v5 = 0;
  }

  v0[12] = v5;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_100C121EC;
  v9 = v0[3];

  return sub_100C15078(v9);
}

uint64_t sub_100C121EC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C12328, v1, v0);
}

uint64_t sub_100C12328()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  v2(v4);
  v5 = [v1 endIgnoringUserInteractionSafely];
  v6 = (*((swift_isaMask & *v3) + 0x1A0))(v5);
  if (v6)
  {
    v7 = v6;
    [*(v6 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100C12430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v6[5] = swift_task_alloc();
  v6[6] = type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v8;
  v6[10] = v7;

  return _swift_task_switch(sub_100C12508, v8, v7);
}

uint64_t sub_100C12508()
{
  if (sub_100C0BA2C())
  {
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_100C126DC;

    return sub_100C0DBF8();
  }

  else
  {

    v3 = *(v0[2] + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
    if (!v3 || (v4 = [v3 rootViewController]) == 0 || (v5 = v4, v6 = objc_msgSend(v4, "crl_windowWrapper"), v5, !v6) || (v7 = objc_msgSend(v6, "newWrapperBeginningIgnoringUserInteractionSafely"), v6, !v7))
    {
      if (qword_1019F20A8 != -1)
      {
        swift_once();
      }

      v8 = static OS_os_log.crlError;
      v9 = static os_log_type_t.error.getter();
      sub_100005404(v8, &_mh_execute_header, v9, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
      v7 = 0;
    }

    v0[12] = v7;
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[13] = v11;
    v0[14] = v10;

    return _swift_task_switch(sub_100C1295C, v11, v10);
  }
}

uint64_t sub_100C126DC()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_100C127FC, v3, v2);
}

uint64_t sub_100C127FC()
{

  v1 = *(v0[2] + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
  if (!v1 || (v2 = [v1 rootViewController]) == 0 || (v3 = v2, v4 = objc_msgSend(v2, "crl_windowWrapper"), v3, !v4) || (v5 = objc_msgSend(v4, "newWrapperBeginningIgnoringUserInteractionSafely"), v4, !v5))
  {
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.crlError;
    v7 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v7, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
    v5 = 0;
  }

  v0[12] = v5;
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[13] = v9;
  v0[14] = v8;

  return _swift_task_switch(sub_100C1295C, v9, v8);
}

uint64_t sub_100C1295C()
{
  v1 = v0[5];
  v2 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  (*(*(v2 - 8) + 56))(v1, 1, 5, v2);
  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v0[15] = v9;
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_100C12AFC;
  v11 = v0[5];

  return sub_100C0E89C(v11, v7, v9, 0, 0);
}

uint64_t sub_100C12AFC(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);

  sub_10005117C(v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v5 = *(v3 + 112);
  v6 = *(v3 + 104);

  return _swift_task_switch(sub_100C12C80, v6, v5);
}

uint64_t sub_100C12C80()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);

  v2(v4);
  v5 = [v1 endIgnoringUserInteractionSafely];
  v6 = (*((swift_isaMask & *v3) + 0x1A0))(v5);
  if (v6)
  {
    v7 = v6;
    [*(v6 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100C12D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_100C12E54;

  return sub_100C101E4(a5);
}

uint64_t sub_100C12E54()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C12F90, v1, v0);
}

uint64_t sub_100C12F90()
{
  v1 = *(v0 + 16);

  *(v1 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_boardOpenInFlight) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C130D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1005F1164;

  return sub_100C0C7FC(a5);
}

void sub_100C131E8(void *a1)
{
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.sceneManagement;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = type metadata accessor for CRLSceneDelegate(0);
  *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v1;
  v5 = v1;
  v6 = [a1 session];
  v7 = [v6 persistentIdentifier];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  *(inited + 72) = v8;
  *(inited + 80) = v10;
  v11 = static os_log_type_t.info.getter();
  sub_100005404(v3, &_mh_execute_header, v11, "Scene delegate (%p) scene %@ will resign active", 47, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  v12 = swift_arrayDestroy();
  v13 = (*((swift_isaMask & *v5) + 0x1A0))(v12);
  if (v13)
  {
    v14 = v13;
    sub_10101DAB8(0);
  }

  v15 = sub_1000801B8();
  [v15 resignCurrent];

  v16 = [objc_opt_self() defaultCenter];
  if (qword_1019F1F28 != -1)
  {
    swift_once();
  }

  [v16 postNotificationName:qword_101AD7920 object:a1];
}

void sub_100C134E8(void *a1)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.sceneManagement;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = type metadata accessor for CRLSceneDelegate(0);
  *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v1;
  v8 = v1;
  v9 = [a1 session];
  v10 = [v9 persistentIdentifier];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  *(inited + 72) = v11;
  *(inited + 80) = v13;
  v14 = static os_log_type_t.info.getter();
  sub_100005404(v6, &_mh_execute_header, v14, "Scene delegate (%p) scene %@ did enter background", 49, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  v15 = swift_arrayDestroy();
  v16 = *((swift_isaMask & *v8) + 0x360);
  v17 = (v16)(v15);
  v18 = [v17 presentedViewController];

  if (v18)
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();

    if (v19)
    {
      v20 = v16();
      v21 = [v20 presentedViewController];

      if (v21)
      {
        [v21 dismissViewControllerAnimated:0 completion:0];
      }
    }
  }

  v22 = (*((swift_isaMask & *v8) + 0x1A0))();
  if (v22)
  {
    v23 = v22;
    sub_10102231C(v33);
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v23;
    v26 = v33[0];
    *(v25 + 56) = v33[1];
    v27 = v34[0];
    *(v25 + 72) = v33[2];
    *(v25 + 88) = v27;
    *(v25 + 97) = *(v34 + 9);
    *(v25 + 40) = v26;
    v28 = v23;
    sub_1006D62AC(v33, &v32);
    sub_100CA64C8(0, 0, v5, &unk_1014A0E70, v25);

    sub_1006D62E4(v33);
    sub_10000CAAC(v5, &qword_1019FB750, &qword_10146F1B0);
  }

  v29 = sub_100C13ED8();
  sub_100C140B8(v29);

  v30 = [objc_opt_self() defaultCenter];
  if (qword_1019F1F38 != -1)
  {
    swift_once();
  }

  [v30 postNotificationName:qword_101AD7930 object:a1];
}

uint64_t sub_100C139EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v4[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100C13AB0, v6, v5);
}

uint64_t sub_100C13AB0()
{
  v1 = v0[4];
  v2 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  (*(*(v2 - 8) + 56))(v1, 1, 5, v2);
  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v0[8] = v9;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100C13C4C;
  v11 = v0[4];

  return sub_100C0E89C(v11, v7, v9, 1, 0);
}

uint64_t sub_100C13C4C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 80) = a1;

  sub_10005117C(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v4 = *(v2 + 56);
  v5 = *(v2 + 48);

  return _swift_task_switch(sub_100C13DC8, v5, v4);
}

uint64_t sub_100C13DC8()
{
  v1 = v0[10];
  v2 = v0[2];

  *v2 = v1;

  v3 = v0[1];

  return v3();
}

double sub_100C13F48()
{
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CE00;
  *(inited + 32) = sub_100C13ED8();
  *(inited + 40) = sub_1000801B8();
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_7;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) || (v1 = *(inited + 32), sub_100C140B8(v1), v1, *((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL))
  {
    __break(1u);
LABEL_7:
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    sub_100C140B8(v5);

    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  v2 = *(inited + 40);
LABEL_5:
  v3 = v2;
  sub_100C140B8(v2);

  swift_setDeallocating();
  swift_arrayDestroy();
  return result;
}

void sub_100C140B8(void *a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v108 = *(v2 - 8);
  v109 = v2;
  __chkstk_darwin(v2);
  v106 = v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v104 = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v105 = v100 - v7;
  v8 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v8 - 8);
  v10 = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v100 - v12;
  v107 = _s5BoardVMa(0);
  *&v14 = __chkstk_darwin(v107).n128_u64[0];
  v16 = v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 activityType];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = sub_100080A80(v18, v20);
  if (sub_100080930(v21) != 0xD00000000000001ALL || 0x80000001015519E0 != v22)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_5;
    }

    v46 = [a1 activityType];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = sub_100080A80(v47, v49);
    if (sub_100080930(v50) == 0xD000000000000033 && 0x8000000101551800 == v51)
    {

      v53 = v110;
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v53 = v110;
      if ((v62 & 1) == 0 && v50 != 2)
      {
        v102 = objc_opt_self();
        v63 = [v102 _atomicIncrementAssertCount];
        v111 = [objc_allocWithZone(NSString) init];
        StaticString.description.getter("update(userActivity:)", 21, 2);
        v103 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
        v64 = String._bridgeToObjectiveC()();

        v65 = [v64 lastPathComponent];

        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v100[0] = v67;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v101 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v63;
        v100[1] = inited + 32;
        v69 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v69;
        v70 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(inited + 104) = v70;
        v71 = v103;
        *(inited + 72) = v103;
        *(inited + 136) = &type metadata for String;
        v72 = sub_1000053B0();
        v73 = v100[0];
        *(inited + 112) = v66;
        *(inited + 120) = v73;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v72;
        *(inited + 152) = 659;
        v74 = v111;
        *(inited + 216) = v69;
        *(inited + 224) = v70;
        *(inited + 192) = v74;
        v75 = v71;
        v103 = v74;
        v76 = static os_log_type_t.error.getter();
        v77 = v101;
        sub_100005404(v101, &_mh_execute_header, v76, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v78 = static os_log_type_t.error.getter();

        type metadata accessor for __VaListBuilder();
        v79 = swift_allocObject();
        v79[2] = 8;
        v79[3] = 0;
        v79[4] = 0;
        v79[5] = 0;
        v103 = __VaListBuilder.va_list()();
        StaticString.description.getter("update(userActivity:)", 21, 2);
        v80 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
        v57 = String._bridgeToObjectiveC()();

        v61.super.isa = String._bridgeToObjectiveC()();

        [v102 handleFailureInFunction:v80 file:v57 lineNumber:659 isFatal:0 format:v61.super.isa args:v103];

        goto LABEL_21;
      }
    }

    v54 = (*((swift_isaMask & *v53) + 0x1A0))(v52);
    if (v54)
    {
      v55 = v54;
      [v54 loadViewIfNeeded];
      sub_100D2D20C(a1);
    }

    v56 = sub_100C0B3C0();
    if (!v56)
    {
LABEL_22:
      sub_100C0AF94(v13);
      v81 = v109;
      v82 = *(v108 + 48);
      if (v82(v13, 1, v109) == 1)
      {
        sub_10000CAAC(v13, &unk_101A15B20, &qword_10146F1E0);
      }

      else if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_100025530(v13, v16, _s5BoardVMa);
        v83 = v16[*(v107 + 52)];
        sub_10005117C(v16, _s5BoardVMa);
        if (v83 == 1)
        {
          v84 = sub_100C0B3C0();
          v85 = &selRef_canRemoveImageBackground;
          if (v84)
          {
            v86 = v84;
            v87 = v104;
            sub_10004FE64(v84 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v104, type metadata accessor for CRLBoardLibraryViewModel.Filter);

            v88 = v105;
            sub_100025530(v87, v105, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v89 = v106;
            sub_10004FE64(v88, v106, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            swift_storeEnumTagMultiPayload();
            sub_100F88AF8(a1);
            sub_10005117C(v89, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10005117C(v88, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          }

          v90 = 1;
LABEL_33:
          sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
          v91 = swift_initStackObject();
          *(v91 + 16) = xmmword_10146C6B0;
          v111 = qword_101A158A0;
          v112 = off_101A158A8;

          AnyHashable.init<A>(_:)();
          *(v91 + 96) = &type metadata for Bool;
          *(v91 + 72) = v90;
          sub_100078EA4(v91);
          swift_setDeallocating();
          sub_10000CAAC(v91 + 32, &unk_1019FB8B0, &unk_101471280);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [a1 addUserInfoEntriesFromDictionary:isa];

          [a1 setNeedsSave:1];
          v93 = [a1 v85[18]];
          v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v95;

          v97 = sub_100080A80(v94, v96);
          if (sub_100080930(v97) == 0xD000000000000027 && 0x8000000101551880 == v98)
          {
          }

          else
          {
            v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v99 & 1) == 0)
            {
              return;
            }
          }

          [a1 becomeCurrent];
          return;
        }
      }

      else
      {
        sub_10005117C(v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      sub_100C0AF94(v10);
      if (v82(v10, 1, v81) == 1)
      {
        sub_10000CAAC(v10, &unk_101A15B20, &qword_10146F1E0);
        v90 = 0;
        v85 = &selRef_canRemoveImageBackground;
      }

      else
      {
        v90 = 0;
        sub_100F88AF8(a1);
        v85 = &selRef_canRemoveImageBackground;
        sub_10005117C(v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      goto LABEL_33;
    }

    v57 = v56;
    [v56 loadViewIfNeeded];
    sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_10146C6B0;
    v111 = sub_100009260();
    v112 = v59;
    AnyHashable.init<A>(_:)();
    v60 = sub_1012C8634();
    *(v58 + 96) = sub_1005B981C(&unk_101A07740, &unk_101486B90);
    *(v58 + 72) = v60;
    sub_100078EA4(v58);
    swift_setDeallocating();
    sub_10000CAAC(v58 + 32, &unk_1019FB8B0, &unk_101471280);
    v61.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 addUserInfoEntriesFromDictionary:v61.super.isa];
LABEL_21:

    goto LABEL_22;
  }

LABEL_5:
  v110 = objc_opt_self();
  v24 = [v110 _atomicIncrementAssertCount];
  v111 = [objc_allocWithZone(NSString) init];
  StaticString.description.getter("update(userActivity:)", 21, 2);
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
  v26 = String._bridgeToObjectiveC()();

  v27 = [v26 lastPathComponent];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v31 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_10146CA70;
  *(v32 + 56) = &type metadata for Int32;
  *(v32 + 64) = &protocol witness table for Int32;
  *(v32 + 32) = v24;
  v33 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v32 + 96) = v33;
  v34 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v32 + 104) = v34;
  *(v32 + 72) = v25;
  *(v32 + 136) = &type metadata for String;
  v35 = sub_1000053B0();
  *(v32 + 112) = v28;
  *(v32 + 120) = v30;
  *(v32 + 176) = &type metadata for UInt;
  *(v32 + 184) = &protocol witness table for UInt;
  *(v32 + 144) = v35;
  *(v32 + 152) = 635;
  v36 = v111;
  *(v32 + 216) = v33;
  *(v32 + 224) = v34;
  *(v32 + 192) = v36;
  v37 = v25;
  v38 = v36;
  v39 = static os_log_type_t.error.getter();
  sub_100005404(v31, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v32);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v40 = static os_log_type_t.error.getter();

  type metadata accessor for __VaListBuilder();
  v41 = swift_allocObject();
  v41[2] = 8;
  v41[3] = 0;
  v41[4] = 0;
  v41[5] = 0;
  v42 = __VaListBuilder.va_list()();
  StaticString.description.getter("update(userActivity:)", 21, 2);
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
  v44 = String._bridgeToObjectiveC()();

  v45 = String._bridgeToObjectiveC()();

  [v110 handleFailureInFunction:v43 file:v44 lineNumber:635 isFatal:0 format:v45 args:v42];
}

uint64_t sub_100C15078(uint64_t a1)
{
  v2[98] = v1;
  v2[97] = a1;
  sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  v2[99] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v2[100] = v3;
  v2[101] = *(v3 - 8);
  v2[102] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v2[103] = swift_task_alloc();
  sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  v2[104] = swift_task_alloc();
  sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  v2[105] = swift_task_alloc();
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[106] = v4;
  v2[107] = *(v4 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[110] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[111] = v6;
  v2[112] = v5;

  return _swift_task_switch(sub_100C152B0, v6, v5);
}

void sub_100C152B0()
{
  v124 = v0;
  sub_1000513C8();
  v2 = v1;
  [v1 loadViewIfNeeded];

  if (sub_100C17114())
  {
    if (qword_1019F2220 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 824);
    v4 = *(v0 + 784);
    v5 = static OS_os_log.sceneManagement;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = type metadata accessor for CRLSceneDelegate(0);
    *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
    *(inited + 32) = v4;
    v7 = v4;
    v8 = static os_log_type_t.default.getter();
    sub_100005404(v5, &_mh_execute_header, v8, "Scene delegate (%p) creating new board instead of restoring a discardable board.", 80, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v9 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    (*(*(v9 - 8) + 56))(v3, 1, 5, v9);
    v10 = [objc_opt_self() mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(v0 + 984) = v16;
    v17 = swift_task_alloc();
    *(v0 + 992) = v17;
    *v17 = v0;
    v18 = sub_100C16C3C;
LABEL_5:
    v17[1] = v18;
    v19 = *(v0 + 824);

    sub_100C0E89C(v19, v14, v16, 1, 0);
    return;
  }

  sub_10005013C();
  if (!v20)
  {
    __break(1u);
    goto LABEL_48;
  }

  v21 = v20;
  v22 = *(v0 + 856);
  v23 = *(v0 + 848);
  v24 = *(v0 + 840);
  sub_100AF3F88(v20, v24);

  if ((*(v22 + 48))(v24, 1, v23) != 1)
  {
    v43 = *(v0 + 784);
    sub_100025530(*(v0 + 840), *(v0 + 872), type metadata accessor for CRLBoardLibraryViewModel.Item);
    v44 = *(v43 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___boardLibrary);
    if (v44)
    {
      v45 = *(v0 + 872);
      v46 = *(v0 + 832);
      v47 = *(v44 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
      v48 = swift_task_alloc();
      *(v48 + 16) = v45;

      sub_10003CF3C(1, sub_100C32868, v48, v47, v46);

      v49 = _s4NodeVMa(0);
      if ((*(*(v49 - 8) + 48))(v46, 1, v49) == 1)
      {
        v50 = *(v0 + 832);

        sub_10000CAAC(v50, &unk_1019FB770, &unk_10146FA30);
        if (qword_1019F2220 != -1)
        {
          swift_once();
        }

        v51 = *(v0 + 872);
        v52 = *(v0 + 784);
        v53 = static OS_os_log.sceneManagement;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v54 = swift_initStackObject();
        *(v54 + 16) = xmmword_10146BDE0;
        *(v54 + 56) = type metadata accessor for CRLSceneDelegate(0);
        *(v54 + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
        *(v54 + 32) = v52;
        v55 = v52;
        v56 = sub_100F8903C();
        v58 = v57;
        *(v54 + 96) = &type metadata for String;
        *(v54 + 104) = sub_1000053B0();
        *(v54 + 72) = v56;
        *(v54 + 80) = v58;
        v59 = static os_log_type_t.default.getter();
        sub_100005404(v53, &_mh_execute_header, v59, "Scene delegate (%p) ignoring user activity because item was not found: %@", 73, 2, v54);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        sub_10005117C(v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_30:

        v95 = *(v0 + 8);

        v95();
        return;
      }

      v60 = *(v0 + 776);
      sub_10000CAAC(*(v0 + 832), &unk_1019FB770, &unk_10146FA30);
      v61 = [v60 activityType];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = sub_100080A80(v62, v64);
      if (sub_100080930(v65) == 0xD000000000000027 && 0x8000000101551880 == v66)
      {
      }

      else
      {
        v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v97 = 0;
        if ((v96 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v98 = objc_opt_self();
      v99 = String._bridgeToObjectiveC()();
      _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(2);
      sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v97 = 1;
      [v98 sendEventInDomain:v99 lazily:1 eventPayload:isa];

LABEL_35:
      *(v0 + 1000) = v97;
      v101 = [*(v0 + 776) activityType];
      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      v105 = sub_100080A80(v102, v104);
      if (sub_100080930(v105) == 0xD000000000000033 && 0x8000000101551800 == v106)
      {
        v107 = 1;
      }

      else
      {
        v107 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      *(v0 + 1001) = v107 & 1;

      if (qword_1019F2220 != -1)
      {
        swift_once();
      }

      v108 = *(v0 + 784);
      v109 = *(v0 + 776);
      v110 = static OS_os_log.sceneManagement;
      *(v0 + 904) = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v111 = swift_initStackObject();
      *(v111 + 16) = xmmword_10146D2A0;
      *(v111 + 56) = type metadata accessor for CRLSceneDelegate(0);
      *(v111 + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
      *(v111 + 32) = v108;
      *(v111 + 96) = &type metadata for Bool;
      *(v111 + 104) = &protocol witness table for Bool;
      *(v111 + 72) = v107 & 1;
      *(v111 + 136) = &type metadata for Bool;
      *(v111 + 144) = &protocol witness table for Bool;
      *(v111 + 112) = v97;
      v112 = v108;
      v113 = sub_100F8903C();
      v115 = v114;
      *(v111 + 176) = &type metadata for String;
      v116 = sub_1000053B0();
      *(v0 + 912) = v116;
      *(v111 + 184) = v116;
      *(v111 + 152) = v113;
      *(v111 + 160) = v115;
      v117 = static os_log_type_t.default.getter();
      sub_100005404(v110, &_mh_execute_header, v117, "Scene delegate (%p) handling user activity. isStateRestoration = %d, isHandoff = %d, item = %@", 94, 2, v111);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v118 = swift_task_alloc();
      *(v0 + 920) = v118;
      *v118 = v0;
      v118[1] = sub_100C164AC;
      v119 = *(v0 + 872);

      sub_100C176F4(v119, 0, ((v97 | v107) & 1) == 0, v109, 0);
      return;
    }

LABEL_48:
    __break(1u);
    return;
  }

  v25 = *(v0 + 776);
  sub_10000CAAC(*(v0 + 840), &unk_101A15B20, &qword_10146F1E0);
  v26 = [v25 activityType];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = sub_100080A80(v27, v29);
  if (v30 != 10)
  {
    if (v30 == 7)
    {
      if (qword_1019F2220 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 824);
      v32 = *(v0 + 784);
      v33 = static OS_os_log.sceneManagement;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_10146C6B0;
      *(v34 + 56) = type metadata accessor for CRLSceneDelegate(0);
      *(v34 + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
      *(v34 + 32) = v32;
      v35 = v32;
      v36 = static os_log_type_t.default.getter();
      sub_100005404(v33, &_mh_execute_header, v36, "Scene delegate (%p) creating new board.", 39, 2, v34);
      swift_setDeallocating();
      sub_100005070((v34 + 32));
      v37 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
      (*(*(v37 - 8) + 56))(v31, 1, 5, v37);
      v38 = [objc_opt_self() mainBundle];
      v39 = String._bridgeToObjectiveC()();
      v40 = String._bridgeToObjectiveC()();
      v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v42;

      *(v0 + 936) = v16;
      v17 = swift_task_alloc();
      *(v0 + 944) = v17;
      *v17 = v0;
      v18 = sub_100C16774;
      goto LABEL_5;
    }

    v122 = objc_opt_self();
    v73 = [v122 _atomicIncrementAssertCount];
    v123 = [objc_allocWithZone(NSString) init];
    StaticString.description.getter("handle(userActivity:)", 21, 2);
    v74 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
    v75 = String._bridgeToObjectiveC()();

    v76 = [v75 lastPathComponent];

    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v80 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v81 = swift_initStackObject();
    *(v81 + 16) = xmmword_10146CA70;
    *(v81 + 56) = &type metadata for Int32;
    *(v81 + 64) = &protocol witness table for Int32;
    *(v81 + 32) = v73;
    v82 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v81 + 96) = v82;
    v83 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v81 + 104) = v83;
    *(v81 + 72) = v74;
    *(v81 + 136) = &type metadata for String;
    v84 = sub_1000053B0();
    *(v81 + 112) = v77;
    *(v81 + 120) = v79;
    *(v81 + 176) = &type metadata for UInt;
    *(v81 + 184) = &protocol witness table for UInt;
    *(v81 + 144) = v84;
    *(v81 + 152) = 750;
    v85 = v123;
    *(v81 + 216) = v82;
    *(v81 + 224) = v83;
    *(v81 + 192) = v85;
    v86 = v74;
    v87 = v85;
    v88 = static os_log_type_t.error.getter();
    sub_100005404(v80, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v81);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v89 = static os_log_type_t.error.getter();

    type metadata accessor for __VaListBuilder();
    v90 = swift_allocObject();
    v90[2] = 8;
    v90[3] = 0;
    v90[4] = 0;
    v90[5] = 0;
    v91 = __VaListBuilder.va_list()();
    StaticString.description.getter("handle(userActivity:)", 21, 2);
    v92 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
    v93 = String._bridgeToObjectiveC()();

    v94 = String._bridgeToObjectiveC()();

    [v122 handleFailureInFunction:v92 file:v93 lineNumber:750 isFatal:0 format:v94 args:v91];

    goto LABEL_30;
  }

  v67 = *(v0 + 808);
  v68 = *(v0 + 800);
  v69 = *(v0 + 792);
  sub_100C190E0(*(v0 + 776), v69);
  if ((*(v67 + 48))(v69, 1, v68) == 1)
  {
    v70 = *(v0 + 784);
    sub_10000CAAC(*(v0 + 792), &unk_1019F52D0, &unk_10147C1C0);
    v71 = sub_100C2F6B0(1u);
    *(v0 + 960) = v71;
    *(v0 + 968) = (*((swift_isaMask & *v70) + 0x360))();
    v72 = swift_task_alloc();
    *(v0 + 976) = v72;
    *v72 = v0;
    v72[1] = sub_100C16AF8;

    sub_100D1C8E8(v71, 1);
  }

  else
  {
    sub_100025530(*(v0 + 792), *(v0 + 816), type metadata accessor for CRLBoardIdentifier);
    v120 = swift_task_alloc();
    *(v0 + 952) = v120;
    *v120 = v0;
    v120[1] = sub_100C168F8;
    v121 = *(v0 + 816);

    sub_100C18D7C(v121);
  }
}

uint64_t sub_100C164AC(void *a1)
{
  v4 = *v2;
  *(*v2 + 928) = v1;

  if (v1)
  {
    v5 = *(v4 + 896);
    v6 = *(v4 + 888);
    v7 = sub_100C16E80;
  }

  else
  {

    v5 = *(v4 + 896);
    v6 = *(v4 + 888);
    v7 = sub_100C165DC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100C165DC()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 864);

  sub_10004FE64(v1, v2, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10005117C(*(v0 + 864), _s5BoardVMa);
  }

  else
  {
    v3 = *(v0 + 872);
    v4 = *(v0 + 784);
    v5 = *(v0 + 1001) | *(v0 + 1000);
    sub_10005117C(*(v0 + 864), type metadata accessor for CRLBoardLibraryViewModel.Item);
    v6 = *(v4 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___sidebarViewController);
    sub_10061D55C(v3, (v5 & 1) == 0);
  }

  sub_10005117C(*(v0 + 872), type metadata accessor for CRLBoardLibraryViewModel.Item);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100C16774(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 824);

  sub_10005117C(v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v5 = *(v3 + 896);
  v6 = *(v3 + 888);

  return _swift_task_switch(sub_100C33564, v6, v5);
}

uint64_t sub_100C168F8()
{
  v1 = *v0;

  v2 = *(v1 + 896);
  v3 = *(v1 + 888);

  return _swift_task_switch(sub_100C16A18, v3, v2);
}

uint64_t sub_100C16A18()
{
  v1 = *(v0 + 816);

  sub_10005117C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C16AF8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 968);
  if (v0)
  {

    v5 = *(v3 + 896);
    v6 = *(v3 + 888);
    v7 = sub_100C17044;
  }

  else
  {

    v5 = *(v3 + 896);
    v6 = *(v3 + 888);
    v7 = sub_100C3353C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100C16C3C(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 824);

  sub_10005117C(v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v5 = *(v3 + 896);
  v6 = *(v3 + 888);

  return _swift_task_switch(sub_100C16DC0, v6, v5);
}

uint64_t sub_100C16DC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C16E80()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = v0[116];
  v2 = v0[114];
  v3 = static OS_os_log.crlError;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[96] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v5 = String.init<A>(describing:)();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v2;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.debug.getter();
  sub_100005404(v3, &_mh_execute_header, v7, "Caught exception trying to show view controller while handling user activity. %@", 80, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  sub_10005117C(v0[109], type metadata accessor for CRLBoardLibraryViewModel.Item);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C17044()
{
  v1 = *(v0 + 960);

  sub_1011047E4(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C17114()
{
  v1 = v0;
  v2 = [v0 activityType];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_100080A80(v3, v5);
  if (sub_100080930(v6) == 0xD00000000000001BLL && 0x8000000101551950 == v7)
  {
LABEL_17:

    return 0;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    v10 = [v1 userInfo];
    if (v10)
    {
      v11 = v10;
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = qword_101A158A0;
      v47 = off_101A158A8;

      AnyHashable.init<A>(_:)();
      if (*(v12 + 16))
      {
        v13 = sub_1000640CC(v48);
        if (v14)
        {
          sub_100064288(*(v12 + 56) + 32 * v13, &v49);
          sub_100064234(v48);

          if (*(&v50 + 1))
          {
            if (swift_dynamicCast())
            {
              return LOBYTE(v48[0]);
            }

LABEL_15:
            v16 = [v1 activityType];
            v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v18;

            v20 = sub_100080A80(v17, v19);
            if (sub_100080930(v20) != 0xD000000000000018 || 0x8000000101551910 != v21)
            {
              v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v22 & 1) == 0)
              {
                v23 = objc_opt_self();
                v24 = [v23 _atomicIncrementAssertCount];
                v48[0] = [objc_allocWithZone(NSString) init];
                StaticString.description.getter("crl_viewModelItemIsDiscardableBoard", 35, 2);
                v25 = String._bridgeToObjectiveC()();

                StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
                v26 = String._bridgeToObjectiveC()();

                v27 = [v26 lastPathComponent];

                v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v30 = v29;

                if (qword_1019F20A0 != -1)
                {
                  swift_once();
                }

                v31 = static OS_os_log.crlAssert;
                sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_10146CA70;
                *(inited + 56) = &type metadata for Int32;
                *(inited + 64) = &protocol witness table for Int32;
                *(inited + 32) = v24;
                v33 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
                *(inited + 96) = v33;
                v34 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
                *(inited + 104) = v34;
                *(inited + 72) = v25;
                *(inited + 136) = &type metadata for String;
                v35 = sub_1000053B0();
                *(inited + 112) = v28;
                *(inited + 120) = v30;
                *(inited + 176) = &type metadata for UInt;
                *(inited + 184) = &protocol witness table for UInt;
                *(inited + 144) = v35;
                *(inited + 152) = 2023;
                v36 = v48[0];
                *(inited + 216) = v33;
                *(inited + 224) = v34;
                *(inited + 192) = v36;
                v37 = v25;
                v38 = v36;
                v39 = static os_log_type_t.error.getter();
                sub_100005404(v31, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
                swift_setDeallocating();
                sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
                swift_arrayDestroy();
                v40 = static os_log_type_t.error.getter();

                type metadata accessor for __VaListBuilder();
                v41 = swift_allocObject();
                v41[2] = 8;
                v41[3] = 0;
                v41[4] = 0;
                v41[5] = 0;
                v42 = __VaListBuilder.va_list()();
                StaticString.description.getter("crl_viewModelItemIsDiscardableBoard", 35, 2);
                v43 = String._bridgeToObjectiveC()();

                StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
                v44 = String._bridgeToObjectiveC()();

                v45 = String._bridgeToObjectiveC()();

                [v23 handleFailureInFunction:v43 file:v44 lineNumber:2023 isFatal:0 format:v45 args:v42];
              }

              return 0;
            }

            goto LABEL_17;
          }

LABEL_14:
          sub_10000CAAC(&v49, &unk_1019F4D00, &unk_10146E7F0);
          goto LABEL_15;
        }
      }

      sub_100064234(v48);
    }

    v49 = 0u;
    v50 = 0u;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_100C176F4(uint64_t a1, char a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 368) = a4;
  *(v6 + 376) = v5;
  *(v6 + 562) = a5;
  *(v6 + 561) = a3;
  *(v6 + 560) = a2;
  *(v6 + 360) = a1;
  v7 = type metadata accessor for Date();
  *(v6 + 384) = v7;
  *(v6 + 392) = *(v7 - 8);
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  *(v6 + 424) = swift_task_alloc();
  sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 448) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 456) = v9;
  *(v6 + 464) = v8;

  return _swift_task_switch(sub_100C17878, v9, v8);
}

uint64_t sub_100C17878()
{
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 376);
  v2 = static OS_os_log.sceneManagement;
  *(v0 + 472) = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = type metadata accessor for CRLSceneDelegate(0);
  *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v1;
  v1;
  v4 = sub_100F8903C();
  v6 = v5;
  *(inited + 96) = &type metadata for String;
  v7 = sub_1000053B0();
  *(v0 + 480) = v7;
  *(inited + 104) = v7;
  *(inited + 72) = v4;
  *(inited + 80) = v6;
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v8, "Scene Delegate (%p) showing view controller for item: %@", 56, 2, inited);
  swift_setDeallocating();
  *(v0 + 488) = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  if (sub_100C0BA2C())
  {
    v9 = swift_task_alloc();
    *(v0 + 496) = v9;
    *v9 = v0;
    v9[1] = sub_100C17C04;

    return sub_100C0DBF8();
  }

  else if (*(v0 + 562))
  {
    sub_10004FE64(*(v0 + 360), *(v0 + 424), type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10005117C(*(v0 + 424), _s5BoardVMa);
      Date.init()();
      v11 = 0;
    }

    else
    {
      sub_10005117C(*(v0 + 424), type metadata accessor for CRLBoardLibraryViewModel.Item);
      v11 = 1;
    }

    (*(*(v0 + 392) + 56))(*(v0 + 440), v11, 1, *(v0 + 384));
    v13 = swift_task_alloc();
    *(v0 + 520) = v13;
    *v13 = v0;
    v13[1] = sub_100C18148;
    v14 = *(v0 + 360);

    return sub_100C2B5B8(v14);
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 504) = v12;
    *v12 = v0;
    v12[1] = sub_100C17ED0;

    return sub_100C0D4E8();
  }
}

uint64_t sub_100C17C04()
{
  v1 = *v0;

  v2 = *(v1 + 464);
  v3 = *(v1 + 456);

  return _swift_task_switch(sub_100C17D24, v3, v2);
}

uint64_t sub_100C17D24()
{
  if (*(v0 + 562))
  {
    sub_10004FE64(*(v0 + 360), *(v0 + 424), type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10005117C(*(v0 + 424), _s5BoardVMa);
      Date.init()();
      v1 = 0;
    }

    else
    {
      sub_10005117C(*(v0 + 424), type metadata accessor for CRLBoardLibraryViewModel.Item);
      v1 = 1;
    }

    (*(*(v0 + 392) + 56))(*(v0 + 440), v1, 1, *(v0 + 384));
    v4 = swift_task_alloc();
    *(v0 + 520) = v4;
    *v4 = v0;
    v4[1] = sub_100C18148;
    v5 = *(v0 + 360);

    return sub_100C2B5B8(v5);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 504) = v2;
    *v2 = v0;
    v2[1] = sub_100C17ED0;

    return sub_100C0D4E8();
  }
}

uint64_t sub_100C17ED0()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 464);
  v4 = *(v2 + 456);
  if (v0)
  {
    v5 = sub_100C18B58;
  }

  else
  {
    v5 = sub_100C1800C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100C1800C()
{
  sub_10004FE64(v0[45], v0[53], type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10005117C(v0[53], _s5BoardVMa);
    Date.init()();
    v1 = 0;
  }

  else
  {
    sub_10005117C(v0[53], type metadata accessor for CRLBoardLibraryViewModel.Item);
    v1 = 1;
  }

  (*(v0[49] + 56))(v0[55], v1, 1, v0[48]);
  v2 = swift_task_alloc();
  v0[65] = v2;
  *v2 = v0;
  v2[1] = sub_100C18148;
  v3 = v0[45];

  return sub_100C2B5B8(v3);
}

uint64_t sub_100C18148(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 528) = a1;
  *(v4 + 536) = v1;

  v5 = *(v3 + 464);
  v6 = *(v3 + 456);
  if (v1)
  {
    v7 = sub_100C18BFC;
  }

  else
  {
    v7 = sub_100C18290;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100C18290()
{
  v41 = v0;
  v1 = *(v0 + 528);
  if (v1)
  {
    v2 = *(v0 + 368);
    if (v2)
    {
      v3 = v2;
      [v1 restoreUserActivityState:v3];
      [v3 setNeedsSave:1];
    }

    v4 = swift_task_alloc();
    *(v0 + 544) = v4;
    *v4 = v0;
    v4[1] = sub_100C18820;
    v5 = *(v0 + 368);
    v6 = *(v0 + 561);
    v7 = *(v0 + 560);

    return sub_100C22ED8(v1, v7, v6, v5);
  }

  else
  {
    v38 = objc_opt_self();
    v9 = [v38 _atomicIncrementAssertCount];
    v39 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v39, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("showViewController(for:push:animated:restoringFrom:skipDismissal:)", 66, 2);
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 480);
    v37 = *(v0 + 440);
    v16 = static OS_os_log.crlAssert;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v9;
    v18 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v18;
    v19 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 72) = v36;
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v15;
    *(inited + 104) = v19;
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 152) = 1753;
    v20 = v39;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v20;
    v21 = v36;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter("showViewController(for:push:animated:restoringFrom:skipDismissal:)", 66, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v29 = String._bridgeToObjectiveC()();

    [v38 handleFailureInFunction:v27 file:v28 lineNumber:1753 isFatal:0 format:v29 args:v26];

    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v30._object = 0x8000000101591E80;
    v30._countAndFlagsBits = 0xD000000000000037;
    String.append(_:)(v30);
    v31._countAndFlagsBits = sub_100F8903C();
    String.append(_:)(v31);

    v32 = v39;
    v33 = v40;
    sub_100C2E7E0();
    swift_allocError();
    *v34 = v32;
    *(v34 + 8) = v33;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = 2;
    swift_willThrow();
    sub_10000CAAC(v37, &qword_101A0A320, &qword_10146D650);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_100C18820()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 464);
  v4 = *(v2 + 456);
  if (v0)
  {
    v5 = sub_100C18CB8;
  }

  else
  {
    v5 = sub_100C1895C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100C1895C()
{
  v1 = v0[55];
  v2 = v0 + 55;
  v3 = v0[54];
  v4 = v0[48];
  v5 = v0[49];
  v6 = v0[47];

  v7.n128_f64[0] = sub_100C13F48();
  (*((swift_isaMask & *v6) + 0x2E0))(v7);
  sub_10000BE14(v1, v3, &qword_101A0A320, &qword_10146D650);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CAAC(*v2, &qword_101A0A320, &qword_10146D650);
    v2 = v0 + 54;
  }

  else
  {
    v9 = v0[50];
    v8 = v0[51];
    v10 = v0[48];
    v11 = v0[49];
    (*(v11 + 32))(v8, v0[54], v10);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v13 = v12;
    v14 = *(v11 + 8);
    v14(v9, v10);
    sub_100C85534(v13);
    v14(v8, v10);
  }

  sub_10000CAAC(*v2, &qword_101A0A320, &qword_10146D650);

  v15 = v0[1];
  v16 = v0[66];

  return v15(v16);
}

uint64_t sub_100C18B58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C18BFC()
{
  v1 = *(v0 + 440);

  sub_10000CAAC(v1, &qword_101A0A320, &qword_10146D650);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C18CB8()
{
  v1 = v0[66];
  v2 = v0[55];

  sub_10000CAAC(v2, &qword_101A0A320, &qword_10146D650);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C18D7C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  type metadata accessor for CRLBoardIdentifier(0);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C18E40, v4, v3);
}

void sub_100C18E40()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt;
  if (*(v1 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt))
  {

    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.crlSendACopy;
    v4 = static os_log_type_t.info.getter();
    sub_100005404(v3, &_mh_execute_header, v4, "Trying to download multiple shared board copies at the same time; this is unsupported.", 86, 2, _swiftEmptyArrayStorage);
    goto LABEL_10;
  }

  sub_10005013C();
  if (!v5)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = *&v5[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store];

  if (qword_1019F1588 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  v11 = qword_101AD6518;
  type metadata accessor for CRLPublicCloudRecordProvider();
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v13 = v7;

  v14 = [v11 publicCloudDatabase];
  *(v0 + 16) = v13;
  *(v0 + 24) = v13;
  *(v0 + 32) = v12;
  *(v0 + 40) = &off_101891C08;
  *(v0 + 48) = v14;
  *(v0 + 56) = v12;
  sub_10004FE64(v10, v8, type metadata accessor for CRLBoardIdentifier);
  v15 = *(v9 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___boardLibrary);
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = *(v0 + 80);
  v17 = *(v0 + 72);
  v18 = v15;

  v19 = v13;
  swift_retain_n();
  v20 = v19;
  v21 = v14;
  *(v1 + v2) = sub_100C2DF8C(v16, v18, (v0 + 16), v17);

  sub_100896FB4();

LABEL_10:

  v22 = *(v0 + 8);

  v22();
}

uint64_t sub_100C190E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v37[3] = &type metadata for CRLFeatureFlags;
  v37[4] = sub_100004D60();
  LOBYTE(v37[0]) = 21;
  v14 = isFeatureEnabled(_:)();
  sub_100005070(v37);
  if ((v14 & 1) == 0)
  {
LABEL_14:
    v34 = type metadata accessor for CRLBoardIdentifier(0);
    return (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
  }

  v15 = [a1 webpageURL];
  if (!v15)
  {
    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.crlSendACopy;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v27, "Missing url for Send-A-Copy", 27, 2, _swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  v16 = v15;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v8 + 32))(v13, v10, v7);
  if ((sub_1007AF8E4() & 1) == 0)
  {
    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlSendACopy;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_100C2E798(&qword_101A15B10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v30;
    *(inited + 40) = v32;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v33, "Invalidate url for Send-A-Copy %{public}@", 41, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    (*(v8 + 8))(v13, v7);
    goto LABEL_14;
  }

  sub_1007AEFF0(v6);
  v17 = type metadata accessor for CRLBoardIdentifier(0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    v36 = v17;
    sub_10000CAAC(v6, &unk_1019F52D0, &unk_10147C1C0);
    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlSendACopy;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_10146C6B0;
    sub_100C2E798(&qword_101A15B10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_1000053B0();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v24, "Failed to extract board identifier to download for Send-A-Copy %{public}@", 73, 2, v20);
    swift_setDeallocating();
    sub_100005070((v20 + 32));
    (*(v8 + 8))(v13, v7);
    return (*(v18 + 56))(a2, 1, 1, v36);
  }

  else
  {
    (*(v8 + 8))(v13, v7);
    sub_100025530(v6, a2, type metadata accessor for CRLBoardIdentifier);
    return (*(v18 + 56))(a2, 0, 1, v17);
  }
}

void sub_100C196F0(void *a1)
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = type metadata accessor for CRLSceneDelegate(0);
  *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v1;
  v5 = v1;
  v6 = static os_log_type_t.info.getter();
  sub_100005404(v3, &_mh_execute_header, v6, "Scene delegate (%p) accepting CK share", 38, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v7 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt;
  if (*&v5[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt])
  {
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.shareState;
    v9 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v9, "Trying to accept multiple CloudKit shares at the same time; this is unsupported.", 80, 2, _swiftEmptyArrayStorage);
    return;
  }

  sub_10005013C();
  if (!v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [objc_opt_self() sharedApplication];
  v13 = [v12 delegate];

  if (!v13)
  {
LABEL_14:
    __break(1u);
    return;
  }

  type metadata accessor for CRLiOSAppDelegate();
  v14 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_syncDriver);
  if (v14)
  {
    v15 = *(v14 + 32);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v15 = 0;
  }

  type metadata accessor for CRLAcceptCloudKitShareAttempt(0);
  v16 = swift_allocObject();
  *(v16 + 6) = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_boardIdentifier;
  v18 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v18 - 8) + 56))(&v16[v17], 1, 1, v18);
  *&v16[OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_acceptShareTask] = 0;
  v19 = &v16[OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_snapshotUpdateObservationToken];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v16[OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_didConfirmBoardIsReadyToOpen] = 0;
  v16[OBJC_IVAR____TtC8Freeform29CRLAcceptCloudKitShareAttempt_didCheckIfBoardAlreadyExistsInSnapshot] = 0;
  *(v16 + 2) = a1;
  *(v16 + 3) = v11;
  *(v16 + 4) = v15;
  *(v16 + 6) = &off_10189AAF8;
  swift_unknownObjectWeakAssign();
  *&v5[v7] = v16;
  v20 = a1;

  sub_100C04CD4();
}

uint64_t sub_100C19A48()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C19AE0, v3, v2);
}

uint64_t sub_100C19AE0()
{
  v1 = *(v0 + 16);

  sub_100C0A2E0(v1, &_mh_execute_header, "presentOnTopViewController(_:)", 30, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2u, 892, &qword_101A15B08, &unk_1014A0E58);
  v2 = *(v0 + 8);

  return v2();
}

id sub_100C19B8C()
{
  sub_100C0A2E0(v0, &_mh_execute_header, "topViewController", 17, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2u, 896, &qword_101A15B08, &unk_1014A0E58);
  v1 = objc_allocWithZone(UIViewController);

  return [v1 init];
}

uint64_t sub_100C19C18()
{
  v1[37] = v0;
  type metadata accessor for MainActor();
  v1[38] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[39] = v3;
  v1[40] = v2;

  return _swift_task_switch(sub_100C19CB0, v3, v2);
}

uint64_t sub_100C19CB0()
{
  v43 = v0;
  v1 = v0[37];
  v2 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAlertController;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAlertController);
  if (v3)
  {
    v39 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAlertController;
    v40 = v0[37];
    v37 = objc_opt_self();
    v38 = v3;
    v4 = [v37 _atomicIncrementAssertCount];
    v42 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v42, "expected nil value, but non-nil found", 37, 2u);
    StaticString.description.getter("presentAcceptCloudKitShareAlertController()", 43, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v13;
    v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 909;
    v16 = v42;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("presentAcceptCloudKitShareAlertController()", 43, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
    v25 = String._bridgeToObjectiveC()();

    [v37 handleFailureInFunction:v23 file:v24 lineNumber:909 isFatal:0 format:v25 args:v22];

    v2 = v39;
    v1 = v40;
  }

  if (qword_1019F1EE8 != -1)
  {
    swift_once();
  }

  v26 = String._bridgeToObjectiveC()();
  v27 = [objc_opt_self() alertControllerWithTitle:v26 message:0 preferredStyle:1];
  v0[41] = v27;

  if (qword_1019F1EF0 != -1)
  {
    swift_once();
  }

  v28 = v0[37];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = String._bridgeToObjectiveC()();
  v0[35] = sub_100C32860;
  v0[36] = v29;
  v0[31] = _NSConcreteStackBlock;
  v0[32] = *"";
  v0[33] = sub_10068B39C;
  v0[34] = &unk_10189B020;
  v31 = _Block_copy(v0 + 31);

  v32 = [objc_opt_self() actionWithTitle:v30 style:1 handler:v31];
  v0[42] = v32;
  _Block_release(v31);

  [v27 addAction:v32];
  v33 = *(v1 + v2);
  *(v1 + v2) = v27;
  v34 = v27;

  v41 = (*((swift_isaMask & *v28) + 0x358) + **((swift_isaMask & *v28) + 0x358));
  v35 = swift_task_alloc();
  v0[43] = v35;
  *v35 = v0;
  v35[1] = sub_100C1A38C;

  return v41(v34);
}

uint64_t sub_100C1A38C()
{
  v1 = *v0;

  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return _swift_task_switch(sub_100C1A4AC, v3, v2);
}

uint64_t sub_100C1A4AC()
{
  v2 = v0[41];
  v1 = v0[42];

  sub_1011047E4(v2);

  v3 = v0[1];

  return v3();
}

void sub_100C1A520(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAttempt);
    v4 = Strong;

    if (v3)
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      sub_100C06E78(v5);

      sub_100C081B4(v5);
    }
  }
}

uint64_t sub_100C1A5AC()
{
  v1[44] = v0;
  type metadata accessor for MainActor();
  v1[45] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[46] = v3;
  v1[47] = v2;

  return _swift_task_switch(sub_100C1A644, v3, v2);
}

uint64_t sub_100C1A644()
{
  v35 = v0;
  v1 = v0[44];
  v2 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAlertController;
  v0[48] = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_acceptCloudKitShareAlertController;
  v3 = *(v1 + v2);
  if (v3)
  {
    goto LABEL_5;
  }

  v33 = v1;
  v32 = objc_opt_self();
  v4 = [v32 _atomicIncrementAssertCount];
  v34 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v34, "invalid nil value found", 23, 2u);
  StaticString.description.getter("dismissAcceptCloudKitShareAlertController()", 43, 2);
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v5 lastPathComponent];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v4;
  v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v12;
  v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v13;
  *(inited + 72) = v31;
  *(inited + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 112) = v7;
  *(inited + 120) = v9;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v14;
  *(inited + 152) = 925;
  v15 = v34;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 192) = v15;
  v16 = v31;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v20 = swift_allocObject();
  v20[2] = 8;
  v20[3] = 0;
  v20[4] = 0;
  v20[5] = 0;
  v21 = __VaListBuilder.va_list()();
  StaticString.description.getter("dismissAcceptCloudKitShareAlertController()", 43, 2);
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
  v23 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil value found", 23, 2);
  v24 = String._bridgeToObjectiveC()();

  [v32 handleFailureInFunction:v22 file:v23 lineNumber:925 isFatal:0 format:v24 args:v21];

  v3 = *(v33 + v2);
  if (v3)
  {
LABEL_5:
    v0[49] = v3;
    v3;
    v25 = swift_task_alloc();
    v0[50] = v25;
    *v25 = v0;
    v25[1] = sub_100C1AB0C;

    return sub_100D1CCA4(1);
  }

  else
  {

    v27 = v0[48];
    v28 = v0[44];
    v29 = *(v28 + v27);
    *(v28 + v27) = 0;

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_100C1AB0C()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_100C1AC28;
  }

  else
  {

    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_100C33590;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100C1AC28()
{
  v1 = *(v0 + 392);

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Caught error trying to dismiss acceptCloudKitShareAlertController: %@", 69, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v8 = *(v0 + 8);

  return v8();
}

void sub_100C1AD94()
{
  v0 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v0 - 8);
  v2 = v27 - v1;
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = [v3 mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = [v3 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = String._bridgeToObjectiveC()();

  v17 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

  v19 = String._bridgeToObjectiveC()();

  v20 = [objc_opt_self() actionWithTitle:v19 style:0 handler:0];

  [v18 addAction:v20];
  v21 = type metadata accessor for TaskPriority();
  v22 = v2;
  (*(*(v21 - 8) + 56))(v2, 1, 1, v21);
  type metadata accessor for MainActor();
  v23 = v27[1];
  v24 = v18;
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v23;
  v26[5] = v24;
  sub_10064191C(0, 0, v22, &unk_1014A0E50, v26);
}

uint64_t sub_100C1B170(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v10 = (*((swift_isaMask & *a4) + 0x358) + **((swift_isaMask & *a4) + 0x358));
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_100C1B2D8;

  return v10(a5);
}

uint64_t sub_100C1B2D8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C1B414, v1, v0);
}

uint64_t sub_100C1B414()
{
  v1 = *(v0 + 16);

  v2.n128_f64[0] = sub_1011047E4(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100C1B480()
{
  v1[8] = v0;
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_100C1B518, v3, v2);
}

uint64_t sub_100C1B518()
{
  if (qword_1019F1760 != -1)
  {
    swift_once();
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() alertControllerWithTitle:v1 message:0 preferredStyle:1];
  v0[12] = v2;

  if (qword_1019F1768 != -1)
  {
    swift_once();
  }

  v3 = v0[8];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();
  v0[6] = sub_100C32798;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = *"";
  v0[4] = sub_10068B39C;
  v0[5] = &unk_10189AFD0;
  v6 = _Block_copy(v0 + 2);

  v7 = [objc_opt_self() actionWithTitle:v5 style:1 handler:v6];
  v0[13] = v7;
  _Block_release(v6);

  [v2 addAction:v7];
  v8 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAlertController;
  v0[14] = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAlertController;
  v9 = *(v3 + v8);
  *(v3 + v8) = v2;
  v10 = v2;

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_100C1B79C;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_100C1B79C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100C33534;
  }

  else
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100C1B8C0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100C1B8C0()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + *(v0 + 112));
  *(v0 + 128) = v2;
  if (!v2)
  {
    v9 = *(v0 + 104);

    goto LABEL_6;
  }

  v3 = *((swift_isaMask & *v1) + 0x360);
  v4 = v2;
  v5 = v3();
  v6 = [v5 presentedViewController];

  if (v6)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = *(v0 + 96);
      v7 = *(v0 + 104);

LABEL_6:
      v10 = *(v0 + 8);

      return v10();
    }
  }

  v13 = (*((swift_isaMask & **(v0 + 64)) + 0x358) + **((swift_isaMask & **(v0 + 64)) + 0x358));
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = sub_100C1BB0C;

  return v13(v4);
}

uint64_t sub_100C1BB0C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100C1BC2C, v3, v2);
}

uint64_t sub_100C1BC2C()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];

  sub_1011047E4(v2);

  v4 = v0[1];

  return v4();
}

double sub_100C1BCB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAttempt);
    v5 = Strong;

    if (v4)
    {
      sub_1008995C0();
    }
  }

  return result;
}

uint64_t sub_100C1BD24()
{
  v1[44] = v0;
  type metadata accessor for MainActor();
  v1[45] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[46] = v3;
  v1[47] = v2;

  return _swift_task_switch(sub_100C1BDBC, v3, v2);
}

uint64_t sub_100C1BDBC()
{
  v35 = v0;
  v1 = v0[44];
  v2 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAlertController;
  v0[48] = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_downloadSharedCopyAlertController;
  v3 = *(v1 + v2);
  if (v3)
  {
    goto LABEL_5;
  }

  v33 = v1;
  v32 = objc_opt_self();
  v4 = [v32 _atomicIncrementAssertCount];
  v34 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v34, "invalid nil value found", 23, 2u);
  StaticString.description.getter("dismissDownloadSharedCopyAlertController()", 42, 2);
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v5 lastPathComponent];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v4;
  v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v12;
  v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v13;
  *(inited + 72) = v31;
  *(inited + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 112) = v7;
  *(inited + 120) = v9;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v14;
  *(inited + 152) = 976;
  v15 = v34;
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 192) = v15;
  v16 = v31;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v20 = swift_allocObject();
  v20[2] = 8;
  v20[3] = 0;
  v20[4] = 0;
  v20[5] = 0;
  v21 = __VaListBuilder.va_list()();
  StaticString.description.getter("dismissDownloadSharedCopyAlertController()", 42, 2);
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
  v23 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil value found", 23, 2);
  v24 = String._bridgeToObjectiveC()();

  [v32 handleFailureInFunction:v22 file:v23 lineNumber:976 isFatal:0 format:v24 args:v21];

  v3 = *(v33 + v2);
  if (v3)
  {
LABEL_5:
    v0[49] = v3;
    v3;
    v25 = swift_task_alloc();
    v0[50] = v25;
    *v25 = v0;
    v25[1] = sub_100C1C284;

    return sub_100D1CCA4(1);
  }

  else
  {

    v27 = v0[48];
    v28 = v0[44];
    v29 = *(v28 + v27);
    *(v28 + v27) = 0;

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_100C1C284()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_100C1C414;
  }

  else
  {

    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_100C1C3A0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100C1C3A0()
{

  v1 = v0[48];
  v2 = v0[44];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C1C414()
{
  v1 = *(v0 + 392);

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Caught error trying to dismiss downloadSharedCopyAlertController: %@", 68, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100C1C580(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  type metadata accessor for MainActor();
  v3[18] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[19] = v5;
  v3[20] = v4;

  return _swift_task_switch(sub_100C1C61C, v5, v4);
}

uint64_t sub_100C1C61C()
{
  LOBYTE(v1) = sub_100EA63DC();
  LOBYTE(v2) = [objc_opt_self() crl_iPadDevice];
  if (qword_1019F1770 != -1)
  {
LABEL_42:
    v32 = v2;
    swift_once();
    LOBYTE(v2) = v32;
  }

  if (v1)
  {
    if (v2)
    {
      if (qword_1019F1788 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_47;
    }

    if (qword_1019F1778 != -1)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      if (qword_1019F1780 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_47;
    }

    if (qword_1019F1790 != -1)
    {
LABEL_47:
      swift_once();
    }
  }

LABEL_12:
  v3 = (v0 + 2);

  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];
  v0[21] = v6;

  v0[14] = _swiftEmptyArrayStorage;
  v7 = &selRef_isEnumeratingForUserSearch;
  v8 = &selRef__crlaxSetShouldPreventAccessToCanvas_;
  if ((v1 & 1) == 0)
  {
    goto LABEL_17;
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v0[12] = sub_100C3355C;
  v0[13] = 0;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = *"";
  v0[10] = sub_10068B39C;
  v0[11] = &unk_10189AFA8;
  v13 = _Block_copy(v0 + 8);

  v8 = &selRef__crlaxSetShouldPreventAccessToCanvas_;
  v14 = [objc_opt_self() actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  v15 = v14;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v0[14] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[14] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_17:
    v16 = [objc_opt_self() mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 v7[489]];

    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    v21 = v0[15];
    v20 = v0[16];
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    v0[6] = sub_10002AAEC;
    v0[7] = v22;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = *"";
    v0[4] = sub_10068B39C;
    v0[5] = &unk_10189AF80;
    v23 = _Block_copy(v3);

    v24 = [objc_opt_self() v8[246]];
    v0[22] = v24;
    _Block_release(v23);

    v25 = v24;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[14] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[14] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v0[14];
    v3 = v1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v3)
    {
      break;
    }

    v15 = 0;
    v8 = (v1 & 0xC000000000000001);
    v7 = &selRef__crlaxSetShouldPreventAccessToCanvas_;
    do
    {
      if (v8)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v2 = *(v1 + 8 * v15 + 32);
      }

      v26 = v2;
      v27 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      [v6 addAction:v2];

      ++v15;
    }

    while (v27 != v3);

    if (v8)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_35;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v1 + 32);
LABEL_35:
      v3 = v28;
      goto LABEL_37;
    }

    __break(1u);
LABEL_46:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_37:
  v29 = v0[17];

  [v6 setPreferredAction:v3];

  v33 = (*((swift_isaMask & *v29) + 0x358) + **((swift_isaMask & *v29) + 0x358));
  v30 = swift_task_alloc();
  v0[23] = v30;
  *v30 = v0;
  v30[1] = sub_100C1CDE0;

  return v33(v6);
}

uint64_t sub_100C1CDE0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100C1CF00, v3, v2);
}

uint64_t sub_100C1CF00()
{
  v2 = v0[21];
  v1 = v0[22];

  sub_1011047E4(v2);

  v3 = v0[1];

  return v3();
}

double sub_100C1CF74(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  v6 = a2;
  sub_100C08AF8(sub_100C33568, v4);

  return result;
}

uint64_t sub_100C1D000(void *a1, void *a2)
{
  v4 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = a1;
  v9 = a2;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  v11[5] = v9;
  return sub_10064191C(0, 0, v6, &unk_1014A0F28, v11);
}

uint64_t sub_100C1D138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100C1D1E0, v7, v6);
}

uint64_t sub_100C1D1E0()
{
  if (sub_100C0BA2C())
  {
    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_100C1D3D0;

    return sub_100C0DBF8();
  }

  else
  {

    v3 = *(v0[2] + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
    if (!v3 || (v4 = [v3 rootViewController]) == 0 || (v5 = v4, v6 = objc_msgSend(v4, "crl_windowWrapper"), v5, !v6) || (v7 = objc_msgSend(v6, "newWrapperBeginningIgnoringUserInteractionSafely"), v6, !v7))
    {
      if (qword_1019F20A8 != -1)
      {
        swift_once();
      }

      v8 = static OS_os_log.crlError;
      v9 = static os_log_type_t.error.getter();
      sub_100005404(v8, &_mh_execute_header, v9, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
      v7 = 0;
    }

    v0[10] = v7;
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_100C1D66C;
    v11 = v0[3];

    return sub_100C15078(v11);
  }
}

uint64_t sub_100C1D3D0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100C1D4F0, v3, v2);
}

uint64_t sub_100C1D4F0()
{

  v1 = *(v0[2] + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
  if (!v1 || (v2 = [v1 rootViewController]) == 0 || (v3 = v2, v4 = objc_msgSend(v2, "crl_windowWrapper"), v3, !v4) || (v5 = objc_msgSend(v4, "newWrapperBeginningIgnoringUserInteractionSafely"), v4, !v5))
  {
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.crlError;
    v7 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v7, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
    v5 = 0;
  }

  v0[10] = v5;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_100C1D66C;
  v9 = v0[3];

  return sub_100C15078(v9);
}

uint64_t sub_100C1D66C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C1D7A8, v1, v0);
}

uint64_t sub_100C1D7A8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);

  v3 = [v1 endIgnoringUserInteractionSafely];
  v4 = (*((swift_isaMask & *v2) + 0x1A0))(v3);
  if (v4)
  {
    v5 = v4;
    [*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100C1DA68(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v2[26] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v2[29] = *(v4 + 64);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = type metadata accessor for MainActor();
  v2[33] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[34] = v6;
  v2[35] = v5;

  return _swift_task_switch(sub_100C1DBAC, v6, v5);
}

void sub_100C1DBAC()
{
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[24];
  v3 = v0[25];
  v4 = static OS_os_log.sceneManagement;
  v0[36] = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = type metadata accessor for CRLSceneDelegate(0);
  *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v3;
  v3;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v6, "Scene delegate (%p) making boardViewController for view model.", 62, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  sub_10004FE64(v2, v1, _s5BoardVMa);
  swift_storeEnumTagMultiPayload();
  sub_10005013C();
  v0[37] = v7;
  if (v7)
  {
    v8 = v7;
    v9 = swift_task_alloc();
    v0[38] = v9;
    *v9 = v0;
    v9[1] = sub_100C1DDC0;
    v10 = v0[24];

    sub_1010B139C(v10, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C1DDC0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = *(v4 + 272);
    v6 = *(v4 + 280);
    v7 = sub_100C1E01C;
  }

  else
  {

    *(v4 + 320) = a1;
    v5 = *(v4 + 272);
    v6 = *(v4 + 280);
    v7 = sub_100C1DEF0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C1DEF0()
{
  v1 = v0[40];
  v2 = v0[31];
  v3 = v0[25];

  sub_10005117C(v2, type metadata accessor for CRLBoardLibraryViewModel.Item);
  *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_delegate + 8) = &off_1018A45C8;
  swift_unknownObjectWeakAssign();
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shareSheetProvider);
  v5 = &v4[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_thumbnailProvider];
  *v5 = v3;
  *(v5 + 1) = &off_10189AB78;
  v6 = v4;
  swift_unknownObjectRelease();
  v7 = v3;

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_100C1E01C()
{
  v1 = v0[37];

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = v0[39];
  v3 = v0[31];
  v4 = v0[30];
  v21 = v0[29];
  v5 = v0[26];
  v19 = v0[25];
  v20 = v0[28];
  v6 = static OS_os_log.crlError;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v8 = Error.localizedDescription.getter();
  v10 = v9;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  v11 = static os_log_type_t.error.getter();
  sub_100005404(v6, &_mh_execute_header, v11, "Caught error trying to make board view controller: %@", 53, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_10004FE64(v3, v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v13 = v19;
  swift_errorRetain();
  v14 = static MainActor.shared.getter();
  v15 = (*(v20 + 80) + 40) & ~*(v20 + 80);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;
  sub_100025530(v4, v16 + v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
  *(v16 + ((v21 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  sub_100642244(0, 0, v5, &unk_1014A0E28, v16);

  swift_willThrow();
  sub_10005117C(v3, type metadata accessor for CRLBoardLibraryViewModel.Item);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C1E2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_100C1E3AC;

  return sub_100C30F90(a5);
}

uint64_t sub_100C1E3AC(char a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C1E4F0, v3, v2);
}

uint64_t sub_100C1E4F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100C1E55C(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v2[40] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[41] = swift_task_alloc();
  sub_1005B981C(&unk_1019FA3E0, &unk_101474F20);
  v2[42] = swift_task_alloc();
  v3 = _s5BoardVMa(0);
  v2[43] = v3;
  v2[44] = *(v3 - 8);
  v2[45] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[46] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[47] = v5;
  v2[48] = v4;

  return _swift_task_switch(sub_100C1E6B8, v5, v4);
}

void sub_100C1E6B8()
{
  sub_10005013C();
  if (v1)
  {
    v2 = v1;
    sub_1010AB99C(v0[38], v0[42]);
    v3 = v0[43];
    v4 = v0[44];
    v5 = v0[42];
    v6 = v0[45];

    (*(v4 + 56))(v5, 0, 1, v3);
    sub_100025530(v5, v6, _s5BoardVMa);
    if (qword_1019F2220 != -1)
    {
      swift_once();
    }

    v7 = v0[45];
    v8 = v0[41];
    v9 = v0[39];
    v10 = static OS_os_log.sceneManagement;
    v0[49] = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = type metadata accessor for CRLSceneDelegate(0);
    *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
    *(inited + 32) = v9;
    v12 = v9;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    *(inited + 96) = &type metadata for String;
    v16 = sub_1000053B0();
    v0[50] = v16;
    *(inited + 104) = v16;
    *(inited + 72) = v13;
    *(inited + 80) = v15;
    v17 = static os_log_type_t.default.getter();
    sub_100005404(v10, &_mh_execute_header, v17, "Scene Delegate (%p) opening board with UUID: %@.", 48, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    sub_10004FE64(v7, v8, _s5BoardVMa);
    swift_storeEnumTagMultiPayload();
    sub_1000513C8();
    v19 = v18;
    [v18 loadViewIfNeeded];

    v20 = swift_task_alloc();
    v0[51] = v20;
    *v20 = v0;
    v20[1] = sub_100C1EB14;
    v21 = v0[41];

    sub_100C176F4(v21, 1, 1, 0, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C1EB14(void *a1)
{
  v4 = *v2;
  *(*v2 + 416) = v1;

  if (v1)
  {
    v5 = *(v4 + 376);
    v6 = *(v4 + 384);
    v7 = sub_100C1ECF4;
  }

  else
  {

    v5 = *(v4 + 376);
    v6 = *(v4 + 384);
    v7 = sub_100C1EC3C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C1EC3C()
{

  v1 = v0[45];
  sub_10005117C(v0[41], type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10005117C(v1, _s5BoardVMa);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100C1ECF4()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = static OS_os_log.crlError;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v6, "Caught error trying to show view controller: %@", 47, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v7 = v0[45];
  sub_10005117C(v0[41], type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10005117C(v7, _s5BoardVMa);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C1EE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 217) = a7;
  *(v7 + 216) = a6;
  *(v7 + 144) = a4;
  *(v7 + 152) = a5;
  type metadata accessor for MainActor();
  *(v7 + 160) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 168) = v9;
  *(v7 + 176) = v8;

  return _swift_task_switch(sub_100C1EF30, v9, v8);
}

uint64_t sub_100C1EF30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_100C1F204;
    v3 = *(v0 + 217);
    v4 = *(v0 + 216);
    v5 = *(v0 + 152);

    return sub_100C176F4(v5, v4, v3, 0, 0);
  }

  else
  {

    _StringGuts.grow(_:)(84);
    v7._object = 0x80000001015923F0;
    v7._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v7);
    v8._countAndFlagsBits = sub_100F8903C();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0xD00000000000002CLL;
    v9._object = 0x8000000101592420;
    String.append(_:)(v9);
    sub_100C2E7E0();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 2;
    swift_willThrow();
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlError;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = v14;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    v16 = static os_log_type_t.debug.getter();
    sub_100005404(v11, &_mh_execute_header, v16, "Caught error trying to show view controller for PPT: %@", 55, 2, inited);

    swift_setDeallocating();
    sub_100005070((inited + 32));
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100C1F204(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = *(v4 + 168);
    v6 = *(v4 + 176);
    v7 = sub_100C1F39C;
  }

  else
  {

    *(v4 + 208) = a1;
    v5 = *(v4 + 168);
    v6 = *(v4 + 176);
    v7 = sub_100C1F334;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C1F334()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C1F39C()
{
  v1 = *(v0 + 184);

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.debug.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Caught error trying to show view controller for PPT: %@", 55, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v8 = *(v0 + 8);

  return v8();
}

id sub_100C1F524(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100C1F6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  type metadata accessor for MainActor();
  v5[20] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[21] = v7;
  v5[22] = v6;

  return _swift_task_switch(sub_100C1F750, v7, v6);
}

uint64_t sub_100C1F750()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[24] = v2;
    *v2 = v0;
    v2[1] = sub_100C1F858;
    v3 = v0[19];

    return sub_100C176F4(v3, 0, 0, 0, 1);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100C1F858(void *a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[21];
    v6 = v4[22];
    v7 = sub_100C1F9E4;
  }

  else
  {
    v8 = v4[23];

    v5 = v4[21];
    v6 = v4[22];
    v7 = sub_100C1F984;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100C1F984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C1F9E4()
{
  v1 = *(v0 + 184);

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Caught error trying to show view controller from sidebar: %@", 60, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100C1FB50(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_100C1FC00;

  return sub_100C1FDB0();
}

uint64_t sub_100C1FC00(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100C1FD44, v3, v2);
}

uint64_t sub_100C1FD44()
{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_100C1FDB0()
{
  v1[44] = v0;
  v1[45] = type metadata accessor for CRLAppIntentsDonationManager.DonatableAppIntent(0);
  v1[46] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6268, &unk_101471D00);
  v1[47] = swift_task_alloc();
  v2 = type metadata accessor for CRLBoardEntity(0);
  v1[48] = v2;
  v1[49] = *(v2 - 8);
  v1[50] = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  v1[51] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[52] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v1[55] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[56] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[57] = v4;
  v1[58] = v3;

  return _swift_task_switch(sub_100C1FFC8, v4, v3);
}

uint64_t sub_100C1FFC8()
{
  v1 = *(v0[44] + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
  if (!v1 || (v2 = [v1 rootViewController]) == 0 || (v3 = v2, v4 = objc_msgSend(v2, "crl_windowWrapper"), v3, !v4) || (v5 = objc_msgSend(v4, "newWrapperBeginningIgnoringUserInteractionSafely"), v4, !v5))
  {
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.crlError;
    v7 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v7, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
    v5 = 0;
  }

  v0[59] = v5;
  v8 = v0[55];
  v9 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  (*(*(v9 - 8) + 56))(v8, 1, 5, v9);
  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v0[60] = v16;
  v17 = swift_task_alloc();
  v0[61] = v17;
  *v17 = v0;
  v17[1] = sub_100C20248;
  v18 = v0[55];

  return sub_100C0E89C(v18, v14, v16, 1, 0);
}

uint64_t sub_100C20248(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  *(*v1 + 496) = a1;

  sub_10005117C(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v4 = *(v2 + 464);
  v5 = *(v2 + 456);

  return _swift_task_switch(sub_100C203C4, v5, v4);
}

void sub_100C203C4()
{
  v1 = *(v0 + 496);
  if (v1)
  {
    v3 = *(v0 + 424);
    v2 = *(v0 + 432);
    v4 = *(v0 + 408);
    v5 = *(v0 + 416);
    v6 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v7 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v8 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FE64(v7 + v8, v4, type metadata accessor for CRLBoardCRDTData);
    v9 = v1;
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    CRRegister.wrappedValue.getter();
    sub_10005117C(v4, type metadata accessor for CRLBoardCRDTData);
    v10 = (*&v1[v6] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v11 = *v10;
    v12 = v10[1];

    sub_10084BD4C(v5, v11, v12, v3);

    sub_100025530(v3, v2, type metadata accessor for CRLBoardIdentifier);
    sub_10005013C();
    *(v0 + 504) = v13;
    if (v13)
    {
      v14 = swift_task_alloc();
      *(v0 + 512) = v14;
      *v14 = v0;
      v14[1] = sub_100C206CC;
      v15 = *(v0 + 432);
      v16 = *(v0 + 376);

      sub_1010940DC(v16, v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v17 = *(v0 + 352);
    v18 = [*(v0 + 472) endIgnoringUserInteractionSafely];
    v19 = (*((swift_isaMask & *v17) + 0x1A0))(v18);
    if (v19)
    {
      v20 = v19;
      [*(v19 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
    }

    v21 = *(v0 + 8);
    v22 = *(v0 + 496);

    v21(v22);
  }
}

uint64_t sub_100C206CC()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 456);
    v4 = *(v2 + 464);
    v5 = sub_100C20D94;
  }

  else
  {

    v3 = *(v2 + 456);
    v4 = *(v2 + 464);
    v5 = sub_100C207E8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100C207E8()
{
  v1 = *(v0 + 376);
  if ((*(*(v0 + 392) + 48))(v1, 1, *(v0 + 384)) == 1)
  {
    sub_10005117C(*(v0 + 432), type metadata accessor for CRLBoardIdentifier);

    sub_10000CAAC(v1, &qword_1019F6268, &unk_101471D00);
    v2 = *(v0 + 352);
    v3 = [*(v0 + 472) endIgnoringUserInteractionSafely];
    v4 = (*((swift_isaMask & *v2) + 0x1A0))(v3);
    if (v4)
    {
      v5 = v4;
      [*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
    }

    v6 = *(v0 + 8);
    v7 = *(v0 + 496);

    return v6(v7);
  }

  else
  {
    sub_100025530(v1, *(v0 + 400), type metadata accessor for CRLBoardEntity);
    if (qword_1019F1348 != -1)
    {
      swift_once();
    }

    sub_10004FE64(*(v0 + 400), *(v0 + 368), type metadata accessor for CRLBoardEntity);
    swift_storeEnumTagMultiPayload();
    v9 = swift_task_alloc();
    *(v0 + 528) = v9;
    *v9 = v0;
    v9[1] = sub_100C20AA4;
    v10 = *(v0 + 368);

    return sub_100687F74(v10);
  }
}

uint64_t sub_100C20AA4()
{
  v1 = *v0;
  v2 = *(*v0 + 368);

  sub_10005117C(v2, type metadata accessor for CRLAppIntentsDonationManager.DonatableAppIntent);
  v3 = *(v1 + 464);
  v4 = *(v1 + 456);

  return _swift_task_switch(sub_100C20BFC, v4, v3);
}

uint64_t sub_100C20BFC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 400);

  sub_10005117C(v2, type metadata accessor for CRLBoardEntity);
  sub_10005117C(v1, type metadata accessor for CRLBoardIdentifier);
  v3 = *(v0 + 352);
  v4 = [*(v0 + 472) endIgnoringUserInteractionSafely];
  v5 = (*((swift_isaMask & *v3) + 0x1A0))(v4);
  if (v5)
  {
    v6 = v5;
    [*(v5 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 496);

  return v7(v8);
}

uint64_t sub_100C20D94()
{
  v56 = v0;
  v7 = v0[65];
  v1 = v0[63];

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[43] = v7;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 32) = v3;
  v53 = v6;
  v54 = inited + 32;
  *(inited + 64) = v6;
  *(inited + 40) = v5;
  v49 = objc_opt_self();
  LODWORD(v7) = [v49 _atomicIncrementAssertCount];
  v55 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v55, "There was a problem fetch new board for donation %@", 51, 2u);
  StaticString.description.getter("makeAndShowNewBoard()", 21, 2);
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v8 lastPathComponent];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v13 = static OS_os_log.crlAssert;
    v50 = v0;
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_10146CA70;
    *(v14 + 56) = &type metadata for Int32;
    *(v14 + 64) = &protocol witness table for Int32;
    *(v14 + 32) = v7;
    v15 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v14 + 96) = v15;
    v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v14 + 72) = v51;
    *(v14 + 136) = &type metadata for String;
    *(v14 + 144) = v53;
    *(v14 + 104) = v16;
    *(v14 + 112) = v10;
    *(v14 + 120) = v12;
    *(v14 + 176) = &type metadata for UInt;
    *(v14 + 184) = &protocol witness table for UInt;
    *(v14 + 152) = 1286;
    v17 = v55;
    *(v14 + 216) = v15;
    *(v14 + 224) = v16;
    *(v14 + 192) = v17;
    v18 = v51;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v14);
    swift_setDeallocating();
    v53 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "There was a problem fetch new board for donation %@", 51, 2, inited);

    type metadata accessor for __VaListBuilder();
    v12 = swift_allocObject();
    v12[2] = 8;
    v12[3] = 0;
    v22 = v12 + 3;
    v12[4] = 0;
    v12[5] = 0;
    v23 = *(inited + 16);
    v0 = inited;
    if (!v23)
    {
      break;
    }

    v24 = 0;
    while (1)
    {
      v25 = (v54 + 40 * v24);
      v10 = v25[4];
      LODWORD(v7) = sub_100020E58(v25, v25[3]);
      v26 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v27 = *v22;
      v28 = *(v26 + 16);
      v29 = __OFADD__(*v22, v28);
      v30 = *v22 + v28;
      if (v29)
      {
        break;
      }

      v7 = v12[4];
      if (v7 >= v30)
      {
        goto LABEL_19;
      }

      if (v7 + 0x4000000000000000 < 0)
      {
        goto LABEL_34;
      }

      v10 = v12[5];
      if (2 * v7 > v30)
      {
        v30 = 2 * v7;
      }

      v12[4] = v30;
      if ((v30 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_35;
      }

      inited = v26;
      v31 = swift_slowAlloc();
      v32 = v31;
      v12[5] = v31;
      if (v10)
      {
        if (v31 != v10 || v31 >= &v10[8 * v27])
        {
          memmove(v31, v10, 8 * v27);
        }

        LODWORD(v7) = v12;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v26 = inited;
LABEL_19:
        v32 = v12[5];
        if (!v32)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }

      v26 = inited;
      if (!v32)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_20:
      v34 = *(v26 + 16);
      if (v34)
      {
        v35 = (v26 + 32);
        v36 = *v22;
        while (1)
        {
          v37 = *v35++;
          *&v32[8 * v36] = v37;
          v36 = *v22 + 1;
          if (__OFADD__(*v22, 1))
          {
            break;
          }

          *v22 = v36;
          if (!--v34)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:

      if (++v24 == v23)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_27:
  v52 = v50[54];
  v38 = __VaListBuilder.va_list()();
  StaticString.description.getter("makeAndShowNewBoard()", 21, 2);
  v39 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLSceneDelegate.swift", 92, 2);
  v40 = String._bridgeToObjectiveC()();

  StaticString.description.getter("There was a problem fetch new board for donation %@", 51, 2);
  v41 = String._bridgeToObjectiveC()();

  [v49 handleFailureInFunction:v39 file:v40 lineNumber:1286 isFatal:0 format:v41 args:v38];

  swift_setDeallocating();
  swift_arrayDestroy();

  sub_10005117C(v52, type metadata accessor for CRLBoardIdentifier);
  v42 = v50[44];
  v43 = [v50[59] endIgnoringUserInteractionSafely];
  v44 = (*((swift_isaMask & *v42) + 0x1A0))(v43);
  if (v44)
  {
    v45 = v44;
    [*(v44 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController) becomeFirstResponderIfAppropriate];
  }

  v46 = v50[1];
  v47 = v50[62];

  return v46(v47);
}

uint64_t sub_100C21490@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100051290();
  v3 = [v2 isCollapsed];

  if (v3)
  {
    v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }

  else
  {

    return sub_100C0AF94(a1);
  }
}

BOOL sub_100C21550()
{
  v0 = sub_100051290();
  v1 = [v0 traitCollection];

  v2 = [v1 horizontalSizeClass];
  return v2 == 1;
}

id sub_100C215B0()
{
  v0 = sub_100051290();
  v1 = [v0 isCollapsed];

  return v1;
}

uint64_t sub_100C215F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100C0B3C0();
  v3 = result;
  if (result)
  {
    result = type metadata accessor for CRLiOSFolderGridViewController(0);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  return result;
}