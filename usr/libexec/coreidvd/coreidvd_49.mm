char *sub_10057D18C()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithEntityName:v6];

  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v8 = NSManagedObjectContext.fetch<A>(_:)();
  if (v0)
  {

    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v9._countAndFlagsBits = 0xD000000000000029;
    v9._object = 0x8000000100722280;
    String.append(_:)(v9);
    v24 = v0;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v21[1] = v22;
    (*(v2 + 104))(v4, enum case for DIPError.Code.coreDataErrorFetchProofingBiomeDataFailed(_:), v1);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v10 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1006BF520;
    v13 = v12 + v11;
    v14 = (v13 + v10[14]);
    v15 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v16 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v16 - 8) + 104))(v13, v15, v16);
    swift_getErrorValue();
    swift_errorRetain();
    v17 = dispatch thunk of Error._code.getter();
    v14[3] = &type metadata for Int;
    v14[4] = &protocol witness table for Int;
    *v14 = v17;
    sub_10003C9C0(v12);
    swift_setDeallocating();
    sub_100224AFC(v13);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v4;
  }

  v18 = sub_10057A1F8(v8);

  if (!v18)
  {
LABEL_12:

    return 0;
  }

  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v18 + 32);
LABEL_9:
    v4 = v20;

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10057D604(uint64_t a1, void *a2)
{
  v34 = type metadata accessor for DIPError.Code();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v35 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithEntityName:v8];

  [v9 setFetchLimit:1];
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v10 = swift_allocObject();
  v33 = xmmword_1006BF520;
  *(v10 + 16) = xmmword_1006BF520;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10057762C();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  v11 = NSPredicate.init(format:_:)();
  [v9 setPredicate:v11];

  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v13._countAndFlagsBits = 0xD000000000000038;
    v13._object = 0x8000000100722210;
    String.append(_:)(v13);
    v14._countAndFlagsBits = a1;
    v14._object = a2;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 0x3A726F727265203ALL;
    v15._object = 0xE900000000000020;
    String.append(_:)(v15);
    v38 = v2;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v32[1] = v36;
    (*(v5 + 104))(v35, enum case for DIPError.Code.coreDataErrorFetchProofingDataForBiomeFailed(_:), v34);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v16 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v33;
    v19 = v18 + v17;
    v20 = (v18 + v17 + v16[14]);
    v21 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v22 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v22 - 8) + 104))(v19, v21, v22);
    swift_getErrorValue();
    swift_errorRetain();
    v23 = dispatch thunk of Error._code.getter();
    v20[3] = &type metadata for Int;
    v20[4] = &protocol witness table for Int;
    *v20 = v23;
    v24 = sub_10003C9C0(v18);
    swift_setDeallocating();
    sub_100224AFC(v19);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v24;
  }

  v25 = v12;
  if (v12 >> 62)
  {
    type metadata accessor for StoredProofingBiomeData();

    v31 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v25 = v31;
  }

  else
  {
    v26 = v12 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for StoredProofingBiomeData();
    if (swift_dynamicCastMetatype() || (v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_5:
    }

    else
    {
      v30 = v26 + 32;
      while (swift_dynamicCastClass())
      {
        v30 += 8;
        if (!--v29)
        {
          goto LABEL_5;
        }
      }

      v25 = v26 | 1;
    }
  }

  if (!(v25 >> 62))
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_20:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v25 + 32);
LABEL_11:
    v24 = v28;

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_10057DC18(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithEntityName:v9];

  [v10 setFetchLimit:1];
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v11 = swift_allocObject();
  v34 = xmmword_1006BF520;
  *(v11 + 16) = xmmword_1006BF520;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_10057762C();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = NSPredicate.init(format:_:)();
  [v10 setPredicate:v12];

  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v14._countAndFlagsBits = 0xD000000000000037;
    v14._object = 0x80000001007220E0;
    String.append(_:)(v14);
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x3A726F727265203ALL;
    v16._object = 0xE900000000000020;
    String.append(_:)(v16);
    v38 = v2;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    _print_unlocked<A, B>(_:_:)();
    v33[1] = v36;
    (*(v6 + 104))(v35, enum case for DIPError.Code.coreDataErrorFetchPrearmInfoFailed(_:), v5);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v17 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v18 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v34;
    v20 = v19 + v18;
    v21 = (v19 + v18 + v17[14]);
    v22 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v23 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v23 - 8) + 104))(v20, v22, v23);
    swift_getErrorValue();
    swift_errorRetain();
    v24 = dispatch thunk of Error._code.getter();
    v21[3] = &type metadata for Int;
    v21[4] = &protocol witness table for Int;
    *v21 = v24;
    v25 = sub_10003C9C0(v19);
    swift_setDeallocating();
    sub_100224AFC(v20);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v25;
  }

  v26 = v13;
  if (v13 >> 62)
  {
    type metadata accessor for StoredPrearmTrust();

    v32 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v26 = v32;
  }

  else
  {
    v27 = v13 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for StoredPrearmTrust();
    if (swift_dynamicCastMetatype() || (v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_5:
    }

    else
    {
      v31 = v27 + 32;
      while (swift_dynamicCastClass())
      {
        v31 += 8;
        if (!--v30)
        {
          goto LABEL_5;
        }
      }

      v26 = v27 | 1;
    }
  }

  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_20:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v26 + 32);
LABEL_11:
    v25 = v29;

    return v25;
  }

  __break(1u);
  return result;
}

void sub_10057E28C()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_1000318FC(&v2[4], v5);
  os_unfair_lock_unlock(v2 + 54);
  if (v1)
  {
    __break(1u);
  }

  else
  {

    sub_100031918(v5);
    v3 = sub_10054C274();

    v4 = [v3 newBackgroundContext];
    *(v0 + 16) = v4;
    [v4 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  }
}

uint64_t sub_10057E3E4(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = __chkstk_darwin(v2);
  return a1(v3);
}

uint64_t sub_10057E5B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10057E620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10057E638(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF520;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10057762C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF520;
  v11 = IdentityDocumentType.description.getter();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10057762C();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = NSPredicate.init(format:_:)();
  if (a4)
  {
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1006DAEA0;
    *(v15 + 32) = v9;
    *(v15 + 40) = v14;
    v16 = v9;
    v17 = v14;
    v18.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [objc_opt_self() andPredicateWithSubpredicates:v18.super.isa];
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1006BF520;
    v21 = IdentityTarget.rawValue.getter();
    *(v20 + 56) = &type metadata for Int64;
    *(v20 + 64) = &protocol witness table for Int64;
    *(v20 + 32) = v21;
    v22 = NSPredicate.init(format:_:)();
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1006E8400;
    *(v23 + 32) = v9;
    *(v23 + 40) = v22;
    *(v23 + 48) = v14;
    v24 = v9;
    v17 = v22;
    v25 = v14;
    v18.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [objc_opt_self() andPredicateWithSubpredicates:v18.super.isa];
  }

  return v19;
}

