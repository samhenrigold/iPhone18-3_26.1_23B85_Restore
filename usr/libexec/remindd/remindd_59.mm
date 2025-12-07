uint64_t sub_100565CB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100565D48()
{
  result = qword_10094C8A0;
  if (!qword_10094C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C8A0);
  }

  return result;
}

uint64_t assignWithCopy for RDDARequest(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_100050470(*a2, v4, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v16 = *(a1 + 48);
  *(a1 + 48) = v9;
  sub_100050A48(v10, v11, v12, v13, v14, v15, v16, v17);
  return a1;
}

uint64_t assignWithTake for RDDARequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = *(a2 + 48);
  v10 = *a1;
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
  *(a1 + 32) = *(a2 + 32);
  v17 = *(a1 + 48);
  *(a1 + 48) = v9;
  sub_100050A48(v10, v12, v11, v13, v14, v15, v17, a8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDDARequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDARequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

void sub_100565F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

Class sub_1005660E4(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void, uint64_t, void, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v74 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  isa = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(a3, a4);
  v15 = swift_allocObject();
  v71 = xmmword_100791300;
  *(v15 + 16) = xmmword_100791300;
  *(v15 + 32) = a1;
  v16 = a1;
  v17 = a5(v15, 0, 1, 0, a2);
  v15, v18, v19, v20, v21, v22, v23, v24;
  if (v5)
  {
    return isa;
  }

  v32 = isa;
  v33 = v74;
  if (!(v17 >> 62))
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v11;
    v36 = v32;
    if (result < 2)
    {
      if (result)
      {
        goto LABEL_5;
      }

LABEL_11:
      v17, v25, v26, v27, v28, v29, v30, v31;
      return 0;
    }

LABEL_12:
    v17, v25, v26, v27, v28, v29, v30, v31;
    v45 = REMErrorDomain;
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = v71;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v47;
    v72 = 0;
    v73 = 0xE000000000000000;
    v48 = v45;
    _StringGuts.grow(_:)(54);
    v49._object = 0x80000001007FCB70;
    v49._countAndFlagsBits = 0xD000000000000034;
    String.append(_:)(v49);
    v50 = [v16 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100580558(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v51._object;
    String.append(_:)(v51);
    object, v53, v54, v55, v56, v57, v58, v59;
    (*(v33 + 8))(v36, v35);
    v60 = v72;
    v61 = v73;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v60;
    *(inited + 56) = v61;
    v62 = sub_1001F67C8(inited);
    swift_setDeallocating();
    sub_1000050A4(inited + 32, &unk_100939260, &unk_100797220);
    v63 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v62, v64, v65, v66, v67, v68, v69, v70;
    [v63 initWithDomain:v48 code:-1 userInfo:isa];

    swift_willThrow();
    return isa;
  }

  v35 = v11;
  v36 = v32;
  if (_CocoaArrayWrapper.endIndex.getter() > 1)
  {
    goto LABEL_12;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v17 + 32);
LABEL_8:
    isa = v37;
    v17, v38, v39, v40, v41, v42, v43, v44;
    return isa;
  }

  __break(1u);
  return result;
}

void sub_1005664B4(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  if (qword_100936210 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100948430);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10000668C(*(v1 + 16), *(v1 + 24), &v21);
    *(v6 + 12) = 2080;
    v7 = sub_10047D4B8();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v21);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Putting event {identifier: %s, reader: %s}", v6, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(v2 + 40);
  v19 = *(v18 + 48);
  if (v19)
  {
    v20 = *(v18 + 56);

    v19(&v22);

    sub_10003E114(v19, v20);
  }
}

void sub_100566694(uint64_t a1)
{
  v3 = v1;
  if (a1)
  {
    type metadata accessor for RDSecondaryGroceryLocalesInfo(0);
    sub_100580558(&qword_10094C9B0, type metadata accessor for RDSecondaryGroceryLocalesInfo, &unk_10079DA20);

    v4 = REMChecksumRepresentable.rem_checksum.getter();
    if (v2)
    {
LABEL_3:

      return;
    }

    v9 = v5;
    v10 = v4;
    v11 = [v1 secondaryGroceryLocalesInfoChecksum];
    if (!v11)
    {
LABEL_14:
      sub_100580558(&unk_100950C60, type metadata accessor for RDSecondaryGroceryLocalesInfo, &unk_1007B16F8);
      v46 = REMJSONRepresentable.toJSONData()();
      v47 = v10;
      v49 = v48;
      sub_1001D4954(v47, v9);
      v9, v50, v51, v52, v53, v54, v55, v56;
      sub_100029344(v46, v49);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v46, v49);
      [v3 setSecondaryGroceryLocalesInfoAsData:isa];

      sub_10001BBA0(v46, v49);
      goto LABEL_3;
    }

    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v10 != v13 || v9 != v15)
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v15, v25, v26, v27, v28, v29, v30, v31;
      if (v24)
      {
        v9, v32, v33, v34, v35, v36, v37, v38;
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    v9, v16, v17, v18, v19, v20, v21, v22;

    v15, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    v6 = [v1 secondaryGroceryLocalesInfoChecksum];
    if (v6)
    {

      [v1 setSecondaryGroceryLocalesInfoChecksum:0];
      v7 = [v1 createResolutionTokenMapIfNecessary];
      v8 = String._bridgeToObjectiveC()();
      [v7 updateForKey:v8];
    }

    [v3 setSecondaryGroceryLocalesInfoAsData:0];
  }
}

void sub_100566968(uint64_t a1, char a2)
{
  v4 = v2;
  if (a1)
  {
    type metadata accessor for RDRecentlyDeletedInfo(0);
    sub_100580558(&qword_10094C980, type metadata accessor for RDRecentlyDeletedInfo, &unk_1007B16C8);

    v6 = REMChecksumRepresentable.rem_checksum.getter();
    if (v3)
    {
LABEL_3:

      return;
    }

    v11 = v7;
    v60 = v6;
    v12 = [v2 recentlyDeletedInfoChecksum];
    if (!v12)
    {
LABEL_15:
      sub_100580558(&unk_100950C50, type metadata accessor for RDRecentlyDeletedInfo, &unk_1007B7EC8);
      v40 = REMJSONRepresentable.toJSONData()();
      v48 = a2 & 1;
      v49 = v40;
      v51 = v50;
      sub_10044BE4C(v60, v11, v48);
      v11, v52, v53, v54, v55, v56, v57, v58;
      sub_100029344(v49, v51);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v49, v51);
      [v4 setRecentlyDeletedInfoAsData:isa];

      sub_10001BBA0(v49, v51);
      goto LABEL_3;
    }

    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v60 != v14 || v11 != v16)
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16, v26, v27, v28, v29, v30, v31, v32;
      if (v25)
      {
        v11, v33, v34, v35, v36, v37, v38, v39;
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    v11, v17, v18, v19, v20, v21, v22, v23;

    v16, v41, v42, v43, v44, v45, v46, v47;
  }

  else
  {
    v8 = [v2 recentlyDeletedInfoChecksum];
    if (v8)
    {

      [v2 setRecentlyDeletedInfoChecksum:0];
      if (a2)
      {
        v9 = [v2 createResolutionTokenMapIfNecessary];
        v10 = String._bridgeToObjectiveC()();
        [v9 updateForKey:v10];
      }
    }

    [v4 setRecentlyDeletedInfoAsData:0];
  }
}

unint64_t sub_100566CD8()
{
  result = qword_10094C8F8;
  if (!qword_10094C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C8F8);
  }

  return result;
}

void sub_100566D3C(uint64_t a1, void *a2)
{
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10094C8A8);
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Performing query in daemon {fetchRequest: %@}", v9, 0xCu);
    sub_1000050A4(v10, &unk_100938E70, &unk_100797230);
  }

  v12 = [v6 fetchExecutor];
  v35[3] = sub_1000060C8(0, &qword_10094CA08, _REMFetchExecutor_ptr);
  v35[0] = v12;
  sub_1000F5104(&qword_10094CA10, &qword_1007B1FD8);
  throwingCast<A>(_:as:failureMessage:)();
  sub_10000607C(v35);
  if (!v2)
  {
    v13 = [v6 type];
    if (v13 <= 1)
    {
      if (!v13)
      {
        v17 = v37;
        v18 = v38;
        sub_10000F61C(v36, v37);
        v16 = (*(v18 + 8))(a1, v17, v18);
        goto LABEL_18;
      }

      if (v13 == 1)
      {
        v23 = v37;
        v24 = v38;
        sub_10000F61C(v36, v37);
        v16 = (*(v24 + 16))(a1, v23, v24);
        goto LABEL_18;
      }
    }

    else
    {
      switch(v13)
      {
        case 4:
          v19 = v37;
          v20 = v38;
          sub_10000F61C(v36, v37);
          v16 = (*(v20 + 56))(a1, v19, v20);
          goto LABEL_18;
        case 3:
          v14 = v37;
          v15 = v38;
          sub_10000F61C(v36, v37);
          v16 = (*(v15 + 40))(a1, v14, v15);
LABEL_18:
          v25 = v16;
          v26 = v6;
          v27 = v25;
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            *v30 = 138412546;
            *(v30 + 4) = v26;
            *(v30 + 12) = 2112;
            *(v30 + 14) = v27;
            *v31 = v26;
            v31[1] = v27;
            v32 = v26;
            _os_log_impl(&_mh_execute_header, v28, v29, "Finished performing query in daemon {fetchRequest: %@, result: %@}", v30, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();
          }

          else
          {
          }

          sub_10000607C(v36);
          return;
        case 2:
          v21 = v37;
          v22 = v38;
          sub_10000F61C(v36, v37);
          v16 = (*(v22 + 32))(a1, v21, v22);
          goto LABEL_18;
      }
    }

    v33 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v34 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown type", 12, 2, v33, v34);
    __break(1u);
  }
}

uint64_t sub_1005671F4(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_shareRecordIDToRootRecordID;
  swift_beginAccess();
  if (!a3)
  {

    return swift_endAccess();
  }

  v7 = *(a1 + v6);
  if ((v7 & 0xC000000000000001) == 0)
  {
    v9 = a3;
    goto LABEL_10;
  }

  if (v7 < 0)
  {
    v8 = *(a1 + v6);
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v9 = a3;
  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *(a1 + v6) = sub_10021E990(v8, result + 1);
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + v6);
    sub_1002CAAF4(v9, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + v6) = v12;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

void sub_100567334(void *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4, void (*a5)(void *, id), uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v185 = a6;
  v186 = a5;
  v194 = a1;
  sub_1000060C8(0, &qword_10094C9E0, REMStoreInvocation_ptr);
  v14 = a1;
  sub_1000F5104(&qword_10094C9F8, &qword_1007B1FC8);
  v183 = a2;
  v184 = a3;
  if (swift_dynamicCast())
  {
    sub_100054B6C(v193, v190);
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v16 = sub_100006654(v15, qword_10094C8A8);
    v17 = v14;

    v180 = v16;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    a3, v20, v21, v22, v23, v24, v25, v26;

    if (os_log_type_enabled(v18, v19))
    {
      v27 = swift_slowAlloc();
      v181 = a4;
      v28 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      *v193 = v179;
      *v27 = 138544130;
      *(v27 + 4) = v17;
      *v28 = v17;
      *(v27 + 12) = 2082;
      v29 = v17;
      *(v27 + 14) = sub_10000668C(a2, a3, v193);
      *(v27 + 22) = 2082;
      v182 = v7;
      v30 = objc_opt_self();
      v31 = [v30 currentThread];
      v32 = [v31 description];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_10000668C(v33, v35, v193);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v27 + 24) = v36;
      *(v27 + 32) = 2048;
      v44 = v30;
      v8 = v182;
      v45 = [v44 currentThread];
      v46 = [v45 qualityOfService];

      *(v27 + 34) = v46;
      _os_log_impl(&_mh_execute_header, v18, v19, "Performing store controller invocation {invocation: %{public}@, client: %{public}s, thread: %{public}s, qos: %ld}", v27, 0x2Au);
      sub_1000050A4(v28, &unk_100938E70, &unk_100797230);
      a4 = v181;

      swift_arrayDestroy();
    }

    v47 = v191;
    v48 = v192;
    sub_10000F61C(v190, v191);
    v49 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
    v50 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
    *v193 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
    *&v193[16] = v50;
    *&v193[30] = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
    v51 = (*(v48 + 16))(v49, v193, v47, v48);
    if (v8)
    {
      v194 = v8;
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      sub_1000060C8(0, &qword_100939E60, NSError_ptr);
      swift_dynamicCast();
      v52 = v17;
      v53 = v184;

      v54 = v189;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      v184, v57, v58, v59, v60, v61, v62, v63;
      if (os_log_type_enabled(v55, v56))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *v64 = 138543874;
        *(v64 + 4) = v52;
        *v65 = v52;
        *(v64 + 12) = 2082;
        v66 = v52;
        *(v64 + 14) = sub_10000668C(v183, v53, &v188);
        *(v64 + 22) = 2082;
        v187 = v54;
        sub_10000CDE4(&unk_100939E68, &qword_100939E60, NSError_ptr, &protocol conformance descriptor for NSError);
        v67 = Error.rem_errorDescription.getter();
        v69 = v68;
        v70 = sub_10000668C(v67, v68, &v188);
        v69, v71, v72, v73, v74, v75, v76, v77;
        *(v64 + 24) = v70;
        _os_log_impl(&_mh_execute_header, v55, v56, "Error performing store controller invocation {invocation: %{public}@, client: %{public}s, error %{public}s}", v64, 0x20u);
        sub_1000050A4(v65, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      v78 = v54;
      v186(0, v54);
    }

    else
    {
      v143 = v51;
      v144 = v17;
      v145 = v184;

      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.info.getter();
      v184, v148, v149, v150, v151, v152, v153, v154;

      if (os_log_type_enabled(v146, v147))
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v194 = v157;
        *v155 = 138543618;
        *(v155 + 4) = v144;
        *v156 = v144;
        *(v155 + 12) = 2082;
        v158 = v144;
        *(v155 + 14) = sub_10000668C(v183, v145, &v194);
        _os_log_impl(&_mh_execute_header, v146, v147, "Finished performing store controller invocation  {invocation: %{public}@, client: %{public}s}", v155, 0x16u);
        sub_1000050A4(v156, &unk_100938E70, &unk_100797230);

        sub_10000607C(v157);
      }

      v159 = v143;
      v186(v143, 0);
    }

    sub_10000607C(v190);
  }

  else
  {
    memset(v193, 0, 40);
    sub_1000050A4(v193, &qword_10094CA00, &qword_1007B1FD0);
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    v80 = sub_100006654(v79, qword_10094C8A8);
    v81 = v14;

    v180 = v80;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();
    a3, v84, v85, v86, v87, v88, v89, v90;

    if (os_log_type_enabled(v82, v83))
    {
      v179 = a7;
      v91 = swift_slowAlloc();
      v182 = v7;
      v92 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *v193 = v178;
      *v91 = 138544130;
      *(v91 + 4) = v81;
      *v92 = v81;
      *(v91 + 12) = 2082;
      v93 = v81;
      *(v91 + 14) = sub_10000668C(a2, a3, v193);
      *(v91 + 22) = 2082;
      v181 = a4;
      v94 = objc_opt_self();
      v95 = [v94 currentThread];
      v96 = [v95 description];

      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v100 = sub_10000668C(v97, v99, v193);
      v99, v101, v102, v103, v104, v105, v106, v107;
      *(v91 + 24) = v100;
      *(v91 + 32) = 2048;
      v108 = v94;
      a4 = v181;
      v109 = [v108 currentThread];
      v110 = [v109 qualityOfService];

      *(v91 + 34) = v110;
      _os_log_impl(&_mh_execute_header, v82, v83, "Performing invocation {invocation: %{public}@, client: %{public}s, thread: %{public}s, qos: %ld}", v91, 0x2Au);
      sub_1000050A4(v92, &unk_100938E70, &unk_100797230);
      v8 = v182;

      swift_arrayDestroy();

      a7 = v179;
    }

    v111 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
    *v193 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
    *&v193[16] = v111;
    *&v193[30] = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
    __chkstk_darwin(v112, v113);
    v177[2] = a7;
    sub_100402044(v193, sub_1005814A8, v177);
    if (v8)
    {
      v190[0] = v8;
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      sub_1000060C8(0, &qword_100939E60, NSError_ptr);
      swift_dynamicCast();
      v115 = v194;
      v116 = v81;
      v117 = v184;

      v118 = v115;
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();

      v117, v121, v122, v123, v124, v125, v126, v127;
      if (os_log_type_enabled(v119, v120))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v189 = v182;
        *v128 = 138543874;
        *(v128 + 4) = v116;
        *v129 = v116;
        *(v128 + 12) = 2082;
        v130 = v116;
        *(v128 + 14) = sub_10000668C(v183, v117, &v189);
        *(v128 + 22) = 2082;
        v188 = v118;
        sub_10000CDE4(&unk_100939E68, &qword_100939E60, NSError_ptr, &protocol conformance descriptor for NSError);
        v131 = Error.rem_errorDescription.getter();
        v133 = v132;
        v134 = sub_10000668C(v131, v132, &v189);
        v133, v135, v136, v137, v138, v139, v140, v141;
        *(v128 + 24) = v134;
        _os_log_impl(&_mh_execute_header, v119, v120, "Error performing invocation {invocation: %{public}@, client: %{public}s, error %{public}s}", v128, 0x20u);
        sub_1000050A4(v129, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      v142 = v118;
      v186(0, v118);
    }

    else
    {
      v160 = v114;
      v161 = v81;
      v162 = v184;

      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.info.getter();
      v162, v165, v166, v167, v168, v169, v170, v171;

      if (os_log_type_enabled(v163, v164))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v190[0] = v174;
        *v172 = 138543618;
        *(v172 + 4) = v161;
        *v173 = v161;
        *(v172 + 12) = 2082;
        v175 = v161;
        *(v172 + 14) = sub_10000668C(v183, v162, v190);
        _os_log_impl(&_mh_execute_header, v163, v164, "Finished performing {invocation: %{public}@, client: %{public}s}", v172, 0x16u);
        sub_1000050A4(v173, &unk_100938E70, &unk_100797230);

        sub_10000607C(v174);
      }

      v176 = v160;
      v186(v160, 0);
    }
  }
}

uint64_t sub_1005680D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  sub_10000F61C(a2, v6);
  result = (*(v7 + 8))(a1, v6, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100568398(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100568410, 0, 0);
}

uint64_t sub_100568410()
{
  v1 = [objc_opt_self() sharedConfiguration];
  v2 = [v1 minimumSearchTermLengthByBaseLanguage];

  v3 = v0[2];
  if (v2)
  {
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = sub_10038F938(&_swiftEmptyArrayStorage);
  }

  v5 = v0[3];
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4, v7, v8, v9, v10, v11, v12, v13;
  (v5)[2](v5, isa, 0);

  _Block_release(v5);
  v14 = v0[1];

  return v14();
}

