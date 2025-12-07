uint64_t sub_100D5F9D8(uint64_t a1)
{
  v2 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v14[-v6];
  type metadata accessor for CRLContainerItemData(0);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = qword_101AD8098;
    swift_beginAccess();
    sub_100AD8D58(v1 + v10, v7);
    v11 = qword_101AD8098;
    swift_beginAccess();
    sub_100AD8D58(v9 + v11, v4);
    sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);
    v12 = CRStruct_1.hasDelta(from:)();
    sub_100D62090(v4);
    sub_100D62090(v7);
    return v12 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100D5FBA0(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v25[0] = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v25[0]);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  v8 = sub_1005B981C(&qword_101A1E460, &qword_1014B03A8);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v25 - v12;
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = qword_101AD8098;
    swift_beginAccess();
    sub_100AD8D58(v2 + v16, v7);
    v17 = qword_101AD8098;
    swift_beginAccess();
    sub_100AD8D58(v15 + v17, v4);
    sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

    CRStruct_1.delta(_:from:)();
    sub_100D62090(v4);
    sub_100D62090(v7);
    sub_10000BE14(v13, v10, &qword_101A1E460, &qword_1014B03A8);
    v18 = sub_1005B981C(&qword_101A1E448, &qword_1014B01F8);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v10, 1, v18) == 1)
    {
      sub_10000CAAC(v13, &qword_101A1E460, &qword_1014B03A8);

      sub_10000CAAC(v10, &qword_101A1E460, &qword_1014B03A8);
      return 0;
    }

    else
    {
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v21, qword_101AD6348);
      sub_10001A2F8(&qword_101A1E440, &qword_101A1E448, &qword_1014B01F8, &protocol conformance descriptor for CRStructMergeableDelta_1<A>);
      v22 = v25[9];
      v23 = PartialCRDT.deltaSerializedData(_:version:)();
      if (v22)
      {
        sub_10000CAAC(v13, &qword_101A1E460, &qword_1014B03A8);

        return (*(v19 + 8))(v10, v18);
      }

      else
      {
        v24 = v23;
        sub_10000CAAC(v13, &qword_101A1E460, &qword_1014B03A8);

        (*(v19 + 8))(v10, v18);
        return v24;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100D60018(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A1E448, &qword_1014B01F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_100024E98(a1, a2);
  sub_10001A2F8(&qword_101A1E440, &qword_101A1E448, &qword_1014B01F8, &protocol conformance descriptor for CRStructMergeableDelta_1<A>);
  v11 = v33;
  PartialCRDT.init(serializedData:)();
  if (!v11)
  {
    v29 = v6;
    v30 = v8;
    v33 = 0;
    v13 = v31;
    v12 = v32;
    swift_beginAccess();
    type metadata accessor for CRLContainerItemCRDTData(0);
    sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);
    LOBYTE(v6) = CRStruct_1.merge(delta:)();
    swift_endAccess();
    if ((v6 & 1) == 0)
    {
      v28 = v10;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v27 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v15 = *(*v12 + 744);
      swift_beginAccess();
      v16 = v12 + v15;
      v17 = v29;
      (*(v13 + 16))(v29, v16, v4);
      v18 = UUID.uuidString.getter();
      v20 = v19;
      (*(v13 + 8))(v17, v4);
      *(inited + 56) = &type metadata for String;
      v21 = sub_1000053B0();
      *(inited + 64) = v21;
      *(inited + 32) = v18;
      *(inited + 40) = v20;
      v34 = v12;
      type metadata accessor for CRLContainerItemData(0);

      v22 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v21;
      *(inited + 72) = v22;
      *(inited + 80) = v23;
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v24, "Delta failed to apply for %{public}@%{public}@", 46, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v10 = v28;
    }

    (*(v30 + 8))(v10, v7);
  }

  return v6 & 1;
}

uint64_t sub_100D6041C()
{
  qword_101AD8080 = 97;
  *algn_101AD8088 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD8090 = result;
  return result;
}

uint64_t sub_100D60488(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_1000684E4(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  return static CROrderedSet.== infix(_:_:)();
}

uint64_t sub_100D6051C()
{
  if (qword_1019F2360 != -1)
  {
    swift_once();
  }

  v0 = qword_101AD8080;

  return v0;
}

uint64_t sub_100D6059C(uint64_t a1)
{
  v2 = sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return static CRStruct_1.fieldKeys.getter(a1, v2);
}

uint64_t sub_100D60608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(a1 + 20)) = _swiftEmptyDictionarySingleton;
  type metadata accessor for UUID();
  sub_1000684E4(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  return CROrderedSet.init()();
}