id sub_10057E984(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF520;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_10057762C();
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v9 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF520;
  v11 = IdentityDocumentType.description.getter();
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = v8;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = NSPredicate.init(format:_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006BF520;
  v15 = IdentityDocumentType.description.getter();
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = v8;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v17 = NSPredicate.init(format:_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006BF520;
  v19 = IdentityDocumentType.description.getter();
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v8;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = NSPredicate.init(format:_:)();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1006E8400;
  *(v22 + 32) = v13;
  *(v22 + 40) = v17;
  *(v22 + 48) = v21;
  v23 = v13;
  v24 = v17;
  v25 = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v27 = objc_opt_self();
  v28 = [v27 orPredicateWithSubpredicates:isa];

  if (a4)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1006DAEA0;
    *(v29 + 32) = v9;
    *(v29 + 40) = v28;
    v30 = v9;
    v31 = v28;
    v32.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v33 = [v27 andPredicateWithSubpredicates:v32.super.isa];
  }

  else
  {
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1006BF520;
    v35 = IdentityTarget.rawValue.getter();
    *(v34 + 56) = &type metadata for Int64;
    *(v34 + 64) = &protocol witness table for Int64;
    *(v34 + 32) = v35;
    v36 = NSPredicate.init(format:_:)();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1006E8400;
    *(v37 + 32) = v9;
    *(v37 + 40) = v36;
    *(v37 + 48) = v28;
    v38 = v9;
    v31 = v36;
    v39 = v28;
    v32.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v33 = [v27 andPredicateWithSubpredicates:v32.super.isa];
  }

  return v33;
}

id sub_10057ED84(char a1)
{
  v2 = v1;
  result = [v1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a1 & 1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100581C74;
    *(v7 + 24) = v6;
    v10[4] = sub_10026CBB8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10057E264;
    v10[3] = &unk_100816D80;
    v8 = _Block_copy(v10);
    v9 = v2;

    [v5 performBlockAndWait:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057EF08(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  result = [v1 managedObjectContext];
  if (result)
  {
    v7 = result;
    (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1005823B0;
    *(v10 + 24) = v9;
    aBlock[4] = sub_10026CBB8;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10057E264;
    aBlock[3] = &unk_100817410;
    v11 = _Block_copy(aBlock);
    v12 = v1;

    [v7 performBlockAndWait:v11];

    _Block_release(v11);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057F148(uint64_t a1, char a2)
{
  v3 = v2;
  result = [v2 managedObjectContext];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = a1;
    *(v8 + 32) = a2 & 1;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100581CD4;
    *(v9 + 24) = v8;
    v12[4] = sub_10026CBB8;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10057E264;
    v12[3] = &unk_100816E70;
    v10 = _Block_copy(v12);
    v11 = v3;

    [v7 performBlockAndWait:v10];

    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057F2D0(char a1)
{
  v2 = v1;
  result = [v1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a1 & 1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100581C88;
    *(v7 + 24) = v6;
    v10[4] = sub_10026CBB8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10057E264;
    v10[3] = &unk_100816DF8;
    v8 = _Block_copy(v10);
    v9 = v2;

    [v5 performBlockAndWait:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057F454(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  result = [v2 managedObjectContext];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a1;
    v8[4] = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1005822E0;
    *(v9 + 24) = v8;
    v12[4] = sub_10026CBB8;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10057E264;
    v12[3] = &unk_100817398;
    v10 = _Block_copy(v12);
    v11 = v3;
    sub_1000363B4(a1, a2);

    [v7 performBlockAndWait:v10];

    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057F5EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v2 managedObjectContext];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a1;
    v8[4] = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100581E9C;
    *(v9 + 24) = v8;
    v12[4] = sub_10026CBB8;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10057E264;
    v12[3] = &unk_100817050;
    v10 = _Block_copy(v12);
    v11 = v3;

    [v7 performBlockAndWait:v10];

    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057F780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  result = [v7 managedObjectContext];
  if (result)
  {
    v15 = result;
    v16 = swift_allocObject();
    v16[2] = v7;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a3;
    v16[6] = a4;
    v16[7] = a5;
    v16[8] = a6;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_100582244;
    *(v17 + 24) = v16;
    v21[4] = sub_10026CBB8;
    v21[5] = v17;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_10057E264;
    v21[3] = &unk_100817320;
    v18 = _Block_copy(v21);

    v19 = v7;

    [v15 performBlockAndWait:v18];

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057F944(uint64_t a1, uint64_t a2)
{
  result = [v2 managedObjectContext];
  if (result)
  {
    v6 = result;
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = a1;
    v7[4] = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100582164;
    *(v8 + 24) = v7;
    v12[4] = sub_10026CBB8;
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10057E264;
    v12[3] = &unk_100817230;
    v9 = _Block_copy(v12);

    v10 = v2;

    [v6 performBlockAndWait:v9];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  result = [v4 managedObjectContext];
  if (result)
  {
    v11 = result;
    v12 = swift_allocObject();
    v12[2] = v5;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = a4;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100582140;
    *(v13 + 24) = v12;
    v16[4] = sub_10026CBB8;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10057E264;
    v16[3] = &unk_1008171B8;
    v14 = _Block_copy(v16);
    v15 = v5;

    [v11 performBlockAndWait:v14];

    _Block_release(v14);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057FC7C(void *a1)
{
  v2 = v1;
  result = [v1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1005820D4;
    *(v7 + 24) = v6;
    v11[4] = sub_10026CBB8;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10057E264;
    v11[3] = &unk_100817140;
    v8 = _Block_copy(v11);
    v9 = a1;

    v10 = v2;

    [v5 performBlockAndWait:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10057FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = aBlock - v11;
  result = [v4 managedObjectContext];
  if (result)
  {
    v14 = result;
    sub_10000BBC4(a4, v12, &unk_100844540, &unk_1006BFBC0);
    v15 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v16 = swift_allocObject();
    v16[2] = v4;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a3;
    sub_10034CEB4(v12, v16 + v15);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_100582020;
    *(v17 + 24) = v16;
    aBlock[4] = sub_10026CBB8;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10057E264;
    aBlock[3] = &unk_1008170C8;
    v18 = _Block_copy(aBlock);
    v19 = v4;

    [v14 performBlockAndWait:v18];

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_100580054(uint64_t a1, uint64_t a2)
{
  result = [v2 managedObjectContext];
  if (result)
  {
    v6 = result;
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = a1;
    v7[4] = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1005821CC;
    *(v8 + 24) = v7;
    v12[4] = sub_10026CBB8;
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10057E264;
    v12[3] = &unk_1008172A8;
    v9 = _Block_copy(v12);

    v10 = v2;

    [v6 performBlockAndWait:v9];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1005801E4(char a1)
{
  v2 = v1;
  result = [v1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a1 & 1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100581E58;
    *(v7 + 24) = v6;
    v10[4] = sub_10026CBB8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10057E264;
    v10[3] = &unk_100816EE8;
    v8 = _Block_copy(v10);
    v9 = v2;

    [v5 performBlockAndWait:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_100580368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  result = [v5 managedObjectContext];
  if (result)
  {
    v13 = result;
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = a1;
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    *(v14 + 48) = a4;
    *(v14 + 56) = a5 & 1;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100581E88;
    *(v15 + 24) = v14;
    v18[4] = sub_10026CBB8;
    v18[5] = v15;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_10057E264;
    v18[3] = &unk_100816FD8;
    v16 = _Block_copy(v18);

    v17 = v6;

    [v13 performBlockAndWait:v16];

    _Block_release(v16);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10058051C(char a1)
{
  v2 = v1;
  result = [v1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a1 & 1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100581E6C;
    *(v7 + 24) = v6;
    v10[4] = sub_10026CBB8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10057E264;
    v10[3] = &unk_100816F60;
    v8 = _Block_copy(v10);
    v9 = v2;

    [v5 performBlockAndWait:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1005806A0(uint64_t a1, unint64_t a2, __int16 a3)
{
  v4 = v3;
  result = [v3 managedObjectContext];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = a1;
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_100581A74;
    *(v11 + 24) = v10;
    v14[4] = sub_10026CBB8;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10057E264;
    v14[3] = &unk_100816D08;
    v12 = _Block_copy(v14);
    v13 = v4;
    sub_10000B8B8(a1, a2);

    [v9 performBlockAndWait:v12];

    _Block_release(v12);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100580840(void *a1, uint64_t a2, NSString a3, uint64_t a4, NSString a5, uint64_t a6, NSString a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, char a26, uint64_t a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, char a34, uint64_t a35, char a36, unsigned __int8 a37, unsigned __int8 a38, unsigned __int8 a39, uint64_t a40, unsigned __int8 a41, unsigned __int8 a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, unint64_t a47, uint64_t a48, void *a49, uint64_t a50, unint64_t a51)
{
  v55 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v56 = __chkstk_darwin(v55 - 8);
  v58 = &v85[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v56);
  v60 = &v85[-v59];
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [a1 setState:a3];

  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  v61 = a10;
  [a1 setCountry:a5];

  if (a7)
  {
    a7 = String._bridgeToObjectiveC()();
  }

  v62 = a12;
  [a1 setCredentialIdentifier:a7];

  [a1 setTarget:IdentityTarget.rawValue.getter()];
  if (a10)
  {
    v61 = String._bridgeToObjectiveC()();
  }

  [a1 setWorkflowID:v61];

  if (a12)
  {
    v62 = String._bridgeToObjectiveC()();
  }

  [a1 setProofingSessionID:v62];

  if (a14)
  {
    v63 = String._bridgeToObjectiveC()();
  }

  else
  {
    v63 = 0;
  }

  v92 = a19;
  [a1 setPairingID:v63];

  [a1 setManualCheckInterval:a15];
  sub_10000BBC4(a16, v60, &unk_100849400, &unk_1006BFBB0);
  v64 = type metadata accessor for Date();
  v65 = *(v64 - 8);
  v66 = *(v65 + 48);
  isa = 0;
  if (v66(v60, 1, v64) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v65 + 8))(v60, v64);
  }

  [a1 setCreatedAt:isa];

  if (a18)
  {
    v68 = String._bridgeToObjectiveC()();
  }

  else
  {
    v68 = 0;
  }

  [a1 setProvisioningCredentialID:v68];

  sub_10000BBC4(v92, v58, &unk_100849400, &unk_1006BFBB0);
  if (v66(v58, 1, v64) == 1)
  {
    v69 = 0;
  }

  else
  {
    v69 = Date._bridgeToObjectiveC()().super.isa;
    (*(v65 + 8))(v58, v64);
  }

  v70 = a24;
  [a1 setProvisioningAttemptDate:v69];

  [a1 setProvisioningRetryTimeout:a20];
  if (a22)
  {
    v71 = String._bridgeToObjectiveC()();
  }

  else
  {
    v71 = 0;
  }

  [a1 setProvisioningTargetInstanceID:v71];

  if (a24)
  {
    v70 = String._bridgeToObjectiveC()();
  }

  v73 = a28;
  [a1 setPartnerSchemeID:v70];

  if (a26)
  {
    a25 = IdentityProofingActionStatus.rawValue.getter();
  }

  v92 = a40;
  v74 = a33;
  [a1 setProofingActionStatus:a25];
  if (a28)
  {
    v73 = String._bridgeToObjectiveC()();
  }

  v91 = a44;
  v89 = a41;
  v90 = a42;
  v87 = a38;
  v88 = a39;
  v86 = a37;
  [a1 setLastExecutedActionIdentifier:v73];

  if (a29)
  {
    v75 = a29;
  }

  else
  {
    v75 = _swiftEmptyArrayStorage;
  }

  sub_1003D6FB8(v75);

  v76 = objc_allocWithZone(NSSet);
  v77 = Array._bridgeToObjectiveC()().super.isa;

  v78 = [v76 initWithArray:v77];

  [a1 setUploadAssets:v78];
  [a1 setCloudKitUploadsMaxRetryCount:a30];
  IdentityDocumentType.description.getter();
  v79 = String._bridgeToObjectiveC()();

  [a1 setDocumentType:v79];

  if (a33)
  {
    v74 = String._bridgeToObjectiveC()();
  }

  [a1 setLearnMoreURLString:v74];

  [a1 setShouldScheduleUploads:a34 & 1];
  if (a36)
  {
    v80 = 2;
  }

  else
  {
    v80 = a35;
  }

  [a1 setConnectToWifiReminderInDays:v80];
  [a1 setDidShowWifiReminderAlert:v86 & 1];
  [a1 setShouldShowNotificationOnWatch:v87 & 1];
  [a1 setCanUploadOnExpensiveNetwork:v88 & 1];
  [a1 setTotalUploadAssetsFileSizeInBytes:v92];
  [a1 setDidNotifyOnUploadsCompletion:v89 & 1];
  [a1 setHasUserConsentToShareBiomeData:v90 & 1];
  if (v91)
  {
    v81 = String._bridgeToObjectiveC()();
  }

  else
  {
    v81 = 0;
  }

  v82 = a49;
  [a1 setProductIdentifier:v81];

  [a1 setDidAttemptComboProofing:a45 & 1];
  if (a47 >> 60 == 15)
  {
    v83 = 0;
  }

  else
  {
    v83 = Data._bridgeToObjectiveC()().super.isa;
  }

  [a1 setSupplementalProvisioningData:v83];

  if (a49)
  {
    v82 = String._bridgeToObjectiveC()();
  }

  [a1 setAnalyticsSessionID:v82];

  if (a51 >> 60 == 15)
  {
    v84 = 0;
  }

  else
  {
    v84 = Data._bridgeToObjectiveC()().super.isa;
  }

  [a1 setLivenessManualReviewEncryptedMessage:v84];
}

void sub_100580FC8(void *a1)
{
  isa = Date._bridgeToObjectiveC()().super.isa;
  [a1 setProvisioningAttemptDate:isa];
}

void sub_100581024(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = String._bridgeToObjectiveC()();
  [a1 setWorkflowID:v13];

  v14 = String._bridgeToObjectiveC()();
  [a1 setProofingSessionID:v14];

  [a1 setManualCheckInterval:a6];
  sub_10000BBC4(a7, v12, &unk_100849400, &unk_1006BFBB0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  isa = 0;
  if ((*(v16 + 48))(v12, 1, v15) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v12, v15);
  }

  [a1 setCreatedAt:isa];
}

id sub_1005811E4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a2 = IdentityProofingActionStatus.rawValue.getter();
    a1 = v5;
    v3 = vars8;
  }

  return [a1 setProofingActionStatus:a2];
}

void sub_100581238(void *a1, uint64_t a2, NSString a3, SEL *a4)
{
  if (a3)
  {
    v5 = a1;
    a3 = String._bridgeToObjectiveC()();
    a1 = v5;
  }

  v6 = a3;
  [a1 *a4];
}

void sub_10058129C(id a1@<X1>, unint64_t a2@<X0>, _BYTE *a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  if (a2 >> 62)
  {
    v8 = a2;
    v9 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v8;
    if (v9 >= 1)
    {
      goto LABEL_4;
    }

LABEL_6:
    [a1 setUploadAssets:0];
    goto LABEL_7;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_1003D6FB8(a2);
  v5 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithArray:isa];

  [a1 setUploadAssets:v7];
LABEL_7:
  *a3 = 0;
}

void sub_1005813A0(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = a1;
    isa = Data._bridgeToObjectiveC()().super.isa;
    a1 = v4;
  }

  v5 = isa;
  [a1 setLivenessManualReviewEncryptedMessage:?];
}

void sub_10058143C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = String._bridgeToObjectiveC()();
  [a1 setProvisioningCredentialID:v13];

  v14 = String._bridgeToObjectiveC()();
  [a1 setProvisioningTargetInstanceID:v14];

  v15 = String._bridgeToObjectiveC()();
  [a1 setPartnerSchemeID:v15];

  if (a9 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [a1 setServerAttestedProvisioningData:isa];

  [a1 setIssuerCurrentCredentialCapacity:a10];
  if (a12)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  [a1 setPiiTokenIdentifier:?];
}

void sub_1005815B0(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 setTitle:v2];

  v3 = String._bridgeToObjectiveC()();
  [a1 setMessage:v3];
}

void sub_100581648(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = String._bridgeToObjectiveC()();
  [a1 setTitle:v10];

  [a1 setActionType:IdentityProofingPrecursorPassMessageActionType.rawValue.getter()];
  sub_10000BBC4(a5, v9, &unk_100844540, &unk_1006BFBC0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v14 = 0;
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v14 = v15;
    (*(v12 + 8))(v9, v11);
  }

  [a1 setActionURL:v14];
}

id sub_1005817D8(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 setKeyBlob:isa];

  return [a1 setVersion:a4];
}

id sub_10058184C(char a1)
{
  v2 = v1;
  result = [v1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = a1 & 1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100581A08;
    *(v7 + 24) = v6;
    v10[4] = sub_10021E8E8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10057E264;
    v10[3] = &unk_100816C90;
    v8 = _Block_copy(v10);
    v9 = v2;

    [v5 performBlockAndWait:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1005819D0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100581A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100581A34()
{
  sub_10000B90C(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 42, 7);
}

void sub_100581AC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, uint64_t a6, uint64_t a7, SEL *a8, SEL *a9, SEL *a10)
{
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [a1 *a8];

  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  [a1 *a9];

  if (a7)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  [a1 *a10];
}

id sub_100581BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, char a6)
{
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [a1 setProofingSessionID:v9];

  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  [a1 setProofingDecision:a5];

  return [a1 setIsDonated:a6 & 1];
}

uint64_t sub_100581C9C()
{

  return _swift_deallocObject(v0, 33, 7);
}

id sub_100581CD4()
{
  v1 = *(v0 + 16);
  if (*(v0 + 32) == 1)
  {
    v2 = IdentityProofingActionStatus.rawValue.getter();
  }

  else
  {
    v2 = *(v0 + 24);
  }

  return [v1 setProofingActionStatus:v2];
}

void sub_100581D30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [a1 setProofingSessionID:v10];

  v11 = String._bridgeToObjectiveC()();
  [a1 setCredentialIdentifier:v11];

  [a1 setOptInStatus:a6 & 1];
  isa = Date._bridgeToObjectiveC()().super.isa;
  [a1 setOptInDate:isa];

  IdentityDocumentType.description.getter();
  v13 = String._bridgeToObjectiveC()();

  [a1 setDocumentType:v13];
}

void sub_100581E9C()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  [v1 setDocumentType:v2];
}

uint64_t sub_100581EF8()
{
  v1 = *(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100582020()
{
  v1 = *(sub_100007224(&unk_100844540, &unk_1006BFBC0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_100581648(v2, v3, v4, v5, v6);
}

uint64_t sub_100582094()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005820EC(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10058218C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005821F4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100582290()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005822EC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1005823B0()
{
  type metadata accessor for Date();
  v1 = *(v0 + 16);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v1 setOptInDate:isa];
}

__n128 sub_100582444(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100582460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005824A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005825E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100582C9C(a1, a2);
  if (!v4 && !result)
  {
    type metadata accessor for StoredMobileDocumentReaderApplicationInstallation();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v3 + 16)];
    v7 = String._bridgeToObjectiveC()();
    [v6 setApplicationIdentifier:v7];

    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v6 setInstallationIdentifier:isa];

    return v6;
  }

  return result;
}

id sub_1005826A4()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v19[0] = 0;
  if ([v5 save:v19])
  {
    return v19[0];
  }

  v7 = v19[0];
  v8 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v9._countAndFlagsBits = 0xD00000000000003CLL;
  v9._object = 0x8000000100722320;
  String.append(_:)(v9);
  v18[6] = v8;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v18[1] = v19[0];
  (*(v2 + 104))(v4, enum case for DIPError.Code.coreDataErrorMobileDocumentReaderSaveFailed(_:), v1);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v10 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006BF520;
  v13 = v12 + v11;
  v14 = (v13 + v10[14]);
  v15 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v16 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v16 - 8) + 104))(v13, v15, v16);
  swift_getErrorValue();
  swift_errorRetain();
  v17 = dispatch thunk of Error._code.getter();
  v14[3] = &type metadata for Int;
  v14[4] = &protocol witness table for Int;
  *v14 = v17;
  sub_10003C9C0(v12);
  swift_setDeallocating();
  sub_100224AFC(v13);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_100584390(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

unint64_t sub_100582AA4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StoredMobileDocumentReaderAuthenticationCertificate();
  v4 = static StoredMobileDocumentReaderAuthenticationCertificate.fetchRequest()();
  sub_10001F8D4(0, &qword_1008481C0, NSPredicate_ptr);
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF740;
  v6 = &type metadata for String;
  *(v5 + 56) = &type metadata for String;
  v7 = sub_10057762C();
  *(v5 + 32) = 0xD000000000000011;
  *(v5 + 40) = 0x80000001006FDBB0;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;

  v8 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v8];

  [v4 setFetchLimit:1];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v13)
  {

    return v6;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = _CocoaArrayWrapper.endIndex.getter();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v6 = v10;

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_100582C9C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StoredMobileDocumentReaderApplicationInstallation();
  v3 = static StoredMobileDocumentReaderApplicationInstallation.fetchRequest()();
  sub_10001F8D4(0, &qword_1008481C0, NSPredicate_ptr);
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BFE10;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_10057762C();
  *(v4 + 64) = v5;
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = 0x800000010070FBD0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = &qword_100848540;
  *(v4 + 96) = sub_10001F8D4(0, &qword_100848540, NSUUID_ptr);
  v8 = sub_1005846DC(&qword_100848548, &qword_100848540, NSUUID_ptr);
  *(v4 + 72) = isa;
  *(v4 + 136) = &type metadata for String;
  *(v4 + 144) = v5;
  *(v4 + 104) = v8;
  *(v4 + 112) = 0xD000000000000015;
  *(v4 + 120) = 0x80000001006FDC70;
  *(v4 + 176) = &type metadata for String;
  *(v4 + 184) = v5;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;

  v9 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v9];

  [v3 setFetchLimit:1];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v15)
  {

    return v7;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v12 = result;
  v13 = _CocoaArrayWrapper.endIndex.getter();
  result = v12;
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 32);
LABEL_8:
    v7 = v11;

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_100582F18()
{
  v1 = v0;
  type metadata accessor for StoredMobileDocumentReaderSigningKey();
  v2 = static StoredMobileDocumentReaderSigningKey.fetchRequest()();
  sub_10001F8D4(0, &qword_1008481C0, NSPredicate_ptr);
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006BF740;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_10057762C();
  *(v3 + 32) = 0x626F6C4279656BLL;
  *(v3 + 40) = 0xE700000000000000;
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v3 + 96) = sub_10001F8D4(0, &unk_100845EE8, NSData_ptr);
  *(v3 + 104) = sub_1005846DC(&qword_100848538, &unk_100845EE8, NSData_ptr);
  *(v3 + 72) = isa;
  v5 = NSPredicate.init(format:_:)();
  [v2 setPredicate:v5];

  [v2 setFetchLimit:1];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v0)
  {

    return v1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v8 = result;
  v9 = _CocoaArrayWrapper.endIndex.getter();
  result = v8;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_8:
    v1 = v7;

    return v1;
  }

  __break(1u);
  return result;
}

void *sub_10058314C@<X0>(void *a1@<X8>)
{
  result = sub_10054C274();
  if (!v1)
  {
    v4 = result;
    v5 = [result newBackgroundContext];

    type metadata accessor for MobileDocumentReaderDataContext();
    result = swift_allocObject();
    result[2] = v5;
    *a1 = result;
  }

  return result;
}

uint64_t sub_1005831B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1005831E0, 0, 0);
}

uint64_t sub_1005831E0()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1005832E0;
  v6 = v0[5];
  v7 = v0[2];

  return AsyncCoreDataContainer.write<A>(_:)(v7, &unk_1006E8748, v4, v6);
}

uint64_t sub_1005832E0()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100584780, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10058341C(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100041F04;

  return v8(a1, v5);
}

uint64_t sub_100583520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100583548, 0, 0);
}

uint64_t sub_100583548()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1005832E0;
  v6 = v0[5];
  v7 = v0[2];

  return AsyncCoreDataContainer.read<A>(_:)(v7, &unk_1006E8730, v4, v6);
}

uint64_t sub_100583648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100583670, 0, 0);
}

uint64_t sub_100583670()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1005832E0;
  v6 = v0[5];
  v7 = v0[2];

  return AsyncCoreDataContainer.performWrite<A>(_:)(v7, sub_10058472C, v4, v6);
}

uint64_t sub_100583770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100583798, 0, 0);
}

uint64_t sub_100583798()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100583898;
  v6 = v0[5];
  v7 = v0[2];

  return AsyncCoreDataContainer.performRead<A>(_:)(v7, sub_100584440, v4, v6);
}

uint64_t sub_100583898()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005839D4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1005839D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100583A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v4 + 16) = v9;
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;

  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_100584764;

  return sub_1005831B8(a1, &unk_1006E8738, v9, a4);
}

uint64_t sub_100583B60(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_100399D0C;

  return v7(a1, v3 + 16);
}

uint64_t sub_100583C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v4 + 16) = v9;
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;

  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_100584764;

  return sub_100583520(a1, &unk_1006E8718, v9, a4);
}

uint64_t sub_100583D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v4 + 16) = v9;
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;

  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_100584764;

  return sub_100583648(a1, sub_100584768, v9, a4);
}

uint64_t sub_100583E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v4 + 16) = v9;
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;

  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_100583F74;

  return sub_100583770(a1, sub_100584410, v9, a4);
}

uint64_t sub_100583F74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100584084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10058414C, 0, 0);
}

uint64_t sub_10058414C()
{
  v1 = v0[9];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[10] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  sub_100577FA0(v1);

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_100578F8C;
  v7 = v0[9];
  v8 = v0[5];
  v9 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v7, sub_10057A074, v5, v8);
}

uint64_t sub_100584284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100027B9C;

  return sub_100584084(a1, a2, a3, a4);
}

uint64_t sub_100584390(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005843D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100584410(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_10058446C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_100583B60(a1, a2, v6);
}

uint64_t sub_10058453C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_10058341C(a1, a2, v6);
}

uint64_t sub_10058460C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100027B9C;

  return sub_10058341C(a1, a2, v6);
}