void sub_10056858C(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _TtC7remindd19RDXPCStorePerformer *a14, uint64_t a15, char **a16, uint64_t a17)
{
  v313 = a7;
  v311 = a6;
  v312 = a5;
  v314 = a4;
  v318 = a17;
  v319 = a16;
  v316 = a14;
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = *&a1[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController];
  type metadata accessor for RDDatabaseSaver();
  inited = swift_initStackObject();
  inited[2] = v21;
  inited[3] = v22;
  inited[4] = a2;
  swift_beginAccess();
  v24 = *(a12 + 16);
  v308 = a1;
  v25 = *&a1[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16];
  v326 = *&a1[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity];
  *v327 = v25;
  *&v327[14] = *&a1[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30];
  v320 = inited;
  v309 = a12;
  v307 = &a1[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity];
  v315 = a13;
  v310 = a8;
  v321 = v24;
  v317 = v22;
  if (a2 == 3)
  {
    if (a3 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = (a3 & 0xC000000000000001);
    v28 = v317;

    v29 = 0;
    v30 = &selRef_hack_willSaveHandled;
    while (1)
    {
      if (v26 == v29)
      {
        goto LABEL_14;
      }

      if (v27)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v31 = *(a3 + 8 * v29 + 32);
      }

      v32 = v31;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = [v31 accountTypeHost];
      v34 = [v33 isCloudKit];

      ++v29;
      if (v34)
      {
        v321, v35, v36, v37, v38, v39, v40, v41;
        if (qword_100936850 != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        sub_100006654(v48, qword_100951B60);
        v49 = v316;

        sub_100009DAC(&v326, &v324);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.fault.getter();
        v316, v52, v53, v54, v55, v56, v57, v58;
        sub_1005812D4(&v326);
        v30 = v319;
        if (os_log_type_enabled(v50, v51))
        {
          v59 = swift_slowAlloc();
          *&v324 = swift_slowAlloc();
          *v59 = 136446466;
          if (v49)
          {
            v60 = v315;
          }

          else
          {
            v60 = 7104878;
          }

          if (v49)
          {
            v61 = v49;
          }

          else
          {
            v61 = 0xE300000000000000;
          }

          v62 = sub_10000668C(v60, v61, &v324);
          v61, v63, v64, v65, v66, v67, v68, v69;
          *(v59 + 4) = v62;
          *(v59 + 12) = 2082;
          v70 = sub_1000063E8();
          v72 = v71;
          v73 = sub_10000668C(v70, v71, &v324);
          v72, v74, v75, v76, v77, v78, v79, v80;
          *(v59 + 14) = v73;
          _os_log_impl(&_mh_execute_header, v50, v51, "RDDatabaseSaver: Unexpected use of REMStoreModeEventKitSync to edit/insert/remove CloudKit account(s) {author: %{public}s, clientIdentity: %{public}s}", v59, 0x16u);
          swift_arrayDestroy();
        }

        v81 = objc_opt_self();
        v82 = String._bridgeToObjectiveC()();
        v83 = [v81 internalErrorWithDebugDescription:v82];

        swift_willThrow();

        *&v324 = v83;
        sub_1000F5104(&unk_1009399E0, &qword_100795D00);
        sub_1000060C8(0, &qword_100939E60, NSError_ptr);
        swift_dynamicCast();
        v27 = v322[0];
        v84 = [v322[0] domain];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v89;
        if (v85 == v88 && v87 == v89)
        {
          v87, v89, v90, v91, v92, v93, v94, v95;
          v96, v125, v126, v127, v128, v129, v130, v131;
        }

        else
        {
          v98 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v87, v99, v100, v101, v102, v103, v104, v105;
          v96, v106, v107, v108, v109, v110, v111, v112;
          if ((v98 & 1) == 0)
          {
            v113 = objc_opt_self();
            v114 = v322[0];
            v115 = _convertErrorToNSError(_:)();

            v116 = [v113 saveErrorWithCoreDataError:v115];
            v117 = qword_100936550;
            v29 = v116;
            if (v117 != -1)
            {
              swift_once();
            }

            v118 = type metadata accessor for Logger();
            sub_100006654(v118, qword_10094C8A8);
            v119 = v114;
            v120 = Logger.logObject.getter();
            v121 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v120, v121))
            {
              v122 = swift_slowAlloc();
              v123 = swift_slowAlloc();
              *v122 = 138412546;
              *(v122 + 4) = v119;
              *(v122 + 12) = 2112;
              *(v122 + 14) = v29;
              *v123 = v119;
              v123[1] = v29;
              v124 = v119;
              v29 = v29;
              _os_log_impl(&_mh_execute_header, v120, v121, "Converted saveError to remError {saveError: %@, remError: %@}", v122, 0x16u);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();
            }

LABEL_37:
            if (qword_100936550 == -1)
            {
LABEL_38:
              v136 = type metadata accessor for Logger();
              sub_100006654(v136, qword_10094C8A8);
              v137 = v27;
              v138 = Logger.logObject.getter();
              v139 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v138, v139))
              {
                v140 = swift_slowAlloc();
                v141 = swift_slowAlloc();
                *v140 = 138412290;
                *(v140 + 4) = v137;
                *v141 = v137;
                v142 = v137;
                _os_log_impl(&_mh_execute_header, v138, v139, "(daemon) SAVE FAIL {saveError: %@}", v140, 0xCu);
                sub_1000050A4(v141, &unk_100938E70, &unk_100797230);
              }

              (v30)(v29);

              return;
            }

LABEL_61:
            swift_once();
            goto LABEL_38;
          }
        }

        v132 = objc_opt_self();
        v133 = v322[0];
        v134 = _convertErrorToNSError(_:)();

        v135 = [v132 errorSanitizedForXPCFromError:v134];
        v29 = v135;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v42 = v22;

LABEL_14:
  sub_100756CF8(a11, a3);
  v44 = v43;
  v46 = v45;
  v47 = v320;
  sub_100758FE0(v43);
  v306[1] = v306;
  __chkstk_darwin(v143, v144);
  v145 = v321;
  v292[2] = v321;
  v292[3] = v47;
  v292[4] = a11;
  v292[5] = &v326;
  v293 = v146 & 1;
  v294 = v314;
  v295 = a3;
  v306[0] = v147;
  v296 = v147;
  v297 = v315;
  v298 = v316;
  v299 = v311;
  v300 = v310;
  v301 = v312;
  v302 = v313;
  v303 = v148;
  v304 = v46;
  v305 = v44;
  sub_100014A64(&v326, sub_100581554, v292);
  v44, v149, v150, v151, v152, v153, v154, v155;
  v46, v156, v157, v158, v159, v160, v161, v162;
  v145, v163, v164, v165, v166, v167, v168, v169;
  v170 = v308;
  sub_10000F61C(&v308[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_coreSuggestionsHandler], *&v308[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_coreSuggestionsHandler + 24]);
  v171 = v306[0];
  sub_1003E57EC(v306[0]);
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v172 = type metadata accessor for Logger();
  sub_100006654(v172, qword_10094C8A8);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v173 = v309;
  swift_retain_n();
  v174 = v170;
  v175 = Logger.logObject.getter();
  v176 = static os_log_type_t.default.getter();

  LODWORD(v321) = v176;
  v177 = os_log_type_enabled(v175, v176);
  v178 = v320;
  if (v177)
  {
    v317 = v175;
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v323 = v180;
    *v179 = 136448002;
    v181 = *(v307 + 1);
    v324 = *v307;
    *v325 = v181;
    *&v325[14] = *(v307 + 30);
    v182 = sub_1000063E8();
    v184 = v183;
    v185 = sub_10000668C(v182, v183, &v323);
    v184, v186, v187, v188, v189, v190, v191, v192;
    *(v179 + 4) = v185;
    *(v179 + 12) = 2048;
    if (a3 >> 62)
    {
      v200 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v200 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a3, v193, v194, v195, v196, v197, v198, v199;
    *(v179 + 14) = v200;
    a3, v201, v202, v203, v204, v205, v206, v207;
    *(v179 + 22) = 2048;
    v215 = v314;
    if (v314 >> 62)
    {
      v291 = _CocoaArrayWrapper.endIndex.getter();
      v215 = v314;
      v216 = v291;
    }

    else
    {
      v216 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v217 = v319;
    v218 = v312;
    v215, v208, v209, v210, v211, v212, v213, v214;
    *(v179 + 24) = v216;
    v215, v219, v220, v221, v222, v223, v224, v225;
    *(v179 + 32) = 2048;
    if (v218 >> 62)
    {
      v233 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v233 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v234 = v313;
    v218, v226, v227, v228, v229, v230, v231, v232;
    *(v179 + 34) = v233;
    v218, v235, v236, v237, v238, v239, v240, v241;
    *(v179 + 42) = 2048;
    v249 = v311;
    if (v311 >> 62)
    {
      v250 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v250 = *((v311 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v249, v242, v243, v244, v245, v246, v247, v248;
    *(v179 + 44) = v250;
    v249, v251, v252, v253, v254, v255, v256, v257;
    *(v179 + 52) = 2048;
    if (v234 >> 62)
    {
      v265 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v265 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v266 = v321;
    v234, v258, v259, v260, v261, v262, v263, v264;
    *(v179 + 54) = v265;
    v234, v267, v268, v269, v270, v271, v272, v273;
    *(v179 + 62) = 2048;
    if (v171 >> 62)
    {
      v281 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v281 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v171, v274, v275, v276, v277, v278, v279, v280;
    *(v179 + 64) = v281;
    v171, v282, v283, v284, v285, v286, v287, v288;
    *(v179 + 72) = 2048;
    swift_beginAccess();
    v289 = *(*(v173 + 16) + 16);

    *(v179 + 74) = v289;

    v290 = v317;
    _os_log_impl(&_mh_execute_header, v317, v266, "(daemon) SAVE END {author: %{public}s, accountStorages.count: %ld, listStorages.count: %ld, listSectionStorages.count: %ld, smartListStorages.count: %ld, smartListSectionStorages.count: %ld, reminderStorages.count: %ld, replicaManagers.count: %ld}", v179, 0x52u);
    sub_10000607C(v180);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v217 = v319;
  }

  (v217)(0);
  swift_setDeallocating();
}

void sub_1005697D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v6 = v5;
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10094C8A8);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = a4;
    v15 = swift_slowAlloc();
    v16 = a3;
    v17 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v11;
    *v17 = v11;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "fetchShareForObject: Fetching object with ID {objectID: %{public}@}", v15, 0xCu);
    sub_1000050A4(v17, &unk_100938E70, &unk_100797230);
    a3 = v16;

    a4 = v14;
    v6 = v5;
  }

  v19 = sub_100577A10(v11);
  if (!v6)
  {
    if (v19)
    {
      v20 = v19;
      v21 = [objc_allocWithZone(ICCollaborationController) initWithCloudContext:a3];
      v22 = swift_allocObject();
      v23 = v34;
      v22[2] = a4;
      v22[3] = v23;
      v22[4] = v21;
      v22[5] = v20;
      aBlock[4] = sub_100581260;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008F7A38;
      v24 = _Block_copy(aBlock);

      v25 = v21;
      v26 = v20;

      [v25 fetchShareIfNecessaryForObject:v26 completionHandler:v24];
      _Block_release(v24);
    }

    else
    {
      v27 = v11;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138543362;
        *(v30 + 4) = v27;
        *v31 = v27;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "fetchShareForObject: Tried to fetch non-existent object {remObjectID: %{public}@}", v30, 0xCu);
        sub_1000050A4(v31, &unk_100938E70, &unk_100797230);
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v27];
      swift_willThrow();
    }
  }
}

void sub_100569B70(int a1, void (*a2)(id, void), int a3, void *a4, id a5)
{
  v7 = [a5 objectID];
  v8 = [a4 fetchShareForObjectWithManagedObjectID:v7];

  a2(v8, 0);
}

void sub_100569C24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  aBlock[7] = a6;
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_10094C8A8);
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v38 = a7;
    v18 = swift_slowAlloc();
    v19 = a3;
    v20 = a8;
    v21 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v21 = v15;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "createShareForObject: Fetching object with ID {objectID: %{public}@}", v18, 0xCu);
    sub_1000050A4(v21, &unk_100938E70, &unk_100797230);
    a8 = v20;
    a3 = v19;

    a7 = v38;
    v9 = v8;
  }

  v23 = sub_100577A10(v15);
  if (!v9)
  {
    v24 = v23;
    if (v23)
    {
      v25 = [objc_allocWithZone(ICCollaborationController) initWithCloudContext:a3];
      v26 = [v24 objectID];
      if (a5 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
      }

      sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
      v34 = static OS_dispatch_queue.main.getter();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      v36[2] = v35;
      v36[3] = a7;
      v36[4] = a8;
      aBlock[4] = sub_100581234;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10016AC08;
      aBlock[3] = &unk_1008F79C0;
      v37 = _Block_copy(aBlock);

      [v25 createShareForObjectWithManagedObjectID:v26 appIconData:isa queue:v34 completionHandler:v37];
      _Block_release(v37);
    }

    else
    {
      v28 = v15;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138543362;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "createShareForObject: Tried to fetch non-existent object {remObjectID: %{public}@}", v31, 0xCu);
        sub_1000050A4(v32, &unk_100938E70, &unk_100797230);
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v28];
      swift_willThrow();
    }
  }
}

uint64_t sub_10056A054(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void *, uint64_t))
{
  if (a1)
  {
    v34 = a2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = a1;
    v9 = CKRecord.subscript.getter();
    v7, v10, v11, v12, v13, v14, v15, v16;
    if (v9)
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v33 = v17;
        if (qword_100936550 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        sub_100006654(v18, qword_10094C8A8);
        v19 = v8;
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.info.getter();
        v22 = v19;

        v23 = &selRef_persistentStoreForIdentifier_;
        if (os_log_type_enabled(v20, v21))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138477827;
          v26 = [v22 recordID];
          *(v24 + 4) = v26;
          *v25 = v26;
          _os_log_impl(&_mh_execute_header, v20, v21, "createShareForObject: Adding mapping for share recordID {recordID: %{private}@}", v24, 0xCu);
          sub_1000050A4(v25, &unk_100938E70, &unk_100797230);

          v23 = &selRef_persistentStoreForIdentifier_;
        }

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v28 = Strong;
          v31 = [v22 v23[78]];

          v32 = [v33 v23[78]];
          v33 = &v31;
          v35 = *&v28[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_shareRecordIDToRootRecordIDLock];
          __chkstk_darwin(v32, v29);
          type metadata accessor for UnfairLock();

          Lock.sync<A>(_:)();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    a2 = v34;
  }

  return a4(a1, a2, a3);
}

void sub_10056A480(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10056A518(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(id, uint64_t, _TtC7remindd19RDXPCStorePerformer *, id, void *), uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, unint64_t a14, BOOL a15, BOOL a16, void *a17)
{
  v20 = _Block_copy(aBlock);
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  _Block_copy(v20);
  v24 = a3;
  v25 = a1;
  a6(v24, v21, v23, v25, v20);
  _Block_release(v20);
  _Block_release(v20);

  v23, v26, v27, v28, v29, v30, v31, v32;
}

void sub_10056A5D0(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10094C8A8);
    v9 = a1;
    sub_100066F20(a2, 1);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    sub_100067078(a2, 1);
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v36[0] = v13;
      *v11 = 138412546;
      *(v11 + 4) = v9;
      *v12 = v9;
      *(v11 + 12) = 2080;
      swift_getErrorValue();
      v14 = v9;
      v15 = Error.localizedDescription.getter();
      v17 = v16;
      v18 = sub_10000668C(v15, v16, v36);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v11 + 14) = v18;
      _os_log_impl(&_mh_execute_header, oslog, v10, "CKSystemSharingUIObserver: failed to save: {recordID: %@ error: %s}", v11, 0x16u);
      sub_1000050A4(v12, &unk_100938E70, &unk_100797230);

      sub_10000607C(v13);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_10094C8A8);
    v27 = a1;
    sub_100066F20(a2, 0);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    sub_100067078(a2, 0);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      *(v30 + 4) = v27;
      *(v30 + 12) = 2112;
      *(v30 + 14) = a2;
      *v31 = v27;
      v31[1] = a2;
      v32 = v27;
      sub_100066F20(a2, 0);
      _os_log_impl(&_mh_execute_header, v28, v29, "CKSystemSharingUIObserver: didSave: {recordID: %@ share: %@}", v30, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      sub_10056A980(a2);
    }
  }
}

void sub_10056A980(void *a1)
{
  v2 = v1;
  v6 = [a1 recordID];
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  v4 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10056B06C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008F7808;
  v5 = _Block_copy(aBlock);
  [v2 updateShare:a1 accountID:v4 completion:v5];
  _Block_release(v5);
}

void sub_10056AAF8(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10094C8A8);
    v9 = a1;
    sub_100138D40(a2, 1);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    sub_100138D4C(a2, 1);
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38[0] = v13;
      *v11 = 138412546;
      *(v11 + 4) = v9;
      *v12 = v9;
      *(v11 + 12) = 2080;
      swift_getErrorValue();
      v14 = v9;
      v15 = Error.localizedDescription.getter();
      v17 = v16;
      v18 = sub_10000668C(v15, v16, v38);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v11 + 14) = v18;
      _os_log_impl(&_mh_execute_header, oslog, v10, "CKSystemSharingUIObserver: stopped sharing failed: {recordID: %@ error: %s}", v11, 0x16u);
      sub_1000050A4(v12, &unk_100938E70, &unk_100797230);

      sub_10000607C(v13);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_10094C8A8);
    v29 = a1;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&_mh_execute_header, v30, v31, "CKSystemSharingUIObserver: stopped sharing: {recordID: %@}", v32, 0xCu);
      sub_1000050A4(v33, &unk_100938E70, &unk_100797230);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      sub_10056AE68(v29, a5, a6);
    }
  }
}

void sub_10056AE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(v3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) cloudContext];
  if (v4)
  {
    __chkstk_darwin(v4, v5);
    v7 = v6;
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();
  }

  else
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10094C8A8);
    v11 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v11, v9, "shareDidStop: Cloud Context is not intialized", v10, 2u);
    }
  }
}

void sub_10056B06C(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_10094C8A8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v17 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = v7;
      v9 = sub_10000668C(v6, v7, &v17);
      v8, v10, v11, v12, v13, v14, v15, v16;
      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update share {error: %s}", v4, 0xCu);
      sub_10000607C(v5);
    }

    else
    {
    }
  }
}

void sub_10056B220(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_shareRecordIDToRootRecordID;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_100353970(a2, v7);
  v7, v9, v10, v11, v12, v13, v14, v15;
  if (v8)
  {
    swift_beginAccess();
    v16 = sub_100369B48(a2);
    swift_endAccess();

    v17 = [objc_allocWithZone(ICCollaborationController) initWithCloudContext:a3];
    v18 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v19 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_10056B4E0;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10056A480;
    aBlock[3] = &unk_1008F77E0;
    v20 = _Block_copy(aBlock);
    [v17 didStopSharingRecordID:v8 accountID:v18 queue:v19 completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_10094C8A8);
    v22 = a2;
    v19 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v22;
      *v25 = v22;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v19, v23, "No mapping for share record, cannot stop share. {recordID: %@}", v24, 0xCu);
      sub_1000050A4(v25, &unk_100938E70, &unk_100797230);
    }
  }
}

void sub_10056B4E0()
{
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10094C8A8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "shareDidStop: Stopped share successfully.", v2, 2u);
  }
}

void sub_10056B5C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10058111C;
  *(v10 + 24) = v9;
  v12[4] = sub_100581158;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10056B714;
  v12[3] = &unk_1008F7740;
  v11 = _Block_copy(v12);

  [a1 acceptShareWithMetadata:a2 callbackQueue:v8 completionHandler:v11];
  _Block_release(v11);
}

void sub_10056B714(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v5();

  v7, v9, v10, v11, v12, v13, v14, v15;
}

void sub_10056B7C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
    if (a4)
    {
LABEL_3:
      v9 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1 & 1, v8);
}

void sub_10056B880(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = a5;
  v24[5] = a6;
  v25 = a8;

  sub_10004F728(v24);

  a4, v10, v11, v12, v13, v14, v15, v16;

  a2, v17, v18, v19, v20, v21, v22, v23;
}

void sub_10056B930(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, _TtC7remindd19RDXPCStorePerformer *, uint64_t, _TtC7remindd19RDXPCStorePerformer *, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
  _Block_release(v8);

  v11, v16, v17, v18, v19, v20, v21, v22;

  v14, v23, v24, v25, v26, v27, v28, v29;
}

void sub_10056BA00(uint64_t a1, void *a2, void (*a3)(id, id))
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007953F0;
  *(v5 + 32) = a2;
  v45 = a2;
  v6 = sub_10034A794(v5, 1);
  v5, v7, v8, v9, v10, v11, v12, v13;
  type metadata accessor for REMCDTemplate();
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  [v14 setAffectedStores:0];
  [v14 setPredicate:v6];

  v16 = NSManagedObjectContext.count<A>(for:)();
  if (!v3)
  {
    if (v16 < 1)
    {
      v39 = [objc_opt_self() noSuchObjectErrorWithObjectID:v45];
      v38 = 0;
      v40 = v39;
    }

    else
    {
      v17 = sub_10055BD54(v45, 32);
      type metadata accessor for REMCDSavedReminder();
      v18 = [objc_allocWithZone(NSFetchRequest) init];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = [ObjCClassFromMetadata entity];
      [v18 setEntity:v20];

      [v18 setAffectedStores:0];
      [v18 setPredicate:v17];

      v21 = NSManagedObjectContext.count<A>(for:)();
      v43 = v21;
      v22 = sub_10055BD54(v45, 64);
      v23 = [objc_allocWithZone(NSFetchRequest) init];
      v24 = [ObjCClassFromMetadata entity];
      [v23 setEntity:v24];

      [v23 setAffectedStores:0];
      [v23 setPredicate:v22];

      v25 = NSManagedObjectContext.count<A>(for:)();
      v42 = v25;
      v26 = sub_10055BD54(v45, 96);
      v27 = [objc_allocWithZone(NSFetchRequest) init];
      v28 = [ObjCClassFromMetadata entity];
      [v27 setEntity:v28];

      [v27 setAffectedStores:0];
      [v27 setPredicate:v26];

      v29 = NSManagedObjectContext.count<A>(for:)();
      v41 = v29;
      v30 = sub_10055BD54(v45, 128);
      v31 = [objc_allocWithZone(NSFetchRequest) init];
      v32 = [ObjCClassFromMetadata entity];
      [v31 setEntity:v32];

      [v31 setAffectedStores:0];
      [v31 setPredicate:v30];

      v33 = NSManagedObjectContext.count<A>(for:)();
      v34 = sub_1005BDBEC(v45, 0x42u);
      type metadata accessor for REMCDSavedAttachment();
      v35 = [objc_allocWithZone(NSFetchRequest) init];
      v36 = [swift_getObjCClassFromMetadata() entity];
      [v35 setEntity:v36];

      [v35 setAffectedStores:0];
      [v35 setPredicate:v34];

      v37 = NSManagedObjectContext.count<A>(for:)();
      v38 = [objc_allocWithZone(REMTemplateContentAttributes) initWithReminderCount:v43 hasDisplayDate:v42 > 0 hasHashtags:v41 > 0 hasLocationTriggersOrVehicleEventTriggers:v33 > 0 hasImageAttachments:v37 > 0];
      v39 = v38;
      v40 = 0;
    }

    a3(v38, v40);
  }
}

void sub_10056BFA0(void *a1, void (*a2)(void, void), uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v12 = sub_10003A1B8();
  if (v12)
  {

    v34 = a2;
    updated = type metadata accessor for RDTemplateOperationCreateOrUpdateTemplatePublicLink();
    sub_10000A87C(a6, v35);
    v14 = objc_opt_self();
    v15 = [v14 sharedConfiguration];
    [v15 templatePublicLinkTTL];
    v17 = v16;

    v19 = v36;
    v18 = v37;
    v33 = a1;
    v20 = sub_10000C9DC(v35, v36);
    v21 = __chkstk_darwin(v20, v20);
    v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23, v21);
    sub_1005AF7A4(a4, a5, v23, 0, 1000, updated, v19, v18, v17);
    v25 = a4;
    v26 = a5;
    sub_10000607C(v35);
    v27 = swift_allocObject();
    *(v27 + 16) = v34;
    *(v27 + 24) = a3;

    v28 = [v14 sharedConfiguration];
    [v28 templatePublicLinkOperationTimeoutInterval];
    v30 = v29;

    sub_1005AA79C(v33, sub_1005815AC, v27, v30);
  }

  else
  {
    v31 = [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    a2(0, v31);
  }
}

