BOOL sub_1012CE040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_10004AA7C(a4, 255, a5, a6);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_1012CE18C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v9 > *(v7 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    a3(a1);
    return v7;
  }

  v9 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v7 < 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  if (v9 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v11 = __CocoaSet.count.getter();
  v7 = a5(v10, v11);
LABEL_10:

  return a4(a1, v7);
}

void *sub_1012CE2A8(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1012D5A80(a1, type metadata accessor for CRLSceneInfo, &qword_101A28670, type metadata accessor for CRLSceneInfo, sub_100ED9390);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_100E73968(v5, v6);
LABEL_10:

  return sub_1012DA428(a1, v2);
}

void *sub_1012CE3E0(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1012D5A80(a1, type metadata accessor for CRLCollaborationParticipant, &qword_101A00E38, type metadata accessor for CRLCollaborationParticipant, sub_100ED7648);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_100E73128(v5, v6);
LABEL_10:

  return sub_1012DAADC(a1, v2);
}

void *sub_1012CE518(uint64_t a1)
{
  v41 = type metadata accessor for UUID();
  __chkstk_darwin(v41);
  v45 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v36 = v2 + 16;
  v37 = v2;
  v40 = (v2 + 8);
  v42 = a1;

  v9 = 0;
  v10 = _swiftEmptyDictionarySingleton;
  v38 = v8;
  v39 = a1 + 64;
  while (v7)
  {
    v11 = v9;
LABEL_11:
    v12 = __clz(__rbit64(v7)) | (v11 << 6);
    v13 = *(*(v42 + 48) + 8 * v12);
    v46 = *(*(v42 + 56) + 16 * v12);
    v14 = *(v13 + 24);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 32);
    v43 = v13;

    v17 = v46;
    swift_unknownObjectRetain();
    v18 = v45;
    v16(ObjectType, v14);
    v44 = v17;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v10;
    v20 = sub_10003E994(v18);
    v22 = v10[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_22;
    }

    v26 = v21;
    if (v10[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v20;
        sub_100AA37A4();
        v20 = v34;
      }
    }

    else
    {
      sub_100A8812C(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_10003E994(v45);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    v10 = v47;
    if (v26)
    {
      *(v47[7] + 16 * v20) = v46;
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*v40)(v45, v41);
    }

    else
    {
      v47[(v20 >> 6) + 8] |= 1 << v20;
      v28 = v37;
      v29 = v20;
      v30 = v45;
      v31 = v41;
      (*(v37 + 16))(v10[6] + *(v37 + 72) * v20, v45, v41);
      *(v10[7] + 16 * v29) = v46;
      swift_unknownObjectRelease();

      (*(v28 + 8))(v30, v31);
      v32 = v10[2];
      v24 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v10[2] = v33;
    }

    v9 = v11;
    v8 = v38;
    v4 = v39;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v10;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1012CE88C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptySetSingleton;
  }

  v2 = a1 + 56;
  do
  {
    v3 = *(v2 - 24);
    swift_bridgeObjectRetain_n();

    sub_100636EA0(v3);

    sub_100636EA0(v4);

    sub_100636EA0(v5);

    sub_100636EA0(v6);

    v2 += 32;
    --v1;
  }

  while (v1);
  return _swiftEmptySetSingleton;
}

Swift::Int sub_1012CE9B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  Hasher.init(_seed:)();
  v6 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  (*(v6 + 32))(ObjectType, v6);
  sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

uint64_t sub_1012CEB04(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v6 + 32))(ObjectType, v6);
  sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_1012CEC40(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v6 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v6 + 32))(ObjectType, v6);
  sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v3 + 8))(v5, v2);
  return Hasher._finalize()();
}

uint64_t sub_1012CED94(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = *a2;
  v12 = *(*a1 + 24);
  ObjectType = swift_getObjectType();
  (*(v12 + 32))(ObjectType, v12);
  v14 = *(v11 + 24);
  v15 = swift_getObjectType();
  (*(v14 + 32))(v15, v14);
  LOBYTE(a2) = static UUID.== infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v7, v4);
  v16(v10, v4);
  return a2 & 1;
}