uint64_t sub_1005846DC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001F8D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100584784@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a2;
  v3 = sub_100007224(&qword_100841B98, &unk_1006DF0D0);
  __chkstk_darwin(v3 - 8);
  v172 = &v158 - v4;
  v5 = sub_100007224(&qword_100841BB0, &unk_1006DF080);
  __chkstk_darwin(v5 - 8);
  v168 = &v158 - v6;
  v7 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v7 - 8);
  v180 = &v158 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v176 = v9;
  v177 = v10;
  __chkstk_darwin(v9);
  v171 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPError.Code();
  v173 = *(v12 - 8);
  v174 = v12;
  __chkstk_darwin(v12);
  countAndFlagsBits = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v188 = *(v186 - 8);
  __chkstk_darwin(v186);
  v169 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  v16 = __chkstk_darwin(v15 - 8);
  v179 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v181 = &v158 - v18;
  v19 = sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v158 - v23;
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  v183 = v25;
  v184 = v26;
  v27 = __chkstk_darwin(v25);
  v170 = &v158 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v178 = &v158 - v30;
  __chkstk_darwin(v29);
  v182 = &v158 - v31;
  v32 = type metadata accessor for Logger();
  v33 = *(v32 - 8);
  v189 = v32;
  v190 = v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v39 = &v158 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v158 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v158 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = &v158 - v47;
  __chkstk_darwin(v46);
  v50 = &v158 - v49;
  v51 = [a1 sessionIdentifier];
  if (!v51)
  {
    defaultLogger()();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "MobileDocumentReaderAuthenticationCertificate could not initialize because the CoreData record does not have a sessionIdentifier", v65, 2u);
    }

    v190[1](v50, v189);
    goto LABEL_13;
  }

  v52 = v51;
  v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v185 = v53;

  v54 = [a1 certificateChain];
  v55 = a1;
  if (!v54 || (v191 = 0, v56 = v54, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v56, !v191))
  {
    defaultLogger()();
    v57 = v185;

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v191 = v61;
      *v60 = 136315138;
      v62 = sub_100141FE4(v167, v57, &v191);

      *(v60 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v58, v59, "MobileDocumentReaderAuthenticationCertificate could not initialize because the CoreData record does not contain a certificateChain for sessionIdentifier %s", v60, 0xCu);
      sub_10000BB78(v61);
    }

    else
    {
    }

    v190[1](v39, v189);
    goto LABEL_13;
  }

  v70 = decodeCertificateChain(fromDER:)();

  v71 = [v55 signingKey];
  if (!v71)
  {
    goto LABEL_24;
  }

  v72 = v71;
  v73 = [v71 keyBlob];
  if (!v73)
  {

LABEL_24:

    defaultLogger()();
    v86 = v185;

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v191 = v90;
      *v89 = 136315138;
      v91 = sub_100141FE4(v167, v86, &v191);

      *(v89 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v87, v88, "MobileDocumentReaderAuthenticationCertificate could not initialize because the CoreData record does not contain a signing key for sessionIdentifier %s", v89, 0xCu);
      sub_10000BB78(v90);
    }

    else
    {
    }

    v190[1](v42, v189);
    goto LABEL_13;
  }

  v163 = 0;
  v164 = v72;
  v74 = v73;
  v165 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v166 = v75;

  v76 = [v55 applicationInstallation];
  if (!v76 || (v77 = v76, v78 = [v76 applicationIdentifier], v77, !v78))
  {

LABEL_33:
    v92 = v189;
    defaultLogger()();
    v93 = v185;

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v191 = v97;
      *v96 = 136315138;
      v98 = sub_100141FE4(v167, v93, &v191);

      *(v96 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v94, v95, "MobileDocumentReaderAuthenticationCertificate could not initialize because the CoreData record does not contain an application installation for sessionIdentifier %s", v96, 0xCu);
      sub_10000BB78(v97);

      sub_10000B90C(v165, v166);
    }

    else
    {

      sub_10000B90C(v165, v166);
    }

    v190[1](v45, v92);
    goto LABEL_13;
  }

  v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  v81 = [v55 applicationInstallation];
  if (!v81)
  {

    (*(v184 + 56))(v24, 1, 1, v183);
LABEL_32:
    sub_10000BE18(v24, &unk_100849F90, &qword_1006DEAA0);
    goto LABEL_33;
  }

  v161 = v80;
  v162 = v70;
  v82 = v81;
  v83 = [v81 installationIdentifier];

  v84 = v183;
  if (v83)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v85 = v184;
    (*(v184 + 56))(v22, 0, 1, v84);
  }

  else
  {
    v85 = v184;
    (*(v184 + 56))(v22, 1, 1, v183);
  }

  sub_1000B1FC8(v22, v24, &unk_100849F90, &qword_1006DEAA0);
  if ((*(v85 + 48))(v24, 1, v84) == 1)
  {

    goto LABEL_32;
  }

  v160 = v55;
  v158 = *(v85 + 32);
  v158(v182, v24, v84);
  defaultLogger()();
  v99 = v185;

  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v191 = v103;
    *v102 = 136315138;
    *(v102 + 4) = sub_100141FE4(v167, v99, &v191);
    _os_log_impl(&_mh_execute_header, v100, v101, "MobileDocumentReaderAuthenticationCertificate successfully initialized with sessionIdentifier %s", v102, 0xCu);
    sub_10000BB78(v103);
  }

  v104 = v48;
  v105 = v189;
  v190[1](v104, v189);
  v106 = v180;
  v107 = [v160 externalData];
  if (v107)
  {
    v108 = v107;
    v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v110;

    type metadata accessor for MobileDocumentReaderExternalData();
    type metadata accessor for CBORDecoder();
    swift_allocObject();
    sub_10000B8B8(v109, v111);
    CBORDecoder.init()();
    sub_100586A3C(&qword_100836FD0, &type metadata accessor for MobileDocumentReaderExternalData, &protocol conformance descriptor for MobileDocumentReaderExternalData);
    sub_100586A3C(&qword_100836FD8, &type metadata accessor for MobileDocumentReaderExternalData, &protocol conformance descriptor for MobileDocumentReaderExternalData);
    v112 = v163;
    CBOREncodedCBOR.init(_:dataValue:decoder:)();
    if (v112)
    {

      sub_10000B90C(v165, v166);
      sub_10000B90C(v109, v111);
      (*(v184 + 8))(v182, v84);
      v113 = v160;
LABEL_5:
      defaultLogger()();
      DIPLogError(_:message:log:)();

      v190[1](v36, v105);
LABEL_13:
      v66 = 1;
      v68 = v186;
      v67 = v187;
      return (*(v188 + 56))(v67, v66, 1, v68);
    }

    v163 = 0;
    sub_10000B90C(v109, v111);
    v114 = 0;
    v106 = v180;
  }

  else
  {
    v114 = 1;
  }

  v115 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  v116 = v181;
  (*(*(v115 - 8) + 56))(v181, v114, 1, v115);
  v117 = *(v184 + 16);
  v117(v178, v182, v84);
  v118 = [v160 merchantLogo];
  if (v118)
  {
    v119 = v118;
    v180 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v189 = v120;
  }

  else
  {
    v180 = 0;
    v189 = 0xF000000000000000;
  }

  sub_100355554(v116, v179);
  if (v162 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v121 = v177;
  if (!result)
  {

    (*(v173 + 104))(countAndFlagsBits, enum case for DIPError.Code.documentReaderMissingReaderAuthCertificate(_:), v174);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100586A3C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BD94(v180, v189);
    sub_10000B90C(v165, v166);
    goto LABEL_56;
  }

  if ((v162 & 0xC000000000000001) != 0)
  {
    sub_10000B8B8(v165, v166);
    v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_53:
    v124 = v123;
    SecCertificateRef.expirationDate.getter();
    v125 = v176;
    if ((*(v121 + 48))(v106, 1, v176) == 1)
    {
      v126 = v165;
      sub_10000B90C(v165, v166);

      sub_10000BE18(v106, &unk_100849400, &unk_1006BFBB0);
      (*(v173 + 104))(countAndFlagsBits, enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:), v174);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100586A3C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_10000BD94(v180, v189);
      sub_10000B90C(v126, v166);

LABEL_56:
      sub_10000BE18(v179, &qword_100835D88, &qword_1006DE890);
      v127 = v183;
      v128 = *(v184 + 8);
      v128(v178, v183);
      sub_10000BE18(v181, &qword_100835D88, &qword_1006DE890);
      v128(v182, v127);
      v113 = v160;
      goto LABEL_5;
    }

    v129 = *(v121 + 32);
    v177 = v121 + 32;
    v190 = v129;
    (v129)(v171, v106, v125);
    v130 = SecCertificateRef.pseudonym.getter();
    v132 = v131;
    v133 = v168;
    v134 = v163;
    SecCertificateRef.logotype.getter();
    if (v134)
    {

      v135 = type metadata accessor for Logotype();
      (*(*(v135 - 8) + 56))(v133, 1, 1, v135);
      sub_10000BE18(v133, &qword_100841BB0, &unk_1006DF080);
      v136 = 0;
    }

    else
    {
      v156 = type metadata accessor for Logotype();
      v157 = (*(*(v156 - 8) + 48))(v133, 1, v156);
      sub_10000BE18(v133, &qword_100841BB0, &unk_1006DF080);
      v136 = 0;
      if (v157 != 1)
      {
        v137 = v164;
        if (v132)
        {
          SecCertificateRef.localizedRelyingPartyNames.getter();
          v138 = v132;
          v139 = v130;
          v136 = 1;
          goto LABEL_61;
        }

LABEL_60:
        v138 = v132;
        v139 = v130;
        v140 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
        (*(*(v140 - 8) + 56))(v172, 1, 1, v140);
LABEL_61:
        v141 = v178;
        v117(v170, v178, v84);
        v142 = SecCertificateRef.uid()();
        countAndFlagsBits = v142.value._countAndFlagsBits;

        sub_10000B90C(v165, v166);
        v143 = *(v184 + 8);
        v143(v141, v84);
        sub_10000BE18(v181, &qword_100835D88, &qword_1006DE890);
        v143(v182, v84);
        if (v136)
        {
          v145 = v186;
          v144 = v187;
          v146 = v185;
          v147 = v189;
          v148 = v180;
        }

        else
        {
          sub_10000BD94(v180, v189);

          v139 = 0;
          v138 = 0;
          v148 = 0;
          v147 = 0xF000000000000000;
          v145 = v186;
          v144 = v187;
          v146 = v185;
        }

        v149 = v169;
        sub_1000B1FC8(v172, &v169[v145[12]], &qword_100841B98, &unk_1006DF0D0);
        (v190)(&v149[v145[13]], v171, v176);
        *v149 = v167;
        *(v149 + 1) = v146;
        v150 = v161;
        *(v149 + 2) = v159;
        *(v149 + 3) = v150;
        v158(&v149[v145[6]], v170, v183);
        *&v149[v145[7]] = v162;
        v151 = &v149[v145[8]];
        v152 = v166;
        *v151 = v165;
        *(v151 + 1) = v152;
        v153 = &v149[v145[9]];
        *v153 = countAndFlagsBits;
        v153[1] = v142.value._object;
        v154 = &v149[v145[10]];
        *v154 = v148;
        v154[1] = v147;
        v155 = &v149[v145[11]];
        *v155 = v139;
        v155[1] = v138;
        sub_1000B1FC8(v179, &v149[v145[14]], &qword_100835D88, &qword_1006DE890);
        sub_100355438(v149, v144);
        v68 = v145;
        v67 = v144;
        v66 = 0;
        return (*(v188 + 56))(v67, v66, 1, v68);
      }
    }

    v137 = v164;
    goto LABEL_60;
  }

  if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v122 = *(v162 + 32);
    sub_10000B8B8(v165, v166);
    v123 = v122;
    goto LABEL_53;
  }

  __break(1u);
  return result;
}

uint64_t sub_100585F78(void *a1)
{
  v2 = sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v91[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v91[-v6];
  v8 = type metadata accessor for UUID();
  v110 = *(v8 - 8);
  v111 = v8;
  v9 = __chkstk_darwin(v8);
  v104 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v103 = &v91[-v12];
  __chkstk_darwin(v11);
  v106 = &v91[-v13];
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v19 = &v91[-v18];
  v20 = __chkstk_darwin(v17);
  v22 = &v91[-v21];
  v23 = __chkstk_darwin(v20);
  v105 = &v91[-v24];
  __chkstk_darwin(v23);
  v26 = &v91[-v25];
  v27 = [a1 certificateData];
  if (!v27)
  {
    defaultLogger()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "MobileDocumentReaderIdentityKey could not initialize because certificate data is missing in CoreData record", v47, 2u);
    }

    (*(v15 + 8))(v26, v14);
    return 0;
  }

  v28 = v27;
  v109 = v14;
  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v107 = v30;
  v108 = v29;

  v31 = a1;
  v32 = [a1 applicationInstallation];
  if (!v32)
  {
    goto LABEL_15;
  }

  v33 = v32;
  v34 = [v32 applicationIdentifier];

  if (!v34)
  {
    goto LABEL_15;
  }

  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = [a1 applicationInstallation];
  if (!v37)
  {

    (*(v110 + 56))(v7, 1, 1, v111);
LABEL_14:
    sub_10000BE18(v7, &unk_100849F90, &qword_1006DEAA0);
LABEL_15:
    defaultLogger()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "MobileDocumentReaderIdentityKey could not initialize because application installation is missing.", v51, 2u);
    }

    sub_10000B90C(v108, v107);

    (*(v15 + 8))(v19, v109);
    return 0;
  }

  v102 = a1;
  v38 = v36;
  v39 = v37;
  v40 = [v37 installationIdentifier];

  if (v40)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = v110;
    v42 = *(v110 + 56);
    v43 = v5;
    v44 = 0;
  }

  else
  {
    v41 = v110;
    v42 = *(v110 + 56);
    v43 = v5;
    v44 = 1;
  }

  v48 = v111;
  v42(v43, v44, 1, v111);
  sub_1000B1FC8(v5, v7, &unk_100849F90, &qword_1006DEAA0);
  if ((*(v41 + 48))(v7, 1, v48) == 1)
  {

    goto LABEL_14;
  }

  v53 = *(v41 + 32);
  v53(v106, v7, v48);
  v54 = [v102 signingKey];
  v55 = v109;
  v56 = v107;
  if (!v54)
  {
LABEL_24:

    defaultLogger()();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "MobileDocumentReaderIdentityKey could not initialize because signing key is missing.", v65, 2u);
    }

    sub_10000B90C(v108, v56);

    (*(v15 + 8))(v22, v55);
    (*(v110 + 8))(v106, v111);
    return 0;
  }

  v57 = v54;
  v58 = [v54 keyBlob];
  if (!v58)
  {

    goto LABEL_24;
  }

  v100 = v57;
  v59 = v58;
  v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v97 = decodeCertificate(fromDER:)();
  v98 = v60;
  v99 = v62;
  v66 = v105;
  defaultLogger()();
  v67 = v110;
  v68 = *(v110 + 16);
  v69 = v103;
  v96 = v110 + 16;
  v95 = v68;
  v68(v103, v106, v111);
  v70 = v38;

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v74 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *&v112 = v94;
    *v74 = 136315394;
    *(v74 + 4) = sub_100141FE4(v101, v70, &v112);
    *(v74 + 12) = 2080;
    sub_100586A3C(&qword_100845DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v93 = v71;
    v92 = v72;
    v75 = v111;
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v77;
    v110 = *(v67 + 8);
    (v110)(v69, v75);
    v79 = sub_100141FE4(v76, v78, &v112);

    *(v74 + 14) = v79;
    v80 = v93;
    _os_log_impl(&_mh_execute_header, v93, v92, "MobileDocumentReaderIdentityKey successfully initialized with applicationIdentifier %s and installationIdentifier %s", v74, 0x16u);
    swift_arrayDestroy();

    v56 = v107;

    (*(v15 + 8))(v105, v109);
    v81 = v75;
  }

  else
  {

    v82 = v111;
    v110 = *(v67 + 8);
    (v110)(v69, v111);
    (*(v15 + 8))(v66, v109);
    v81 = v82;
  }

  v83 = v101;
  v84 = v70;
  v85 = v104;
  v86 = v106;
  v95(v104, v106, v81);
  type metadata accessor for SESKeystore();
  swift_allocObject();
  v87 = SESKeystore.init()();
  v113 = type metadata accessor for DateProvider();
  v114 = &protocol witness table for DateProvider;
  sub_100032DBC(&v112);
  DateProvider.init()();

  sub_10000B90C(v108, v56);
  (v110)(v86, v81);
  type metadata accessor for MobileDocumentReaderIdentityKey(0);
  v88 = swift_allocObject();
  *(v88 + 16) = v83;
  *(v88 + 24) = v84;
  v53((v88 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_installationIdentifier), v85, v81);
  v89 = (v88 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
  v90 = v99;
  *v89 = v98;
  v89[1] = v90;
  *(v88 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_attestationCertificate) = v97;
  *(v88 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keystore) = v87;
  sub_10001F358(&v112, v88 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider);
  return v88;
}

uint64_t sub_100586A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100586A84(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StoredIdentityDocumentApplicationInstallation();
  v4 = static StoredIdentityDocumentApplicationInstallation.fetchRequest()();
  sub_1005775E0();
  sub_100007224(&unk_1008483D0, &unk_1006E83E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF740;
  v6 = &type metadata for String;
  *(v5 + 56) = &type metadata for String;
  v7 = sub_10057762C();
  *(v5 + 32) = 0xD000000000000015;
  *(v5 + 40) = 0x80000001006FDC70;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;

  v8 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v8];

  [v4 setFetchLimit:1];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v13)
  {

    return v6;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v11 = result;
  v12 = _CocoaArrayWrapper.endIndex.getter();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v6 = v10;

    return v6;
  }

  __break(1u);
  return result;
}

id sub_100586C6C(uint64_t a1, void *a2)
{
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  type metadata accessor for StoredMobileDocumentRegistration();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v2 + 16)];
  MobileDocumentRegistration.documentIdentifier.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setDocumentIdentifier:v8];

  MobileDocumentRegistration.documentType.getter();
  v9 = String._bridgeToObjectiveC()();

  [v7 setDocumentType:v9];

  MobileDocumentRegistration.invalidationDate.getter();
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v6, 1, v10) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v6, v10);
  }

  [v7 setInvalidationDate:isa];

  MobileDocumentRegistration.authorityKeyIdentifiers.getter();
  v13 = Array._bridgeToObjectiveC()().super.isa;

  [v7 setAuthorityKeyIdentifiers:v13];

  [v7 setApplicationInstallation:a2];
  [a2 addMobileDocumentRegistrationsObject:v7];
  return v7;
}

id sub_100586EA0()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v19[0] = 0;
  if ([v5 save:v19])
  {
    return v19[0];
  }

  v7 = v19[0];
  v8 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  v9._countAndFlagsBits = 0xD000000000000042;
  v9._object = 0x80000001007224F0;
  String.append(_:)(v9);
  v18[6] = v8;
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  _print_unlocked<A, B>(_:_:)();
  v18[1] = v19[0];
  (*(v2 + 104))(v4, enum case for DIPError.Code.coreDataErrorMobileDocumentRegistrationSaveFailed(_:), v1);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v10 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006BF520;
  v13 = v12 + v11;
  v14 = (v13 + v10[14]);
  v15 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
  v16 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v16 - 8) + 104))(v13, v15, v16);
  swift_getErrorValue();
  swift_errorRetain();
  v17 = dispatch thunk of Error._code.getter();
  v14[3] = &type metadata for Int;
  v14[4] = &protocol witness table for Int;
  *v14 = v17;
  sub_10003C9C0(v12);
  swift_setDeallocating();
  sub_100224AFC(v13);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_100588194(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

void *sub_1005872A0@<X0>(void *a1@<X8>)
{
  result = sub_10054C274();
  if (!v1)
  {
    v4 = result;
    v5 = [result newBackgroundContext];

    type metadata accessor for MobileDocumentRegistrationDataContext();
    result = swift_allocObject();
    result[2] = v5;
    *a1 = result;
  }

  return result;
}

uint64_t sub_10058730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100587334, 0, 0);
}

uint64_t sub_100587334()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1005832E0;
  v6 = v0[5];
  v7 = v0[2];

  return AsyncCoreDataContainer.write<A>(_:)(v7, &unk_1006E88B0, v4, v6);
}

uint64_t sub_100587434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10058745C, 0, 0);
}

uint64_t sub_10058745C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1005832E0;
  v6 = v0[5];
  v7 = v0[2];

  return AsyncCoreDataContainer.read<A>(_:)(v7, &unk_1006E8898, v4, v6);
}

uint64_t sub_10058755C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100587584, 0, 0);
}

uint64_t sub_100587584()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1005832E0;
  v6 = v0[5];
  v7 = v0[2];

  return AsyncCoreDataContainer.performWrite<A>(_:)(v7, sub_10058472C, v4, v6);
}

uint64_t sub_100587684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1005876AC, 0, 0);
}

uint64_t sub_1005876AC()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100583898;
  v6 = v0[5];
  v7 = v0[2];

  return AsyncCoreDataContainer.performRead<A>(_:)(v7, sub_100584440, v4, v6);
}

uint64_t sub_1005877D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v4 + 16) = v9;
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;

  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_100584764;

  return sub_10058730C(a1, &unk_1006E88A0, v9, a4);
}

uint64_t sub_1005878D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v4 + 16) = v9;
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;

  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_100584764;

  return sub_100587434(a1, &unk_1006E8880, v9, a4);
}

uint64_t sub_1005879D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v4 + 16) = v9;
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;

  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_100584764;

  return sub_10058755C(a1, sub_100584768, v9, a4);
}

uint64_t sub_100587ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v4 + 16) = v9;
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;

  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_100583F74;

  return sub_100587684(a1, sub_100584410, v9, a4);
}

uint64_t sub_100587BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100587CA8, 0, 0);
}