void sub_10056C240(void *a1, void (*a2)(void, id), uint64_t a3, void *a4, void *a5)
{
  v10 = sub_10003A1B8();
  if (v10)
  {

    v11 = [objc_opt_self() sharedConfiguration];
    [v11 templatePublicLinkTTL];
    v13 = v12;

    type metadata accessor for RDTemplateOperationCreateTemplatePublicContentPreview();
    inited = swift_initStackObject();
    *(inited + 16) = a4;
    *(inited + 24) = a5;
    *(inited + 32) = 1000;
    *(inited + 40) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v16 = a4;
    v17 = a5;

    sub_1003B428C(a1, sub_1005815AC, v15);

    swift_setDeallocating();
  }

  else
  {
    v18 = [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    a2(0, v18);
  }
}

void sub_10056C3D0(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_10056C480(void *a1, void (*a2)(void, id), uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_10003A1B8();
  if (v10)
  {

    v11 = type metadata accessor for RDTemplateOperationRevokeTemplatePublicLink();
    sub_10000A87C(a5, v27);
    v12 = v28;
    v13 = v29;
    v14 = sub_10000C9DC(v27, v28);
    v15 = __chkstk_darwin(v14, v14);
    v17 = &v27[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17, v15);
    sub_100138BAC(a4, v17, 0, v11, v12, v13);
    v19 = a4;
    sub_10000607C(v27);
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    v21 = objc_opt_self();

    v22 = [v21 sharedConfiguration];
    [v22 templatePublicLinkOperationTimeoutInterval];
    v24 = v23;

    sub_10012F9F0(a1, sub_1005815AC, v20, v24);
  }

  else
  {
    v25 = [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    a2(0, v25);
  }
}

void sub_10056C6D4(void *a1, void (*a2)(void, id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10003A1B8();
  if (v15)
  {

    (*(v11 + 16))(v14, a4, v10);
    sub_10000A87C(a5, v24);
    type metadata accessor for RDTemplateOperationDownloadPublicTemplate(0);
    v16 = swift_allocObject();
    (*(v11 + 32))(v16 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicLinkURLUUID, v14, v10);
    sub_100054B6C(v24, v16 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicCloudDatabaseController);
    *(v16 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_isUnitTestMode) = 0;
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v18 = objc_opt_self();

    v19 = [v18 sharedConfiguration];
    [v19 templatePublicLinkOperationTimeoutInterval];
    v21 = v20;

    sub_100427F30(a1, sub_100187DC0, v17, v21);

    swift_setDeallocating();
    (*(v11 + 8))(v16 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicLinkURLUUID, v10);
    sub_10000607C((v16 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicCloudDatabaseController));
    swift_deallocClassInstance();
  }

  else
  {
    v22 = [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    a2(0, v22);
  }
}

void sub_10056CAA0(void *a1, int a2)
{
  v140 = a2;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v131 - v6;
  v8 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v8, v8);
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A81F0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1007953F0;
  *(v12 + 32) = swift_getKeyPath();
  v13 = sub_10001F6F4();
  v14 = sub_100405438(inited, v12, 0, v13);
  inited, v15, v16, v17, v18, v19, v20, v21;

  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(RDXPCStorePerformer *)v14 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v23 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_1004258C8(v10, _s10PredicatesOMa_1);

    return;
  }

  v134 = a1;
  v141 = v23;
  v24 = v23;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300, &protocol conformance descriptor for [A]);
  v25 = Sequence.elements<A>(ofType:)();

  sub_1004258C8(v10, _s10PredicatesOMa_1);
  v24, v26, v27, v28, v29, v30, v31, v32;
  if (v25 >> 62)
  {
    v139 = _CocoaArrayWrapper.endIndex.getter();
    if (v139)
    {
      goto LABEL_7;
    }

LABEL_10:
    v25, v33, v34, v35, v36, v37, v38, v39;
    return;
  }

  v139 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v139)
  {
    goto LABEL_10;
  }

LABEL_7:
  v133 = v25 >> 62;
  v40 = sub_100390994(&_swiftEmptyArrayStorage);
  static Date.now.getter();
  v41 = type metadata accessor for Date();
  v42 = *(v41 - 8);
  (*(v42 + 56))(v7, 0, 1, v41);
  sub_1000060C8(0, &qword_10093A540, REMTimestampedUUID_ptr);
  v43.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v40, v44, v45, v46, v47, v48, v49, v50;
  v51 = 0;
  if ((*(v42 + 48))(v7, 1, v41) != 1)
  {
    v51 = Date._bridgeToObjectiveC()().super.isa;
    (*(v42 + 8))(v7, v41);
  }

  v52 = [objc_allocWithZone(REMTextMemberships) initWithMemberships:v43.super.isa lastResetDate:v51];

  v141 = v52;
  sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
  v53 = REMJSONRepresentable.toJSONData()();
  v55 = v54;
  v141 = v52;
  v56 = REMChecksumRepresentable.rem_checksum.getter();
  v136 = v53;
  v137 = v55;
  v132 = v52;
  if (v139 < 1)
  {
    __break(1u);
LABEL_42:
    swift_once();
LABEL_31:
    v104 = type metadata accessor for Logger();
    sub_100006654(v104, qword_10094C8C0);

    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v114 = swift_slowAlloc();
      *v114 = 134217984;
      if (v133)
      {
        v115 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v115 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v25, v107, v108, v109, v110, v111, v112, v113;
      *(v114 + 4) = v115;
      v25, v124, v125, v126, v127, v128, v129, v130;
      _os_log_impl(&_mh_execute_header, v105, v106, "Cleared grocery local corrections of list owned by current user {lists.count: %ld}", v114, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_10001BBA0(v53, v137);

    return;
  }

  v58 = v56;
  v59 = v57;
  v60 = 0;
  v138 = v25 & 0xC000000000000001;
  v135 = &qword_1007B1E10;
  do
  {
    if (v138)
    {
      v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v80 = *(v25 + 8 * v60 + 32);
    }

    v81 = v80;
    if ((v140 & 1) != 0 || ([v80 shouldAutoCategorizeItems] & 1) == 0)
    {

      v82 = [v81 autoCategorizationLocalCorrectionsChecksum];
      if (v82)
      {
        v83 = v82;
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v85;

        if (v84 == v58 && v71 == v59)
        {
          v59, v86, v87, v88, v89, v90, v91, v92;
          goto LABEL_14;
        }

        v94 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v71, v95, v96, v97, v98, v99, v100, v101;
        v71 = v59;
        if (v94)
        {
          goto LABEL_14;
        }
      }

      v61 = String._bridgeToObjectiveC()();
      [v81 setAutoCategorizationLocalCorrectionsChecksum:v61];

      v62 = [v81 createResolutionTokenMapIfNecessary];
      v63 = String._bridgeToObjectiveC()();
      [v62 updateForKey:v63];

      v71 = v59;
LABEL_14:
      v71, v64, v65, v66, v67, v68, v69, v70;
      v72 = Data._bridgeToObjectiveC()().super.isa;
      [v81 setAutoCategorizationLocalCorrectionsAsData:v72];

      [v81 updateChangeCount];
    }

    ++v60;
  }

  while (v139 != v60);
  v59, v73, v74, v75, v76, v77, v78, v79;
  v141 = 0;
  if ([v134 save:&v141])
  {
    v102 = qword_100936558;
    v103 = v141;
    v55 = v132;
    v53 = v136;
    if (v102 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  v116 = v141;
  v25, v117, v118, v119, v120, v121, v122, v123;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10001BBA0(v136, v137);
}

uint64_t sub_10056D394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10056D3B8, 0, 0);
}

uint64_t sub_10056D3B8()
{
  v1 = sub_10025655C(*(v0 + 16), *(v0 + 24), 0, 1);
  (*(v0 + 32))(v1, 0);
  v1, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + 8);

  return v9();
}

void sub_10056D498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_10056D530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v16;
  *(v8 + 144) = v15;
  *(v8 + 128) = v14;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  v9 = type metadata accessor for REMAnalyticsEvent();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  v10 = type metadata accessor for REMTrialNamespace();
  *(v8 + 176) = v10;
  *(v8 + 184) = *(v10 - 8);
  *(v8 + 192) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v8 + 200) = v11;
  *(v8 + 208) = *(v11 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10056D6D8, 0, 0);
}

uint64_t sub_10056D6D8()
{
  v2 = 0;
  v4 = sub_1001E12E8(v0[11]);
  v0[5] = v0[12];
  v0[6] = v0[13];
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 5;
  v6 = sub_100040A74(sub_100040B20, v5, v4);

  if (v6)
  {
    v144 = v0;
    v135 = *v4->clientIdentity;
    if (v135)
    {
      v14 = 0;
      v15 = v0[23];
      v16 = v0[20];
      v133 = v0[21];
      v129 = enum case for REMTrialNamespace.grocery(_:);
      v127 = (v15 + 8);
      v128 = (v15 + 104);
      v143 = (v0[26] + 8);
      v132 = enum case for REMAnalyticsEvent.loadGroceryModel(_:);
      v131 = (v16 + 104);
      v134 = (v16 + 8);
      v17 = &v4->clientIdentity[24];
      v18 = _swiftEmptyDictionarySingleton;
      v130 = v4;
      while (v14 < *v4->clientIdentity)
      {
        v38 = *(v17 - 1);
        v39 = *v17;

        Date.init()();
        type metadata accessor for REMTrialClient();
        swift_allocObject();
        v40 = REMTrialClient.init()();
        v142 = v18;
        v41 = v38;
        v42 = v144[24];
        v43 = v144[22];
        (*v128)(v42, v129, v43);
        v138 = dispatch thunk of REMTrialClient.deploymentId(for:)();
        v139 = v44;
        (*v127)(v42, v43);

        v140 = v41;
        v141 = v39;
        v45 = sub_10025A4E4(v41, v39, v40);
        v46 = v144[27];
        v47 = v144[25];
        v48 = v45;

        v49 = REMGroceryClassifier.modelTypesDescription.getter();
        v136 = v50;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v1 = v51;
        v52 = *v143;
        (*v143)(v46, v47);
        if (qword_100936858 != -1)
        {
          swift_once();
        }

        v137 = v17;
        v53 = type metadata accessor for Logger();
        sub_100006654(v53, qword_100951C50);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 134217984;
          *(v56 + 4) = v1;
          _os_log_impl(&_mh_execute_header, v54, v55, "REMGroceryClassifier model loading time: %f", v56, 0xCu);
        }

        v19 = v144[28];
        v20 = v144[25];
        v21 = v144[21];
        v22 = v144[19];

        type metadata accessor for REMAnalyticsManager();
        static REMAnalyticsManager.shared.getter();
        *v21 = v1;
        *(v133 + 8) = v49;
        *(v133 + 16) = v136;
        *(v133 + 24) = 513;
        *(v133 + 32) = v138;
        *(v133 + 40) = v139;
        v2 = v141;
        *(v133 + 48) = v140;
        *(v133 + 56) = v141;
        *(v133 + 64) = 0xD00000000000001ELL;
        *(v133 + 72) = 0x80000001007FCA50;
        *(v133 + 80) = 0;
        *(v133 + 88) = 0;
        (*v131)(v21, v132, v22);

        REMAnalyticsManager.post(event:)();

        (*v134)(v21, v22);
        v52(v19, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        ++v14;
        sub_1002C8FCC(v48, v140, v141, isUniquelyReferenced_nonNull_native);
        v141, v24, v25, v26, v27, v28, v29, v30;
        v142, v31, v32, v33, v34, v35, v36, v37;
        v18 = v142;
        v17 += 16;
        v4 = v130;
        if (v135 == v14)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      swift_once();
      v104 = type metadata accessor for Logger();
      sub_100006654(v104, qword_100951C50);
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 134217984;
        *(v107 + 4) = v1;
        _os_log_impl(&_mh_execute_header, v105, v106, "REMGroceryClassifier model loading time: %f", v107, 0xCu);
      }

      v0 = v144;
      v108 = v144[28];
      v109 = v144[25];
      v110 = v144[21];
      v111 = v144[19];

      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      *v110 = v1;
      *(v133 + 8) = 0;
      *(v133 + 16) = 0;
      *(v133 + 24) = 0;
      *(v133 + 32) = v138;
      *(v133 + 40) = v139;
      *(v133 + 48) = v140;
      *(v133 + 56) = v141;
      *(v133 + 64) = 0xD00000000000001ELL;
      *(v133 + 72) = 0x80000001007FCA50;
      *(v133 + 80) = v137;
      *(v133 + 88) = 0;
      (*v131)(v110, v132, v111);

      REMAnalyticsManager.post(event:)();

      (*v134)(v110, v111);
      swift_willThrow();
      v141, v112, v113, v114, v115, v116, v117, v118;

      v142, v119, v120, v121, v122, v123, v124, v125;
      (v17)(v108, v109);
      v3 = v144[14];
      swift_errorRetain();
      v3(0, v2);
    }

    else
    {
      v18 = _swiftEmptyDictionarySingleton;
LABEL_12:
      v0 = v144;
      v144[29] = v18;
      v4, v7, v8, v9, v10, v11, v12, v13;
      if (*v18->clientIdentity)
      {
        v68 = sub_100005F4C(v144[12], v144[13]);
        if (v61)
        {
          v145 = *(v144 + 280);
          v70 = v144[17];
          v69 = v144[18];
          v71 = v144[16];
          v72 = v144[11];
          v73 = (*(*&v18->clientIdentity[40] + 8 * v68) + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
          v75 = *v73;
          v74 = v73[1];
          v144[30] = v74;
          v144[9] = v71;

          v76 = sub_100390AA4(&_swiftEmptyArrayStorage);
          v144[31] = v76;
          v144[10] = v76;
          v77 = swift_task_alloc();
          v144[32] = v77;
          *(v77 + 16) = v72;
          *(v77 + 24) = v18;
          *(v77 + 32) = v70;
          *(v77 + 40) = v69;
          *(v77 + 48) = v145;
          *(v77 + 56) = v75;
          *(v77 + 64) = v74;
          v78 = swift_task_alloc();
          v144[33] = v78;
          v79 = sub_1000F5104(&unk_100945240, &qword_1007A0A70);
          v80 = sub_1000F5104(&qword_10094C9B8, &qword_1007B1E08);
          v81 = sub_10000CB48(&qword_100941118, &unk_100945240, &qword_1007A0A70, &protocol conformance descriptor for Set<A>);
          *v78 = v144;
          v78[1] = sub_10056E158;

          return Sequence.asyncReduce<A>(_:_:)(v144 + 8, v144 + 10, &unk_1007B1DF8, v77, v79, v80, v81);
        }
      }

      v82 = v144[14];
      v84 = v144[12];
      v83 = v144[13];
      v18, v61, v62, v63, v64, v65, v66, v67;
      v85 = objc_opt_self();
      _StringGuts.grow(_:)(45);
      0xE000000000000000, v86, v87, v88, v89, v90, v91, v92;
      v93._countAndFlagsBits = v84;
      v93._object = v83;
      String.append(_:)(v93);
      v94 = String._bridgeToObjectiveC()();
      0x80000001007FCA70, v95, v96, v97, v98, v99, v100, v101;
      v102 = [v85 invalidParameterErrorWithDescription:v94];

      v82(0, v102);
    }
  }

  else
  {
    v57 = v0[14];
    v4, v7, v8, v9, v10, v11, v12, v13;
    v58 = objc_opt_self();
    v59 = String._bridgeToObjectiveC()();
    v60 = [v58 invalidParameterErrorWithDescription:v59];

    v57(0, v60);
  }

  v103 = v0[1];

  return v103();
}

uint64_t sub_10056E158()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v10 = *(v2 + 248);
  if (v0)
  {
    v13 = v2 + 232;
    v11 = *(v2 + 232);
    v12 = *(v13 + 8);
    v10, v3, v4, v5, v6, v7, v8, v9;
    v11, v14, v15, v16, v17, v18, v19, v20;
    v12, v21, v22, v23, v24, v25, v26, v27;

    v28 = sub_10056E3D0;
  }

  else
  {
    v31 = v2 + 232;
    v29 = *(v2 + 232);
    v30 = *(v31 + 8);
    v10, v3, v4, v5, v6, v7, v8, v9;
    v29, v32, v33, v34, v35, v36, v37, v38;
    v30, v39, v40, v41, v42, v43, v44, v45;

    v28 = sub_10056E2BC;
  }

  return _swift_task_switch(v28, 0, 0);
}

uint64_t sub_10056E2BC()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = objc_allocWithZone(REMGrocerySuggestions);
  sub_1000F5104(&qword_10094C9C0, &qword_1007B1E10);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v2, v5, v6, v7, v8, v9, v10, v11;
  v12 = [v3 initWithSuggestedSectionsByReminderTitle:isa];

  v1(v12, 0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10056E3D0()
{
  v1 = v0[34];
  v2 = v0[14];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10056E488(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 224) = a8;
  *(v8 + 112) = a7;
  *(v8 + 120) = v12;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a1;
  *(v8 + 88) = a4;
  v9 = *a2;
  *(v8 + 128) = v13;
  *(v8 + 136) = v9;
  v10 = a3[1];
  *(v8 + 144) = *a3;
  *(v8 + 152) = v10;
  return _swift_task_switch(sub_10056E4CC, 0, 0);
}

uint64_t sub_10056E4CC()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = objc_opt_self();

  v6 = [v5 sharedConfiguration];
  v7 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
  *(v0 + 16) = v6;
  v8 = (v0 + 16);
  *(v0 + 40) = v7;
  *(v0 + 48) = &off_1008E5A40;
  sub_100124864(v2, v1, v4, (v0 + 16), v3);
  *(v0 + 160) = v9;
  v10 = v9;
  sub_10000607C((v0 + 16));
  v18 = *(v10 + 16);
  *(v0 + 168) = v18;
  if (!v18)
  {
LABEL_5:
    *(v0 + 160), v11, v12, v13, v14, v15, v16, v17;
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v22 = *(v0 + 136);
    v23 = *(v0 + 80);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002CAC98(&_swiftEmptyArrayStorage, v21, v20, isUniquelyReferenced_nonNull_native);
    v20, v25, v26, v27, v28, v29, v30, v31;
    *v23 = v22;
    v32 = *(v0 + 8);

    return v32();
  }

  *(v0 + 176) = 0;
  v19 = *(v0 + 160);
  if (!v19[2])
  {
    __break(1u);
LABEL_9:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v4 = v19[4];
  v8 = v19[5];
  *(v0 + 184) = v8;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_9;
  }

  if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_10:
  v34 = *(v0 + 104);
  v8;
  &_swiftEmptyArrayStorage, v35, v36, v37, v38, v39, v40, v41;
  if (!v34)
  {
    v43 = 0;
    v44 = *(v0 + 112);
    if (v44)
    {
      goto LABEL_12;
    }

LABEL_14:
    v45 = 0;
    v46 = 1;
    goto LABEL_15;
  }

  [*(v0 + 104) floatValue];
  v43 = v42;
  v44 = *(v0 + 112);
  if (!v44)
  {
    goto LABEL_14;
  }

LABEL_12:
  v45 = [v44 integerValue];
  v46 = *(v0 + 112) == 0;
LABEL_15:
  v47 = *(v0 + 104) == 0;
  *(v0 + 56) = v4;
  v48 = dispatch thunk of CustomStringConvertible.description.getter();
  v50 = v49;
  *(v0 + 192) = v49;
  v51 = swift_task_alloc();
  *(v0 + 200) = v51;
  *v51 = v0;
  v51[1] = sub_10056E81C;
  v53 = *(v0 + 144);
  v52 = *(v0 + 152);

  return REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(v53, v52, v43 | (v47 << 32), v45, v46, v48, v50, 0xD000000000000016);
}

uint64_t sub_10056E81C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  v12 = *(v3 + 192);
  if (v1)
  {
    v13 = *(v4 + 160);
    *(v4 + 136), v5, v6, v7, v8, v9, v10, v11;
    v12, v14, v15, v16, v17, v18, v19, v20;
    v13, v21, v22, v23, v24, v25, v26, v27;
    v28 = sub_10056F0B8;
  }

  else
  {
    v12, v5, v6, v7, v8, v9, v10, v11;
    v28 = sub_10056E978;
  }

  return _swift_task_switch(v28, 0, 0);
}

uint64_t sub_10056E978(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v192 = v8;
  v9 = *(v8 + 208);
  v10 = *(v9 + 16);
  if (!v10)
  {
    *(v8 + 208), a2, a3, a4, a5, a6, a7, a8;
    v13 = &_swiftEmptyArrayStorage;
    v93 = *_swiftEmptyArrayStorage.clientIdentity;
    if (v93)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  v11 = *(v8 + 184);
  *(v8 + 64) = &_swiftEmptyArrayStorage;
  sub_1002538A4(0, v10, 0);
  v12 = 0;
  v13 = *(v8 + 64);
  v188 = (v11 + OBJC_IVAR____TtC7remindd20REMGroceryClassifier_modelLocale);
  v14 = *(v8 + 216);
  v15 = (v9 + 56);
  *&v16 = 136315650;
  v183 = v16;
  v17 = v9;
  v186 = v9;
  v187 = v10;
  do
  {
    if (v12 >= *(v17 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v9 = *(v15 - 3);
    v189 = *(v15 - 2);
    v190 = v9;
    v18 = *(v15 - 1);
    v19 = *v15;
    v20 = *v188;
    v21 = v188[1];
    if (*v188 == *(v8 + 120) && v21 == *(v8 + 128))
    {

      goto LABEL_11;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      v17 = v186;
LABEL_11:
      v30 = v189;
      goto LABEL_12;
    }

    v34 = sub_10025655C(*(v8 + 120), *(v8 + 128), 1, 0);
    if (v14)
    {
      v138 = *(v8 + 208);
      v139 = *(v8 + 184);
      v140 = *(v8 + 136);
      *(v8 + 160), v35, v36, v37, v38, v39, v40, v41;
      v138, v141, v142, v143, v144, v145, v146, v147;
      v18, v148, v149, v150, v151, v152, v153, v154;
      v140, v155, v156, v157, v158, v159, v160, v161;

      v136 = *(v8 + 8);
      goto LABEL_36;
    }

    if (v9 >= *(v34 + 16))
    {
      v34, v35, v36, v37, v38, v39, v40, v41;
      if (qword_100935A68 != -1)
      {
        swift_once();
      }

      v59 = *(v8 + 128);
      v60 = type metadata accessor for Logger();
      sub_100006654(v60, qword_1009387D8);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      v18, v63, v64, v65, v66, v67, v68, v69;
      v21, v70, v71, v72, v73, v74, v75, v76;
      v59, v77, v78, v79, v80, v81, v82, v83;
      if (!os_log_type_enabled(v61, v62))
      {

        v14 = 0;
        v17 = v186;
        goto LABEL_11;
      }

      v184 = *(v8 + 120);
      v185 = *(v8 + 128);
      v84 = swift_slowAlloc();
      v191[0] = swift_slowAlloc();
      *v84 = v183;
      *(v84 + 4) = sub_10000668C(v189, v18, v191);
      *(v84 + 12) = 2080;
      v85 = v21;
      v30 = v189;
      *(v84 + 14) = sub_10000668C(v20, v85, v191);
      *(v84 + 22) = 2080;
      *(v84 + 24) = sub_10000668C(v184, v185, v191);
      _os_log_impl(&_mh_execute_header, v61, v62, "convert(prediction:from:to:) skip: %s, %s, %s", v84, 0x20u);
      swift_arrayDestroy();

      v14 = 0;
      v17 = v186;
    }

    else
    {
      if (v9 < 0)
      {
        goto LABEL_41;
      }

      v42 = v34 + 16 * v9;
      v30 = *(v42 + 32);
      v43 = *(v42 + 40);
      v44 = v34;

      v44, v45, v46, v47, v48, v49, v50, v51;
      v18, v52, v53, v54, v55, v56, v57, v58;
      v14 = 0;
      v18 = v43;
      v17 = v186;
    }

LABEL_12:
    *(v8 + 64) = v13;
    v32 = *v13->clientIdentity;
    v31 = *&v13->clientIdentity[8];
    v9 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      sub_1002538A4((v31 > 1), v32 + 1, 1);
      v13 = *(v8 + 64);
    }

    ++v12;
    *v13->clientIdentity = v9;
    v33 = v13 + 32 * v32;
    *(v33 + 4) = v190;
    *(v33 + 5) = v30;
    *(v33 + 6) = v18;
    *(v33 + 14) = v19;
    v15 += 8;
  }

  while (v187 != v12);
  *(v8 + 208), v23, v24, v25, v26, v27, v28, v29;
  v93 = *v13->clientIdentity;
  if (!v93)
  {
LABEL_30:
    v17 = *(v8 + 184);
    v13, v86, v87, v88, v89, v90, v91, v92;

    v14 = &_swiftEmptyArrayStorage;
    goto LABEL_31;
  }

LABEL_26:
  *(v8 + 72) = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v94 = &v13->clientIdentity[40];
  do
  {
    v95 = *(v94 - 3);
    v9 = *(v94 - 1);
    v96 = *v94;
    v94 += 32;
    v97 = objc_allocWithZone(REMGrocerySuggestedSection);

    v98 = String._bridgeToObjectiveC()();
    LODWORD(v99) = v96;
    [v97 initWithLabelIndex:v95 sectionCanonicalName:v98 confidenceScore:v99];

    v9, v100, v101, v102, v103, v104, v105, v106;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v17 = v8 + 72;
    specialized ContiguousArray._endMutation()();
    --v93;
  }

  while (v93);

  v13, v107, v108, v109, v110, v111, v112, v113;
  v14 = *(v8 + 72);
LABEL_31:
  v121 = *(v8 + 176) + 1;
  if (v121 == *(v8 + 168))
  {
LABEL_35:
    *(v8 + 160), v114, v115, v116, v117, v118, v119, v120;
    v125 = *(v8 + 144);
    v124 = *(v8 + 152);
    v126 = *(v8 + 136);
    v127 = *(v8 + 80);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v191[0] = v126;
    sub_1002CAC98(v14, v125, v124, isUniquelyReferenced_nonNull_native);
    v124, v129, v130, v131, v132, v133, v134, v135;
    *v127 = v191[0];
    v136 = *(v8 + 8);
LABEL_36:

    return v136();
  }

  *(v8 + 176) = v121;
  v122 = *(v8 + 160);
  if (v121 >= *(v122 + 16))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_35;
    }

    goto LABEL_44;
  }

  v123 = v122 + 16 * v121;
  v9 = *(v123 + 32);
  v17 = *(v123 + 40);
  *(v8 + 184) = v17;
  if (v14 >> 62)
  {
    goto LABEL_43;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

LABEL_44:
  v162 = *(v8 + 104);
  v17;
  v14, v163, v164, v165, v166, v167, v168, v169;
  if (v162)
  {
    [*(v8 + 104) floatValue];
    v171 = v170;
    v172 = *(v8 + 112);
    if (v172)
    {
      goto LABEL_46;
    }

LABEL_48:
    v173 = 0;
    v174 = 1;
  }

  else
  {
    v171 = 0;
    v172 = *(v8 + 112);
    if (!v172)
    {
      goto LABEL_48;
    }

LABEL_46:
    v173 = [v172 integerValue];
    v174 = *(v8 + 112) == 0;
  }

  v175 = *(v8 + 104) == 0;
  *(v8 + 56) = v9;
  v176 = dispatch thunk of CustomStringConvertible.description.getter();
  v178 = v177;
  *(v8 + 192) = v177;
  v179 = swift_task_alloc();
  *(v8 + 200) = v179;
  LOBYTE(v191[0]) = v175;
  *v179 = v8;
  v179[1] = sub_10056E81C;
  v181 = *(v8 + 144);
  v180 = *(v8 + 152);
  v182 = *(v8 + 224);
  v196 = 0;
  v195 = v182;
  v194 = 0x80000001007FCAA0;

  return REMGroceryClassifier.predict(_:threshold:topN:localeReason:predictReason:withGlobalCorrections:includeMisc:shouldPostGroceryPredictionAnalytics:)(v181, v180, v171 | (v175 << 32), v173, v174, v176, v178, 0xD000000000000016);
}

uint64_t sub_10056F0B8()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_10056F224(uint64_t a1, void *a2, void **a3)
{
  v74 = a3;
  v76 = a1;
  v5 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v5, v6);
  v8 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v9 = swift_allocObject();
  v75 = xmmword_1007953F0;
  *(v9 + 16) = xmmword_1007953F0;
  *(v9 + 32) = a2;
  *v8 = v9;
  swift_storeEnumTagMultiPayload();
  inited = swift_initStackObject();
  *(inited + 16) = v75;
  *(inited + 32) = swift_getKeyPath();
  *&v75 = a2;
  v11 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];
  v77 = _swiftEmptySetSingleton;

  sub_100391CC4(v14);
  inited, v15, v16, v17, v18, v19, v20, v21;
  v22 = v77;
  v23 = sub_1003FE48C(v77);
  v22, v24, v25, v26, v27, v28, v29, v30;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v23, v32, v33, v34, v35, v36, v37, v38;
  [v12 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v39 = Array._bridgeToObjectiveC()().super.isa;
  [v12 setSortDescriptors:v39];

  v40 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_1004258C8(v8, _s10PredicatesOMa_1);

    return;
  }

  v77 = v40;
  v41 = v40;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_10000CB48(&qword_100945210, &qword_10093F6F0, qword_10079A300, &protocol conformance descriptor for [A]);
  v42 = Sequence.elements<A>(ofType:)();

  sub_1004258C8(v8, _s10PredicatesOMa_1);
  v41, v43, v44, v45, v46, v47, v48, v49;
  if (!(v42 >> 62))
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_15:
    v42, v50, v51, v52, v53, v54, v55, v56;
    [objc_opt_self() noSuchObjectErrorWithObjectID:v75];
    swift_willThrow();
    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v57 = *(v42 + 32);
  }

  v65 = v57;
  v42, v58, v59, v60, v61, v62, v63, v64;
  v66 = [v65 autoCategorizationLocalCorrectionsAsData];
  if (v66)
  {
    v67 = v66;
    v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    sub_1000060C8(0, &unk_1009440B0, REMTextMemberships_ptr);
    static REMJSONRepresentable.fromJSONData(_:)();

    sub_10001BBA0(v68, v70);
    v71 = v77;
  }

  else
  {

    v71 = 0;
  }

  v72 = *v74;
  *v74 = v71;
}