uint64_t sub_100D6069C(uint64_t a1)
{
  v2 = sub_1000684E4(&qword_101A09E50, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0184);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_100D60708(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_100D60784(uint64_t a1, uint64_t a2)
{
  sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_100D60808(uint64_t a1, uint64_t a2)
{
  sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.apply(_:)();
}

uint64_t sub_100D60884(uint64_t a1, uint64_t a2)
{
  sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.hasDelta(from:)();
}

uint64_t sub_100D60900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.delta(_:from:)();
}

uint64_t sub_100D60994(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_100D60A10(uint64_t a1, uint64_t a2)
{
  sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.merge(delta:)();
}

uint64_t sub_100D60A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100D60B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100D60B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_100D60C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_100D60CA4()
{
  sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_100D60D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_100D60D8C(uint64_t a1, uint64_t a2)
{
  sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.merge(_:)();
}

uint64_t sub_100D60E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.merge(_:)(a1, a2, v4);
}

uint64_t sub_100D61094(uint64_t a1)
{
  v2 = sub_1000684E4(&unk_101A2C9C0, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0358);

  return CRStruct_1.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100D61110@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_101AD8098;
  swift_beginAccess();
  return sub_100AD8D58(v1 + v3, a1);
}

void (*sub_100D61168(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for CRLContainerItemCRDTData(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = qword_101AD8098;
  v4[11] = v6;
  v4[12] = v8;
  swift_beginAccess();
  sub_100AD8D58(v1 + v8, v7);
  return sub_100D61260;
}

void sub_100D61260(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 11);
  v4 = *(*a1 + 12);
  v6 = *(*a1 + 9);
  v5 = *(*a1 + 10);
  if (a2)
  {
    sub_100AD8D58(*(*a1 + 11), v5);
    swift_beginAccess();
    sub_100B48058(v5, v6 + v4);
    swift_endAccess();
    sub_100D62090(v3);
  }

  else
  {
    swift_beginAccess();
    sub_100B48058(v3, v6 + v4);
    swift_endAccess();
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t *sub_100D61340(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v26 - v8;
  v10 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v26 - v14;
  __chkstk_darwin(v16);
  v18 = v26 - v17;
  v19 = *(*v1 + 736);
  swift_beginAccess();
  if (a1)
  {
    v26[1] = v4;
    sub_10000BE14(v1 + v19, v15, &unk_101A226A0, &unk_10146E610);
    sub_10001A2F8(&qword_101A09E00, &unk_101A226A0, &unk_10146E610, byte_101478D54);
    CRType.copy(renamingReferences:)();
    sub_10000CAAC(v15, &unk_101A226A0, &unk_10146E610);
    v20 = qword_101AD8098;
    swift_beginAccess();
    sub_100AD8D58(v2 + v20, v6);
    sub_1000684E4(&qword_101A09E50, type metadata accessor for CRLContainerItemCRDTData, byte_1014B0184);
    CRType.copy(renamingReferences:)();
    sub_100D62090(v6);
  }

  else
  {
    sub_10000BE14(v1 + v19, v18, &unk_101A226A0, &unk_10146E610);
    v21 = qword_101AD8098;
    swift_beginAccess();
    sub_100AD8D58(v2 + v21, v9);
  }

  sub_10000BE14(v18, v15, &unk_101A226A0, &unk_10146E610);
  sub_100AD8D58(v9, v6);
  v22 = *(v2 + 40);
  v27[0] = *(v2 + 24);
  v27[1] = v22;
  v28 = *(v2 + 56);
  v23 = *(v2 + 16);
  type metadata accessor for CRLContainerItemData(0);
  v24 = swift_allocObject();
  sub_100AD8D58(v6, v24 + qword_101AD8098);
  sub_10000BE14(v15, v12, &unk_101A226A0, &unk_10146E610);
  sub_10000BE14(v12, v24 + *(*v24 + 736), &unk_101A226A0, &unk_10146E610);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v12, &unk_101A226A0, &unk_10146E610);
  sub_100D62090(v6);
  sub_10000CAAC(v15, &unk_101A226A0, &unk_10146E610);
  sub_100D62090(v9);
  sub_10000CAAC(v18, &unk_101A226A0, &unk_10146E610);
  return sub_100747AF0(v27, v23);
}

uint64_t sub_100D6173C(uint64_t a1)
{
  v2 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for UUID();
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  type metadata accessor for CRLContainerItemData(0);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = v20;
  v32 = v7;
  v33 = v4;
  v22 = *(*v1 + 736);
  swift_beginAccess();
  v34 = v1;
  sub_10000BE14(v1 + v22, v19, &unk_101A226A0, &unk_10146E610);
  v23 = *(*v21 + 736);
  swift_beginAccess();
  sub_10000BE14(v21 + v23, v16, &unk_101A226A0, &unk_10146E610);

  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  LOBYTE(v23) = static UUID.== infix(_:_:)();
  v24 = *(v35 + 8);
  v24(v10, v8);
  v24(v13, v8);
  if ((v23 & 1) == 0)
  {

    sub_10000CAAC(v16, &unk_101A226A0, &unk_10146E610);
    sub_10000CAAC(v19, &unk_101A226A0, &unk_10146E610);
LABEL_7:
    v30 = 0;
    return v30 & 1;
  }

  v25 = sub_101279020();
  sub_10000CAAC(v16, &unk_101A226A0, &unk_10146E610);
  v26 = sub_10000CAAC(v19, &unk_101A226A0, &unk_10146E610);
  if ((v25 & 1) == 0)
  {

    goto LABEL_7;
  }

  v27 = v32;
  v28 = (*(*v34 + 840))(v26);
  v29 = v33;
  (*(*v21 + 840))(v28);
  sub_1000684E4(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v30 = static CROrderedSet.== infix(_:_:)();

  sub_100D62090(v29);
  sub_100D62090(v27);
  return v30 & 1;
}

uint64_t sub_100D61BB0()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A226A0, &unk_10146E610);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100D62090(v0 + qword_101AD8098);

  return swift_deallocClassInstance();
}

uint64_t sub_100D61CB4(uint64_t a1)
{
  result = type metadata accessor for CRLContainerItemCRDTData(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100D61D8C(uint64_t a1)
{
  sub_10007F278(319);
  if (v1 <= 0x3F)
  {
    sub_100039F68(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100D62090(uint64_t a1)
{
  v2 = type metadata accessor for CRLContainerItemCRDTData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D62118()
{
  sub_100D622DC(v0 + OBJC_IVAR____TtC8Freeform12CRLSELibrary_libraryNode);
  sub_100D622DC(v0 + OBJC_IVAR____TtC8Freeform12CRLSELibrary_allBoards);
  sub_100D622DC(v0 + OBJC_IVAR____TtC8Freeform12CRLSELibrary_recents);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLSELibrary(uint64_t a1)
{
  result = qword_101A1E4A0;
  if (!qword_101A1E4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D621F0(uint64_t a1)
{
  sub_100D62284(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100D62284(uint64_t a1)
{
  if (!qword_101A1E4B0)
  {
    type metadata accessor for CRLSELibraryViewModelItemNode(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101A1E4B0);
    }
  }
}

uint64_t sub_100D622DC(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A14AF0, &qword_10149F0E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D62344(uint64_t result)
{
  switch(result)
  {
    case 0:
      return result;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
      v1 = [objc_opt_self() mainBundle];
      v2 = String._bridgeToObjectiveC()();
      v3 = String._bridgeToObjectiveC()();
      v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      result = v5;
      break;
    default:
      type metadata accessor for CRLFreehandDrawingShapeType(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_100D62774(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      v3 = [objc_opt_self() mainBundle];
      v4 = 0xD000000000000013;
      v14 = 0x800000010159FA60;
      v5 = 0x800000010159FA40;
      v6 = 0xD000000000000045;
      goto LABEL_17;
    case 1:
      v3 = [objc_opt_self() mainBundle];
      v14 = 0x800000010159FA10;
      v4 = 0x6C61766F20756C25;
      v5 = 0xE900000000000073;
      v8.super.isa = v3;
      v9 = 0;
      v10 = 0xE000000000000000;
      v6 = 0xD00000000000002ALL;
      goto LABEL_18;
    case 2:
      v3 = [objc_opt_self() mainBundle];
      v14 = 0x800000010159F9E0;
      v4 = 0x7463657220756C25;
      v5 = 0xEE0073656C676E61;
      v6 = 0xD00000000000002FLL;
      goto LABEL_17;
    case 3:
      v3 = [objc_opt_self() mainBundle];
      v14 = 0x800000010159F9B0;
      v4 = 0x6169727420756C25;
      v7 = 1701603182;
      goto LABEL_9;
    case 4:
      v3 = [objc_opt_self() mainBundle];
      v14 = 0x800000010159F980;
      v4 = 0x746E657020756C25;
      v7 = 1852794721;
LABEL_9:
      v5 = v7 | 0xED00007300000000;
      v6 = 0xD00000000000002ELL;
      goto LABEL_17;
    case 5:
      v3 = [objc_opt_self() mainBundle];
      v14 = 0x800000010159F940;
      v4 = 0x6F72726120756C25;
      v5 = 0xEA00000000007377;
      v6 = 0xD000000000000031;
      goto LABEL_17;
    case 6:
      v3 = [objc_opt_self() mainBundle];
      v14 = 0x800000010159F900;
      v4 = 0x656E696C20756C25;
      v6 = 0xD000000000000037;
      goto LABEL_16;
    case 7:
      v3 = [objc_opt_self() mainBundle];
      v14 = 0x800000010159F8B0;
      v5 = 0x800000010159F880;
      v6 = 0xD00000000000004BLL;
      v4 = 0xD00000000000002ALL;
      goto LABEL_17;
    case 8:
      v3 = [objc_opt_self() mainBundle];
      v14 = 0x800000010159F840;
      v4 = 0x7261747320756C25;
      v6 = 0xD000000000000030;
LABEL_16:
      v5 = 0xE900000000000073;
      goto LABEL_17;
    case 9:
      v3 = [objc_opt_self() mainBundle];
      v14 = 0x800000010159F800;
      v4 = 0x7261656820756C25;
      v5 = 0xEA00000000007374;
      v6 = 0xD000000000000031;
      goto LABEL_17;
    case 10:
      v3 = [objc_opt_self() mainBundle];
      v4 = 0xD000000000000010;
      v14 = 0x800000010159F7C0;
      v5 = 0x800000010159F7A0;
      v6 = 0xD000000000000037;
      goto LABEL_17;
    case 11:
      v3 = [objc_opt_self() mainBundle];
      v4 = 0xD000000000000012;
      v14 = 0x800000010159F760;
      v5 = 0x800000010159F740;
      v6 = 0xD000000000000039;
      goto LABEL_17;
    case 12:
      v3 = [objc_opt_self() mainBundle];
      v14 = 0x800000010159F6E0;
      v4 = 0x756F6C6320756C25;
      v6 = 0xD000000000000050;
      v5 = 0xEA00000000007364;
LABEL_17:
      v8.super.isa = v3;
      v9 = 0;
      v10 = 0xE000000000000000;
LABEL_18:
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v8, *&v9, *&v6);

      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10146C6B0;
      *(v11 + 56) = &type metadata for UInt;
      *(v11 + 64) = &protocol witness table for UInt;
      *(v11 + 32) = a1;
      v12 = static String.localizedStringWithFormat(_:_:)();

      result = v12;
      break;
    default:
      type metadata accessor for CRLFreehandDrawingShapeType(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

id sub_100D62DD8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CRLFreehandDrawingShapeTypeHelper();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t getEnumTagSinglePayload for CRLFreehandDrawingShapeTypeData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLFreehandDrawingShapeTypeData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100D62F80@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D63CB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D6305C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100D63D14();
  v7 = sub_100D63354();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100D630CC(uint64_t a1, uint64_t a2)
{
  sub_100D63D14();
  sub_100D63CC0();
  return CRValue<>.init(from:)();
}

uint64_t sub_100D63138(uint64_t a1, uint64_t a2)
{
  sub_100D63D14();
  sub_100D63CC0();
  return CRValue<>.encode(to:)();
}

uint64_t sub_100D63194(uint64_t a1)
{
  v2 = sub_100D63D14();
  v3 = sub_100D63CC0();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Int);
}

uint64_t sub_100D6324C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100D63CC0();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

unint64_t sub_100D632A4()
{
  result = qword_101A1E5F8;
  if (!qword_101A1E5F8)
  {
    result = swift_getWitnessTable(byte_1014B0410, &type metadata for CRLFreehandDrawingShapeTypeData, v0, v1);
    atomic_store(result, &qword_101A1E5F8);
  }

  return result;
}

unint64_t sub_100D632FC()
{
  result = qword_101A1E600;
  if (!qword_101A1E600)
  {
    result = swift_getWitnessTable("\t68", &type metadata for CRLFreehandDrawingShapeTypeData, v0, v1);
    atomic_store(result, &qword_101A1E600);
  }

  return result;
}

unint64_t sub_100D63354()
{
  result = qword_101A1E608;
  if (!qword_101A1E608)
  {
    result = swift_getWitnessTable(byte_1014B05D8, &type metadata for CRLFreehandDrawingShapeTypeData, v0, v1);
    atomic_store(result, &qword_101A1E608);
  }

  return result;
}

unint64_t sub_100D633A8(unint64_t result)
{
  if (result >= 0xD)
  {
    type metadata accessor for CRLFreehandDrawingShapeType(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100D633F0(unint64_t result)
{
  if (result < 0xD)
  {
    return result;
  }

  if (result == 13)
  {
    v1 = objc_opt_self();
    LODWORD(v2) = [v1 _atomicIncrementAssertCount];
    v68 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v68, "Unexpected scratch out shape type", 33, 2u);
    StaticString.description.getter("init(pkShapeType:)", 18, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeType.swift", 98, 2);
    v3 = String._bridgeToObjectiveC()();

    v4 = [v3 lastPathComponent];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_5;
  }

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  type metadata accessor for PKShapeType(0);
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(inited + 56) = &type metadata for String;
  v27 = sub_1000053B0();
  *(inited + 32) = v24;
  v28 = (inited + 32);
  *(inited + 64) = v27;
  *(inited + 40) = v26;
  v67 = objc_opt_self();
  v29 = [v67 _atomicIncrementAssertCount];
  v68 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v68, "Unexpected shape type (%@)", 26, 2u);
  StaticString.description.getter("init(pkShapeType:)", 18, 2);
  v30 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeType.swift", 98, 2);
  v31 = String._bridgeToObjectiveC()();

  v32 = [v31 lastPathComponent];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v36 = static OS_os_log.crlAssert;
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_10146CA70;
  *(v37 + 56) = &type metadata for Int32;
  *(v37 + 64) = &protocol witness table for Int32;
  *(v37 + 32) = v29;
  v38 = sub_1005CF000();
  *(v37 + 96) = v38;
  v39 = sub_1005CF04C();
  *(v37 + 72) = v30;
  *(v37 + 136) = &type metadata for String;
  *(v37 + 144) = v27;
  *(v37 + 104) = v39;
  *(v37 + 112) = v33;
  *(v37 + 120) = v35;
  *(v37 + 176) = &type metadata for UInt;
  *(v37 + 184) = &protocol witness table for UInt;
  *(v37 + 152) = 35;
  v40 = v68;
  *(v37 + 216) = v38;
  *(v37 + 224) = v39;
  *(v37 + 192) = v40;
  v41 = v30;
  v42 = v40;
  v43 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v37);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v44 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v44, "Unexpected shape type (%@)", 26, 2, inited);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v45 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v46 = *(inited + 16);
  v1 = inited;
  if (!v46)
  {
LABEL_33:
    v63 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(pkShapeType:)", 18, 2);
    v64 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeType.swift", 98, 2);
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unexpected shape type (%@)", 26, 2);
    v66 = String._bridgeToObjectiveC()();

    [v67 handleFailureInFunction:v64 file:v65 lineNumber:35 isFatal:0 format:v66 args:v63];

    swift_setDeallocating();
    swift_arrayDestroy();
    return 0;
  }

  v47 = 0;
  while (1)
  {
    LODWORD(v2) = sub_100020E58(&v28[5 * v47], v28[5 * v47 + 3]);
    v48 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v7 = *v45;
    v49 = *(v48 + 16);
    v50 = __OFADD__(*v45, v49);
    v51 = *v45 + v49;
    if (v50)
    {
      break;
    }

    v2 = v5[4];
    if (v2 >= v51)
    {
      goto LABEL_25;
    }

    if (v2 + 0x4000000000000000 < 0)
    {
      goto LABEL_37;
    }

    v52 = v5[5];
    if (2 * v2 > v51)
    {
      v51 = 2 * v2;
    }

    v5[4] = v51;
    if ((v51 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_38;
    }

    v53 = v28;
    v54 = v1;
    v55 = v48;
    v56 = swift_slowAlloc();
    v57 = v56;
    v5[5] = v56;
    if (v52)
    {
      if (v56 != v52 || v56 >= &v52[8 * v7])
      {
        memmove(v56, v52, 8 * v7);
      }

      LODWORD(v2) = v5;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v48 = v55;
      v1 = v54;
      v28 = v53;
LABEL_25:
      v57 = v5[5];
      if (!v57)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    v48 = v55;
    v1 = v54;
    v28 = v53;
    if (!v57)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_26:
    v59 = *(v48 + 16);
    if (v59)
    {
      v60 = (v48 + 32);
      v61 = *v45;
      while (1)
      {
        v62 = *v60++;
        *&v57[8 * v61] = v62;
        v61 = *v45 + 1;
        if (__OFADD__(*v45, 1))
        {
          break;
        }

        *v45 = v61;
        if (!--v59)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      break;
    }

LABEL_10:

    if (++v47 == v46)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_5:
  v8 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10146CA70;
  *(v9 + 56) = &type metadata for Int32;
  *(v9 + 64) = &protocol witness table for Int32;
  *(v9 + 32) = v2;
  v10 = sub_1005CF000();
  *(v9 + 96) = v10;
  v11 = sub_1005CF04C();
  *(v9 + 104) = v11;
  *(v9 + 72) = v28;
  *(v9 + 136) = &type metadata for String;
  v12 = sub_1000053B0();
  *(v9 + 112) = v5;
  *(v9 + 120) = v7;
  *(v9 + 176) = &type metadata for UInt;
  *(v9 + 184) = &protocol witness table for UInt;
  *(v9 + 144) = v12;
  *(v9 + 152) = 31;
  v13 = v68;
  *(v9 + 216) = v10;
  *(v9 + 224) = v11;
  *(v9 + 192) = v13;
  v14 = v28;
  v15 = v13;
  v16 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v9);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v17 = static os_log_type_t.error.getter();
  sub_100005404(v8, &_mh_execute_header, v17, "Unexpected scratch out shape type", 33, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  v19 = __VaListBuilder.va_list()();
  StaticString.description.getter("init(pkShapeType:)", 18, 2);
  v20 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeType.swift", 98, 2);
  v21 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unexpected scratch out shape type", 33, 2);
  v22 = String._bridgeToObjectiveC()();

  [v1 handleFailureInFunction:v20 file:v21 lineNumber:31 isFatal:0 format:v22 args:v19];

  return 0;
}

unint64_t sub_100D63CB0(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

unint64_t sub_100D63CC0()
{
  result = qword_101A1E610;
  if (!qword_101A1E610)
  {
    result = swift_getWitnessTable(byte_1014B0560, &type metadata for CRLFreehandDrawingShapeTypeData, v0, v1);
    atomic_store(result, &qword_101A1E610);
  }

  return result;
}

unint64_t sub_100D63D14()
{
  result = qword_101A1E618;
  if (!qword_101A1E618)
  {
    result = swift_getWitnessTable(byte_1014B0528, &type metadata for CRLFreehandDrawingShapeTypeData, v0, v1);
    atomic_store(result, &qword_101A1E618);
  }

  return result;
}

void sub_100D63D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v53 = a3;
  v43 = a1;
  v5 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v5 - 8);
  v47 = &v42 - v6;
  v7 = sub_1005B981C(&unk_101A07790, &unk_101486BE8);
  v8 = *(v7 - 8);
  v54 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = sub_100F89404();
  v50 = v12;
  v51 = v11;
  v13 = sub_100F89924();
  v48 = v14;
  v49 = v13;
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v46 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:1];

  v17 = [objc_opt_self() mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = *(v8 + 16);
  v42(v10, a1, v7);
  v21 = *(v8 + 80);
  v22 = swift_allocObject();
  v23 = *(v8 + 32);
  v44 = v8 + 32;
  v45 = v23;
  v24 = v7;
  v23((v22 + ((v21 + 16) & ~v21)), v10, v7);
  v25 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100D64208;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_1018A3360;
  v26 = _Block_copy(aBlock);

  v27 = [objc_opt_self() actionWithTitle:v25 style:0 handler:v26];
  _Block_release(v26);

  v28 = v46;
  [v46 addAction:v27];

  v29 = type metadata accessor for TaskPriority();
  v30 = v47;
  (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
  v31 = v10;
  v32 = v10;
  v33 = v24;
  v42(v31, v43, v24);
  type metadata accessor for MainActor();
  v34 = v52;

  v35 = v28;
  v36 = static MainActor.shared.getter();
  v37 = swift_allocObject();
  *(v37 + 2) = v36;
  *(v37 + 3) = &protocol witness table for MainActor;
  *(v37 + 4) = v53;
  *(v37 + 5) = v34;
  v39 = v50;
  v38 = v51;
  *(v37 + 6) = v35;
  *(v37 + 7) = v38;
  v40 = v48;
  v41 = v49;
  *(v37 + 8) = v39;
  *(v37 + 9) = v41;
  *(v37 + 10) = v40;
  v45(&v37[(v21 + 88) & ~v21], v32, v33);
  sub_10064191C(0, 0, v30, &unk_1014B0608, v37);
}

uint64_t sub_100D64208()
{
  sub_1005B981C(&unk_101A07790, &unk_101486BE8);
  sub_1005B981C(&unk_101A07790, &unk_101486BE8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100D642A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 480) = v17;
  *(v8 + 464) = v16;
  *(v8 + 448) = a7;
  *(v8 + 456) = a8;
  *(v8 + 440) = a6;
  v11 = type metadata accessor for CancellationError();
  *(v8 + 488) = v11;
  *(v8 + 496) = *(v11 - 8);
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = type metadata accessor for MainActor();
  *(v8 + 520) = static MainActor.shared.getter();
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  *(v8 + 528) = v12;
  *v12 = v8;
  v12[1] = sub_100D64434;

  return v14(a6);
}

uint64_t sub_100D64434()
{
  *(*v1 + 536) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100D64604;
  }

  else
  {
    v4 = sub_100D64590;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100D64590()
{
  v1 = *(v0 + 440);

  sub_1011047E4(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D64604()
{
  v54 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 464);
  v3 = *(v0 + 472);
  v4 = *(v0 + 448);
  v5 = *(v0 + 456);

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 32) = v4;
  v51 = inited + 32;
  *(inited + 40) = v5;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 64) = v7;
  *(inited + 72) = v2;
  *(inited + 80) = v3;
  swift_getErrorValue();

  v8 = Error.localizedDescription.getter();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  *(v0 + 432) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 496);
    v10 = *(v0 + 504);
    v12 = *(v0 + 488);

    (*(v11 + 8))(v10, v12);
    goto LABEL_30;
  }

  v52 = objc_opt_self();
  LODWORD(v13) = [v52 _atomicIncrementAssertCount];
  v53 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v53, "Failed to present alert for board error %@ - %@: %@", 51, 2u);
  StaticString.description.getter("withErrorOpeningAlert(for:error:presentationHandler:)", 53, 2);
  v14 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLErrorOpeningAlert.swift", 96, 2);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v15 lastPathComponent];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_37;
  }

LABEL_4:
  v20 = static OS_os_log.crlAssert;
  v50 = v0;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_10146CA70;
  *(v21 + 56) = &type metadata for Int32;
  *(v21 + 64) = &protocol witness table for Int32;
  *(v21 + 32) = v13;
  v22 = sub_1005CF000();
  *(v21 + 96) = v22;
  v23 = sub_1005CF04C();
  *(v21 + 72) = v14;
  *(v21 + 136) = &type metadata for String;
  *(v21 + 144) = v7;
  *(v21 + 104) = v23;
  *(v21 + 112) = v17;
  *(v21 + 120) = v19;
  *(v21 + 176) = &type metadata for UInt;
  *(v21 + 184) = &protocol witness table for UInt;
  *(v21 + 152) = 75;
  v24 = v53;
  *(v21 + 216) = v22;
  *(v21 + 224) = v23;
  *(v21 + 192) = v24;
  v25 = v14;
  v26 = v24;
  v27 = static os_log_type_t.error.getter();
  sub_100005404(v20, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v20, &_mh_execute_header, v28, "Failed to present alert for board error %@ - %@: %@", 51, 2, inited);

  type metadata accessor for __VaListBuilder();
  v14 = swift_allocObject();
  v14[2] = 8;
  v14[3] = 0;
  v29 = v14 + 3;
  v14[4] = 0;
  v14[5] = 0;
  v30 = *(inited + 16);
  inited = v51;
  if (v30)
  {
    v17 = 0;
    v0 = 40;
    while (1)
    {
      v31 = (v51 + 40 * v17);
      v19 = v31[3];
      LODWORD(v13) = sub_100020E58(v31, v19);
      v32 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v33 = *v29;
      v34 = *(v32 + 16);
      v35 = __OFADD__(*v29, v34);
      v36 = *v29 + v34;
      if (v35)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        swift_once();
        goto LABEL_4;
      }

      v13 = v14[4];
      if (v13 >= v36)
      {
        goto LABEL_21;
      }

      if (v13 + 0x4000000000000000 < 0)
      {
        goto LABEL_35;
      }

      v19 = v14[5];
      if (2 * v13 > v36)
      {
        v36 = 2 * v13;
      }

      v14[4] = v36;
      if ((v36 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_36;
      }

      v7 = v32;
      v37 = swift_slowAlloc();
      v38 = v37;
      v14[5] = v37;
      if (v19)
      {
        break;
      }

      v32 = v7;
      if (!v38)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v40 = *(v32 + 16);
      if (v40)
      {
        v41 = (v32 + 32);
        v42 = *v29;
        while (1)
        {
          v43 = *v41++;
          *&v38[8 * v42] = v43;
          v42 = *v29 + 1;
          if (__OFADD__(*v29, 1))
          {
            break;
          }

          *v29 = v42;
          if (!--v40)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_6:

      if (++v17 == v30)
      {
        goto LABEL_29;
      }
    }

    if (v37 != v19 || v37 >= &v19[8 * v33])
    {
      memmove(v37, v19, 8 * v33);
    }

    LODWORD(v13) = v14;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v32 = v7;
LABEL_21:
    v38 = v14[5];
    if (!v38)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_29:
  v44 = __VaListBuilder.va_list()();
  StaticString.description.getter("withErrorOpeningAlert(for:error:presentationHandler:)", 53, 2);
  v45 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLErrorOpeningAlert.swift", 96, 2);
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Failed to present alert for board error %@ - %@: %@", 51, 2);
  v47 = String._bridgeToObjectiveC()();

  [v52 handleFailureInFunction:v45 file:v46 lineNumber:75 isFatal:0 format:v47 args:v44];

  v0 = v50;
LABEL_30:
  [*(v0 + 440) dismissViewControllerAnimated:0 completion:0];
  *(v0 + 544) = 0;
  sub_1005B981C(&unk_101A07790, &unk_101486BE8);
  CheckedContinuation.resume(returning:)();

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100D64C70(uint64_t a1)
{
  sub_1005B981C(&unk_101A07790, &unk_101486BE8);
  v3 = v1[3];
  v11 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100D642A0(a1, v11, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100D64DB0(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for MergeResult();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData;
  swift_beginAccess();
  sub_100D6513C(a1 + v11, v6, v12);
  swift_beginAccess();
  sub_100D651A0(v13);
  CRStruct_5.merge(_:)();
  sub_100D651F8(v6, type metadata accessor for CRLUserBoardMetadataCRDTData);
  (*(v8 + 8))(v10, v7);
  result = swift_endAccess();
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity);
  if (*(a1 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) > v15)
  {
    v15 = *(a1 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity);
  }

  *(v2 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_minRequiredVersionForFullFidelity) = v15;
  return result;
}

uint64_t sub_100D64F74()
{
  sub_100D651F8(v0 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
  sub_100D651F8(v0 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_crdtData, type metadata accessor for CRLUserBoardMetadataCRDTData);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLUserBoardMetadataData(uint64_t a1)
{
  result = qword_101A1E648;
  if (!qword_101A1E648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D65064(uint64_t a1)
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CRLUserBoardMetadataCRDTData(319);
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

uint64_t sub_100D6513C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for CRLUserBoardMetadataCRDTData(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100D651A0(__n128 a1)
{
  result = qword_101A1E728;
  if (!qword_101A1E728)
  {
    v4 = type metadata accessor for CRLUserBoardMetadataCRDTData(255);
    result = swift_getWitnessTable(byte_1014DCE78, v4, v1, v2);
    atomic_store(result, &qword_101A1E728);
  }

  return result;
}

uint64_t sub_100D651F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_100D65268(unsigned __int8 a1)
{
  v2 = a1;
  v3 = (*((swift_isaMask & *v1) + 0x4F8))();
  return v3 != 6 && v3 == v2;
}

void *sub_100D652D4()
{
  v1 = OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
  v3 = v2;
  if (v2)
  {
    goto LABEL_6;
  }

  v4 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v6 = result;
    v7 = result[1];

    v7(v13, v4, v6);
    v27 = v13[12];
    v28 = v13[13];
    v29 = v14;
    v23 = v13[8];
    v24 = v13[9];
    v25 = v13[10];
    v26 = v13[11];
    v19 = v13[4];
    v20 = v13[5];
    v21 = v13[6];
    v22 = v13[7];
    v15 = v13[0];
    v16 = v13[1];
    v17 = v13[2];
    v18 = v13[3];
    if (sub_1000C0FB4(&v15) == 1)
    {

      v3 = 0;
    }

    else
    {
      v30[12] = v27;
      v30[13] = v28;
      v31 = v29;
      v30[8] = v23;
      v30[9] = v24;
      v30[10] = v25;
      v30[11] = v26;
      v30[4] = v19;
      v30[5] = v20;
      v30[6] = v21;
      v30[7] = v22;
      v30[0] = v15;
      v30[1] = v16;
      v30[2] = v17;
      v30[3] = v18;

      v9 = (*((swift_isaMask & *v0) + 0x4B8))(v8);
      v3 = sub_100B946C8(v30, v9 & 1);
      sub_100D65AA8(v13);
      v10 = *(v0 + v1);
      *(v0 + v1) = v3;
      v11 = v3;
    }

LABEL_6:
    v12 = v2;
    return v3;
  }

  __break(1u);
  return result;
}

void sub_100D654FC(void *a1)
{
  v2 = v1;
  if (sub_1011255D0())
  {
    v3 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = v4;
      if (a1)
      {
        v6 = a1;

        sub_100B965E4(v6, &v12);
        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v12, v7);
        v41 = v26;
        v39 = v24;
        v40 = v25;
        v35 = v20;
        v36 = v21;
        v37 = v22;
        v38 = v23;
        v31 = v16;
        v32 = v17;
        v33 = v18;
        v34 = v19;
        v27 = v12;
        v28 = v13;
        v29 = v14;
        v30 = v15;
        (*(v5 + 16))(&v27, *v3, v5);
      }

      else
      {
        sub_1005D0BD8(&v12);
        v39 = v24;
        v40 = v25;
        v41 = v26;
        v35 = v20;
        v36 = v21;
        v37 = v22;
        v38 = v23;
        v31 = v16;
        v32 = v17;
        v33 = v18;
        v34 = v19;
        v27 = v12;
        v28 = v13;
        v29 = v14;
        v30 = v15;
        v8 = *v3;
        v9 = *(v5 + 16);

        v9(&v27, v8, v5);
      }

      v10 = *(v2 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
      *(v2 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke) = a1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

id sub_100D658B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLStyledItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLStyledItem(uint64_t a1)
{
  result = qword_101A1E760;
  if (!qword_101A1E760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D65AA8(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A106C0, &unk_1014907B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100D65B10(void *a1@<X8>)
{
  v2 = v1;
  *a1 = _swiftEmptySetSingleton;
  sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  if ((*(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline + 8) & 1) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline);
    swift_getKeyPath();
    sub_100E6DE34(&v20, 0x6E696C7265646E75, 0xE900000000000065);

    __chkstk_darwin(v4);
    sub_100824704();
    swift_getKeyPath();
    v20 = v3;
    LOBYTE(v21) = 0;
    sub_1005B981C(qword_101A0CF60, "87&");
    sub_100824758();
    CRAttributedString.Attributes.subscript.setter();
  }

  if ((*(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough + 8) & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough);
    swift_getKeyPath();
    sub_100E6DE34(&v20, 0x6874656B69727473, 0xED00006867756F72);

    __chkstk_darwin(v6);
    sub_10096227C();
    swift_getKeyPath();
    v20 = v5;
    LOBYTE(v21) = 0;
    sub_1005B981C(qword_101A0CF60, "87&");
    sub_1009622D0();
    CRAttributedString.Attributes.subscript.setter();
  }

  if ((*(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize + 4) & 1) == 0)
  {
    v7 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize);
    swift_getKeyPath();
    sub_100E6DE34(&v20, 0x657A6953746E6F66, 0xE800000000000000);

    __chkstk_darwin(v8);
    sub_10082465C();
    swift_getKeyPath();
    LODWORD(v20) = v7;
    BYTE4(v20) = 0;
    sub_1005B981C(qword_101A0CF60, "87&");
    sub_1008246B0();
    CRAttributedString.Attributes.subscript.setter();
  }

  v9 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName + 8);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName);
    swift_getKeyPath();

    sub_100E6DE34(&v20, 0x656D614E746E6F66, 0xE800000000000000);

    __chkstk_darwin(v11);
    sub_100962324();
    swift_getKeyPath();

    v20 = sub_100CB23B4(v10, v9);
    v21 = v12;
    v22 = 0;
    sub_1005B981C(qword_101A0CF60, "87&");
    sub_1009623E4();
    CRAttributedString.Attributes.subscript.setter();
  }

  v13 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
  if (v13)
  {
    swift_getKeyPath();
    v14 = v13;
    sub_100E6DE34(&v20, 0x6574636172616863, 0xED00006C6C694672);

    __chkstk_darwin(v15);
    sub_10082489C();
    swift_getKeyPath();

    sub_101247234(v14, &v20);
    sub_1005B981C(qword_101A0CF60, "87&");
    sub_1008248F0();
    CRAttributedString.Attributes.subscript.setter();
  }

  v16 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold);
  if (v16 != 2)
  {
    swift_getKeyPath();
    sub_100E6DE34(&v20, 1684828002, 0xE400000000000000);

    __chkstk_darwin(v17);
    sub_1008244A8();
    swift_getKeyPath();
    LOBYTE(v20) = v16;
    sub_1005B981C(qword_101A0CF60, "87&");
    sub_1008244FC();
    CRAttributedString.Attributes.subscript.setter();
  }

  v18 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_italic);
  if (v18 != 2)
  {
    swift_getKeyPath();
    sub_100E6DE34(&v20, 0x63696C617469, 0xE600000000000000);

    __chkstk_darwin(v19);
    sub_1008245B4();
    swift_getKeyPath();
    LOBYTE(v20) = v18;
    sub_1005B981C(qword_101A0CF60, "87&");
    sub_100824608();
    CRAttributedString.Attributes.subscript.setter();
  }
}

void sub_100D661E4(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v2 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_baselineShift;
      goto LABEL_24;
    case 1:
      v3 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold;
      goto LABEL_28;
    case 2:
      v6 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalization;
      goto LABEL_37;
    case 3:
      v3 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalizationUsesLinguistics;
      goto LABEL_28;
    case 4:
      v7 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
      if (!v7)
      {
        return;
      }

      goto LABEL_48;
    case 5:
      v3 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFillShouldFillTextContainer;
      goto LABEL_28;
    case 6:
      v7 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterStroke);
      if (!v7)
      {
        return;
      }

      goto LABEL_48;
    case 7:
      v4 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_compatibilityFontName;
      goto LABEL_34;
    case 8:
      v4 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_emphasisMarks;
      goto LABEL_34;
    case 9:
      v4 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName;
      goto LABEL_34;
    case 10:
      return;
    case 11:
      v2 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize;
      goto LABEL_24;
    case 12:
      v3 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_isNamedPointSize;
      goto LABEL_28;
    case 13:
      v3 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_italic;
LABEL_28:
      v12 = *(v1 + v3);
      if (v12 != 2)
      {
        [objc_allocWithZone(NSNumber) initWithBool:v12 & 1];
      }

      return;
    case 14:
      v2 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_kerning;
      goto LABEL_24;
    case 15:
      v4 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_language;
      goto LABEL_34;
    case 16:
      if ((*(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_ligatures + 4) & 1) == 0)
      {
        [objc_allocWithZone(NSNumber) initWithInt:*(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_ligatures)];
      }

      return;
    case 17:
      v4 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_pseudoFont;
LABEL_34:
      if (*(v1 + v4 + 8))
      {

        String._bridgeToObjectiveC()();
      }

      return;
    case 18:
      v7 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_shadow);
      if (!v7)
      {
        return;
      }

      goto LABEL_48;
    case 19:
      v5 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
      goto LABEL_43;
    case 20:
      v7 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethruColor);
      if (!v7)
      {
        return;
      }

      goto LABEL_48;
    case 21:
      v2 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethruWidth;
      goto LABEL_24;
    case 22:
      v6 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_superscript;
LABEL_37:
      v13 = v1 + v6;
      if ((*(v13 + 8) & 1) == 0)
      {
        [objc_allocWithZone(NSNumber) initWithUnsignedInteger:*v13];
      }

      return;
    case 23:
      v7 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_textBackground);
      if (!v7)
      {
        return;
      }

      goto LABEL_48;
    case 24:
      v2 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_tracking;
      goto LABEL_24;
    case 25:
      v5 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
      goto LABEL_43;
    case 26:
      v7 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineColor);
      if (v7)
      {
LABEL_48:
        v15 = v7;
      }

      break;
    case 27:
      v2 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineWidth;
LABEL_24:
      v8 = (v1 + v2);
      if ((v8[1] & 1) == 0)
      {
        v9 = *v8;
        v10 = objc_allocWithZone(NSNumber);
        LODWORD(v11) = v9;
        [v10 initWithFloat:v11];
      }

      break;
    case 28:
      v5 = OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection;
LABEL_43:
      v14 = v1 + v5;
      if ((*(v14 + 8) & 1) == 0)
      {
        [objc_allocWithZone(NSNumber) initWithInteger:*v14];
      }

      break;
    default:
      sub_100BE5D8C();
      swift_unknownObjectRetain();
      break;
  }
}

id sub_100D66600(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_baselineShift];
  *v2 = 0;
  v2[4] = 1;
  v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold] = 2;
  v3 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalization];
  *v3 = 0;
  v3[8] = 1;
  v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalizationUsesLinguistics] = 2;
  *&v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill] = 0;
  v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFillShouldFillTextContainer] = 2;
  *&v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterStroke] = 0;
  v4 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_compatibilityFontName];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_emphasisMarks];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontFeatures] = 0;
  v7 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize];
  *v7 = 0;
  v7[4] = 1;
  v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_isNamedPointSize] = 2;
  v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_italic] = 2;
  v8 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_kerning];
  *v8 = 0;
  v8[4] = 1;
  v9 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_language];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_ligatures];
  *v10 = 0;
  v10[4] = 1;
  v11 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_pseudoFont];
  *v11 = 0;
  v11[1] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_shadow] = 0;
  v12 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough];
  *v12 = 0;
  v12[8] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethruColor] = 0;
  v13 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethruWidth];
  *v13 = 0;
  v13[4] = 1;
  v14 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_superscript];
  *v14 = 0;
  v14[8] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_textBackground] = 0;
  v15 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_tracking];
  *v15 = 0;
  v15[4] = 1;
  v16 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline];
  *v16 = 0;
  v16[8] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineColor] = 0;
  v17 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineWidth];
  *v17 = 0;
  v17[4] = 1;
  v18 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection];
  *v18 = 0;
  v18[8] = 1;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for CRLWPCharacterStyle();
  return objc_msgSendSuper2(&v20, "init");
}