uint64_t sub_100587CA8()
{
  v1 = v0[9];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[10] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  sub_100577FA0(v1);

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_100578F8C;
  v7 = v0[9];
  v8 = v0[5];
  v9 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v7, sub_10057A074, v5, v8);
}

uint64_t sub_100587DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100027B9C;

  return sub_100587BE0(a1, a2, a3, a4);
}

uint64_t sub_100587EEC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100587F24(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_100583B60(a1, a2, v6);
}

uint64_t sub_100587FF4(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_10058341C(a1, a2, v6);
}

uint64_t sub_1005880C4(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100027B9C;

  return sub_10058341C(a1, a2, v6);
}

uint64_t sub_100588194(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005881FC()
{
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006BF740;
  *(v0 + 32) = static DaemonDefaultsKeys.bootstrapURL.getter();
  *(v0 + 40) = v1;
  result = static DaemonDefaultsKeys.environmentName.getter();
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  qword_1008486A0 = v0;
  return result;
}

uint64_t sub_100588260()
{
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006BF520;
  result = static SharedInternalDefaultsKeys.doNotRequireHSA2.getter();
  *(v0 + 32) = result;
  *(v0 + 40) = v2;
  qword_1008486A8 = v0;
  return result;
}

uint64_t sub_1005882BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "identityProofing";
  v4 = 0xD00000000000001CLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (v2 == 1)
  {
    v6 = "identityProofing";
  }

  else
  {
    v6 = "randomizedBackgroundActivity";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "PhotoID";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = "randomizedBackgroundActivity";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "PhotoID";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_100588394@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10058A164(*a1);
  *a2 = result;
  return result;
}

void sub_1005883C4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "identityProofing";
  v4 = 0xD00000000000001CLL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = "randomizedBackgroundActivity";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "PhotoID";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

Swift::Int sub_100588420()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005884BC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100588544(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005885F8()
{
  if (qword_100832C98 != -1)
  {
    swift_once();
  }

  v1 = off_1008475C8;
  os_unfair_lock_lock(off_1008475C8 + 6);
  v2 = *(v1 + 2);
  v0[2] = v2;

  os_unfair_lock_unlock(v1 + 6);
  v3 = swift_task_alloc();
  v0[3] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = 1;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_100588748;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x6361436E61656C63, 0xEE00293A5F286568, sub_10058A0F0, v3, &type metadata for () + 8);
}

uint64_t sub_100588748()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1005888C8;
  }

  else
  {

    v2 = sub_100588864;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100588864()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005888C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100588954()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[3] = v2;
  if (v2)
  {
    v0[4] = 0;
    v3 = *(v1 + 32);
    v4 = off_100817828[v3];
    v5 = off_100817840[v3];
    v9 = (v5[1] + *v5[1]);
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_100588AC8;

    return v9(v4, v5);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100588AC8()
{

  return _swift_task_switch(sub_100588BC4, 0, 0);
}

uint64_t sub_100588BC4()
{
  v1 = v0[4] + 1;
  if (v1 == v0[3])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[4] = v1;
    v4 = *(v0[2] + v1 + 32);
    v5 = off_100817828[v4];
    v6 = off_100817840[v4];
    v8 = (v6[1] + *v6[1]);
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_100588AC8;

    return v8(v5, v6);
  }
}

uint64_t sub_100588D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003D8DC(_swiftEmptyArrayStorage);
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = objc_opt_self();
      v7 = (a1 + 40);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;

        v10 = [v6 standardUserDefaults];
        v11 = String._bridgeToObjectiveC()();
        v12 = [v10 valueForKey:v11];

        if (!v12)
        {

          goto LABEL_5;
        }

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_10001F2EC(&v74, &v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v70[0] = v4;
        v14 = sub_10003ADCC(v9, v8);
        v16 = *(v4 + 16);
        v17 = (v15 & 1) == 0;
        v18 = __OFADD__(v16, v17);
        v19 = v16 + v17;
        if (v18)
        {
          goto LABEL_54;
        }

        v20 = v15;
        if (*(v4 + 24) >= v19)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v24 = v14;
            sub_10016F6B4();
            v14 = v24;
            if (v20)
            {
LABEL_13:
              v22 = v14;

              v4 = *&v70[0];
              v23 = (*(*&v70[0] + 56) + 32 * v22);
              sub_10000BB78(v23);
              sub_10001F348(&v71, v23);
              sub_10000BB78(&v74);
              goto LABEL_5;
            }

            goto LABEL_15;
          }
        }

        else
        {
          sub_100166280(v19, isUniquelyReferenced_nonNull_native);
          v14 = sub_10003ADCC(v9, v8);
          if ((v20 & 1) != (v21 & 1))
          {
            goto LABEL_58;
          }
        }

        if (v20)
        {
          goto LABEL_13;
        }

LABEL_15:
        v4 = *&v70[0];
        *(*&v70[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
        v25 = (*(v4 + 48) + 16 * v14);
        *v25 = v9;
        v25[1] = v8;
        sub_10001F348(&v71, (*(v4 + 56) + 32 * v14));
        sub_10000BB78(&v74);
        v26 = *(v4 + 16);
        v18 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v18)
        {
          goto LABEL_56;
        }

        *(v4 + 16) = v27;
LABEL_5:
        v7 += 2;
        --v5;
      }

      while (v5);
    }
  }

  if (_isInternalBuild.getter())
  {
    if (a2)
    {
      v28 = *(a2 + 16);
      if (v28)
      {
        v29 = objc_opt_self();
        v30 = (a2 + 40);
        do
        {
          v32 = *(v30 - 1);
          v31 = *v30;

          v33 = [v29 standardUserDefaults];
          v34 = String._bridgeToObjectiveC()();
          v35 = [v33 valueForKey:v34];

          if (!v35)
          {

            goto LABEL_22;
          }

          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_10001F2EC(&v74, &v71);
          v36 = swift_isUniquelyReferenced_nonNull_native();
          *&v70[0] = v4;
          v37 = sub_10003ADCC(v32, v31);
          v39 = *(v4 + 16);
          v40 = (v38 & 1) == 0;
          v18 = __OFADD__(v39, v40);
          v41 = v39 + v40;
          if (v18)
          {
            goto LABEL_55;
          }

          v42 = v38;
          if (*(v4 + 24) >= v41)
          {
            if ((v36 & 1) == 0)
            {
              v46 = v37;
              sub_10016F6B4();
              v37 = v46;
              if (v42)
              {
LABEL_30:
                v44 = v37;

                v4 = *&v70[0];
                v45 = (*(*&v70[0] + 56) + 32 * v44);
                sub_10000BB78(v45);
                sub_10001F348(&v71, v45);
                sub_10000BB78(&v74);
                goto LABEL_22;
              }

              goto LABEL_32;
            }
          }

          else
          {
            sub_100166280(v41, v36);
            v37 = sub_10003ADCC(v32, v31);
            if ((v42 & 1) != (v43 & 1))
            {
              goto LABEL_58;
            }
          }

          if (v42)
          {
            goto LABEL_30;
          }

LABEL_32:
          v4 = *&v70[0];
          *(*&v70[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
          v47 = (*(v4 + 48) + 16 * v37);
          *v47 = v32;
          v47[1] = v31;
          sub_10001F348(&v71, (*(v4 + 56) + 32 * v37));
          sub_10000BB78(&v74);
          v48 = *(v4 + 16);
          v18 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v18)
          {
            goto LABEL_57;
          }

          *(v4 + 16) = v49;
LABEL_22:
          v30 += 2;
          --v28;
        }

        while (v28);
      }
    }
  }

  v50 = [objc_opt_self() mainBundle];
  v51 = [v50 bundleIdentifier];

  if (v51)
  {
    v52 = [objc_opt_self() standardUserDefaults];
    [v52 removePersistentDomainForName:v51];
  }

  v53 = 0;
  v54 = 1 << *(v4 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v4 + 64);
  v57 = (v54 + 63) >> 6;
  if (v56)
  {
    while (1)
    {
      v58 = v53;
LABEL_47:
      v61 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v62 = v61 | (v58 << 6);
      v63 = (*(v4 + 48) + 16 * v62);
      v65 = *v63;
      v64 = v63[1];
      sub_10001F2EC(*(v4 + 56) + 32 * v62, v70);
      *&v71 = v65;
      *(&v71 + 1) = v64;
      sub_10001F348(v70, &v72);

      v60 = v58;
LABEL_48:
      v74 = v71;
      v75[0] = v72;
      v75[1] = v73;
      if (!*(&v71 + 1))
      {
      }

      sub_10001F348(v75, &v71);
      v66 = [objc_opt_self() standardUserDefaults];
      sub_10000BA08(&v71, *(&v72 + 1));
      v67 = _bridgeAnythingToObjectiveC<A>(_:)();
      v68 = String._bridgeToObjectiveC()();

      [v66 setObject:v67 forKey:v68];

      swift_unknownObjectRelease();
      sub_10000BB78(&v71);
      v53 = v60;
      if (!v56)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
LABEL_40:
    if (v57 <= v53 + 1)
    {
      v59 = v53 + 1;
    }

    else
    {
      v59 = v57;
    }

    v60 = v59 - 1;
    while (1)
    {
      v58 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v58 >= v57)
      {
        v56 = 0;
        v72 = 0u;
        v73 = 0u;
        v71 = 0u;
        goto LABEL_48;
      }

      v56 = *(v4 + 64 + 8 * v58);
      ++v53;
      if (v56)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100589394(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for TimeoutError();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_1005894F8, 0, 0);
}

uint64_t sub_1005894F8(uint64_t a1)
{
  v37 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[20];
  v6 = v1[12];
  v7 = v1[13];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136315138;
    v10 = Array.description.getter();
    v12 = sub_100141FE4(v10, v11, &v36);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "DeleteUtility deleteData called with entityTypes %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[21] = v13;
  if (v1[8])
  {

    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "DeleteUtility deleteData attempting to delete legacy SQL store", v16, 2u);
    }

    v17 = v1[19];
    v18 = v1[12];

    v13(v17, v18);
    OS_dispatch_queue.sync<A>(execute:)();
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v1[18];
    v31 = v1[12];
    if (v29)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "DeleteUtility deleteData successfully deleted legacy SQL store", v32, 2u);
    }

    else
    {
    }

    v25 = v30;
    v26 = v31;
  }

  else
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v1[16];
    v23 = v1[12];
    if (v21)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "DeleteUtility deleteData sqliteLocalStore is nil, skipping deletion.", v24, 2u);
    }

    v25 = v22;
    v26 = v23;
  }

  v13(v25, v26);
  v33 = swift_task_alloc();
  v1[22] = v33;
  *v33 = v1;
  v33[1] = sub_100589A28;
  v34 = v1[7];

  return sub_100588934(v34);
}

uint64_t sub_100589A28()
{

  return _swift_task_switch(sub_100589B24, 0, 0);
}

uint64_t sub_100589B24()
{
  type metadata accessor for DIPKeystoreKeychain();
  static DIPKeystoreKeychain.deleteAll()();
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  [qword_100882498 removeAllCachedResponses];
  if (qword_100832CB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1008486A0;
  if (qword_100832CB8 != -1)
  {
    v4 = qword_1008486A0;
    swift_once();
    v1 = v4;
  }

  sub_100588D40(v1, qword_1008486A8);
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_100589CB0;
  v3.n128_u64[0] = 8.0;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v3);
}

uint64_t sub_100589CB0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100589E84;
  }

  else
  {
    v2 = sub_100589DC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100589DC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100589E84()
{
  v0[5] = v0[24];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {

    defaultLogger()();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 134349056;
      *(v3 + 4) = 0x4020000000000000;
      _os_log_impl(&_mh_execute_header, v1, v2, "all ODN cleanup timed out after %{public}f seconds", v3, 0xCu);
    }

    v4 = v0[21];
    v5 = v0[15];
    v6 = v0[12];
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];

    v4(v5, v6);
    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v10 = v0[21];
    v11 = v0[14];
    v12 = v0[12];

    defaultLogger()();
    DIPLogError(_:message:log:)();

    v10(v11, v12);
  }

  v13 = v0[1];

  return v13();
}

unint64_t sub_10058A110()
{
  result = qword_1008486B0;
  if (!qword_1008486B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008486B0);
  }

  return result;
}

unint64_t sub_10058A164(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FC238, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_10058A1C0(uint64_t a1)
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithEntityName:v4];

  v6 = *(a1 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v7 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v8 = sub_10057A0B4(v7);

    if (v8)
    {
      if (v8 >> 62)
      {
        goto LABEL_16;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v10 = 0;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_15;
            }

            v11 = *(v8 + 8 * v10 + 32);
          }

          v12 = v11;
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          [v6 deleteObject:v11];

          ++v10;
          if (v13 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        ;
      }

LABEL_17:
    }

    type metadata accessor for StoredUploadAsset();
    v14 = static StoredUploadAsset.fetchRequest()();
    v15 = NSManagedObjectContext.fetch<A>(_:)();

    if (v15 >> 62)
    {
      goto LABEL_30;
    }

    for (j = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
    {
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        [v6 deleteObject:v18];

        ++v17;
        if (v20 == j)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

LABEL_31:

    type metadata accessor for StoredPrearmTrust();
    v21 = static StoredPrearmTrust.fetchRequest()();
    v22 = NSManagedObjectContext.fetch<A>(_:)();

    if (v22 >> 62)
    {
      goto LABEL_43;
    }

    for (k = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = _CocoaArrayWrapper.endIndex.getter())
    {
      v24 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        [v6 deleteObject:v25];

        ++v24;
        if (v27 == k)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:

    sub_10057BA64();
  }
}

uint64_t sub_10058A538()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_10058A5D8();
}

uint64_t sub_10058A5D8()
{
  v1 = type metadata accessor for Logger();
  v0[43] = v1;
  v0[44] = *(v1 - 8);
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v0[49] = swift_task_alloc();

  return _swift_task_switch(sub_10058A6C4, 0, 0);
}

uint64_t sub_10058A6C4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingDeletionUtility attempting to delete data", v4, 2u);
  }

  v5 = v1[49];
  v6 = v1[43];
  v7 = v1[44];

  v8 = *(v7 + 8);
  v1[50] = v8;
  v8(v5, v6);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v1[51] = v9;
  v10 = v9;

  sub_10057C18C(sub_10058B2E0, v10);

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v11 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v11 + 54);
  sub_1000318FC(&v11[4], (v1 + 10));
  os_unfair_lock_unlock(v11 + 54);
  v12 = v1[20];

  sub_100031918((v1 + 10));
  v13 = *(v12 + 16);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  os_unfair_lock_unlock((v13 + 24));

  if (v14 <= 0)
  {
    v23 = swift_task_alloc();
    v1[52] = v23;
    *v23 = v1;
    v23[1] = sub_10058ABB8;

    return sub_1002A0440();
  }

  else
  {
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "IdentityProofingDeletionUtility attempting to delete acl", v17, 2u);
    }

    v18 = v1[50];
    v19 = v1[48];
    v20 = v1[43];

    v18(v19, v20);
    if (qword_100832C18 != -1)
    {
      swift_once();
    }

    v21 = *(qword_100882220 + 16);
    v1[2] = v1;
    v1[7] = v1 + 54;
    v1[3] = sub_10058AEA8;
    v22 = swift_continuation_init();
    v1[42] = sub_100007224(&qword_1008486C0, &unk_1006DAFB0);
    v1[35] = _NSConcreteStackBlock;
    v1[36] = 1107296256;
    v1[37] = sub_10058DEE8;
    v1[38] = &unk_100817888;
    v1[39] = v22;
    [v21 deleteGlobalAuthACLWithOutcomeCompletion:v1 + 35];

    return _swift_continuation_await(v1 + 2);
  }
}

uint64_t sub_10058ABB8()
{

  return _swift_task_switch(sub_10058ACB4, 0, 0);
}

uint64_t sub_10058ACB4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingDeletionUtility attempting to delete acl", v4, 2u);
  }

  v5 = v1[50];
  v6 = v1[48];
  v7 = v1[43];

  v5(v6, v7);
  if (qword_100832C18 != -1)
  {
    swift_once();
  }

  v8 = *(qword_100882220 + 16);
  v1[2] = v1;
  v1[7] = v1 + 54;
  v1[3] = sub_10058AEA8;
  v9 = swift_continuation_init();
  v1[42] = sub_100007224(&qword_1008486C0, &unk_1006DAFB0);
  v1[35] = _NSConcreteStackBlock;
  v1[36] = 1107296256;
  v1[37] = sub_10058DEE8;
  v1[38] = &unk_100817888;
  v1[39] = v9;
  [v8 deleteGlobalAuthACLWithOutcomeCompletion:v1 + 35];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10058AEA8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 424) = v1;
  if (v1)
  {
    v2 = sub_10058B1D0;
  }

  else
  {
    v2 = sub_10058AFB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10058AFB8(uint64_t a1)
{
  if (*(v1 + 432) == 1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingDeletionUtility phone acl was deleted", v4, 2u);
    }

    v5 = *(v1 + 400);
    v6 = *(v1 + 376);
    v7 = *(v1 + 344);

    v5(v6, v7);
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendBoundBiometricDeletedEvent()();
  }

  else
  {
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v1 + 400);
    v12 = *(v1 + 368);
    v13 = *(v1 + 344);
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "IdentityProofingDeletionUtility no phone acl to delete", v14, 2u);
    }

    else
    {
    }

    v11(v12, v13);
  }

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_10058B1D0(uint64_t a1)
{
  swift_willThrow();

  v2 = v1[50];
  v3 = v1[45];
  v4 = v1[43];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_10058B324()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_10058B3C4();
}

uint64_t sub_10058B3C4()
{
  v1 = type metadata accessor for Logger();
  v0[40] = v1;
  v0[41] = *(v1 - 8);
  v0[42] = swift_task_alloc();

  return _swift_task_switch(sub_10058B480, 0, 0);
}