void sub_10056F748(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_10056F7DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v13 = __chkstk_darwin(v11 - 8, v12);
  v15 = &v23 - v14;
  result = (*(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeProvider))(v13);
  if (!v5)
  {
    v17 = result;
    type metadata accessor for RDGroceryOperationSuggestConversionToGroceryList();
    v18 = swift_allocObject();
    *(v18 + 16) = 2;
    *(v18 + 24) = a3;
    *(v18 + 32) = v17;
    *(v18 + 40) = sub_10056F97C;
    *(v18 + 48) = 0;
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = a1;
    v20[6] = a4;
    v20[7] = a5;
    v21 = a3;
    v22 = a1;

    sub_100331E2C(0, 0, v15, &unk_1007B1D70, v20);
  }

  return result;
}

uint64_t sub_10056F9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10056FA4C;

  return sub_1005CC9B8(a5);
}

uint64_t sub_10056FA4C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1 & 1;

    return _swift_task_switch(sub_10056FB9C, 0, 0);
  }
}

uint64_t sub_10056FB9C()
{
  (*(v0 + 16))(*(v0 + 40), 0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_10056FC98(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_10056FD08(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v5 = *(v1 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v6[0] = v2;
  *(v6 + 14) = *(v1 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v4[2] = a1;
  return sub_100014A64(&v5, sub_100580B9C, v4);
}

void sub_10056FF50(void *a1, objc_class *a2)
{
  v5 = sub_100015484(a1);
  if (!v2)
  {
    v6 = v5;
    if (v5)
    {
      sub_1000F5104(&unk_100939E10, &qword_1007970D0);

      v21 = 0;
      if ([a1 save:&v21])
      {
        v7 = qword_100936558;
        v8 = v21;
        if (v7 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_100006654(v9, qword_10094C8C0);
        v10 = a2;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138543362;
          *(v13 + 4) = v10;
          *v14 = a2;
          v15 = v10;
          _os_log_impl(&_mh_execute_header, v11, v12, "Inserted grocery operation queue item for determine whether to suggest to convert this list into a grocery list {listObjectID: %{public}@}", v13, 0xCu);
          sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
        }
      }

      else
      {
        v20 = v21;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100936558 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_10094C8C0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Skipped inserting grocery operation queue item for downloading grocery model assets from Trial because there are no active CloudKit accounts.", v19, 2u);
      }
    }
  }
}

void sub_1005702B4(void *a1, void (*a2)(_TtC7remindd19RDXPCStorePerformer *, id), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v162 = a3;
  v9 = type metadata accessor for Date();
  v168 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v167 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMAnalyticsEvent();
  v165 = *(v12 - 8);
  v166 = v12;
  __chkstk_darwin(v12, v13);
  v164 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v157 - v17;
  v173 = type metadata accessor for Locale();
  v19 = *(v173 - 8);
  __chkstk_darwin(v173, v20);
  v172 = (&v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v23);
  v25 = &v157 - v24;
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v26 = sub_100013674(qword_1009752E8);
  if (!v26)
  {
    v47 = objc_opt_self();
    v48 = String._bridgeToObjectiveC()();
    v49 = [v47 internalErrorWithDebugDescription:v48];

    a2(0, v49);
    return;
  }

  v27 = v26;
  v159 = a1;
  v160 = v9;
  sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [ObjCClassFromMetadata daemonUserDefaults];
  v163 = a4;
  v30 = v29;
  [v29 setAutomaticSecondaryGroceryLocalesLastModifiedDate:0];

  v31 = v163;
  v32 = [ObjCClassFromMetadata daemonUserDefaults];
  [v32 setAutomaticSecondaryGroceryLocales:0];

  v161 = v27;
  v158 = a2;
  if (v31)
  {
    v33 = *(v31 + 16);
    if (v33)
    {
      v157 = v4;
      v174 = &_swiftEmptyArrayStorage;
      swift_bridgeObjectRetain_n();
      sub_100026EF4(0, v33, 0);
      v34 = v174;
      v36 = *(v19 + 16);
      v35 = v19 + 16;
      v37 = v31 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
      v170 = *(v35 + 56);
      v171 = v36;
      v169 = (v35 - 8);
      do
      {
        v39 = v172;
        v38 = v173;
        v40 = v35;
        v171(v172, v37, v173);
        v41 = Locale.identifier.getter();
        v43 = v42;
        (*v169)(v39, v38);
        v174 = v34;
        v45 = *v34->clientIdentity;
        v44 = *&v34->clientIdentity[8];
        if (v45 >= v44 >> 1)
        {
          sub_100026EF4((v44 > 1), v45 + 1, 1);
          v34 = v174;
        }

        *v34->clientIdentity = v45 + 1;
        v46 = v34 + 16 * v45;
        *(v46 + 4) = v41;
        *(v46 + 5) = v43;
        v37 += v170;
        --v33;
        v35 = v40;
      }

      while (v33);
      v5 = v157;
      v31 = v163;
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v34 = &_swiftEmptyArrayStorage;
    }

    v172 = v31;
  }

  else
  {
    sub_100448FEC(0, v18);
    v50 = v173;
    if ((*(v19 + 48))(v18, 1, v173) == 1)
    {
      sub_1000050A4(v18, &unk_10093F420, &unk_100797AE0);
      v34 = 0;
      v172 = 0;
    }

    else
    {
      v51 = *(v19 + 32);
      v51(v25, v18, v50);
      sub_1000F5104(&qword_10093EC48, &qword_1007B1D60);
      v52 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100791300;
      v172 = v53;
      v51((v53 + v52), v25, v50);
      v34 = 0;
    }
  }

  v55 = v167;
  v54 = v168;
  v56 = v166;
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v57 = v164;
  *v164 = v31 == 0;
  *(v57 + 1) = v34;
  v58 = v165;
  (*(v165 + 104))(v57, enum case for REMAnalyticsEvent.groceryAdditionalLanguages(_:), v56);
  REMAnalyticsManager.post(event:)();

  (*(v58 + 8))(v57, v56);
  Date.init()();
  type metadata accessor for RDSecondaryGroceryLocalesInfo(0);
  v59 = swift_allocObject();
  (*(v54 + 32))(v59 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_lastModifiedDate, v55, v160);
  *(v59 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales) = v31;

  v61 = v161;
  sub_100566694(v60);
  if (v5)
  {

    v31, v62, v63, v64, v65, v66, v67, v68;
    v76 = v172;
  }

  else
  {

    [v61 updateChangeCount];
    v174 = 0;
    if (![v159 save:&v174])
    {
      v133 = v174;
      v31, v134, v135, v136, v137, v138, v139, v140;
      v172, v141, v142, v143, v144, v145, v146, v147;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      return;
    }

    v77 = qword_100936558;
    v78 = v174;
    if (v77 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_100006654(v79, qword_10094C8C0);

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    v31, v82, v83, v84, v85, v86, v87, v88;
    v89 = os_log_type_enabled(v80, v81);
    v97 = v158;
    if (v89)
    {
      v98 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v176 = v106;
      *v98 = 136446210;
      if (v31)
      {
        v174 = 0;
        v175 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);
        v175, v107, v108, v109, v110, v111, v112, v113;
        v174 = 0xD000000000000014;
        v175 = 0x80000001007FC990;
        v114._countAndFlagsBits = Array.description.getter();
        object = v114._object;
        String.append(_:)(v114);
        object, v116, v117, v118, v119, v120, v121, v122;
        v123._countAndFlagsBits = 41;
        v123._object = 0xE100000000000000;
        String.append(_:)(v123);
        v31, v124, v125, v126, v127, v128, v129, v130;
        v131 = v174;
        v132 = v175;
      }

      else
      {
        0, v99, v100, v101, v102, v103, v104, v105;
        v132 = 0xE900000000000063;
        v131 = 0x6974616D6F747561;
      }

      v148 = sub_10000668C(v131, v132, &v176);
      v132, v149, v150, v151, v152, v153, v154, v155;
      *(v98 + 4) = v148;
      _os_log_impl(&_mh_execute_header, v80, v81, "set secondary grocery localeIDs: %{public}s", v98, 0xCu);
      sub_10000607C(v106);

      v97 = v158;
      v61 = v161;
    }

    else
    {
      v31, v90, v91, v92, v93, v94, v95, v96;
    }

    v156 = v172;
    v97(v172, 0);

    v76 = v156;
  }

  v76, v69, v70, v71, v72, v73, v74, v75;
}

void sub_100570C98(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    type metadata accessor for Locale();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_100570D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v10;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  return _swift_task_switch(sub_100570D64, 0, 0);
}

uint64_t sub_100570D64()
{
  type metadata accessor for RDAutoCategorizerTypeFactory();
  static RDAutoCategorizerTypeFactory.create()(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  sub_10000F61C(v0 + 2, v1);
  v9 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100570EA8;
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  return v9(v7, v6, v4, v5, v1, v2);
}

uint64_t sub_100570EA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_100571050;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_100570FD0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100570FD0()
{
  v1 = *(v0 + 120);
  (*(v0 + 88))(v1, 0);
  v1, v2, v3, v4, v5, v6, v7, v8;
  sub_10000607C((v0 + 16));
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100571050()
{
  v1 = v0[14];
  v2 = v0[11];
  sub_10000607C(v0 + 2);
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100571370(uint64_t a1, uint64_t a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100571430;

  return sub_10057E0AC(a1, a2);
}

uint64_t sub_100571430(void *a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10057155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return _swift_task_switch(sub_100571580, 0, 0);
}

uint64_t sub_100571580()
{
  v1 = [objc_opt_self() sharedConfiguration];
  v0[9] = v1;
  v2 = [v1 intelligentExtractionsRecipeClassifierConfidenceScoreThreshold];
  [v2 doubleValue];
  v4 = v3;

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100571684;
  v6 = v0[6];

  return sub_1002CE97C(v6, v4);
}

uint64_t sub_100571684(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_100571844;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1005717AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005717AC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100571844()
{
  v22 = v0;

  if (qword_100936560 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094C8D8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v21);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to extract reminders, {error: %{public}s}", v4, 0xCu);
    sub_10000607C(v5);
  }

  v17 = *(v0 + 88);
  v18 = *(v0 + 56);
  swift_errorRetain();
  v18(0, v17);

  v19 = *(v0 + 8);

  return v19();
}

void sub_100571B6C(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyArrayStorage;
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptyArrayStorage;
  v5 = [v2 personHandle];
  if (v5)
  {
    v6 = v5;
    sub_100571F24(v5, v2, v4, v3);
  }

  v7 = [v2 aliases];
  if (v7)
  {
    v15 = v7;
    sub_1000060C8(0, &qword_10094C9A0, INPersonHandle_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v16 >> 62))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_5:
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v17 < 1)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_19;
  }

  for (i = 0; i != v17; ++i)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v16 + 8 * i + 32);
    }

    v20 = v19;
    sub_100571F24(v19, v2, v4, v3);
  }

LABEL_14:
  v16, v8, v9, v10, v11, v12, v13, v14;
  swift_beginAccess();
  if (*(*(v3 + 16) + 16) || (swift_beginAccess(), *(*(v4 + 16) + 16)))
  {
    swift_beginAccess();
    v21 = objc_allocWithZone(REMContactRepresentation);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v23 = Array._bridgeToObjectiveC()().super.isa;
    v24 = [v21 initWithPhones:isa emails:v23];

    goto LABEL_17;
  }

  if (qword_100936550 != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_10094C8A8);
  v26 = v2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "INPerson has no phone numbers or emails. Skipping {person: %@}", v29, 0xCu);
    sub_1000050A4(v30, &unk_100938E70, &unk_100797230);
  }

  v24 = 0;
LABEL_17:
  *a2 = v24;
}

void sub_100571F24(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 value];
  if (!v8)
  {
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_10094C8A8);
    v31 = a2;
    v32 = a1;
    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v24))
    {
      goto LABEL_30;
    }

    v25 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v25 = 138412546;
    *(v25 + 4) = v31;
    *(v25 + 12) = 2112;
    *(v25 + 14) = v32;
    *v33 = v31;
    v33[1] = v32;
    v34 = v31;
    v35 = v32;
    v29 = "INPerson alias has missing value. Skipping {person: %@, handle: %@}";
    goto LABEL_13;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [a1 type];
  if (v13 == 2)
  {
    swift_beginAccess();
    v45 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = sub_100365788(0, *v45->clientIdentity + 1, 1, v45, v47, v48, v49, v50);
      *(a4 + 16) = v45;
    }

    v52 = *v45->clientIdentity;
    v51 = *&v45->clientIdentity[8];
    if (v52 >= v51 >> 1)
    {
      v45 = sub_100365788((v51 > 1), v52 + 1, 1, v45, v47, v48, v49, v50);
    }

    *v45->clientIdentity = v52 + 1;
    v53 = v45 + 16 * v52;
    *(v53 + 4) = v10;
    *(v53 + 5) = v12;
    *(a4 + 16) = v45;
    goto LABEL_24;
  }

  if (v13 == 1)
  {
    swift_beginAccess();
    v36 = *(a3 + 16);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v36;
    if ((v37 & 1) == 0)
    {
      v36 = sub_100365788(0, *v36->clientIdentity + 1, 1, v36, v38, v39, v40, v41);
      *(a3 + 16) = v36;
    }

    v43 = *v36->clientIdentity;
    v42 = *&v36->clientIdentity[8];
    if (v43 >= v42 >> 1)
    {
      v36 = sub_100365788((v42 > 1), v43 + 1, 1, v36, v38, v39, v40, v41);
    }

    *v36->clientIdentity = v43 + 1;
    v44 = v36 + 16 * v43;
    *(v44 + 4) = v10;
    *(v44 + 5) = v12;
    *(a3 + 16) = v36;
LABEL_24:
    swift_endAccess();
    return;
  }

  if (v13)
  {
    v12, v14, v15, v16, v17, v18, v19, v20;
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100006654(v54, qword_10094C8A8);
    v58 = a1;
    oslog = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(oslog, v55))
    {

      v57 = v58;
      goto LABEL_31;
    }

    v56 = swift_slowAlloc();
    *v56 = 134349056;
    *(v56 + 4) = [v58 type];

    _os_log_impl(&_mh_execute_header, oslog, v55, "notifyOfInteraction: unknown INPersonHandleType: %{public}ld", v56, 0xCu);
    goto LABEL_29;
  }

  v12, v14, v15, v16, v17, v18, v19, v20;
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_10094C8A8);
  v22 = a2;
  v23 = a1;
  oslog = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(oslog, v24))
  {
    goto LABEL_30;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  *v25 = 138412546;
  *(v25 + 4) = v22;
  *(v25 + 12) = 2112;
  *(v25 + 14) = v23;
  *v26 = v22;
  v26[1] = v23;
  v27 = v22;
  v28 = v23;
  v29 = "INPerson has unknown alias type. Skipping {person: %@, handle: %@}";
LABEL_13:
  _os_log_impl(&_mh_execute_header, oslog, v24, v29, v25, 0x16u);
  sub_1000F5104(&unk_100938E70, &unk_100797230);
  swift_arrayDestroy();

LABEL_29:

LABEL_30:
  v57 = oslog;
LABEL_31:
}

void sub_1005724CC(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_100572554(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2 & 1);
}

void sub_1005726A8(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, _TtC7remindd19RDXPCStorePerformer *, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);

  v10, v12, v13, v14, v15, v16, v17, v18;
}