void sub_1012CEF04()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState;
  if (*(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v26 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState;
    v25 = objc_opt_self();
    v3 = [v25 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27, "beginMarking() called while marking state already active", 56, 2u);
    StaticString.description.getter("beginMarking()", 14, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
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
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 132;
    v15 = v27;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "beginMarking() called while marking state already active", 56, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("beginMarking()", 14, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("beginMarking() called while marking state already active", 56, 2);
    v24 = String._bridgeToObjectiveC()();

    [v25 handleFailureInFunction:v22 file:v23 lineNumber:132 isFatal:0 format:v24 args:v21];

    v2 = v26;
  }

  *(v1 + v2) = 1;
}

void sub_1012CF2EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) & 1) == 0)
  {
    v26 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState;
    v25 = objc_opt_self();
    v3 = [v25 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27, "endMarking() called while marking state is not active", 53, 2u);
    StaticString.description.getter("endMarking()", 12, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
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
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 138;
    v15 = v27;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "endMarking() called while marking state is not active", 53, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("endMarking()", 12, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("endMarking() called while marking state is not active", 53, 2);
    v24 = String._bridgeToObjectiveC()();

    [v25 handleFailureInFunction:v22 file:v23 lineNumber:138 isFatal:0 format:v24 args:v21];

    v2 = v26;
  }

  *(v1 + v2) = 0;
}

void sub_1012CF6CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    if ((*(v3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  if (a3)
  {
LABEL_5:
    *(v3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
    return;
  }

  if (*(v3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) == 1)
  {
    v28 = v4;
    type metadata accessor for CRLTransactableHashableWrapper();
    ObjectType = swift_getObjectType();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = a2;
    v10 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications;
    swift_beginAccess();
    v11 = *(v3 + v10);
    v12 = *(v11 + 16);
    swift_unknownObjectRetain();
    if (v12)
    {

      v13 = sub_1007C7FB8(v8);
      if (v14)
      {
        v15 = (*(v11 + 56) + 16 * v13);
        v16 = *v15;
        v17 = v15[1];
        swift_unknownObjectRetain();

        v18 = (*(v9 + 56))(ObjectType, v9);
        v20 = v19;
        v21 = swift_getObjectType();
        v22 = (*(v20 + 64))(v16, v17, v21, v20);
        type metadata accessor for CRLInertOwner();
        v23 = swift_allocObject();
        *(v23 + 16) = 0x774F207472656E49;
        *(v23 + 24) = 0xEB0000000072656ELL;

        v25 = sub_1008228E4(v24, 1);

        v26 = (*(v20 + 80))(v22, v25, v21, v20);
        if (v28)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          (*(*v25 + 720))(v26);

          swift_beginAccess();
          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = *(v3 + v10);
          *(v3 + v10) = 0x8000000000000000;
          sub_100A9AB44(v18, v20, v8, isUniquelyReferenced_nonNull_native);

          *(v3 + v10) = v29;
          swift_endAccess();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        return;
      }
    }
  }
}

uint64_t sub_1012CF9F8()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v2 - 8);
  v195 = &v180 - v3;
  v201 = type metadata accessor for UUID();
  v191 = *(v201 - 8);
  __chkstk_darwin(v201);
  v180 = &v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v189 = &v180 - v6;
  __chkstk_darwin(v7);
  v185 = &v180 - v8;
  __chkstk_darwin(v9);
  v190 = &v180 - v10;
  __chkstk_darwin(v11);
  v196 = &v180 - v12;
  if (qword_1019F22B8 != -1)
  {
    goto LABEL_149;
  }

LABEL_2:
  v13 = static OS_os_log.boardItemLifecycle;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  v188 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v15 = v1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner;
  v16 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  swift_getObjectType();
  v205 = v16;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v17;
  *(inited + 40) = v19;
  v20 = static os_log_type_t.default.getter();
  sub_100005404(v13, &_mh_execute_header, v20, "Calling _ensureNoOrphans() on owner: [%{public}@]", 49, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v21 = *(v15 + 8);
  v193 = v15;
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 56);
  swift_unknownObjectRetain();
  LOBYTE(v21) = v23(ObjectType, v21);
  swift_unknownObjectRelease();
  v202 = v1;
  if (v21)
  {
    swift_beginAccess();

    sub_100DCA060(v24);
    v26 = v25;
    v27 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v28 = *(v1 + v27);

    sub_1010AC864(v26, v28);
    v30 = v29;
    if ((v29 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for CRLTransactableHashableWrapper();
      sub_10004AA7C(&qword_101A22700, v31, type metadata accessor for CRLTransactableHashableWrapper, "It5");
      Set.Iterator.init(_cocoa:)();
      v30 = v206;
      v32 = v207;
      v33 = v208;
      v34 = v209;
      v35 = v210;
    }

    else
    {
      v34 = 0;
      v36 = -1 << *(v29 + 32);
      v32 = (v29 + 56);
      v33 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v35 = v38 & *(v29 + 56);
    }

    v39 = v195;
    v183 = v33;
    v184 = v30;
    v40 = (v33 + 64) >> 6;
    v194 = (v191 + 48);
    v186 = (v191 + 8);
    v187 = (v191 + 32);
    v197 = v32;
    v198 = v40;
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    v41 = __CocoaSet.Iterator.next()();
    if (v41)
    {
      v204 = v41;
      type metadata accessor for CRLTransactableHashableWrapper();
      swift_dynamicCast();
      v1 = v34;
      v42 = v35;
      if (v205)
      {
        while (1)
        {
          type metadata accessor for CRLBoardItem(0);
          v46 = swift_dynamicCastClass();
          if (v46)
          {
            v47 = v46;
            v200 = v42;
            v48 = *((swift_isaMask & *v46) + 0xB8);
            v49 = swift_unknownObjectRetain();
            v48(v49);
            v50 = v201;
            if ((*v194)(v39, 1, v201) == 1)
            {

              swift_unknownObjectRelease();
              sub_10000CAAC(v39, &qword_1019F6990, &qword_10146D2F0);
              v34 = v1;
              v35 = v200;
              v32 = v197;
              v40 = v198;
              if (v30 < 0)
              {
                goto LABEL_10;
              }
            }

            else
            {
              v51 = v196;
              (*v187)(v196, v39, v50);
              v52 = *(v193 + 8);
              v53 = swift_getObjectType();
              v192 = *(v52 + 16);
              swift_unknownObjectRetain();
              v54 = v192(v51, v53, v52);
              swift_unknownObjectRelease();
              if (v54)
              {
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRetain();
                sub_1012DCC7C(v47, 1, 1, v202);

                swift_unknownObjectRelease_n();
              }

              v30 = v184;
              v32 = v197;
              v35 = v200;
              (*v186)(v196, v201);
              v34 = v1;
              v39 = v195;
              v40 = v198;
              if (v30 < 0)
              {
                goto LABEL_10;
              }
            }
          }

          else
          {

            v34 = v1;
            v35 = v42;
            v32 = v197;
            v40 = v198;
            if (v30 < 0)
            {
              goto LABEL_10;
            }
          }

LABEL_13:
          v43 = v34;
          v44 = v35;
          v1 = v34;
          if (!v35)
          {
            break;
          }

LABEL_17:
          v42 = (v44 - 1) & v44;
          v45 = *(*(v30 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v44)))));

          if (!v45)
          {
            goto LABEL_29;
          }
        }

        while (1)
        {
          v1 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_148;
          }

          if (v1 >= v40)
          {
            break;
          }

          v44 = v32[v1];
          ++v43;
          if (v44)
          {
            goto LABEL_17;
          }
        }
      }
    }

LABEL_29:
    sub_100035F90(v30);
    v1 = v202;
  }

  v55 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v56 = *(v1 + v55);
  if ((v56 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_10004AA7C(&qword_101A22700, v57, type metadata accessor for CRLTransactableHashableWrapper, "It5");
    Set.Iterator.init(_cocoa:)();
    v56 = v211;
    v58 = v212;
    v59 = v213;
    v60 = v214;
    v61 = v215;
  }

  else
  {
    v62 = -1 << *(v56 + 32);
    v58 = (v56 + 56);
    v63 = ~v62;
    v64 = -v62;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v61 = v65 & *(v56 + 56);

    v59 = v63;
    v60 = 0;
  }

  v186 = v59;
  v66 = (v59 + 8) >> 6;
  v1 = v190;
  v196 = v58;
  v197 = (v191 + 8);
  v187 = (v191 + 16);
  v192 = v56;
  v195 = v66;
  while (1)
  {
    v198 = v60;
    if (v56 < 0)
    {
      v72 = __CocoaSet.Iterator.next()();
      if (!v72)
      {
        goto LABEL_85;
      }

      v221 = v72;
      type metadata accessor for CRLTransactableHashableWrapper();
      swift_dynamicCast();
      v70 = v61;
      v71 = v204;
      v193 = v70;
      if (!v204)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v68 = v60;
      v69 = v61;
      if (!v61)
      {
        while (1)
        {
          v60 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            __break(1u);
            goto LABEL_147;
          }

          if (v60 >= v66)
          {
            break;
          }

          v69 = *&v58[8 * v60];
          ++v68;
          if (v69)
          {
            goto LABEL_45;
          }
        }

LABEL_85:
        sub_100035F90(v56);
        v113 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects;
        v1 = v202;
        swift_beginAccess();
        v114 = *(v1 + v113);
        if ((v114 & 0xC000000000000001) != 0)
        {

          __CocoaSet.makeIterator()();
          type metadata accessor for CRLTransactableHashableWrapper();
          sub_10004AA7C(&qword_101A22700, v115, type metadata accessor for CRLTransactableHashableWrapper, "It5");
          Set.Iterator.init(_cocoa:)();
          v114 = v216;
          v116 = v217;
          v117 = v218;
          v118 = v219;
          v119 = v220;
        }

        else
        {
          v120 = -1 << *(v114 + 32);
          v116 = v114 + 56;
          v121 = ~v120;
          v122 = -v120;
          if (v122 < 64)
          {
            v123 = ~(-1 << v122);
          }

          else
          {
            v123 = -1;
          }

          v119 = (v123 & *(v114 + 56));

          v117 = v121;
          v118 = 0;
        }

        v190 = v117;
        v124 = (v117 + 64) >> 6;
        v192 = v114;
        v193 = v116;
        v195 = v124;
        v198 = v118;
        if (v114 < 0)
        {
LABEL_92:
          v125 = __CocoaSet.Iterator.next()();
          if (v125)
          {
            v203 = v125;
            type metadata accessor for CRLTransactableHashableWrapper();
            swift_dynamicCast();
            v126 = v221;
            v127 = v119;
            if (v221)
            {
              goto LABEL_100;
            }
          }

          return sub_100035F90(v114);
        }

        while (1)
        {
          v128 = v118;
          v129 = v119;
          if (!v119)
          {
            while (1)
            {
              v118 = v128 + 1;
              if (__OFADD__(v128, 1))
              {
                break;
              }

              if (v118 >= v124)
              {
                return sub_100035F90(v114);
              }

              v129 = *(v116 + 8 * v118);
              ++v128;
              if (v129)
              {
                goto LABEL_99;
              }
            }

LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            swift_once();
            goto LABEL_2;
          }

LABEL_99:
          v127 = (v129 - 1) & v129;
          v126 = *(*(v114 + 48) + ((v118 << 9) | (8 * __clz(__rbit64(v129)))));

          if (!v126)
          {
            return sub_100035F90(v114);
          }

LABEL_100:
          v194 = v119;
          v200 = v127;
          v130 = *(v126 + 16);
          type metadata accessor for CRLBoardItem(0);
          v131 = swift_dynamicCastClass();
          if (!v131)
          {
            type metadata accessor for CRLBoard(0);
            v162 = swift_dynamicCastClass();
            if (v162)
            {
              v163 = *(v162 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
              swift_unknownObjectRetain();
              v164 = v163;
              sub_1012D2280(v164, 1);
              swift_unknownObjectRelease();

              v114 = v192;
            }

            v119 = v200;
            goto LABEL_137;
          }

          v132 = v131;
          type metadata accessor for CRLContainerItem(0);
          v133 = swift_dynamicCastClass();
          swift_unknownObjectRetain_n();
          if (v133)
          {
            swift_unknownObjectRetain();
            sub_1012D2280(v133, 1);
            swift_unknownObjectRelease();
          }

          v134 = [v132 parentContainerItem];
          if (v134)
          {
            v135 = v134;
            v136 = v189;
            (*((swift_isaMask & *v132) + 0x88))();
            v137 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
            v138 = *&v135[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs];
            swift_unknownObjectRetain();
            v196 = v135;
            if (!v138)
            {
              sub_10096C7D4();
              v138 = *&v135[v137];
            }

            if (v138)
            {
              v139 = v138;
            }

            else
            {
              v139 = _swiftEmptyArrayStorage;
            }

            v140 = sub_1012CE040(v136, v139, &type metadata accessor for UUID, &qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

            if (v140)
            {
              v185 = v130;
              v186 = v126;
              sub_1005B981C(&qword_101A1DBB0, &unk_101480620);
              v141 = v191;
              v142 = (*(v191 + 80) + 32) & ~*(v191 + 80);
              v143 = swift_allocObject();
              *(v143 + 16) = v188;
              v144 = *(v141 + 16);
              v145 = v136;
              v146 = v201;
              v144(v143 + v142, v145, v201);
              v147 = v196;
              v148 = v199;
              v149 = sub_1012E0400(v196, &off_10188FE10);
              v199 = v148;
              if (v148)
              {
                swift_unknownObjectRelease();
                sub_100035F90(v192);

                swift_unknownObjectRelease_n();

                swift_setDeallocating();
                v178 = *v197;
                (*v197)(v143 + v142, v146);
                swift_deallocClassInstance();
                return v178(v189, v146);
              }

              v221 = _swiftEmptyArrayStorage;
              v150 = OBJC_IVAR____TtC8Freeform16CRLContainerItem_items;
              v184 = v143;
              v151 = v146;
              v152 = v180;
              (v144)(v180, v143 + v142, v151, v149);
              v153 = *&v147[v150];
              if (*(v153 + 16))
              {

                v154 = sub_10003E994(v152);
                if (v155)
                {
                  v156 = *v197;
                  v157 = *(*(v153 + 56) + 8 * v154);
                  v158 = v152;
                  v159 = v201;
                  v156(v158, v201);

                  v160 = v157;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v221 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v221 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v161 = v221;
LABEL_123:
                  v167 = v192;
                  v168 = v199;
                  sub_100972450(v184);
                  v199 = v168;
                  if (v168)
                  {
                    swift_setDeallocating();
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    sub_100035F90(v167);

                    swift_unknownObjectRelease_n();
                    v179 = v196;

                    v156(v189, v159);
                  }

                  v198 = v156;

                  if (v161 >> 62)
                  {
                    result = _CocoaArrayWrapper.endIndex.getter();
                    v169 = result;
                    if (result)
                    {
LABEL_126:
                      if (v169 < 1)
                      {
                        goto LABEL_151;
                      }

                      for (i = 0; i != v169; ++i)
                      {
                        if ((v161 & 0xC000000000000001) != 0)
                        {
                          v171 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        }

                        else
                        {
                          v171 = *(v161 + 8 * i + 32);
                        }

                        v172 = v171;
                        sub_1012DCC7C(v171, 0, 0, v202);
                      }
                    }
                  }

                  else
                  {
                    v169 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v169)
                    {
                      goto LABEL_126;
                    }
                  }

                  v1 = v202;
                  if (*(v202 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) == 1)
                  {
                    *(v202 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
                  }

                  swift_unknownObjectRelease_n();
                  v173 = v196;

                  v198(v189, v201);
                  v119 = v200;
                  v114 = v192;
                  goto LABEL_136;
                }
              }

              v156 = *v197;
              v166 = v152;
              v159 = v201;
              (*v197)(v166, v201);
              v161 = _swiftEmptyArrayStorage;
              goto LABEL_123;
            }

            v165 = v196;

            swift_unknownObjectRelease_n();
            (*v197)(v136, v201);
            v119 = v200;
            v1 = v202;
          }

          else
          {

            swift_unknownObjectRelease_n();
            v119 = v200;
          }

LABEL_136:
          v116 = v193;
LABEL_137:
          v124 = v195;
          v198 = v118;
          if (v114 < 0)
          {
            goto LABEL_92;
          }
        }
      }

LABEL_45:
      v193 = v61;
      v70 = (v69 - 1) & v69;
      v71 = *(*(v56 + 48) + ((v60 << 9) | (8 * __clz(__rbit64(v69)))));

      if (!v71)
      {
        goto LABEL_85;
      }
    }

    v200 = v70;
    v73 = *(v71 + 16);
    type metadata accessor for CRLBoardItem(0);
    v74 = swift_dynamicCastClass();
    if (!v74)
    {
      type metadata accessor for CRLBoard(0);
      v102 = swift_dynamicCastClass();
      if (v102)
      {
        v103 = *(v102 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
        swift_unknownObjectRetain();
        v104 = v103;
        sub_1012D2280(v104, 0);
        swift_unknownObjectRelease();

        v1 = v190;
      }

      goto LABEL_38;
    }

    v75 = v74;
    type metadata accessor for CRLContainerItem(0);
    v76 = swift_dynamicCastClass();
    swift_unknownObjectRetain_n();
    if (v76)
    {
      swift_unknownObjectRetain();
      sub_1012D2280(v76, 0);
      swift_unknownObjectRelease();
    }

    v77 = [v75 parentContainerItem];
    if (v77)
    {
      break;
    }

    swift_unknownObjectRelease_n();
LABEL_84:
    v61 = v200;
    v56 = v192;
LABEL_39:
    v66 = v195;
    v58 = v196;
  }

  v78 = v77;
  (*((swift_isaMask & *v75) + 0x88))();
  v79 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
  v80 = *&v78[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs];
  swift_unknownObjectRetain();
  v194 = v78;
  if (!v80)
  {
    sub_10096C7D4();
    v80 = *&v78[v79];
  }

  if (v80)
  {
    v81 = v80;
  }

  else
  {
    v81 = _swiftEmptyArrayStorage;
  }

  v82 = sub_1012CE040(v1, v81, &type metadata accessor for UUID, &qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  v56 = v192;
  if (!v82)
  {

    v67 = v194;

    swift_unknownObjectRelease_n();
    (*v197)(v1, v201);
LABEL_38:
    v61 = v200;
    goto LABEL_39;
  }

  v183 = v73;
  v184 = v71;
  sub_1005B981C(&qword_101A1DBB0, &unk_101480620);
  v83 = v191;
  v84 = (*(v191 + 80) + 32) & ~*(v191 + 80);
  v85 = swift_allocObject();
  *(v85 + 16) = v188;
  v86 = *(v83 + 16);
  v86(v85 + v84, v1, v201);
  v87 = v194;
  v88 = v199;
  v89 = sub_1012E0400(v194, &off_10188FE10);
  v199 = v88;
  if (v88)
  {
    swift_unknownObjectRelease();
    sub_100035F90(v56);

    swift_unknownObjectRelease_n();

    swift_setDeallocating();
    v174 = *v197;
    v175 = v85 + v84;
    v176 = v201;
    (*v197)(v175, v201);
    swift_deallocClassInstance();
    return v174(v190, v176);
  }

  v204 = _swiftEmptyArrayStorage;
  v90 = OBJC_IVAR____TtC8Freeform16CRLContainerItem_items;
  v182 = v85;
  v91 = v185;
  (v86)(v185, v85 + v84, v201, v89);
  v92 = *(v87 + v90);
  v93 = v87;
  if (!*(v92 + 16))
  {
    goto LABEL_70;
  }

  v94 = sub_10003E994(v91);
  if ((v95 & 1) == 0)
  {

LABEL_70:
    v181 = *v197;
    v181(v91, v201);
    v101 = _swiftEmptyArrayStorage;
    goto LABEL_71;
  }

  v96 = *v197;
  v97 = *(*(v92 + 56) + 8 * v94);
  v98 = v91;
  v99 = v97;
  v181 = v96;
  v96(v98, v201);

  v100 = v99;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v101 = v204;
LABEL_71:
  v105 = v93;
  v106 = v199;
  sub_100972450(v182);
  v199 = v106;
  if (!v106)
  {

    if (v101 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v108 = result;
      if (result)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v108 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v108)
      {
LABEL_74:
        if (v108 < 1)
        {
          __break(1u);
LABEL_151:
          __break(1u);
          return result;
        }

        for (j = 0; j != v108; ++j)
        {
          if ((v101 & 0xC000000000000001) != 0)
          {
            v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v110 = *(v101 + 8 * j + 32);
          }

          v111 = v110;
          sub_1012DCC7C(v110, 0, 0, v202);
        }
      }
    }

    if (*(v202 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) == 1)
    {
      *(v202 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
    }

    swift_unknownObjectRelease_n();
    v112 = v194;

    v1 = v190;
    v181(v190, v201);
    goto LABEL_84;
  }

  swift_setDeallocating();
  v177 = v201;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100035F90(v192);

  swift_unknownObjectRelease_n();

  v181(v190, v177);
}

void *sub_1012D10C0()
{
  sub_1012CF9F8();
  if (!v1)
  {
    if (*(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) == 1)
    {
      type metadata accessor for CRLUndoingAction();
      v2 = swift_allocObject();
      v2[2] = _swiftEmptyDictionarySingleton;
      v2[3] = _swiftEmptySetSingleton;
      v2[4] = _swiftEmptySetSingleton;
    }

    else
    {
      v2 = 0;
    }

    if (*(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_dirtiesOwner) == 1)
    {
      v3 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 40);
      swift_unknownObjectRetain();
      v5(v0, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    v6 = sub_1012D11E8(v2, 1);
    v7 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta);
    *(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext__observableDelta) = v6;

    *(v0 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) = 0;
  }

  return v2;
}

char *sub_1012D11E8(uint64_t a1, int a2)
{
  v3 = v2;
  v163 = a2;
  v186 = type metadata accessor for UUID();
  v158 = *(v186 - 8);
  __chkstk_darwin(v186);
  v171 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v181 = &v153 - v7;
  __chkstk_darwin(v8);
  v184 = &v153 - v9;
  v10 = [objc_allocWithZone(type metadata accessor for CRLObservableDelta()) init];
  v183 = a1;
  if (a1)
  {
    swift_beginAccess();

    v12 = sub_1012E2240(v11, v3);

    *(v183 + 32) = v12;
  }

  v169 = v10;
  v162 = 0;
  v13 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableCreatedObjects;
  swift_beginAccess();
  v164 = v3;
  v159 = v13;
  v14 = *(v3 + v13);
  if ((v14 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_10004AA7C(&qword_101A22700, v15, type metadata accessor for CRLTransactableHashableWrapper, "It5");
    Set.Iterator.init(_cocoa:)();
    v14 = v191;
    v16 = v192;
    v17 = v193;
    v18 = v194;
    v19 = v195;
  }

  else
  {
    v20 = -1 << *(v14 + 32);
    v16 = v14 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v14 + 56);

    v18 = 0;
  }

  ObjectType = v17;
  v23 = (v17 + 64) >> 6;
  v185 = v14;
  v182 = v16;
  while (v14 < 0)
  {
    v29 = __CocoaSet.Iterator.next()();
    if (!v29 || (v190[0] = v29, type metadata accessor for CRLTransactableHashableWrapper(), swift_dynamicCast(), v28 = v188, v26 = v18, v27 = v19, !v188))
    {
LABEL_23:
      sub_100035F90(v14);
      v37 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications;
      v38 = v164;
      swift_beginAccess();
      v39 = *(v38 + v37);
      v40 = *(v39 + 64);
      v187 = v39 + 64;
      v41 = 1 << *(v39 + 32);
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      else
      {
        v42 = -1;
      }

      v43 = v42 & v40;
      v44 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
      v45 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications;
      v166 = OBJC_IVAR____TtC8Freeform18CRLObservableDelta_observableDeltas;
      v167 = v39;

      v161 = v44;
      swift_beginAccess();
      v157 = v45;
      v46 = v43;
      swift_beginAccess();
      v47 = 0;
      v48 = (v41 + 63) >> 6;
      v185 = (v158 + 8);
      v156 = v158 + 16;
      v160 = v48;
      if (!v46)
      {
LABEL_30:
        while (1)
        {
          v49 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if (v49 >= v48)
          {

            return v169;
          }

          v46 = *(v187 + 8 * v49);
          ++v47;
          if (v46)
          {
            v47 = v49;
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_71;
      }

LABEL_34:
      while (2)
      {
        while (2)
        {
          v50 = __clz(__rbit64(v46)) | (v47 << 6);
          v51 = *(*(v167 + 48) + 8 * v50);
          v52 = (*(v167 + 56) + 16 * v50);
          v54 = *v52;
          v53 = v52[1];
          v55 = *(v51 + 16);
          v56 = *(v51 + 24);
          v172 = v51;
          v182 = v55;
          if (v163)
          {
            v168 = v53;
            ObjectType = swift_getObjectType();

            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v57 = v56;
            v58 = v162;
            sub_101277F5C(v38, ObjectType, v56);
            v162 = v58;
            if (v58)
            {
              goto LABEL_74;
            }

            v51 = v172;
            v59 = v54;
            v60 = v168;
          }

          else
          {

            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v57 = v56;
            v59 = v54;
            v60 = v53;
          }

          v46 &= v46 - 1;
          v61 = *(v38 + v161);
          v170 = v57;
          if ((v61 & 0xC000000000000001) != 0)
          {

            v62 = __CocoaSet.contains(_:)();

            if (v62)
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_41;
            }

            v165 = v46;
          }

          else
          {
            v165 = v46;
            if (*(v61 + 16))
            {
              v154 = v47;
              v155 = v59;
              v168 = v60;
              Hasher.init(_seed:)();
              v63 = *(v51 + 16);
              v64 = *(v51 + 24);
              v65 = swift_getObjectType();
              v66 = *(v64 + 32);

              v67 = v184;
              v179 = v64;
              ObjectType = v63;
              v177 = v64 + 32;
              v178 = v65;
              v176 = v66;
              v66(v65, v64);
              sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v68 = v186;
              dispatch thunk of Hashable.hash(into:)();
              v175 = *v185;
              v175(v67, v68);
              v69 = Hasher._finalize()();
              v70 = -1 << *(v61 + 32);
              v71 = v69 & ~v70;
              v174 = v61 + 56;
              if ((*(v61 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
              {
                v173 = ~v70;
                while (1)
                {
                  v72 = v61;
                  v73 = *(*(*(v61 + 48) + 8 * v71) + 24);
                  v74 = swift_getObjectType();
                  v75 = *(v73 + 32);

                  v76 = v184;
                  v75(v74, v73);
                  v77 = v181;
                  v176(v178, v179);
                  v78 = static UUID.== infix(_:_:)();

                  v79 = v77;
                  v80 = v186;
                  v81 = v175;
                  v175(v79, v186);
                  v81(v76, v80);
                  if (v78)
                  {
                    break;
                  }

                  v71 = (v71 + 1) & v173;
                  v61 = v72;
                  if (((*(v174 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
                  {
                    goto LABEL_48;
                  }
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                v38 = v164;
                v46 = v165;
                v47 = v154;
LABEL_41:

                v48 = v160;
                if (!v46)
                {
                  goto LABEL_30;
                }

                continue;
              }

LABEL_48:

              v38 = v164;
              v51 = v172;
              v47 = v154;
              v59 = v155;
              v60 = v168;
            }
          }

          break;
        }

        v82 = *(v38 + v159);

        v83 = sub_10079C5CC(v51, v82);

        if ((v83 & 1) == 0)
        {
          v84 = *(v38 + v157);
          if (*(v84 + 16))
          {

            v85 = sub_1007C7FB8(v51);
            if (v86)
            {
              v168 = v60;
              v87 = (*(v84 + 56) + 16 * v85);
              v88 = *v87;
              v89 = v87[1];
              v90 = v183;
              swift_unknownObjectRetain();

              if (v90)
              {
                v91 = swift_getObjectType();
                v92 = v170;
                v93 = v59;
                v94 = v184;
                (*(v170 + 32))(v91, v170);
                v95 = (*(v92 + 64))(v88, v89, v91, v92);
                swift_beginAccess();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v189 = *(v90 + 16);
                *(v90 + 16) = 0x8000000000000000;
                sub_100A9B1CC(v95, v94, isUniquelyReferenced_nonNull_native);
                v97 = v94;
                v59 = v93;
                (*v185)(v97, v186);
                *(v90 + 16) = v189;
                swift_endAccess();
              }

              swift_unknownObjectRelease();
              v60 = v168;
              goto LABEL_59;
            }
          }

          if (v183)
          {
            v98 = swift_getObjectType();
            v99 = v170;
            v100 = v184;
            (*(v170 + 32))(v98, v170);
            v101 = (*(v99 + 64))(v59, v60, v98, v99);
            v102 = v183;
            swift_beginAccess();
            v103 = swift_isUniquelyReferenced_nonNull_native();
            v189 = *(v102 + 16);
            *(v102 + 16) = 0x8000000000000000;
            sub_100A9B1CC(v101, v100, v103);
            (*v185)(v100, v186);
            *(v102 + 16) = v189;
            swift_endAccess();
          }
        }

LABEL_59:
        v104 = swift_getObjectType();
        v105 = v170;
        v106 = v171;
        (*(v170 + 32))(v104, v170);
        v107 = (*(v105 + 72))(v59, v60, v104, v105);
        v108 = v166;
        v109 = v169;
        swift_beginAccess();
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v189 = *&v109[v108];
        v111 = v189;
        *&v109[v108] = 0x8000000000000000;
        v112 = sub_10003E994(v106);
        v114 = v111[2];
        v115 = (v113 & 1) == 0;
        v116 = __OFADD__(v114, v115);
        v117 = v114 + v115;
        if (v116)
        {
          goto LABEL_72;
        }

        v118 = v113;
        if (v111[3] >= v117)
        {
          v46 = v165;
          if ((v110 & 1) == 0)
          {
            v125 = v165;
            v126 = v112;
            sub_100AA41B4();
            v112 = v126;
            v46 = v125;
          }
        }

        else
        {
          sub_100A89774(v117, v110);
          v112 = sub_10003E994(v171);
          v46 = v165;
          if ((v118 & 1) != (v119 & 1))
          {
            goto LABEL_77;
          }
        }

        v38 = v164;
        v120 = v189;
        if (v118)
        {
          *(v189[7] + 8 * v112) = v107;
        }

        else
        {
          v121 = v46;
          v189[(v112 >> 6) + 8] |= 1 << v112;
          v122 = v112;
          (*(v158 + 16))(v120[6] + *(v158 + 72) * v112, v171, v186);
          *(v120[7] + 8 * v122) = v107;
          v123 = v120[2];
          v116 = __OFADD__(v123, 1);
          v124 = v123 + 1;
          if (v116)
          {
            goto LABEL_73;
          }

          v120[2] = v124;
          v46 = v121;
        }

        (*v185)(v171, v186);
        *&v169[v166] = v120;
        swift_endAccess();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v48 = v160;
        if (!v46)
        {
          goto LABEL_30;
        }

        continue;
      }
    }

LABEL_21:
    v187 = v27;
    v30 = v28[3];
    v31 = swift_getObjectType();
    v32 = *(v30 + 56);
    swift_unknownObjectRetain();
    v34 = v32(v31, v30);
    if (v183)
    {
      v35 = v33;
      type metadata accessor for CRLTransactableHashableWrapper();
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      *(v36 + 24) = v35;
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_100E6B218(v190, v36);
      swift_endAccess();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v18 = v26;
    v19 = v187;
    v14 = v185;
    v16 = v182;
  }

  v24 = v18;
  v25 = v19;
  v26 = v18;
  if (v19)
  {
LABEL_17:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v14 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

    if (!v28)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_23;
    }

    v25 = *(v16 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_17;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:

  v128 = objc_opt_self();
  v129 = [v128 _atomicIncrementAssertCount];
  v188 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v188, "Transactable failed to provide a snapshot in an undoable transaction context", 76, 2u);
  StaticString.description.getter("_createObservableDelta(populating:shouldCloseTransaction:)", 58, 2);
  v130 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
  v131 = String._bridgeToObjectiveC()();

  v132 = [v131 lastPathComponent];

  v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v135 = v134;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v136 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v129;
  v138 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v138;
  v139 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v139;
  *(inited + 72) = v130;
  *(inited + 136) = &type metadata for String;
  v140 = sub_1000053B0();
  *(inited + 112) = v133;
  *(inited + 120) = v135;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v140;
  *(inited + 152) = 474;
  v141 = v188;
  *(inited + 216) = v138;
  *(inited + 224) = v139;
  *(inited + 192) = v141;
  v142 = v130;
  v143 = v141;
  v144 = static os_log_type_t.error.getter();
  sub_100005404(v136, &_mh_execute_header, v144, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v145 = static os_log_type_t.error.getter();
  sub_100005404(v136, &_mh_execute_header, v145, "Transactable failed to provide a snapshot in an undoable transaction context", 76, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Transactable failed to provide a snapshot in an undoable transaction context");
  type metadata accessor for __VaListBuilder();
  v146 = swift_allocObject();
  v146[2] = 8;
  v146[3] = 0;
  v146[4] = 0;
  v146[5] = 0;
  v147 = __VaListBuilder.va_list()();
  StaticString.description.getter("_createObservableDelta(populating:shouldCloseTransaction:)", 58, 2);
  v148 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
  v149 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Transactable failed to provide a snapshot in an undoable transaction context", 76, 2);
  v150 = String._bridgeToObjectiveC()();

  [v128 handleFailureInFunction:v148 file:v149 lineNumber:474 isFatal:1 format:v150 args:v147];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v151, v152);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_77:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1012D2280(void *a1, int a2)
{
  v91 = a2;
  v104 = a1;
  v89 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v89);
  v88 = &v78 - v2;
  v3 = type metadata accessor for UUID();
  v96 = *(v3 - 8);
  __chkstk_darwin(v3);
  v80 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v78 - v6;
  __chkstk_darwin(v7);
  v105 = &v78 - v8;
  v9 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v9 - 8);
  v82 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v78 - v12;
  __chkstk_darwin(v13);
  v85 = &v78 - v14;
  __chkstk_darwin(v15);
  v95 = &v78 - v16;
  __chkstk_darwin(v17);
  v97 = &v78 - v18;
  v103 = sub_1005B981C(&unk_101A28650, &unk_101477C40);
  v19 = *(v103 - 1);
  __chkstk_darwin(v103);
  v21 = &v78 - v20;
  v22 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v22 - 8);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1005B981C(&unk_101A22740, &unk_101478340);
  v78 = *(v101 - 8);
  __chkstk_darwin(v101);
  v26 = &v78 - v25;
  if (qword_1019F22B8 != -1)
  {
    swift_once();
  }

  v102 = static OS_os_log.boardItemLifecycle;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v28 = v104;
  v29 = [v28 description];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v30;
  *(inited + 40) = v32;
  v33 = static os_log_type_t.default.getter();
  sub_100005404(v102, &_mh_execute_header, v33, "Calling _recursivelyDeleteChildren() on parent: [%{public}@]", 60, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v87 = v28;
  v86 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  type metadata accessor for CRLContainerItemData(0);
  v34 = *(*swift_dynamicCastClassUnconditional() + 840);

  v34(v35);

  v36 = v103;
  (*(v19 + 16))(v21, v24, v103);
  sub_10004AB24(v24, type metadata accessor for CRLContainerItemCRDTData);
  CROrderedSet.makeIterator()();
  (*(v19 + 8))(v21, v36);
  v37 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner;
  v38 = v97;
  v39 = v101;
  v102 = v26;
  CROrderedSet.Iterator.next()();
  v40 = v96;
  v103 = *(v96 + 48);
  v104 = (v96 + 48);
  v41 = (v103)(v38, 1, v3);
  v42 = v85;
  if (v41 != 1)
  {
    v98 = &v94[v37];
    v44 = *(v40 + 32);
    v43 = v40 + 32;
    v99 = v44;
    v84 = (v43 + 24);
    v100 = (v43 - 24);
    v90 = v3;
    v96 = v43;
    while (1)
    {
      v45 = v105;
      v99(v105, v38, v3);
      v46 = *(v98 + 1);
      ObjectType = swift_getObjectType();
      v48 = *(v46 + 16);
      swift_unknownObjectRetain();
      v49 = ObjectType;
      v39 = v101;
      v50 = v48(v45, v49, v46);
      v52 = v51;
      swift_unknownObjectRelease();
      if (!v50)
      {
        goto LABEL_23;
      }

      type metadata accessor for CRLBoardItem(0);
      v53 = swift_dynamicCastClass();
      if (!v53)
      {
        goto LABEL_20;
      }

      v54 = *((swift_isaMask & *v53) + 0xB8);
      v55 = (swift_isaMask & *v53) + 184;
      v56 = swift_unknownObjectRetain();
      v57 = v95;
      v93 = v54;
      v92 = v55;
      v58 = (v54)(v56);
      (*(**&v87[v86] + 264))(v58);
      (*v84)(v42, 0, 1, v3);
      v59 = *(v89 + 48);
      v60 = v88;
      sub_100060460(v57, v88);
      sub_100060460(v42, v60 + v59);
      v61 = v103;
      if ((v103)(v60, 1, v3) == 1)
      {
        break;
      }

      v62 = v81;
      sub_100060460(v60, v81);
      if (v61(v60 + v59, 1, v3) == 1)
      {
        v42 = v85;
        sub_10000CAAC(v85, &qword_1019F6990, &qword_10146D2F0);
        v3 = v90;
        sub_10000CAAC(v95, &qword_1019F6990, &qword_10146D2F0);
        (*v100)(v62, v3);
        v61 = v103;
LABEL_12:
        v63 = sub_10000CAAC(v60, &unk_101A0AFE0, &unk_10146F3C0);
        goto LABEL_13;
      }

      v72 = v79;
      v99(v79, (v60 + v59), v3);
      sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v83) = dispatch thunk of static Equatable.== infix(_:_:)();
      v73 = *v100;
      (*v100)(v72, v3);
      v42 = v85;
      sub_10000CAAC(v85, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v95, &qword_1019F6990, &qword_10146D2F0);
      v73(v62, v90);
      v3 = v90;
      v63 = sub_10000CAAC(v60, &qword_1019F6990, &qword_10146D2F0);
      v61 = v103;
      if (v83)
      {
        goto LABEL_18;
      }

LABEL_13:
      v64 = v82;
      v93(v63);
      if (v61(v64, 1, v3) == 1)
      {
        swift_unknownObjectRelease();
        sub_10000CAAC(v64, &qword_1019F6990, &qword_10146D2F0);
LABEL_19:
        v39 = v101;
LABEL_20:
        v74 = swift_getObjectType();
        v75 = v91;
        sub_1012DEA8C(v50, v91 & 1, 1, v94, v74, v52);
        type metadata accessor for CRLContainerItem(0);
        v76 = swift_dynamicCastClass();
        if (v76)
        {
          sub_1012D2280(v76, v75 & 1);
        }

        swift_unknownObjectRelease();
LABEL_23:
        (*v100)(v105, v3);
        goto LABEL_24;
      }

      v65 = v80;
      v99(v80, v64, v3);
      v66 = *(v98 + 1);
      v67 = swift_getObjectType();
      v68 = *(v66 + 16);
      swift_unknownObjectRetain();
      v69 = v68(v65, v67, v66);
      v42 = v85;
      v70 = v69;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v71 = *v100;
      (*v100)(v65, v3);
      v39 = v101;
      if (!v70)
      {
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v71(v105, v3);
LABEL_24:
      v38 = v97;
      CROrderedSet.Iterator.next()();
      if ((v103)(v38, 1, v3) == 1)
      {
        return (*(v78 + 8))(v102, v39);
      }
    }

    v83 = v52;
    sub_10000CAAC(v42, &qword_1019F6990, &qword_10146D2F0);
    v52 = v83;
    v3 = v90;
    sub_10000CAAC(v57, &qword_1019F6990, &qword_10146D2F0);
    if (v61(v60 + v59, 1, v3) == 1)
    {
      sub_10000CAAC(v60, &qword_1019F6990, &qword_10146D2F0);
LABEL_18:
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  return (*(v78 + 8))(v102, v39);
}

uint64_t sub_1012D2EE8()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1012D3044(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1012D3118(uint64_t a1)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_109;
  }

  type metadata accessor for CRLWatermarkTransactionContext(0);
  if (swift_dynamicCastClass())
  {
    v179 = objc_opt_self();
    v180 = [v179 _atomicIncrementAssertCount];
    v238[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v238, "Cannot call stepTo on another watermark", 39, 2u);
    StaticString.description.getter("stepTo(_:)", 10, 2);
    v181 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v182 = String._bridgeToObjectiveC()();

    v183 = [v182 lastPathComponent];

    v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v186 = v185;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v187 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v180;
    v189 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v189;
    v190 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v190;
    *(inited + 72) = v181;
    *(inited + 136) = &type metadata for String;
    v191 = sub_1000053B0();
    *(inited + 112) = v184;
    *(inited + 120) = v186;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v191;
    *(inited + 152) = 576;
    v192 = v238[0];
    *(inited + 216) = v189;
    *(inited + 224) = v190;
    *(inited + 192) = v192;
    v193 = v181;
    v194 = v192;
    v195 = static os_log_type_t.error.getter();
    sub_100005404(v187, &_mh_execute_header, v195, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v196 = static os_log_type_t.error.getter();
    sub_100005404(v187, &_mh_execute_header, v196, "Cannot call stepTo on another watermark", 39, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Cannot call stepTo on another watermark");
    type metadata accessor for __VaListBuilder();
    v197 = swift_allocObject();
    v197[2] = 8;
    v197[3] = 0;
    v197[4] = 0;
    v197[5] = 0;
    v198 = __VaListBuilder.va_list()();
    StaticString.description.getter("stepTo(_:)", 10, 2);
    v176 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v177 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Cannot call stepTo on another watermark", 39, 2);
    v178 = String._bridgeToObjectiveC()();

    [v179 handleFailureInFunction:v176 file:v177 lineNumber:576 isFatal:1 format:v178 args:v198];
    goto LABEL_115;
  }

  v2 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
  swift_beginAccess();
  v212 = v2;
  v3 = *(a1 + v2);
  v4 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
  swift_beginAccess();
  v211 = v4;

  v214 = sub_1012CE18C(v5, v3, sub_1012D4E00, sub_1012D6730, sub_100E72BE0);

  v6 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v210 = v6;
  v7 = *(a1 + v6);
  v8 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v209 = v8;

  v213 = sub_1012CE18C(v9, v7, sub_1012D4E00, sub_1012D6730, sub_100E72BE0);

  v10 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects;
  swift_beginAccess();
  v208 = v10;
  v11 = *(a1 + v10);
  v12 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects;
  swift_beginAccess();
  v219 = v12;

  v14 = sub_1012CE18C(v13, v11, sub_1012D4E00, sub_1012D6730, sub_100E72BE0);

  v15 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances;
  swift_beginAccess();
  v207 = v15;
  v16 = *(a1 + v15);
  v17 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances;
  swift_beginAccess();
  v206 = v17;

  v217 = sub_1012CE18C(v18, v16, sub_1012D4E00, sub_1012D6730, sub_100E72BE0);

  v19 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
  swift_beginAccess();
  v205 = v19;
  v20 = *(a1 + v19);
  v21 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
  swift_beginAccess();
  v204 = v21;
  v218 = v14;
  if (*(*(v235 + v21) + 16) <= v20[2] >> 3)
  {
    v238[0] = v20;

    sub_1012D5828(v23, &qword_1019F6990, &qword_10146D2F0, &type metadata accessor for UUID, sub_100ED6D70);

    v216 = v20;
  }

  else
  {

    v216 = sub_1012D5CC4(v22, v20);
  }

  v24 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds;
  swift_beginAccess();
  v203 = v24;
  v25 = *(a1 + v24);
  v26 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds;
  swift_beginAccess();
  v202 = v26;
  if (*(*(v235 + v26) + 16) <= v25[2] >> 3)
  {
    v238[0] = v25;

    sub_1012D5828(v28, &qword_1019F6990, &qword_10146D2F0, &type metadata accessor for UUID, sub_100ED6D70);

    v215 = v25;
  }

  else
  {

    v215 = sub_1012D5CC4(v27, v25);
  }

  v29 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications;
  swift_beginAccess();
  v221 = a1;
  v30 = *(a1 + v29);
  v31 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v35 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications;
  v231 = v30;

  v229 = v35;
  swift_beginAccess();
  v36 = 0;
  v222 = _swiftEmptyDictionarySingleton;
  v37 = (v32 + 63) >> 6;
  v225 = v31;
  v227 = v37;
LABEL_12:
  v38 = v36;
  if (!v34)
  {
    goto LABEL_14;
  }

  do
  {
    v36 = v38;
LABEL_17:
    v39 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v40 = v39 | (v36 << 6);
    v41 = *(*(v231 + 48) + 8 * v40);
    v233 = *(*(v231 + 56) + 16 * v40);
    v42 = *(v41 + 24);
    ObjectType = swift_getObjectType();
    v44 = *(v42 + 56);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v45 = v44(ObjectType, v42);
    v47 = v46;
    swift_unknownObjectRelease();
    v48 = *(v235 + v229);
    v223 = v47;
    if (!*(v48 + 16))
    {
      goto LABEL_23;
    }

    v49 = sub_1007C7FB8(v41);
    if ((v50 & 1) == 0)
    {

LABEL_23:

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v238[0] = v222;
      v57 = sub_1007C7FB8(v41);
      v59 = v222[2];
      v60 = (v58 & 1) == 0;
      v61 = __OFADD__(v59, v60);
      v62 = v59 + v60;
      if (v61)
      {
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v63 = v58;
      if (v222[3] >= v62)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v80 = v57;
          sub_100AA3A24();
          v57 = v80;
        }
      }

      else
      {
        sub_100A88504(v62, isUniquelyReferenced_nonNull_native);
        v57 = sub_1007C7FB8(v41);
        if ((v63 & 1) != (v64 & 1))
        {
          goto LABEL_108;
        }
      }

      v65 = v238[0];
      v222 = v238[0];
      if (v63)
      {
        *(*(v238[0] + 7) + 16 * v57) = v233;

        swift_unknownObjectRelease();
      }

      else
      {
        *(v238[0] + (v57 >> 6) + 8) |= 1 << v57;
        *(v65[6] + 8 * v57) = v41;
        *(v65[7] + 16 * v57) = v233;
        v66 = v65[2];
        v61 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v61)
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v65[2] = v67;
      }

      swift_beginAccess();

      swift_unknownObjectRetain();
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v69 = *(v235 + v229);
      *(v235 + v229) = 0x8000000000000000;
      v70 = sub_1007C7FB8(v41);
      v72 = v69[2];
      v73 = (v71 & 1) == 0;
      v61 = __OFADD__(v72, v73);
      v74 = v72 + v73;
      if (v61)
      {
        goto LABEL_101;
      }

      v75 = v71;
      if (v69[3] >= v74)
      {
        if ((v68 & 1) == 0)
        {
          v81 = v70;
          sub_100AA3A24();
          v70 = v81;
          if (v75)
          {
            goto LABEL_39;
          }

          goto LABEL_42;
        }
      }

      else
      {
        sub_100A88504(v74, v68);
        v70 = sub_1007C7FB8(v41);
        if ((v75 & 1) != (v76 & 1))
        {
          goto LABEL_108;
        }
      }

      if (v75)
      {
LABEL_39:
        v77 = (v69[7] + 16 * v70);
        *v77 = v45;
        v77[1] = v223;

        swift_unknownObjectRelease();
LABEL_44:
        *(v235 + v229) = v69;
        swift_endAccess();
        goto LABEL_45;
      }

LABEL_42:
      v69[(v70 >> 6) + 8] |= 1 << v70;
      *(v69[6] + 8 * v70) = v41;
      v82 = (v69[7] + 16 * v70);
      *v82 = v45;
      v82[1] = v223;
      v83 = v69[2];
      v61 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v61)
      {
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v69[2] = v84;
      goto LABEL_44;
    }

    v51 = (*(v48 + 56) + 16 * v49);
    v53 = *v51;
    v52 = v51[1];
    swift_unknownObjectRetain();

    v54 = swift_getObjectType();
    v239 = swift_getObjectType();
    v238[0] = v45;
    v55 = *(v52 + 136);
    swift_unknownObjectRetain();
    LOBYTE(v54) = v55(v238, v54, v52);
    sub_10000CAAC(v238, &unk_1019F4D00, &unk_10146E7F0);
    if ((v54 & 1) == 0)
    {

      swift_unknownObjectRetain();
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v238[0] = v222;
      sub_100A9AB44(v53, v52, v41, v78);

      v222 = v238[0];
      swift_beginAccess();

      swift_unknownObjectRetain();
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v237 = *(v235 + v229);
      *(v235 + v229) = 0x8000000000000000;
      sub_100A9AB44(v45, v223, v41, v79);

      *(v235 + v229) = v237;
      swift_endAccess();
      swift_unknownObjectRelease();
      v31 = v225;
      v37 = v227;
LABEL_45:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_12;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v38 = v36;
    v31 = v225;
    v37 = v227;
  }

  while (v34);
  while (1)
  {
LABEL_14:
    v36 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (v36 >= v37)
    {
      break;
    }

    v34 = *(v31 + 8 * v36);
    ++v38;
    if (v34)
    {
      goto LABEL_17;
    }
  }

  v85 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications;
  swift_beginAccess();
  v201 = v85;
  v86 = *(v221 + v85);
  v89 = *(v86 + 64);
  v88 = v86 + 64;
  v87 = v89;
  v90 = 1 << *(*(v221 + v85) + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v92 = v91 & v87;
  v93 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications;
  v230 = *(v221 + v85);

  v232 = v93;
  swift_beginAccess();
  v94 = 0;
  v220 = _swiftEmptyDictionarySingleton;
  v95 = (v90 + 63) >> 6;
  v226 = v88;
  v228 = v95;
LABEL_49:
  v96 = v94;
  if (!v92)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v94 = v96;
LABEL_54:
    v97 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
    v98 = v97 | (v94 << 6);
    v99 = *(*(v230 + 48) + 8 * v98);
    v234 = *(*(v230 + 56) + 16 * v98);
    v100 = *(v99 + 24);
    v101 = swift_getObjectType();
    v102 = *(v100 + 56);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v103 = v102(v101, v100);
    v105 = v104;
    swift_unknownObjectRelease();
    v106 = *(v235 + v232);
    v224 = v105;
    if (!*(v106 + 16))
    {
      goto LABEL_60;
    }

    v107 = sub_1007C7FB8(v99);
    if ((v108 & 1) == 0)
    {
      break;
    }

    v109 = (*(v106 + 56) + 16 * v107);
    v110 = *v109;
    v111 = v109[1];
    swift_unknownObjectRetain();

    v112 = swift_getObjectType();
    v239 = swift_getObjectType();
    v238[0] = v103;
    v113 = *(v111 + 136);
    swift_unknownObjectRetain();
    LOBYTE(v112) = v113(v238, v112, v111);
    sub_10000CAAC(v238, &unk_1019F4D00, &unk_10146E7F0);
    if ((v112 & 1) == 0)
    {

      swift_unknownObjectRetain();
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v238[0] = v220;
      sub_100A9AB44(v110, v111, v99, v135);

      v220 = v238[0];
      swift_beginAccess();

      swift_unknownObjectRetain();
      v136 = swift_isUniquelyReferenced_nonNull_native();
      v236 = *(v235 + v232);
      *(v235 + v232) = 0x8000000000000000;
      sub_100A9AB44(v103, v224, v99, v136);

      *(v235 + v232) = v236;
      swift_endAccess();
      swift_unknownObjectRelease();
      v88 = v226;
      v95 = v228;
LABEL_82:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_49;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v96 = v94;
    v88 = v226;
    v95 = v228;
    if (!v92)
    {
      while (1)
      {
LABEL_51:
        v94 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          goto LABEL_99;
        }

        if (v94 >= v95)
        {
          break;
        }

        v92 = *(v88 + 8 * v94);
        ++v96;
        if (v92)
        {
          goto LABEL_54;
        }
      }

      *(v235 + v211) = *(v221 + v212);

      *(v235 + v209) = *(v221 + v210);

      *(v235 + v219) = *(v221 + v208);

      *(v235 + v206) = *(v221 + v207);

      *(v235 + v204) = *(v221 + v205);

      *(v235 + v202) = *(v221 + v203);

      v142 = *(v221 + v201);
      swift_beginAccess();
      *(v235 + v232) = v142;

      if (!v222[2])
      {
        if ((v214 & 0xC000000000000001) != 0)
        {
          if (__CocoaSet.count.getter())
          {
            goto LABEL_94;
          }

LABEL_88:
          if ((v213 & 0xC000000000000001) != 0)
          {
            if (__CocoaSet.count.getter())
            {
              goto LABEL_94;
            }

LABEL_92:
            v143 = *(v235 + v219);
            if ((v143 & 0xC000000000000001) != 0)
            {

              v144 = __CocoaSet.count.getter();

              if (v144)
              {
                goto LABEL_94;
              }

LABEL_97:

              return 0;
            }

            if (!*(v143 + 16))
            {
              goto LABEL_97;
            }
          }

          else if (!*(v213 + 16))
          {
            goto LABEL_92;
          }
        }

        else if (!*(v214 + 16))
        {
          goto LABEL_88;
        }
      }

LABEL_94:
      swift_allocObject();

      v146 = sub_1012E27CC(v145);

      v147 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_modifications;
      swift_beginAccess();
      *(v146 + v147) = v222;

      v148 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
      swift_beginAccess();
      *(v146 + v148) = v214;

      v149 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
      swift_beginAccess();
      *(v146 + v149) = v213;

      v150 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedNewlyCreatedObjects;
      swift_beginAccess();
      *(v146 + v150) = v218;

      v151 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjectOriginalInstances;
      swift_beginAccess();
      *(v146 + v151) = v217;

      v152 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableModifications;
      swift_beginAccess();
      *(v146 + v152) = v220;

      v153 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedDeletedObjectIds;
      swift_beginAccess();
      *(v146 + v153) = v216;

      v154 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markedCreatedObjectIds;
      swift_beginAccess();
      *(v146 + v154) = v215;

      return v146;
    }
  }

LABEL_60:

  swift_unknownObjectRetain();
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v238[0] = v220;
  v115 = sub_1007C7FB8(v99);
  v117 = v220[2];
  v118 = (v116 & 1) == 0;
  v61 = __OFADD__(v117, v118);
  v119 = v117 + v118;
  if (v61)
  {
    goto LABEL_102;
  }

  v120 = v116;
  if (v220[3] >= v119)
  {
    if ((v114 & 1) == 0)
    {
      v137 = v115;
      sub_100AA3A24();
      v115 = v137;
    }
  }

  else
  {
    sub_100A88504(v119, v114);
    v115 = sub_1007C7FB8(v99);
    if ((v120 & 1) != (v121 & 1))
    {
      goto LABEL_108;
    }
  }

  v122 = v238[0];
  v220 = v238[0];
  if (v120)
  {
    *(*(v238[0] + 7) + 16 * v115) = v234;

    swift_unknownObjectRelease();
    goto LABEL_70;
  }

  *(v238[0] + (v115 >> 6) + 8) |= 1 << v115;
  *(v122[6] + 8 * v115) = v99;
  *(v122[7] + 16 * v115) = v234;
  v123 = v122[2];
  v61 = __OFADD__(v123, 1);
  v124 = v123 + 1;
  if (v61)
  {
    goto LABEL_106;
  }

  v122[2] = v124;
LABEL_70:
  swift_beginAccess();

  swift_unknownObjectRetain();
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *(v235 + v232);
  *(v235 + v232) = 0x8000000000000000;
  v127 = sub_1007C7FB8(v99);
  v129 = v126[2];
  v130 = (v128 & 1) == 0;
  v61 = __OFADD__(v129, v130);
  v131 = v129 + v130;
  if (v61)
  {
    goto LABEL_103;
  }

  v132 = v128;
  if (v126[3] >= v131)
  {
    if ((v125 & 1) == 0)
    {
      v138 = v127;
      sub_100AA3A24();
      v127 = v138;
      if (v132)
      {
LABEL_76:
        v134 = (v126[7] + 16 * v127);
        *v134 = v103;
        v134[1] = v224;

        swift_unknownObjectRelease();
LABEL_81:
        *(v235 + v232) = v126;
        swift_endAccess();
        goto LABEL_82;
      }

      goto LABEL_79;
    }

LABEL_75:
    if (v132)
    {
      goto LABEL_76;
    }

LABEL_79:
    v126[(v127 >> 6) + 8] |= 1 << v127;
    *(v126[6] + 8 * v127) = v99;
    v139 = (v126[7] + 16 * v127);
    *v139 = v103;
    v139[1] = v224;
    v140 = v126[2];
    v61 = __OFADD__(v140, 1);
    v141 = v140 + 1;
    if (!v61)
    {
      v126[2] = v141;
      goto LABEL_81;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_100A88504(v131, v125);
  v127 = sub_1007C7FB8(v99);
  if ((v132 & 1) == (v133 & 1))
  {
    goto LABEL_75;
  }

LABEL_108:
  type metadata accessor for CRLTransactableHashableWrapper();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_109:
  v156 = objc_opt_self();
  v157 = [v156 _atomicIncrementAssertCount];
  v238[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v238, "Cannot call stepTo on a different context than the one it was created with.", 75, 2u);
  StaticString.description.getter("stepTo(_:)", 10, 2);
  v158 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
  v159 = String._bridgeToObjectiveC()();

  v160 = [v159 lastPathComponent];

  v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v163 = v162;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v164 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v165 = swift_initStackObject();
  *(v165 + 16) = xmmword_10146CA70;
  *(v165 + 56) = &type metadata for Int32;
  *(v165 + 64) = &protocol witness table for Int32;
  *(v165 + 32) = v157;
  v166 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v165 + 96) = v166;
  v167 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v165 + 104) = v167;
  *(v165 + 72) = v158;
  *(v165 + 136) = &type metadata for String;
  v168 = sub_1000053B0();
  *(v165 + 112) = v161;
  *(v165 + 120) = v163;
  *(v165 + 176) = &type metadata for UInt;
  *(v165 + 184) = &protocol witness table for UInt;
  *(v165 + 144) = v168;
  *(v165 + 152) = 572;
  v169 = v238[0];
  *(v165 + 216) = v166;
  *(v165 + 224) = v167;
  *(v165 + 192) = v169;
  v170 = v158;
  v171 = v169;
  v172 = static os_log_type_t.error.getter();
  sub_100005404(v164, &_mh_execute_header, v172, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v165);

  v173 = static os_log_type_t.error.getter();
  sub_100005404(v164, &_mh_execute_header, v173, "Cannot call stepTo on a different context than the one it was created with.", 75, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Cannot call stepTo on a different context than the one it was created with.");
  type metadata accessor for __VaListBuilder();
  v174 = swift_allocObject();
  v174[2] = 8;
  v174[3] = 0;
  v174[4] = 0;
  v174[5] = 0;
  v175 = __VaListBuilder.va_list()();
  StaticString.description.getter("stepTo(_:)", 10, 2);
  v176 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
  v177 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Cannot call stepTo on a different context than the one it was created with.", 75, 2);
  v178 = String._bridgeToObjectiveC()();

  [v156 handleFailureInFunction:v176 file:v177 lineNumber:572 isFatal:1 format:v178 args:v175];
LABEL_115:

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v199, v200);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1012D4B68()
{
  sub_1012D2EE8();

  return swift_deallocClassInstance();
}

uint64_t sub_1012D4C54()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1012D4C88(uint64_t a1, uint64_t a2)
{
  result = sub_10004AA7C(&qword_101A331D8, a2, type metadata accessor for CRLInertOwner, byte_1014DC17C);
  *(a1 + 8) = result;
  return result;
}

unint64_t *sub_1012D4D28(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1012E1890(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1012D4E00(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_10004AA7C(&qword_101A22700, v3, type metadata accessor for CRLTransactableHashableWrapper, "It5");
    Set.Iterator.init(_cocoa:)();
    a1 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_22:
      sub_100035F90(a1);
      return;
    }

    while (1)
    {
      sub_100ED6A00(v15);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for CRLTransactableHashableWrapper();
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1012D5030(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100ED7018(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_1012D515C(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_10000CA44(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for CRLBoardIdentifier);
      sub_100ED780C(v9, v5);
      sub_10004AB24(v9, type metadata accessor for CRLBoardIdentifier);
      sub_10000CAAC(v5, &unk_1019F52D0, &unk_10147C1C0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1012D5364(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CalculateExpression();
    sub_10004AA7C(&qword_1019F37A0, 255, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    Set.Iterator.init(_cocoa:)();
    a1 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v13 = (v11 - 1) & v11;
    v14 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_22:
      sub_100035F90(a1);
      return;
    }

    while (1)
    {
      sub_100ED7D30(v14);

      v5 = v12;
      v6 = v13;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for CalculateExpression();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1012D55A0(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
    sub_10000FDE0(&qword_1019F69E8, &qword_1019F4D70, NSLayoutConstraint_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_100035F90(a1);
      return;
    }

    while (1)
    {
      v16 = sub_100ED82B4(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1012D5828(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void, __n128), void (*a5)(char *))
{
  v25 = a3;
  v26 = a5;
  v24 = a2;
  v8 = sub_1005B981C(a2, a3);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  v12 = a4(0, v9);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v23 - v14;
  if (*(*v5 + 16))
  {
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    v23[1] = v13 + 8;
    v23[2] = v13 + 16;

    v20 = 0;
    while (v18)
    {
      v21 = v20;
LABEL_10:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v13 + 16))(v15, *(a1 + 48) + *(v13 + 72) * (v22 | (v21 << 6)), v12);
      v26(v15);
      (*(v13 + 8))(v15, v12);
      sub_10000CAAC(v11, v24, v25);
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v18 = *(a1 + 56 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1012D5A80(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(id))
{
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v5 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    a2(0);
    sub_10004AA7C(a3, 255, a4, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v26;
    v9 = v27;
    v10 = v28;
    v11 = v29;
    v12 = v30;
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a1 + 56);

    v11 = 0;
  }

  v16 = (v10 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (!v12)
    {
      break;
    }

LABEL_16:
    v20 = (v18 - 1) & v18;
    v21 = *(*(a1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
LABEL_22:
      sub_100035F90(a1);
      return;
    }

    while (1)
    {
      v22 = a5(v21);

      v11 = v19;
      v12 = v20;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        a2(0);
        swift_dynamicCast();
        v21 = v25;
        v19 = v11;
        v20 = v12;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_22;
    }

    v18 = *(v9 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *sub_1012D5CC4(uint64_t a1, void *a2)
{
  v5 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v66 - v9);
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v66 - v14);
  __chkstk_darwin(v16);
  v81 = (&v66 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = a2 + 7;
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_10000CAAC(v30, &qword_1019F6990, &qword_10146D2F0);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, a2[6] + v85 * v24, v11);
    v35 = sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    __chkstk_darwin(v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_10000CAAC(v24, &qword_1019F6990, &qword_10146D2F0);
        a2 = sub_1010F4288(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, v52[6] + v54 * v85, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, v52[6] + v54 * v85, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_1012DB604(v64, v66, v81, v24, &v90);
  a2 = v65;

LABEL_52:
  v59 = v90;
LABEL_53:
  sub_100035F90(v59);
  return a2;
}

void *sub_1012D6730(uint64_t a1, void *a2)
{
  v110 = type metadata accessor for UUID();
  v4 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v109 = &v90 - v7;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v90 = 0;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_10004AA7C(&qword_101A22700, v8, type metadata accessor for CRLTransactableHashableWrapper, "It5");
    Set.Iterator.init(_cocoa:)();
    a1 = v118;
    v10 = v119;
    v11 = v120;
    v12 = v121;
    v13 = v122;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v15 = ~v14;
    v16 = -v14;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & *(a1 + 56);

    v11 = v15;
    v12 = 0;
  }

  v113 = a1;
  v114 = v10;
  v115 = v11;
  v116 = v12;
  v94 = v11;
  v18 = (v11 + 64) >> 6;
  v108 = (v4 + 8);
  v106 = a2 + 7;
  v117 = v13;
  v97 = v18;
  v99 = a1;
  v98 = v10;
  while (1)
  {
    if (a1 < 0)
    {
      v26 = __CocoaSet.Iterator.next()();
      if (!v26)
      {
        goto LABEL_65;
      }

      v111 = v26;
      type metadata accessor for CRLTransactableHashableWrapper();
      swift_dynamicCast();
      v25 = v112;
      v22 = v12;
      v24 = v13;
      if (!v112)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v19 = v13;
      v20 = v12;
      if (v13)
      {
LABEL_20:
        v24 = (v19 - 1) & v19;
        v25 = *(*(a1 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

        v22 = v20;
      }

      else
      {
        if (v18 <= (v12 + 1))
        {
          v21 = v12 + 1;
        }

        else
        {
          v21 = v18;
        }

        v22 = v21 - 1;
        v23 = v12;
        while (1)
        {
          v20 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_67;
          }

          if (v20 >= v18)
          {
            break;
          }

          v19 = *(v10 + 8 * v20);
          ++v23;
          if (v19)
          {
            goto LABEL_20;
          }
        }

        v25 = 0;
        v24 = 0;
      }

      v113 = a1;
      v114 = v10;
      v115 = v94;
      v116 = v22;
      v117 = v24;
      if (!v25)
      {
LABEL_65:
        v83 = a1;
        goto LABEL_63;
      }
    }

    v100 = v22;
    v101 = v24;
    Hasher.init(_seed:)();
    v27 = *(v25 + 24);
    ObjectType = swift_getObjectType();
    v29 = v109;
    (*(v27 + 32))(ObjectType, v27);
    v30 = sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v31 = v110;
    v96 = v30;
    dispatch thunk of Hashable.hash(into:)();
    v107 = *v108;
    v107(v29, v31);
    v32 = Hasher._finalize()();
    v33 = -1 << *(a2 + 32);
    v12 = v32 & ~v33;
    v34 = v12 >> 6;
    v35 = 1 << v12;
    if (((1 << v12) & v106[v12 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v12 = v100;
    v13 = v101;
    a1 = v99;
    v10 = v98;
    v18 = v97;
  }

  v102 = ~v33;
  while (1)
  {
    v103 = v35;
    v104 = v34;
    v36 = *(*(a2[6] + 8 * v12) + 24);
    v37 = swift_getObjectType();
    v38 = *(v36 + 32);

    v39 = v109;
    v38(v37, v36);
    v40 = *(v25 + 24);
    v41 = swift_getObjectType();
    v42 = v105;
    (*(v40 + 32))(v41, v40);
    LOBYTE(v40) = static UUID.== infix(_:_:)();

    v43 = v110;
    v44 = v107;
    v107(v42, v110);
    v44(v39, v43);
    if (v40)
    {
      break;
    }

    v12 = (v12 + 1) & v102;
    v34 = v12 >> 6;
    v35 = 1 << v12;
    if (((1 << v12) & v106[v12 >> 6]) == 0)
    {
      goto LABEL_10;
    }
  }

  v46 = *(a2 + 32);
  a1 = ((1 << v46) + 63) >> 6;
  v9 = 8 * a1;
  if ((v46 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v91 = a1;
    v92 = &v90;
    __chkstk_darwin(v45);
    v48 = &v90 - ((v47 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v48, v106, v47);
    v49 = *&v48[8 * v104] & ~v103;
    v50 = a2[2];
    v93 = v48;
    *&v48[8 * v104] = v49;
    v51 = v50 - 1;
    v52 = v99;
    v12 = v98;
    v53 = v97;
    a1 = v101;
    v54 = v100;
    v55 = v109;
LABEL_33:
    v95 = v51;
    while (v52 < 0)
    {
      v57 = __CocoaSet.Iterator.next()();
      if (!v57)
      {
        goto LABEL_61;
      }

      v111 = v57;
      type metadata accessor for CRLTransactableHashableWrapper();
      swift_dynamicCast();
      v58 = v112;
      if (!v112)
      {
        goto LABEL_61;
      }

LABEL_50:
      v100 = v54;
      v101 = a1;
      Hasher.init(_seed:)();
      v62 = *(v58 + 24);
      v63 = swift_getObjectType();
      v64 = v109;
      (*(v62 + 32))(v63, v62);
      v65 = v110;
      dispatch thunk of Hashable.hash(into:)();
      v107(v64, v65);
      v66 = Hasher._finalize()();
      v67 = -1 << *(a2 + 32);
      v68 = v66 & ~v67;
      v69 = v68 >> 6;
      v70 = 1 << v68;
      if (((1 << v68) & v106[v68 >> 6]) != 0)
      {
        v102 = ~v67;
        while (1)
        {
          v103 = v70;
          v104 = v69;
          v71 = a2;
          v72 = *(*(a2[6] + 8 * v68) + 24);
          v73 = swift_getObjectType();
          v74 = *(v72 + 32);

          v74(v73, v72);
          v75 = *(v58 + 24);
          v76 = swift_getObjectType();
          v77 = v105;
          (*(v75 + 32))(v76, v75);
          v78 = static UUID.== infix(_:_:)();

          v79 = v110;
          v80 = v107;
          v107(v77, v110);
          v80(v55, v79);
          if (v78)
          {
            break;
          }

          v68 = (v68 + 1) & v102;
          v69 = v68 >> 6;
          v70 = 1 << v68;
          a2 = v71;
          if (((1 << v68) & v106[v68 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v81 = v93[v104];
        v82 = v103;
        v93[v104] = v81 & ~v103;
        a2 = v71;
        v52 = v99;
        v12 = v98;
        v53 = v97;
        a1 = v101;
        v54 = v100;
        v51 = v95;
        if ((v81 & v82) != 0)
        {
          v51 = v95 - 1;
          if (__OFSUB__(v95, 1))
          {
            __break(1u);
          }

          if (v95 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v52 = v99;
        v12 = v98;
        v53 = v97;
        a1 = v101;
        v54 = v100;
        v51 = v95;
      }
    }

    if (a1)
    {
      v56 = v54;
LABEL_48:
      v61 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v58 = *(*(v52 + 48) + ((v56 << 9) | (8 * v61)));

      v60 = v56;
LABEL_49:
      v113 = v52;
      v114 = v12;
      v115 = v94;
      v116 = v60;
      v54 = v60;
      v117 = a1;
      if (!v58)
      {
LABEL_61:
        a2 = sub_1010F3F24(v93, v91, v51, a2);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v53 <= (v54 + 1))
    {
      v59 = v54 + 1;
    }

    else
    {
      v59 = v53;
    }

    v60 = v59 - 1;
    while (1)
    {
      v56 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v56 >= v53)
      {
        v58 = 0;
        a1 = 0;
        goto LABEL_49;
      }

      a1 = *(v12 + 8 * v56);
      ++v54;
      if (a1)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v85 = v9;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v86 = swift_slowAlloc();
  memcpy(v86, v106, v85);
  v87 = v12;
  v88 = v90;
  sub_1012DB190(v86, a1, a2, v87, &v113);
  a2 = v89;

  if (v88)
  {

    __break(1u);
  }

  else
  {

LABEL_62:
    v83 = v113;
LABEL_63:
    sub_100035F90(v83);
    return a2;
  }

  return result;
}

void *sub_1012D7244(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1010F45B0(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = _swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1012DC29C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_100035F90(v13);
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1012D77B4(uint64_t a1, void *a2)
{
  v5 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v85 - v9;
  v103 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v103);
  __chkstk_darwin(v11);
  v108 = &v85 - v12;
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v104 = (&v85 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v102 = v17;
  v106 = v15;
  v86 = 0;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v101 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v95 = (63 - v21) >> 6;
  v100 = (v16 + 56);
  v88 = v16;
  v99 = (v16 + 48);
  v107 = a2 + 7;

  v25 = 0;
  v98 = a1 + 56;
  for (i = v10; ; v10 = i)
  {
    v26 = v23;
    v27 = v25;
    if (v23)
    {
LABEL_15:
      v2 = (v26 - 1) & v26;
      sub_10000CA44(*(a1 + 48) + *(v88 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v10, type metadata accessor for CRLBoardIdentifier);
      v31 = 0;
      v29 = v27;
    }

    else
    {
      v28 = v95 <= v25 + 1 ? v25 + 1 : v95;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_70;
        }

        if (v27 >= v95)
        {
          break;
        }

        v26 = *(v20 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_15;
        }
      }

      v2 = 0;
      v31 = 1;
    }

    v32 = v103;
    v97 = *v100;
    v97(v10, v31, 1, v103);
    v110 = a1;
    v111 = v20;
    v112 = v101;
    v113 = v29;
    v114 = v2;
    v96 = *v99;
    if (v96(v10, 1, v32) == 1)
    {
      sub_10000CAAC(v10, &unk_1019F52D0, &unk_10147C1C0);
      v77 = a1;
      goto LABEL_66;
    }

    v33 = v104;
    sub_100025808(v10, v104, type metadata accessor for CRLBoardIdentifier);
    Hasher.init(_seed:)();
    v34 = type metadata accessor for UUID();
    v35 = sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v94 = v34;
    v93 = v35;
    dispatch thunk of Hashable.hash(into:)();
    v105 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v36 = (v33 + *(v105 + 20));
    v37 = v36[1];
    v90 = *v36;
    v89 = v37;
    String.hash(into:)();
    v38 = Hasher._finalize()();
    v39 = -1 << *(a2 + 32);
    v23 = v38 & ~v39;
    v20 = v23 >> 6;
    v10 = 1 << v23;
    if (((1 << v23) & v107[v23 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_10004AB24(v104, type metadata accessor for CRLBoardIdentifier);
    v25 = v29;
    v23 = v2;
    v20 = v98;
  }

  v40 = ~v39;
  v109 = *(v88 + 72);
  while (1)
  {
    v41 = v102;
    sub_10000CA44(a2[6] + v109 * v23, v102, type metadata accessor for CRLBoardIdentifier);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      sub_10004AB24(v41, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_20;
    }

    v42 = (v41 + *(v105 + 20));
    v43 = *v42 == v90 && v42[1] == v89;
    if (v43)
    {
      break;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v45 = v41;
    v46 = v44;
    sub_10004AB24(v45, type metadata accessor for CRLBoardIdentifier);
    if (v46)
    {
      goto LABEL_31;
    }

LABEL_20:
    v23 = (v23 + 1) & v40;
    v20 = v23 >> 6;
    v10 = 1 << v23;
    if ((v107[v23 >> 6] & (1 << v23)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_10004AB24(v41, type metadata accessor for CRLBoardIdentifier);
LABEL_31:
  v47 = sub_10004AB24(v104, type metadata accessor for CRLBoardIdentifier);
  v48 = *(a2 + 32);
  v89 = ((1 << v48) + 63) >> 6;
  v24 = 8 * v89;
  if ((v48 & 0x3Fu) > 0xD)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v90 = &v85;
    __chkstk_darwin(v47);
    v50 = &v85 - ((v49 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v50, v107, v49);
    v51 = *&v50[8 * v20] & ~v10;
    v52 = a2[2];
    v104 = v50;
    *&v50[8 * v20] = v51;
    v53 = v52 - 1;
    v23 = v98;
    v54 = v95;
    v92 = a1;
    v91 = v7;
LABEL_33:
    v102 = v53;
LABEL_35:
    while (2)
    {
      if (v2)
      {
        v55 = v29;
LABEL_45:
        v58 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
        sub_10000CA44(*(a1 + 48) + (v58 | (v55 << 6)) * v109, v7, type metadata accessor for CRLBoardIdentifier);
        v59 = 0;
LABEL_46:
        v60 = v103;
        v97(v7, v59, 1, v103);
        v110 = a1;
        v111 = v23;
        v112 = v101;
        v113 = v29;
        v114 = v2;
        if (v96(v7, 1, v60) == 1)
        {
          sub_10000CAAC(v7, &unk_1019F52D0, &unk_10147C1C0);
          a2 = sub_1010F47E8(v104, v89, v102, a2);
          goto LABEL_65;
        }

        v61 = v108;
        sub_100025808(v7, v108, type metadata accessor for CRLBoardIdentifier);
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v62 = (v61 + *(v105 + 20));
        v20 = *v62;
        v10 = v62[1];
        String.hash(into:)();
        v63 = Hasher._finalize()();
        v64 = a2;
        v65 = -1 << *(a2 + 32);
        v66 = v63 & ~v65;
        v67 = v66 >> 6;
        v68 = 1 << v66;
        if (((1 << v66) & v107[v66 >> 6]) == 0)
        {
LABEL_34:
          sub_10004AB24(v108, type metadata accessor for CRLBoardIdentifier);
          a2 = v64;
          a1 = v92;
          v7 = v91;
          v23 = v98;
          v54 = v95;
          continue;
        }

        v69 = ~v65;
        v70 = v106;
        while (1)
        {
          sub_10000CA44(v64[6] + v66 * v109, v70, type metadata accessor for CRLBoardIdentifier);
          if (static UUID.== infix(_:_:)())
          {
            v71 = (v70 + *(v105 + 20));
            if (*v71 == v20 && v71[1] == v10)
            {
              sub_10004AB24(v70, type metadata accessor for CRLBoardIdentifier);
LABEL_60:
              sub_10004AB24(v108, type metadata accessor for CRLBoardIdentifier);
              v76 = v104[v67];
              v104[v67] = v76 & ~v68;
              v43 = (v76 & v68) == 0;
              a2 = v64;
              a1 = v92;
              v7 = v91;
              v23 = v98;
              v54 = v95;
              if (!v43)
              {
                v53 = v102 - 1;
                if (__OFSUB__(v102, 1))
                {
                  __break(1u);
                }

                if (v102 == 1)
                {

                  a2 = _swiftEmptySetSingleton;
                  goto LABEL_65;
                }

                goto LABEL_33;
              }

              goto LABEL_35;
            }

            v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v74 = v70;
            v75 = v73;
            sub_10004AB24(v74, type metadata accessor for CRLBoardIdentifier);
            if (v75)
            {
              goto LABEL_60;
            }
          }

          else
          {
            sub_10004AB24(v70, type metadata accessor for CRLBoardIdentifier);
          }

          v66 = (v66 + 1) & v69;
          v67 = v66 >> 6;
          v70 = v106;
          v68 = 1 << v66;
          if ((v107[v66 >> 6] & (1 << v66)) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      break;
    }

    v56 = v54 <= v29 + 1 ? v29 + 1 : v54;
    v57 = v56 - 1;
    while (1)
    {
      v55 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v55 >= v54)
      {
        v2 = 0;
        v59 = 1;
        v29 = v57;
        goto LABEL_46;
      }

      v2 = *(v23 + 8 * v55);
      ++v29;
      if (v2)
      {
        v29 = v55;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v79 = v24;

    v80 = v79;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v81 = swift_slowAlloc();
  memcpy(v81, v107, v80);
  v82 = v86;
  sub_1012DBD7C(v81, v89, a2, v23, &v110);
  v84 = v83;

  if (v82)
  {

    __break(1u);
  }

  else
  {

    a2 = v84;
LABEL_65:
    v77 = v110;
LABEL_66:
    sub_100035F90(v77);
    return a2;
  }

  return result;
}

void *sub_1012D8334(uint64_t a1, void *a2)
{
  v5 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v66 - v9);
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v66 - v14);
  __chkstk_darwin(v16);
  v81 = (&v66 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 64;
  v19 = *(a1 + 64);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = a2 + 7;
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 64; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_10000CAAC(v30, &qword_1019F6990, &qword_10146D2F0);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, a2[6] + v85 * v24, v11);
    v35 = sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    __chkstk_darwin(v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_10000CAAC(v24, &qword_1019F6990, &qword_10146D2F0);
        a2 = sub_1010F4288(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, v52[6] + v54 * v85, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, v52[6] + v54 * v85, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_1012DB604(v64, v66, v81, v24, &v90);
  a2 = v65;

LABEL_52:
  v59 = v90;
LABEL_53:
  sub_100035F90(v59);
  return a2;
}

void *sub_1012D8DA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
    sub_10000FDE0(&qword_1019F69E8, &qword_1019F4D70, NSLayoutConstraint_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v4 = v79;
    v6 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v74 = v4;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v65 = v7;
  v13 = (v7 + 64) >> 6;
  v71 = v3 + 7;
  v78 = v9;
  v68 = v6;
  v69 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_65;
      }

      v72 = v21;
      sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
      swift_dynamicCast();
      v19 = v73;
      v17 = v8;
      v2 = v9;
      if (!v73)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        if (v13 <= (v8 + 1))
        {
          v16 = v8 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_67;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v74 = v4;
      v75 = v6;
      v76 = v65;
      v77 = v17;
      v78 = v2;
      if (!v19)
      {
LABEL_65:
        v54 = v4;
        goto LABEL_63;
      }
    }

    v22 = v19;
    v23 = NSObject._rawHashValue(seed:)(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v68;
    v4 = v69;
  }

  v25 = ~v24;
  v26 = sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
  v27 = *(v3[6] + 8 * v8);
  v70 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v62 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v62;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v63 = &v61;
    __chkstk_darwin(v29);
    v32 = &v61 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v71, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v64 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v68;
    v35 = v69;
    v37 = i;
LABEL_33:
    v66 = v4;
    while (v35 < 0)
    {
      v38 = __CocoaSet.Iterator.next()();
      if (!v38)
      {
        goto LABEL_61;
      }

      v72 = v38;
      swift_dynamicCast();
      v39 = v73;
      if (!v73)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = NSObject._rawHashValue(seed:)(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v71[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = static NSObject.== infix(_:_:)();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v71[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v64[v48];
        v64[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
        if (!v53)
        {
          v4 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            v3 = _swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v74 = v35;
      v75 = v36;
      v76 = v65;
      v77 = v41;
      v17 = v41;
      v78 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_1010F4F6C(v64, v62, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= (v17 + 1))
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v56 = v5;

    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v71, v57);
  sub_1012DBAE0(v58, v62, v3, v8, &v74);
  v60 = v59;

  v3 = v60;
LABEL_62:
  v54 = v74;
LABEL_63:
  sub_100035F90(v54);
  return v3;
}

void *sub_1012D944C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1010F45B0(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = _swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1012DC29C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_100035F90(v13);
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1012D99BC(uint64_t a1, void *a2)
{
  v5 = sub_1005B981C(&unk_101A23C40, &unk_10146F200);
  __chkstk_darwin(v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v66 - v9);
  v11 = type metadata accessor for IndexPath();
  __chkstk_darwin(v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v66 - v14);
  __chkstk_darwin(v16);
  v81 = (&v66 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = a2 + 7;
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_10000CAAC(v30, &unk_101A23C40, &unk_10146F200);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_10004AA7C(&unk_101A23C60, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, a2[6] + v85 * v24, v11);
    v35 = sub_10004AA7C(&unk_101A226D0, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    __chkstk_darwin(v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_10000CAAC(v24, &unk_101A23C40, &unk_10146F200);
        a2 = sub_1010F53A4(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, v52[6] + v54 * v85, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, v52[6] + v54 * v85, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_1012DC4D4(v64, v66, v81, v24, &v90);
  a2 = v65;

LABEL_52:
  v59 = v90;
LABEL_53:
  sub_100035F90(v59);
  return a2;
}

void *sub_1012DA428(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLSceneInfo(0);
    sub_10004AA7C(&qword_101A28670, 255, type metadata accessor for CRLSceneInfo, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v5 = v78;
    v7 = v79;
    v8 = v80;
    v9 = v81;
    v10 = v82;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v73 = v5;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v64 = v8;
  v14 = (v8 + 64) >> 6;
  v70 = v4 + 7;
  v77 = v10;
  v67 = v5;
  v68 = v14;
  v66 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_65;
      }

      v71 = v22;
      type metadata accessor for CRLSceneInfo(0);
      swift_dynamicCast();
      v20 = v72;
      v18 = v9;
      v2 = v10;
      if (!v72)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        if (v14 <= v9 + 1)
        {
          v17 = v9 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_67;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v73 = v5;
      v74 = v7;
      v75 = v64;
      v76 = v18;
      v77 = v2;
      if (!v20)
      {
LABEL_65:
        v53 = v5;
        goto LABEL_63;
      }
    }

    v23 = v20;
    v24 = NSObject._rawHashValue(seed:)(v4[5]);
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v66;
    v5 = v67;
    v14 = v68;
  }

  v3 = ~v25;
  v26 = type metadata accessor for CRLSceneInfo(0);
  v27 = *(v4[6] + 8 * v7);
  v69 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v4[6] + 8 * v7);
  }

  v30 = *(v4 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v61;
  v3 = v68;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin(v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = v4[2];
    v63 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v66;
    v35 = v67;
LABEL_33:
    v65 = v5;
    while (v35 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37)
      {
        goto LABEL_61;
      }

      v71 = v37;
      swift_dynamicCast();
      v38 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = NSObject._rawHashValue(seed:)(v4[5]);
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v70[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(v44[6] + 8 * v7);
          v50 = static NSObject.== infix(_:_:)();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v70[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v68;

        v51 = v63[v46];
        v63[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v66;
        v35 = v67;
        v5 = v65;
        if (!v52)
        {
          v5 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v4 = _swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v66;
        v35 = v67;
        v3 = v68;
        v5 = v65;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v40;
      v18 = v40;
      v77 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_1010F56CC(v63, v61, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v55 = v6;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_1012DC9B0(v57, v61, v4, v7, &v73, type metadata accessor for CRLSceneInfo, sub_1010F56CC);
  v59 = v58;

  v4 = v59;
LABEL_62:
  v53 = v73;
LABEL_63:
  sub_100035F90(v53);
  return v4;
}

void *sub_1012DAADC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLCollaborationParticipant(0);
    sub_10004AA7C(&qword_101A00E38, 255, type metadata accessor for CRLCollaborationParticipant, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v5 = v78;
    v7 = v79;
    v8 = v80;
    v9 = v81;
    v10 = v82;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v73 = v5;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v64 = v8;
  v14 = (v8 + 64) >> 6;
  v70 = v4 + 7;
  v77 = v10;
  v67 = v5;
  v68 = v14;
  v66 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_65;
      }

      v71 = v22;
      type metadata accessor for CRLCollaborationParticipant(0);
      swift_dynamicCast();
      v20 = v72;
      v18 = v9;
      v2 = v10;
      if (!v72)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        if (v14 <= v9 + 1)
        {
          v17 = v9 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_67;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v73 = v5;
      v74 = v7;
      v75 = v64;
      v76 = v18;
      v77 = v2;
      if (!v20)
      {
LABEL_65:
        v53 = v5;
        goto LABEL_63;
      }
    }

    v23 = v20;
    v24 = NSObject._rawHashValue(seed:)(v4[5]);
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v66;
    v5 = v67;
    v14 = v68;
  }

  v3 = ~v25;
  v26 = type metadata accessor for CRLCollaborationParticipant(0);
  v27 = *(v4[6] + 8 * v7);
  v69 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v4[6] + 8 * v7);
  }

  v30 = *(v4 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v61;
  v3 = v68;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin(v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = v4[2];
    v63 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v66;
    v35 = v67;
LABEL_33:
    v65 = v5;
    while (v35 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37)
      {
        goto LABEL_61;
      }

      v71 = v37;
      swift_dynamicCast();
      v38 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = NSObject._rawHashValue(seed:)(v4[5]);
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v70[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(v44[6] + 8 * v7);
          v50 = static NSObject.== infix(_:_:)();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v70[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v68;

        v51 = v63[v46];
        v63[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v66;
        v35 = v67;
        v5 = v65;
        if (!v52)
        {
          v5 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v4 = _swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v66;
        v35 = v67;
        v3 = v68;
        v5 = v65;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v40;
      v18 = v40;
      v77 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_1010F5904(v63, v61, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v55 = v6;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_1012DC9B0(v57, v61, v4, v7, &v73, type metadata accessor for CRLCollaborationParticipant, sub_1010F5904);
  v59 = v58;

  v4 = v59;
LABEL_62:
  v53 = v73;
LABEL_63:
  sub_100035F90(v53);
  return v4;
}

void sub_1012DB190(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v49[0] = a2;
  v60 = type metadata accessor for UUID();
  __chkstk_darwin(v60);
  v53 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = v49 - v11;
  v12 = *(a3 + 16);
  v13 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v14 = *(a1 + v13) & ((-1 << a4) - 1);
  v51 = a1;
  v52 = a5;
  *(a1 + v13) = v14;
  v15 = v12 - 1;
  v58 = (v16 + 8);
  v61 = a3;
  v56 = a3 + 56;
  while (2)
  {
    v50 = v15;
    do
    {
      while (1)
      {
        if ((*a5 & 0x8000000000000000) != 0)
        {
          v20 = __CocoaSet.Iterator.next()();
          if (!v20)
          {
            goto LABEL_30;
          }

          v63 = v20;
          type metadata accessor for CRLTransactableHashableWrapper();
          swift_dynamicCast();
          v21 = v62;
          if (!v62)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v17 = a5[3];
          v18 = a5[4];
          if (!v18)
          {
            v22 = (a5[2] + 64) >> 6;
            if (v22 <= v17 + 1)
            {
              v23 = v17 + 1;
            }

            else
            {
              v23 = (a5[2] + 64) >> 6;
            }

            v24 = v23 - 1;
            while (1)
            {
              v19 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              if (v19 >= v22)
              {
                v21 = 0;
                v25 = 0;
                goto LABEL_18;
              }

              v18 = *(a5[1] + 8 * v19);
              ++v17;
              if (v18)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v19 = a5[3];
LABEL_17:
          v25 = (v18 - 1) & v18;
          v21 = *(*(*a5 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

          v24 = v19;
LABEL_18:
          a5[3] = v24;
          a5[4] = v25;
          if (!v21)
          {
LABEL_30:
            v48 = v61;

            sub_1010F3F24(v51, v49[0], v50, v48);
            return;
          }
        }

        v26 = v61;
        Hasher.init(_seed:)();
        v27 = *(v21 + 24);
        ObjectType = swift_getObjectType();
        v29 = v59;
        (*(v27 + 32))(ObjectType, v27);
        sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v30 = v60;
        dispatch thunk of Hashable.hash(into:)();
        v57 = *v58;
        v57(v29, v30);
        v31 = Hasher._finalize()();
        v32 = -1 << *(v26 + 32);
        v33 = v31 & ~v32;
        v34 = v33 >> 6;
        v35 = 1 << v33;
        if (((1 << v33) & *(v56 + 8 * (v33 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        a5 = v52;
      }

      v54 = ~v32;
      while (1)
      {
        v55 = v34;
        v36 = *(*(*(v61 + 48) + 8 * v33) + 24);
        v37 = swift_getObjectType();
        v38 = *(v36 + 32);

        v39 = v59;
        v38(v37, v36);
        v40 = *(v21 + 24);
        v41 = swift_getObjectType();
        v42 = v53;
        (*(v40 + 32))(v41, v40);
        v43 = static UUID.== infix(_:_:)();

        v44 = v42;
        v45 = v60;
        v46 = v57;
        v57(v44, v60);
        v46(v39, v45);
        if (v43)
        {
          break;
        }

        v33 = (v33 + 1) & v54;
        v34 = v33 >> 6;
        v35 = 1 << v33;
        if (((1 << v33) & *(v56 + 8 * (v33 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

      a5 = v52;
      v47 = v51[v55];
      v51[v55] = v47 & ~v35;
    }

    while ((v47 & v35) == 0);
    v15 = v50 - 1;
    if (__OFSUB__(v50, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v50 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1012DB604(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for UUID();
  __chkstk_darwin(v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_10000CAAC(v11, &qword_1019F6990, &qword_10146D2F0);
          v45 = v61;

          sub_1010F4288(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_10004AA7C(&qword_1019F37C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1012DBAE0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_30;
          }

          sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_1010F4F6C(a1, a2, v30, a3);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1012DBD7C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v51 = a2;
  v9 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v50 - v10;
  v58 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v58);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = &v50 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17);
  v53 = a1;
  v54 = v11;
  *(a1 + v17) = v18 & ((-1 << a4) - 1);
  v19 = v16 - 1;
  v59 = v20;
  v56 = (v20 + 48);
  v57 = (v20 + 56);
  v61 = a3 + 56;
  v62 = a3;
  v55 = a5;
  do
  {
    v52 = v19;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v31 = 1;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_34:
          __break(1u);
          return;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        sub_10000CA44(*(v21 + 48) + *(v59 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11, type metadata accessor for CRLBoardIdentifier);
        v31 = 0;
        v29 = v26;
LABEL_14:
        v32 = v58;
        (*v57)(v11, v31, 1, v58);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v56)(v11, 1, v32) == 1)
        {
          sub_10000CAAC(v11, &unk_1019F52D0, &unk_10147C1C0);
          v49 = v62;

          sub_1010F47E8(v53, v51, v52, v49);
          return;
        }

        v33 = v63;
        sub_100025808(v11, v63, type metadata accessor for CRLBoardIdentifier);
        v34 = v62;
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_10004AA7C(&qword_1019FB870, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v60 = type metadata accessor for CRLBoardIdentifierStorage(0);
        v35 = (v33 + *(v60 + 20));
        v37 = *v35;
        v36 = v35[1];
        String.hash(into:)();
        v38 = Hasher._finalize()();
        v39 = -1 << *(v34 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v61 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_10004AB24(v63, type metadata accessor for CRLBoardIdentifier);
        v11 = v54;
        a5 = v55;
      }

      v43 = ~v39;
      v44 = *(v59 + 72);
      while (1)
      {
        sub_10000CA44(*(v62 + 48) + v44 * v40, v13, type metadata accessor for CRLBoardIdentifier);
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          sub_10004AB24(v13, type metadata accessor for CRLBoardIdentifier);
          goto LABEL_18;
        }

        v45 = &v13[*(v60 + 20)];
        if (*v45 == v37 && *(v45 + 1) == v36)
        {
          break;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10004AB24(v13, type metadata accessor for CRLBoardIdentifier);
        if (v47)
        {
          goto LABEL_28;
        }

LABEL_18:
        v40 = (v40 + 1) & v43;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if ((*(v61 + 8 * (v40 >> 6)) & (1 << v40)) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_10004AB24(v13, type metadata accessor for CRLBoardIdentifier);
LABEL_28:
      sub_10004AB24(v63, type metadata accessor for CRLBoardIdentifier);
      v11 = v54;
      v48 = v53[v41];
      v53[v41] = v48 & ~v42;
      a5 = v55;
    }

    while ((v48 & v42) == 0);
    v19 = v52 - 1;
    if (__OFSUB__(v52, 1))
    {
      goto LABEL_34;
    }
  }

  while (v52 != 1);
}

unint64_t *sub_1012DC29C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1010F45B0(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return _swiftEmptySetSingleton;
    }

    return result;
  }
}

void sub_1012DC4D4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1005B981C(&unk_101A23C40, &unk_10146F200);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for IndexPath();
  __chkstk_darwin(v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_10000CAAC(v11, &unk_101A23C40, &unk_10146F200);
          v45 = v61;

          sub_1010F53A4(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_10004AA7C(&unk_101A23C60, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_10004AA7C(&unk_101A226D0, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1012DC9B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a5;
  v9 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v37 = a3 + 56;
  while (2)
  {
    v33 = v10;
    do
    {
      while (1)
      {
        if ((*v7 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_30;
          }

          a6(0);
          swift_dynamicCast();
          v14 = v38;
          if (!v38)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v11 = v7[3];
          v12 = v7[4];
          if (!v12)
          {
            v15 = (v7[2] + 64) >> 6;
            if (v15 <= v11 + 1)
            {
              v16 = v11 + 1;
            }

            else
            {
              v16 = (v7[2] + 64) >> 6;
            }

            v17 = v16 - 1;
            while (1)
            {
              v13 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                break;
              }

              if (v13 >= v15)
              {
                v14 = 0;
                v18 = 0;
                goto LABEL_18;
              }

              v12 = *(v7[1] + 8 * v13);
              ++v11;
              if (v12)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v13 = v7[3];
LABEL_17:
          v18 = (v12 - 1) & v12;
          v14 = *(*(*v7 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
          v19 = v14;
          v17 = v13;
LABEL_18:
          v7[3] = v17;
          v7[4] = v18;
          if (!v14)
          {
LABEL_30:

            a7(a1, a2, v33, a3);
            return;
          }
        }

        v20 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        a6(0);
        v25 = *(*(a3 + 48) + 8 * v22);
        v26 = static NSObject.== infix(_:_:)();

        if (v26)
        {
          break;
        }

        v27 = ~v21;
        while (1)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) == 0)
          {
            break;
          }

          v28 = *(*(a3 + 48) + 8 * v22);
          v29 = static NSObject.== infix(_:_:)();

          if (v29)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v7 = a5;
      }

LABEL_24:
      v7 = a5;

      v30 = *(a1 + 8 * v23);
      *(a1 + 8 * v23) = v30 & ~v24;
    }

    while ((v30 & v24) == 0);
    v10 = v33 - 1;
    if (__OFSUB__(v33, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v33 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1012DCC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLTransactableHashableWrapper();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a4;
  return result;
}

double sub_1012DCC7C(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v121) = a3;
  v120 = type metadata accessor for UUID();
  v7 = *(v120 - 8);
  __chkstk_darwin(v120);
  v9 = (&v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v108 - v11;
  __chkstk_darwin(v13);
  v15 = &v108 - v14;
  __chkstk_darwin(v16);
  v18 = &v108 - v17;
  __chkstk_darwin(v19);
  v115 = &v108 - v20;
  v21 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v21 - 8);
  v116 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v25 = &v108 - v24;
  if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
LABEL_46:
    v7 = sub_100B356D0(0, v7[2] + 1, 1, v7);
    *&v12[a2] = v7;
    goto LABEL_40;
  }

  v112 = v15;
  v113 = v9;
  v117 = v18;
  v114 = v12;
  v119 = v7;
  *(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
  type metadata accessor for CRLTransactableHashableWrapper();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = &off_10188FE10;
  v118 = v26;
  if (a2)
  {
    v27 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v28 = *(a4 + v27);
    v110 = a1;

    v29 = sub_10079C5CC(v26, v28);

    if (v29)
    {
      swift_beginAccess();
      sub_100ED6A00(v26);
      swift_endAccess();

      swift_beginAccess();
      sub_100ED6A00(v26);
      swift_endAccess();

      swift_beginAccess();
      sub_1010F5918(v26);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_beginAccess();

      sub_100E6B218(v122, v26);
      swift_endAccess();

      swift_beginAccess();

      sub_100E6B218(v122, v26);
      swift_endAccess();

      if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
      {
        v31 = v115;
        (*((swift_isaMask & *v110) + 0x88))(v30);
        swift_beginAccess();
        sub_100ED6D70(v31, v25);
        v9 = v119;
        v119[1](v31, v120);
        sub_10000CAAC(v25, &qword_1019F6990, &qword_10146D2F0);
        swift_endAccess();
        v32 = 1;
      }

      else
      {
        v32 = 1;
        v9 = v119;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v33 = a1;
  }

  swift_beginAccess();
  v34 = sub_1010F5918(v26);
  v36 = v35;
  v37 = swift_endAccess();
  v38 = v26;
  if (!v34)
  {
    v34 = (*((swift_isaMask & *a1) + 0x3A0))(v37);
    v36 = v39;
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_100E6B218(v122, v40);
  swift_endAccess();
  swift_unknownObjectRelease();

  swift_beginAccess();

  sub_100E6B218(v122, v38);
  swift_endAccess();

  v9 = v119;
  if ((a2 & 1) == 0 && (v121 & 1) == 0)
  {
    v42 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v43 = *(a4 + v42);

    v44 = sub_10079C5CC(v118, v43);

    if (v44)
    {
      v111 = a1;
      v109 = objc_opt_self();
      v45 = [v109 _atomicIncrementAssertCount];
      v122[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v122, "A deleted object should not be listed as a created object", 57, 2u);
      StaticString.description.getter("objectDeleted(_:allowDeletingNewlyCreated:deletedAsOrphan:)", 59, 2);
      v110 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
      v46 = String._bridgeToObjectiveC()();

      v47 = [v46 lastPathComponent];

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v49;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v50 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v45;
      v52 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v52;
      v53 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v53;
      v54 = v110;
      *(inited + 72) = v110;
      *(inited + 136) = &type metadata for String;
      v55 = sub_1000053B0();
      v56 = v108;
      *(inited + 112) = v48;
      *(inited + 120) = v56;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v55;
      *(inited + 152) = 359;
      v57 = v122[0];
      *(inited + 216) = v52;
      *(inited + 224) = v53;
      *(inited + 192) = v57;
      v58 = v54;
      v59 = v57;
      v60 = static os_log_type_t.error.getter();
      sub_100005404(v50, &_mh_execute_header, v60, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v50, &_mh_execute_header, v61, "A deleted object should not be listed as a created object", 57, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v62 = swift_allocObject();
      v62[2] = 8;
      v62[3] = 0;
      v62[4] = 0;
      v62[5] = 0;
      v63 = __VaListBuilder.va_list()();
      StaticString.description.getter("objectDeleted(_:allowDeletingNewlyCreated:deletedAsOrphan:)", 59, 2);
      v64 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
      v65 = String._bridgeToObjectiveC()();

      StaticString.description.getter("A deleted object should not be listed as a created object", 57, 2);
      v66 = String._bridgeToObjectiveC()();

      [v109 handleFailureInFunction:v64 file:v65 lineNumber:359 isFatal:0 format:v66 args:v63];

      v9 = v119;
      a1 = v111;
    }
  }

  if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v67 = v113;
    (*((swift_isaMask & *a1) + 0x88))(v41);
    swift_beginAccess();
    v68 = v115;
    sub_100E6AF38(v115, v67);
    v9[1](v68, v120);
    swift_endAccess();
  }

  v32 = 0;
LABEL_18:
  v115 = a4;
  v69 = a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner;
  v70 = *(v69 + 8);
  ObjectType = swift_getObjectType();
  v72 = *(v70 + 32);
  swift_unknownObjectRetain();
  v72(a1, &off_10188FE10, v32, ObjectType, v70);
  swift_unknownObjectRelease();
  if ((v121 & 1) == 0)
  {
    goto LABEL_43;
  }

  v73 = *((swift_isaMask & *a1) + 0xB8);
  v74 = a1;
  v75 = a1;
  v76 = v116;
  v73();
  v15 = v120;
  if ((v9[6])(v76, 1, v120) == 1)
  {

    v77 = sub_10000CAAC(v76, &qword_1019F6990, &qword_10146D2F0);
    a2 = v115;
  }

  else
  {
    (v9[4])(v117, v76, v15);
    v78 = v9;
    if (qword_1019F22B8 != -1)
    {
      swift_once();
    }

    v121 = static OS_os_log.boardItemLifecycle;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v79 = swift_initStackObject();
    *(v79 + 16) = xmmword_101483930;
    v80 = swift_isaMask & *v75;
    v111 = v74;
    v81 = v112;
    (*(v80 + 136))();
    v82 = UUID.uuidString.getter();
    v84 = v83;
    v85 = v78[1];
    v113 = (v78 + 1);
    v116 = v85;
    v85(v81, v120);
    *(v79 + 56) = &type metadata for String;
    v86 = sub_1000053B0();
    *(v79 + 64) = v86;
    *(v79 + 32) = v82;
    v112 = (v79 + 32);
    *(v79 + 40) = v84;
    v87 = v75;
    v88 = [v87 description];
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    *(v79 + 96) = &type metadata for String;
    *(v79 + 104) = v86;
    *(v79 + 72) = v89;
    *(v79 + 80) = v91;
    v92 = UUID.uuidString.getter();
    *(v79 + 136) = &type metadata for String;
    *(v79 + 144) = v86;
    *(v79 + 112) = v92;
    *(v79 + 120) = v93;
    a2 = v115;
    v94 = 1702195828;
    if (*(v115 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges))
    {
      v95 = 1702195828;
    }

    else
    {
      v95 = 0x65736C6166;
    }

    if (*(v115 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges))
    {
      v96 = 0xE400000000000000;
    }

    else
    {
      v96 = 0xE500000000000000;
    }

    *(v79 + 176) = &type metadata for String;
    *(v79 + 184) = v86;
    *(v79 + 152) = v95;
    *(v79 + 160) = v96;
    if (*(a2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable))
    {
      v97 = 1702195828;
    }

    else
    {
      v97 = 0x65736C6166;
    }

    if (*(a2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable))
    {
      v98 = 0xE400000000000000;
    }

    else
    {
      v98 = 0xE500000000000000;
    }

    *(v79 + 216) = &type metadata for String;
    *(v79 + 224) = v86;
    *(v79 + 192) = v97;
    *(v79 + 200) = v98;
    if (*(a2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState))
    {
      v99 = 0xE400000000000000;
    }

    else
    {
      v94 = 0x65736C6166;
      v99 = 0xE500000000000000;
    }

    *(v79 + 256) = &type metadata for String;
    *(v79 + 264) = v86;
    *(v79 + 232) = v94;
    *(v79 + 240) = v99;
    v100 = *v69;
    swift_getObjectType();
    v122[0] = v100;
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v79 + 296) = &type metadata for String;
    *(v79 + 304) = v86;
    *(v79 + 272) = v101;
    *(v79 + 280) = v102;
    v103 = static os_log_type_t.default.getter();
    sub_100005404(v121, &_mh_execute_header, v103, "⭕ deleting orphan [%{public}@%{public}@] with parent [%{public}@] during transaction that is tracked: [%{public}@], undoable: [%{public}@], marking: [%{public}@] for owner: [%{public}@]", 187, 0, v79);

    v15 = v120;
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v77 = (v116)(v117, v15);
    v9 = v119;
  }

  a1 = v114;
  (*((swift_isaMask & *v75) + 0x88))(v77);
  v12 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans;
  v7 = *(a2 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v12[a2] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_40:
  v106 = v7[2];
  v105 = v7[3];
  if (v106 >= v105 >> 1)
  {
    v7 = sub_100B356D0((v105 > 1), v106 + 1, 1, v7);
  }

  v7[2] = (v106 + 1);
  (v9[4])(v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v9[9] * v106, a1, v15);
  *&v12[a2] = v7;
LABEL_43:

  return result;
}

double sub_1012DDB58(char *a1, char a2, int a3, uint64_t a4)
{
  LODWORD(v128) = a3;
  v127 = type metadata accessor for UUID();
  v8 = *(v127 - 8);
  __chkstk_darwin(v127);
  v121 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v117 - v11;
  __chkstk_darwin(v13);
  v15 = &v117 - v14;
  __chkstk_darwin(v16);
  v18 = &v117 - v17;
  __chkstk_darwin(v19);
  v125 = &v117 - v20;
  v21 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v21 - 8);
  __chkstk_darwin(v22);
  v25 = &v117 - v24;
  if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
LABEL_48:
    v12 = sub_100B356D0(0, *(v12 + 2) + 1, 1, v12);
    *&a1[a4] = v12;
    goto LABEL_43;
  }

  v122 = v23;
  v123 = v18;
  v120 = v15;
  v124 = v12;
  *(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
  type metadata accessor for CRLTransactableHashableWrapper();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = &off_10188FE10;
  v126 = v8;
  v129 = v26;
  v130 = a1;
  if (a2)
  {
    v27 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v28 = *(a4 + v27);
    v119 = a1;

    v29 = sub_10079C5CC(v26, v28);

    if (v29)
    {
      swift_beginAccess();
      sub_100ED6A00(v26);
      swift_endAccess();

      swift_beginAccess();
      sub_100ED6A00(v26);
      swift_endAccess();

      swift_beginAccess();
      sub_1010F5918(v26);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_beginAccess();

      sub_100E6B218(v131, v26);
      swift_endAccess();

      swift_beginAccess();

      sub_100E6B218(v131, v26);
      swift_endAccess();

      if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
      {
        v31 = v125;
        (*(**&v119[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v30);
        swift_beginAccess();
        sub_100ED6D70(v31, v25);
        v32 = v31;
        v33 = a4;
        (*(v8 + 8))(v32, v127);
        sub_10000CAAC(v25, &qword_1019F6990, &qword_10146D2F0);
        swift_endAccess();
        v34 = 1;
      }

      else
      {
        v34 = 1;
        v33 = a4;
      }

      v40 = v130;
      goto LABEL_21;
    }
  }

  else
  {
    v35 = a1;
  }

  swift_beginAccess();
  v36 = sub_1010F5918(v26);
  v38 = v37;
  swift_endAccess();
  if (v36)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    *(v39 + 24) = v38;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_100E6B218(v131, v39);
    swift_endAccess();
    swift_unknownObjectRelease();

    v40 = v130;
  }

  else
  {
    v40 = v130;
    sub_100EA9DE8();
    v42 = v41;
    v44 = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    *(v45 + 24) = v44;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_100E6B218(v131, v45);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v46 = v129;

  sub_100E6B218(v131, v46);
  swift_endAccess();

  if ((a2 & 1) == 0 && (v128 & 1) == 0)
  {
    v48 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_createdObjects;
    swift_beginAccess();
    v49 = *(a4 + v48);

    v50 = sub_10079C5CC(v46, v49);

    if (v50)
    {
      v118 = objc_opt_self();
      v51 = [v118 _atomicIncrementAssertCount];
      v131[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v131, "A deleted object should not be listed as a created object", 57, 2u);
      StaticString.description.getter("objectDeleted(_:allowDeletingNewlyCreated:deletedAsOrphan:)", 59, 2);
      v119 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
      v52 = String._bridgeToObjectiveC()();

      v53 = [v52 lastPathComponent];

      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v57 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v51;
      v59 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v59;
      v60 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v60;
      v61 = v119;
      *(inited + 72) = v119;
      *(inited + 136) = &type metadata for String;
      v62 = sub_1000053B0();
      *(inited + 112) = v54;
      *(inited + 120) = v56;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v62;
      *(inited + 152) = 359;
      v63 = v131[0];
      *(inited + 216) = v59;
      *(inited + 224) = v60;
      *(inited + 192) = v63;
      v64 = v61;
      v65 = v63;
      v66 = static os_log_type_t.error.getter();
      sub_100005404(v57, &_mh_execute_header, v66, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v67 = static os_log_type_t.error.getter();
      sub_100005404(v57, &_mh_execute_header, v67, "A deleted object should not be listed as a created object", 57, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v68 = swift_allocObject();
      v68[2] = 8;
      v68[3] = 0;
      v68[4] = 0;
      v68[5] = 0;
      v69 = __VaListBuilder.va_list()();
      StaticString.description.getter("objectDeleted(_:allowDeletingNewlyCreated:deletedAsOrphan:)", 59, 2);
      v70 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
      v71 = String._bridgeToObjectiveC()();

      StaticString.description.getter("A deleted object should not be listed as a created object", 57, 2);
      v72 = String._bridgeToObjectiveC()();

      [v118 handleFailureInFunction:v70 file:v71 lineNumber:359 isFatal:0 format:v72 args:v69];

      v8 = v126;
      v40 = v130;
    }
  }

  if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v73 = v121;
    (*(**&v40[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v47);
    swift_beginAccess();
    v74 = v125;
    sub_100E6AF38(v125, v73);
    v33 = a4;
    (*(v8 + 8))(v74, v127);
    swift_endAccess();
    v34 = 0;
  }

  else
  {
    v34 = 0;
    v33 = a4;
  }

LABEL_21:
  a4 = v33;
  v75 = (v33 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner);
  v76 = *(v33 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v78 = *(v76 + 32);
  swift_unknownObjectRetain();
  v78(v40, &off_10188FE10, v34, ObjectType, v76);
  swift_unknownObjectRelease();
  if ((v128 & 1) == 0)
  {
    goto LABEL_46;
  }

  v128 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v79 = *(**&v40[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 272);
  v80 = v40;

  v82 = v122;
  v79(v81);

  v83 = v126;
  v4 = v127;
  if ((*(v126 + 48))(v82, 1, v127) == 1)
  {

    v84 = sub_10000CAAC(v82, &qword_1019F6990, &qword_10146D2F0);
    v85 = v130;
    v86 = v128;
  }

  else
  {
    (*(v83 + 32))(v123, v82, v4);
    if (qword_1019F22B8 != -1)
    {
      swift_once();
    }

    v125 = static OS_os_log.boardItemLifecycle;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_101483930;
    v88 = v120;
    (*(**&v130[v128] + 264))();
    v89 = UUID.uuidString.getter();
    v91 = v90;
    v92 = *(v83 + 8);
    v121 = (v83 + 8);
    v122 = v92;
    v92(v88, v4);
    *(v87 + 56) = &type metadata for String;
    v93 = sub_1000053B0();
    *(v87 + 64) = v93;
    *(v87 + 32) = v89;
    v120 = (v87 + 32);
    *(v87 + 40) = v91;
    v94 = v80;
    v95 = [v94 description];
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    *(v87 + 96) = &type metadata for String;
    *(v87 + 104) = v93;
    *(v87 + 72) = v96;
    *(v87 + 80) = v98;
    v99 = v123;
    v100 = UUID.uuidString.getter();
    *(v87 + 136) = &type metadata for String;
    *(v87 + 144) = v93;
    *(v87 + 112) = v100;
    *(v87 + 120) = v101;
    v102 = 1702195828;
    if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges))
    {
      v103 = 1702195828;
    }

    else
    {
      v103 = 0x65736C6166;
    }

    if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_trackChanges))
    {
      v104 = 0xE400000000000000;
    }

    else
    {
      v104 = 0xE500000000000000;
    }

    *(v87 + 176) = &type metadata for String;
    *(v87 + 184) = v93;
    *(v87 + 152) = v103;
    *(v87 + 160) = v104;
    if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable))
    {
      v105 = 1702195828;
    }

    else
    {
      v105 = 0x65736C6166;
    }

    if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable))
    {
      v106 = 0xE400000000000000;
    }

    else
    {
      v106 = 0xE500000000000000;
    }

    *(v87 + 216) = &type metadata for String;
    *(v87 + 224) = v93;
    *(v87 + 192) = v105;
    *(v87 + 200) = v106;
    if (*(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState))
    {
      v107 = 0xE400000000000000;
    }

    else
    {
      v102 = 0x65736C6166;
      v107 = 0xE500000000000000;
    }

    *(v87 + 256) = &type metadata for String;
    *(v87 + 264) = v93;
    *(v87 + 232) = v102;
    *(v87 + 240) = v107;
    v108 = *v75;
    swift_getObjectType();
    v131[0] = v108;
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v87 + 296) = &type metadata for String;
    *(v87 + 304) = v93;
    v4 = v127;
    *(v87 + 272) = v109;
    *(v87 + 280) = v110;
    v111 = static os_log_type_t.default.getter();
    sub_100005404(v125, &_mh_execute_header, v111, "⭕ deleting orphan [%{public}@%{public}@] with parent [%{public}@] during transaction that is tracked: [%{public}@], undoable: [%{public}@], marking: [%{public}@] for owner: [%{public}@]", 187, 0, v87);

    v86 = v128;
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v84 = v122(v99, v4);
    v85 = v130;
  }

  v15 = v124;
  (*(**&v85[v86] + 264))(v84);
  a1 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans;
  v12 = *(a4 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedOrphans);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[a4] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_43:
  v113 = v126;
  v115 = *(v12 + 2);
  v114 = *(v12 + 3);
  if (v115 >= v114 >> 1)
  {
    v12 = sub_100B356D0((v114 > 1), v115 + 1, 1, v12);
  }

  *(v12 + 2) = v115 + 1;
  (*(v113 + 32))(&v12[((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v115], v15, v4);
  *&a1[a4] = v12;
LABEL_46:

  return result;
}