uint64_t sub_10058B480(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderDeletionUtility attempting to delete data", v4, 2u);
  }

  v6 = *(v1 + 328);
  v5 = *(v1 + 336);
  v7 = *(v1 + 320);

  (*(v6 + 8))(v5, v7);
  type metadata accessor for SESKeystore();
  swift_allocObject();
  *(v1 + 344) = SESKeystore.init()();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v8 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v8 + 54);
  sub_1000318FC(&v8[4], v1 + 16);
  os_unfair_lock_unlock(v8 + 54);
  v9 = *(v1 + 80);

  sub_100031918(v1 + 16);
  *(v1 + 304) = type metadata accessor for MobileDocumentReaderDataContainer();
  *(v1 + 312) = sub_10039469C();
  *(v1 + 280) = v9;
  type metadata accessor for MobileDocumentReaderAuthenticationStorage();
  inited = swift_initStackObject();
  *(v1 + 352) = inited;
  sub_10001F358((v1 + 280), inited + 24);
  v11 = swift_task_alloc();
  *(v1 + 360) = v11;
  *v11 = v1;
  v11[1] = sub_10058B6AC;

  return sub_1003545A4();
}

uint64_t sub_10058B6AC()
{

  return _swift_task_switch(sub_10058B7A8, 0, 0);
}

uint64_t sub_10058B7A8()
{
  v1 = *(v0 + 352);

  swift_setDeallocating();
  sub_10000BB78((v1 + 24));

  v2 = *(v0 + 8);

  return v2();
}

void sub_10058B834(uint64_t a1)
{
  type metadata accessor for StoredRandomizedBackgroundActivity();
  v3 = static StoredRandomizedBackgroundActivity.fetchRequest()();
  v4 = *(a1 + 16);
  v5 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v4 deleteObject:v8];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    sub_10057BA64();
  }
}

uint64_t sub_10058B978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_10058BA18();
}

uint64_t sub_10058BA18()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_10058BAE0, 0, 0);
}

uint64_t sub_10058BAE0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RandomizedBackgroundActivityDeletionUtility attempting to delete data", v4, 2u);
  }

  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];

  (*(v7 + 8))(v5, v6);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v9 = v8;

  sub_10057C18C(sub_10058BCA4, v9);

  v10 = v1[1];

  return v10();
}

id sub_10058BCC0()
{
  result = [*v0 externalizedContext];
  if (result)
  {
    v2 = result;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10058BD44(uint64_t a1)
{
  v8 = 0;
  v2 = [v1 evaluationMechanismsForPolicy:a1 error:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = v2;
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v3;
  }

  else
  {
    v5 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

id sub_10058BE40(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v3 = [v2 evaluationMechanismsForAccessControl:a1 operation:a2 error:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = v3;
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;
  }

  else
  {
    v6 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_10058BF20(uint64_t a1)
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityDocumentType.Category();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  IdentityDocumentType.category.getter();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    return 1;
  }

  if (v9 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    return 2;
  }

  (*(v2 + 104))(v4, enum case for DIPError.Code.unexpectedIDType(_:), v1);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10058C1A8(unsigned __int8 a1, uint64_t a2)
{
  sub_100007224(&qword_1008486C8, &qword_1006E8B18);
  v4 = sub_100007224(&qword_100834928, &qword_1006C0130);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  if (a2 == 3)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1006BF520;
        v52 = *(v4 + 48);
        v53 = enum case for EncryptedMessageEntity.issuer(_:);
        v54 = type metadata accessor for EncryptedMessageEntity();
        (*(*(v54 - 8) + 104))(v51 + v6, v53, v54);
        *(v51 + v6 + v52) = &off_1007FB440;
        v29 = sub_10003F4CC(v51);
        swift_setDeallocating();
        sub_10058CDD4(v51 + v6);
        goto LABEL_13;
      }

      v30 = 2 * v5;
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1006BFF90;
      v31 = v8 + v6;
      v32 = *(v4 + 48);
      v33 = enum case for EncryptedMessageEntity.idvServer(_:);
      v34 = type metadata accessor for EncryptedMessageEntity();
      v35 = *(*(v34 - 8) + 104);
      v35(v31, v33, v34);
      *(v31 + v32) = &off_1007FB468;
      v36 = v31 + v5;
      v37 = *(v4 + 48);
      v35(v36, enum case for EncryptedMessageEntity.issuer(_:), v34);
      *(v36 + v37) = &off_1007FB490;
      v16 = v31 + v30;
      v17 = *(v4 + 48);
      v35(v31 + v30, enum case for EncryptedMessageEntity.livenessReview(_:), v34);
      v18 = &off_1007FB4B8;
    }

    else
    {
      v7 = 2 * v5;
      if (a1 == 2)
      {
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1006BFF90;
        v38 = v8 + v6;
        v39 = *(v4 + 48);
        v40 = enum case for EncryptedMessageEntity.idvServer(_:);
        v41 = type metadata accessor for EncryptedMessageEntity();
        v42 = *(*(v41 - 8) + 104);
        v42(v38, v40, v41);
        *(v38 + v39) = &off_1007FB4E0;
        v43 = v38 + v5;
        v44 = *(v4 + 48);
        v42(v43, enum case for EncryptedMessageEntity.issuer(_:), v41);
        *(v43 + v44) = &off_1007FB508;
        v16 = v38 + v7;
        v17 = *(v4 + 48);
        v42(v38 + v7, enum case for EncryptedMessageEntity.livenessReview(_:), v41);
        v18 = &off_1007FB530;
      }

      else
      {
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1006BFF90;
        v9 = v8 + v6;
        v10 = *(v4 + 48);
        if (a1 == 3)
        {
          v11 = enum case for EncryptedMessageEntity.idvServer(_:);
          v12 = type metadata accessor for EncryptedMessageEntity();
          v13 = *(*(v12 - 8) + 104);
          v13(v9, v11, v12);
          *(v9 + v10) = &off_1007FB558;
          v14 = v9 + v5;
          v15 = *(v4 + 48);
          v13(v14, enum case for EncryptedMessageEntity.issuer(_:), v12);
          *(v14 + v15) = &off_1007FB580;
          v16 = v9 + v7;
          v17 = *(v4 + 48);
          v13(v9 + v7, enum case for EncryptedMessageEntity.livenessReview(_:), v12);
          v18 = &off_1007FB5A8;
        }

        else
        {
          v45 = enum case for EncryptedMessageEntity.idvServer(_:);
          v46 = type metadata accessor for EncryptedMessageEntity();
          v47 = *(*(v46 - 8) + 104);
          v47(v9, v45, v46);
          *(v9 + v10) = &off_1007FB5D0;
          v48 = v9 + v5;
          v49 = *(v4 + 48);
          v47(v48, enum case for EncryptedMessageEntity.issuer(_:), v46);
          *(v48 + v49) = &off_1007FB5F8;
          v16 = v9 + v7;
          v17 = *(v4 + 48);
          v47(v9 + v7, enum case for EncryptedMessageEntity.livenessReview(_:), v46);
          v18 = &off_1007FB620;
        }
      }
    }

    *(v16 + v17) = v18;
    v29 = sub_10003F4CC(v8);
    swift_setDeallocating();
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1006BFE10;
    v20 = v19 + v6;
    v21 = *(v4 + 48);
    v22 = enum case for EncryptedMessageEntity.assessor(_:);
    v23 = type metadata accessor for EncryptedMessageEntity();
    v24 = *(*(v23 - 8) + 104);
    v24(v20, v22, v23);
    *(v20 + v21) = &off_1007FB648;
    v25 = *(v4 + 48);
    v24(v20 + v5, enum case for EncryptedMessageEntity.issuer(_:), v23);
    *(v20 + v5 + v25) = &off_1007FB670;
    v26 = *(v4 + 48);
    v24(v20 + 2 * v5, enum case for EncryptedMessageEntity.idvServer(_:), v23);
    *(v20 + 2 * v5 + v26) = &off_1007FB698;
    v27 = v20 + 3 * v5;
    v28 = *(v4 + 48);
    v24(v27, enum case for EncryptedMessageEntity.livenessReview(_:), v23);
    *(v27 + v28) = &off_1007FB6C0;
    v29 = sub_10003F4CC(v19);
    swift_setDeallocating();
  }

  swift_arrayDestroy();
LABEL_13:
  swift_deallocClassInstance();
  return v29;
}

uint64_t sub_10058C864(uint64_t a1)
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityDocumentType.Category();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  IdentityDocumentType.category.getter();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == enum case for IdentityDocumentType.Category.mDL(_:) || v9 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    return 0xD000000000000025;
  }

  (*(v2 + 104))(v4, enum case for DIPError.Code.unexpectedIDType(_:), v1);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10058CB08(uint64_t a1)
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityDocumentType.Category();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  IdentityDocumentType.category.getter();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == enum case for IdentityDocumentType.Category.mDL(_:) || v9 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    return 0xD000000000000024;
  }

  (*(v2 + 104))(v4, enum case for DIPError.Code.unexpectedIDType(_:), v1);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10058CDD4(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834928, &qword_1006C0130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10058CE3C(uint64_t a1)
{
  v2 = type metadata accessor for ProofingDisplayMessageAction();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v43 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v43 - v14;
  v16 = ProofingDisplayMessage.title.getter();
  if (!v17)
  {
    v30 = v9;
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "IdentityProofingPrecursorPassMessage failed to map action; missing title", v33, 2u);
    }

    v34 = type metadata accessor for ProofingDisplayMessage();
    (*(*(v34 - 8) + 8))(a1, v34);
    (*(v10 + 8))(v15, v30);
    return 0;
  }

  v45 = v16;
  v46 = v17;
  v18 = ProofingDisplayMessage.message.getter();
  if (!v19)
  {
    v35 = v9;

    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "IdentityProofingPrecursorPassMessage failed to map action; missing title", v38, 2u);
    }

    v39 = type metadata accessor for ProofingDisplayMessage();
    (*(*(v39 - 8) + 8))(a1, v39);
    (*(v10 + 8))(v13, v35);
    return 0;
  }

  v20 = v18;
  v43[3] = v19;
  v44 = a1;
  v21 = ProofingDisplayMessage.actions.getter();
  v50 = _swiftEmptyArrayStorage;
  v22 = *(v21 + 16);
  if (v22)
  {
    v43[2] = v20;
    v23 = type metadata accessor for IdentityProofingPrecursorPassMessageAction();
    v26 = *(v3 + 16);
    v25 = v3 + 16;
    v24 = v26;
    v27 = *(v25 + 64);
    v43[1] = v21;
    v28 = v21 + ((v27 + 32) & ~v27);
    v48 = *(v25 + 56);
    v49 = v23;
    v47 = _swiftEmptyArrayStorage;
    v26(v8, v28, v2);
    while (1)
    {
      v24(v6, v8, v2);
      v29 = sub_10058D30C(v6);
      (*(v25 - 8))(v8, v2);
      if (v29)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v47 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v47 = v50;
      }

      v28 += v48;
      if (!--v22)
      {
        break;
      }

      v24(v8, v28, v2);
    }
  }

  v41 = dispatch thunk of IdentityProofingPrecursorPassMessage.__allocating_init(title:message:actions:)();
  v42 = type metadata accessor for ProofingDisplayMessage();
  (*(*(v42 - 8) + 8))(v44, v42);
  return v41;
}

uint64_t sub_10058D30C(uint64_t a1)
{
  v2 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  ProofingDisplayMessageAction.title.getter();
  if (!v10)
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "IdentityProofingPrecursorPassMessageAction failed to map action; missing title", v18, 2u);
    }

    v19 = type metadata accessor for ProofingDisplayMessageAction();
    (*(*(v19 - 8) + 8))(a1, v19);
    (*(v4 + 8))(v9, v3);
    return 0;
  }

  ProofingDisplayMessageAction.actionType.getter();
  IdentityProofingPrecursorPassMessageActionType.init(rawValue:)();
  if (v11)
  {

    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "IdentityProofingPrecursorPassMessageAction failed to map action; missing actionType", v14, 2u);
    }

    v15 = type metadata accessor for ProofingDisplayMessageAction();
    (*(*(v15 - 8) + 8))(a1, v15);
    (*(v4 + 8))(v7, v3);
    return 0;
  }

  ProofingDisplayMessageAction.actionURL.getter();
  v21 = dispatch thunk of IdentityProofingPrecursorPassMessageAction.__allocating_init(title:actionType:actionURL:)();
  v22 = type metadata accessor for ProofingDisplayMessageAction();
  (*(*(v22 - 8) + 8))(a1, v22);
  return v21;
}

uint64_t sub_10058D658(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0xD)
  {
    return qword_1006E8B20[a1];
  }

  v17[2] = 0;
  v17[3] = 0xE000000000000000;
  v17[0] = v2;
  _StringGuts.grow(_:)(97);
  v15._countAndFlagsBits = 0xD00000000000005FLL;
  v15._object = 0x80000001007226C0;
  String.append(_:)(v15);
  v17[1] = a1;
  _print_unlocked<A, B>(_:_:)();
  (*(v7 + 104))(v9, enum case for DIPError.Code.unknownProofingActionStatus(_:), v6);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  (*(v11 + 16))(v16, v13, v10);
  defaultLogger()();
  DIPLogError(_:message:log:)();
  (*(v3 + 8))(v5, v17[0]);
  (*(v11 + 8))(v13, v10);

  return 4;
}

id sub_10058D9B4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v43 - v5;
  v7 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v7 - 8);
  v9 = v43 - v8;
  v10 = IdentityProofingPrecursorPassMessage.title.getter();
  if (!v11)
  {
    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "IdentityProofingPrecursorPassMessage could not be converted to PKIdentityProofingDisplayMessage: missing title", v34, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  v12 = v11;
  v43[3] = v10;
  v13 = IdentityProofingPrecursorPassMessage.message.getter();
  if (!v14)
  {

    defaultLogger()();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "IdentityProofingPrecursorPassMessage could not be converted to PKIdentityProofingDisplayMessage: missing message", v37, 2u);
    }

    (*(v1 + 8))(v6, v0);
    return 0;
  }

  v15 = v13;
  v16 = v14;
  v17 = IdentityProofingPrecursorPassMessage.actions.getter();
  if (!v17)
  {
LABEL_27:
    v38 = objc_allocWithZone(PKIdentityProofingDisplayMessage);
    v39 = String._bridgeToObjectiveC()();

    v40 = String._bridgeToObjectiveC()();

    sub_10058DE9C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v42 = [v38 initWithTitle:v39 message:v40 actions:isa];

    return v42;
  }

  v18 = v17;
  if (!(v17 >> 62))
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_26:

    goto LABEL_27;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (!v19)
  {
    goto LABEL_26;
  }

LABEL_6:
  v43[0] = v15;
  v43[1] = v16;
  v43[2] = v12;
  v45 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v44 = v18 & 0xC000000000000001;
    do
    {
      if (v44)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      IdentityProofingPrecursorPassMessageAction.title.getter();
      v24 = IdentityProofingPrecursorPassMessageAction.actionType.getter();
      if (v24)
      {
        v25 = 2 * (v24 == 1);
      }

      else
      {
        v25 = 1;
      }

      IdentityProofingPrecursorPassMessageAction.actionURL.getter();
      v26 = String._bridgeToObjectiveC()();

      v27 = type metadata accessor for URL();
      v28 = *(v27 - 8);
      v30 = 0;
      if ((*(v28 + 48))(v9, 1, v27) != 1)
      {
        URL._bridgeToObjectiveC()(v29);
        v30 = v31;
        (*(v28 + 8))(v9, v27);
      }

      ++v21;
      [objc_allocWithZone(PKIdentityProofingDisplayMessageAction) initWithTitle:v26 actionType:v25 actionURL:v30];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v19 != v21);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

unint64_t sub_10058DE9C()
{
  result = qword_1008486D0;
  if (!qword_1008486D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008486D0);
  }

  return result;
}

uint64_t sub_10058DEE8(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10058DFB4()
{
  v1[18] = v0;
  v2 = type metadata accessor for Logger();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_10058E0D4, 0, 0);
}

uint64_t sub_10058E0D4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DIPACLCleanerUpper deleteBoundACL", v4, 2u);
  }

  v5 = v1[29];
  v6 = v1[19];
  v7 = v1[20];
  v8 = v1[18];

  v9 = *(v7 + 8);
  v1[30] = v9;
  v9(v5, v6);
  v10 = *(*(v8 + 16) + 16);
  v1[2] = v1;
  v1[7] = v1 + 39;
  v1[3] = sub_10058E2A0;
  v11 = swift_continuation_init();
  v1[17] = sub_100007224(&qword_1008486C0, &unk_1006DAFB0);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10058DEE8;
  v1[13] = &unk_100817968;
  v1[14] = v11;
  [v10 deleteGlobalAuthACLWithOutcomeCompletion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10058E2A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_10058E664;
  }

  else
  {
    v2 = sub_10058E3B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10058E3B0(uint64_t a1)
{
  v2 = *(v1 + 312);
  *(v1 + 313) = v2;
  if (v2 == 1)
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "DIPACLCleanerUpper phone acl was deleted", v5, 2u);
    }

    v6 = *(v1 + 240);
    v7 = *(v1 + 224);
    v8 = *(v1 + 152);

    v6(v7, v8);
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendBoundBiometricDeletedEvent()();
  }

  else
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v1 + 240);
    v13 = *(v1 + 216);
    v14 = *(v1 + 152);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "DIPACLCleanerUpper no phone acl to delete", v15, 2u);
    }

    v12(v13, v14);
  }

  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Will attempt to delete all the proofing sessions in progress as the bound Auth ACL is deleted...", v18, 2u);
  }

  v19 = *(v1 + 240);
  v20 = *(v1 + 208);
  v21 = *(v1 + 152);
  v22 = *(v1 + 144);

  v19(v20, v21);
  *(v1 + 256) = *(v22 + 32);

  v23 = swift_task_alloc();
  *(v1 + 264) = v23;
  *v23 = v1;
  v23[1] = sub_10058E784;

  return sub_10028D628();
}

uint64_t sub_10058E664(uint64_t a1)
{
  swift_willThrow();
  v2 = v1[30];
  v3 = v1[21];
  v4 = v1[19];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_10058E784()
{

  return _swift_task_switch(sub_10058E89C, 0, 0);
}

uint64_t sub_10058E89C(uint64_t a1)
{
  v21 = v1;
  if (*(v1 + 313) == 1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "DIPACLCleanerUpper deleting watch global auth acl", v4, 2u);
    }

    v5 = *(v1 + 240);
    v6 = *(v1 + 200);
    v7 = *(v1 + 152);
    v8 = *(v1 + 144);

    v5(v6, v7);
    *(v1 + 272) = *(v8 + 24);
    v9 = swift_task_alloc();
    *(v1 + 280) = v9;
    *v9 = v1;
    v9[1] = sub_10058EB88;

    return sub_1004C3C74();
  }

  else
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v1 + 240);
    v15 = *(v1 + 176);
    v16 = *(v1 + 152);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100141FE4(0xD000000000000010, 0x8000000100719E40, &v20);
      _os_log_impl(&_mh_execute_header, v11, v12, "No acl deleted in %s", v17, 0xCu);
      sub_10000BB78(v18);
    }

    v14(v15, v16);

    v19 = *(v1 + 8);

    return v19();
  }
}