void sub_100572808(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1005729E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = *(v4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v17 = *(v4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v18[0] = v10;
  *(v18 + 14) = *(v4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v12[2] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = ObjectType;
  return sub_100014A64(&v17, sub_1005805C4, v12);
}

void sub_100572C04(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(_TtC7remindd19RDXPCStorePerformer *, void))
{
  v6 = a3;
  v9 = objc_autoreleasePoolPush();
  sub_100572CC8(a2, v6, a1);
  if (v4)
  {
    objc_autoreleasePoolPop(v9);
    v25 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v26 = v10;
    &_swiftEmptyArrayStorage, v11, v12, v13, v14, v15, v16, v17;
    objc_autoreleasePoolPop(v9);
    a4(v26, 0);
    v25 = v26;
  }

  v25, v18, v19, v20, v21, v22, v23, v24;
}

void sub_100572CC8(unint64_t a1, int a2, uint64_t a3)
{
  v187 = a3;
  LODWORD(v3) = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v175 - v12;
  Date.init()();
  v193 = &_swiftEmptyArrayStorage;
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100006654(v14, qword_10094C8A8);

  v185 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  a1, v18, v19, v20, v21, v22, v23, v24;
  v25 = os_log_type_enabled(v16, v17);
  v189 = a1;
  if (v25)
  {
    v177 = v17;
    v179 = v16;
    v180 = v9;
    v26 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v192[0] = v176;
    *v26 = 136446466;
    LODWORD(v181) = v3;
    v27 = Bool.yesno.getter();
    v29 = v28;
    v30 = sub_10000668C(v27, v28, v192);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v26 + 4) = v30;
    v178 = v26;
    *(v26 + 12) = 2082;
    if (a1 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = &_swiftEmptyArrayStorage;
    if (v38)
    {
      v191 = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, v38 & ~(v38 >> 63), 0);
      if (v38 < 0)
      {
        __break(1u);
        goto LABEL_50;
      }

      v182 = v13;
      v183 = v6;
      v184 = v5;
      v40 = 0;
      v39 = v191;
      v41 = a1 & 0xC000000000000001;
      do
      {
        if (v41)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v42 = *(a1 + 8 * v40 + 32);
        }

        v43 = v42;
        v44 = [v42 stringRepresentation];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v191 = v39;
        v49 = *v39->clientIdentity;
        v48 = *&v39->clientIdentity[8];
        if (v49 >= v48 >> 1)
        {
          sub_100026EF4((v48 > 1), v49 + 1, 1);
          v39 = v191;
        }

        ++v40;
        *v39->clientIdentity = v49 + 1;
        v50 = v39 + 16 * v49;
        *(v50 + 4) = v45;
        *(v50 + 5) = v47;
        a1 = v189;
      }

      while (v38 != v40);
      v6 = v183;
      v5 = v184;
      v13 = v182;
    }

    v53 = Array.description.getter();
    v3 = v54;
    v39, v54, v55, v56, v57, v58, v59, v60;
    v61 = sub_10000668C(v53, v3, v192);
    v3, v62, v63, v64, v65, v66, v67, v68;
    v69 = v178;
    *(v178 + 14) = v61;
    v70 = v179;
    _os_log_impl(&_mh_execute_header, v179, v177, "validatePhantomObjects: Validating {shouldRepair: %{public}s, childrenObjectIDs: %{public}s}", v69, 0x16u);
    swift_arrayDestroy();

    LOBYTE(v3) = v181;
    v9 = v180;
  }

  else
  {
  }

  __chkstk_darwin(v51, v52);
  v71 = v187;
  v72 = v188;
  *(&v175 - 6) = a1;
  *(&v175 - 5) = v71;
  *(&v175 - 4) = &v193;
  *(&v175 - 24) = v3 & 1;
  *(&v175 - 2) = v186;
  NSManagedObjectContext.rem_performAndWait<A>(_:)();
  if (v72)
  {
    (*(v6 + 8))(v13, v5);
    v193, v73, v74, v75, v76, v77, v78, v79;
    return;
  }

  (*(v6 + 16))(v9, v13, v5);
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  a1, v82, v83, v84, v85, v86, v87, v88;
  if (!os_log_type_enabled(v80, v81))
  {

    v117 = *(v6 + 8);
    v117(v9, v5);
    v117(v13, v5);
LABEL_47:
    swift_beginAccess();
    return;
  }

  LODWORD(v185) = v81;
  v186 = v80;
  v187 = 0;
  v89 = swift_slowAlloc();
  v180 = swift_slowAlloc();
  v192[0] = v180;
  *v89 = 68158722;
  *(v89 + 4) = 4;
  *(v89 + 8) = 2048;
  Date.rem_elapsedInMilliseconds.getter();
  v91 = v90;
  v92 = *(v6 + 8);
  v6 += 8;
  v181 = v92;
  v92(v9, v5);
  *(v89 + 10) = v91;
  *(v89 + 18) = 2082;
  v93 = Bool.yesno.getter();
  v95 = v94;
  v96 = sub_10000668C(v93, v94, v192);
  v95, v97, v98, v99, v100, v101, v102, v103;
  *(v89 + 20) = v96;
  v188 = v89;
  *(v89 + 28) = 2082;
  if (!(a1 >> 62))
  {
    v104 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_23;
  }

LABEL_50:
  v104 = _CocoaArrayWrapper.endIndex.getter();
LABEL_23:
  v105 = &_swiftEmptyArrayStorage;
  v183 = v6;
  v184 = v5;
  v182 = v13;
  if (v104)
  {
    v191 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v104 & ~(v104 >> 63), 0);
    if (v104 < 0)
    {
      __break(1u);
      goto LABEL_53;
    }

    v106 = 0;
    v105 = v191;
    v107 = a1 & 0xC000000000000001;
    do
    {
      if (v107)
      {
        v108 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v108 = *&v189->clientIdentity[8 * v106 + 16];
      }

      v109 = v108;
      v110 = [v108 stringRepresentation];
      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;

      v191 = v105;
      v115 = *v105->clientIdentity;
      v114 = *&v105->clientIdentity[8];
      if (v115 >= v114 >> 1)
      {
        sub_100026EF4((v114 > 1), v115 + 1, 1);
        v105 = v191;
      }

      ++v106;
      *v105->clientIdentity = v115 + 1;
      v116 = v105 + 16 * v115;
      *(v116 + 4) = v111;
      *(v116 + 5) = v113;
    }

    while (v104 != v106);
    v5 = v184;
    v13 = v182;
  }

  v118 = Array.description.getter();
  v120 = v119;
  v105, v119, v121, v122, v123, v124, v125, v126;
  v127 = sub_10000668C(v118, v120, v192);
  v120, v128, v129, v130, v131, v132, v133, v134;
  v135 = v188;
  *(v188 + 30) = v127;
  *(v135 + 38) = 2082;
  swift_beginAccess();
  v136 = v193;
  if (v193 >> 62)
  {
    v137 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v137 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v138 = &_swiftEmptyArrayStorage;
  if (!v137)
  {
LABEL_46:
    v156 = Array.description.getter();
    v158 = v157;
    v138, v157, v159, v160, v161, v162, v163, v164;
    v165 = sub_10000668C(v156, v158, v192);
    v158, v166, v167, v168, v169, v170, v171, v172;
    v173 = v188;
    *(v188 + 40) = v165;
    v174 = v186;
    _os_log_impl(&_mh_execute_header, v186, v185, "validatePhantomObjects: Done validating {elapsed: %.*f ms, shouldRepair: %{public}s, childrenObjectIDs: %{public}s, phantomIDs: %{public}s}", v173, 0x30u);
    swift_arrayDestroy();

    v181(v13, v5);
    goto LABEL_47;
  }

  v190 = &_swiftEmptyArrayStorage;

  sub_100026EF4(0, v137 & ~(v137 >> 63), 0);
  if ((v137 & 0x8000000000000000) == 0)
  {
    v139 = 0;
    v138 = v190;
    do
    {
      if ((v136 & 0xC000000000000001) != 0)
      {
        v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v140 = *&v136->clientIdentity[8 * v139 + 16];
      }

      v141 = v140;
      v142 = [v140 stringRepresentation];
      v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = v144;

      v190 = v138;
      v154 = *v138->clientIdentity;
      v153 = *&v138->clientIdentity[8];
      if (v154 >= v153 >> 1)
      {
        sub_100026EF4((v153 > 1), v154 + 1, 1);
        v138 = v190;
      }

      ++v139;
      *v138->clientIdentity = v154 + 1;
      v155 = v138 + 16 * v154;
      *(v155 + 4) = v143;
      *(v155 + 5) = v145;
    }

    while (v137 != v139);
    v136, v146, v147, v148, v149, v150, v151, v152;
    v5 = v184;
    v13 = v182;
    goto LABEL_46;
  }

LABEL_53:
  __break(1u);
}

void sub_1005736BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_100573764(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1005737DC(a2, a1, &v5);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1005737DC(void *a1, void *a2, uint64_t *a3)
{
  v65 = a3;
  v64 = a2;
  v69 = a1;
  v3 = _s10PredicatesOMa(0);
  __chkstk_darwin(v3, v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Calendar();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v17 - 8, v18);
  v20 = &v63 - v19;
  v68 = type metadata accessor for Date();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68, v21);
  v70 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  static Calendar.current.getter();
  (*(v8 + 104))(v11, enum case for Calendar.Component.day(_:), v7);
  if (v69 && [v69 integerValue] == 0x8000000000000000)
  {
    __break(1u);
  }

  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  v23 = *(sub_1000F5104(&qword_100946038, qword_1007A7578) + 48);
  sub_100010364(v20, v6, &unk_100938850, qword_100795AE0);
  v6[v23] = 1;
  swift_storeEnumTagMultiPayload();
  v24 = sub_100043AA8();
  sub_1004258C8(v6, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v25 = [objc_allocWithZone(NSFetchRequest) init];
  v26 = [swift_getObjCClassFromMetadata() entity];
  [v25 setEntity:v26];

  [v25 setAffectedStores:0];
  [v25 setPredicate:v24];
  *(&v74 + 1) = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
  *&v73 = v25;
  v27 = v25;
  v28 = v66;
  throwingCast<A>(_:as:failureMessage:)();
  v29 = v28;
  if (v28)
  {

    sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
    (*(v67 + 8))(v70, v68);
    result = sub_10000607C(&v73);
LABEL_12:
    *v65 = v29;
    return result;
  }

  sub_10000607C(&v73);
  v31 = v72[0];
  v32 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v72[0]];
  [v32 setResultType:1];
  v71 = 0;
  v33 = v64;
  v34 = [v64 executeRequest:v32 error:&v71];
  v35 = v71;
  if (!v34)
  {
    v38 = v71;
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
    result = (*(v67 + 8))(v70, v68);
    goto LABEL_12;
  }

  v36 = v34;
  *(&v74 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
  *&v73 = v36;
  sub_1000060C8(0, &qword_100939EC8, NSBatchDeleteResult_ptr);
  v37 = v35;
  throwingCast<A>(_:as:failureMessage:)();
  sub_10000607C(&v73);
  v39 = v72[0];
  if ([v72[0] result])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005EE0(v72, &v73);
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
  }

  v40 = sub_1000F5104(&qword_100937028, &qword_100791C10);
  throwingCast<A>(_:as:failureMessage:)();
  sub_1000050A4(&v73, &qword_100939ED0, &qword_100791B10);
  v41 = v71;
  v69 = objc_opt_self();
  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *&v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v73 + 1) = v43;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = v40;
  *(inited + 72) = v41;
  v44 = sub_10038ED74(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v44, v46, v47, v48, v49, v50, v51, v52;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1007953F0;
  *(v53 + 32) = v33;
  sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
  v54 = v33;
  v55 = Array._bridgeToObjectiveC()().super.isa;
  v53, v56, v57, v58, v59, v60, v61, v62;
  [v69 mergeChangesFromRemoteContextSave:isa intoContexts:v55];

  sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
  return (*(v67 + 8))(v70, v68);
}

void sub_100574178(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v163 = a5;
  v165 = a4;
  v167 = a3;
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v7 - 8, v8);
  v162 = v149 - v9;
  v164 = type metadata accessor for Date();
  v168 = *(v164 - 8);
  __chkstk_darwin(v164, v10);
  v160 = v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v159 = v149 - v14;
  v15 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v15 - 8, v16);
  v169 = v149 - v17;
  v172 = type metadata accessor for UUID();
  v166 = *(v172 - 8);
  __chkstk_darwin(v172, v18);
  v170 = v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v161 = *(v20 - 8);
  __chkstk_darwin(v20, v21);
  v23 = v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v27 = v149 - v26;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007953F0;
  *(v28 + 32) = a2;
  v29 = a2;
  v30 = sub_10000F8A4(v28, 0, 1u);
  v28, v31, v32, v33, v34, v35, v36, v37;
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v38 = [objc_allocWithZone(NSFetchRequest) init];
  v39 = [swift_getObjCClassFromMetadata() entity];
  [v38 setEntity:v39];

  v40 = v38;
  [v38 setAffectedStores:0];
  [v38 setPredicate:v30];

  v41 = a1;
  v42 = v171;
  v43 = NSManagedObjectContext.fetch<A>(_:)();
  if (v42)
  {
  }

  else
  {
    v51 = v29;
    v52 = v166;
    v53 = v167;
    v152 = v27;
    v150 = v23;
    v151 = v20;
    v156 = v41;
    if (v43 >> 62)
    {
      goto LABEL_43;
    }

    v54 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v55 = v168;
      v56 = v169;
      v158 = 0;
      if (!v54)
      {
        break;
      }

      v154 = v40;
      if ((v43 & 0xC000000000000001) != 0)
      {
        v57 = v43;
        v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v57 = v43;
        v58 = *(v43 + 32);
      }

      v153 = v58;
      v57, v59, v60, v61, v62, v63, v64, v65;
      v51 = v163;
      v66 = v163 + 64;
      v67 = 1 << *(v163 + 32);
      v68 = -1;
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      v69 = v68 & *(v163 + 64);
      v40 = ((v67 + 63) >> 6);
      v171 = (v52 + 48);
      v157 = (v52 + 32);
      v149[1] = v55 + 16;
      v149[0] = v55 + 32;
      v166 = (v52 + 8);

      v53 = 0;
      v155 = &_swiftEmptyArrayStorage;
      while (v69)
      {
LABEL_18:
        v71 = __clz(__rbit64(v69));
        v69 &= v69 - 1;
        v72 = (v51[6] + ((v53 << 10) | (16 * v71)));
        v73 = *v72;
        v74 = v72[1];

        UUID.init(uuidString:)();
        v75 = v56;
        v52 = v56;
        v76 = v172;
        if ((*v171)(v75, 1, v172) == 1)
        {
          v74, v77, v78, v79, v80, v81, v82, v83;
          v43 = sub_1000050A4(v52, &unk_100939D90, "8\n\r");
          v56 = v52;
        }

        else
        {
          v84 = v76;
          v85 = *v157;
          (*v157)(v170, v52, v84);
          if (v51[2] && (v93 = sub_100005F4C(v73, v74), (v86 & 1) != 0))
          {
            v94 = v168;
            v95 = v51[7] + *(v168 + 72) * v93;
            v96 = v160;
            v97 = v164;
            (*(v168 + 16))(v160, v95, v164);
            v74, v98, v99, v100, v101, v102, v103, v104;
            v105 = *(v94 + 32);
            v106 = v159;
            v105(v159, v96, v97);
            v107 = v150;
            v85(v150, v170, v172);
            v105((v107 + *(v151 + 20)), v106, v164);
            sub_1001A3A90(v107, v152);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v155 = sub_100368490(0, *v155->clientIdentity + 1, 1, v155);
            }

            v56 = v169;
            v108 = v161;
            v52 = *v155->clientIdentity;
            v109 = *&v155->clientIdentity[8];
            v110 = v152;
            if (v52 >= v109 >> 1)
            {
              v112 = sub_100368490((v109 > 1), v52 + 1, 1, v155);
              v108 = v161;
              v155 = v112;
              v110 = v152;
            }

            v111 = v155;
            *v155->clientIdentity = v52 + 1;
            v43 = sub_1001A3A90(v110, v111 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v52);
            v51 = v163;
          }

          else
          {
            v74, v86, v87, v88, v89, v90, v91, v92;
            v43 = (*v166)(v170, v172);
            v56 = v169;
          }
        }
      }

      while (1)
      {
        v70 = (v53 + 1);
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v70 >= v40)
        {

          v113 = v155;
          v114 = sub_1001A6A48(v155);
          v113, v115, v116, v117, v118, v119, v120, v121;
          v122 = v162;
          (*(v168 + 56))(v162, 1, 1, v164);
          type metadata accessor for RDRecentlyDeletedInfo(0);
          v123 = swift_allocObject();
          v124 = v122;
          v125 = v123;
          *(v123 + 16) = v114;
          sub_100031B58(v124, v123 + OBJC_IVAR____TtC7remindd21RDRecentlyDeletedInfo_lastPermanentlyHiddenRemindersCleanupDate, &unk_100938850, qword_100795AE0);
          v126 = v153;
          v127 = [v153 recentlyDeletedInfoAsData];
          if (v127)
          {
            v128 = v127;
            v129 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v131 = v130;

            sub_100580558(&unk_100950C50, type metadata accessor for RDRecentlyDeletedInfo, &unk_1007B7EC8);
            v132 = v158;
            static REMJSONRepresentable.fromJSONData(_:)();
            v133 = v167;
            v134 = v156;
            if (v132)
            {
              sub_10001BBA0(v129, v131);

LABEL_41:

              return;
            }

            v158 = 0;
            sub_10001BBA0(v129, v131);
            sub_10059B844(v125);

            v143 = v154;
          }

          else
          {

            v133 = v167;
            v143 = v154;
            v134 = v156;
          }

          v145 = v158;
          sub_100566968(v144, 1);
          if (v145)
          {

            return;
          }

          [v126 updateChangeCount];
          v173 = 0;
          if ([v134 save:&v173])
          {
            v146 = v173;
            (v133)(0);

            return;
          }

          v147 = v173;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          goto LABEL_41;
        }

        v69 = *(v66 + 8 * v70);
        v53 = (v53 + 1);
        if (v69)
        {
          v53 = v70;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_43:
      v148 = v43;
      v54 = _CocoaArrayWrapper.endIndex.getter();
      v43 = v148;
    }

    v43, v44, v45, v46, v47, v48, v49, v50;
    if (qword_100936550 == -1)
    {
      goto LABEL_31;
    }

LABEL_46:
    swift_once();
LABEL_31:
    v135 = type metadata accessor for Logger();
    sub_100006654(v135, qword_10094C8A8);
    v136 = v51;
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = v40;
      v141 = swift_slowAlloc();
      *v139 = 138412290;
      *(v139 + 4) = v136;
      *v141 = v136;
      v142 = v136;
      _os_log_impl(&_mh_execute_header, v137, v138, "permanentlyHideReminders: Failed to get account for %@.", v139, 0xCu);
      sub_1000050A4(v141, &unk_100938E70, &unk_100797230);
      v40 = v140;
    }

    sub_100580504();
    swift_allocError();
    v53();
  }
}

uint64_t sub_100574DD8()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v15 - 8);
  __chkstk_darwin(v15, v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4, v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8, v7);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v14[1] = "8B16@NSString20";
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.userInteractive(_:), v8);
  v14[0] = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_100580558(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10094C8F0 = result;
  return result;
}

void sub_10057511C(unint64_t a1, void *a2, void *a3, int a4)
{
  v5 = v4;
  LODWORD(v6) = a4;
  v249[2] = a3;
  v252 = a2;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8, v10);
  v12 = (v249 - v11);
  v265 = &_swiftEmptyArrayStorage;
  sub_1000F5104(&unk_10093AEB0, qword_100798560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  KeyPath = swift_getKeyPath();
  if (a1 >> 62)
  {
LABEL_36:
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v249[1] = v5;
  v15 = &_swiftEmptyArrayStorage;
  v250 = v6;
  if (v14)
  {
    *&v263[0] = &_swiftEmptyArrayStorage;
    sub_100253218(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_148;
    }

    v258 = inited;
    v16 = 0;
    v17 = *&v263[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(a1 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = type metadata accessor for UUID();
      (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
      *&v263[0] = v17;
      v23 = *v17->clientIdentity;
      v22 = *&v17->clientIdentity[8];
      if (v23 >= v22 >> 1)
      {
        sub_100253218((v22 > 1), v23 + 1, 1);
        v17 = *&v263[0];
      }

      ++v16;
      *v17->clientIdentity = v23 + 1;
      sub_100031B58(v12, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, &unk_100939D90, "8\n\r");
    }

    while (v14 != v16);
    v15 = &_swiftEmptyArrayStorage;
    inited = v258;
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
  }

  v24 = sub_1003EF7A0(KeyPath, v17);

  *(inited + 32) = v24;
  *(inited + 40) = sub_10001035C(0);
  v25 = sub_10000C2B0();
  v258 = sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v249[0] = v25;
  v27 = [ObjCClassFromMetadata ic_objectsMatchingPredicate:v25 context:v252];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  a1 = sub_1005761E0(v5);
  v5, v28, v29, v30, v31, v32, v33, v34;
  if (!a1)
  {
    a1 = &_swiftEmptyArrayStorage;
  }

  *&v263[0] = &_swiftEmptyArrayStorage;
  *&v261 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    KeyPath = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
LABEL_18:
      inited = 0;
      v12 = (a1 & 0xC000000000000001);
      v9 = &_swiftEmptyArrayStorage;
      do
      {
        v257 = v9;
        v9 = inited;
        while (1)
        {
          if (v12)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *(KeyPath + 16))
            {
              goto LABEL_35;
            }

            v42 = *(a1 + 8 * v9 + 32);
          }

          v5 = v42;
          inited = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v43 = v15;
          v44 = [objc_allocWithZone(NSMutableDictionary) init];
          v45 = [(RDXPCStorePerformer *)v5 isConnectedToAccountObject:v44];

          v46 = v5;
          if (!v45)
          {
            break;
          }

          v5 = v263;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v263[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v263[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v15 = *&v263[0];
          ++v9;
          if (inited == v6)
          {
            v9 = v257;
            goto LABEL_39;
          }
        }

        v5 = &v261;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v261 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v261;
        v15 = v43;
      }

      while (inited != v6);
      goto LABEL_39;
    }
  }

  else
  {
    KeyPath = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_18;
    }
  }

  v9 = &_swiftEmptyArrayStorage;
LABEL_39:
  a1, v35, v36, v37, v38, v39, v40, v41;

  sub_100272294(v47);
  if (qword_100936550 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v48 = type metadata accessor for Logger();
    v49 = sub_100006654(v48, qword_10094C8A8);

    v251 = v49;
    v12 = Logger.logObject.getter();
    LODWORD(v14) = static os_log_type_t.info.getter();
    v9, v50, v51, v52, v53, v54, v55, v56;
    v15, v57, v58, v59, v60, v61, v62, v63;
    v64 = os_log_type_enabled(v12, v14);
    v253 = v15;
    if (v64)
    {
      inited = swift_slowAlloc();
      a1 = swift_slowAlloc();
      *&v263[0] = a1;
      *inited = 136446210;
      if (v9 >> 62)
      {
LABEL_148:
        v72 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v72 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v73 = &_swiftEmptyArrayStorage;
      KeyPath = a1;
      if (v72)
      {
        *&v261 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v72 & ~(v72 >> 63), 0);
        if (v72 < 0)
        {
          __break(1u);
LABEL_154:
          __break(1u);
          return;
        }

        v255 = inited;
        LODWORD(v256) = v14;
        v257 = v12;
        v74 = v9;
        v75 = 0;
        v73 = v261;
        v76 = v74;
        v77 = v74 & 0xC000000000000001;
        do
        {
          if (v77)
          {
            v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v78 = *&v76->clientIdentity[8 * v75 + 16];
          }

          v79 = v78;
          v80 = [v78 remObjectID];
          if (v80)
          {
            v81 = v80;
            v82 = [v80 description];

            v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v85 = v84;
          }

          else
          {

            v85 = 0xE300000000000000;
            v83 = 7104878;
          }

          *&v261 = v73;
          v87 = *v73->clientIdentity;
          v86 = *&v73->clientIdentity[8];
          if (v87 >= v86 >> 1)
          {
            sub_100026EF4((v86 > 1), v87 + 1, 1);
            v73 = v261;
          }

          ++v75;
          *v73->clientIdentity = v87 + 1;
          v88 = v73 + 16 * v87;
          *(v88 + 4) = v83;
          *(v88 + 5) = v85;
          v15 = v253;
        }

        while (v72 != v75);
        v9 = v76;
        v12 = v257;
        LOBYTE(v14) = v256;
        inited = v255;
      }

      v89 = Array.description.getter();
      v91 = v90;
      v73, v90, v92, v93, v94, v95, v96, v97;
      v98 = sub_10000668C(v89, v91, v263);
      v91, v99, v100, v101, v102, v103, v104, v105;
      *(inited + 4) = v98;
      _os_log_impl(&_mh_execute_header, v12, v14, "validatePhantomObjects: {disconnected: %{public}s}", inited, 0xCu);
      sub_10000607C(KeyPath);
    }

    v9, v65, v66, v67, v68, v69, v70, v71;

    v264 = &_swiftEmptyArrayStorage;
    if (v15 >> 62)
    {
      v113 = _CocoaArrayWrapper.endIndex.getter();
      if (!v113)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v113 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v113)
      {
        goto LABEL_91;
      }
    }

    v15 = 0;
    v256 = v253 & 0xFFFFFFFFFFFFFF8;
    v257 = v253 & 0xC000000000000001;
    v255 = &v253->clientIdentity[16];
    v254 = v113;
LABEL_60:
    if (v257)
    {
      break;
    }

    if (v15 < *(v256 + 16))
    {
      v114 = *&v255[8 * v15];
      goto LABEL_63;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_63:
  KeyPath = v114;
  v115 = __OFADD__(v15, 1);
  v15 = (v15 + 1);
  if (v115)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v116 = [swift_getObjCClassFromObject() keyPathsForValuesAffectingEffectiveMinimumSupportedVersion];
  v117 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v118 = 1 << *(v117 + 32);
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  else
  {
    v119 = -1;
  }

  v120 = v119 & *(v117 + 56);
  v121 = (v118 + 63) >> 6;

  v122 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        if (!v120)
        {
          while (1)
          {
            v123 = v122 + 1;
            if (__OFADD__(v122, 1))
            {
              break;
            }

            if (v123 >= v121)
            {

              v117, v148, v149, v150, v151, v152, v153, v154;
              goto LABEL_83;
            }

            v120 = *(v117 + 56 + 8 * v123);
            ++v122;
            if (v120)
            {
              v122 = v123;
              goto LABEL_74;
            }
          }

          __break(1u);
          goto LABEL_87;
        }

LABEL_74:
        v124 = *(*(v117 + 48) + ((v122 << 10) | (16 * __clz(__rbit64(v120)))) + 8);

        v125 = String._bridgeToObjectiveC()();
        v9 = [KeyPath valueForKey:v125];

        if (v9)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v261 = 0u;
          v262 = 0u;
        }

        v120 &= v120 - 1;
        v263[0] = v261;
        v263[1] = v262;
        if (*(&v262 + 1))
        {
          break;
        }

        v124, v126, v127, v128, v129, v130, v131, v132;
        sub_1000050A4(v263, &qword_100939ED0, &qword_100791B10);
      }

      if (swift_dynamicCast())
      {
        break;
      }

      v124, v133, v134, v135, v136, v137, v138, v139;
    }

    v9 = v260;
    v140 = [(RDXPCStorePerformer *)v260 isConcealed];

    v124, v141, v142, v143, v144, v145, v146, v147;
  }

  while ((v140 & 1) == 0);

  v117, v155, v156, v157, v158, v159, v160, v161;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
LABEL_83:
  if (v15 != v254)
  {
    goto LABEL_60;
  }