void sub_100D66830()
{

  v1 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineColor);
}

id sub_100D66924(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLWPCharacterStyle();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100D66A7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_baselineShift + 4);
  if (*(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_baselineShift + 4))
  {
    if (!*(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_baselineShift + 4))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_baselineShift) != *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_baselineShift))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v4 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold);
  v5 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold);
  if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (v5 == 2 || ((v5 ^ v4) & 1) != 0)
    {
      return v2;
    }
  }

  v2 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalization + 8);
  if (*(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalization + 8))
  {
    if (!*(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalization + 8))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalization) != *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalization))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v6 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalizationUsesLinguistics);
  v7 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_capitalizationUsesLinguistics);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
    {
      return v2;
    }
  }

  v8 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
  v9 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a1;
    v11 = a2;
    sub_100006370(0, &qword_101A2BF30, off_10182F808);
    v12 = v9;
    v13 = v8;
    v14 = static NSObject.== infix(_:_:)();

    a1 = v10;
    a2 = v11;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v15 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFillShouldFillTextContainer);
  v16 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFillShouldFillTextContainer);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else
  {
    v17 = 0;
    if (v16 == 2 || ((v16 ^ v15) & 1) != 0)
    {
      return v17;
    }
  }

  v18 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterStroke);
  v19 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterStroke);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = a1;
    v21 = a2;
    sub_100006370(0, &qword_101A0C7F0, off_10182F998);
    v22 = v19;
    v23 = v18;
    v24 = static NSObject.== infix(_:_:)();

    a1 = v20;
    a2 = v21;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v25 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_compatibilityFontName + 8);
  v26 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_compatibilityFontName + 8);
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_compatibilityFontName) != *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_compatibilityFontName) || v25 != v26)
    {
      v27 = a1;
      v28 = a2;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v28;
      v30 = v29;
      a1 = v27;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  v31 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_emphasisMarks + 8);
  v32 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_emphasisMarks + 8);
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_emphasisMarks) != *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_emphasisMarks) || v31 != v32)
    {
      v33 = a1;
      v34 = a2;
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v34;
      v36 = v35;
      a1 = v33;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  v37 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName + 8);
  v38 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName + 8);
  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName) != *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName) || v37 != v38)
    {
      v39 = a1;
      v40 = a2;
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v40;
      v42 = v41;
      a1 = v39;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v38)
  {
    return 0;
  }

  v43 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontFeatures);
  if (*(a1 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontFeatures))
  {
    if (!v43)
    {
      return 0;
    }

    v44 = a1;
    v45 = a2;

    v47 = sub_100673D60(v46, v43);

    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v44 = a1;
    v45 = a2;
    if (v43)
    {
      return 0;
    }
  }

  v17 = *(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize + 4);
  if (*(v44 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize + 4))
  {
    if (!*(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize + 4))
    {
      return v17;
    }
  }

  else
  {
    if (*(v44 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize) != *(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize))
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v48 = *(v44 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_isNamedPointSize);
  v49 = *(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_isNamedPointSize);
  if (v48 == 2)
  {
    v50 = v49 == 2;
    v51 = v44;
    if (!v50)
    {
      return 0;
    }
  }

  else
  {
    v17 = 0;
    if (v49 == 2)
    {
      return v17;
    }

    v52 = v49 ^ v48;
    v51 = v44;
    if (v52)
    {
      return v17;
    }
  }

  v53 = v51;
  v54 = *(v51 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_italic);
  v55 = v45;
  v56 = *(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_italic);
  if (v54 == 2)
  {
    v50 = v56 == 2;
    v57 = v45;
    v58 = v53;
    if (!v50)
    {
      return 0;
    }
  }

  else
  {
    v17 = 0;
    if (v56 == 2)
    {
      return v17;
    }

    v59 = v56 ^ v54;
    v57 = v45;
    v58 = v53;
    if (v59)
    {
      return v17;
    }
  }

  v60 = v58 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_kerning;
  v61 = v57 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_kerning;
  v17 = *(v61 + 4);
  if (*(v60 + 4))
  {
    if (!*(v61 + 4))
    {
      return v17;
    }
  }

  else
  {
    if (*v60 != *v61)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v62 = *(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_language + 8);
  v63 = *(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_language + 8);
  if (v62)
  {
    if (!v63 || (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_language) != *(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_language) || v62 != v63) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v63)
  {
    return 0;
  }

  v17 = *(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_ligatures + 4);
  if (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_ligatures + 4))
  {
    if (!*(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_ligatures + 4))
    {
      return v17;
    }
  }

  else
  {
    if (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_ligatures) != *(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_ligatures))
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v64 = *(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_pseudoFont + 8);
  v65 = *(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_pseudoFont + 8);
  if (v64)
  {
    if (!v65 || (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_pseudoFont) != *(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_pseudoFont) || v64 != v65) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v65)
  {
    return 0;
  }

  v66 = *(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_shadow);
  v67 = *(v45 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_shadow);
  if (v66)
  {
    if (!v67)
    {
      return 0;
    }

    sub_100006370(0, &unk_101A11F40, off_10182F940);
    v68 = v67;
    v69 = v66;
    v70 = static NSObject.== infix(_:_:)();

    if ((v70 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v67)
  {
    return 0;
  }

  v17 = *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough + 8);
  if (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough + 8))
  {
    if (!*(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough + 8))
    {
      return v17;
    }
  }

  else
  {
    if (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough) != *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough))
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v17 = *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_superscript + 8);
  if (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_superscript + 8))
  {
    if (!*(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_superscript + 8))
    {
      return v17;
    }
  }

  else
  {
    if (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_superscript) != *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_superscript))
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v71 = *(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_textBackground);
  v72 = *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_textBackground);
  if (v71)
  {
    if (!v72)
    {
      return 0;
    }

    sub_100006370(0, &qword_101A00EB0, off_10182F7B0);
    v73 = v72;
    v74 = v71;
    v75 = static NSObject.== infix(_:_:)();

    if ((v75 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v72)
  {
    return 0;
  }

  v17 = *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_tracking + 4);
  if (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_tracking + 4))
  {
    if (!*(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_tracking + 4))
    {
      return v17;
    }
  }

  else
  {
    if (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_tracking) != *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_tracking))
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v17 = *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline + 8);
  if (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline + 8))
  {
    if (!*(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline + 8))
    {
      return v17;
    }
  }

  else
  {
    if (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline) != *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline))
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v76 = *(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineColor);
  v77 = *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineColor);
  if (v76)
  {
    if (!v77)
    {
      return 0;
    }

    sub_100006370(0, &qword_101A00EB0, off_10182F7B0);
    v78 = v77;
    v79 = v76;
    v80 = static NSObject.== infix(_:_:)();

    if ((v80 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_147;
  }

  if (v77)
  {
    return 0;
  }

LABEL_147:
  v17 = *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineWidth + 4);
  if ((*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineWidth + 4) & 1) == 0)
  {
    if (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineWidth) != *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineWidth))
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }

LABEL_155:
    v17 = *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection + 8);
    if ((*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection + 8) & 1) == 0)
    {
      return (*(v53 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection) == *(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection)) & ~v17;
    }

    return v17;
  }

  if (*(v55 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underlineWidth + 4))
  {
    goto LABEL_155;
  }

  return v17;
}

NSString sub_100D672A8()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD80C8 = result;
  return result;
}

uint64_t sub_100D672E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100D672F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100D67350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