uint64_t sub_10058EB88()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_10058F0F4;
  }

  else
  {
    v2 = sub_10058EC9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10058EC9C()
{
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v1[1] = sub_10058ED3C;

  return sub_1006738C8();
}

uint64_t sub_10058ED3C(uint64_t a1)
{
  *(*v1 + 304) = a1;

  return _swift_task_switch(sub_10058EE3C, 0, 0);
}

uint64_t sub_10058EE3C(uint64_t a1)
{
  v25 = v1;
  v2 = *(v1 + 304);
  if (v2)
  {
    v3 = [*(v1 + 304) deviceID];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_10058FE8C(v4, v6);

    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v1 + 240);
    v11 = *(v1 + 192);
    v12 = *(v1 + 152);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100141FE4(0xD000000000000010, 0x8000000100719E40, &v24);
      _os_log_impl(&_mh_execute_header, v7, v8, "Deleted ACL in %s", v13, 0xCu);
      sub_10000BB78(v14);
    }

    v10(v11, v12);
  }

  else
  {
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v1 + 240);
    v19 = *(v1 + 184);
    v20 = *(v1 + 152);
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to update prearm trust state for watch because of invalid session", v21, 2u);
    }

    v18(v19, v20);
  }

  v22 = *(v1 + 8);

  return v22();
}

uint64_t sub_10058F0F4(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[21];
  v4 = v1[19];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v4);

  v5 = v1[1];

  return v5();
}

void sub_10058F208(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10057DC18(a2, a3);
  if (!v3)
  {
    v11 = v10;
    if (v10)
    {
      sub_10058184C(1);
      sub_10057BA64();
      defaultLogger()();

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v20 = v13;
        v15 = v14;
        v16 = swift_slowAlloc();
        v19 = v12;
        v17 = v16;
        v21 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_100141FE4(a2, a3, &v21);
        v18 = v19;
        _os_log_impl(&_mh_execute_header, v19, v20, "Successfully updated prearm trust to be deleted for watch with pairingID: %s", v15, 0xCu);
        sub_10000BB78(v17);
      }

      else
      {
      }

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_10058F428()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10058F544, 0, 0);
}

uint64_t sub_10058F544()
{
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v0[10] = v1;
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v1;
  v6 = swift_allocObject();
  v0[11] = v6;
  *(v6 + 16) = sub_10058FDDC;
  *(v6 + 24) = v5;
  v7 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v8 = *(v3 + 104);

  v8(v2, v7, v4);

  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_10058F720;
  v10 = v0[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v10, sub_10058FE30, v6, &type metadata for Int);
}

uint64_t sub_10058F720()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v3 = sub_10058FA68;
  }

  else
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v2[14] = v2[2];
    v3 = sub_10058F8A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10058F8A0()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10058F934;

  return sub_100179764();
}

uint64_t sub_10058F934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v7[16] = a1;
  v7[17] = v3;

  if (v3)
  {
    v8 = sub_10058FC50;
  }

  else
  {
    v7[18] = a3;
    v7[19] = a2;
    v8 = sub_10058FAEC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10058FA68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10058FAEC()
{
  v1 = v0[19];
  if (v1 <= 0 && v0[14] < 1)
  {

    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "fetchCredentialUUIDsForAuthACL: no bound credential present", v7, 2u);
    }

    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];

    (*(v9 + 8))(v8, v10);
    v1 = 0;
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = v0[18];
    v4 = v0[16];
  }

  v11 = v0[1];

  return v11(v4, v1, v3);
}

uint64_t sub_10058FC50()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10058FCC8(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredPrearmTrust();
  v3 = static StoredPrearmTrust.fetchRequest()();
  v4 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a1 = v5;
  }
}

uint64_t sub_10058FD70()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10058FDF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10058FE30@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_10058FE8C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v29[3] = *(v4 - 8);
  v29[4] = v4;
  __chkstk_darwin(v4);
  v29[6] = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError();
  v29[7] = *(v6 - 8);
  v29[8] = v6;
  __chkstk_darwin(v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v29[9] = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v29[5] = v29 - v14;
  __chkstk_darwin(v13);
  v16 = v29 - v15;
  defaultLogger()();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = os_log_type_enabled(v17, v18);
  v29[10] = v8;
  if (v19)
  {
    v20 = v9;
    v21 = swift_slowAlloc();
    v22 = v10;
    v23 = swift_slowAlloc();
    v30 = v23;
    *v21 = 136315138;
    v24 = a1;
    *(v21 + 4) = sub_100141FE4(a1, a2, &v30);
    _os_log_impl(&_mh_execute_header, v17, v18, "Trying to update prearm trust for watch with pairingID: %s", v21, 0xCu);
    sub_10000BB78(v23);

    (*(v22 + 8))(v16, v20);
  }

  else
  {
    v24 = a1;

    (*(v10 + 8))(v16, v9);
  }

  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v26 = v25;
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v24;
  v27[4] = a2;

  sub_10057C18C(sub_100590588, v27);
}

uint64_t sub_100590548()
{

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_1005905A8(unint64_t a1, void *a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = a2;
  v17 = 46;
  v18 = 0xE100000000000000;
  sub_10001F298();
  v8 = StringProtocol.components<A>(separatedBy:)();
  v9 = *(v8 + 16);
  if (v9)
  {
    v7 = *(v8 + 16 + 16 * v9);
    v13 = v8;
    v14 = v8 + 32;
    v15 = 0;
    v16 = 2 * v9 - 1;

    sub_100007224(&qword_1008487C0, &unk_1006E8BE8);
    sub_100591CB4();
    BidirectionalCollection<>.joined(separator:)();
    swift_unknownObjectRelease();
  }

  else
  {

    v13 = 0;
    v14 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v13 = 0xD00000000000001BLL;
    v14 = 0x80000001007228E0;
    v10._countAndFlagsBits = a1;
    v10._object = a2;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 41;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    (*(v5 + 104))(v7, enum case for DIPError.Code.invalidStoredData(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_10059083C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100007224(&unk_100849FD0, &qword_1006E8380);
  v8 = *(v7 - 8);
  v44 = v7;
  v45 = v8;
  __chkstk_darwin(v7);
  v10 = &v40 - v9;
  v11 = type metadata accessor for VerifiedClaim(0);
  v47 = v11;
  v12 = *(a1 + *(v11 + 20));
  v13 = *(v12 + 104);
  if (v13)
  {
    v14 = *(v12 + 112);
    if (v14)
    {

      v15 = sub_100590BA4(v13, a2);
      if (v3)
      {
      }

      v26 = v16;
      v43 = v15;
      v27 = sub_100590BA4(v14, a2);
      v29 = v28;
      v42 = v27;

      if ((v26 | v29))
      {
        v31 = *(v12 + 16);
        v30 = *(v12 + 24);
        v32 = *(v12 + 40);
        v41 = *(v12 + 32);
        v33 = *(v12 + 120);
        type metadata accessor for MerkleTreeDetached();
        v34 = swift_allocObject();
        v12 = v34;
        *(v34 + 16) = v31;
        *(v34 + 24) = v30;
        *(v34 + 32) = v41;
        *(v34 + 40) = v32;
        *(v34 + 48) = 0u;
        *(v34 + 64) = 0u;
        *(v34 + 80) = 0u;
        v35 = v42;
        v36 = v43;
        *(v34 + 96) = 0;
        *(v34 + 104) = v36;
        *(v34 + 112) = v35;
      }

      else
      {

        v38 = *(v12 + 16);
        v37 = *(v12 + 24);
        v39 = *(v12 + 40);
        v43 = *(v12 + 32);
        v33 = *(v12 + 120);
        type metadata accessor for MerkleTreeDetached();
        v34 = swift_allocObject();
        v12 = v34;
        *(v34 + 16) = v38;
        *(v34 + 24) = v37;
        *(v34 + 32) = v43;
        *(v34 + 40) = v39;
        *(v34 + 48) = 0u;
        *(v34 + 64) = 0u;
        *(v34 + 80) = 0u;
        *(v34 + 96) = 0u;
        *(v34 + 112) = 0;
      }

      *(v34 + 120) = v33;
      goto LABEL_8;
    }
  }

  v18 = *(v12 + 24);
  v46[0] = *(v12 + 16);
  v46[1] = v18;
  __chkstk_darwin(v11);
  *(&v40 - 2) = v46;
  if ((sub_10035C8E4(sub_1000307C0, (&v40 - 4), a2) & 1) == 0)
  {
    v20 = *(v12 + 16);
    v19 = *(v12 + 24);
    v21 = a1;
    v22 = a3;
    v23 = *(v12 + 32);
    v24 = *(v12 + 40);
    v43 = v10;
    v25 = *(v12 + 120);
    type metadata accessor for MerkleTreeDetached();
    v12 = swift_allocObject();
    *(v12 + 16) = v20;
    *(v12 + 24) = v19;
    *(v12 + 32) = v23;
    *(v12 + 40) = v24;
    a3 = v22;
    a1 = v21;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0;
    *(v12 + 120) = v25;
    v10 = v43;
LABEL_8:

    goto LABEL_9;
  }

LABEL_9:
  (*(v45 + 16))(v10, a1, v44);
  sub_1000BD460();
  sub_1000BD4B4();
  result = JWSSignedJSON.init(_:)();
  *(a3 + *(v47 + 20)) = v12;
  return result;
}

unint64_t sub_100590BA4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 120);
  if (v11)
  {
    goto LABEL_2;
  }

  v28 = *(a1 + 104);
  if (!v28)
  {
    if (!*(a1 + 112))
    {
      goto LABEL_2;
    }

LABEL_11:
    v68 = 0;
    v69 = 0xE000000000000000;
    v32 = v8;
    _StringGuts.grow(_:)(74);
    v33._countAndFlagsBits = 0x7254656C6B72654DLL;
    v33._object = 0xEB000000005B6565;
    String.append(_:)(v33);
    String.append(_:)(*(a1 + 16));
    v34._countAndFlagsBits = 0xD00000000000003DLL;
    v34._object = 0x8000000100722850;
    String.append(_:)(v34);
    a1 = v69;
    (*(v7 + 104))(v10, enum case for DIPError.Code.invalidClaim(_:), v32);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    v58[1] = 0x80000001007228C0;
    v59 = 153;
    v58[0] = 0xD00000000000001BLL;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return a1;
  }

  v29 = *(a1 + 112);
  if (!v29)
  {
    goto LABEL_11;
  }

  v30 = sub_100590BA4(v28, a2);
  if (v2)
  {

    return a1;
  }

  v14 = v30;
  v70 = v31;
  v54 = sub_100590BA4(v29, a2);
  v56 = v55;
  v3 = 0;

  if ((v70 | v56))
  {
    v12 = 1;
    v13 = v54;
    goto LABEL_3;
  }

LABEL_2:
  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_3:
  v70 = v11;
  v15 = *(a1 + 104);
  v66 = v14;
  v67 = v13;
  if (v15 || *(a1 + 112))
  {
    v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    v18 = *(a1 + 40);
    v62 = *(a1 + 32);
    v63 = v16;
    v19 = *(a1 + 48);
    v61 = *(a1 + 56);
    v65 = v3;
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v23 = *(a1 + 80);
    v22 = *(a1 + 88);
    v24 = *(a1 + 96);
    LODWORD(v64) = v12;
    type metadata accessor for MerkleTreeDetached();
    a1 = swift_allocObject();
    v25 = v62;
    *(a1 + 16) = v63;
    *(a1 + 24) = v17;
    *(a1 + 32) = v25;
    *(a1 + 40) = v18;
    *(a1 + 48) = v19;
    v26 = v61;
    *(a1 + 56) = v61;
    *(a1 + 64) = v20;
    *(a1 + 72) = v21;
    *(a1 + 80) = v23;
    *(a1 + 88) = v22;
    *(a1 + 96) = v24;
    v27 = v67;
    *(a1 + 104) = v66;
    *(a1 + 112) = v27;
    *(a1 + 120) = v70;

    sub_1000C3308(v19, v26, v20, v21, v23, v22, v24);
  }

  else
  {
    v36 = *(a1 + 16);
    v35 = *(a1 + 24);
    v68 = v36;
    v69 = v35;
    __chkstk_darwin(v8);
    v59 = &v68;
    v37 = sub_10035C8E4(sub_1000F713C, v58, a2);
    v38 = *(a1 + 32);
    v39 = *(a1 + 40);
    if (v37)
    {
      v40 = *(a1 + 48);
      v41 = *(a1 + 56);
      v65 = v3;
      v43 = *(a1 + 64);
      v42 = *(a1 + 72);
      v44 = *(a1 + 80);
      v45 = *(a1 + 88);
      v61 = v40;
      v62 = v44;
      v46 = *(a1 + 96);
      v63 = v41;
      v64 = v46;
      type metadata accessor for MerkleTreeDetached();
      a1 = swift_allocObject();
      *(a1 + 16) = v36;
      *(a1 + 24) = v35;
      *(a1 + 32) = v38;
      *(a1 + 40) = v39;
      v47 = v61;
      v48 = v62;
      v49 = v63;
      *(a1 + 48) = v61;
      *(a1 + 56) = v49;
      *(a1 + 64) = v43;
      *(a1 + 72) = v42;
      v50 = v42;
      *(a1 + 80) = v48;
      *(a1 + 88) = v45;
      v51 = v64;
      v53 = v66;
      v52 = v67;
      *(a1 + 96) = v64;
      *(a1 + 104) = v53;
      *(a1 + 112) = v52;
      *(a1 + 120) = v70;

      sub_1000C3308(v47, v49, v43, v50, v48, v45, v51);
    }

    else
    {
      type metadata accessor for MerkleTreeDetached();
      a1 = swift_allocObject();
      *(a1 + 16) = v36;
      *(a1 + 24) = v35;
      *(a1 + 32) = v38;
      *(a1 + 40) = v39;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = v14;
      *(a1 + 112) = v13;
      *(a1 + 120) = 1;
    }
  }

  return a1;
}

uint64_t sub_100591098(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 40);
    v6 = (result + 40);
    do
    {
      v7 = *(v2 + 16);
      v8 = v4 == v7;
      if (v4 == v7)
      {
        return v8;
      }

      if (v4 >= v7)
      {
        __break(1u);
        goto LABEL_18;
      }

      result = *(v5 - 1);
      if (result != *(v6 - 1) || *v5 != *v6)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          return v8;
        }
      }

      ++v4;
      v5 += 2;
      v6 += 2;
    }

    while (v3 != v4);
  }

  v10 = *(v2 + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL sub_100591154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 40;
  v4 = *(a3 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 16;
    sub_10001F298();

    v6 = StringProtocol.components<A>(separatedBy:)();
    v7 = StringProtocol.components<A>(separatedBy:)();

    v8 = sub_100591098(v7, v6);

    v3 = v5;
  }

  while ((v8 & 1) == 0);
  return v4 != 0;
}

void *sub_100591264(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 56);
    v110 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v3 - 3);
      v6 = *(v3 - 2);
      v118 = v7;
      v119 = v6;
      if (v4)
      {
        v116 = 46;
        v117 = 0xE100000000000000;
        swift_bridgeObjectRetain_n();

        v8._countAndFlagsBits = v5;
        v8._object = v4;
        String.append(_:)(v8);
        v9._countAndFlagsBits = 46;
        v9._object = 0xE100000000000000;
        String.append(_:)(v9);

        v7 = v118;
        v10 = v119;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v10 = v6;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_1003C5110(0, *(v110 + 2) + 1, 1, v110);
      }

      v12 = *(v110 + 2);
      v11 = *(v110 + 3);
      if (v12 >= v11 >> 1)
      {
        v110 = sub_1003C5110((v11 > 1), v12 + 1, 1, v110);
      }

      v3 += 5;

      *(v110 + 2) = v12 + 1;
      v13 = &v110[16 * v12];
      *(v13 + 4) = v7;
      *(v13 + 5) = v10;
      --v2;
    }

    while (v2);
  }

  else
  {
    v110 = _swiftEmptyArrayStorage;
  }

  v14 = *(a1 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claimData);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  v91 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v20 = v19;
    if (!v17)
    {
      break;
    }