LABEL_91:
  v253, v106, v107, v108, v109, v110, v111, v112;
  v162 = v264;

  sub_100272294(v163);

  v164 = Logger.logObject.getter();
  v165 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v164, v165))
  {

    goto LABEL_111;
  }

  v166 = swift_slowAlloc();
  v167 = swift_slowAlloc();
  *&v263[0] = v167;
  *v166 = 136446210;
  if ((v162 & 0x8000000000000000) != 0 || (v162 & 0x4000000000000000) != 0)
  {
    v168 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v168 = *v162->clientIdentity;
  }

  if (!v168)
  {

    v170 = &_swiftEmptyArrayStorage;
    goto LABEL_110;
  }

  v256 = v167;
  v257 = v166;
  LODWORD(v258) = v165;
  KeyPath = v164;
  *&v261 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, v168 & ~(v168 >> 63), 0);
  if (v168 < 0)
  {
    goto LABEL_154;
  }

  v169 = 0;
  v170 = v261;
  do
  {
    if ((v162 & 0xC000000000000001) != 0)
    {
      v171 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v171 = *&v162->clientIdentity[8 * v169 + 16];
    }

    v172 = v171;
    v173 = [v171 remObjectID];
    if (v173)
    {
      v174 = v173;
      v175 = [v173 description];

      v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v178 = v177;
    }

    else
    {

      v178 = 0xE300000000000000;
      v176 = 7104878;
    }

    *&v261 = v170;
    v180 = *v170->clientIdentity;
    v179 = *&v170->clientIdentity[8];
    if (v180 >= v179 >> 1)
    {
      sub_100026EF4((v179 > 1), v180 + 1, 1);
      v170 = v261;
    }

    ++v169;
    *v170->clientIdentity = v180 + 1;
    v181 = v170 + 16 * v180;
    *(v181 + 4) = v176;
    *(v181 + 5) = v178;
  }

  while (v168 != v169);

  v164 = KeyPath;
  LOBYTE(v165) = v258;
  v167 = v256;
  v166 = v257;
LABEL_110:
  v182 = Array.description.getter();
  v184 = v183;
  v170, v183, v185, v186, v187, v188, v189, v190;
  v191 = sub_10000668C(v182, v184, v263);
  v184, v192, v193, v194, v195, v196, v197, v198;
  *(v166 + 4) = v191;
  _os_log_impl(&_mh_execute_header, v164, v165, "validatePhantomObjects: {objectsWithConcealedParent: %{public}s}", v166, 0xCu);
  sub_10000607C(v167);

LABEL_111:

  v199 = v265;
  *&v263[0] = &_swiftEmptyArrayStorage;
  KeyPath = v265 >> 62;
  if (v265 >> 62)
  {
LABEL_146:
    v200 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v200 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v201 = 0;
  v202 = v199 & 0xC000000000000001;
  v203 = &_swiftEmptyArrayStorage;
  while (v200 != v201)
  {
    if (v202)
    {
      v204 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v201 >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_143;
      }

      v204 = *&v199->clientIdentity[8 * v201 + 16];
    }

    v205 = v204;
    v206 = v201 + 1;
    if (__OFADD__(v201, 1))
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v207 = [v204 remObjectID];

    ++v201;
    if (v207)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v263[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v263[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v203 = *&v263[0];
      v201 = v206;
    }
  }

  sub_100271578(v203);
  if (v250)
  {
    *&v263[0] = &_swiftEmptyArrayStorage;
    if (KeyPath)
    {
      v215 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v215 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v216 = 0;
    KeyPath = &_swiftEmptyArrayStorage;
    while (v215 != v216)
    {
      if (v202)
      {
        v217 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v216 >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }

        v217 = *&v199->clientIdentity[8 * v216 + 16];
      }

      v218 = v217;
      v219 = v216 + 1;
      if (__OFADD__(v216, 1))
      {
        goto LABEL_144;
      }

      v220 = [v217 objectID];

      ++v216;
      if (v220)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v263[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v263[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        KeyPath = *&v263[0];
        v216 = v219;
      }
    }

    v199, v208, v209, v210, v211, v212, v213, v214;
    v221 = KeyPath;
    if (KeyPath >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_141;
      }
    }

    else if (*((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_141:
      sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v223 = v252;
      v224 = [v252 _debug_managedObjectIDsSortedByTopologicalWeightsForEffectiveMinimumSupportedVersionPropagation:isa];

      v225 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      __chkstk_darwin(v226, v227);
      v249[-4] = v225;
      v249[-3] = v223;
      v249[-2] = v221;
      NSManagedObjectContext.rem_performAndWait<A>(_:)();
      v225, v228, v229, v230, v231, v232, v233, v234;
      v221, v235, v236, v237, v238, v239, v240, v241;

      return;
    }

    v199 = v221;
  }

  v199, v242, v243, v244, v245, v246, v247, v248;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005761E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return &_swiftEmptyArrayStorage;
}

void sub_100576348(unint64_t a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v4 = v3;
  v5 = a1;
  if (a1 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v207 = 0;
    v208 = 0;
    v7 = 0;
    v220 = v5 & 0xC000000000000001;
    v211 = v5 + 32;
    v212 = v5 & 0xFFFFFFFFFFFFFF8;
    v206 = v5;
    v216 = i;
    while (1)
    {
      if (v220)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v212 + 16))
        {
          goto LABEL_66;
        }

        v8 = *(v211 + 8 * v7);
      }

      v9 = v8;
      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        break;
      }

      aBlock[0] = 0;
      v11 = [a2 existingObjectWithID:v8 error:aBlock];
      v12 = aBlock[0];
      if (!v11)
      {
        v21 = aBlock[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v4 = 0;
LABEL_17:
        if (qword_100936550 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_100006654(v22, qword_10094C8A8);
        v23 = v9;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = v7;
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138543362;
          *(v27 + 4) = v23;
          *v28 = v23;
          v29 = v23;
          _os_log_impl(&_mh_execute_header, v24, v25, "repairPhantomObjects: Couldn't get an REMCDObject, skipping {moid: %{public}@}", v27, 0xCu);
          sub_1000050A4(v28, &unk_100938E70, &unk_100797230);
          i = v216;

          v7 = v26;
        }

        else
        {
        }

        goto LABEL_5;
      }

      v13 = v11;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v12;
      if (!v14)
      {

        goto LABEL_17;
      }

      v222 = v13;
      v16 = [v14 remObjectID];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 description];

        v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v217 = 7104878;
      }

      if ([v14 isConcealed])
      {
        if (qword_100936550 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100006654(v30, qword_10094C8A8);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        v20, v33, v34, v35, v36, v37, v38, v39;
        if (!os_log_type_enabled(v31, v32))
        {
          v20, v40, v41, v42, v43, v44, v45, v46;

LABEL_59:
          goto LABEL_5;
        }

        v47 = v20;
        v48 = swift_slowAlloc();
        v218 = v4;
        v49 = v9;
        v50 = v7;
        v51 = swift_slowAlloc();
        aBlock[0] = v51;
        *v48 = 136446210;
        v52 = sub_10000668C(v217, v47, aBlock);
        v47, v53, v54, v55, v56, v57, v58, v59;
        *(v48 + 4) = v52;
        i = v216;
        _os_log_impl(&_mh_execute_header, v31, v32, "repairPhantomObjects: Attempted to repair a non-phantom object which is already concealed {remObjectID: %{public}s}", v48, 0xCu);
        sub_10000607C(v51);
        v7 = v50;

        v4 = v218;
      }

      else
      {
        v60 = [objc_allocWithZone(NSMutableDictionary) init];
        v61 = [v14 isConnectedToAccountObject:v60];

        v209 = v9;
        v210 = v7;
        if (v61)
        {
          v62 = v222;
        }

        else
        {
          v214 = v20;
          v63 = [swift_getObjCClassFromObject() keyPathsForValuesAffectingEffectiveMinimumSupportedVersion];
          v64 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v65 = v64 + 56;
          v66 = 1 << *(v64 + 32);
          if (v66 < 64)
          {
            v67 = ~(-1 << v66);
          }

          else
          {
            v67 = -1;
          }

          v68 = v67 & *(v64 + 56);
          v69 = (v66 + 63) >> 6;
          v215 = v64;

          v70 = 0;
          v219 = v14;
          while (v68)
          {
            v5 = v70;
LABEL_42:
            v79 = __clz(__rbit64(v68));
            v68 &= v68 - 1;
            v80 = (*(v215 + 48) + ((v5 << 10) | (16 * v79)));
            v81 = *v80;
            v82 = v80[1];
            v83 = objc_opt_self();
            v84 = swift_allocObject();
            v84[2] = v219;
            v84[3] = v81;
            v213 = v81;
            v84[4] = v82;
            aBlock[4] = sub_100580634;
            aBlock[5] = v84;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100019200;
            aBlock[3] = &unk_1008F6F48;
            v85 = _Block_copy(aBlock);
            swift_bridgeObjectRetain_n();
            v86 = v222;

            aBlock[0] = 0;
            v87 = [v83 catchObjCException:v85 error:aBlock];
            _Block_release(v85);
            if (v87)
            {
              v71 = aBlock[0];
              v82, v72, v73, v74, v75, v76, v77, v78;
            }

            else
            {
              v88 = aBlock[0];
              _convertNSErrorToError(_:)();

              swift_willThrow();
              if (qword_100936550 != -1)
              {
                swift_once();
              }

              v89 = type metadata accessor for Logger();
              sub_100006654(v89, qword_10094C8A8);

              v90 = Logger.logObject.getter();
              v91 = static os_log_type_t.fault.getter();
              v214, v92, v93, v94, v95, v96, v97, v98;
              v82, v99, v100, v101, v102, v103, v104, v105;
              if (os_log_type_enabled(v90, v91))
              {
                v106 = swift_slowAlloc();
                aBlock[0] = swift_slowAlloc();
                *v106 = 136446466;
                *(v106 + 4) = sub_10000668C(v213, v82, aBlock);
                *(v106 + 12) = 2082;
                *(v106 + 14) = sub_10000668C(v217, v214, aBlock);
                _os_log_impl(&_mh_execute_header, v90, v91, "repairPhantomObjects: Unknown parent key to try to unset {key %{public}s, remObjectiD: %{public}s}", v106, 0x16u);
                swift_arrayDestroy();
              }

              v82, v107, v108, v109, v110, v111, v112, v113;

              v4 = 0;
            }

            v70 = v5;
            v14 = v219;
          }

          v20 = v214;
          while (1)
          {
            v5 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              __break(1u);
              goto LABEL_65;
            }

            if (v5 >= v69)
            {
              break;
            }

            v68 = *(v65 + 8 * v5);
            ++v70;
            if (v68)
            {
              goto LABEL_42;
            }
          }

          v215, v114, v115, v116, v117, v118, v119, v120;
          [v14 markForDeletion];
          if (qword_100936550 != -1)
          {
            swift_once();
          }

          v121 = type metadata accessor for Logger();
          sub_100006654(v121, qword_10094C8A8);

          v122 = Logger.logObject.getter();
          v123 = static os_log_type_t.default.getter();
          v214, v124, v125, v126, v127, v128, v129, v130;
          v5 = v206;
          v9 = v209;
          v7 = v210;
          if (os_log_type_enabled(v122, v123))
          {
            v131 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            aBlock[0] = v132;
            *v131 = 136446210;
            *(v131 + 4) = sub_10000668C(v217, v214, aBlock);
            _os_log_impl(&_mh_execute_header, v122, v123, "repairPhantomObjects: Repaired markedForDeletion state for {remObjectID: %{public}s}", v131, 0xCu);
            sub_10000607C(v132);

            v20 = v214;
          }

          i = v216;
          v62 = v222;
          v10 = __OFADD__(v207++, 1);
          if (v10)
          {
            goto LABEL_68;
          }
        }

        if (![v14 validateEffectiveMinimumSupportedVersionApplyingChange:0])
        {

          v20, v166, v167, v168, v169, v170, v171, v172;
          goto LABEL_59;
        }

        v133 = [a2 managedObjectIDsHavingDirtyEffectiveMinimumSupportedVersion];
        v134 = [v14 ic_permanentObjectID];
        [v133 addObject:v134];

        if (qword_100936550 != -1)
        {
          swift_once();
        }

        v135 = type metadata accessor for Logger();
        sub_100006654(v135, qword_10094C8A8);
        v136 = v222;

        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.default.getter();

        v20, v139, v140, v141, v142, v143, v144, v145;
        if (os_log_type_enabled(v137, v138))
        {
          v146 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v146 = 136446466;
          v147 = sub_10000668C(v217, v20, aBlock);
          v20, v148, v149, v150, v151, v152, v153, v154;
          *(v146 + 4) = v147;
          *(v146 + 12) = 2082;
          [v14 effectiveMinimumSupportedVersion];
          sub_10013A058();
          v155 = BinaryInteger.description.getter();
          v157 = v156;
          v158 = sub_10000668C(v155, v156, aBlock);
          v157, v159, v160, v161, v162, v163, v164, v165;
          *(v146 + 14) = v158;
          _os_log_impl(&_mh_execute_header, v137, v138, "repairPhantomObjects: Repaired effectiveMiniumSupportedVersion for {remObjectID: %{public}s, newValue: %{public}s}", v146, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v20, v173, v174, v175, v176, v177, v178, v179;
        }

        v5 = v206;
        v10 = __OFADD__(v208++, 1);
        i = v216;
        v7 = v210;
        if (v10)
        {
          goto LABEL_67;
        }
      }

LABEL_5:
      if (v7 == i)
      {
        goto LABEL_71;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v207 = 0;
  v208 = 0;
LABEL_71:
  if (__OFADD__(v207, v208))
  {
    __break(1u);
LABEL_84:
    swift_once();
    goto LABEL_74;
  }

  if (v207 + v208 <= 0)
  {
    return;
  }

  if (qword_100936550 != -1)
  {
    goto LABEL_84;
  }

LABEL_74:
  v180 = type metadata accessor for Logger();
  sub_100006654(v180, qword_10094C8A8);

  v181 = Logger.logObject.getter();
  v182 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v181, v182))
  {
    v183 = swift_slowAlloc();
    *v183 = 134218496;
    v191 = a3;
    if (a3 >> 62)
    {
      v203 = v183;
      v204 = _CocoaArrayWrapper.endIndex.getter();
      v191 = a3;
      v192 = v204;
      v183 = v203;
    }

    else
    {
      v192 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v183 + 4) = v192;
    v193 = v183;
    v191, v184, v185, v186, v187, v188, v189, v190;
    *(v193 + 12) = 2048;
    *(v193 + 14) = v207;
    *(v193 + 22) = 2048;
    *(v193 + 24) = v208;
    _os_log_impl(&_mh_execute_header, v181, v182, "repairPhantomObjects: Saving repaired objects... {inputCount: %ld, disconnectedCount: %ld, unsupportedCount: %ld}", v193, 0x20u);
  }

  else
  {

    a3, v194, v195, v196, v197, v198, v199, v200;
  }

  aBlock[0] = 0;
  if ([a2 save:aBlock])
  {
    v201 = aBlock[0];
  }

  else
  {
    v202 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100577140(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 valueForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    if (swift_dynamicCast())
    {
      [v5 updateChangeCount];
    }
  }

  else
  {
    sub_1000050A4(v8, &qword_100939ED0, &qword_100791B10);
  }

  v4 = String._bridgeToObjectiveC()();
  [a1 setValue:0 forKey:v4];
}

uint64_t sub_100577284(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000FDA74;

  return v6();
}

uint64_t sub_10057736C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000FCBFC;

  return v7();
}

uint64_t sub_100577454(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v31 - v11;
  sub_100010364(a3, v31 - v11, &qword_100936FA8, &qword_100791B70);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000050A4(v12, &qword_100936FA8, &qword_100791B70);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v32[0] = 0;
      v32[1] = 0;
      v20 = v32;
      v32[2] = v15;
      v32[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v31[1] = 7;
    v31[2] = v20;
    v31[3] = v18;
    v22 = swift_task_create();

    sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
    a2, v23, v24, v25, v26, v27, v28, v29;

    return v22;
  }

LABEL_8:
  sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v32[4] = 0;
    v32[5] = 0;
    v32[6] = v15;
    v32[7] = v17;
  }

  return swift_task_create();
}

void sub_100577750(uint64_t a1, objc_class *a2, objc_class *a3)
{
  v4 = a1;
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaDictionary.count.getter();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v41 = a3;
    v48 = &_swiftEmptyArrayStorage;
    sub_100253D10(0, v5 & ~(v5 >> 63), 0);
    v6 = &_swiftEmptyArrayStorage;
    if (v42)
    {
      v7 = __CocoaDictionary.startIndex.getter();
    }

    else
    {
      v7 = _HashTable.startBucket.getter();
      v8 = *(v4 + 36);
    }

    v45 = v7;
    v46 = v8;
    v47 = v42 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v38 = v5;
      v39 = v4;
      while (v9 < v5)
      {
        if (__OFADD__(v9, 1))
        {
          goto LABEL_24;
        }

        v29 = v45;
        v30 = v46;
        v31 = v47;
        sub_10014AEEC(v44, v45, v46, v47, v4);
        v33 = v32;
        v43 = v44[0];
        v48 = v6;
        v35 = *v6->clientIdentity;
        v34 = *&v6->clientIdentity[8];

        if (v35 >= v34 >> 1)
        {
          sub_100253D10((v34 > 1), v35 + 1, 1);
          a3 = v41;
          v6 = v48;
        }

        *v6->clientIdentity = v35 + 1;
        v36 = &v6->super.isa + 4 * v35;
        v36[4] = v33;
        v36[5] = a2;
        v36[6] = a3;
        v36[7] = v43;
        if (v42)
        {
          v4 = v39;
          if (!v31)
          {
            goto LABEL_26;
          }

          if (__CocoaDictionary.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v5 = v38;
          v28 = v9 + 1;
          sub_1000F5104(&qword_10094C9C8, &unk_1007B1F78);
          v37 = Dictionary.Index._asCocoa.modify();
          __CocoaDictionary.formIndex(after:isUnique:)();
          v37(v44, 0);
        }

        else
        {
          v4 = v39;
          sub_10014AB9C(v29, v30, v31, v39);
          v11 = v10;
          v13 = v12;
          v14 = v6;
          v16 = v15;
          sub_100010E34(v29, v30, v31, v17, v18, v19, v20, v21);
          v45 = v11;
          v46 = v13;
          v27 = v16 & 1;
          v6 = v14;
          v47 = v27;
          v5 = v38;
          v28 = v9 + 1;
        }

        ++v9;
        a3 = v41;
        if (v28 == v5)
        {
          sub_100010E34(v45, v46, v47, v22, v23, v24, v25, v26);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

unint64_t sub_100577A10(void *a1)
{
  isa = type metadata accessor for UUID();
  v4 = *(isa - 1);
  __chkstk_darwin(isa, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&unk_100943290, &unk_1007B4D40);
  inited = swift_initStackObject();
  v54 = xmmword_100791300;
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = a1;
  v9 = a1;
  sub_1006732C8(inited, 0, 1, 0);
  v11 = v10;
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &qword_10093A920, &unk_100797F40);
  if (v1)
  {
    return isa;
  }

  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      if (result)
      {
        goto LABEL_5;
      }

LABEL_11:
      v11, v12, v13, v14, v15, v16, v17, v18;
      return 0;
    }

LABEL_12:
    v11, v12, v13, v14, v15, v16, v17, v18;
    v28 = REMErrorDomain;
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v29 = swift_initStackObject();
    *(v29 + 16) = v54;
    *(v29 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v29 + 40) = v30;
    v55 = 0;
    v56 = 0xE000000000000000;
    v31 = v28;
    _StringGuts.grow(_:)(54);
    v32._object = 0x80000001007FCB70;
    v32._countAndFlagsBits = 0xD000000000000034;
    String.append(_:)(v32);
    v33 = [v9 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100580558(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v34._object;
    String.append(_:)(v34);
    object, v36, v37, v38, v39, v40, v41, v42;
    (*(v4 + 8))(v7, isa);
    v43 = v55;
    v44 = v56;
    *(v29 + 72) = &type metadata for String;
    *(v29 + 48) = v43;
    *(v29 + 56) = v44;
    v45 = sub_1001F67C8(v29);
    swift_setDeallocating();
    sub_1000050A4(v29 + 32, &unk_100939260, &unk_100797220);
    v46 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v45, v47, v48, v49, v50, v51, v52, v53;
    [v46 initWithDomain:v31 code:-1 userInfo:isa];

    swift_willThrow();
    return isa;
  }

  if (_CocoaArrayWrapper.endIndex.getter() > 1)
  {
    goto LABEL_12;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v11 + 32);
LABEL_8:
    isa = v20;
    v11, v21, v22, v23, v24, v25, v26, v27;
    return isa;
  }

  __break(1u);
  return result;
}

void sub_100577DE0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094C8A8);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Executing fetch request {fetchRequest: %@}", v10, 0xCu);
    sub_1000050A4(v11, &unk_100938E70, &unk_100797230);
  }

  v13 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v19 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v20[0] = v13;
  *(v20 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  __chkstk_darwin(v14, v15);
  v18[2] = v7;
  sub_1004045A4(&v19, sub_1005814C4, v18);
  v17 = v16;
  (*(a3 + 16))(a3, v16, 0);
}

void sub_100578140(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  *(swift_allocObject() + 16) = a3;
  _Block_copy(a3);
  sub_1000060C8(0, &qword_10094C9E0, REMStoreInvocation_ptr);
  v6 = a1;
  sub_1000F5104(&qword_10094C9E8, &qword_1007B1FB0);
  if (swift_dynamicCast())
  {
    sub_100054B6C(v75, v74);
    v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
    *v75 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
    *&v75[16] = v7;
    *&v75[30] = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v8 = swift_allocObject();
    v9 = v8;
    *(v8 + 16) = xmmword_100791340;
    v10 = (*&v75[44] << 32) & 0xC10000000000;
    if (v10 == 0x810000000000)
    {
      v11 = 0xD000000000000011;
    }

    else
    {
      v11 = 0;
    }

    if (v10 == 0x810000000000)
    {
      v12 = 0x80000001007EECE0;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    *(v8 + 56) = &type metadata for String;
    v13 = sub_100006600();
    v9[8] = v13;
    v9[4] = v11;
    v9[5] = v12;
    v14 = sub_1000063E8();
    v9[12] = &type metadata for String;
    v9[13] = v13;
    v9[9] = v14;
    v9[10] = v15;
    v16 = String.init(format:_:)();
    v18 = v17;
    v19 = [v6 name];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = 10272;
    v22._object = 0xE200000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = v16;
    v23._object = v18;
    String.append(_:)(v23);
    __chkstk_darwin(v24, v25);
    static os_log_type_t.info.getter();
    measureTimeElapsed(_:level:block:)();
    v18, v26, v27, v28, v29, v30, v31, v32;
    v21, v33, v34, v35, v36, v37, v38, v39;
    sub_10000607C(v74);
  }

  else
  {
    memset(v75, 0, 40);
    sub_1000050A4(v75, &qword_10094C9F0, &unk_1007B1FB8);
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100006654(v40, qword_10094C8A8);
    v41 = v6;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&_mh_execute_header, v42, v43, "Invocation does not conform to RDInvocable {invocation: %@}", v44, 0xCu);
      sub_1000050A4(v45, &unk_100938E70, &unk_100797230);
    }

    v47 = objc_opt_self();
    *v75 = 0;
    *&v75[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v48._countAndFlagsBits = 0xD000000000000038;
    v48._object = 0x80000001007FCC90;
    String.append(_:)(v48);
    v49 = [v41 description];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53._countAndFlagsBits = v50;
    v53._object = v52;
    String.append(_:)(v53);
    v52, v54, v55, v56, v57, v58, v59, v60;
    v61._countAndFlagsBits = 125;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    v62 = *&v75[8];
    v63 = String._bridgeToObjectiveC()();
    v62, v64, v65, v66, v67, v68, v69, v70;
    v71 = [v47 internalErrorWithDebugDescription:v63];

    v72 = v71;
    v73 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v73);
  }
}