char *sub_100D673B0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for CRLRepAnimation(0);
  __chkstk_darwin(v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000630C(v2 + 24, &v55);
  sub_1005B981C(&qword_1019FA4B0, &unk_101472F40);
  if (swift_dynamicCast())
  {
    v57 = *v54;
    memcpy(v56, &v54[3], sizeof(v56));
    sub_100D3F330(v2, a1);
    v54[3] = &type metadata for CRLBasicLayerAnimation.Def;
    v54[4] = sub_1005F907C();
    v8 = swift_allocObject();
    v54[0] = v8;
    *(v8 + 16) = v57;
    *(v8 + 32) = a2;
    memcpy((v8 + 40), v56, 0x114uLL);
    sub_100005070((a1 + 24));
    return sub_100050F74(v54, a1 + 24);
  }

  v52 = a1;
  memset(v54, 0, 300);
  sub_10000CAAC(v54, &qword_1019FA4B8, &unk_10147CA90);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v51 = v2;
  v11 = inited;
  sub_100D3F330(v2, v7);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_1000053B0();
  *(v11 + 32) = v12;
  v53 = v11 + 32;
  *(v11 + 64) = v15;
  *(v11 + 40) = v14;
  v49 = objc_opt_self();
  LODWORD(v16) = [v49 _atomicIncrementAssertCount];
  v54[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v11, v54, "Incorrect API usage. Tried to call duration() modifier on a non-basic layer animation %@.", 89, 2u);
  StaticString.description.getter("duration(_:)", 12, 2);
  v17 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Canvas/CRLRepAnimationModifiable.swift", 118, 2);
  v18 = String._bridgeToObjectiveC()();

  v19 = [v18 lastPathComponent];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (qword_1019F20A0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v23 = static OS_os_log.crlAssert;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_10146CA70;
  *(v24 + 56) = &type metadata for Int32;
  *(v24 + 64) = &protocol witness table for Int32;
  *(v24 + 32) = v16;
  v25 = sub_1005CF000();
  *(v24 + 96) = v25;
  v26 = sub_1005CF04C();
  *(v24 + 72) = v17;
  *(v24 + 136) = &type metadata for String;
  *(v24 + 144) = v15;
  *(v24 + 104) = v26;
  *(v24 + 112) = v20;
  *(v24 + 120) = v22;
  *(v24 + 176) = &type metadata for UInt;
  *(v24 + 184) = &protocol witness table for UInt;
  *(v24 + 152) = 92;
  v27 = v54[0];
  *(v24 + 216) = v25;
  *(v24 + 224) = v26;
  *(v24 + 192) = v27;
  v28 = v17;
  v29 = v27;
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
  swift_setDeallocating();
  v48 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v31, "Incorrect API usage. Tried to call duration() modifier on a non-basic layer animation %@.", 89, 2, v11);

  type metadata accessor for __VaListBuilder();
  v17 = swift_allocObject();
  v17[2] = 8;
  v17[3] = 0;
  v16 = v17 + 3;
  v17[4] = 0;
  v17[5] = 0;
  v50 = v11;
  v22 = *(v11 + 16);
  if (!v22)
  {
LABEL_28:
    v44 = __VaListBuilder.va_list()();
    StaticString.description.getter("duration(_:)", 12, 2);
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Canvas/CRLRepAnimationModifiable.swift", 118, 2);
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Incorrect API usage. Tried to call duration() modifier on a non-basic layer animation %@.", 89, 2);
    v47 = String._bridgeToObjectiveC()();

    [v49 handleFailureInFunction:v45 file:v46 lineNumber:92 isFatal:0 format:v47 args:v44];

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_100D3F330(v51, v52);
  }

  v11 = 0;
  v15 = 40;
  while (1)
  {
    sub_100020E58((v53 + 40 * v11), *(v53 + 40 * v11 + 24));
    v32 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v20 = *v16;
    v33 = *(v32 + 16);
    v34 = __OFADD__(*v16, v33);
    v35 = *v16 + v33;
    if (v34)
    {
      goto LABEL_30;
    }

    v36 = v32;
    v37 = v17[4];
    if (v37 >= v35)
    {
      goto LABEL_21;
    }

    if (v37 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v38 = v17[5];
    if (2 * v37 > v35)
    {
      v35 = 2 * v37;
    }

    v17[4] = v35;
    if ((v35 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    result = swift_slowAlloc();
    v17[5] = result;
    if (v38)
    {
      if (result != v38 || result >= &v38[8 * v20])
      {
        memmove(result, v38, 8 * v20);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_21:
      result = v17[5];
    }

    if (!result)
    {
      break;
    }

    v40 = *(v36 + 16);
    if (v40)
    {
      v41 = (v36 + 32);
      v42 = *v16;
      while (1)
      {
        v43 = *v41++;
        *&result[8 * v42] = v43;
        v42 = *v16 + 1;
        if (__OFADD__(*v16, 1))
        {
          break;
        }

        *v16 = v42;
        if (!--v40)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    if (++v11 == v22)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

char *sub_100D67A6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for CRLRepAnimation(0);
  __chkstk_darwin(v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000630C((v3 + 3), &v53);
  sub_1005B981C(&qword_1019FA4B0, &unk_101472F40);
  if (swift_dynamicCast())
  {
    memcpy(v54, v52, 0x12CuLL);
    objc_storeStrong(v54, a1);
    sub_100D3F330(v3, a2);
    *(&v52[1] + 1) = &type metadata for CRLBasicLayerAnimation.Def;
    *&v52[2] = sub_1005F907C();
    *&v52[0] = swift_allocObject();
    sub_1005F8AB8(v54, *&v52[0] + 16);
    sub_100005070((a2 + 24));
    sub_100050F74(v52, a2 + 24);
    return sub_1005F8B14(v54);
  }

  v50 = a2;
  memset(v52, 0, 300);
  sub_10000CAAC(v52, &qword_1019FA4B8, &unk_10147CA90);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v49 = v3;
  sub_100D3F330(v3, v8);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(inited + 56) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 32) = v11;
  v51 = inited + 32;
  *(inited + 64) = v14;
  *(inited + 40) = v13;
  v47 = objc_opt_self();
  LODWORD(v3) = [v47 _atomicIncrementAssertCount];
  v54[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, v54, "Incorrect API usage. Tried to call timingFunction() modifier on a non-basic layer animation %@.", 95, 2u);
  StaticString.description.getter("timingFunction(_:)", 18, 2);
  v15 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Canvas/CRLRepAnimationModifiable.swift", 118, 2);
  v16 = String._bridgeToObjectiveC()();

  v17 = [v16 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (qword_1019F20A0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v21 = static OS_os_log.crlAssert;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_10146CA70;
  *(v22 + 56) = &type metadata for Int32;
  *(v22 + 64) = &protocol witness table for Int32;
  *(v22 + 32) = v3;
  v23 = sub_1005CF000();
  *(v22 + 96) = v23;
  v24 = sub_1005CF04C();
  *(v22 + 72) = v15;
  *(v22 + 136) = &type metadata for String;
  *(v22 + 144) = v14;
  *(v22 + 104) = v24;
  *(v22 + 112) = v18;
  *(v22 + 120) = v20;
  *(v22 + 176) = &type metadata for UInt;
  *(v22 + 184) = &protocol witness table for UInt;
  *(v22 + 152) = 106;
  v25 = v54[0];
  *(v22 + 216) = v23;
  *(v22 + 224) = v24;
  *(v22 + 192) = v25;
  v26 = v15;
  v27 = v25;
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v22);
  swift_setDeallocating();
  v46 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v29, "Incorrect API usage. Tried to call timingFunction() modifier on a non-basic layer animation %@.", 95, 2, inited);

  type metadata accessor for __VaListBuilder();
  v15 = swift_allocObject();
  v15[2] = 8;
  v15[3] = 0;
  v3 = v15 + 3;
  v15[4] = 0;
  v15[5] = 0;
  v48 = inited;
  v20 = *(inited + 16);
  if (!v20)
  {
LABEL_28:
    v42 = __VaListBuilder.va_list()();
    StaticString.description.getter("timingFunction(_:)", 18, 2);
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Canvas/CRLRepAnimationModifiable.swift", 118, 2);
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Incorrect API usage. Tried to call timingFunction() modifier on a non-basic layer animation %@.", 95, 2);
    v45 = String._bridgeToObjectiveC()();

    [v47 handleFailureInFunction:v43 file:v44 lineNumber:106 isFatal:0 format:v45 args:v42];

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_100D3F330(v49, v50);
  }

  inited = 0;
  v14 = 40;
  while (1)
  {
    sub_100020E58((v51 + 40 * inited), *(v51 + 40 * inited + 24));
    v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v18 = *v3;
    v31 = *(v30 + 16);
    v32 = __OFADD__(*v3, v31);
    v33 = *v3 + v31;
    if (v32)
    {
      goto LABEL_30;
    }

    v34 = v30;
    v35 = v15[4];
    if (v35 >= v33)
    {
      goto LABEL_21;
    }

    if (v35 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v36 = v15[5];
    if (2 * v35 > v33)
    {
      v33 = 2 * v35;
    }

    v15[4] = v33;
    if ((v33 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    result = swift_slowAlloc();
    v15[5] = result;
    if (v36)
    {
      if (result != v36 || result >= &v36[8 * v18])
      {
        memmove(result, v36, 8 * v18);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_21:
      result = v15[5];
    }

    if (!result)
    {
      break;
    }

    v38 = *(v34 + 16);
    if (v38)
    {
      v39 = (v34 + 32);
      v40 = *v3;
      while (1)
      {
        v41 = *v39++;
        *&result[8 * v40] = v41;
        v40 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v40;
        if (!--v38)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    if (++inited == v20)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

char *sub_100D6811C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for CRLRepAnimation(0);
  __chkstk_darwin(v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000630C(v2 + 24, &v55);
  sub_1005B981C(&qword_1019FA4B0, &unk_101472F40);
  if (swift_dynamicCast())
  {
    memcpy(v56, v54 + 8, sizeof(v56));
    sub_100D3F330(v2, a1);
    *(&v54[1] + 1) = &type metadata for CRLSpringLayerAnimation.Def;
    *&v54[2] = sub_1008DA198();
    v8 = swift_allocObject();
    *&v54[0] = v8;
    *(v8 + 16) = a2;
    memcpy((v8 + 24), v56, 0x134uLL);
    sub_100005070((a1 + 24));
    return sub_100050F74(v54, a1 + 24);
  }

  v52 = a1;
  memset(v54, 0, 304);
  *&v54[19] = 1;
  DWORD2(v54[19]) = 0;
  sub_10000CAAC(v54, &qword_101A00A20, &qword_1014D4600);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v51 = v2;
  v11 = inited;
  sub_100D3F330(v2, v7);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_1000053B0();
  *(v11 + 32) = v12;
  v53 = v11 + 32;
  *(v11 + 64) = v15;
  *(v11 + 40) = v14;
  v49 = objc_opt_self();
  LODWORD(v16) = [v49 _atomicIncrementAssertCount];
  *&v54[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v11, v54, "Incorrect API usage. Tried to call damping() modifier on a non-spring layer animation %@.", 89, 2u);
  StaticString.description.getter("damping(_:)", 11, 2);
  v17 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Canvas/CRLRepAnimationModifiable.swift", 118, 2);
  v18 = String._bridgeToObjectiveC()();

  v19 = [v18 lastPathComponent];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (qword_1019F20A0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v23 = static OS_os_log.crlAssert;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_10146CA70;
  *(v24 + 56) = &type metadata for Int32;
  *(v24 + 64) = &protocol witness table for Int32;
  *(v24 + 32) = v16;
  v25 = sub_1005CF000();
  *(v24 + 96) = v25;
  v26 = sub_1005CF04C();
  *(v24 + 72) = v17;
  *(v24 + 136) = &type metadata for String;
  *(v24 + 144) = v15;
  *(v24 + 104) = v26;
  *(v24 + 112) = v20;
  *(v24 + 120) = v22;
  *(v24 + 176) = &type metadata for UInt;
  *(v24 + 184) = &protocol witness table for UInt;
  *(v24 + 152) = 124;
  v27 = *&v54[0];
  *(v24 + 216) = v25;
  *(v24 + 224) = v26;
  *(v24 + 192) = v27;
  v28 = v17;
  v29 = v27;
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
  swift_setDeallocating();
  v48 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v31, "Incorrect API usage. Tried to call damping() modifier on a non-spring layer animation %@.", 89, 2, v11);

  type metadata accessor for __VaListBuilder();
  v17 = swift_allocObject();
  v17[2] = 8;
  v17[3] = 0;
  v16 = v17 + 3;
  v17[4] = 0;
  v17[5] = 0;
  v50 = v11;
  v22 = *(v11 + 16);
  if (!v22)
  {
LABEL_28:
    v44 = __VaListBuilder.va_list()();
    StaticString.description.getter("damping(_:)", 11, 2);
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Canvas/CRLRepAnimationModifiable.swift", 118, 2);
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Incorrect API usage. Tried to call damping() modifier on a non-spring layer animation %@.", 89, 2);
    v47 = String._bridgeToObjectiveC()();

    [v49 handleFailureInFunction:v45 file:v46 lineNumber:124 isFatal:0 format:v47 args:v44];

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_100D3F330(v51, v52);
  }

  v11 = 0;
  v15 = 40;
  while (1)
  {
    sub_100020E58((v53 + 40 * v11), *(v53 + 40 * v11 + 24));
    v32 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v20 = *v16;
    v33 = *(v32 + 16);
    v34 = __OFADD__(*v16, v33);
    v35 = *v16 + v33;
    if (v34)
    {
      goto LABEL_30;
    }

    v36 = v32;
    v37 = v17[4];
    if (v37 >= v35)
    {
      goto LABEL_21;
    }

    if (v37 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v38 = v17[5];
    if (2 * v37 > v35)
    {
      v35 = 2 * v37;
    }

    v17[4] = v35;
    if ((v35 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    result = swift_slowAlloc();
    v17[5] = result;
    if (v38)
    {
      if (result != v38 || result >= &v38[8 * v20])
      {
        memmove(result, v38, 8 * v20);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_21:
      result = v17[5];
    }

    if (!result)
    {
      break;
    }

    v40 = *(v36 + 16);
    if (v40)
    {
      v41 = (v36 + 32);
      v42 = *v16;
      while (1)
      {
        v43 = *v41++;
        *&result[8 * v42] = v43;
        v42 = *v16 + 1;
        if (__OFADD__(*v16, 1))
        {
          break;
        }

        *v16 = v42;
        if (!--v40)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    if (++v11 == v22)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

char *sub_100D687D0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for CRLRepAnimation(0);
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000630C(v2 + 24, &v57);
  sub_1005B981C(&qword_1019FA4B0, &unk_101472F40);
  if (swift_dynamicCast())
  {
    v8 = v55;
    memcpy(v58, v56, sizeof(v58));
    sub_100D3F330(v2, a1);
    v56[1] = &type metadata for CRLSpringLayerAnimation.Def;
    v56[2] = sub_1008DA198();
    v9 = swift_allocObject();
    *&v55 = v9;
    *(v9 + 16) = v8;
    *(v9 + 24) = a2;
    memcpy((v9 + 32), v58, 0x12CuLL);
    sub_100005070((a1 + 24));
    return sub_100050F74(&v55, a1 + 24);
  }

  v53 = a1;
  memset(v56, 0, 288);
  v55 = 0u;
  v56[36] = 1;
  LODWORD(v56[37]) = 0;
  sub_10000CAAC(&v55, &qword_101A00A20, &qword_1014D4600);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v52 = v2;
  v12 = inited;
  sub_100D3F330(v2, v7);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_1000053B0();
  *(v12 + 32) = v13;
  v54 = v12 + 32;
  *(v12 + 64) = v16;
  *(v12 + 40) = v15;
  v50 = objc_opt_self();
  LODWORD(v17) = [v50 _atomicIncrementAssertCount];
  *&v55 = [objc_allocWithZone(NSString) init];
  sub_100604538(v12, &v55, "Incorrect API usage. Tried to call initialVelocity() modifier on a non-spring layer animation %@.", 97, 2u);
  StaticString.description.getter("initialVelocity(_:)", 19, 2);
  v18 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Canvas/CRLRepAnimationModifiable.swift", 118, 2);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v19 lastPathComponent];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (qword_1019F20A0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v24 = static OS_os_log.crlAssert;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_10146CA70;
  *(v25 + 56) = &type metadata for Int32;
  *(v25 + 64) = &protocol witness table for Int32;
  *(v25 + 32) = v17;
  v26 = sub_1005CF000();
  *(v25 + 96) = v26;
  v27 = sub_1005CF04C();
  *(v25 + 72) = v18;
  *(v25 + 136) = &type metadata for String;
  *(v25 + 144) = v16;
  *(v25 + 104) = v27;
  *(v25 + 112) = v21;
  *(v25 + 120) = v23;
  *(v25 + 176) = &type metadata for UInt;
  *(v25 + 184) = &protocol witness table for UInt;
  *(v25 + 152) = 139;
  v28 = v55;
  *(v25 + 216) = v26;
  *(v25 + 224) = v27;
  *(v25 + 192) = v28;
  v29 = v18;
  v30 = v28;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v25);
  swift_setDeallocating();
  v49 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v32, "Incorrect API usage. Tried to call initialVelocity() modifier on a non-spring layer animation %@.", 97, 2, v12);

  type metadata accessor for __VaListBuilder();
  v18 = swift_allocObject();
  v18[2] = 8;
  v18[3] = 0;
  v17 = v18 + 3;
  v18[4] = 0;
  v18[5] = 0;
  v51 = v12;
  v23 = *(v12 + 16);
  if (!v23)
  {
LABEL_28:
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter("initialVelocity(_:)", 19, 2);
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Canvas/CRLRepAnimationModifiable.swift", 118, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Incorrect API usage. Tried to call initialVelocity() modifier on a non-spring layer animation %@.", 97, 2);
    v48 = String._bridgeToObjectiveC()();

    [v50 handleFailureInFunction:v46 file:v47 lineNumber:139 isFatal:0 format:v48 args:v45];

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_100D3F330(v52, v53);
  }

  v12 = 0;
  v16 = 40;
  while (1)
  {
    sub_100020E58((v54 + 40 * v12), *(v54 + 40 * v12 + 24));
    v33 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v21 = *v17;
    v34 = *(v33 + 16);
    v35 = __OFADD__(*v17, v34);
    v36 = *v17 + v34;
    if (v35)
    {
      goto LABEL_30;
    }

    v37 = v33;
    v38 = v18[4];
    if (v38 >= v36)
    {
      goto LABEL_21;
    }

    if (v38 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v39 = v18[5];
    if (2 * v38 > v36)
    {
      v36 = 2 * v38;
    }

    v18[4] = v36;
    if ((v36 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    result = swift_slowAlloc();
    v18[5] = result;
    if (v39)
    {
      if (result != v39 || result >= &v39[8 * v21])
      {
        memmove(result, v39, 8 * v21);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_21:
      result = v18[5];
    }

    if (!result)
    {
      break;
    }

    v41 = *(v37 + 16);
    if (v41)
    {
      v42 = (v37 + 32);
      v43 = *v17;
      while (1)
      {
        v44 = *v42++;
        *&result[8 * v43] = v44;
        v43 = *v17 + 1;
        if (__OFADD__(*v17, 1))
        {
          break;
        }

        *v17 = v43;
        if (!--v41)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    if (++v12 == v23)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

char *sub_100D68E88@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for CRLRepAnimation(0);
  __chkstk_darwin(v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000630C(v2 + 24, &v55);
  sub_1005B981C(&qword_1019FA4B0, &unk_101472F40);
  if (swift_dynamicCast())
  {
    v57 = v54[0];
    memcpy(v56, &v54[1] + 8, sizeof(v56));
    sub_100D3F330(v2, a1);
    *(&v54[1] + 1) = &type metadata for CRLSpringLayerAnimation.Def;
    *&v54[2] = sub_1008DA198();
    v8 = swift_allocObject();
    *&v54[0] = v8;
    *(v8 + 16) = v57;
    *(v8 + 32) = a2;
    memcpy((v8 + 40), v56, 0x124uLL);
    sub_100005070((a1 + 24));
    return sub_100050F74(v54, a1 + 24);
  }

  v52 = a1;
  memset(v54, 0, 304);
  *&v54[19] = 1;
  DWORD2(v54[19]) = 0;
  sub_10000CAAC(v54, &qword_101A00A20, &qword_1014D4600);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v51 = v2;
  v11 = inited;
  sub_100D3F330(v2, v7);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_1000053B0();
  *(v11 + 32) = v12;
  v53 = v11 + 32;
  *(v11 + 64) = v15;
  *(v11 + 40) = v14;
  v49 = objc_opt_self();
  LODWORD(v16) = [v49 _atomicIncrementAssertCount];
  *&v54[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v11, v54, "Incorrect API usage. Tried to call mass() modifier on a non-spring layer animation %@.", 86, 2u);
  StaticString.description.getter("mass(_:)", 8, 2);
  v17 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Canvas/CRLRepAnimationModifiable.swift", 118, 2);
  v18 = String._bridgeToObjectiveC()();

  v19 = [v18 lastPathComponent];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (qword_1019F20A0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v23 = static OS_os_log.crlAssert;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_10146CA70;
  *(v24 + 56) = &type metadata for Int32;
  *(v24 + 64) = &protocol witness table for Int32;
  *(v24 + 32) = v16;
  v25 = sub_1005CF000();
  *(v24 + 96) = v25;
  v26 = sub_1005CF04C();
  *(v24 + 72) = v17;
  *(v24 + 136) = &type metadata for String;
  *(v24 + 144) = v15;
  *(v24 + 104) = v26;
  *(v24 + 112) = v20;
  *(v24 + 120) = v22;
  *(v24 + 176) = &type metadata for UInt;
  *(v24 + 184) = &protocol witness table for UInt;
  *(v24 + 152) = 154;
  v27 = *&v54[0];
  *(v24 + 216) = v25;
  *(v24 + 224) = v26;
  *(v24 + 192) = v27;
  v28 = v17;
  v29 = v27;
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
  swift_setDeallocating();
  v48 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v31, "Incorrect API usage. Tried to call mass() modifier on a non-spring layer animation %@.", 86, 2, v11);

  type metadata accessor for __VaListBuilder();
  v17 = swift_allocObject();
  v17[2] = 8;
  v17[3] = 0;
  v16 = v17 + 3;
  v17[4] = 0;
  v17[5] = 0;
  v50 = v11;
  v22 = *(v11 + 16);
  if (!v22)
  {
LABEL_28:
    v44 = __VaListBuilder.va_list()();
    StaticString.description.getter("mass(_:)", 8, 2);
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Canvas/CRLRepAnimationModifiable.swift", 118, 2);
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Incorrect API usage. Tried to call mass() modifier on a non-spring layer animation %@.", 86, 2);
    v47 = String._bridgeToObjectiveC()();

    [v49 handleFailureInFunction:v45 file:v46 lineNumber:154 isFatal:0 format:v47 args:v44];

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_100D3F330(v51, v52);
  }

  v11 = 0;
  v15 = 40;
  while (1)
  {
    sub_100020E58((v53 + 40 * v11), *(v53 + 40 * v11 + 24));
    v32 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v20 = *v16;
    v33 = *(v32 + 16);
    v34 = __OFADD__(*v16, v33);
    v35 = *v16 + v33;
    if (v34)
    {
      goto LABEL_30;
    }

    v36 = v32;
    v37 = v17[4];
    if (v37 >= v35)
    {
      goto LABEL_21;
    }

    if (v37 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v38 = v17[5];
    if (2 * v37 > v35)
    {
      v35 = 2 * v37;
    }

    v17[4] = v35;
    if ((v35 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    result = swift_slowAlloc();
    v17[5] = result;
    if (v38)
    {
      if (result != v38 || result >= &v38[8 * v20])
      {
        memmove(result, v38, 8 * v20);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_21:
      result = v17[5];
    }

    if (!result)
    {
      break;
    }

    v40 = *(v36 + 16);
    if (v40)
    {
      v41 = (v36 + 32);
      v42 = *v16;
      while (1)
      {
        v43 = *v41++;
        *&result[8 * v42] = v43;
        v42 = *v16 + 1;
        if (__OFADD__(*v16, 1))
        {
          break;
        }

        *v16 = v42;
        if (!--v40)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    if (++v11 == v22)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

char *sub_100D6954C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for CRLRepAnimation(0);
  __chkstk_darwin(v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000630C(v2 + 24, &v57);
  sub_1005B981C(&qword_1019FA4B0, &unk_101472F40);
  if (swift_dynamicCast())
  {
    v59 = v54;
    v60 = v55;
    memcpy(v58, v56, sizeof(v58));
    sub_100D3F330(v2, a1);
    *(&v55 + 1) = &type metadata for CRLSpringLayerAnimation.Def;
    v56[0] = sub_1008DA198();
    v8 = swift_allocObject();
    *&v54 = v8;
    *(v8 + 16) = v59;
    *(v8 + 32) = v60;
    *(v8 + 40) = a2;
    memcpy((v8 + 48), v58, 0x11CuLL);
    sub_100005070((a1 + 24));
    return sub_100050F74(&v54, a1 + 24);
  }

  v52 = a1;
  v55 = 0u;
  memset(v56, 0, 272);
  v54 = 0u;
  v56[34] = 1;
  LODWORD(v56[35]) = 0;
  sub_10000CAAC(&v54, &qword_101A00A20, &qword_1014D4600);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v51 = v2;
  v11 = inited;
  sub_100D3F330(v2, v7);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_1000053B0();
  *(v11 + 32) = v12;
  v53 = v11 + 32;
  *(v11 + 64) = v15;
  *(v11 + 40) = v14;
  v49 = objc_opt_self();
  LODWORD(v16) = [v49 _atomicIncrementAssertCount];
  *&v54 = [objc_allocWithZone(NSString) init];
  sub_100604538(v11, &v54, "Incorrect API usage. Tried to call damping() modifier on a non-spring layer animation %@.", 89, 2u);
  StaticString.description.getter("stiffness(_:)", 13, 2);
  v17 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Canvas/CRLRepAnimationModifiable.swift", 118, 2);
  v18 = String._bridgeToObjectiveC()();

  v19 = [v18 lastPathComponent];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (qword_1019F20A0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v23 = static OS_os_log.crlAssert;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_10146CA70;
  *(v24 + 56) = &type metadata for Int32;
  *(v24 + 64) = &protocol witness table for Int32;
  *(v24 + 32) = v16;
  v25 = sub_1005CF000();
  *(v24 + 96) = v25;
  v26 = sub_1005CF04C();
  *(v24 + 72) = v17;
  *(v24 + 136) = &type metadata for String;
  *(v24 + 144) = v15;
  *(v24 + 104) = v26;
  *(v24 + 112) = v20;
  *(v24 + 120) = v22;
  *(v24 + 176) = &type metadata for UInt;
  *(v24 + 184) = &protocol witness table for UInt;
  *(v24 + 152) = 169;
  v27 = v54;
  *(v24 + 216) = v25;
  *(v24 + 224) = v26;
  *(v24 + 192) = v27;
  v28 = v17;
  v29 = v27;
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
  swift_setDeallocating();
  v48 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v31, "Incorrect API usage. Tried to call damping() modifier on a non-spring layer animation %@.", 89, 2, v11);

  type metadata accessor for __VaListBuilder();
  v17 = swift_allocObject();
  v17[2] = 8;
  v17[3] = 0;
  v16 = v17 + 3;
  v17[4] = 0;
  v17[5] = 0;
  v50 = v11;
  v22 = *(v11 + 16);
  if (!v22)
  {
LABEL_28:
    v44 = __VaListBuilder.va_list()();
    StaticString.description.getter("stiffness(_:)", 13, 2);
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Canvas/CRLRepAnimationModifiable.swift", 118, 2);
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Incorrect API usage. Tried to call damping() modifier on a non-spring layer animation %@.", 89, 2);
    v47 = String._bridgeToObjectiveC()();

    [v49 handleFailureInFunction:v45 file:v46 lineNumber:169 isFatal:0 format:v47 args:v44];

    swift_setDeallocating();
    swift_arrayDestroy();
    return sub_100D3F330(v51, v52);
  }

  v11 = 0;
  v15 = 40;
  while (1)
  {
    sub_100020E58((v53 + 40 * v11), *(v53 + 40 * v11 + 24));
    v32 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v20 = *v16;
    v33 = *(v32 + 16);
    v34 = __OFADD__(*v16, v33);
    v35 = *v16 + v33;
    if (v34)
    {
      goto LABEL_30;
    }

    v36 = v32;
    v37 = v17[4];
    if (v37 >= v35)
    {
      goto LABEL_21;
    }

    if (v37 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v38 = v17[5];
    if (2 * v37 > v35)
    {
      v35 = 2 * v37;
    }

    v17[4] = v35;
    if ((v35 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    result = swift_slowAlloc();
    v17[5] = result;
    if (v38)
    {
      if (result != v38 || result >= &v38[8 * v20])
      {
        memmove(result, v38, 8 * v20);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_21:
      result = v17[5];
    }

    if (!result)
    {
      break;
    }

    v40 = *(v36 + 16);
    if (v40)
    {
      v41 = (v36 + 32);
      v42 = *v16;
      while (1)
      {
        v43 = *v41++;
        *&result[8 * v42] = v43;
        v42 = *v16 + 1;
        if (__OFADD__(*v16, 1))
        {
          break;
        }

        *v16 = v42;
        if (!--v40)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    if (++v11 == v22)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100D69C20@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_100D3F330(v2, a1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  sub_10002A948(a1 + 24, v5);
  v7 = (*(*(v6 + 32) + 24))(v10, v5);
  *v8 = *v8 + a2;
  return v7(v10, 0);
}

void sub_100D69CC4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_1006D4864(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CRLBoardItem(0), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_100035F90(v1);
      return;
    }

LABEL_16:
    type metadata accessor for CRLConnectionLineItem(0);
    if (swift_dynamicCastClass())
    {
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
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_100D69F38(void *a1, double a2, double a3)
{
  v5 = v3;
  v8 = a1;
  v9 = a1;
  v10 = &selRef_initWithObject_;
  v11 = [v5 interactiveCanvasController];
  v12 = v11;
  if (v9 == 8)
  {
    if (v11)
    {
      v13 = [v11 layerHost];
      if (v13)
      {
        v14 = v13;
        if ([v13 respondsToSelector:"shapeLibraryPopoverController"])
        {
          v15 = [v14 shapeLibraryPopoverController];
          swift_unknownObjectRelease();
          sub_100C00ED4();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    sub_100BE9AD4(v5, a2, a3);
    return;
  }

  if (!v11)
  {
    v45 = objc_opt_self();
    v46 = [v45 _atomicIncrementAssertCount];
    aBlock[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, aBlock, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("miniShapePickerInserter(didPick:unscaledPopoverAnchorPoint:)", 60, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.swift", 94, 2);
    v48 = String._bridgeToObjectiveC()();

    v49 = [v48 lastPathComponent];

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v53 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v46;
    v55 = sub_1005CF000();
    *(inited + 96) = v55;
    v56 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v56;
    *(inited + 72) = v47;
    *(inited + 136) = &type metadata for String;
    v57 = sub_1000053B0();
    *(inited + 112) = v50;
    *(inited + 120) = v52;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v57;
    *(inited + 152) = 55;
    v58 = aBlock[0];
    *(inited + 216) = v55;
    *(inited + 224) = v56;
    *(inited + 192) = v58;
    v59 = v47;
    v60 = v58;
    v61 = static os_log_type_t.error.getter();
    sub_100005404(v53, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v62 = static os_log_type_t.error.getter();
    sub_100005404(v53, &_mh_execute_header, v62, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v63 = swift_allocObject();
    v63[2] = 8;
    v63[3] = 0;
    v63[4] = 0;
    v63[5] = 0;
    v64 = __VaListBuilder.va_list()();
    StaticString.description.getter("miniShapePickerInserter(didPick:unscaledPopoverAnchorPoint:)", 60, 2);
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.swift", 94, 2);
    v66 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v67 = String._bridgeToObjectiveC()();

    [v45 handleFailureInFunction:v65 file:v66 lineNumber:55 isFatal:0 format:v67 args:v64];

    return;
  }

  v16 = [v11 editingCoordinator];
  if (!v16)
  {
    v22 = objc_opt_self();
    LODWORD(v20) = [v22 _atomicIncrementAssertCount];
    aBlock[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, aBlock, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("miniShapePickerInserter(didPick:unscaledPopoverAnchorPoint:)", 60, 2);
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.swift", 94, 2);
    v68 = String._bridgeToObjectiveC()();

    v69 = [v68 lastPathComponent];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v70;

    if (qword_1019F20A0 == -1)
    {
LABEL_31:
      v71 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v72 = swift_initStackObject();
      *(v72 + 16) = xmmword_10146CA70;
      *(v72 + 56) = &type metadata for Int32;
      *(v72 + 64) = &protocol witness table for Int32;
      *(v72 + 32) = v20;
      v73 = sub_1005CF000();
      *(v72 + 96) = v73;
      v74 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
      *(v72 + 104) = v74;
      *(v72 + 72) = v8;
      *(v72 + 136) = &type metadata for String;
      v75 = sub_1000053B0();
      *(v72 + 112) = v4;
      *(v72 + 120) = v10;
      *(v72 + 176) = &type metadata for UInt;
      *(v72 + 184) = &protocol witness table for UInt;
      *(v72 + 144) = v75;
      *(v72 + 152) = 56;
      v76 = aBlock[0];
      *(v72 + 216) = v73;
      *(v72 + 224) = v74;
      *(v72 + 192) = v76;
      v77 = v8;
      v78 = v76;
      v79 = static os_log_type_t.error.getter();
      sub_100005404(v71, &_mh_execute_header, v79, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v72);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v80 = static os_log_type_t.error.getter();
      sub_100005404(v71, &_mh_execute_header, v80, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v81 = swift_allocObject();
      v81[2] = 8;
      v81[3] = 0;
      v81[4] = 0;
      v81[5] = 0;
      v82 = __VaListBuilder.va_list()();
      StaticString.description.getter("miniShapePickerInserter(didPick:unscaledPopoverAnchorPoint:)", 60, 2);
      v83 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.swift", 94, 2);
      v84 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v85 = String._bridgeToObjectiveC()();

      [v22 handleFailureInFunction:v83 file:v84 lineNumber:56 isFatal:0 format:v85 args:v82];

      goto LABEL_32;
    }

LABEL_56:
    swift_once();
    goto LABEL_31;
  }

  v17 = v16;
  v18 = *&v16[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

  v19 = [v5 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1006D4864(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100D69CC4(v20);
  v22 = v21;

  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_48:
    v154 = v18;

    v127 = objc_opt_self();
    v128 = [v127 _atomicIncrementAssertCount];
    aBlock[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, aBlock, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("miniShapePickerInserter(didPick:unscaledPopoverAnchorPoint:)", 60, 2);
    v129 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.swift", 94, 2);
    v130 = String._bridgeToObjectiveC()();

    v131 = [v130 lastPathComponent];

    v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v133;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v135 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_10146CA70;
    *(v136 + 56) = &type metadata for Int32;
    *(v136 + 64) = &protocol witness table for Int32;
    *(v136 + 32) = v128;
    v137 = sub_1005CF000();
    *(v136 + 96) = v137;
    v138 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(v136 + 104) = v138;
    *(v136 + 72) = v129;
    *(v136 + 136) = &type metadata for String;
    v139 = sub_1000053B0();
    *(v136 + 112) = v132;
    *(v136 + 120) = v134;
    *(v136 + 176) = &type metadata for UInt;
    *(v136 + 184) = &protocol witness table for UInt;
    *(v136 + 144) = v139;
    *(v136 + 152) = 57;
    v140 = aBlock[0];
    *(v136 + 216) = v137;
    *(v136 + 224) = v138;
    *(v136 + 192) = v140;
    v141 = v129;
    v142 = v140;
    v143 = static os_log_type_t.error.getter();
    sub_100005404(v135, &_mh_execute_header, v143, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v136);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v144 = static os_log_type_t.error.getter();
    sub_100005404(v135, &_mh_execute_header, v144, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v145 = swift_allocObject();
    v145[2] = 8;
    v145[3] = 0;
    v145[4] = 0;
    v145[5] = 0;
    v146 = __VaListBuilder.va_list()();
    StaticString.description.getter("miniShapePickerInserter(didPick:unscaledPopoverAnchorPoint:)", 60, 2);
    v147 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.swift", 94, 2);
    v148 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v155 = String._bridgeToObjectiveC()();

    [v127 handleFailureInFunction:v147 file:v148 lineNumber:57 isFatal:0 format:v155 args:v146];

    goto LABEL_51;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_48;
  }

LABEL_10:
  if ((v22 & 0xC000000000000001) == 0)
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v22 + 32);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_56;
  }

  v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
  v155 = v23;

  v24 = [v12 board];
  if (!v24)
  {

LABEL_51:

    return;
  }

  v25 = v24;
  sub_1008A824C(v25, v155);
  v27 = v26;

  if (v27 || (v28 = v25, sub_1008A85E0(v28, v155), v27 = v29, v28, v27))
  {
    v30 = sub_100D3FB8C(v8, 150.0, 150.0);
    if (v30)
    {
      v31 = v30;
      v32 = sub_100D40590(v8);
      if (v33)
      {
        v34 = 21;
      }

      else
      {
        v34 = v32;
      }

      v35 = sub_10110FE34(v27, v31, v34);
      if ([v5 canHandleInsertAndConnectBoardItem:v35])
      {
        aBlock[4] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        aBlock[2] = sub_100007638;
        aBlock[3] = &unk_1018A35B0;
        v36 = _Block_copy(aBlock);
        [v5 insertAndConnectBoardItem:v35 postProcessBlock:v36];
        _Block_release(v36);
        v37 = v35;
        v38 = [v5 anyConnectionLine];
        v39 = v37;
        sub_100D6B5F8(v39, v38, v12);
      }

      v40 = [v5 interactiveCanvasController];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 layerHost];
        if (v42)
        {
          v43 = v42;
          if ([v42 respondsToSelector:"shapeLibraryPopoverController"])
          {
            v44 = [v43 shapeLibraryPopoverController];
            swift_unknownObjectRelease();
            sub_100C00ED4();
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      return;
    }

    v152 = v18;
    v150 = objc_opt_self();
    v86 = [v150 _atomicIncrementAssertCount];
    aBlock[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, aBlock, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("miniShapePickerInserter(didPick:unscaledPopoverAnchorPoint:)", 60, 2);
    v149 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.swift", 94, 2);
    v87 = String._bridgeToObjectiveC()();

    v88 = [v87 lastPathComponent];

    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v92 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v93 = swift_initStackObject();
    *(v93 + 16) = xmmword_10146CA70;
    *(v93 + 56) = &type metadata for Int32;
    *(v93 + 64) = &protocol witness table for Int32;
    *(v93 + 32) = v86;
    v94 = sub_1005CF000();
    *(v93 + 96) = v94;
    v95 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(v93 + 104) = v95;
    *(v93 + 72) = v149;
    *(v93 + 136) = &type metadata for String;
    v96 = sub_1000053B0();
    *(v93 + 112) = v89;
    *(v93 + 120) = v91;
    *(v93 + 176) = &type metadata for UInt;
    *(v93 + 184) = &protocol witness table for UInt;
    *(v93 + 144) = v96;
    *(v93 + 152) = 60;
    v97 = aBlock[0];
    *(v93 + 216) = v94;
    *(v93 + 224) = v95;
    *(v93 + 192) = v97;
    v98 = v149;
    v99 = v97;
    v100 = static os_log_type_t.error.getter();
    sub_100005404(v92, &_mh_execute_header, v100, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v93);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v101 = static os_log_type_t.error.getter();
    sub_100005404(v92, &_mh_execute_header, v101, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v102 = swift_allocObject();
    v102[2] = 8;
    v102[3] = 0;
    v102[4] = 0;
    v102[5] = 0;
    v103 = __VaListBuilder.va_list()();
    StaticString.description.getter("miniShapePickerInserter(didPick:unscaledPopoverAnchorPoint:)", 60, 2);
    v104 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.swift", 94, 2);
    v84 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v85 = String._bridgeToObjectiveC()();

    [v150 handleFailureInFunction:v104 file:v84 lineNumber:60 isFatal:0 format:v85 args:v103];

LABEL_32:

    return;
  }

  v153 = v18;
  v151 = objc_opt_self();
  v105 = [v151 _atomicIncrementAssertCount];
  aBlock[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, aBlock, "invalid nil found when unwrapping value", 39, 2u);
  StaticString.description.getter("miniShapePickerInserter(didPick:unscaledPopoverAnchorPoint:)", 60, 2);
  v106 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.swift", 94, 2);
  v107 = String._bridgeToObjectiveC()();

  v108 = [v107 lastPathComponent];

  v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v111 = v110;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v112 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v113 = swift_initStackObject();
  *(v113 + 16) = xmmword_10146CA70;
  *(v113 + 56) = &type metadata for Int32;
  *(v113 + 64) = &protocol witness table for Int32;
  *(v113 + 32) = v105;
  v114 = sub_1005CF000();
  *(v113 + 96) = v114;
  v115 = sub_1006D4864(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(v113 + 104) = v115;
  *(v113 + 72) = v106;
  *(v113 + 136) = &type metadata for String;
  v116 = sub_1000053B0();
  *(v113 + 112) = v109;
  *(v113 + 120) = v111;
  *(v113 + 176) = &type metadata for UInt;
  *(v113 + 184) = &protocol witness table for UInt;
  *(v113 + 144) = v116;
  *(v113 + 152) = 59;
  v117 = aBlock[0];
  *(v113 + 216) = v114;
  *(v113 + 224) = v115;
  *(v113 + 192) = v117;
  v118 = v106;
  v119 = v117;
  v120 = static os_log_type_t.error.getter();
  sub_100005404(v112, &_mh_execute_header, v120, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v113);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v121 = static os_log_type_t.error.getter();
  sub_100005404(v112, &_mh_execute_header, v121, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v122 = swift_allocObject();
  v122[2] = 8;
  v122[3] = 0;
  v122[4] = 0;
  v122[5] = 0;
  v123 = __VaListBuilder.va_list()();
  StaticString.description.getter("miniShapePickerInserter(didPick:unscaledPopoverAnchorPoint:)", 60, 2);
  v124 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.swift", 94, 2);
  v125 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v126 = String._bridgeToObjectiveC()();

  [v151 handleFailureInFunction:v124 file:v125 lineNumber:59 isFatal:0 format:v126 args:v123];
}

void sub_100D6B5F8(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for CRLInsertionAnimationHelper();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101465920;
  *(v7 + 32) = a1;
  v8 = a1;
  v9 = [a3 canvas];
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = a3;
  v10[4] = a2;
  v10[5] = v6;
  v14[4] = sub_10067AC6C;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = *"";
  v14[2] = sub_100007638;
  v14[3] = &unk_1018A3600;
  v11 = _Block_copy(v14);
  v12 = a3;
  v13 = a2;

  [v9 afterLayoutIncludingLayers:1 performBlock:v11];
  _Block_release(v11);
}

id sub_100D6B768(uint64_t a1, void *a2)
{
  v2[OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_knobState] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_animatedLayer] = 0;
  sub_100D6E72C(a1, a2);
  v5 = String._bridgeToObjectiveC()();

  v6 = objc_opt_self();
  v7 = [v6 imageNamed:v5];

  v8 = String._bridgeToObjectiveC()();

  v9 = [v6 imageNamed:v8];

  v29.receiver = v2;
  v29.super_class = type metadata accessor for CRLConnectionLineKnob();
  v25 = v9;
  v26 = a2;
  v10 = objc_msgSendSuper2(&v29, "initWithImage:highlightedImage:radius:tag:onRep:", v7, v9, a1, a2, 15.0);
  v11 = qword_1019F2380;
  v27 = v10;
  if (v11 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = qword_101AD80D8;
    v13 = *(qword_101AD80D8 + 16);

    if (!v13)
    {
      break;
    }

    v14 = 0;
    while (v14 < *(v12 + 16))
    {
      v15 = qword_1019F2378;
      v16 = *(v12 + 32 + 8 * v14);
      if (v15 != -1)
      {
        swift_once();
      }

      ++v14;
      v17 = qword_101AD80D0;
      v18 = objc_opt_self();
      v19 = v17;
      v20 = [v18 mainQueue];
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100D6F268;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100059694;
      aBlock[3] = &unk_1018A3730;
      v22 = _Block_copy(aBlock);

      v23 = [v19 addObserverForName:v16 object:0 queue:v20 usingBlock:v22];
      _Block_release(v22);

      swift_unknownObjectRelease();
      if (v13 == v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }

LABEL_8:

  return v27;
}

void sub_100D6BA94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong rep];
    if (v4)
    {
      v5 = v4;
      sub_100D6E72C([v3 tag], v4);
      v6 = String._bridgeToObjectiveC()();

      v7 = objc_opt_self();
      v8 = [v7 imageNamed:v6];

      v9 = String._bridgeToObjectiveC()();

      v10 = [v7 imageNamed:v9];

      [v3 setImage:v8];
      [v3 setHighlightedImage:v10];

      v3 = v10;
    }
  }
}

id sub_100D6BC20()
{
  if (qword_1019F2380 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v1 = qword_101AD80D8;
    v2 = *(qword_101AD80D8 + 16);

    if (!v2)
    {
      break;
    }

    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = qword_1019F2378;
      v5 = *(v1 + 32 + 8 * v3);
      if (v4 != -1)
      {
        swift_once();
      }

      ++v3;
      [qword_101AD80D0 removeObserver:v0 name:v5 object:0];

      if (v2 == v3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }

LABEL_8:

  v7.receiver = v0;
  v7.super_class = type metadata accessor for CRLConnectionLineKnob();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100D6BD8C(uint64_t result, char a2)
{
  v3 = v2;
  v4 = result;
  if (result > 1u)
  {
    if (result == 2)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 3;
    }
  }

  else
  {
    if (!result)
    {
      goto LABEL_13;
    }

    v5 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_knobState);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        LOBYTE(v5) = 2;
      }

      else
      {
        LOBYTE(v5) = 4;
      }
    }

    else
    {
      if (v5)
      {
        goto LABEL_13;
      }

      a2 = 0;
    }
  }

  v6 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_animatedLayer);
  if (v6)
  {
    v7 = a2;
    v8 = v6;
    sub_100D6D3E8(v5, v11);

    v9 = v12;
    if (v12)
    {
      v10 = v13;
      sub_100020E58(v11, v12);
      sub_101137F98(0, 1, v7 & 1, 0, 0, 0, 0, 0, 0, v9, v10);
      result = sub_100005070(v11);
    }

    else
    {
      result = sub_100882398(v11);
    }
  }

LABEL_13:
  *(v3 + OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_knobState) = v4;
  return result;
}

void sub_100D6BEB0()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_animatedLayer];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 knobImage];
    v4 = *&v2[OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobCurrentImage];
    *&v2[OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobCurrentImage] = v3;
    v5 = v3;

    sub_100D6CB6C();
  }
}

void sub_100D6C074()
{
  v1 = [v0 imageRenderable];
  [v1 removeFromSuperlayer];

  v2 = objc_allocWithZone(type metadata accessor for CRLConnectionLineKnob.CRLConnectionLineKnobAnimatedLayer());
  v3 = v0;
  v4 = sub_100D6EE70(v3);

  v5 = *&v3[OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_animatedLayer];
  *&v3[OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_animatedLayer] = v4;
  v6 = v4;
  sub_100D6C4D4(v5);

  sub_100D6BD8C(1, 0);
}

uint64_t sub_100D6C190(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for CRLConnectionLineKnob();
  result = objc_msgSendSuper2(&v16, "cursorEnteredKnobAtPoint:withPlatformObject:", a1, a2, a3);
  v9 = *&v4[OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_animatedLayer];
  if (v9)
  {
    v10 = v9;
    sub_100D6D3E8(1u, v13);

    v11 = v14;
    if (v14)
    {
      v12 = v15;
      sub_100020E58(v13, v14);
      sub_101137F98(0, 1, 1, 0, 0, 0, 0, 0, 0, v11, v12);
      result = sub_100005070(v13);
    }

    else
    {
      result = sub_100882398(v13);
    }
  }

  v4[OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_knobState] = 2;
  return result;
}

uint64_t sub_100D6C314(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for CRLConnectionLineKnob();
  result = objc_msgSendSuper2(&v19, "cursorExitedKnobAtPoint:withPlatformObject:", a1, a2, a3);
  v9 = OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_knobState;
  v10 = v4[OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_knobState];
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      LOBYTE(v10) = 2;
    }

    else
    {
      LOBYTE(v10) = 4;
    }

    v11 = 1;
  }

  else
  {
    if (v4[OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_knobState])
    {
      goto LABEL_12;
    }

    v11 = 0;
  }

  v12 = *&v4[OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_animatedLayer];
  if (v12)
  {
    v13 = v12;
    sub_100D6D3E8(v10, v16);

    v14 = v17;
    if (v17)
    {
      v15 = v18;
      sub_100020E58(v16, v17);
      sub_101137F98(0, 1, v11, 0, 0, 0, 0, 0, 0, v14, v15);
      result = sub_100005070(v16);
    }

    else
    {
      result = sub_100882398(v16);
    }
  }

LABEL_12:
  v4[v9] = 1;
  return result;
}

void sub_100D6C4D4(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_animatedLayer;
  v5 = *&v1[OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_animatedLayer];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [v3 removeFromSuperlayer];
    v5 = *&v2[v4];
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (a1)
  {
    type metadata accessor for CRLConnectionLineKnob.CRLConnectionLineKnobAnimatedLayer();
    v6 = v5;
    v3 = v3;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  v15 = v5;
  [v15 setAnchorPoint:{0.0, 0.0}];
  v8 = [v2 renderable];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 layer];

    [v10 addSublayer:v15];
  }

  v11 = sub_100D6D030();
  sub_100D6D030();
  if (v11 > v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 * 0.5;
  if (v14 < 15.0)
  {
    v14 = 15.0;
  }

  [v2 setRadius:v14];
}

double sub_100D6C66C()
{
  v1 = [v0 rep];
  v2 = 19.0;
  if (v1)
  {
    v3 = v1;
    if ([v0 tag] == 6 && (objc_msgSend(v3, "enabledKnobMask") & 0x40) != 0 || objc_msgSend(v0, "tag") == 8 && (objc_msgSend(v3, "enabledKnobMask") & 0x100) != 0 || objc_msgSend(v0, "tag") == 4 && (objc_msgSend(v3, "enabledKnobMask") & 0x10) != 0)
    {
    }

    else
    {
      if ([v0 tag] != 2)
      {

        return v2;
      }

      v4 = [v3 enabledKnobMask];

      if ((v4 & 4) == 0)
      {
        return v2;
      }
    }

    return 25.0;
  }

  return v2;
}

double sub_100D6C780()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 0.5;
  LODWORD(v2) = 1.0;
  v3 = [v0 initWithControlPoints:0.0 :0.0 :v1 :v2];
  qword_101A1E898 = 1065353216;
  byte_101A1E998 = 6;
  unk_101A1E888 = xmmword_101480D60;
  qword_101A1E880 = v3;
  qword_101A1E9A0 = 0;
  *&result = 131586;
  dword_101A1E9A8 = 131586;
  return result;
}

double sub_100D6C7F8@<D0>(_OWORD *a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>)
{
  v5 = a2[5];
  *&v15.m31 = a2[4];
  *&v15.m33 = v5;
  v6 = a2[7];
  *&v15.m41 = a2[6];
  *&v15.m43 = v6;
  v7 = a2[1];
  *&v15.m11 = *a2;
  *&v15.m13 = v7;
  v8 = a2[3];
  *&v15.m21 = a2[2];
  *&v15.m23 = v8;
  CATransform3DScale(&v16, &v15, a4, a4, 1.0);
  v17 = 53;
  v9 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
  sub_1006C121C(&v16, a3 + 24);
  v10 = type metadata accessor for CRLBasicLayerAnimation(0);
  UUID.init()();
  sub_100687CF4(&v16);
  swift_unknownObjectWeakInit();
  v11 = *(v10 + 28);
  v12 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler(0);
  v13 = *(*(v12 - 8) + 56);
  v13(a3 + v11, 1, 1, v12);
  v13(a3 + *(v10 + 32), 1, 1, v12);
  swift_unknownObjectWeakAssign();
  *(a3 + 8) = xmmword_1014B0910;
  *a3 = v9;
  *(a3 + 288) = 0;
  *&result = 131586;
  *(a3 + 296) = 131586;
  return result;
}

id sub_100D6C984()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_resizeKnobLayer);
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = 0.0;
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong defaultKnobImage];

    v6 = 0.0;
    if (v5)
    {
      [v5 size];
      v3 = v7;
      v6 = v8;
    }
  }

  else
  {
    v6 = 0.0;
  }

  [v1 setBounds:{0.0, 0.0, v3, v6}];
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9 && (v10 = v9, v11 = [v9 defaultKnobImage], v10, v11))
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    v13 = 1.0;
    if (v12)
    {
      v14 = v12;
      v15 = [v12 rep];

      if (v15)
      {
        v16 = [v15 canvas];

        if (v16)
        {
          [v16 contentsScale];
          v13 = v17;
        }
      }
    }

    v18 = [v11 CGImageForContentsScale:v13];

    v21 = v18;
    type metadata accessor for CGImage(0);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    v19 = 0;
  }

  [v1 setContents:v19];
  swift_unknownObjectRelease();
  return [v1 setOpacity:0.0];
}

void sub_100D6CB6C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobCurrentImage);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobLayer);
    v3 = v1;
    [v3 size];
    [v2 setBounds:{0.0, 0.0, v4, v5}];
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = 1.0;
    if (Strong)
    {
      v8 = Strong;
      v9 = [Strong rep];

      if (v9)
      {
        v10 = [v9 canvas];

        if (v10)
        {
          [v10 contentsScale];
          v7 = v11;
        }
      }
    }

    v35 = [v3 CGImageForContentsScale:v7];
    [v2 setContents:v35];
  }

  else
  {
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("updateConnectionKnobLayer()", 27, 2);
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineKnob.swift", 91, 2);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_1005CF000();
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 398;
    v25 = v36;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter("updateConnectionKnobLayer()", 27, 2);
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineKnob.swift", 91, 2);
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v34 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v32 file:v33 lineNumber:398 isFatal:0 format:v34 args:v31];
  }
}

double sub_100D6D030()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = 0.0;
  v2 = 0.0;
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong defaultKnobImage];

    if (v4)
    {
      [v4 size];
      v2 = v5;
    }
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 image];

    if (v8)
    {
      [v8 size];
      v1 = v9;
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10 && (v11 = v10, v12 = [v10 image], v11, v12))
  {
    [v12 size];
    v14 = v13;

    if (v2 > v1)
    {
      v15 = v2;
    }

    else
    {
      v15 = v1;
    }

    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v17 = 0.0;
    if (v2 > 0.0)
    {
      v18 = v2;
    }

    else
    {
      v18 = 0.0;
    }

    if (v1 > 0.0)
    {
      v17 = v1;
    }

    if (v2 <= v1)
    {
      v16 = v17;
    }

    else
    {
      v16 = v18;
    }
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 defaultKnobImage];

    if (v21)
    {
      [v21 size];
    }
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 image];

    if (v24)
    {
      [v24 size];
    }
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    v27 = [v25 image];

    if (v27)
    {
      [v27 size];
    }
  }

  return v16;
}

void *sub_100D6D290(void *a1)
{
  v3 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_containerLayer;
  *&v1[v3] = [objc_allocWithZone(CALayer) init];
  v4 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_resizeKnobLayer;
  *&v1[v4] = [objc_allocWithZone(CALayer) init];
  *&v1[OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobCurrentImage] = 0;
  v5 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobLayer;
  *&v1[v5] = [objc_allocWithZone(CALayer) init];
  swift_unknownObjectWeakInit();
  sub_100020E58(a1, a1[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CRLConnectionLineKnob.CRLConnectionLineKnobAnimatedLayer();
  v7 = objc_msgSendSuper2(&v9, "initWithLayer:", v6);
  swift_unknownObjectRelease();
  sub_100005070(a1);
  return v7;
}

void sub_100D6D3E8(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v13 = objc_opt_self();
    v14 = [v13 _atomicIncrementAssertCount];
    *&a.m11 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &a, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("animationProvider(for:)", 23, 2);
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineKnob.swift", 91, 2);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10146CA70;
    *(v22 + 56) = &type metadata for Int32;
    *(v22 + 64) = &protocol witness table for Int32;
    *(v22 + 32) = v14;
    v23 = sub_1005CF000();
    *(v22 + 96) = v23;
    v24 = sub_1005CF04C();
    *(v22 + 104) = v24;
    *(v22 + 72) = v15;
    *(v22 + 136) = &type metadata for String;
    v25 = sub_1000053B0();
    *(v22 + 112) = v18;
    *(v22 + 120) = v20;
    *(v22 + 176) = &type metadata for UInt;
    *(v22 + 184) = &protocol witness table for UInt;
    *(v22 + 144) = v25;
    *(v22 + 152) = 480;
    m11 = a.m11;
    *(v22 + 216) = v23;
    *(v22 + 224) = v24;
    *(v22 + 192) = m11;
    v27 = v15;
    v28 = *&m11;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v22);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v30, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter("animationProvider(for:)", 23, 2);
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineKnob.swift", 91, 2);
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v34 = String._bridgeToObjectiveC()();

    [v13 handleFailureInFunction:v33 file:v6 lineNumber:480 isFatal:0 format:v34 args:v32];

    goto LABEL_10;
  }

  v6 = Strong;
  v7 = [v6 rep];
  if (!v7)
  {
    v34 = v6;
LABEL_10:

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v8 = v7;
  [v7 additionalRotationForKnobOrientation];
  v10 = sub_1005ED264(v9);
  CATransform3DMakeRotation(&v214, v10, 0.0, 0.0, 1.0);
  v215 = v214;
  if (a1 > 1u)
  {

    *(a2 + 24) = type metadata accessor for CRLBasicLayerAnimation(0);
    *(a2 + 32) = &off_1018816E0;
    v11 = sub_10002C58C(a2);
    if (a1 == 3)
    {
      v12 = 0.95;
    }

    else
    {
      v12 = 1.0;
    }

    goto LABEL_18;
  }

  if (a1)
  {

    *(a2 + 24) = type metadata accessor for CRLBasicLayerAnimation(0);
    *(a2 + 32) = &off_1018816E0;
    v11 = sub_10002C58C(a2);
    v12 = 1.5;
LABEL_18:
    sub_100D6C7F8(&v215, v11, v12);

    return;
  }

  v35 = sub_100D6C66C();
  v36 = [v6 tag];

  if (v36 > 5)
  {
    if (v36 == 6)
    {
      v39 = -v35;
      a = v214;
      v37 = 0.0;
    }

    else
    {
      if (v36 != 8)
      {
        goto LABEL_22;
      }

      v37 = -v35;
      a = v214;
      v39 = 0.0;
    }

    v38 = 1.0;
    goto LABEL_26;
  }

  if (v36 == 2)
  {
    a = v214;
    v39 = 0.0;
    v38 = 1.0;
    v37 = v35;
    goto LABEL_26;
  }

  if (v36 == 4)
  {
    a = v214;
    v37 = 0.0;
    v38 = 1.0;
    v39 = v35;
LABEL_26:
    CATransform3DTranslate(&v213, &a, v39, v37, v38);
    goto LABEL_27;
  }

LABEL_22:
  v213 = v214;
LABEL_27:
  v40 = *&v2[OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_resizeKnobLayer];
  [v40 bounds];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  [v2 bounds];
  v53 = sub_1001206EC(v42, v44, v46, v48, v49, v50, v51, v52);
  v55 = v54;
  v57 = v56;
  v58 = *&v2[OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobLayer];
  [v58 bounds];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  [v2 bounds];
  sub_1001206EC(v60, v62, v64, v66, v67, v68, v69, v70);
  v73 = sub_10011F334(v71, v72, 2.0);
  v75 = v74;
  [v40 bounds];
  v77 = v76;
  v79 = v78;
  v201 = *&CATransform3DIdentity.m33;
  *&a.m31 = *&CATransform3DIdentity.m31;
  v202 = *&a.m31;
  *&a.m33 = v201;
  v199 = *&CATransform3DIdentity.m43;
  *&a.m41 = *&CATransform3DIdentity.m41;
  v200 = *&a.m41;
  *&a.m43 = v199;
  v197 = *&CATransform3DIdentity.m13;
  *&a.m11 = *&CATransform3DIdentity.m11;
  v198 = *&a.m11;
  *&a.m13 = v197;
  v195 = *&CATransform3DIdentity.m23;
  *&a.m21 = *&CATransform3DIdentity.m21;
  v196 = *&a.m21;
  *&a.m23 = v195;
  CATransform3DScale(&v205, &a, v55 / v76, v57 / v78, 1.0);
  *&a.m31 = v202;
  *&a.m33 = v201;
  *&a.m41 = v200;
  *&a.m43 = v199;
  *&a.m11 = v198;
  *&a.m13 = v197;
  *&a.m21 = v196;
  *&a.m23 = v195;
  CATransform3DScale(&v206, &a, v73 / v77, v75 / v79, 1.0);
  a = v205;
  b = v213;
  CATransform3DConcat(&v209, &a, &b);
  a = v206;
  b = v214;
  CATransform3DConcat(&v210, &a, &b);
  [v40 bounds];
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  [v2 bounds];
  v216.origin.x = sub_1001206EC(v81, v83, v85, v87, v88, v89, v90, v91);
  Width = CGRectGetWidth(v216);
  [v58 bounds];
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  [v2 bounds];
  v217.origin.x = sub_1001206EC(v94, v96, v98, v100, v101, v102, v103, v104);
  v105 = CGRectGetWidth(v217);
  v106 = Width / v105 + Width / v105;
  [v40 bounds];
  v108 = v107;
  v110 = v109;
  v112 = v111;
  v114 = v113;
  [v2 bounds];
  v218.origin.x = sub_1001206EC(v108, v110, v112, v114, v115, v116, v117, v118);
  CGRectGetHeight(v218);
  [v58 bounds];
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;
  [v2 bounds];
  v219.origin.x = sub_1001206EC(v120, v122, v124, v126, v127, v128, v129, v130);
  CGRectGetHeight(v219);
  [v40 bounds];
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v138 = v137;
  [v2 bounds];
  sub_1001206EC(v132, v134, v136, v138, v139, v140, v141, v142);
  v145 = sub_10011F31C(v143, v144, v106);
  v147 = v146;
  [v58 bounds];
  v149 = v148;
  v151 = v150;
  v153 = v152;
  v155 = v154;
  [v2 bounds];
  v160 = sub_1001206EC(v149, v151, v153, v155, v156, v157, v158, v159);
  v162 = v161;
  v164 = v163;
  [v58 bounds];
  v166 = v165;
  v168 = v167;
  *&a.m31 = v202;
  *&a.m33 = v201;
  *&a.m41 = v200;
  *&a.m43 = v199;
  *&a.m11 = v198;
  *&a.m13 = v197;
  *&a.m21 = v196;
  *&a.m23 = v195;
  CATransform3DScale(&v207, &a, v145 / v165, v147 / v167, 1.0);
  *&a.m31 = v202;
  *&a.m33 = v201;
  *&a.m41 = v200;
  *&a.m43 = v199;
  *&a.m11 = v198;
  *&a.m13 = v197;
  *&a.m21 = v196;
  *&a.m23 = v195;
  CATransform3DScale(&b, &a, v162 / v166, v164 / v168, 1.0);
  v204 = v207;
  v203 = v213;
  CATransform3DConcat(&a, &v204, &v203);
  v204 = b;
  v203 = v214;
  CATransform3DConcat(&v212, &v204, &v203);
  sub_1005B981C(&unk_101A23620, &qword_101489BD0);
  v169 = swift_allocObject();
  v169[1] = xmmword_10146CA70;
  *&v204.m14 = &type metadata for CRLSpringLayerAnimation.Def;
  v170 = sub_1008DA198();
  *&v204.m21 = v170;
  v171 = swift_allocObject();
  *&v204.m11 = v171;
  v172 = *&v210.m33;
  *(v171 + 248) = *&v210.m31;
  v173 = *&v210.m41;
  v174 = *&v210.m43;
  *(v171 + 264) = v172;
  *(v171 + 280) = v173;
  *(v171 + 296) = v174;
  v175 = *&v210.m13;
  *(v171 + 184) = *&v210.m11;
  *(v171 + 200) = v175;
  v176 = *&v210.m23;
  *(v171 + 216) = *&v210.m21;
  *(v171 + 232) = v176;
  v177 = *&v209.m33;
  *(v171 + 120) = *&v209.m31;
  *(v171 + 136) = v177;
  v178 = *&v209.m43;
  *(v171 + 152) = *&v209.m41;
  *(v171 + 168) = v178;
  v179 = *&v209.m13;
  *(v171 + 56) = *&v209.m11;
  *(v171 + 72) = v179;
  v180 = *&v209.m23;
  *(v171 + 88) = *&v209.m21;
  *(v171 + 104) = v180;
  *(v171 + 312) = 52;
  *(v171 + 48) = 0;
  *(v171 + 16) = xmmword_1014B0920;
  *(v171 + 32) = xmmword_1014B0930;
  *(v171 + 320) = 0;
  *(v171 + 328) = 131586;
  sub_100D3F52C();
  sub_100005070(&v204);
  *&v204.m14 = &type metadata for CRLSpringLayerAnimation.Def;
  *&v204.m21 = v170;
  v181 = swift_allocObject();
  v182 = *&v212.m33;
  *(v181 + 248) = *&v212.m31;
  v183 = *&v212.m41;
  v184 = *&v212.m43;
  *(v181 + 264) = v182;
  *(v181 + 280) = v183;
  *(v181 + 296) = v184;
  v185 = *&v212.m13;
  *(v181 + 184) = *&v212.m11;
  *(v181 + 200) = v185;
  v186 = *&v212.m23;
  *(v181 + 216) = *&v212.m21;
  *(v181 + 232) = v186;
  v187 = *&a.m33;
  *(v181 + 120) = *&a.m31;
  *(v181 + 136) = v187;
  v188 = *&a.m43;
  *(v181 + 152) = *&a.m41;
  *(v181 + 168) = v188;
  v189 = *&a.m13;
  *(v181 + 56) = *&a.m11;
  *(v181 + 72) = v189;
  v190 = *&a.m23;
  *(v181 + 88) = *&a.m21;
  *&v204.m11 = v181;
  *(v181 + 104) = v190;
  *(v181 + 312) = 52;
  *(v181 + 48) = 0;
  *(v181 + 16) = xmmword_1014B0920;
  *(v181 + 32) = xmmword_1014B0930;
  *(v181 + 320) = 0;
  *(v181 + 328) = 131586;
  sub_100D3F52C();
  sub_100005070(&v204);
  if (qword_1019F2370 != -1)
  {
    swift_once();
  }

  *&v204.m14 = &type metadata for CRLBasicLayerAnimation.Def;
  *&v204.m21 = sub_1005F907C();
  *&v204.m11 = swift_allocObject();
  sub_1005F8AB8(&qword_101A1E880, *&v204.m11 + 16);
  sub_100D3F52C();
  sub_100005070(&v204);
  *(v169 + 216) = 0u;
  *(v169 + 200) = 0u;
  *(v169 + 184) = 0u;
  *(v169 + 168) = 0u;
  *(v169 + 152) = 0u;
  v191 = sub_100789704(v169, 0.0);
  v193 = v192;
  v194 = v191;
  swift_setDeallocating();
  sub_1005B981C(&unk_101A09F70, &qword_101482EA0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(a2 + 24) = &type metadata for CRLLayerAnimationGroup;
  *(a2 + 32) = &off_101885E50;

  *a2 = v193;
  *(a2 + 8) = v194;
}

id sub_100D6E4B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLConnectionLineKnob.CRLConnectionLineKnobAnimatedLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100D6E56C()
{
  result = [objc_opt_self() defaultCenter];
  qword_101AD80D0 = result;
  return result;
}

NSNotificationName sub_100D6E5A8()
{
  sub_1005B981C(&qword_101A1EA40, &qword_1014B09F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10146C4D0;
  *(v0 + 32) = UIAccessibilityBoldTextStatusDidChangeNotification;
  *(v0 + 40) = UIAccessibilityDarkerSystemColorsStatusDidChangeNotification;
  *(v0 + 48) = UIContentSizeCategoryDidChangeNotification;
  qword_101AD80D8 = v0;
  v1 = UIAccessibilityBoldTextStatusDidChangeNotification;
  v2 = UIAccessibilityDarkerSystemColorsStatusDidChangeNotification;

  return UIContentSizeCategoryDidChangeNotification;
}

unint64_t sub_100D6E6D8()
{
  result = qword_101A1EA38;
  if (!qword_101A1EA38)
  {
    result = swift_getWitnessTable("\t,8", &type metadata for CRLConnectionLineKnob.KnobState, v0, v1);
    atomic_store(result, &qword_101A1EA38);
  }

  return result;
}

uint64_t sub_100D6E72C(uint64_t a1, id a2)
{
  strcpy(&v67, "canvas-diagram");
  HIBYTE(v67) = -18;
  v3 = [a2 layout];
  [v3 transformInRoot];
  v61 = v65;
  *v62 = v64;
  v60 = v66;

  v64 = *v62;
  v65 = v61;
  v66 = v60;
  if (sub_1001399E4(&v64))
  {
    a1 = sub_100346034(a1);
  }

  if (a1 > 5)
  {
    if (a1 == 6)
    {
      v4 = 1935762733;
      goto LABEL_39;
    }

    if (a1 != 8)
    {
      goto LABEL_10;
    }

    v5 = 1970238253;
LABEL_37:
    v45._countAndFlagsBits = v5 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    v45._object = 0xE600000000000000;
    String.append(_:)(v45);
    goto LABEL_41;
  }

  if (a1 == 2)
  {
LABEL_36:
    v5 = 1919905325;
    goto LABEL_37;
  }

  if (a1 == 4)
  {
    v4 = 1936029485;
LABEL_39:
    v46._countAndFlagsBits = v4 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    v46._object = 0xE500000000000000;
    String.append(_:)(v46);
    goto LABEL_41;
  }

LABEL_10:
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *&v64 = a1;
  type metadata accessor for CRLCanvasKnobTag(0);
  v7 = String.init<A>(describing:)();
  v11 = v8;
  *(inited + 56) = &type metadata for String;
  v9 = sub_1000053B0();
  *(inited + 32) = v7;
  v10 = inited + 32;
  *(inited + 64) = v9;
  *(inited + 40) = v11;
  v63 = objc_opt_self();
  LODWORD(v11) = [v63 _atomicIncrementAssertCount];
  *&v64 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v64, "Could not find an asset for connection knob with tag %@", 55, 2u);
  StaticString.description.getter("getKnobImageNames(for:on:)", 26, 2);
  v12 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineKnob.swift", 91, 2);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v18 = static OS_os_log.crlAssert;
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_10146CA70;
    *(v19 + 56) = &type metadata for Int32;
    *(v19 + 64) = &protocol witness table for Int32;
    *(v19 + 32) = v11;
    v20 = sub_1005CF000();
    *(v19 + 96) = v20;
    v21 = sub_1005CF04C();
    *(v19 + 72) = v12;
    *(v19 + 136) = &type metadata for String;
    *(v19 + 144) = v9;
    *(v19 + 104) = v21;
    *(v19 + 112) = v15;
    *(v19 + 120) = v17;
    *(v19 + 176) = &type metadata for UInt;
    *(v19 + 184) = &protocol witness table for UInt;
    *(v19 + 152) = 571;
    v22 = v64;
    *(v19 + 216) = v20;
    *(v19 + 224) = v21;
    *(v19 + 192) = v22;
    v23 = v12;
    v24 = v22;
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "Could not find an asset for connection knob with tag %@", 55, 2, inited);

    type metadata accessor for __VaListBuilder();
    v12 = swift_allocObject();
    v12[2] = 8;
    v12[3] = 0;
    v27 = v12 + 3;
    v12[4] = 0;
    v12[5] = 0;
    v11 = *(inited + 16);
    v9 = inited;
    if (!v11)
    {
      break;
    }

    v15 = 0;
    inited = 40;
    while (1)
    {
      v28 = (v10 + 40 * v15);
      v17 = v28[3];
      sub_100020E58(v28, v17);
      v29 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v30 = *v27;
      v31 = *(v29 + 16);
      v32 = __OFADD__(*v27, v31);
      v33 = *v27 + v31;
      if (v32)
      {
        break;
      }

      v34 = v12[4];
      if (v34 >= v33)
      {
        goto LABEL_28;
      }

      if (v34 + 0x4000000000000000 < 0)
      {
        goto LABEL_50;
      }

      v17 = v12[5];
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      v12[4] = v33;
      if ((v33 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_51;
      }

      v35 = v10;
      v36 = v9;
      v37 = v29;
      v38 = swift_slowAlloc();
      v39 = v38;
      v12[5] = v38;
      if (v17)
      {
        if (v38 != v17 || v38 >= &v17[8 * v30])
        {
          memmove(v38, v17, 8 * v30);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v29 = v37;
        v9 = v36;
        v10 = v35;
        inited = 40;
LABEL_28:
        v39 = v12[5];
        if (!v39)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }

      v29 = v37;
      v9 = v36;
      v10 = v35;
      inited = 40;
      if (!v39)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_29:
      v41 = *(v29 + 16);
      if (v41)
      {
        v42 = (v29 + 32);
        v43 = *v27;
        while (1)
        {
          v44 = *v42++;
          *&v39[8 * v43] = v44;
          v43 = *v27 + 1;
          if (__OFADD__(*v27, 1))
          {
            break;
          }

          *v27 = v43;
          if (!--v41)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:

      if (++v15 == v11)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

LABEL_40:
  v47 = __VaListBuilder.va_list()();
  StaticString.description.getter("getKnobImageNames(for:on:)", 26, 2);
  v48 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineKnob.swift", 91, 2);
  v49 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Could not find an asset for connection knob with tag %@", 55, 2);
  v50 = String._bridgeToObjectiveC()();

  [v63 handleFailureInFunction:v48 file:v49 lineNumber:571 isFatal:0 format:v50 args:v47];

  swift_setDeallocating();
  swift_arrayDestroy();
LABEL_41:
  v51 = objc_opt_self();
  if ([v51 isBoldTextEnabled])
  {
    v52._countAndFlagsBits = 0x646C6F622DLL;
    v52._object = 0xE500000000000000;
    String.append(_:)(v52);
  }

  if ([v51 isIncreaseContrastEnabled])
  {
    v53._countAndFlagsBits = 6512941;
    v53._object = 0xE300000000000000;
    String.append(_:)(v53);
  }

  if ([v51 isUsingAccessibilityTextSize])
  {
    v54._countAndFlagsBits = 7627821;
    v54._object = 0xE300000000000000;
    String.append(_:)(v54);
  }

  v55 = v67;
  v64 = v67;

  v56._countAndFlagsBits = 20013;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v57 = v64;
  v64 = v55;

  v58._countAndFlagsBits = 20525;
  v58._object = 0xE200000000000000;
  String.append(_:)(v58);

  return v57;
}

char *sub_100D6EE70(void *a1)
{
  v3 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_containerLayer;
  *&v1[v3] = [objc_allocWithZone(CALayer) init];
  v4 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_resizeKnobLayer;
  *&v1[v4] = [objc_allocWithZone(CALayer) init];
  v5 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobCurrentImage;
  *&v1[OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobCurrentImage] = 0;
  v6 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobLayer;
  *&v1[v6] = [objc_allocWithZone(CALayer) init];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v7 = [a1 knobImage];
  v8 = *&v1[v5];
  *&v1[v5] = v7;

  v47.receiver = v1;
  v47.super_class = type metadata accessor for CRLConnectionLineKnob.CRLConnectionLineKnobAnimatedLayer();
  v9 = objc_msgSendSuper2(&v47, "init");
  v10 = sub_100D6D030();
  [v9 setBounds:{0.0, 0.0, v10, v11}];

  sub_100D6C984();
  sub_100D6CB6C();
  v12 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_containerLayer;
  v13 = *&v9[OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_containerLayer];
  v14 = sub_100D6D030();
  [v13 setBounds:{0.0, 0.0, v14, v15}];

  [*&v9[v12] setAnchorPoint:{0.0, 0.0}];
  v16 = [*&v9[v12] superlayer];
  if (v16)
  {
  }

  else
  {
    [v9 addSublayer:*&v9[v12]];
  }

  v17 = objc_opt_self();
  [v17 begin];
  [v17 setDisableActions:1];
  v18 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobLayer;
  v19 = *&v9[OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobLayer];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [v9 bounds];
  [v19 setFrame:{sub_1001206EC(v21, v23, v25, v27, v28, v29, v30, v31)}];

  [*&v9[v12] addSublayer:*&v9[v18]];
  v32 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_resizeKnobLayer;
  v33 = *&v9[OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_resizeKnobLayer];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  [v9 bounds];
  [v33 setFrame:{sub_1001206EC(v35, v37, v39, v41, v42, v43, v44, v45)}];

  [*&v9[v12] addSublayer:*&v9[v32]];
  [v17 commit];
  return v9;
}

void sub_100D6F188()
{
  v1 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_containerLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_resizeKnobLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  *(v0 + OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobCurrentImage) = 0;
  v3 = OBJC_IVAR____TtCC8Freeform21CRLConnectionLineKnobP33_96EC3ACD086E6EEC09C8AECDD8231E3A34CRLConnectionLineKnobAnimatedLayer_connectionKnobLayer;
  *(v0 + v3) = [objc_allocWithZone(CALayer) init];
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _s13ItemViewModelVMa(uint64_t a1)
{
  result = qword_101A1EAA0;
  if (!qword_101A1EAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D6F2F4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGImage(319);
      if (v3 <= 0x3F)
      {
        sub_100ABE298();
        if (v4 <= 0x3F)
        {
          sub_100D6F3F0();
          if (v5 <= 0x3F)
          {
            sub_100D6F448(319);
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

void sub_100D6F3F0()
{
  if (!qword_101A0CFE8)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_101A0CFE8);
    }
  }
}

void sub_100D6F448(uint64_t a1)
{
  if (!qword_101A1EAB0)
  {
    _s17CategoryViewModelVMa(255);
    sub_100D70724(&unk_101A1EAB8, _s17CategoryViewModelVMa, byte_1014D7BAC);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_101A1EAB0);
    }
  }
}

uint64_t sub_100D6F4DC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = _s13ItemViewModelVMa(0);
  __chkstk_darwin(v6);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019F69B8, &unk_101492880);
  __chkstk_darwin(v9 - 8);
  v11 = &v72 - v10;
  v75 = v8;
  if (a3)
  {
    type metadata accessor for Date();
    sub_100D70724(&qword_101A1BFD8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = *(v6 + 32);
    v13 = *(a1 + v12 + 8);
    v79[0] = *(a1 + v12);
    v79[1] = v13;
    v14 = (a2 + v12);
    v15 = v14[1];
    v77 = *v14;
    v78 = v15;
    v16 = type metadata accessor for Locale();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    sub_100017CD8();

    v17 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_10098F88C(v11);

    if (v17)
    {
      goto LABEL_13;
    }
  }

  type metadata accessor for Date();
  sub_100D70724(&qword_101A1BFD8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    type metadata accessor for UUID();
    sub_100D70724(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = 0;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      goto LABEL_13;
    }

    sub_100D70724(&unk_101A09E30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v17 = -1;
    goto LABEL_13;
  }

LABEL_9:
  sub_100D70724(&qword_101A1C708, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    goto LABEL_10;
  }

LABEL_11:
  if ((dispatch thunk of static Comparable.> infix(_:_:)() & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v17 = 1;
LABEL_13:
  v76 = v17;
  v74 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v79[0] = v17;
  type metadata accessor for ComparisonResult(0);
  v19 = String.init<A>(describing:)();
  v21 = v20;
  *(inited + 56) = &type metadata for String;
  v22 = sub_1000053B0();
  *(inited + 32) = v19;
  v23 = inited + 32;
  v24 = a2;
  *(inited + 64) = v22;
  *(inited + 40) = v21;
  v26 = v75;
  v25 = v76;
  sub_100D706C0(a1, v75);
  v27 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v22;
  *(inited + 72) = v27;
  *(inited + 80) = v28;
  sub_100D706C0(v24, v26);
  v29 = String.init<A>(describing:)();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v22;
  *(inited + 112) = v29;
  *(inited + 120) = v30;
  v31 = sub_100D70520(a1, v24);
  if (!v25 && (v31 & 1) != 0 || (v32 = sub_100D70520(a1, v24), v25) && (v32 & 1) == 0)
  {

    return v25;
  }

  v72 = objc_opt_self();
  LODWORD(v75) = [v72 _atomicIncrementAssertCount];
  v79[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, v79, "Comparison result should come up as .orderedSame if and only if lhs and rhs are equivalent. comparisonResult: %@ | lhs: %@ | rhs: %@", 132, 2u);
  StaticString.description.getter("compare(lhs:rhs:)", 17, 2);
  v73 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Stencil Library/CRLStencilLibrary-ItemViewModel.swift", 123, 2);
  v33 = String._bridgeToObjectiveC()();

  v34 = [v33 lastPathComponent];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_50;
  }

LABEL_19:
  v38 = static OS_os_log.crlAssert;
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_10146CA70;
  *(v39 + 56) = &type metadata for Int32;
  *(v39 + 64) = &protocol witness table for Int32;
  *(v39 + 32) = v75;
  v40 = sub_1005CF000();
  *(v39 + 96) = v40;
  v41 = sub_100D70724(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  v42 = v73;
  *(v39 + 72) = v73;
  *(v39 + 136) = &type metadata for String;
  *(v39 + 144) = v22;
  *(v39 + 104) = v41;
  *(v39 + 112) = v35;
  *(v39 + 120) = v37;
  *(v39 + 176) = &type metadata for UInt;
  *(v39 + 184) = &protocol witness table for UInt;
  *(v39 + 152) = 107;
  v43 = v79[0];
  *(v39 + 216) = v40;
  *(v39 + 224) = v41;
  *(v39 + 192) = v43;
  v44 = v42;
  v45 = v43;
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v39);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v47 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v47, "Comparison result should come up as .orderedSame if and only if lhs and rhs are equivalent. comparisonResult: %@ | lhs: %@ | rhs: %@", 132, 2, inited);

  type metadata accessor for __VaListBuilder();
  v37 = swift_allocObject();
  v37[2] = 8;
  v37[3] = 0;
  v48 = v37 + 3;
  v37[4] = 0;
  v37[5] = 0;
  v75 = inited;
  v49 = *(inited + 16);
  if (v49)
  {
    v50 = 0;
    inited = 40;
    while (1)
    {
      v51 = (v23 + 40 * v50);
      v35 = v51[4];
      v22 = sub_100020E58(v51, v51[3]);
      v52 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v53 = *v48;
      v54 = *(v52 + 16);
      v55 = __OFADD__(*v48, v54);
      v56 = *v48 + v54;
      if (v55)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        swift_once();
        goto LABEL_19;
      }

      v22 = v37[4];
      if (v22 >= v56)
      {
        goto LABEL_36;
      }

      if (v22 + 0x4000000000000000 < 0)
      {
        goto LABEL_48;
      }

      v35 = v37[5];
      if (2 * v22 > v56)
      {
        v56 = 2 * v22;
      }

      v37[4] = v56;
      if ((v56 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_49;
      }

      v57 = v49;
      v58 = v23;
      v59 = v52;
      v60 = swift_slowAlloc();
      v61 = v60;
      v37[5] = v60;
      if (v35)
      {
        break;
      }

      v52 = v59;
      v23 = v58;
      v49 = v57;
      inited = 40;
      if (!v61)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_37:
      v63 = *(v52 + 16);
      if (v63)
      {
        v64 = (v52 + 32);
        v65 = *v48;
        while (1)
        {
          v66 = *v64++;
          *&v61[8 * v65] = v66;
          v65 = *v48 + 1;
          if (__OFADD__(*v48, 1))
          {
            break;
          }

          *v48 = v65;
          if (!--v63)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

LABEL_21:

      if (++v50 == v49)
      {
        goto LABEL_44;
      }
    }

    if (v60 != v35 || v60 >= &v35[8 * v53])
    {
      memmove(v60, v35, 8 * v53);
    }

    v22 = v37;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v52 = v59;
    v23 = v58;
    v49 = v57;
    inited = 40;
LABEL_36:
    v61 = v37[5];
    if (!v61)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

LABEL_44:
  v67 = __VaListBuilder.va_list()();
  StaticString.description.getter("compare(lhs:rhs:)", 17, 2);
  v68 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Stencil Library/CRLStencilLibrary-ItemViewModel.swift", 123, 2);
  v69 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Comparison result should come up as .orderedSame if and only if lhs and rhs are equivalent. comparisonResult: %@ | lhs: %@ | rhs: %@", 132, 2);
  v70 = String._bridgeToObjectiveC()();

  [v72 handleFailureInFunction:v68 file:v69 lineNumber:107 isFatal:0 format:v70 args:v67];

  return v76;
}

uint64_t sub_100D6FEA0(__int128 *a1)
{
  type metadata accessor for UUID();
  sub_100D70724(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = _s13ItemViewModelVMa(0);
  String.hash(into:)();
  if (*(v1 + v3[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100BD4000(a1, *(v1 + v3[11]));
  type metadata accessor for CGImage(0);
  sub_100D70724(&unk_101A1F1A0, type metadata accessor for CGImage, a5_1);
  _CFObject.hash(into:)();
  Hasher._combine(_:)(*(v1 + v3[12]));
  Hasher._combine(_:)(*(v1 + v3[13]));
  type metadata accessor for Date();
  sub_100D70724(&qword_101A1EB18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100D7007C()
{
  Hasher.init(_seed:)();
  sub_100D6FEA0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100D700C0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100D6FEA0(v2);
  return Hasher._finalize()();
}

unint64_t sub_100D7014C()
{
  result = qword_101A1EB10;
  if (!qword_101A1EB10)
  {
    result = swift_getWitnessTable(byte_1014B0AE4, &_s13ItemViewModelV9SortStyleON, v0, v1);
    atomic_store(result, &qword_101A1EB10);
  }

  return result;
}

Swift::Int sub_100D701A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (*(v0 + 32))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100BD4000(v2, *(v0 + 48));
  type metadata accessor for CGImage(0);
  sub_100D70724(&unk_101A1F1A0, type metadata accessor for CGImage, a5_1);
  _CFObject.hash(into:)();
  Hasher._combine(_:)(*(v0 + 56) & 1);
  Hasher._combine(_:)(*(v0 + 57) & 1);
  return Hasher._finalize()();
}

void sub_100D702AC(__int128 *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 57);
  String.hash(into:)();
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100BD4000(a1, v4);
  type metadata accessor for CGImage(0);
  sub_100D70724(&unk_101A1F1A0, type metadata accessor for CGImage, a5_1);
  _CFObject.hash(into:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
}

Swift::Int sub_100D703A4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100BD4000(v7, v3);
  type metadata accessor for CGImage(0);
  sub_100D70724(&unk_101A1F1A0, type metadata accessor for CGImage, a5_1);
  _CFObject.hash(into:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_100D704C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  return sub_100D70888(v5, v7) & 1;
}

uint64_t sub_100D70520(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = _s13ItemViewModelVMa(0);
  v5 = v4[8];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[9];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  sub_100BC569C(*(a1 + v4[11]), *(a2 + v4[11]));
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CGImage(0);
  sub_100D70724(&unk_101A1F1A0, type metadata accessor for CGImage, a5_1);
  if ((static _CFObject.== infix(_:_:)() & 1) == 0 || *(a1 + v4[12]) != *(a2 + v4[12]) || *(a1 + v4[13]) != *(a2 + v4[13]) || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

uint64_t sub_100D706C0(uint64_t a1, uint64_t a2)
{
  v4 = _s13ItemViewModelVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D70724(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100D7076C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100D70788(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100D707D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100D70834()
{
  result = qword_101A1EB20;
  if (!qword_101A1EB20)
  {
    result = swift_getWitnessTable("a*8", &_s21ExternalItemViewModelVN, v0, v1);
    atomic_store(result, &qword_101A1EB20);
  }

  return result;
}

uint64_t sub_100D70888(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = a1[4];
  v6 = a2[4];
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = a1[3] == a2[3] && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v6)
  {
    goto LABEL_18;
  }

  sub_100BC569C(a1[6], a2[6]);
  if (v8)
  {
    type metadata accessor for CGImage(0);
    sub_100D70724(&unk_101A1F1A0, type metadata accessor for CGImage, a5_1);
    if ((static _CFObject.== infix(_:_:)() & 1) != 0 && ((*(a1 + 56) ^ *(a2 + 56)) & 1) == 0)
    {
      v9 = *(a1 + 57) ^ *(a2 + 57) ^ 1;
      return v9 & 1;
    }
  }

LABEL_18:
  v9 = 0;
  return v9 & 1;
}

uint64_t sub_100D709D8(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 simpleArrow];
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      sub_100D70E8C();
      v5 = a1;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 10;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return 10;
  }

  v8 = [v2 filledCircle];
  if (v8)
  {
    v9 = v8;
    if (a1)
    {
      sub_100D70E8C();
      v10 = a1;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return 1;
  }

  v12 = [v2 filledDiamond];
  if (v12)
  {
    v13 = v12;
    if (a1)
    {
      sub_100D70E8C();
      v14 = a1;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        return 2;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return 2;
  }

  v16 = [v2 openArrow];
  if (v16)
  {
    v17 = v16;
    if (a1)
    {
      sub_100D70E8C();
      v18 = a1;
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        return 7;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return 7;
  }

  v20 = [v2 filledArrow];
  if (v20)
  {
    v21 = v20;
    if (a1)
    {
      sub_100D70E8C();
      v22 = a1;
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return 0;
  }

  v24 = [v2 filledSquare];
  if (v24)
  {
    v25 = v24;
    if (a1)
    {
      sub_100D70E8C();
      v26 = a1;
      v27 = static NSObject.== infix(_:_:)();

      if (v27)
      {
        return 3;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return 3;
  }

  v28 = [v2 openSquare];
  if (v28)
  {
    v29 = v28;
    if (a1)
    {
      sub_100D70E8C();
      v30 = a1;
      v31 = static NSObject.== infix(_:_:)();

      if (v31)
      {
        return 9;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return 9;
  }

  v32 = [v2 openCircle];
  if (v32)
  {
    v33 = v32;
    if (a1)
    {
      sub_100D70E8C();
      v34 = a1;
      v35 = static NSObject.== infix(_:_:)();

      if (v35)
      {
        return 8;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return 8;
  }

  v36 = [v2 invertedArrow];
  if (v36)
  {
    v37 = v36;
    if (a1)
    {
      sub_100D70E8C();
      v38 = a1;
      v39 = static NSObject.== infix(_:_:)();

      if (v39)
      {
        return 4;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return 4;
  }

  v40 = [v2 line];
  if (v40)
  {
    v41 = v40;
    if (a1)
    {
      sub_100D70E8C();
      v42 = a1;
      v43 = static NSObject.== infix(_:_:)();

      if (v43)
      {
        return 5;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return 5;
  }

  v44 = [v2 none];
  if (!v44)
  {
    if (!a1)
    {
      return 6;
    }

    return 10;
  }

  v45 = v44;
  if (a1)
  {
    sub_100D70E8C();
    v46 = a1;
    v47 = static NSObject.== infix(_:_:)();

    if (v47)
    {
      return 6;
    }

    return 10;
  }

  return 6;
}

unint64_t sub_100D70E8C()
{
  result = qword_101A14D70;
  if (!qword_101A14D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A14D70);
  }

  return result;
}

void sub_100D70EE4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong commandController];

    if (v2)
    {
      sub_10088E3FC(0);
    }
  }

  sub_100936120(-1);
  sub_100935E08();
  if (v3 <= 0)
  {
    KeyPath = swift_getKeyPath();
    sub_100947328(KeyPath, 0, v5);
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 commandController];

    if (v8)
    {
      sub_10088E600(0);
    }
  }
}

uint64_t sub_100D7104C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = String._bridgeToObjectiveC()();
  [a1 insertText:v6];

  return sub_1005E09AC(v8);
}

void sub_100D710EC()
{
  v1 = *(*&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v1)
  {
    goto LABEL_13;
  }

  if (*(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {
    return;
  }

  sub_100960E34();
  if (!v2)
  {
    return;
  }

  v3 = [v2 selectedTextRange];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = *&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper];
  v6 = [v4 start];
  v7 = *&v6[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v8 = [v5 charIndexForBeginningOfLineFromCharIndex:v7];
  v9 = [v4 end];
  v10 = *&v9[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v10 < v8)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v11 = type metadata accessor for CRLTextRange();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v14 = &v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v14 = v8;
  *(v14 + 1) = v10;
  *&v12[v13] = 0;
  v17.receiver = v12;
  v17.super_class = v11;
  v15 = objc_msgSendSuper2(&v17, "init");
  if (([v15 isEmpty] & 1) == 0)
  {
    sub_100960E34();
    if (v16)
    {
      [v16 setSelectedTextRange:v15];
    }

    [v0 deleteCurrentSelection];
  }
}

void sub_100D712CC(uint64_t a1)
{
  sub_100960E34();
  if (v3)
  {
    v4 = [v3 selectedTextRange];
    if (v4)
    {
      v16 = v4;
      if ([v4 isEmpty])
      {
        v5 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
        if (!v5)
        {
          __break(1u);
          return;
        }

        v6 = v5;
        v7 = [v16 start];
        v8 = *&v7[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

        v9 = [v6 wordAtCharIndex:v8 includePreviousWord:0];
        v11 = v10;

        sub_100960E34();
        if (v12)
        {
          v13 = v12;
          v14 = objc_allocWithZone(type metadata accessor for CRLTextRange());
          swift_unknownObjectRetain();
          v15 = sub_10078CDF0(v9, v11);
          [v13 setSelectedTextRange:v15];
          swift_unknownObjectRelease();
        }
      }

      sub_100941494(a1);
    }
  }
}

void sub_100D714BC()
{
  v1 = v0;
  sub_100960E34();
  if (v2)
  {
    v3 = [v2 selectedTextRange];
    if (v3)
    {
      v15 = v3;
      if ([v3 isEmpty])
      {
        v4 = *(*&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
        if (!v4)
        {
          __break(1u);
          return;
        }

        v5 = v4;
        v6 = [v15 start];
        v7 = *&v6[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

        v8 = [v5 findRangeOfWordBackwardFromCharIndex:v7 expandingRangeToEndOfWord:0];
        v10 = v9;

        sub_100960E34();
        if (v11)
        {
          v12 = v11;
          v13 = objc_allocWithZone(type metadata accessor for CRLTextRange());
          swift_unknownObjectRetain();
          v14 = sub_10078CDF0(v8, v10);
          [v12 setSelectedTextRange:v14];
          swift_unknownObjectRelease();
        }
      }

      [v1 deleteCurrentSelection];
    }
  }
}

uint64_t sub_100D71674(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, uint64_t, __n128))
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v9 = a1;
  }

  (a5)(v11, a4);

  return sub_1005E09AC(v11);
}

void sub_100D717DC()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v2 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {
    return;
  }

  sub_100960E34();
  if (v3)
  {
    v4 = *(*(v0 + v1) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v4)
    {
      v5 = v3;
      swift_unknownObjectRetain();
      v6 = v4;
      v7 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:objc_msgSend(v6 caretAffinity:{"length"), 0}];
      NSNotFound.getter();
      v8 = *&v7[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
      v9 = *&v7[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
      v10 = type metadata accessor for CRLTextRange();
      v11 = objc_allocWithZone(v10);
      v12 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
      *&v11[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
      *&v11[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
      v13 = &v11[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      *v13 = v8;
      *(v13 + 1) = v8;
      *&v11[v12] = v9;
      v15.receiver = v11;
      v15.super_class = v10;
      v14 = objc_msgSendSuper2(&v15, "init");

      [v5 setSelectedTextRange:v14];
      swift_unknownObjectRelease();

      goto LABEL_6;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_6:
  sub_10093DDE0(0, 1);
}

void sub_100D71984()
{
  v1 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v12 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v12)
  {
    goto LABEL_13;
  }

  if (!*(v12 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {
    sub_100960E34();
    if (v13)
    {
      v31 = [v13 selectedTextRange];
      if (v31)
      {
        sub_100960E34();
        if (!v14)
        {
LABEL_11:
          sub_10093DDE0(0, 1);

          return;
        }

        v15 = *(*(v0 + v11) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
        if (!v15)
        {
          goto LABEL_14;
        }

        v16 = *&v15[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
        if (!v16)
        {
LABEL_15:
          __break(1u);
          return;
        }

        v17 = v14;
        (*(*v16 + 896))();
        sub_1005E0A78(&v7[*(v5 + 20)], v10);
        v30 = v17;
        swift_unknownObjectRetain();
        v18 = v15;
        sub_1005E0ADC(v7, type metadata accessor for CRLWPShapeItemCRDTData);
        (*(v2 + 16))(v4, v10, v1);
        sub_1005E0ADC(v10, type metadata accessor for CRLWPStorageCRDTData);
        v19 = CRAttributedString.attributedString.getter();
        (*(v2 + 8))(v4, v1);
        v20 = [v19 length];

        v21 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:v20 caretAffinity:0];
        v22 = *&v31[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v23 = *&v21[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
        if (v23 >= v22)
        {
          v24 = v21;
          v25 = type metadata accessor for CRLTextRange();
          v26 = objc_allocWithZone(v25);
          v27 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
          *&v26[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
          *&v26[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
          v28 = &v26[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          *v28 = v22;
          *(v28 + 1) = v23;
          *&v26[v27] = 0;
          v32.receiver = v26;
          v32.super_class = v25;
          v29 = objc_msgSendSuper2(&v32, "init");

          [v30 setSelectedTextRange:v29];
          swift_unknownObjectRelease();

          goto LABEL_11;
        }

        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

id sub_100D71DF4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v1)
  {
    if (!*(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      return [*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) moveToEndOfParagraph:0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100D7208C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong textInputResponder];

    if (v3)
    {
      if (*&v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] <= 0)
      {
        v4 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
        v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
        v5 = *&v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
        if (v5)
        {
          [v5 selectionWillChange:v3];
        }

        v3[v4] = 0;
      }
    }
  }

  sub_100960E34();
  if (v6)
  {
    v7 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v6;
    swift_unknownObjectRetain();
    v9 = v7;
    v10 = sub_100D7320C(v9);

    [v8 setSelectedTextRange:v10];
    swift_unknownObjectRelease();
  }

  sub_10093DDE0(0, 0);
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v16 = [v11 textInputResponder];

    v13 = v16;
    if (v16)
    {
      if (*&v16[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] <= 0)
      {
        v14 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
        v16[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
        v15 = *&v16[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
        if (v15)
        {
          [v15 selectionDidChange:v16];
          v13 = v16;
        }

        v13[v14] = 0;
      }
    }
  }
}

uint64_t sub_100D7228C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_1005E09AC(v9);
}

void sub_100D72388(uint64_t a1, SEL *a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v3)
  {
    if (!*(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      v5 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper);
      sub_100601584(a1, v15);
      v6 = v16;
      if (v16)
      {
        v7 = sub_100020E58(v15, v16);
        v8 = *(v6 - 8);
        v9 = __chkstk_darwin(v7);
        v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v8 + 16))(v11, v9);
        v12 = v5;
        v13 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v8 + 8))(v11, v6);
        sub_100005070(v15);
      }

      else
      {
        v14 = v5;
        v13 = 0;
      }

      [v5 *a2];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_100D72560(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper);
  sub_100601584(a1, v15);
  v5 = v16;
  if (v16)
  {
    v6 = sub_100020E58(v15, v16);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = v4;
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100005070(v15);
  }

  else
  {
    v13 = v4;
    v12 = 0;
  }

  [v4 *a2];

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_100D726E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return sub_1005E09AC(v4);
}

void sub_100D72744(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for CRLTextInputModifierKeyMask();
  if (qword_1019F1E60 != -1)
  {
    swift_once();
  }

  v5 = qword_101AD77E0;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v7 = "moveUp:";
        goto LABEL_29;
      }

      if (a1 == 4)
      {
        v7 = "moveDown:";
        goto LABEL_29;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v7 = "moveLeft:";
LABEL_29:

        [v3 v7];
        return;
      }

      if (a1 == 2)
      {
        v7 = "moveRight:";
        goto LABEL_29;
      }
    }

LABEL_102:
    type metadata accessor for CRLTextInputArrowKeyDirection(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  if (qword_1019F1E68 != -1)
  {
    swift_once();
  }

  v8 = qword_101AD77E8;
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
    v10 = *(*&v2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v10)
    {
      if (*(v10 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        return;
      }

      if (a1 > 2)
      {
        if (a1 == 3)
        {
          v55 = type metadata accessor for CRLWPEditor(0);
          v54[0] = v2;
          v20 = v2;
          sub_10093DBD4(v54);
        }

        else
        {
          if (a1 != 4)
          {
            goto LABEL_102;
          }

          v55 = type metadata accessor for CRLWPEditor(0);
          v54[0] = v2;
          v25 = v2;
          sub_10093DBB0(v54);
        }
      }

      else if (a1 == 1)
      {
        v55 = type metadata accessor for CRLWPEditor(0);
        v54[0] = v2;
        v11 = v2;
        sub_10093DDBC(v54);
      }

      else
      {
        if (a1 != 2)
        {
          goto LABEL_102;
        }

        v55 = type metadata accessor for CRLWPEditor(0);
        v54[0] = v2;
        v24 = v2;
        sub_10093DD98(v54);
      }

      sub_1005E09AC(v54);
      return;
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (qword_1019F1E70 != -1)
  {
    swift_once();
  }

  v12 = qword_101AD77F0;
  v13 = static NSObject.== infix(_:_:)();

  if (v13)
  {
    v14 = *(*&v2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v14)
    {
      if (*(v14 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        return;
      }

      if (a1 > 2)
      {
        if (a1 == 3)
        {
          v7 = "moveToLeftEndOfLine:";
          goto LABEL_29;
        }

        if (a1 == 4)
        {
          v7 = "moveToRightEndOfLine:";
          goto LABEL_29;
        }
      }

      else
      {
        if (a1 == 1)
        {
          v7 = "moveWordLeft:";
          goto LABEL_29;
        }

        if (a1 == 2)
        {
          v7 = "moveWordRight:";
          goto LABEL_29;
        }
      }

      goto LABEL_102;
    }

    goto LABEL_98;
  }

  if (qword_1019F1E78 != -1)
  {
    swift_once();
  }

  v15 = qword_101AD77F8;
  v16 = static NSObject.== infix(_:_:)();

  if (v16)
  {
    goto LABEL_38;
  }

  if (qword_1019F1E80 != -1)
  {
    swift_once();
  }

  v17 = qword_101AD7800;
  v18 = static NSObject.== infix(_:_:)();

  if (v18)
  {
LABEL_38:
    v19 = *(*&v2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v19)
    {
      if (*(v19 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        return;
      }

      if (a1 > 2)
      {
        if (a1 == 3)
        {
          v7 = "moveToBeginningOfDocument:";
          goto LABEL_29;
        }

        if (a1 == 4)
        {
          v7 = "moveToEndOfDocument:";
          goto LABEL_29;
        }
      }

      else
      {
        if (a1 == 1)
        {
          v7 = "moveToBeginningOfLine:";
          goto LABEL_29;
        }

        if (a1 == 2)
        {
          v7 = "moveToEndOfLine:";
          goto LABEL_29;
        }
      }

      goto LABEL_102;
    }

    goto LABEL_99;
  }

  if (qword_1019F1E88 != -1)
  {
    swift_once();
  }

  v21 = qword_101AD7808;
  v22 = static NSObject.== infix(_:_:)();

  if (v22)
  {
    v23 = *(*&v2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v23)
    {
      if (*(v23 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        return;
      }

      if (a1 > 2)
      {
        if (a1 == 3)
        {
          v7 = "moveParagraphBackwardAndModifySelection:";
          goto LABEL_29;
        }

        if (a1 == 4)
        {
          v7 = "moveParagraphForwardAndModifySelection:";
          goto LABEL_29;
        }
      }

      else
      {
        if (a1 == 1)
        {
          v7 = "moveWordLeftAndModifySelection:";
          goto LABEL_29;
        }

        if (a1 == 2)
        {
          v7 = "moveWordRightAndModifySelection:";
          goto LABEL_29;
        }
      }

      goto LABEL_102;
    }

    goto LABEL_100;
  }

  if (qword_1019F1E90 != -1)
  {
    swift_once();
  }

  v26 = qword_101AD7810;
  v27 = static NSObject.== infix(_:_:)();

  if (v27)
  {
    goto LABEL_69;
  }

  if (qword_1019F1E98 != -1)
  {
    swift_once();
  }

  v28 = qword_101AD7818;
  v29 = static NSObject.== infix(_:_:)();

  if (v29)
  {
LABEL_69:
    v30 = *(*&v3[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v30)
    {
      if (*(v30 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        return;
      }

      if (a1 > 2)
      {
        if (a1 == 3)
        {
          v7 = "moveToBeginningOfDocumentAndModifySelection:";
          goto LABEL_29;
        }

        if (a1 == 4)
        {
          v7 = "moveToEndOfDocumentAndModifySelection:";
          goto LABEL_29;
        }
      }

      else
      {
        if (a1 == 1)
        {
          v7 = "moveToBeginningOfLineAndModifySelection:";
          goto LABEL_29;
        }

        if (a1 == 2)
        {
          v7 = "moveToEndOfLineAndModifySelection:";
          goto LABEL_29;
        }
      }

      goto LABEL_102;
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v31 = objc_opt_self();
  v32 = [v31 _atomicIncrementAssertCount];
  v54[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v54, "Unhandled arrow key modifier.", 29, 2u);
  StaticString.description.getter("arrowKeyReceived(in:with:)", 26, 2);
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor+CRLKeyInputReceiving.swift", 105, 2);
  v34 = String._bridgeToObjectiveC()();

  v35 = [v34 lastPathComponent];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v39 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v32;
  v41 = sub_1005CF000();
  *(inited + 96) = v41;
  v42 = sub_1005CF04C();
  *(inited + 104) = v42;
  *(inited + 72) = v33;
  *(inited + 136) = &type metadata for String;
  v43 = sub_1000053B0();
  *(inited + 112) = v36;
  *(inited + 120) = v38;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v43;
  *(inited + 152) = 617;
  v44 = v54[0];
  *(inited + 216) = v41;
  *(inited + 224) = v42;
  *(inited + 192) = v44;
  v45 = v33;
  v46 = v44;
  v47 = static os_log_type_t.error.getter();
  sub_100005404(v39, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v48 = static os_log_type_t.error.getter();
  sub_100005404(v39, &_mh_execute_header, v48, "Unhandled arrow key modifier.", 29, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v49 = swift_allocObject();
  v49[2] = 8;
  v49[3] = 0;
  v49[4] = 0;
  v49[5] = 0;
  v50 = __VaListBuilder.va_list()();
  StaticString.description.getter("arrowKeyReceived(in:with:)", 26, 2);
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor+CRLKeyInputReceiving.swift", 105, 2);
  v52 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unhandled arrow key modifier.", 29, 2);
  v53 = String._bridgeToObjectiveC()();

  [v31 handleFailureInFunction:v51 file:v52 lineNumber:617 isFatal:0 format:v53 args:v50];
}

char *sub_100D7320C(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:0 caretAffinity:0];
  v3 = [a1 length];
  result = NSNotFound.getter();
  if (v3 >= result)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = *&v2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v7 = &v5[v6];
  if (__OFADD__(v6, v5))
  {
    __break(1u);
  }

  else if (v7 >= v6)
  {
    v8 = *&v2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
    v9 = type metadata accessor for CRLTextRange();
    v10 = objc_allocWithZone(v9);
    v11 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
    *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
    *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
    v12 = &v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    *v12 = v6;
    *(v12 + 1) = v7;
    *&v10[v11] = v8;
    v14.receiver = v10;
    v14.super_class = v9;
    v13 = objc_msgSendSuper2(&v14, "init");

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t TSContentLanguage.Models.Stroke.Line.init(color:width:pattern:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *(result + 32);
  v5 = *(result + 16);
  *a3 = *result;
  *(a3 + 16) = v5;
  *(a3 + 32) = v4;
  *(a3 + 40) = a4;
  *(a3 + 48) = a2;
  return result;
}

uint64_t *TSContentLanguage.Models.Stroke.version.unsafeMutableAddressor()
{
  if (qword_1019F2388 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Stroke.version;
}

double TSContentLanguage.Models.Stroke.init(frame:)@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a1;
  *(a2 + 8) = a3;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  return result;
}

__n128 TSContentLanguage.Models.Stroke.init(line:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48) | 0x40;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  return result;
}

uint64_t TSContentLanguage.Models.Stroke.init<A>(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v14;
    v12 = v15;
  }

  else if (swift_dynamicCast())
  {
    v11 = v14;
    v12 = v15;
    v6 = v16;
    v7 = v17;
    v8 = v18;
    v9 = v19;
    v10 = v20 | 0x40;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0xFFFFFFFF00;
  }

  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v11;
  *(a3 + 8) = v12;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v10;
  return result;
}

Swift::Int sub_100D73574()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D73638(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100D736E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D737A8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D76C2C(*a1);
  *a2 = result;
  return result;
}

void sub_100D737D8(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656D617266;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 1701734764;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100D73858()
{
  v1 = 0x656D617266;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 1701734764;
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

unint64_t sub_100D738D4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100D76C2C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D738FC(uint64_t a1)
{
  v2 = sub_100D774B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D73938(uint64_t a1)
{
  v2 = sub_100D774B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Stroke.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100D76C78(a2, v6);
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

uint64_t TSContentLanguage.Models.Stroke.encode(to:)(void *a1)
{
  v4 = sub_1005B981C(&qword_101A1ECA0, &qword_1014B0CF8);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 48);
  if (v13 >> 6)
  {
    if (v13 >> 6 == 1)
    {
      v19 = v8;
      v25 = v13 & 0x3F;
      sub_100020E58(a1, a1[3]);
      sub_100D774B0();
      v18 = v2;
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v20 = v11;
      v21 = v12;
      v14 = *(v1 + 16);
      v23 = *(v1 + 32);
      v22 = v14;
      v24 = v25;
      v26 = 1;
      sub_100D77504();
      v15 = v18;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v15)
      {
        LOBYTE(v20) = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F2388 != -1)
        {
          swift_once();
        }

        v20 = static TSContentLanguage.Models.Stroke.version;
        v26 = 3;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458, protocol conformance descriptor for TSCLVersion);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      return (*(v19 + 8))(v6, v4);
    }

    else
    {
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_10002A948(&v20, *(&v22 + 1));
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      return sub_100005070(&v20);
    }
  }

  else
  {
    v19 = v8;
    sub_100020E58(a1, a1[3]);
    sub_100D774B0();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v20 = v11;
    v21 = v12;
    v26 = 0;
    sub_100D77558();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v2)
    {
      LOBYTE(v20) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F2388 != -1)
      {
        swift_once();
      }

      v20 = static TSContentLanguage.Models.Stroke.version;
      v26 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458, protocol conformance descriptor for TSCLVersion);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v19 + 8))(v10, v4);
  }
}

uint64_t sub_100D73E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s8Freeform17TSContentLanguageO6ModelsO6StrokeO21__derived_enum_equalsySbAG_AGtFZ_0(v5, v7) & 1;
}

uint64_t *TSContentLanguage.Models.Stroke.Line.version.unsafeMutableAddressor()
{
  if (qword_1019F2390 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Stroke.Line.version;
}

__n128 TSContentLanguage.Models.Stroke.Line.color.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

Swift::Int sub_100D73FB8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D740A0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100D74174(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D74258@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D775AC(*a1);
  *a2 = result;
  return result;
}

void sub_100D74288(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x726F6C6F63;
  v5 = 0xE700000000000000;
  v6 = 0x6E726574746170;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6874646977;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100D7432C()
{
  v1 = *v0;
  v2 = 0x726F6C6F63;
  v3 = 0x6E726574746170;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6874646977;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D743CC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100D775AC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D743F4(uint64_t a1)
{
  v2 = sub_100D77ED8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D74430(uint64_t a1)
{
  v2 = sub_100D77ED8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Stroke.Line.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100D775F8(a2, v6);
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

uint64_t TSContentLanguage.Models.Stroke.Line.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A1ECC0, &qword_1014B0D00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100D77ED8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v15 = *(v3 + 32);
  v12 = 0;
  sub_100B64688();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v13) = *(v3 + 48);
  v12 = 2;
  sub_100D77F2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v13) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2390 != -1)
  {
    swift_once();
  }

  *&v13 = static TSContentLanguage.Models.Stroke.Line.version;
  v12 = 4;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458, protocol conformance descriptor for TSCLVersion);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.Stroke.Line.isEquivalent(to:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(a1 + 32);
  if (v3 == 2)
  {
    if (v4 != 2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v5 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*v1, *a1), vceqq_f64(*(v1 + 16), *(a1 + 16))), xmmword_10148D100)) & 0xF;
    if (v4 == 2 || v5 != 0)
    {
      goto LABEL_32;
    }

    if (v3)
    {
      v7 = 1650946675;
    }

    else
    {
      v7 = 13168;
    }

    if (v3)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    if (v4)
    {
      v9 = 1650946675;
    }

    else
    {
      v9 = 13168;
    }

    if (v4)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v7 == v9 && v8 == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
LABEL_32:
        v19 = 0;
        return v19 & 1;
      }
    }
  }

  if (!sub_1007C87EC(*(v1 + 40), *(a1 + 40)))
  {
    goto LABEL_32;
  }

  v13 = *(v1 + 48);
  v14 = *(a1 + 48);
  v15 = TSContentLanguage.Models.Stroke.Line.Pattern.rawValue.getter(v13);
  v17 = v16;
  if (v15 == TSContentLanguage.Models.Stroke.Line.Pattern.rawValue.getter(v14) && v17 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v19 & 1;
}

uint64_t sub_100D7494C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(v5, v7) & 1;
}

void *TSContentLanguage.Models.Stroke.Line.Pattern.version.unsafeMutableAddressor()
{
  if (qword_1019F2398 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Stroke.Line.Pattern.version;
}

uint64_t TSContentLanguage.Models.Stroke.Line.Pattern.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x61645F646E756F72;
    v6 = 0x61645F74726F6873;
    if (a1 != 8)
    {
      v6 = 0x64696C6F73;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x645F6D756964656DLL;
    if (a1 != 5)
    {
      v7 = 7234928;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x617267696C6C6163;
    v2 = 0x737572625F797264;
    v3 = 0x6572656874616566;
    if (a1 != 3)
    {
      v3 = 0x7361645F676E6F6CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6B6C616863;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}