LABEL_20:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = v21 | (v19 << 6);
    v23 = (*(v14 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    v26 = (*(v14 + 56) + 96 * v22);
    v27 = v26[1];
    v125[0] = *v26;
    v125[1] = v27;
    v29 = v26[3];
    v28 = v26[4];
    v30 = v26[2];
    *(v126 + 9) = *(v26 + 73);
    v125[3] = v29;
    v126[0] = v28;
    v125[2] = v30;
    v31 = v26[1];
    v127 = *v26;
    v128 = v31;
    v32 = v26[2];
    v33 = v26[3];
    v34 = v26[4];
    *(v131 + 9) = *(v26 + 73);
    v130 = v33;
    v131[0] = v34;
    v129 = v32;
    v118 = v24;
    v119 = v25;
    v122 = v32;
    v123 = v33;
    v124[0] = v34;
    *(v124 + 9) = *(v131 + 9);
    v120 = v127;
    v121 = v128;

    sub_10000BBC4(v125, &v116, &unk_100849FC0, &qword_1006C9540);
    if (sub_100591154(v24, v25, v110))
    {
      sub_10000BBC4(&v118, &v116, &qword_1008487B8, &qword_1006E9E10);
      sub_10000BE18(v125, &unk_100849FC0, &qword_1006C9540);
      sub_10000BBC4(&v118, &v116, &qword_1008487B8, &qword_1006E9E10);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v91;
      v36 = sub_10003ADCC(v24, v25);
      v37 = v91[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_74;
      }

      if (v91[3] >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v100 = v35;
          v105 = v36;
          sub_1001725F4();
          v36 = v105;
          v35 = v100;
        }
      }

      else
      {
        v99 = v35;
        sub_10016B77C(v39, isUniquelyReferenced_nonNull_native);
        v40 = sub_10003ADCC(v24, v25);
        v42 = v41 & 1;
        v35 = v99;
        if ((v99 & 1) != v42)
        {
          goto LABEL_76;
        }

        v36 = v40;
      }

      v91 = v116;
      if (v35)
      {
        sub_100591C44(v125, *(v116 + 56) + 96 * v36);
      }

      else
      {
        sub_10016ED88(v36, v24, v25, v125, v116);
      }

      sub_10000BE18(&v118, &qword_1008487B8, &qword_1006E9E10);
    }

    else
    {
      sub_10000BE18(&v118, &qword_1008487B8, &qword_1006E9E10);
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 64 + 8 * v19);
    ++v20;
    if (v17)
    {
      goto LABEL_20;
    }
  }

  v43 = *(a1 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData);
  v44 = 1 << *(v43 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v43 + 64);
  v47 = (v44 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v48 = 0;
  v90 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v49 = v48;
    if (!v46)
    {
      break;
    }

LABEL_39:
    v50 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v51 = v50 | (v48 << 6);
    v52 = (*(v43 + 48) + 16 * v51);
    v54 = *v52;
    v53 = v52[1];
    v55 = (*(v43 + 56) + 96 * v51);
    v56 = v55[1];
    v127 = *v55;
    v128 = v56;
    v58 = v55[3];
    v57 = v55[4];
    v59 = v55[2];
    *(v131 + 9) = *(v55 + 73);
    v130 = v58;
    v131[0] = v57;
    v129 = v59;
    v111 = *v55;
    v112 = v55[1];
    *&v115[9] = *(v55 + 73);
    v114 = v55[3];
    *v115 = v55[4];
    v113 = v55[2];
    v118 = v54;
    v119 = v53;
    v122 = v113;
    v123 = v114;
    v124[0] = *v115;
    *(v124 + 9) = *&v115[9];
    v120 = v111;
    v121 = v112;

    sub_10000BBC4(&v127, &v116, &unk_100849FC0, &qword_1006C9540);
    if (sub_100591154(v54, v53, v110))
    {
      sub_10000BBC4(&v118, &v116, &qword_1008487B8, &qword_1006E9E10);
      sub_10000BE18(&v127, &unk_100849FC0, &qword_1006C9540);
      sub_10000BBC4(&v118, &v116, &qword_1008487B8, &qword_1006E9E10);

      v106 = swift_isUniquelyReferenced_nonNull_native();
      v116 = v90;
      v61 = sub_10003ADCC(v54, v53);
      v62 = v90[2];
      v63 = (v60 & 1) == 0;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
        goto LABEL_75;
      }

      if (v90[3] >= v64)
      {
        if ((v106 & 1) == 0)
        {
          v102 = v60;
          v107 = v61;
          sub_1001725F4();
          v61 = v107;
          v60 = v102;
        }
      }

      else
      {
        v101 = v60;
        sub_10016B77C(v64, v106);
        v65 = sub_10003ADCC(v54, v53);
        v67 = v66 & 1;
        v60 = v101;
        if ((v101 & 1) != v67)
        {
          goto LABEL_76;
        }

        v61 = v65;
      }

      v90 = v116;
      if (v60)
      {
        sub_100591C44(&v127, *(v116 + 56) + 96 * v61);
      }

      else
      {
        sub_10016ED88(v61, v54, v53, &v127, v116);
      }

      sub_10000BE18(&v118, &qword_1008487B8, &qword_1006E9E10);
    }

    else
    {
      sub_10000BE18(&v118, &qword_1008487B8, &qword_1006E9E10);
    }
  }

  while (1)
  {
    v48 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v48 >= v47)
    {

      v68 = *(a1 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_encryptedClaimData);
      if (!v68)
      {

        sub_10003FC48(_swiftEmptyArrayStorage);
        return v91;
      }

      v69 = v68 + 64;
      v70 = 1 << *(v68 + 32);
      v71 = -1;
      if (v70 < 64)
      {
        v71 = ~(-1 << v70);
      }

      v72 = v71 & *(v68 + 64);
      v73 = (v70 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v74 = 0;
      v95 = &_swiftEmptyDictionarySingleton;
      v92 = v73;
      v93 = v68 + 64;
      v94 = v68;
LABEL_55:
      v76 = v74;
      if (!v72)
      {
        goto LABEL_57;
      }

      while (2)
      {
        v77 = v76;
LABEL_60:
        v97 = v77;
        v98 = (v72 - 1) & v72;
        v78 = __clz(__rbit64(v72)) | (v77 << 6);
        v79 = (*(v68 + 48) + 16 * v78);
        v103 = *v79;
        v80 = *(*(v68 + 56) + 8 * v78);
        v81 = *(v110 + 2);
        v109 = v79[1];

        v96 = v80;

        v82 = -1;
        v83 = (v110 + 40);
        while (v82 - v81 != -1)
        {
          if (++v82 >= *(v110 + 2))
          {
            __break(1u);
            goto LABEL_71;
          }

          v84 = v83 + 2;
          v86 = *(v83 - 1);
          v85 = *v83;
          v118 = v103;
          v119 = v109;
          v116 = 46;
          v117 = 0xE100000000000000;
          sub_10001F298();

          v87 = StringProtocol.components<A>(separatedBy:)();
          v118 = v86;
          v119 = v85;
          v116 = 46;
          v117 = 0xE100000000000000;
          v88 = StringProtocol.components<A>(separatedBy:)();

          LOBYTE(v85) = sub_100591098(v88, v87);

          v83 = v84;
          if (v85)
          {
            v75 = swift_isUniquelyReferenced_nonNull_native();
            v118 = v95;
            sub_10016E558(v96, v103, v109, v75);

            v95 = v118;
            v69 = v93;
            v68 = v94;
            v73 = v92;
            v74 = v97;
            v72 &= v72 - 1;
            goto LABEL_55;
          }
        }

        v76 = v97;
        v72 &= v72 - 1;
        v69 = v93;
        v68 = v94;
        v73 = v92;
        if (v98)
        {
          continue;
        }

        break;
      }

LABEL_57:
      while (1)
      {
        v77 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          goto LABEL_73;
        }

        if (v77 >= v73)
        {

          return v91;
        }

        v72 = *(v69 + 8 * v77);
        ++v76;
        if (v72)
        {
          goto LABEL_60;
        }
      }
    }

    v46 = *(v43 + 64 + 8 * v48);
    ++v49;
    if (v46)
    {
      goto LABEL_39;
    }
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100591C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100849FC0, &qword_1006C9540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100591CB4()
{
  result = qword_1008487C8;
  if (!qword_1008487C8)
  {
    sub_10000B870(&qword_1008487C0, &unk_1006E8BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008487C8);
  }

  return result;
}

uint64_t sub_100591D18(uint64_t result, unsigned __int8 a2, uint64_t a3)
{
  v39 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 56);
    v42 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      if (*v4)
      {
        swift_bridgeObjectRetain_n();

        v9._countAndFlagsBits = v6;
        v9._object = v5;
        String.append(_:)(v9);
        v10._countAndFlagsBits = 46;
        v10._object = 0xE100000000000000;
        String.append(_:)(v10);
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1003C5110(0, *(v42 + 2) + 1, 1, v42);
      }

      v12 = *(v42 + 2);
      v11 = *(v42 + 3);
      if (v12 >= v11 >> 1)
      {
        v42 = sub_1003C5110((v11 > 1), v12 + 1, 1, v42);
      }

      v4 += 5;

      *(v42 + 2) = v12 + 1;
      v13 = &v42[16 * v12];
      *(v13 + 4) = v7;
      *(v13 + 5) = v8;
      --v3;
    }

    while (v3);
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
  }

  v14 = *(v39 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v39 + 64;
    v40 = a2;
    v41 = v14;
    v36 = v16;
    do
    {
      v17 = (v16 + 40 * v15);
      v18 = v15;
      while (1)
      {
        if (v18 >= v14)
        {
          __break(1u);
LABEL_44:
          __break(1u);
          return result;
        }

        v15 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_44;
        }

        v20 = *(v17 - 4);
        v19 = *(v17 - 3);
        v21 = *(v17 - 2);
        v38 = *(v17 - 1);
        v22 = *v17;
        v23 = 0x746E656D75636F64;
        if (v40 != 3)
        {
          v23 = 0xD000000000000010;
        }

        v24 = 0x8000000100722930;
        if (v40 == 3)
        {
          v24 = 0xE800000000000000;
        }

        if (v40 == 2)
        {
          v23 = 0x6966697265766E75;
          v24 = 0xEA00000000006465;
        }

        v25 = 1701736302;
        if (v40)
        {
          v25 = 0x6E692D646579656BLL;
        }

        v26 = 0xE400000000000000;
        if (v40)
        {
          v26 = 0xE800000000000000;
        }

        v27 = v40 <= 1 ? v25 : v23;
        v28 = (v40 <= 1 ? v26 : v24);

        v29._countAndFlagsBits = v27;
        v29._object = v28;
        String.append(_:)(v29);

        v30._countAndFlagsBits = 46;
        v30._object = 0xE100000000000000;
        String.append(_:)(v30);
        v31._countAndFlagsBits = v20;
        v31._object = v19;
        String.append(_:)(v31);
        v32 = sub_100591154(0, 0xE000000000000000, v42);

        if (v32)
        {
          break;
        }

        ++v18;
        v17 += 5;
        v14 = v41;
        if (v15 == v41)
        {
          goto LABEL_42;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100173618(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v16 = v36;
      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        result = sub_100173618((v33 > 1), v34 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v34 + 1;
      v35 = &_swiftEmptyArrayStorage[5 * v34];
      v35[4] = v20;
      v35[5] = v19;
      v35[6] = v21;
      v35[7] = v38;
      v35[8] = v22;
      v14 = v41;
    }

    while (v15 != v41);
  }

LABEL_42:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1005920E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_10036E65C();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_100592174(char a1, uint64_t a2, uint64_t *a3)
{
  v63 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v62 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v62 - v14;
  __chkstk_darwin(v13);
  v17 = v62 - v16;
  v18 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers);
  os_unfair_lock_lock((v18 + 24));
  v19 = *(v18 + 16);

  os_unfair_lock_unlock((v18 + 24));
  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      if (a1)
      {

        v21 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctDefaultVoiceNumber);
        os_unfair_lock_lock((v21 + 32));
        v22 = *(v21 + 16);
        v23 = *(v21 + 24);

        os_unfair_lock_unlock((v21 + 32));
        if (v23)
        {
          v24 = sub_1003C5110(0, 1, 1, _swiftEmptyArrayStorage);
          v26 = *(v24 + 2);
          v25 = *(v24 + 3);
          if (v26 >= v25 >> 1)
          {
            v24 = sub_1003C5110((v25 > 1), v26 + 1, 1, v24);
          }

          *(v24 + 2) = v26 + 1;
          v27 = &v24[16 * v26];
          *(v27 + 4) = v22;
          *(v27 + 5) = v23;
          sub_1000DE190(v24, v63);
        }

        else
        {
          defaultLogger()();
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&_mh_execute_header, v51, v52, "no default voice numbers available", v53, 2u);
          }

          v54 = *(v6 + 8);
          v54(v17, v5);
          v55 = v63;
          *v63 = 0;

          if (*v55 && *(*v55 + 16))
          {
            defaultLogger()();
            v56 = Logger.logObject.getter();
            v57 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 0;
              _os_log_impl(&_mh_execute_header, v56, v57, "got PhoneNumber", v58, 2u);
            }

            return (v54)(v15, v5);
          }
        }

        return result;
      }

      v37 = sub_10001F298();
      v62[1] = v19;
      v38 = (v19 + 40);
      v39 = _swiftEmptyArrayStorage;
      while (1)
      {
        v40 = *(v38 - 1);
        v41 = *v38;
        v68 = v40;
        v69 = v41;
        v66 = 48;
        v67 = 0xE100000000000000;
        v64 = 0;
        v65 = 0xE000000000000000;

        v60 = v37;
        v61 = v37;
        v59[1] = v37;
        v59[0] = &type metadata for String;
        v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v44 = v43;
        v45 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v45 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (!v45 || (v46 = v42, v68 = v40, v69 = v41, __chkstk_darwin(v42), v60 = &v68, (sub_10035C8E4(sub_1000F713C, v59, v39) & 1) != 0))
        {
        }

        else
        {

          v47 = HIBYTE(v44) & 0xF;
          if ((v44 & 0x2000000000000000) == 0)
          {
            v47 = v46 & 0xFFFFFFFFFFFFLL;
          }

          if (v47)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_1003C5110(0, *(v39 + 2) + 1, 1, v39);
            }

            v49 = *(v39 + 2);
            v48 = *(v39 + 3);
            if (v49 >= v48 >> 1)
            {
              v39 = sub_1003C5110((v48 > 1), v49 + 1, 1, v39);
            }

            *(v39 + 2) = v49 + 1;
            v50 = &v39[16 * v49];
            *(v50 + 4) = v40;
            *(v50 + 5) = v41;
            goto LABEL_21;
          }
        }

LABEL_21:
        v38 += 2;
        if (!--v20)
        {

          sub_1000DE190(v39, v63);
        }
      }
    }
  }

  defaultLogger()();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "no phone numbers available", v31, 2u);
  }

  v32 = *(v6 + 8);
  v32(v12, v5);
  v33 = v63;
  *v63 = 0;

  if (*v33 && *(*v33 + 16))
  {
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "got PhoneNumber", v36, 2u);
    }

    return (v32)(v9, v5);
  }

  return result;
}

id sub_1005927E0()
{
  result = [objc_allocWithZone(type metadata accessor for DIPDeviceInfo()) init];
  qword_1008823E0 = result;
  return result;
}

uint64_t sub_100592810()
{
  v10 = xmmword_1006D1BF0;
  v12 = 0;
  v11 = 0;
  v1 = *&v0[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_seInfoQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100269F38;
  *(v3 + 24) = v2;
  v9[4] = sub_10057E5F8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10057E264;
  v9[3] = &unk_100817A58;
  v4 = _Block_copy(v9);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_100592998(uint64_t *a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo;
  v4 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo);
  v3 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo + 8);
  v5 = *(v2 + 20);
  LODWORD(v2) = *(v2 + 16);
  v6 = *a1;
  v7 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  v8 = a1 + 2;
  *v8 = v2;
  *(v8 + 4) = v5;
  sub_100596104(v4, v3);

  return sub_10003477C(v6, v7);
}

id sub_100592A18()
{
  ObjectType = swift_getObjectType();
  v31 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v1 = v22 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v28 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_workQueue;
  v4 = sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v22[1] = "Result8@NSError16";
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  v26 = sub_100487608();
  v25 = sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  v27 = sub_1000BA30C(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0, &protocol conformance descriptor for [A]);
  v24 = v2;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v5 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v6 = *(v29 + 104);
  v7 = v31;
  v6(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  v22[0] = v4;
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v23;
  *&v23[v28] = v8;
  v29 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_seInfoQueue;
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v6(v1, v5, v7);
  *&v9[v29] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_ctQueue;
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v6(v1, v5, v31);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v9[v10] = v11;
  v12 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctSubscriptionsInUse;
  sub_100007224(&qword_100848970, &qword_1006E8C58);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *&v9[v12] = v13;
  v14 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers;
  sub_100007224(&qword_100848978, &unk_1006E8C60);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  *&v9[v14] = v15;
  v16 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctDefaultVoiceNumber;
  sub_100007224(&unk_100848980, &qword_1006E7CC8);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *&v9[v16] = v17;
  v18 = &v9[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo];
  *v18 = xmmword_1006D1BF0;
  v18[20] = 0;
  *(v18 + 4) = 0;
  v19 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v11];
  *&v9[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_ctClient] = v19;
  v32.receiver = v9;
  v32.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v32, "init");
  sub_100592EB0();

  return v20;
}