void sub_100578610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v6 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44);
  if (v6 >> 14 >= 2)
  {
    if (v6 >> 14 == 2)
    {
      v7 = *(v5 + 10) | (*(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44) << 32);
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v7 = 2147483519;
  }

  v8 = sub_100009A40(512, v7);
  v9 = v5[1];
  v29 = *v5;
  v30[0] = v9;
  *(v30 + 14) = *(v5 + 30);
  __chkstk_darwin(v8, v10);
  v28[2] = a1;
  v28[3] = &v29;
  v11 = sub_100404048(&v29, sub_1005815B0, v28);
  sub_10031ED4C(v11);
  v13 = v12;
  v15 = v14;
  v11, v12, v14, v16, v17, v18, v19, v20;
  if (v13)
  {
    v13, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    v15 = 0;
  }

  (*(a3 + 16))(a3, v15, 0);
}

void sub_10057879C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v6 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44);
  if (v6 >> 14 >= 2)
  {
    if (v6 >> 14 == 2)
    {
      v7 = *(v5 + 10) | (*(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44) << 32);
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v7 = 2147483519;
  }

  v8 = sub_100009A40(0x7FFFFFFFLL, v7);
  v9 = v5[1];
  v21 = *v5;
  v22[0] = v9;
  *(v22 + 14) = *(v5 + 30);
  __chkstk_darwin(v8, v10);
  v20[2] = a1;
  v20[3] = &v21;
  v11 = sub_100404048(&v21, sub_100581464, v20);
  sub_1000060C8(0, &qword_100939208, REMReplicaManagerSerializedData_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);
  v11, v13, v14, v15, v16, v17, v18, v19;
}

uint64_t sub_100578940(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TimeZone();
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v29 - v12;
  v14 = sub_1000F5104(&qword_10093F978, &qword_10079E228);
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v29 - v16;
  v18 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  v19 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v36 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v37[0] = v19;
  *(v37 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v20 = type metadata accessor for SymmetricKey();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = v18;
  sub_100009DAC(&v36, &v30);
  static TimeZone.current.getter();
  *&v32 = &type metadata for SystemRandomNumberGenerator;
  *(&v32 + 1) = &protocol witness table for SystemRandomNumberGenerator;
  type metadata accessor for RDStoreControllerExporter.DistributedEvaluation(0);
  swift_allocObject();
  sub_10027DD30(v22, &v36, a1, v17, v9, &v30, v13);
  sub_10027EE54(&v30);
  v23 = sub_1002833A8();
  v35 = v30;
  v24 = v23;
  v26 = v25;
  sub_1000050A4(&v35, &qword_10093FB10, &qword_10079E5D0);
  v34 = v31;
  sub_1000050A4(&v34, &unk_100939E40, &qword_100791BD0);
  v33 = v32;
  sub_1000050A4(&v33, &unk_100939E40, &qword_100791BD0);
  sub_100029344(v24, v26);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, 0);

  sub_10001BBA0(v24, v26);
  sub_10001BBA0(v24, v26);
}

uint64_t sub_100578DAC(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, unint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, uint64_t a6, _TtC7remindd19RDXPCStorePerformer *a7, unint64_t a8, unint64_t a9, _TtC7remindd19RDXPCStorePerformer *a10, uint64_t a11, _TtC7remindd19RDXPCStorePerformer *a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, _TtC7remindd19RDXPCStorePerformer *a16, const void *a17)
{
  v496 = a7;
  v497 = a5;
  v494 = a6;
  v506 = a10;
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v486 = *(v24 - 8);
  v487 = v24;
  __chkstk_darwin(v24, v25);
  v485 = (&v474 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v479 = *(v27 - 8);
  v480 = v27;
  __chkstk_darwin(v27, v28);
  v478 = &v474 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v476 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v476, v30);
  v477 = &v474 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v483 = *(v32 - 8);
  v484 = v32;
  __chkstk_darwin(v32, v33);
  v482 = &v474 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v505 = swift_allocObject();
  *(v505 + 16) = a17;
  v490 = a17;
  _Block_copy(a17);
  if (qword_100936550 != -1)
  {
LABEL_95:
    swift_once();
  }

  v495 = a13;
  v499 = a12;
  v493 = a11;
  v475 = type metadata accessor for Logger();
  v35 = sub_100006654(v475, qword_10094C8A8);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v36 = a16;
  v489 = v35;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  LODWORD(v504) = v38;
  v39 = os_log_type_enabled(&v37->super, v38);
  v498 = a8;
  v502 = a4;
  v503 = a2;
  v500 = a3;
  v501 = a9;
  v507 = a1;
  if (v39)
  {
    v492 = v37;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v509 = v41;
    *v40 = 136447746;
    v42 = *&v36->clientIdentity[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity];
    v513[2] = *(&v36->super.isa + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
    v514[0] = v42;
    *(v514 + 14) = *&v36->clientIdentity[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 14];
    v43 = sub_1000063E8();
    v45 = v44;
    v46 = sub_10000668C(v43, v44, &v509);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v40 + 4) = v46;
    *(v40 + 12) = 2048;
    if (a1 >> 62)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v61 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v503;
    a1, v54, v55, v56, v57, v58, v59, v60;
    *(v40 + 14) = v61;
    a1, v63, v64, v65, v66, v67, v68, v69;
    *(v40 + 22) = 2048;
    if (v62 >> 62)
    {
      v77 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v77 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v78 = v36;
    v62, v70, v71, v72, v73, v74, v75, v76;
    *(v40 + 24) = v77;
    v62, v79, v80, v81, v82, v83, v84, v85;
    *(v40 + 32) = 2048;
    v93 = v502;
    if (v502 >> 62)
    {
      v94 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v94 = *((v502 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93, v86, v87, v88, v89, v90, v91, v92;
    *(v40 + 34) = v94;
    v93, v95, v96, v97, v98, v99, v100, v101;
    *(v40 + 42) = 2048;
    if (a8 >> 62)
    {
      v109 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v109 = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a8, v102, v103, v104, v105, v106, v107, v108;
    *(v40 + 44) = v109;
    a8, v110, v111, v112, v113, v114, v115, v116;
    *(v40 + 52) = 2048;
    a9 = v501;
    v117 = *v501->clientIdentity;
    v501, v118, v119, v120, v121, v122, v123, v124;
    *(v40 + 54) = v117;
    a9, v125, v126, v127, v128, v129, v130, v131;
    *(v40 + 62) = 2048;
    if ((v506 & 0xC000000000000001) != 0)
    {
      v139 = __CocoaDictionary.count.getter();
    }

    else
    {
      v139 = *(v506 + 16);
    }

    v140 = v503;
    v141 = v506;
    v506, v132, v133, v134, v135, v136, v137, v138;
    *(v40 + 64) = v139;
    v141, v142, v143, v144, v145, v146, v147, v148;
    v149 = v492;
    _os_log_impl(&_mh_execute_header, &v492->super, v504, "(daemon) SAVE START {author: %{public}s, accountStorage.count: %ld, listStorage.count: %ld, smartListStorages.count: %ld, reminderStorage.count: %ld, changedKeys.count: %ld, replicaManagers.count: %ld", v40, 0x48u);
    sub_10000607C(v41);

    a3 = v500;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v140 = a2;
    v78 = v36;
  }

  LODWORD(v491) = a15;
  LODWORD(v492) = a14;
  v150 = swift_allocObject();
  v504 = v150;
  *(v150 + 16) = &_swiftEmptyArrayStorage;
  v151 = (v150 + 16);
  v152 = *&v78->clientIdentity[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity];
  v512[2] = *(&v78->super.isa + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v513[0] = v152;
  v488 = (v78 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  *(v513 + 14) = *&v78->clientIdentity[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 14];
  v153 = sub_100008E70();
  v481 = v151;
  if (v154)
  {
    v155 = v154;
    sub_100577750(v506, v153, v154);
    v157 = v156;
    v506 = 0;
    v155, v158, v159, v160, v161, v162, v163, v164;
    v165 = *v151;
    *v151 = v157;
    v165, v166, v167, v168, v169, v170, v171, v172;
    v173 = v507;
LABEL_25:
    v175 = v494;
    goto LABEL_26;
  }

  if ((v506 & 0xC000000000000001) != 0)
  {
    v174 = __CocoaDictionary.count.getter();
  }

  else
  {
    v174 = *(v506 + 16);
  }

  v173 = v507;
  v175 = v494;
  if (v174)
  {
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      *v178 = 0;
      _os_log_impl(&_mh_execute_header, v176, v177, "Will not save replica managers. Bundle ID is missing", v178, 2u);
      v173 = v507;
    }

    v506 = 0;
    goto LABEL_25;
  }

  v506 = 0;
LABEL_26:
  v179 = swift_allocObject();
  v180 = v495;
  *(v179 + 16) = v78;
  *(v179 + 24) = v180;
  *(v179 + 32) = v173;
  *(v179 + 40) = v140;
  *(v179 + 48) = a3;
  a2 = v496;
  v181 = v497;
  *(v179 + 56) = v502;
  *(v179 + 64) = v181;
  *(v179 + 72) = v175;
  *(v179 + 80) = a2;
  *(v179 + 88) = v498;
  *(v179 + 96) = a9;
  v183 = v504;
  v182 = v505;
  v184 = v493;
  *(v179 + 104) = v504;
  *(v179 + 112) = v184;
  *(v179 + 120) = v499;
  v185 = v491 & 1;
  *(v179 + 128) = v185;
  *(v179 + 136) = sub_10003FE60;
  *(v179 + 144) = v182;
  if (v492)
  {
    LODWORD(v487) = v185;
    v491 = v78;
    v492 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    _Block_copy(v490);

    a4 = v507;

    a1 = v503;

    v186 = v491;

    v187 = static OS_dispatch_queue.main.getter();
    v188 = *(&v186->super.isa + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
    type metadata accessor for RDDatabaseSaver();
    inited = swift_initStackObject();
    inited[2] = v187;
    inited[3] = v188;
    v190 = v495;
    inited[4] = v495;
    swift_beginAccess();
    v191 = *(v183 + 16);
    v192 = *(v488 + 30);
    v193 = v488[1];
    v509 = *v488;
    v510[0] = v193;
    *(v510 + 14) = v192;
    v474 = v179;
    v485 = v186;
    v491 = v188;
    v492 = v191;
    if (v190 == 3)
    {
      v486 = inited;
      a3 = a4 & 0xFFFFFFFFFFFFFF8;
      if (a4 >> 62)
      {
        a16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a16 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v194 = a4 & 0xC000000000000001;
      v195 = v491;

      a9 = 0;
      a8 = &selRef_hack_willSaveHandled;
      do
      {
        if (a16 == a9)
        {
          inited = v486;
          goto LABEL_48;
        }

        if (v194)
        {
          v196 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a9 >= *(a3 + 16))
          {
            goto LABEL_94;
          }

          v196 = *(a4 + 8 * a9 + 32);
        }

        a2 = v196;
        if (__OFADD__(a9, 1))
        {
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v197 = [(RDXPCStorePerformer *)v196 accountTypeHost];
        a1 = [v197 isCloudKit];

        a4 = v507;
        ++a9;
      }

      while (!a1);
      v492, v198, v199, v200, v201, v202, v203, v204;
      if (qword_100936850 != -1)
      {
        swift_once();
      }

      sub_100006654(v475, qword_100951B60);
      v230 = v499;

      sub_100009DAC(&v509, &v511);
      v231 = Logger.logObject.getter();
      v232 = static os_log_type_t.fault.getter();
      v230, v233, v234, v235, v236, v237, v238, v239;
      sub_1005812D4(&v509);
      if (os_log_type_enabled(v231, v232))
      {
        v240 = swift_slowAlloc();
        *&v511 = swift_slowAlloc();
        *v240 = 136446466;
        if (v230)
        {
          v241 = v493;
        }

        else
        {
          v241 = 7104878;
        }

        if (v230)
        {
          v242 = v230;
        }

        else
        {
          v242 = 0xE300000000000000;
        }

        v243 = sub_10000668C(v241, v242, &v511);
        v242, v244, v245, v246, v247, v248, v249, v250;
        *(v240 + 4) = v243;
        *(v240 + 12) = 2082;
        v251 = sub_1000063E8();
        v253 = v252;
        v254 = sub_10000668C(v251, v252, &v511);
        v253, v255, v256, v257, v258, v259, v260, v261;
        *(v240 + 14) = v254;
        _os_log_impl(&_mh_execute_header, v231, v232, "RDDatabaseSaver: Unexpected use of REMStoreModeEventKitSync to edit/insert/remove CloudKit account(s) {author: %{public}s, clientIdentity: %{public}s}", v240, 0x16u);
        swift_arrayDestroy();
      }

      v262 = objc_opt_self();
      v263 = String._bridgeToObjectiveC()();
      v264 = [v262 internalErrorWithDebugDescription:v263];

      swift_willThrow();
      v217 = v264;
    }

    else
    {
      v211 = v188;

LABEL_48:
      v217 = v506;
      sub_100756CF8(v501, a4);
      v220 = v500;
      if (!v217)
      {
        v228 = v218;
        v229 = v219;
        sub_100758FE0(v218);
        __chkstk_darwin(v265, v266);
        v267 = v492;
        *(&v474 - 18) = v492;
        *(&v474 - 17) = inited;
        *(&v474 - 16) = v501;
        *(&v474 - 15) = &v509;
        *(&v474 - 112) = v487;
        *(&v474 - 13) = v268;
        *(&v474 - 12) = a4;
        v269 = v497;
        v270 = v493;
        *(&v474 - 11) = v498;
        *(&v474 - 10) = v270;
        v271 = v502;
        *(&v474 - 9) = v499;
        *(&v474 - 8) = v271;
        *(&v474 - 7) = v494;
        *(&v474 - 6) = v220;
        v272 = v496;
        *(&v474 - 5) = v269;
        *(&v474 - 4) = v272;
        *(&v474 - 3) = v229;
        *(&v474 - 2) = v228;
        sub_100014A64(&v509, sub_1005812BC, (&v474 - 20));
        v486 = inited;
        v228, v273, v274, v275, v276, v277, v278, v279;
        v229, v342, v343, v344, v345, v346, v347, v348;
        v267, v349, v350, v351, v352, v353, v354, v355;
        v356 = v485;
        sub_10000F61C((&v485->super.isa + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_coreSuggestionsHandler), *&v485->clientIdentity[OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_coreSuggestionsHandler + 8]);
        sub_1003E57EC(v498);
        v357 = v507;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v358 = v504;
        swift_retain_n();
        v359 = v356;
        v360 = Logger.logObject.getter();
        v361 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v360, v361))
        {
          v362 = v358;
          v363 = swift_slowAlloc();
          v506 = swift_slowAlloc();
          v508[0] = v506;
          *v363 = 136448002;
          v511 = *v488;
          v512[0] = v488[1];
          *(v512 + 14) = *(v488 + 30);
          v364 = sub_1000063E8();
          v366 = v365;
          v367 = sub_10000668C(v364, v365, v508);
          v366, v368, v369, v370, v371, v372, v373, v374;
          *(v363 + 4) = v367;
          *(v363 + 12) = 2048;
          if (v357 >> 62)
          {
            v382 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v382 = *((v357 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v357, v375, v376, v377, v378, v379, v380, v381;
          *(v363 + 14) = v382;
          v357, v383, v384, v385, v386, v387, v388, v389;
          *(v363 + 22) = 2048;
          v397 = v503;
          v398 = v500;
          if (v503 >> 62)
          {
            v399 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v399 = *((v503 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v400 = v497;
          v397, v390, v391, v392, v393, v394, v395, v396;
          *(v363 + 24) = v399;
          v397, v401, v402, v403, v404, v405, v406, v407;
          *(v363 + 32) = 2048;
          if (v398 >> 62)
          {
            v415 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v415 = *((v398 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v398, v408, v409, v410, v411, v412, v413, v414;
          *(v363 + 34) = v415;
          v398, v416, v417, v418, v419, v420, v421, v422;
          *(v363 + 42) = 2048;
          v430 = v502;
          if (v502 >> 62)
          {
            v431 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v431 = *((v502 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v430, v423, v424, v425, v426, v427, v428, v429;
          *(v363 + 44) = v431;
          v430, v432, v433, v434, v435, v436, v437, v438;
          *(v363 + 52) = 2048;
          if (v400 >> 62)
          {
            v446 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v446 = *((v400 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v447 = v506;
          v400, v439, v440, v441, v442, v443, v444, v445;
          *(v363 + 54) = v446;
          v400, v448, v449, v450, v451, v452, v453, v454;
          *(v363 + 62) = 2048;
          v462 = v498;
          if (v498 >> 62)
          {
            v463 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v463 = *((v498 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v462, v455, v456, v457, v458, v459, v460, v461;
          *(v363 + 64) = v463;
          v462, v464, v465, v466, v467, v468, v469, v470;
          *(v363 + 72) = 2048;
          v471 = *(*(v362 + 16) + 16);

          *(v363 + 74) = v471;

          _os_log_impl(&_mh_execute_header, v360, v361, "(daemon) SAVE END {author: %{public}s, accountStorages.count: %ld, listStorages.count: %ld, listSectionStorages.count: %ld, smartListStorages.count: %ld, smartListSectionStorages.count: %ld, reminderStorages.count: %ld, replicaManagers.count: %ld}", v363, 0x52u);
          sub_10000607C(v447);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v472 = v490;
        (*(v490 + 2))(v490, 0);
        v473 = v486;
        swift_setDeallocating();

        _Block_release(v472);
        goto LABEL_75;
      }

      v492, v221, v222, v223, v224, v225, v226, v227;
    }

    *&v511 = v217;
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    sub_1000060C8(0, &qword_100939E60, NSError_ptr);
    swift_dynamicCast();
    v280 = v508[0];
    v281 = [v508[0] domain];
    v282 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v284 = v283;

    v285 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v293 = v286;
    if (v282 == v285 && v284 == v286)
    {
      v284, v286, v287, v288, v289, v290, v291, v292;
      v293, v322, v323, v324, v325, v326, v327, v328;
    }

    else
    {
      v295 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v284, v296, v297, v298, v299, v300, v301, v302;
      v293, v303, v304, v305, v306, v307, v308, v309;
      if ((v295 & 1) == 0)
      {
        v310 = objc_opt_self();
        v311 = v280;
        v312 = _convertErrorToNSError(_:)();

        v313 = [v310 saveErrorWithCoreDataError:v312];
        v314 = v313;
        v315 = v311;
        v316 = v314;
        v317 = Logger.logObject.getter();
        v318 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v317, v318))
        {
          v319 = swift_slowAlloc();
          v320 = swift_slowAlloc();
          *v319 = 138412546;
          *(v319 + 4) = v315;
          *(v319 + 12) = 2112;
          *(v319 + 14) = v316;
          *v320 = v315;
          v320[1] = v316;
          v321 = v315;
          v316 = v316;
          _os_log_impl(&_mh_execute_header, v317, v318, "Converted saveError to remError {saveError: %@, remError: %@}", v319, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();
        }

        goto LABEL_72;
      }
    }

    v329 = objc_opt_self();
    v330 = v280;
    v331 = _convertErrorToNSError(_:)();

    v332 = [v329 errorSanitizedForXPCFromError:v331];
    v316 = v332;
LABEL_72:
    v333 = v280;
    v334 = Logger.logObject.getter();
    v335 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v334, v335))
    {
      v336 = swift_slowAlloc();
      v337 = swift_slowAlloc();
      *v336 = 138412290;
      *(v336 + 4) = v333;
      *v337 = v333;
      v338 = v333;
      _os_log_impl(&_mh_execute_header, v334, v335, "(daemon) SAVE FAIL {saveError: %@}", v336, 0xCu);
      sub_1000050A4(v337, &unk_100938E70, &unk_100797230);
    }

    v339 = _convertErrorToNSError(_:)();
    v340 = v490;
    (*(v490 + 2))(v490, v339);

    _Block_release(v340);
LABEL_75:
  }

  if (v180 == 4499)
  {
    v506 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);

    v205 = v78;

    v206 = v482;
    static DispatchQoS.unspecified.getter();
    *&v509 = &_swiftEmptyArrayStorage;
    sub_100580558(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
    sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v479 + 104))(v478, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v480);
    v207 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *&v510[1] = sub_10058126C;
    *(&v510[1] + 1) = v179;
    *&v509 = _NSConcreteStackBlock;
    *(&v509 + 1) = 1107296256;
    *&v510[0] = sub_100019200;
    *(&v510[0] + 1) = &unk_1008F7B00;
    v208 = _Block_copy(&v509);

    static DispatchQoS.unspecified.getter();
    *&v511 = &_swiftEmptyArrayStorage;
    sub_100580558(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    v209 = v485;
    v210 = v487;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v208);

    (v486[1])(v209, v210);
  }

  else
  {
    v212 = qword_100935D28;

    v213 = v78;

    if (v212 != -1)
    {
      swift_once();
    }

    *&v510[1] = sub_10058126C;
    *(&v510[1] + 1) = v179;
    *&v509 = _NSConcreteStackBlock;
    *(&v509 + 1) = 1107296256;
    *&v510[0] = sub_100019200;
    *(&v510[0] + 1) = &unk_1008F7AD8;
    v214 = _Block_copy(&v509);

    v206 = v482;
    static DispatchQoS.unspecified.getter();
    *&v511 = &_swiftEmptyArrayStorage;
    sub_100580558(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    v215 = v485;
    v216 = v487;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v214);

    (v486[1])(v215, v216);
  }

  (*(v483 + 8))(v206, v484);
}

void sub_10057A7D0(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a3);
  v8 = [v7 cloudContext];
  if (v8)
  {
    v10 = v8;
    v11 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
    v34 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
    v35[0] = v11;
    *(v35 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
    __chkstk_darwin(v8, v9);
    v32[2] = a1;
    v32[3] = v12;
    v32[4] = sub_10000A878;
    v32[5] = v6;
    sub_100014A64(&v34, sub_100581240, v32);
  }

  else
  {
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    [v13 internalErrorWithDebugDescription:v14];

    swift_willThrow();
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094C8A8);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = v21;
      v23 = sub_10000668C(v20, v21, &v33);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to fetch share object. {error: %s}", v18, 0xCu);
      sub_10000607C(v19);
    }

    swift_errorRetain();
    v31 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v31);
  }
}

void sub_10057AAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v11 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a5);
  v12 = [v11 cloudContext];
  if (v12)
  {
    v14 = v12;
    v15 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
    v38 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
    v39[0] = v15;
    *(v39 + 14) = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
    __chkstk_darwin(v12, v13);
    v36[2] = a1;
    v36[3] = v16;
    v36[4] = a2;
    v36[5] = a3;
    v36[6] = a4;
    v36[7] = sub_10000A878;
    v36[8] = v10;
    sub_100014A64(&v38, sub_1005811BC, v36);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = String._bridgeToObjectiveC()();
    [v17 internalErrorWithDebugDescription:v18];

    swift_willThrow();
    if (qword_100936550 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_10094C8A8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = v25;
      v27 = sub_10000668C(v24, v25, &v37);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create share. {error: %s}", v22, 0xCu);
      sub_10000607C(v23);
    }

    swift_errorRetain();
    v35 = _convertErrorToNSError(_:)();
    (a5)[2](a5, 0, v35);
  }
}

void sub_10057AE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  v9 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a5);
  v10 = [v9 cloudContext];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(ICCollaborationController) initWithCloudContext:v10];
    v13 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_10003FE60;
    *(v15 + 24) = v8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_10018ADFC;
    *(v16 + 24) = v15;
    aBlock[4] = sub_10018ADFC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10056A480;
    aBlock[3] = &unk_1008F7948;
    v17 = _Block_copy(aBlock);

    [v12 didSaveShare:a1 accountID:v13 queue:v14 completionHandler:v17];
    _Block_release(v17);
  }

  else
  {
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 internalErrorWithDebugDescription:v19];

    v21 = _convertErrorToNSError(_:)();
    (a5)[2](a5, v21);
  }
}

void sub_10057B0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  v9 = *(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a5);
  v10 = [v9 cloudContext];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(ICCollaborationController) initWithCloudContext:v10];
    v13 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_10003FE60;
    *(v15 + 24) = v8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_10018ADFC;
    *(v16 + 24) = v15;
    aBlock[4] = sub_100189954;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10056A480;
    aBlock[3] = &unk_1008F78A8;
    v17 = _Block_copy(aBlock);

    [v12 didStopSharing:a1 accountID:v13 queue:v14 completionHandler:v17];
    _Block_release(v17);
  }

  else
  {
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 internalErrorWithDebugDescription:v19];

    v21 = _convertErrorToNSError(_:)();
    (a5)[2](a5, v21);
  }
}

void sub_10057B370(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_sharingObserverForAccountID;
  swift_beginAccess();
  v9 = *(a3 + v8);
  if (*(v9 + 16))
  {

    sub_100005F4C(a1, a2);
    v11 = v10;
    v9, v10, v12, v13, v14, v15, v16, v17;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  v18 = [*(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) cloudContext];
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = v18;
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 containerForAccountID:v20];

  if (!v21)
  {

LABEL_11:
    (*(a4 + 16))(a4, 0);
    return;
  }

  v52 = v19;
  v22 = [objc_allocWithZone(CKSystemSharingUIObserver) initWithContainer:v21];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = a1;
  v24[4] = a2;

  sub_10003E124(sub_100581180, v24);
  CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.setter();

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = a1;
  v26[4] = a2;

  sub_10003E124(sub_100581190, v26);
  CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.setter();

  swift_beginAccess();

  v27 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *(a3 + v8);
  *(a3 + v8) = 0x8000000000000000;
  sub_1002CAC6C(v27, a1, a2, isUniquelyReferenced_nonNull_native);
  a2, v29, v30, v31, v32, v33, v34, v35;
  *(a3 + v8) = v53;
  swift_endAccess();
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100006654(v36, qword_10094C8A8);

  v37 = v21;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  a2, v40, v41, v42, v43, v44, v45, v46;

  if (os_log_type_enabled(v38, v39))
  {
    v47 = swift_slowAlloc();
    v48 = v27;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v54[0] = v50;
    *v47 = 138412546;
    v51 = [v37 containerID];
    *(v47 + 4) = v51;
    *v49 = v51;
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_10000668C(a1, a2, v54);
    _os_log_impl(&_mh_execute_header, v38, v39, "CKSystemSharingUIObserver: Added observer for container: {containerID: %@, accountID: %s}", v47, 0x16u);
    sub_1000050A4(v49, &unk_100938E70, &unk_100797230);
    v27 = v48;

    sub_10000607C(v50);
  }

  (*(a4 + 16))(a4, 0);
}

void sub_10057B7E0(void *a1, uint64_t a2, void (**a3)(void, void, void, void))
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v17 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a3);
  v18 = [v17 cloudContext];
  if (v18)
  {
    v19 = v18;
    v32 = v12;
    v33 = v11;
    v34 = v7;
    v35 = v6;
    v20 = [objc_allocWithZone(ICCollaborationController) initWithCloudContext:v18];
    if (qword_100936568 != -1)
    {
      swift_once();
    }

    v21 = qword_10094C8F0;
    v22 = swift_allocObject();
    v22[2] = v20;
    v22[3] = a1;
    v22[4] = sub_100581108;
    v22[5] = v16;
    aBlock[4] = sub_100581110;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F76C8;
    v23 = _Block_copy(aBlock);
    v24 = v21;
    v31 = v20;
    v25 = a1;

    static DispatchQoS.unspecified.getter();
    v36 = &_swiftEmptyArrayStorage;
    sub_100580558(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    v26 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v34 + 8))(v10, v26);
    (*(v32 + 8))(v15, v33);
  }

  else
  {
    v27 = objc_opt_self();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 internalErrorWithDebugDescription:v28];

    v35 = _convertErrorToNSError(_:)();
    a3[2](a3, 0, 0, v35);

    v30 = v35;
  }
}

uint64_t sub_10057BC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (**a6)(void, void))
{
  v25 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v15 = *(v26 - 8);
  __chkstk_darwin(v26, v16);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  _Block_copy(a6);
  if (qword_100936870 != -1)
  {
    swift_once();
  }

  if (byte_1009753A9 == 1)
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v24[1] = qword_100974CB0;
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = v25;
    v20[5] = a4;
    v20[6] = sub_10003FE60;
    v20[7] = v19;
    v20[8] = a5;
    aBlock[4] = sub_1005810D4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F7650;
    v21 = _Block_copy(aBlock);

    v22 = a5;
    static DispatchQoS.unspecified.getter();
    v28 = &_swiftEmptyArrayStorage;
    sub_100580558(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v27 + 8))(v14, v11);
    (*(v15 + 8))(v18, v26);
  }

  else
  {
    a6[2](a6, 0);
  }
}

uint64_t sub_10057C070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (**a6)(void, void))
{
  v25 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v15 = *(v26 - 8);
  __chkstk_darwin(v26, v16);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  _Block_copy(a6);
  if (qword_100936870 != -1)
  {
    swift_once();
  }

  if (byte_1009753A9 == 1)
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v24[1] = qword_100974CB0;
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = v25;
    v20[5] = a4;
    v20[6] = sub_10003FE60;
    v20[7] = v19;
    v20[8] = a5;
    aBlock[4] = sub_10058107C;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F75D8;
    v21 = _Block_copy(aBlock);

    v22 = a5;
    static DispatchQoS.unspecified.getter();
    v28 = &_swiftEmptyArrayStorage;
    sub_100580558(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v27 + 8))(v14, v11);
    (*(v15 + 8))(v18, v26);
  }

  else
  {
    a6[2](a6, 0);
  }
}

uint64_t sub_10057C478(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v11[0] = v7;
  *(v11 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v9[2] = a1;
  v9[3] = sub_10000A878;
  v9[4] = v6;
  _Block_copy(a3);
  sub_100014A64(&v10, sub_10058105C, v9);
}

void sub_10057C58C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a4);
  if ([v9 supportsTemplateOperation])
  {
    sub_100010364(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_publicCloudDatabaseController, &v22, &qword_100945EF8, &qword_1007B1F70);
    if (*&v23[8])
    {
      v10 = sub_100054B6C(&v22, v21);
      v11 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
      v22 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
      *v23 = v11;
      *&v23[14] = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
      __chkstk_darwin(v10, v12);
      v19[2] = sub_10000A878;
      v19[3] = v8;
      v19[4] = a1;
      v19[5] = a2;
      v19[6] = v21;
      sub_100014A64(&v22, sub_100581038, v19);
      sub_10000607C(v21);
    }

    else
    {
      sub_1000050A4(&v22, &qword_100945EF8, &qword_1007B1F70);
      v14 = objc_opt_self();
      type metadata accessor for RDXPCStorePerformer();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = String._bridgeToObjectiveC()();
      v17 = [v14 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v16];

      v18 = _convertErrorToNSError(_:)();
      (a4)[2](a4, 0, v18);
    }
  }

  else
  {
    v13 = [objc_opt_self() notSupportedError];
    v20 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v20);
  }
}

uint64_t sub_10057C864(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v12 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v13[0] = v9;
  *(v13 + 14) = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v11[2] = sub_10000A878;
  v11[3] = v8;
  v11[4] = a1;
  v11[5] = a2;
  _Block_copy(a4);
  sub_100014A64(&v12, sub_100581018, v11);
}

void sub_10057C97C(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a3);
  if ([v7 supportsTemplateOperation])
  {
    sub_100010364(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_publicCloudDatabaseController, &v20, &qword_100945EF8, &qword_1007B1F70);
    if (*&v21[8])
    {
      v8 = sub_100054B6C(&v20, v19);
      v9 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
      v20 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
      *v21 = v9;
      *&v21[14] = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
      __chkstk_darwin(v8, v10);
      v17[2] = sub_10000A878;
      v17[3] = v6;
      v17[4] = a1;
      v17[5] = v19;
      sub_100014A64(&v20, sub_100580FF8, v17);
      sub_10000607C(v19);
    }

    else
    {
      sub_1000050A4(&v20, &qword_100945EF8, &qword_1007B1F70);
      v12 = objc_opt_self();
      type metadata accessor for RDXPCStorePerformer();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = String._bridgeToObjectiveC()();
      v15 = [v12 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v14];

      v16 = _convertErrorToNSError(_:)();
      (a3)[2](a3, 0, v16);
    }
  }

  else
  {
    v11 = [objc_opt_self() notSupportedError];
    v18 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v18);
  }
}

void sub_10057CC4C(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController);
  _Block_copy(a3);
  if ([v7 supportsTemplateOperation])
  {
    sub_100010364(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_publicCloudDatabaseController, &v20, &qword_100945EF8, &qword_1007B1F70);
    if (*&v21[8])
    {
      v8 = sub_100054B6C(&v20, v19);
      v9 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
      v20 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
      *v21 = v9;
      *&v21[14] = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
      __chkstk_darwin(v8, v10);
      v17[2] = sub_10000C928;
      v17[3] = v6;
      v17[4] = a1;
      v17[5] = v19;
      sub_100014A64(&v20, sub_100580FD8, v17);
      sub_10000607C(v19);
    }

    else
    {
      sub_1000050A4(&v20, &qword_100945EF8, &qword_1007B1F70);
      v12 = objc_opt_self();
      type metadata accessor for RDXPCStorePerformer();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = String._bridgeToObjectiveC()();
      v15 = [v12 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v14];

      v16 = _convertErrorToNSError(_:)();
      (a3)[2](a3, 0, v16);
    }
  }

  else
  {
    v11 = [objc_opt_self() notSupportedError];
    v18 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v18);
  }
}

uint64_t sub_10057CF1C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v8[0] = v4;
  *(v8 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v6[16] = a1;
  sub_100014A64(&v7, sub_100580FA4, v6);
  return (*(a3 + 16))(a3, 0);
}

uint64_t sub_10057D134(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v18 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44);
  if (v13 >> 14 >= 2)
  {
    if (v13 >> 14 == 2)
    {
      v14 = *(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 40) | (*(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44) << 32);
    }

    else
    {
      v14 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v14 = 2147483519;
  }

  _Block_copy(a4);
  sub_100009A40(1, v14);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = sub_100580EC8;
  v16[7] = v12;

  sub_1001955C4(0, 0, v11, &unk_1007B1E20, v16);
}

void sub_10057D364(uint64_t a1, void *a2, void *a3, void *a4, int a5, uint64_t a6, void (**a7)(void, void, void))
{
  v14 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v32 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  if (a2[2])
  {
    LODWORD(v32) = a5;
    v19 = a2[4];
    v20 = a2[5];
    v21 = *(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 40);
    v22 = *(a6 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44) >> 14;
    if (v22 != 2)
    {
      v21 = 0x7FFFFFFF;
    }

    if (v22 >= 2)
    {
      v23 = v21;
    }

    else
    {
      v23 = 2147483519;
    }

    _Block_copy(a7);

    sub_100009A40(1, v23);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = a2;
    *(v29 + 40) = v19;
    *(v29 + 48) = v20;
    *(v29 + 56) = sub_10000A878;
    *(v29 + 64) = v18;
    *(v29 + 72) = a1;
    *(v29 + 80) = a4;
    *(v29 + 88) = a3;
    *(v29 + 96) = v32 & 1;
    v30 = a3;

    v31 = a4;
    sub_1001955C4(0, 0, v17, &unk_1007B1DE8, v29);
  }

  else
  {
    v24 = objc_opt_self();
    _Block_copy(a7);
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 invalidParameterErrorWithDescription:v25];

    v32 = _convertErrorToNSError(_:)();
    a7[2](a7, 0, v32);

    v27 = v32;
  }
}

void sub_10057D6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v4 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v11[0] = v4;
  *(v11 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v7 = a1;
  v8 = &v9;
  sub_100014A64(&v10, sub_100580CAC, v6);
  v5 = v9;
  (*(a3 + 16))(a3, v9, 0);
}

uint64_t sub_10057D960(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v11[0] = v7;
  *(v11 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = sub_100581570;
  v9[5] = v6;
  _Block_copy(a3);
  sub_100014A64(&v10, sub_100580BB8, v9);
}

uint64_t sub_10057DB94(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 16);
  v10 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity);
  v11[0] = v7;
  *(v11 + 14) = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 30);
  v9[2] = sub_100580B74;
  v9[3] = v6;
  v9[4] = a1;
  _Block_copy(a3);
  sub_100014A64(&v10, sub_100580B7C, v9);
}

uint64_t sub_10057DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v12 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v22 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  v17 = *(a5 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44);
  if (v17 >> 14 >= 2)
  {
    if (v17 >> 14 == 2)
    {
      v18 = *(a5 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 40) | (*(a5 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44) << 32);
    }

    else
    {
      v18 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v18 = 2147483519;
  }

  _Block_copy(a6);
  sub_100009A40(1, v18);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = sub_100580A80;
  v20[9] = v16;

  sub_1001955C4(0, 0, v15, &unk_1007B1D48, v20);
}

uint64_t sub_10057E0AC(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_10057E0D0, 0, 0);
}

void sub_10057E0D0()
{
  if (qword_100936550 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094C8A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchIntelligentFeaturesMinimumSupportedVersion: Calling ICCloudConfiguration to check minimum supported version", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = [objc_opt_self() sharedConfiguration];
  if (!v5)
  {
    v7 = &selRef_autoCategorizationInternalInstallMinimumSupportedVersion;
    v8 = &selRef_autoCategorizationNonInternalInstallMinimumSupportedVersion;
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    v7 = &selRef_intelligentExtractionsInternalInstallMinimumSupportedVersion;
    v8 = &selRef_intelligentExtractionsNonInternalInstallMinimumSupportedVersion;
LABEL_9:
    if (!*(v0 + 24))
    {
      v7 = v8;
    }

    v9 = v6;
    v10 = [v6 *v7];

    v11 = *(v0 + 8);

    v11(v10);
    return;
  }

  v12 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  v13 = sub_1001F67C8(&_swiftEmptyArrayStorage);

  sub_10054573C("Unknown feature type", 20, 2, v12, v13);
}

uint64_t sub_10057E2BC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 44) >> 14;
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v6 = *(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_clientIdentity + 40);
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v6 = 2147483519;
  }

  v7 = 0;
  result = sub_100009A40(1024, v6);
  v83 = a3;
  if (a1 >> 62)
  {
    goto LABEL_38;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_39:
    sub_1005664B4(&_swiftEmptyArrayStorage);
    &_swiftEmptyArrayStorage, v76, v77, v78, v79, v80, v81, v82;
    return (*(v83 + 16))(v83, 0);
  }

LABEL_8:
  v86 = v7;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = a1 & 0xC000000000000001;
    v12 = &qword_100936000;
    v84 = a1;
    v85 = a1 & 0xC000000000000001;
    do
    {
      if (v11)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(a1 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = v9;
      if (v12[170] != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006654(v16, qword_10094C8A8);
      v17 = v14;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v89[0] = swift_slowAlloc();
        *v20 = 136315650;
        v87 = [v17 personHandle];
        sub_1000F5104(&qword_10094C990, &qword_1007B1CD0);
        v21 = Optional.descriptionOrNil.getter();
        v23 = v22;

        v24 = sub_10000668C(v21, v23, v89);
        v23, v25, v26, v27, v28, v29, v30, v31;
        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        v32 = [v17 aliases];
        if (v32)
        {
          v33 = v32;
          sub_1000060C8(0, &qword_10094C9A0, INPersonHandle_ptr);
          v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v34 = 0;
        }

        sub_1000F5104(&qword_10094C998, &qword_1007B1CD8);
        v35 = Optional.descriptionOrNil.getter();
        v37 = v36;
        v34, v36, v38, v39, v40, v41, v42, v43;
        v44 = sub_10000668C(v35, v37, v89);
        v37, v45, v46, v47, v48, v49, v50, v51;
        *(v20 + 14) = v44;
        *(v20 + 22) = 2080;
        v52 = [v17 contactIdentifier];
        if (v52)
        {
          v53 = v52;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;
        }

        else
        {
          v55 = 0;
        }

        sub_1000F5104(&unk_100939E40, &qword_100791BD0);
        v56 = Optional.descriptionOrNil.getter();
        v58 = v57;
        v55, v57, v59, v60, v61, v62, v63, v64;
        v65 = sub_10000668C(v56, v58, v89);
        v58, v66, v67, v68, v69, v70, v71, v72;
        *(v20 + 24) = v65;
        _os_log_impl(&_mh_execute_header, v18, v19, "notifyOfInteraction: {personHandle: %s, aliases: %s, contactIdentifier: %s}", v20, 0x20u);
        swift_arrayDestroy();

        a1 = v84;
        v12 = &qword_100936000;
      }

      else
      {
      }

      ++v10;
      v9 = v15;
      v11 = v85;
    }

    while (v15 != v10);
    v73 = 0;
    while (1)
    {
      if (v85)
      {
        v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v86;
        v75 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v7 = v86;
        if (v73 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v74 = *(a1 + 8 * v73 + 32);
        v75 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          result = _CocoaArrayWrapper.endIndex.getter();
          v9 = result;
          if (!result)
          {
            goto LABEL_39;
          }

          goto LABEL_8;
        }
      }

      v89[0] = v74;
      sub_100571B6C(v89, &v88);
      v86 = v7;

      if (v88)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v73;
      if (v75 == v9)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_10057E844()
{
  v0 = [objc_opt_self() sharedManager];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 currentPersona];

    if (v2)
    {
      v3 = [v2 generateAndRestorePersonaContextWithPersonaUniqueString:0];

      if (v3)
      {
        if (qword_100936550 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_100006654(v4, qword_10094C8A8);
        v5 = v3;
        oslog = Logger.logObject.getter();
        v6 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(oslog, v6))
        {
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v22 = v8;
          *v7 = 136446210;
          v9 = v5;
          sub_1000F5104(&unk_1009399E0, &qword_100795D00);
          v10 = String.init<A>(describing:)();
          v12 = v11;
          v13 = sub_10000668C(v10, v11, &v22);
          v12, v14, v15, v16, v17, v18, v19, v20;
          *(v7 + 4) = v13;
          _os_log_impl(&_mh_execute_header, oslog, v6, "Failed to drop persona for account utils calls {error: %{public}s}", v7, 0xCu);
          sub_10000607C(v8);
        }

        else
        {
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10057EA5C(char a1, uint64_t a2, void (**a3)(void, void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  sub_10057E844();
  if ([*(a2 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) accountUtils])
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    sub_1006B3F80(a1 & 1, qword_100974CB0, sub_10058156C, v6);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 internalErrorWithDebugDescription:v8];

    v10 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, 0, v10);
  }
}

void sub_10057EC0C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, char a3, uint64_t a4, void (**a5)(void, void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  _Block_copy(a5);
  sub_10057E844();
  if ([*(a4 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) accountUtils])
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v11 = qword_100974CB0;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100580680;
    *(v12 + 24) = v10;

    sub_1006B370C(a1, a2, a3 & 1, v11, sub_100580688, v12);
  }

  else
  {
    v13 = objc_opt_self();
    _StringGuts.grow(_:)(60);
    v14._object = 0x80000001007FC890;
    v14._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v14);
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 125;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v17 = String._bridgeToObjectiveC()();
    0xE000000000000000, v18, v19, v20, v21, v22, v23, v24;
    v25 = [v13 internalErrorWithDebugDescription:v17];

    v26 = _convertErrorToNSError(_:)();
    (a5)[2](a5, 0, 0, v26);
  }
}

void sub_10057EE78(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  sub_10057E844();
  if ([*(a1 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) accountUtils])
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v5 = qword_100974CB0;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100580650;
    *(v6 + 24) = v4;

    sub_1006B44B4(v5, sub_100580658, v6);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 internalErrorWithDebugDescription:v8];

    v10 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v10);
  }
}

void sub_10057F05C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  sub_10057E844();
  if ([*(a3 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) accountUtils])
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v9 = qword_100974CB0;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10003FE60;
    *(v10 + 24) = v8;

    sub_1006B4720(a1, a2, v9, sub_100189954, v10);
  }

  else
  {
    v11 = objc_opt_self();
    _StringGuts.grow(_:)(108);
    v12._object = 0x80000001007FC7E0;
    v12._countAndFlagsBits = 0xD000000000000069;
    String.append(_:)(v12);
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 125;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = String._bridgeToObjectiveC()();
    0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;
    v23 = [v11 internalErrorWithDebugDescription:v15];

    v24 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v24);
  }
}

void sub_10057F2A8(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  sub_10057E844();
  if ([*(a1 + OBJC_IVAR____TtC7remindd19RDXPCStorePerformer_storeController) accountUtils])
  {
    if (qword_100935D18 != -1)
    {
      swift_once();
    }

    v5 = qword_100974CB0;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10003FE60;
    *(v6 + 24) = v4;

    sub_1006B5338(v5, sub_10018ADFC, v6);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 internalErrorWithDebugDescription:v8];

    v10 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v10);
  }
}

void sub_10057F488(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedConfiguration];
  v5 = [objc_opt_self() daemonUserDefaults];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v15[0] = sub_100580640;
  v15[1] = v6;
  v15[2] = sub_100580640;
  v15[3] = v7;
  v15[4] = sub_100580648;
  v15[5] = v8;
  v15[6] = sub_100580648;
  v15[7] = v9;
  v10 = qword_100935D18;
  v11 = v4;
  v12 = v5;

  if (v10 != -1)
  {
    swift_once();
  }

  v13 = qword_100974CB0;
  objc_allocWithZone(type metadata accessor for RDXPCSuggestedAttributesPerformer(0));
  v14 = sub_100246808(a1, v15, v13);
  (*(a2 + 16))(a2, v14, 0);
}

uint64_t sub_10057F6B8(uint64_t a1)
{
  v2 = [objc_opt_self() sharedConfiguration];
  v3 = [v2 suggestedAttributesHarvestingOverrides];

  if (!v3)
  {
    v20 = 0u;
    v21 = 0u;
LABEL_11:
    sub_1000050A4(&v20, &qword_100939ED0, &qword_100791B10);
    goto LABEL_12;
  }

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  swift_bridgeObjectRelease_n();
  v5 = String._bridgeToObjectiveC()();
  v6 = [(objc_class *)isa valueForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    goto LABEL_11;
  }

  sub_1000F5104(&qword_100946840, &qword_1007A8B98);
  if (!swift_dynamicCast())
  {
LABEL_12:
    v16 = 0;
    return (*(a1 + 16))(a1, v16, 0);
  }

  if (!*(v18 + 16) || (v14 = sub_100005F4C(0x4F64656C62616E65, 0xEC000000534F696ELL), (v7 & 1) == 0))
  {
    v18, v7, v8, v9, v10, v11, v12, v13;
    goto LABEL_12;
  }

  v15 = *(*(v18 + 56) + v14);
  v18, v7, v8, v9, v10, v11, v12, v13;
  v16 = v15;
  return (*(a1 + 16))(a1, v16, 0);
}