uint64_t sub_100592EB0()
{
  v0 = type metadata accessor for UUID();
  v125 = *(v0 - 8);
  v126 = v0;
  __chkstk_darwin(v0);
  v2 = v117 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v127 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = v117 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v117 - v11;
  v13 = __chkstk_darwin(v10);
  v123 = v117 - v14;
  __chkstk_darwin(v13);
  v16 = v117 - v15;
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "reload CT initiated", v19, 2u);
  }

  v22 = *(v4 + 8);
  v21 = v4 + 8;
  v20 = v22;
  v22(v16, v3);
  v23 = v129;
  v24 = *&v129[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_ctClient];
  [v24 setDelegate:v129];
  v132 = 0;
  v25 = [v24 getUserDefaultVoiceSubscriptionContext:&v132];
  if (!v25)
  {
    v59 = v132;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_34;
  }

  v26 = v25;
  v121 = v12;
  v27 = v132;
  v28 = [v26 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v132 = 0;
  v130 = v24;
  v29 = [v24 getSubscriptionInfoWithError:&v132];
  if (!v29)
  {
    v60 = v132;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v125 + 8))(v2, v126);
    goto LABEL_34;
  }

  v30 = v29;
  v122 = v26;
  v31 = v132;
  v32 = [v30 subscriptionsInUse];

  if (v32)
  {
    sub_10001F8D4(0, &qword_1008410B8, CTXPCServiceSubscriptionContext_ptr);
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v34);
    v117[-2] = v2;

    v132 = sub_100596E68(v35);
    v36 = sub_100596118(sub_100598CB4, &v117[-4]);
    v124 = v20;
    v37 = v132;
    v38 = *&v129[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctSubscriptionsInUse];
    __chkstk_darwin(v36);
    v117[-2] = v37;

    os_unfair_lock_lock((v38 + 24));
    sub_100598C84((v38 + 16));
    v117[0] = 0;
    os_unfair_lock_unlock((v38 + 24));

    v119 = v21;
    v120 = v3;
    v118 = v2;
    v117[1] = v33;
    if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
    {
      goto LABEL_62;
    }

    for (i = *(v37 + 16); ; i = v39)
    {
      v41 = v37;
      v42 = _swiftEmptyArrayStorage;
      v43 = v129;
      v37 = v130;
      if (!i)
      {
        break;
      }

      v132 = _swiftEmptyArrayStorage;
      sub_100172D4C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
      }

      v44 = 0;
      v42 = v132;
      v128 = v41 & 0xC000000000000001;
      while (1)
      {
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v128)
        {
          v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v44 >= *(v41 + 16))
          {
            goto LABEL_61;
          }

          v46 = *(v41 + 8 * v44 + 32);
        }

        v47 = v46;
        v131 = 0;
        v48 = [v37 getPhoneNumber:v46 error:&v131];
        if (!v48)
        {
          v72 = v131;

          _convertNSErrorToError(_:)();

          swift_willThrow();

          goto LABEL_33;
        }

        v49 = v48;
        v50 = v41;
        v51 = v131;
        v52 = [v49 number];

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v132 = v42;
        v57 = v42[2];
        v56 = v42[3];
        if (v57 >= v56 >> 1)
        {
          v39 = sub_100172D4C((v56 > 1), v57 + 1, 1);
          v42 = v132;
        }

        v42[2] = v57 + 1;
        v58 = &v42[2 * v57];
        v58[4] = v53;
        v58[5] = v55;
        ++v44;
        v37 = v130;
        v41 = v50;
        if (v45 == i)
        {
          v43 = v129;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_28:
    v73 = *&v43[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers];
    __chkstk_darwin(v39);
    v117[-2] = v42;
    os_unfair_lock_lock((v73 + 24));
    sub_100598C84((v73 + 16));
    os_unfair_lock_unlock((v73 + 24));

    v132 = 0;
    v74 = v122;
    v75 = [v37 getPhoneNumber:v122 error:&v132];
    if (v75)
    {
      v76 = v75;
      v77 = v132;
      v78 = [v76 number];

      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v43;
      v82 = v81;

      v83 = *&v80[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctDefaultVoiceNumber];
      __chkstk_darwin(v84);
      v117[-2] = v79;
      v117[-1] = v82;
      os_unfair_lock_lock((v83 + 32));
      sub_100598C9C((v83 + 16));
      os_unfair_lock_unlock((v83 + 32));

      os_unfair_lock_lock((v83 + 32));
      v86 = *(v83 + 16);
      v85 = *(v83 + 24);

      os_unfair_lock_unlock((v83 + 32));
      os_unfair_lock_lock((v73 + 24));
      v87 = *(v73 + 16);

      os_unfair_lock_unlock((v73 + 24));

      v88 = v120;
      v89 = v126;
      if (v87)
      {
        v90 = v121;
        if (v87[2])
        {
          v92 = v87[4];
          v91 = v87[5];
        }

        else
        {

          v92 = 0;
          v91 = 0;
        }

        v103 = v124;
        if (v85)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v92 = 0;
        v91 = 0;
        v103 = v124;
        v90 = v121;
        if (v85)
        {
LABEL_42:
          if (v91)
          {
            if (v86 == v92 && v85 == v91)
            {

              v104 = v129;
              goto LABEL_52;
            }

            v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v104 = v129;
            if (v116)
            {
              goto LABEL_52;
            }

            goto LABEL_48;
          }

          v104 = v129;
LABEL_47:

LABEL_48:
          v105 = v123;
          defaultLogger()();
          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            *v108 = 0;
            _os_log_impl(&_mh_execute_header, v106, v107, "WARNING default voice number is not 1st in the list", v108, 2u);

            v109 = v105;
            v88 = v120;
          }

          else
          {

            v109 = v105;
          }

          v103(v109, v88);
LABEL_52:
          defaultLogger()();
          v110 = v104;
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v111, v112))
          {
            v113 = -1;
            v114 = swift_slowAlloc();
            *v114 = 134349056;
            os_unfair_lock_lock((v73 + 24));
            v115 = *(v73 + 16);

            os_unfair_lock_unlock((v73 + 24));
            if (v115)
            {
              v113 = *(v115 + 16);
            }

            v103 = v124;
            *(v114 + 4) = v113;

            _os_log_impl(&_mh_execute_header, v111, v112, "reload CT, total phone numbers = %{public}ld", v114, 0xCu);

            v90 = v121;
          }

          else
          {

            v111 = v110;
          }

          v103(v90, v88);
          return (*(v125 + 8))(v118, v89);
        }
      }

      v104 = v129;
      if (!v91)
      {
        goto LABEL_52;
      }

      goto LABEL_47;
    }

    v93 = v132;

    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_33:
    (*(v125 + 8))(v118, v126);
    v3 = v120;
    v20 = v124;
LABEL_34:
    v94 = v127;
    defaultLogger()();
    swift_errorRetain();
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v124 = v20;
      v98 = v97;
      v99 = swift_slowAlloc();
      v132 = v99;
      *v98 = 136315138;
      swift_getErrorValue();
      v100 = Error.localizedDescription.getter();
      v102 = sub_100141FE4(v100, v101, &v132);

      *(v98 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v95, v96, "error retrieving phone number: %s", v98, 0xCu);
      sub_10000BB78(v99);

      return (v124)(v94, v3);
    }

    else
    {

      return (v20)(v94, v3);
    }
  }

  defaultLogger()();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "No CT Subscriptions in use", v63, 2u);
    v23 = v129;
  }

  v64 = (v20)(v9, v3);
  v65 = v23;
  v66 = *&v23[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctSubscriptionsInUse];
  __chkstk_darwin(v64);
  v117[-2] = 0;
  os_unfair_lock_lock((v66 + 24));
  sub_100598C84((v66 + 16));
  os_unfair_lock_unlock((v66 + 24));
  v67 = *&v65[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers];
  __chkstk_darwin(v68);
  v117[-2] = 0;
  os_unfair_lock_lock((v67 + 24));
  sub_100598C84((v67 + 16));
  os_unfair_lock_unlock((v67 + 24));
  v69 = *&v65[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctDefaultVoiceNumber];
  __chkstk_darwin(v70);
  v117[-2] = 0;
  v117[-1] = 0;
  os_unfair_lock_lock((v69 + 32));
  sub_100598C1C((v69 + 16));
  os_unfair_lock_unlock((v69 + 32));

  return (*(v125 + 8))(v2, v126);
}

BOOL sub_100593CBC(void **a1, void **a2, uint64_t a3)
{
  v5 = sub_100007224(&unk_100848960, &unk_1006E8C30);
  __chkstk_darwin(v5 - 8);
  v29 = &v28 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = *a1;
  v15 = *a2;
  v16 = [v14 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = [v15 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = static UUID.== infix(_:_:)();
  if ((v18 ^ static UUID.== infix(_:_:)()))
  {
    if (v18)
    {
      v19 = -1;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v20 = [v14 slotID];
    v21 = (v20 == 1) ^ ([v15 slotID] != 1);
    if (v20 == 1)
    {
      v19 = -1;
    }

    else
    {
      v19 = 1;
    }

    if (v21)
    {
      v32 = UUID.uuidString.getter();
      v33 = v22;
      v30 = UUID.uuidString.getter();
      v31 = v23;
      v24 = type metadata accessor for Locale();
      v25 = v29;
      (*(*(v24 - 8) + 56))(v29, 1, 1, v24);
      sub_10001F298();
      v19 = StringProtocol.compare<A>(_:options:range:locale:)();
      sub_10000BE18(v25, &unk_100848960, &unk_1006E8C30);
    }
  }

  v26 = *(v8 + 8);
  v26(v11, v7);
  v26(v13, v7);
  return v19 == -1;
}

void sub_100593FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(IDSPhoneCertificateVendor) initWithQueue:*(v4 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_workQueue)];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[4] = sub_100597CE0;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10001335C;
  v11[3] = &unk_100817AA8;
  v10 = _Block_copy(v11);

  [v7 generatePhoneAuthenticationSignatureOverData:isa withCompletion:v10];
  _Block_release(v10);
}

uint64_t sub_1005940F8(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v40 - v13;
  v43 = 0;
  if (!a2)
  {
    if (a1)
    {
      v27 = [a1 inputData];
      if (v27)
      {
        v28 = v27;
        v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = [a1 authenticationCertificateSignatures];
        sub_10001F8D4(0, &unk_100848950, IDSAuthenticationCertificateSignature_ptr);
        v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = _swiftEmptyArrayStorage;
        sub_10000B8B8(v29, v31);
        sub_100596EFC(v33, &v43);
        sub_10000B90C(v29, v31);
        sub_10000B90C(v29, v31);

        goto LABEL_12;
      }
    }

    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "missing data from IDS call. returning nothing", v38, 2u);
    }

    v34 = *(v9 + 8);
    v35 = v12;
LABEL_11:
    v34(v35, v8);
    goto LABEL_12;
  }

  swift_errorRetain();
  defaultLogger()();
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v15, v16))
  {

    v34 = *(v9 + 8);
    v35 = v14;
    goto LABEL_11;
  }

  v17 = swift_slowAlloc();
  v41 = a3;
  v18 = v17;
  v19 = swift_slowAlloc();
  v40[1] = a4;
  v20 = v19;
  v42 = v19;
  *v18 = 136446210;
  v21 = _convertErrorToNSError(_:)();
  v22 = [v21 localizedDescription];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40[0] = v8;
  v25 = v24;

  v26 = sub_100141FE4(v23, v25, &v42);

  *(v18 + 4) = v26;
  _os_log_impl(&_mh_execute_header, v15, v16, "ignore error (%{public}s - retrieving IDS PAC payload", v18, 0xCu);
  sub_10000BB78(v20);

  a3 = v41;

  (*(v9 + 8))(v14, v40[0]);
LABEL_12:
  a3(v43);
}

uint64_t sub_1005944C8(void **a1, char **a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &object - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    v27 = v2;
    v9 = *a1;
    v10 = Data.base64EncodedString(options:)(0);
    object = v10._object;
    countAndFlagsBits = v10._countAndFlagsBits;
    v11 = [v9 serverVerifiableEncoding];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1003C6978(0, *(v15 + 2) + 1, 1, v15);
      *a2 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1003C6978((v17 > 1), v18 + 1, 1, v15);
      *a2 = v15;
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[32 * v18];
    v20 = object;
    *(v19 + 4) = countAndFlagsBits;
    *(v19 + 5) = v20;
    *(v19 + 6) = v12;
    *(v19 + 7) = v14;
  }

  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "adding PAC", v23, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005946FC()
{
  v1 = type metadata accessor for DispatchQoS();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_100269F78;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1008179E0;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_100594924(uint64_t a1)
{
  v49 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(type metadata accessor for DIPDeviceInfo.DIPNFHardwareMonitor()) init];
  v6 = objc_opt_self();
  v7 = [v6 sharedHardwareManager];
  [v7 registerEventListener:v5];

  v8 = [v6 sharedHardwareManager];
  v9 = [v8 getHwSupport];

  if ((v9 | 2) == 3)
  {
    sub_100595B2C();
    v10 = [v6 sharedHardwareManager];
    v9 = [v10 getHwSupport];
  }

  v11 = [v6 sharedHardwareManager];
  [v11 unregisterEventListener:v5];

  if (v9 != 2)
  {
    goto LABEL_27;
  }

  v12 = [v6 sharedHardwareManager];
  v52[0] = 0;
  v13 = [v12 secureElementsWithError:v52];

  v14 = v52[0];
  if (!v13)
  {
    v35 = v52[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    defaultLogger()();
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "Error retrieving secure elements: %@", v38, 0xCu);
      sub_10000BE18(v39, &unk_100833B50, &unk_1006D8FB0);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    goto LABEL_27;
  }

  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v14;

  v48 = v15;
  v17 = *(v15 + 16);
  if (!v17)
  {

LABEL_27:
    v18 = 0;
    v20 = _swiftEmptyArrayStorage;
    v34 = &_mh_execute_header;
    goto LABEL_28;
  }

  v18 = 0;
  v19 = v48 + 32;
  v20 = _swiftEmptyArrayStorage;
  v21 = 1;
  v50 = v5;
  do
  {
    sub_10001F2EC(v19, v52);
    sub_10001F8D4(0, &unk_100848940, NFSecureElement_ptr);
    if (swift_dynamicCast())
    {
      v22 = v51[0];
      v23 = [v51[0] serialNumber];
      if (v23)
      {
        v24 = v21;
        v25 = v23;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1003C5110(0, *(v20 + 2) + 1, 1, v20);
        }

        v31 = *(v20 + 2);
        v30 = *(v20 + 3);
        if (v31 >= v30 >> 1)
        {
          v20 = sub_1003C5110((v30 > 1), v31 + 1, 1, v20);
        }

        *(v20 + 2) = v31 + 1;
        v32 = &v20[16 * v31];
        *(v32 + 4) = v26;
        *(v32 + 5) = v28;
        v33 = [v22 hwType];

        if (v33)
        {
          v18 = v33;
        }

        else
        {
          v18 = v29;
        }

        v21 = (v33 == 0) & v24;
        v5 = v50;
      }

      else
      {
      }
    }

    v19 += 32;
    --v17;
  }

  while (v17);

  if (v21)
  {
    v34 = &_mh_execute_header;
  }

  else
  {
    v34 = 0;
  }

LABEL_28:
  v52[0] = v20;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_1000BA30C(&qword_100848930, &qword_100834EA0, &qword_1006C06B0, &protocol conformance descriptor for [A]);
  v41 = BidirectionalCollection<>.joined(separator:)();
  v43 = v42;

  v44 = v49 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo;
  v45 = *(v49 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo);
  v46 = *(v49 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo + 8);
  *v44 = v41;
  *(v44 + 8) = v43;
  v44 += 16;
  *v44 = v34 | v18;
  *(v44 + 4) = BYTE4(v34);
  return sub_10003477C(v45, v46);
}

uint64_t sub_100594FC8(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v4 - 8);
  v71 = &v67 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v69 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v67 - v11;
  v13 = __chkstk_darwin(v10);
  v70 = &v67 - v14;
  __chkstk_darwin(v13);
  v16 = &v67 - v15;
  defaultLogger()();
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134349056;
    *(v20 + 4) = [v17 slotID];

    _os_log_impl(&_mh_execute_header, v18, v19, "DIPDeviceInfo: received delegate message for phoneNumberChanged, slot = %{public}ld", v20, 0xCu);
  }

  else
  {

    v18 = v17;
  }

  v72 = *(v7 + 8);
  v73 = v6;
  v72(v16, v6);
  v21 = *(v2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctSubscriptionsInUse);
  os_unfair_lock_lock((v21 + 24));
  v22 = *(v21 + 16);

  os_unfair_lock_unlock((v21 + 24));
  v23 = *(v2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers);
  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);

  os_unfair_lock_unlock((v23 + 24));
  if (!v22 || (v25 = sub_100595764(v17, v22), v27 = v26, , (v27 & 1) != 0) || (v25 & 0x8000000000000000) != 0 || !v24 || v25 >= *(v24 + 2))
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "DIPDeviceInfo: phoneNumberChanged on unknown context, reloading all", v30, 2u);
    }

    v72(v12, v73);
    sub_100592EB0();
LABEL_9:
    v31 = type metadata accessor for TaskPriority();
    v32 = v71;
    (*(*(v31 - 8) + 56))(v71, 1, 1, v31);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    sub_1003E653C(0, 0, v32, &unk_1006E8C48, v33);
  }

  v68 = v25;
  v35 = *(v2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_ctClient);
  v74 = 0;
  v36 = [v35 getPhoneNumber:v17 error:&v74];
  if (v36)
  {
    v37 = v36;
    v38 = v74;
    v39 = [v37 number];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = v70;
    defaultLogger()();

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();

    v46 = os_log_type_enabled(v44, v45);
    v69 = v40;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v40;
      v50 = v37;
      v51 = v48;
      v74 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_100141FE4(v49, v42, &v74);
      _os_log_impl(&_mh_execute_header, v44, v45, "phoneNumberChanged to %s", v47, 0xCu);
      sub_10000BB78(v51);
      v37 = v50;

      v52 = v70;
    }

    else
    {

      v52 = v43;
    }

    v72(v52, v73);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_10036E55C(v24);
    }

    if (v68 >= *(v24 + 2))
    {
      __break(1u);
    }

    v65 = &v24[16 * v68];
    *(v65 + 4) = v69;
    *(v65 + 5) = v42;

    __chkstk_darwin(v66);
    *(&v67 - 2) = v24;
    os_unfair_lock_lock((v23 + 24));
    sub_100598C04((v23 + 16));
    os_unfair_lock_unlock((v23 + 24));

    goto LABEL_9;
  }

  v53 = v74;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v54 = v69;
  defaultLogger()();
  swift_errorRetain();
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v74 = v58;
    *v57 = 136446210;
    v59 = _convertErrorToNSError(_:)();
    v60 = [v59 localizedDescription];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = sub_100141FE4(v61, v63, &v74);

    *(v57 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v55, v56, "DIPDeviceInfo: phoneNumberChanged ignoring error getting new phone number, %{public}s", v57, 0xCu);
    sub_10000BB78(v58);
  }

  else
  {
  }

  return (v72)(v54, v73);
}

unint64_t sub_100595764(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_10001F8D4(0, &qword_1008410B8, CTXPCServiceSubscriptionContext_ptr);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100595890()
{
  if (qword_100832D40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_100882578;
  v2 = unk_100882580;
  v0[5] = qword_100882578;
  v0[6] = v2;

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100595998;

  return sub_1006802D4(2, v1, v2);
}

uint64_t sub_100595998()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100595B2C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "DIPNFHardwareMonitor: waiting 1s for notification", v9, 2u);
  }

  v10 = *(v1 + 8);
  v10(v6, v0);
  OS_dispatch_semaphore.wait(interval:)();
  result = static DispatchTimeoutResult.== infix(_:_:)();
  if (result)
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "DIPDeviceInfo: timed out waiting for NFHardwareEventListener notification", v14, 2u);
    }

    return (v10)(v4, v0);
  }

  return result;
}

Swift::Int sub_100595D3C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "DIPNFHardwareMonitor: hardware state did change", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return OS_dispatch_semaphore.signal()();
}

id sub_100595F28(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DIPDeviceInfo.DIPNFHardwareMonitor();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100595F90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100595FC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100595FE0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1005960BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100596104(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100596118(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_1003BD1FC(v6);
  }

  sub_1005961B0(a1, a2);
  return specialized ContiguousArray._endMutation()();
}

void sub_1005961B0(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001F8D4(0, &qword_1008410B8, CTXPCServiceSubscriptionContext_ptr);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_1005963D4(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1005962D4(0, v5, 1, a1);
  }
}

void sub_1005962D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1005963D4(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(void **, void **), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003BC0AC(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_1003BC0AC((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_100596AA0(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003BBEA4(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_1003BBE18(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  v12 = sub_1003BBEA4(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_100596AA0(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1003BBEA4(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_1003BBE18(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}