uint64_t sub_1688()
{
  v0 = sub_11310();
  sub_1834(v0, qword_1CE88);
  sub_1898(v0, qword_1CE88);
  return sub_112E0();
}

uint64_t sub_16F4(uint64_t a1, id *a2)
{
  result = sub_11460();
  *a2 = 0;
  return result;
}

uint64_t sub_176C(uint64_t a1, id *a2)
{
  v3 = sub_11470();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_17EC@<X0>(uint64_t *a1@<X8>)
{
  sub_11480();
  v2 = sub_11450();

  *a1 = v2;
  return result;
}

uint64_t *sub_1834(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1898(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_18D0(uint64_t a1)
{
  v2 = sub_1EA4(&qword_1CA48, type metadata accessor for FileProtectionType, &unk_12548);
  v3 = sub_1EA4(&qword_1CA50, type metadata accessor for FileProtectionType, &unk_124E8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1990@<X0>(uint64_t *a1@<X8>)
{
  result = sub_11480();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19BC(uint64_t a1)
{
  v2 = sub_1EA4(&qword_1CA08, type metadata accessor for FileAttributeKey, &unk_12400);
  v3 = sub_1EA4(&qword_1CA10, type metadata accessor for FileAttributeKey, &unk_121FC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1A78(uint64_t a1)
{
  v2 = sub_1EA4(&qword_1C9F8, type metadata accessor for URLFileProtection, &unk_12370);
  v3 = sub_1EA4(&qword_1CA00, type metadata accessor for URLFileProtection, &unk_12310);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1B34@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_11450();

  *a2 = v3;
  return result;
}

uint64_t sub_1B7C(uint64_t a1)
{
  v2 = sub_1EA4(&qword_1CA18, type metadata accessor for Dataclass, &unk_12100);
  v3 = sub_1EA4(&qword_1CA20, type metadata accessor for Dataclass, &unk_120A8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1C38()
{
  sub_11480();
  v0 = sub_114D0();

  return v0;
}

uint64_t sub_1C74(uint64_t a1)
{
  sub_11480();
  sub_114A0();
}

Swift::Int sub_1CC8(uint64_t a1)
{
  sub_11480();
  sub_117D0();
  sub_114A0();
  v1 = sub_117F0();

  return v1;
}

uint64_t sub_1D3C(void *a1, uint64_t *a2)
{
  v2 = sub_11480();
  v4 = v3;
  if (v2 == sub_11480() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_117C0();
  }

  return v7 & 1;
}

uint64_t sub_1EA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2244()
{
  v0 = sub_113B0();
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DataStackConfiguration(0);
  sub_1834(v3, qword_1CEA0);
  v4 = sub_1898(v3, qword_1CEA0);
  sub_113A0();
  return sub_2350(v2, NSFileProtectionCompleteUnlessOpen, v4);
}

uint64_t type metadata accessor for DataStackConfiguration(uint64_t a1)
{
  result = qword_1CAB0;
  if (!qword_1CAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2350@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v5 = sub_113B0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v6 + 16);
  v17(&v25 - v15, a1, v5);
  v17(v14, v16, v5);
  v17(v11, v14, v5);
  v18 = (*(v6 + 88))(v11, v5);
  if (v18 == enum case for Runtime.Environment.production(_:))
  {
    v19 = 0;
LABEL_7:
    v20 = *(v6 + 8);
    v21 = a2;
    v20(v14, v5);
    v20(v16, v5);
    v22 = v26;
    *v26 = v21;
    *(v22 + 8) = v19;
    v17(v25, a1, v5);
    type metadata accessor for DataStackConfiguration(0);
    sub_11330();
    return (v20)(a1, v5);
  }

  if (v18 == enum case for Runtime.Environment.staging(_:))
  {
    v19 = 1;
    goto LABEL_7;
  }

  if (v18 == enum case for Runtime.Environment.testing(_:))
  {
    v19 = 2;
    goto LABEL_7;
  }

  v24 = a2;
  result = sub_117B0();
  __break(1u);
  return result;
}

uint64_t sub_25EC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_11350();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_11350();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2750(uint64_t a1)
{
  result = sub_11350();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27CC()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CAE8);
  v1 = sub_1898(v0, qword_1CAE8);
  if (qword_1C968 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CED8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2894(uint64_t a1)
{
  v3 = objc_allocWithZone(CKContainerOptions);
  v4 = v1;
  v5 = [v3 init];
  sub_11390();
  v6 = sub_11450();

  [v5 setApplicationBundleIdentifierOverrideForContainerAccess:v6];

  v7 = v5;
  v8 = sub_11320();

  v9 = OBJC_IVAR____TtC21JournalDataclassOwner19CloudKitStackShared_ckContainer;
  *&v4[OBJC_IVAR____TtC21JournalDataclassOwner19CloudKitStackShared_ckContainer] = v8;
  if (qword_1C940 != -1)
  {
    swift_once();
  }

  v10 = sub_113E0();
  sub_1898(v10, qword_1CAE8);
  v11 = v4;
  v12 = sub_113C0();
  v13 = sub_115D0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = [*&v4[v9] containerID];

    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&dword_0, v12, v13, "-> CloudKitStack init for container %@", v14, 0xCu);
    sub_394C(v15, &qword_1CC20, &qword_12690);
  }

  else
  {

    v12 = v11;
  }

  v20.receiver = v11;
  v20.super_class = type metadata accessor for CloudKitStackShared();
  v17 = objc_msgSendSuper2(&v20, "init");

  v18 = sub_11350();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v17;
}

void sub_2AEC(unint64_t a1, _BOOL8 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1C940 != -1)
  {
    swift_once();
  }

  v10 = sub_113E0();
  sub_1898(v10, qword_1CAE8);

  v11 = sub_113C0();
  v12 = sub_115D0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    if (a1 >> 62)
    {
      v14 = sub_11770();
    }

    else
    {
      v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    *(v13 + 4) = v14;

    *(v13 + 12) = 2048;
    if (a2 >> 62)
    {
      v15 = sub_11770();
    }

    else
    {
      v15 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    }

    *(v13 + 14) = v15;

    _os_log_impl(&dword_0, v11, v12, "(uploadRecords) saving total %ld records, deleting total %ld records", v13, 0x16u);
  }

  else
  {
  }

  sub_3A84();

  v32.value._rawValue = a1;
  v32.is_nil = a2;
  isa = sub_116C0(v32, v33).super.super.super.super.isa;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;

  sub_116B0();
  v18 = isa;
  v19 = sub_113C0();
  v20 = sub_115D0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    v23 = v18;
    v24 = [(objc_class *)v23 description];
    v25 = sub_11480();
    v27 = v26;

    v28 = sub_483C(v25, v27, &v30);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_0, v19, v20, "(uploadRecords) operation added to a database:%s", v21, 0xCu);
    sub_3B14(v22);
  }

  v29 = [*(v5 + OBJC_IVAR____TtC21JournalDataclassOwner19CloudKitStackShared_ckContainer) privateCloudDatabase];
  [v29 addOperation:v18];
}

uint64_t sub_2E50(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1C940 != -1)
  {
    swift_once();
  }

  v6 = sub_113E0();
  sub_1898(v6, qword_1CAE8);
  sub_3B60(a1, a2 & 1);
  v7 = sub_113C0();
  v8 = sub_115D0();
  sub_3B6C(a1, a2 & 1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_3B60(a1, a2 & 1);
    sub_3610(&qword_1CB58, &unk_126B0);
    v11 = sub_11490();
    v13 = sub_483C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "(uploadRecords) upload records result:%s", v9, 0xCu);
    sub_3B14(v10);
  }

  if (a2)
  {
    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  return a3(v14);
}

id sub_303C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudKitStackShared();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_30B0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CloudKitStackShared();
  result = sub_113F0();
  *a2 = result;
  return result;
}

void sub_30EC(uint64_t a1@<X8>)
{
  v2 = sub_11040();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_110B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1C930 != -1)
  {
    swift_once();
  }

  v10 = sub_11310();
  sub_1898(v10, qword_1CE88);
  sub_112D0();
  v31[0] = 0xD000000000000016;
  v31[1] = 0x8000000000013360;
  (*(v3 + 104))(v5, enum case for URL.DirectoryHint.isDirectory(_:), v2);
  sub_3658();
  sub_110A0();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(a1, v6);
  (*(v7 + 32))(a1, v9, v6);
  v11 = [objc_opt_self() defaultManager];
  sub_11070(v12);
  v14 = v13;
  sub_3610(&qword_1CB38, &qword_12698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_12630;
  *(inited + 32) = NSFileProtectionKey;
  v16 = NSFileProtectionKey;
  v17 = sub_11280();
  type metadata accessor for URLFileProtection(0);
  *(inited + 64) = v18;
  *(inited + 40) = v17;
  sub_3844(inited);
  swift_setDeallocating();
  sub_394C(inited + 32, &qword_1CB40, &qword_126A0);
  type metadata accessor for FileAttributeKey(0);
  sub_39AC();
  isa = sub_11420().super.isa;

  v31[0] = 0;
  v20 = [v11 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:isa error:v31];

  if (v20)
  {
    v21 = v31[0];
    v22 = sub_11280();
    sub_11050(v22);

    sub_112B0();
  }

  else
  {
    v23 = v31[0];
    sub_11030();

    swift_willThrow();
    if (qword_1C940 != -1)
    {
      swift_once();
    }

    v24 = sub_113E0();
    sub_1898(v24, qword_1CAE8);
    swift_errorRetain();
    v25 = sub_113C0();
    v26 = sub_115C0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_0, v25, v26, "(getAssetsStagingFolder) Unable to create assets directory: %@", v27, 0xCu);
      sub_394C(v28, &qword_1CC20, &qword_12690);
    }

    else
    {
    }
  }
}

uint64_t sub_3610(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_3658()
{
  result = qword_1CB30;
  if (!qword_1CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB30);
  }

  return result;
}

unint64_t sub_36AC(uint64_t a1)
{
  sub_11480();
  sub_117D0();
  sub_114A0();
  v2 = sub_117F0();

  return sub_3740(a1, v2);
}

unint64_t sub_3740(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_11480();
      v8 = v7;
      if (v6 == sub_11480() && v8 == v9)
      {
        break;
      }

      v11 = sub_117C0();

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

unint64_t sub_3844(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3610(&qword_1CB48, &qword_126A8);
    v3 = sub_11780();
    v4 = a1 + 32;

    while (1)
    {
      sub_3A04(v4, &v11);
      v5 = v11;
      result = sub_36AC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_3A74(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_394C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3610(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_39AC()
{
  result = qword_1CA08;
  if (!qword_1CA08)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA08);
  }

  return result;
}

uint64_t sub_3A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_3610(&qword_1CB40, &qword_126A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_3A74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_3A84()
{
  result = qword_1CB50;
  if (!qword_1CB50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CB50);
  }

  return result;
}

uint64_t sub_3AD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B14(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_3B60(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_3B6C(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_3B78()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CB60);
  v1 = sub_1898(v0, qword_1CB60);
  if (qword_1C968 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CED8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_3C40(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = a2;
  v5 = [*(a1 + OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container) newBackgroundContext];
  v6 = [objc_opt_self() mergeByPropertyStoreTrumpMergePolicy];
  [v5 setMergePolicy:v6];

  if (sub_F5D4(v3))
  {
    if (qword_1C948 != -1)
    {
      swift_once();
    }

    v7 = sub_113E0();
    sub_1898(v7, qword_1CB60);
    v8 = sub_113C0();
    v9 = sub_115D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      if (v3)
      {
        if (v3 == 1)
        {
          v12 = 0x6465636E7973;
        }

        else
        {
          v12 = 0x6465636E79736E75;
        }

        if (v3 == 1)
        {
          v13 = 0xE600000000000000;
        }

        else
        {
          v13 = 0xE800000000000000;
        }
      }

      else
      {
        v12 = 7958113;
        v13 = 0xE300000000000000;
      }

      v21 = sub_483C(v12, v13, &v24);

      *(v10 + 4) = v21;
      _os_log_impl(&dword_0, v8, v9, "(haveData %s) true", v10, 0xCu);
      sub_3B14(v11);
    }

    v22 = 1;
  }

  else
  {
    if (qword_1C948 != -1)
    {
      swift_once();
    }

    v14 = sub_113E0();
    sub_1898(v14, qword_1CB60);
    v15 = sub_113C0();
    v16 = sub_115D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      if (v3)
      {
        if (v3 == 1)
        {
          v19 = 0x6465636E7973;
        }

        else
        {
          v19 = 0x6465636E79736E75;
        }

        if (v3 == 1)
        {
          v20 = 0xE600000000000000;
        }

        else
        {
          v20 = 0xE800000000000000;
        }
      }

      else
      {
        v19 = 7958113;
        v20 = 0xE300000000000000;
      }

      v23 = sub_483C(v19, v20, &v24);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_0, v15, v16, "(haveData %s) false", v17, 0xCu);
      sub_3B14(v18);
    }

    v22 = 0;
  }

  *a3 = v22;
}

uint64_t sub_3FA0(char a1)
{
  if (qword_1C938 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DataStackConfiguration(0);
  v3 = sub_1898(v2, qword_1CEA0);
  v4 = *v3;
  v5 = *(v3 + 8);
  objc_allocWithZone(type metadata accessor for CoreDataStackShared(0));
  v6 = sub_AAA8(v4, v5);
  if (qword_1C948 != -1)
  {
    swift_once();
  }

  v7 = sub_113E0();
  sub_1898(v7, qword_1CB60);
  v8 = sub_113C0();
  v9 = sub_115D0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v17 = v11;
    *v10 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v12 = 0x6465636E7973;
      }

      else
      {
        v12 = 0x6465636E79736E75;
      }

      if (a1 == 1)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v13 = 0xE800000000000000;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7958113;
    }

    v14 = sub_483C(v12, v13, v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "(haveData %s) start", v10, 0xCu);
    sub_3B14(v11);
  }

  if (qword_1C958 != -1)
  {
    v15 = swift_once();
  }

  __chkstk_darwin(v15);
  sub_11610();

  return v17[0];
}

uint64_t sub_4254()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CB80);
  v1 = sub_1898(v0, qword_1CB80);
  if (qword_1C968 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CED8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_431C()
{
  v0 = sub_11600();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_115F0();
  __chkstk_darwin(v4);
  v5 = sub_11410();
  __chkstk_darwin(v5 - 8);
  sub_6C3C(0, &qword_1CC30, OS_dispatch_queue_ptr);
  sub_11400();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_6AD8();
  sub_3610(&qword_1CC40, &qword_12728);
  sub_6B30();
  sub_11700();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_11620();
  qword_1CEB8 = result;
  return result;
}

Class sub_4634(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void *, void *))
{
  v8 = a1;
  v9 = a3;
  v10 = a4;
  v11 = a5(a3, a4);

  if (v11)
  {
    v12.super.isa = sub_114F0().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  return v12.super.isa;
}

id sub_47E0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_483C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4908(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_6BDC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3B14(v11);
  return v7;
}

unint64_t sub_4908(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_4A14(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_11750();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_4A14(uint64_t a1, unint64_t a2)
{
  v3 = sub_4A60(a1, a2);
  sub_4B90(&off_18AF8);
  return v3;
}

char *sub_4A60(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_4C7C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_11750();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_114C0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_4C7C(v10, 0);
        result = sub_11710();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_4B90(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_4CF0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_4C7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_3610(&qword_1CC50, &qword_12730);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_4CF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3610(&qword_1CC50, &qword_12730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_4DE4(void *a1, void *a2)
{
  v4 = sub_11270();
  v56 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_11300();
  v6 = *(v57 - 8);
  __chkstk_darwin(v57);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C950 != -1)
  {
    swift_once();
  }

  v9 = sub_113E0();
  v10 = sub_1898(v9, qword_1CB80);
  v11 = a2;
  v12 = a1;
  v58 = v10;
  v13 = sub_113C0();
  v14 = sub_115D0();
  if (os_log_type_enabled(v13, v14))
  {
    v54 = v4;
    v15 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v15 = 136315394;
    if (!a1)
    {

      __break(1u);
      goto LABEL_30;
    }

    v59 = [v12 identifier];
    sub_3610(&qword_1CC68, &qword_12740);
    v16 = sub_11490();
    v18 = sub_483C(v16, v17, &v60);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v59 = a2;
    v19 = v11;
    sub_3610(&qword_1CC28, &qword_12720);
    v20 = sub_11490();
    v22 = sub_483C(v20, v21, &v60);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_0, v13, v14, "->actionsForEnablingDataclass %s    %s", v15, 0x16u);
    swift_arrayDestroy();

    v4 = v54;
  }

  else
  {
  }

  sub_112F0();
  v23 = sub_112A0();
  (*(v6 + 8))(v8, v57);
  if (v23)
  {
    v24 = sub_3FA0(0);
    v25 = sub_113C0();
    v26 = sub_115D0();
    v27 = os_log_type_enabled(v25, v26);
    if (v24)
    {
      if (v27)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v25, v26, "->actionsForEnablingDataclass haveData == true)", v28, 2u);
      }

      v30 = v55;
      v29 = v56;
      (*(v56 + 104))(v55, enum case for AppleAccountUIFeature.signOutRedesign(_:), v4);
      v31 = sub_11260();
      (*(v29 + 8))(v30, v4);
      v32 = sub_113C0();
      v33 = sub_115D0();
      v34 = os_log_type_enabled(v32, v33);
      if ((v31 & 1) == 0)
      {
        if (v34)
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_0, v32, v33, "->actionsForEnablingDataclass, returning [(type: .mergeLocalDataIntoSyncData), (type: .cancel)]", v49, 2u);
        }

        sub_3610(&qword_1CC58, &qword_12738);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_126C0;
        v50 = objc_opt_self();
        v51 = [v50 actionWithType:5];
        if (v51)
        {
          v52 = v51;
          v40 = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
          *(v36 + 56) = v40;
          *(v36 + 32) = v52;
          v41 = [v50 actionWithType:0];
          if (v41)
          {
            goto LABEL_28;
          }

LABEL_33:
          __break(1u);
          return;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v34)
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_0, v32, v33, "->actionsForEnablingDataclass, returning [(type: .createSyncDataStoreDeleteLocalData), (type: .mergeLocalDataIntoSyncData)]", v35, 2u);
      }

      sub_3610(&qword_1CC58, &qword_12738);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_126C0;
      v37 = objc_opt_self();
      v38 = [v37 actionWithType:6];
      if (v38)
      {
        v39 = v38;
        v40 = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
        *(v36 + 56) = v40;
        *(v36 + 32) = v39;
        v41 = [v37 actionWithType:5];
        if (!v41)
        {
          __break(1u);
          goto LABEL_17;
        }

LABEL_28:
        *(v36 + 88) = v40;
        *(v36 + 64) = v41;
        return;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v27)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v25, v26, "->actionsForEnablingDataclass haveSyncedData == false), returning [(type: .createSyncDataStore)]", v45, 2u);
    }

    sub_3610(&qword_1CC58, &qword_12738);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_12630;
    v47 = [objc_opt_self() actionWithType:1];
    if (v47)
    {
      v48 = v47;
      *(v46 + 56) = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
      *(v46 + 32) = v48;
      return;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_17:
  v42 = sub_113C0();
  v43 = sub_115B0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_0, v42, v43, "Returning early because group container does not exist.", v44, 2u);
  }
}

void sub_5570(void *a1, void *a2)
{
  if (qword_1C950 != -1)
  {
    swift_once();
  }

  v4 = sub_113E0();
  sub_1898(v4, qword_1CB80);
  v5 = a2;
  v6 = a1;
  v7 = sub_113C0();
  v8 = sub_115D0();
  if (!os_log_type_enabled(v7, v8))
  {

    goto LABEL_7;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v17 = v11;
  *v9 = 138412546;
  if (a1)
  {
    v12 = v11;

    v13 = [v6 identifier];
    *(v9 + 4) = v13;
    *v10 = v13;
    *(v9 + 12) = 2080;
    sub_3610(&qword_1CC28, &qword_12720);
    v14 = sub_116F0();
    v16 = sub_483C(v14, v15, &v17);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_0, v7, v8, "->actions DataclassOwner getting action for adding dataclass for account %@ for dataclas %s", v9, 0x16u);
    sub_6A70(v10);

    sub_3B14(v12);

LABEL_7:

    sub_4DE4(a1, a2);
    return;
  }

  __break(1u);
}

void sub_576C(void *a1, void *a2)
{
  v4 = sub_11300();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C950 != -1)
  {
    swift_once();
  }

  v8 = sub_113E0();
  v9 = sub_1898(v8, qword_1CB80);
  v10 = a2;
  v11 = a1;
  v12 = sub_113C0();
  v13 = sub_115D0();
  if (os_log_type_enabled(v12, v13))
  {
    v47 = a2;
    v48 = v5;
    v49 = v4;
    v50 = v9;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v52 = v16;
    *v14 = 138412546;
    if (!a1)
    {

      __break(1u);
      goto LABEL_25;
    }

    v17 = v16;

    v18 = [v11 identifier];
    *(v14 + 4) = v18;
    *v15 = v18;
    *(v14 + 12) = 2080;
    v51 = v47;
    sub_3610(&qword_1CC28, &qword_12720);
    v19 = sub_116F0();
    v21 = sub_483C(v19, v20, &v52);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_0, v12, v13, "->forDeletingDataClass DataclassOwner getting deleting for adding dataclass for account %@ for dataclas %s", v14, 0x16u);
    sub_6A70(v15);

    sub_3B14(v17);

    v4 = v49;
    v5 = v48;
  }

  else
  {
  }

  sub_112F0();
  v22 = sub_112A0();
  (*(v5 + 8))(v7, v4);
  if (v22)
  {
    v23 = sub_3FA0(1);
    v24 = sub_3FA0(2);
    v25 = sub_113C0();
    v26 = sub_115D0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109376;
      *(v27 + 4) = v23 & 1;
      *(v27 + 8) = 1024;
      *(v27 + 10) = v24 & 1;
      _os_log_impl(&dword_0, v25, v26, "->forDeletingDataClass syncDataExists:%{BOOL}d  unsyncDataExists:%{BOOL}d", v27, 0xEu);
    }

    v28 = v23 | v24;
    v29 = sub_113C0();
    v30 = sub_115D0();
    v31 = os_log_type_enabled(v29, v30);
    if ((v28 & 1) == 0)
    {
      if (v31)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_0, v29, v30, "->forDeletingDataClass haveUnsyncedData == false, returning [(type: .deleteSyncData)]", v43, 2u);
      }

      sub_3610(&qword_1CC58, &qword_12738);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_12630;
      v45 = [objc_opt_self() actionWithType:3];
      if (v45)
      {
        v46 = v45;
        *(v44 + 56) = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
        *(v44 + 32) = v46;
        return;
      }

      goto LABEL_26;
    }

    if (v31)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v29, v30, "->forDeletingDataClass, returning [(type: .mergeSyncDataIntoLocalData), (with: .deleteSyncData), (type: .cancel)]", v32, 2u);
    }

    sub_3610(&qword_1CC58, &qword_12738);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_126D0;
    v34 = objc_opt_self();
    v35 = [v34 actionWithType:2];
    if (v35)
    {
      v36 = v35;
      v37 = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
      *(v33 + 56) = v37;
      *(v33 + 32) = v36;
      v38 = [v34 destructiveActionWithType:3];
      if (v38)
      {
        *(v33 + 88) = v37;
        *(v33 + 64) = v38;
        v39 = [v34 actionWithType:0];
        if (v39)
        {
          *(v33 + 120) = v37;
          *(v33 + 96) = v39;
          return;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v40 = sub_113C0();
  v41 = sub_115B0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "Returning early because group container does not exist.", v42, 2u);
  }
}

void sub_5D60(void *a1, void *a2)
{
  v4 = sub_11300();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C950 != -1)
  {
    swift_once();
  }

  v8 = sub_113E0();
  v9 = sub_1898(v8, qword_1CB80);
  v10 = a2;
  v11 = a1;
  v49[1] = v9;
  v12 = sub_113C0();
  v13 = sub_115D0();
  if (os_log_type_enabled(v12, v13))
  {
    v49[0] = v4;
    v14 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v14 = 136315394;
    if (!a1)
    {

      __break(1u);
      goto LABEL_30;
    }

    v50 = [v11 identifier];
    sub_3610(&qword_1CC68, &qword_12740);
    v15 = sub_11490();
    v17 = sub_483C(v15, v16, &v51);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v50 = a2;
    v18 = v10;
    sub_3610(&qword_1CC28, &qword_12720);
    v19 = sub_11490();
    v21 = sub_483C(v19, v20, &v51);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_0, v12, v13, "->actionsForDisablingDataclass %s    %s", v14, 0x16u);
    swift_arrayDestroy();

    v4 = v49[0];
  }

  else
  {
  }

  sub_112F0();
  v22 = sub_112A0();
  (*(v5 + 8))(v7, v4);
  if (v22)
  {
    if ((sub_3FA0(1) & 1) == 0)
    {
      v36 = sub_3FA0(2);
      v37 = sub_113C0();
      v38 = sub_115D0();
      v39 = os_log_type_enabled(v37, v38);
      if ((v36 & 1) == 0)
      {
        if (v39)
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_0, v37, v38, "->actionsForDisablingDataclass haveUnsyncedData == false, returning [(type: .deleteSyncData)]", v45, 2u);
        }

        sub_3610(&qword_1CC58, &qword_12738);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_12630;
        v47 = [objc_opt_self() actionWithType:3];
        if (v47)
        {
          v48 = v47;
          *(v46 + 56) = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
          *(v46 + 32) = v48;
          return;
        }

        goto LABEL_33;
      }

      if (v39)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v37, v38, "->actionsForDisablingDataclass haveUnsyncedData == true, returning [(type: .mergeSyncDataIntoLocalData), (with: .loseNonUploadedData), (type: .cancel)]", v40, 2u);
      }

      sub_3610(&qword_1CC58, &qword_12738);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_126D0;
      v41 = objc_opt_self();
      v42 = [v41 actionWithType:2];
      if (v42)
      {
        v43 = v42;
        v30 = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
        *(v26 + 56) = v30;
        *(v26 + 32) = v43;
        v44 = [v41 destructiveActionWithType:8];
        if (v44)
        {
          *(v26 + 88) = v30;
          *(v26 + 64) = v44;
          v32 = [v41 actionWithType:0];
          if (v32)
          {
            goto LABEL_24;
          }

LABEL_35:
          __break(1u);
          return;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v23 = sub_113C0();
    v24 = sub_115D0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "->actionsForDisablingDataclass haveSyncedData == true, returning [(type: .mergeSyncDataIntoLocalData), (with: .deleteSyncData), (type: .cancel)]", v25, 2u);
    }

    sub_3610(&qword_1CC58, &qword_12738);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_126D0;
    v27 = objc_opt_self();
    v28 = [v27 actionWithType:2];
    if (v28)
    {
      v29 = v28;
      v30 = sub_6C3C(0, &qword_1CC60, ACDataclassAction_ptr);
      *(v26 + 56) = v30;
      *(v26 + 32) = v29;
      v31 = [v27 destructiveActionWithType:3];
      if (v31)
      {
        *(v26 + 88) = v30;
        *(v26 + 64) = v31;
        v32 = [v27 actionWithType:0];
        if (!v32)
        {
          __break(1u);
          goto LABEL_15;
        }

LABEL_24:
        *(v26 + 120) = v30;
        *(v26 + 96) = v32;
        return;
      }

      goto LABEL_31;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_15:
  v33 = sub_113C0();
  v34 = sub_115B0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_0, v33, v34, "Returning early because group container does not exist.", v35, 2u);
  }
}

void sub_6430(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_11300();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C950 != -1)
  {
    swift_once();
  }

  v11 = sub_113E0();
  v12 = sub_1898(v11, qword_1CB80);
  v47 = a3;
  v13 = a3;
  v14 = a1;
  v15 = a2;
  v16 = v14;
  v17 = sub_113C0();
  v18 = sub_115D0();

  if (os_log_type_enabled(v17, v18))
  {
    v45 = v4;
    v46 = v12;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v51 = v21;
    *v19 = 138412802;
    *(v19 + 4) = v16;
    v44 = a1;
    *v20 = a1;
    *(v19 + 12) = 2112;
    if (!a2)
    {

      __break(1u);
      goto LABEL_30;
    }

    v22 = v21;
    v23 = v16;

    v24 = [v15 identifier];
    *(v19 + 14) = v24;
    v20[1] = v24;
    *(v19 + 22) = 2080;
    v50 = v47;
    sub_3610(&qword_1CC28, &qword_12720);
    v25 = sub_116F0();
    v27 = sub_483C(v25, v26, &v51);

    *(v19 + 24) = v27;
    _os_log_impl(&dword_0, v17, v18, "->perform DataclassOwner perform action %@ for account %@ for dataclas %s", v19, 0x20u);
    sub_3610(&qword_1CC20, &qword_12690);
    swift_arrayDestroy();

    sub_3B14(v22);

    a1 = v44;
  }

  else
  {
  }

  sub_112F0();
  v28 = sub_112A0();
  (*(v48 + 8))(v10, v49);
  if ((v28 & 1) == 0)
  {
    v30 = sub_113C0();
    v31 = sub_115B0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Returning early because group container does not exist.", v32, 2u);
    }

    goto LABEL_28;
  }

  if (a1)
  {
    v29 = [v16 type];
    if (v29 > 3)
    {
      if (v29 - 6 < 3)
      {
        sub_9DD4();
LABEL_19:
        sub_6D8C();
        goto LABEL_26;
      }

      if (v29 != &dword_4)
      {
        if (v29 != (&dword_4 + 1))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }
    }

    else if (v29 >= 2)
    {
      if (v29 != (&dword_0 + 2))
      {
        if (v29 != (&dword_0 + 3))
        {
          goto LABEL_26;
        }

        sub_9DD4();
        sub_9EE8();
        goto LABEL_19;
      }

LABEL_22:
      sub_9DD4();
      sub_6FC4();
LABEL_26:
      v30 = sub_113C0();
      v41 = sub_115D0();
      if (os_log_type_enabled(v30, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_0, v30, v41, "->perform DataclassOwner done", v42, 2u);
      }

LABEL_28:

      return;
    }

    v33 = v16;
    v34 = sub_113C0();
    v35 = sub_115D0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v51 = v37;
      *v36 = 136315138;
      v50 = [v33 type];
      type metadata accessor for ACDataclassActionType(0);
      v38 = sub_11490();
      v40 = sub_483C(v38, v39, &v51);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, v34, v35, "Ignoring action %s", v36, 0xCu);
      sub_3B14(v37);
    }

    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_6A70(uint64_t a1)
{
  v2 = sub_3610(&qword_1CC20, &qword_12690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_6AD8()
{
  result = qword_1CC38;
  if (!qword_1CC38)
  {
    sub_115F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CC38);
  }

  return result;
}

unint64_t sub_6B30()
{
  result = qword_1CC48;
  if (!qword_1CC48)
  {
    sub_6B94(&qword_1CC40, &qword_12728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CC48);
  }

  return result;
}

uint64_t sub_6B94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_6BDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_6C3C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_6C84()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CEC0);
  sub_1898(v0, qword_1CEC0);
  return sub_113D0();
}

uint64_t sub_6D08()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CED8);
  sub_1898(v0, qword_1CED8);
  return sub_113D0();
}

uint64_t sub_6D8C()
{
  v1 = v0;
  if (qword_1C970 != -1)
  {
    swift_once();
  }

  v2 = sub_113E0();
  sub_1898(v2, qword_1CCE0);
  v3 = sub_113C0();
  v4 = sub_115D0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Deleting all local data", v5, 2u);
  }

  if (qword_1C958 != -1)
  {
    swift_once();
  }

  v6 = qword_1CEB8;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_978C;
  *(v8 + 24) = v7;
  v13[4] = sub_A92C;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_7C88;
  v13[3] = &unk_18D98;
  v9 = _Block_copy(v13);
  v10 = v1;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6FC4()
{
  v1 = v0;
  if (qword_1C970 != -1)
  {
    swift_once();
  }

  v2 = sub_113E0();
  sub_1898(v2, qword_1CCE0);
  v3 = sub_113C0();
  v4 = sub_115D0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Marking all records as not uploaded", v5, 2u);
  }

  if (qword_1C958 != -1)
  {
    swift_once();
  }

  v6 = qword_1CEB8;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_7F10;
  *(v8 + 24) = v7;
  v13[4] = sub_7F18;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_7C88;
  v13[3] = &unk_18C58;
  v9 = _Block_copy(v13);
  v10 = v1;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_71FC()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CCE0);
  v1 = sub_1898(v0, qword_1CCE0);
  if (qword_1C968 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CED8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_72C4(void *a1)
{
  sub_6C3C(0, &qword_1CCF8, NSUserDefaults_ptr);
  v2 = sub_115E0();
  v3 = sub_11450();
  [v2 setBool:1 forKey:v3];

  if (qword_1C938 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DataStackConfiguration(0);
  v5 = sub_1898(v4, qword_1CEA0);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = objc_allocWithZone(type metadata accessor for CoreDataStackShared(0));
  v9 = sub_AAA8(v6, v7);
  v10 = *&v9[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_context];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = a1;
  v16[4] = sub_97E0;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_7CB0;
  v16[3] = &unk_18DE8;
  v12 = _Block_copy(v16);
  v13 = v10;
  v14 = v9;
  v15 = a1;

  [v13 performBlock:v12];
  _Block_release(v12);
}

void sub_74A8(uint64_t a1, void *a2, void *a3)
{
  if (MKBGetDeviceLockState() == 1)
  {
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v6 = sub_113E0();
    sub_1898(v6, qword_1CCE0);
    oslog = sub_113C0();
    v7 = sub_115B0();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_25;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "(actionDeleteAllLocalData) unable to complete actionDeleteAllLocalData, device is locked";
LABEL_24:
    _os_log_impl(&dword_0, oslog, v7, v9, v8, 2u);

LABEL_25:

    return;
  }

  v10 = [*(a1 + OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container) viewContext];
  v11 = [v10 persistentStoreCoordinator];

  if (!v11 || ((v12 = [v11 persistentStores], sub_6C3C(0, &qword_1CD00, NSPersistentStore_ptr), v13 = sub_11500(), v12, v13 >> 62) ? (v14 = sub_11770()) : (v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8))), (, v11, !v14) || *(a1 + OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_persistentStoresLoadSuccess) != 1))
  {
LABEL_20:
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v27 = sub_113E0();
    sub_1898(v27, qword_1CCE0);
    oslog = sub_113C0();
    v7 = sub_115B0();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_25;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "(actionDeleteAllLocalData) Database is not open, unable to complete actionDeleteAllLocalData";
    goto LABEL_24;
  }

  sub_111A0();
  aBlock[0] = 0;
  if ([a2 save:aBlock])
  {
    v15 = qword_1C970;
    v16 = aBlock[0];
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = sub_113E0();
    sub_1898(v17, qword_1CCE0);
    v18 = sub_113C0();
    v19 = sub_115D0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Deleted all local data", v20, 2u);
    }

    if (qword_1C958 != -1)
    {
      swift_once();
    }

    v21 = qword_1CEB8;
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    v23 = swift_allocObject();
    v23[2] = sub_97EC;
    v23[3] = v22;
    aBlock[4] = sub_A92C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_7C88;
    aBlock[3] = &unk_18E60;
    v24 = _Block_copy(aBlock);
    v25 = a3;

    dispatch_sync(v21, v24);
    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    v28 = aBlock[0];
    sub_11030();

    swift_willThrow();
    v29 = sub_11020();
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v30 = sub_113E0();
    sub_1898(v30, qword_1CCE0);
    v31 = v29;
    v32 = sub_113C0();
    v33 = sub_115C0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v34 = 138412546;
      *(v34 + 4) = v31;
      *v35 = v31;
      *(v34 + 12) = 2080;
      osloga = v31;
      v36 = [osloga userInfo];
      sub_11430();

      v37 = sub_11440();
      v39 = v38;

      v40 = sub_483C(v37, v39, aBlock);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_0, v32, v33, "Failed to delete all local data %@, %s", v34, 0x16u);
      sub_6A70(v35);

      sub_3B14(v41);
    }

    else
    {
    }
  }
}

void sub_7BE8()
{
  sub_6C3C(0, &qword_1CCF8, NSUserDefaults_ptr);
  v0 = sub_115E0();
  v1 = sub_11450();
  [v0 setBool:0 forKey:v1];
}

uint64_t sub_7CB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_7CF4(void *a1)
{
  sub_6C3C(0, &qword_1CCF8, NSUserDefaults_ptr);
  v2 = sub_115E0();
  v3 = sub_11450();
  [v2 setBool:1 forKey:v3];

  if (qword_1C938 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DataStackConfiguration(0);
  v5 = sub_1898(v4, qword_1CEA0);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = objc_allocWithZone(type metadata accessor for CoreDataStackShared(0));
  v9 = sub_AAA8(v6, v7);
  v10 = *&v9[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_context];
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = a1;
  v16[4] = sub_9768;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_7CB0;
  v16[3] = &unk_18CA8;
  v12 = _Block_copy(v16);
  v13 = v10;
  v14 = v9;
  v15 = a1;

  [v13 performBlock:v12];
  _Block_release(v12);
}

uint64_t sub_7ED8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_7F58(void *a1, uint64_t a2, void *a3)
{
  sub_11210();
  sub_11200();
  sub_11190();
  v18 = MKBGetDeviceLockState();
  if (v18 == 1)
  {
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v19 = sub_113E0();
    sub_1898(v19, qword_1CCE0);
    oslog = sub_113C0();
    v20 = sub_115B0();
    if (!os_log_type_enabled(oslog, v20))
    {
      goto LABEL_32;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Device is locked";
LABEL_31:
    _os_log_impl(&dword_0, oslog, v20, v22, v21, 2u);

LABEL_32:

    return;
  }

  v23 = [*(a2 + OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container) viewContext];
  v24 = [v23 persistentStoreCoordinator];

  if (!v24 || ((v25 = [v24 persistentStores], sub_6C3C(0, &qword_1CD00, NSPersistentStore_ptr), v26 = sub_11500(), v25, v26 >> 62) ? (v27 = sub_11770()) : (v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8))), (, v24, !v27) || *(a2 + OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_persistentStoresLoadSuccess) != 1))
  {
LABEL_27:
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v40 = sub_113E0();
    sub_1898(v40, qword_1CCE0);
    oslog = sub_113C0();
    v20 = sub_115B0();
    if (!os_log_type_enabled(oslog, v20))
    {
      goto LABEL_32;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Database is not open";
    goto LABEL_31;
  }

  aBlock[0] = 0;
  if ([a1 save:aBlock])
  {
    v28 = qword_1C970;
    v29 = aBlock[0];
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = sub_113E0();
    sub_1898(v30, qword_1CCE0);
    v31 = sub_113C0();
    v32 = sub_115D0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Marked all records as not uploaded", v33, 2u);
    }

    if (qword_1C958 != -1)
    {
      swift_once();
    }

    v34 = qword_1CEB8;
    v35 = swift_allocObject();
    *(v35 + 16) = a3;
    v36 = swift_allocObject();
    v36[2] = sub_9774;
    v36[3] = v35;
    aBlock[4] = sub_A92C;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_7C88;
    aBlock[3] = &unk_18D20;
    v37 = _Block_copy(aBlock);
    v38 = a3;

    dispatch_sync(v34, v37);
    _Block_release(v37);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    v41 = aBlock[0];
    sub_11030();

    swift_willThrow();
    v6 = sub_11020();
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v7 = sub_113E0();
    sub_1898(v7, qword_1CCE0);
    v8 = v6;
    v9 = sub_113C0();
    v10 = sub_115C0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v11 = 138412546;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2080;
      osloga = v8;
      v13 = [osloga userInfo];
      sub_11430();

      v14 = sub_11440();
      v16 = v15;

      v17 = sub_483C(v14, v16, aBlock);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_0, v9, v10, "Error trying to mark all records as not uploaded %@, %s", v11, 0x16u);
      sub_6A70(v12);

      sub_3B14(v42);
    }

    else
    {
    }
  }
}

void sub_86B4()
{
  sub_6C3C(0, &qword_1CCF8, NSUserDefaults_ptr);
  v0 = sub_115E0();
  v1 = sub_11450();
  [v0 setBool:0 forKey:v1];
}

void sub_8754(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v10 = sub_BDD0(a2);
  if (!v5)
  {
    v11 = v10;
    v12 = sub_BE14(a2);
    v13 = a2;
    v14 = 0;
    v15 = v12;
    v96 = v13;
    if (qword_1C970 != -1)
    {
LABEL_90:
      swift_once();
    }

    v16 = sub_113E0();
    sub_1898(v16, qword_1CCE0);

    v17 = sub_113C0();
    v18 = sub_115D0();
    v93 = a3;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      if (v11 >> 62)
      {
        v20 = sub_11770();
      }

      else
      {
        v20 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
      }

      *(v19 + 4) = v20;

      _os_log_impl(&dword_0, v17, v18, "(actionUploadChanges) un-uploaded assets count:%ld", v19, 0xCu);
    }

    else
    {
    }

    v21 = sub_113C0();
    v22 = sub_115D0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      if (v15 >> 62)
      {
        v24 = sub_11770();
      }

      else
      {
        v24 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      }

      *(v23 + 4) = v24;

      _os_log_impl(&dword_0, v21, v22, "(actionUploadChanges) un-uploaded attachments count:%ld", v23, 0xCu);
    }

    else
    {
    }

    v25 = sub_CB20(v96);
    if (v14)
    {
LABEL_14:

      return;
    }

    v26 = v25;
    v90 = v15;
    v91 = v11;
    v15 = 0;
    v14 = sub_CB68(v96);
    *&v97 = v26;

    sub_97F4(v27, sub_9B2C);
    *v93 = v97;

    v28 = sub_113C0();
    LOBYTE(v29) = sub_115D0();
    v92 = a5;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134218240;
      if (v26 >> 62)
      {
LABEL_95:
        v31 = sub_11770();
      }

      else
      {
        v31 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
      }

      *(v30 + 4) = v31;

      *(v30 + 12) = 2048;
      if (v14 >> 62)
      {
        v32 = sub_11770();
      }

      else
      {
        v32 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
      }

      a5 = v92;

      *(v30 + 14) = v32;

      _os_log_impl(&dword_0, v28, v29, "(actionUploadChanges) will delete %ld asset records, and %ld attachment records", v30, 0x16u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v40 = v15;
    v86 = *(a4 + 16);
    if (v86)
    {
      v41 = 0;
      while (1)
      {
        sub_11370();
        v14 = v40;
        if (v40)
        {
          goto LABEL_14;
        }

        v89 = v41 + 1;
        sub_3610(&qword_1CD28, &qword_12778);
        v15 = sub_11760();
        a5 = (v15 + 40);

        a3 = 0;
        v44 = &_swiftEmptyArrayStorage;
        *&v97 = &_swiftEmptyArrayStorage;
        a4 = *(v15 + 16);
LABEL_29:
        v95 = v44;
        v45 = &a5[2 * a3];
        while (a4 != a3)
        {
          if (a3 >= *(v15 + 16))
          {
            __break(1u);
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          ++a3;
          v11 = (v45 + 2);
          v46 = *(v45 - 1);
          swift_getObjectType();
          v47 = v46;
          v48 = sub_11360();

          v45 = v11;
          if (v48)
          {
            sub_114E0();
            if (*(&dword_10 + (v97 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v97 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_11520();
            }

            sub_11530();
            v44 = v97;
            goto LABEL_29;
          }
        }

        sub_97F4(v49, sub_998C);
        sub_11380();
        v14 = sub_11760();

        swift_getKeyPath();
        v99 = &_swiftEmptyArrayStorage;
        a3 = *(v14 + 16);
        if (a3)
        {
          v11 = 0;
          a5 = (v14 + 32);
          v94 = &_swiftEmptyArrayStorage;
LABEL_38:
          a4 = v11;
          while (a4 < *(v14 + 16))
          {
            v11 = a4 + 1;
            v97 = *&a5[2 * a4];
            v50 = v97;
            swift_getAtKeyPath();

            if (v98)
            {
              sub_114E0();
              if (*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v99 & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                sub_11520();
              }

              sub_11530();
              v94 = v99;
              if (a3 - 1 != a4)
              {
                goto LABEL_38;
              }

              goto LABEL_48;
            }

            ++a4;
            if (a3 == v11)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_89;
        }

        v94 = &_swiftEmptyArrayStorage;
LABEL_48:

        v11 = v94;

        sub_97F4(v51, sub_9B2C);
        v52 = *(v15 + 16);
        v53 = v95 >> 62;
        if (v95 >> 62)
        {
          v54 = sub_11770();
        }

        else
        {
          v54 = *(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8));
        }

        a5 = v92;
        if (v52 == v54)
        {
        }

        else
        {

          v30 = sub_113C0();
          v55 = sub_115B0();
          if (os_log_type_enabled(v30, v55))
          {
            v87 = v55;
            v29 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            *&v97 = v56;
            *v29 = 134218242;
            a4 = *(v15 + 16);
            v83 = v56;
            if (v95 >> 62)
            {
              v28 = sub_11770();
            }

            else
            {
              v28 = *(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8));
            }

            if (__OFSUB__(a4, v28))
            {
              __break(1u);
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            *(v29 + 4) = a4 - v28;

            *(v29 + 12) = 2080;
            v57 = sub_11230();
            v59 = sub_483C(v57, v58, &v97);

            *(v29 + 14) = v59;
            _os_log_impl(&dword_0, v30, v87, "Failed to create %ld %s CKRecords for saving", v29, 0x16u);
            sub_3B14(v83);

            v53 = v95 >> 62;
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }
        }

        v60 = *(v14 + 16);
        v88 = v94 >> 62;
        if (v94 >> 62)
        {
          if (v60 == sub_11770())
          {
LABEL_61:

            goto LABEL_71;
          }
        }

        else if (v60 == *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_61;
        }

        v30 = sub_113C0();
        v15 = sub_115B0();
        if (os_log_type_enabled(v30, v15))
        {
          v85 = v53;
          v29 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v97 = v61;
          *v29 = 134218242;
          a4 = *(v14 + 16);
          v84 = v61;
          if (v88)
          {
            v28 = sub_11770();
          }

          else
          {
            v28 = *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8));
          }

          if (__OFSUB__(a4, v28))
          {
            goto LABEL_94;
          }

          *(v29 + 4) = a4 - v28;

          *(v29 + 12) = 2080;
          v62 = sub_11230();
          v64 = sub_483C(v62, v63, &v97);

          *(v29 + 14) = v64;
          _os_log_impl(&dword_0, v30, v15, "Failed to create %ld %s CKRecord.IDs for deletion", v29, 0x16u);
          sub_3B14(v84);

          v53 = v85;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

LABEL_71:

        v65 = sub_113C0();
        v66 = sub_115D0();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *&v97 = v68;
          *v67 = 134218498;
          if (v53)
          {
            v69 = sub_11770();
          }

          else
          {
            v69 = *(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8));
          }

          *(v67 + 4) = v69;

          *(v67 + 12) = 2080;
          v70 = sub_11230();
          v72 = sub_483C(v70, v71, &v97);

          *(v67 + 14) = v72;
          *(v67 + 22) = 2048;
          if (v88)
          {
            v73 = sub_11770();
          }

          else
          {
            v73 = *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8));
          }

          *(v67 + 24) = v73;

          _os_log_impl(&dword_0, v65, v66, "Will upload %ld %s records and delete %ld records", v67, 0x20u);
          sub_3B14(v68);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v41 = v89;
        v40 = 0;
        v43 = v90;
        v42 = v91;
        if (v89 == v86)
        {
          goto LABEL_80;
        }
      }
    }

    v43 = v90;
    v42 = v91;
LABEL_80:
    v74 = sub_E39C(v42, v33, v34, v35, v36, v37, v38, v39, v82);

    v75 = sub_EE34(v43);

    *&v97 = v74;

    sub_97F4(v76, sub_998C);
    *a5 = v97;

    v77 = sub_113C0();
    v78 = sub_115D0();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 134218240;
      if (v74 >> 62)
      {
        v80 = sub_11770();
      }

      else
      {
        v80 = *(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8));
      }

      *(v79 + 4) = v80;

      *(v79 + 12) = 2048;
      if (v75 >> 62)
      {
        v81 = sub_11770();
      }

      else
      {
        v81 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
      }

      *(v79 + 14) = v81;

      _os_log_impl(&dword_0, v77, v78, "(actionUploadChanges) will upload %ld asset records, %ld attachment records", v79, 0x16u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }
  }
}

Swift::Int sub_952C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v4 = sub_113E0();
    sub_1898(v4, qword_1CCE0);
    swift_errorRetain();
    v5 = sub_113C0();
    v6 = sub_115B0();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_0, v5, v6, "Error uploading records: %@", v7, 0xCu);
      sub_6A70(v8);
    }

    swift_beginAccess();
    *(a2 + 16) = a1;
  }

  else
  {
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v10 = sub_113E0();
    sub_1898(v10, qword_1CCE0);
    v11 = sub_113C0();
    v12 = sub_115D0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Completed CloudKit upload", v13, 2u);
    }
  }

  return sub_11660();
}

uint64_t sub_9798()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_97F4(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_11770();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v2 >> 62))
  {
    v6 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_11770();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_98EC(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_98EC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_11770();
LABEL_9:
  result = sub_11740();
  *v2 = result;
  return result;
}

uint64_t sub_998C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_11770();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_11770();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_A8A8(&qword_1CD40, &qword_1CD38, &qword_127B8);
          for (i = 0; i != v6; ++i)
          {
            sub_3610(&qword_1CD38, &qword_127B8);
            v9 = sub_9CCC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_6C3C(0, &qword_1CD30, CKRecord_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_9B2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_11770();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_11770();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_A8A8(&qword_1CD58, &qword_1CD50, &unk_127C0);
          for (i = 0; i != v6; ++i)
          {
            sub_3610(&qword_1CD50, &unk_127C0);
            v9 = sub_9D4C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_6C3C(0, &qword_1CD48, CKRecordID_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_9CCC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_11730();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_A930;
  }

  __break(1u);
  return result;
}

void (*sub_9D4C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_11730();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_9DCC;
  }

  __break(1u);
  return result;
}

void sub_9DD4()
{
  if (qword_1C970 != -1)
  {
    swift_once();
  }

  v0 = sub_113E0();
  sub_1898(v0, qword_1CCE0);
  v1 = sub_113C0();
  v2 = sub_115D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "(killJournalProcess) triggered", v3, 2u);
  }

  v4 = sub_11450();
  SFKillProcessNamed();
}

void sub_9EE8()
{
  v1 = sub_11350();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3610(&qword_1CD08, &qword_12770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126D0;
  v6 = sub_111F0();
  v7 = sub_A774(&qword_1CD10, &type metadata accessor for JournalEntryMO, &protocol conformance descriptor for JournalEntryMO);
  *(inited + 32) = v6;
  *(inited + 40) = v7;
  v8 = sub_111D0();
  v9 = sub_A774(&qword_1CD18, &type metadata accessor for JournalMO, &protocol conformance descriptor for JournalMO);
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v10 = sub_11220();
  v11 = sub_A774(&qword_1CD20, &type metadata accessor for AppStorageMO, &protocol conformance descriptor for AppStorageMO);
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  sub_6C3C(0, &qword_1CCF8, NSUserDefaults_ptr);
  v12 = sub_115E0();
  v13 = sub_11450();
  v14 = [v12 BOOLForKey:v13];

  if (v14)
  {
    swift_setDeallocating();
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v15 = sub_113E0();
    sub_1898(v15, qword_1CCE0);
    v16 = sub_113C0();
    v17 = sub_115D0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "(actionUploadChanges) deleteAllOnNextLaunch is already set", v18, 2u);
    }

    return;
  }

  v53 = v1;
  v52 = v2;
  if (qword_1C938 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for DataStackConfiguration(0);
  v20 = sub_1898(v19, qword_1CEA0);
  v21 = *v20;
  v22 = *(v20 + 8);
  objc_allocWithZone(type metadata accessor for CoreDataStackShared(0));
  v23 = sub_AAA8(v21, v22);
  v24 = *&v23[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_context];
  v25 = dispatch_semaphore_create(0);
  v56 = &_swiftEmptyArrayStorage;
  v55 = &_swiftEmptyArrayStorage;
  __chkstk_darwin(v25);
  *(&v50 - 6) = v23;
  *(&v50 - 5) = v24;
  *(&v50 - 4) = &v55;
  *(&v50 - 3) = inited;
  *(&v50 - 2) = &v56;
  sub_11670();
  v54 = v0;
  if (v0)
  {

    swift_setDeallocating();

    return;
  }

  v50 = v23;
  v51 = v24;
  swift_setDeallocating();
  v26 = v56;
  v27 = v56 >> 62;
  if (v56 >> 62)
  {
    v28 = sub_11770();
  }

  else
  {
    v28 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
  }

  v29 = v53;
  if (v28)
  {
    goto LABEL_16;
  }

  if (v55 >> 62)
  {
    if (sub_11770())
    {
      goto LABEL_16;
    }
  }

  else if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_16:
    v53 = v26;
    if (qword_1C970 != -1)
    {
      swift_once();
    }

    v30 = sub_113E0();
    sub_1898(v30, qword_1CCE0);
    v31 = sub_113C0();
    v32 = sub_115D0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134218240;
      if (v27)
      {
        v34 = sub_11770();
      }

      else
      {
        v34 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
      }

      *(v33 + 4) = v34;
      *(v33 + 12) = 2048;
      swift_beginAccess();
      if (v55 >> 62)
      {
        v35 = sub_11770();
      }

      else
      {
        v35 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
      }

      *(v33 + 14) = v35;
      _os_log_impl(&dword_0, v31, v32, "Will upload %ld total records and delete %ld total records", v33, 0x16u);
    }

    (*(v52 + 16))(v4, v20 + *(v19 + 20), v29);
    v36 = objc_allocWithZone(type metadata accessor for CloudKitStackShared());
    v37 = sub_2894(v4);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    swift_beginAccess();
    v39 = v55;
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v25;
    v41 = v53;

    v42 = v25;
    sub_2AEC(v41, v39, sub_A858, v40);

    sub_11650();
    swift_beginAccess();
    if (*(v38 + 16))
    {
      swift_willThrow();
      swift_errorRetain();
    }

    return;
  }

  if (qword_1C970 != -1)
  {
    swift_once();
  }

  v43 = sub_113E0();
  sub_1898(v43, qword_1CCE0);
  v44 = sub_113C0();
  v45 = sub_115D0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v51;
  v48 = v50;
  if (v46)
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_0, v44, v45, "(actionUploadChanges) nothing to upload", v49, 2u);
  }
}

uint64_t sub_A774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A7E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A818()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A868@<X0>(uint64_t *a3@<X8>)
{
  swift_getObjectType();
  result = sub_11250();
  *a3 = result;
  return result;
}

uint64_t sub_A8A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_6B94(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_A988(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SharedDeviceInfoProvider();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_A9E0()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CD88);
  v1 = sub_1898(v0, qword_1CD88);
  if (qword_1C960 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CEC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_AAA8(void *a1, uint64_t a2)
{
  v67 = sub_11110();
  v64 = *(v67 - 8);
  v5 = *(v64 + 64);
  v6 = __chkstk_darwin(v67);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_11150();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v62 = &v58 - v14;
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_sessionID;
  sub_11140();
  v2[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_persistentStoresLoadSuccess] = 0;
  v63 = a1;
  v18 = sub_105F0(a1, a2);
  v19 = OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container;
  *&v2[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container] = v18;
  v61 = v10;
  v20 = *(v10 + 16);
  v68 = v16;
  v65 = v9;
  v20(v16, &v2[v17], v9);
  v66 = v8;
  sub_11100();
  v21 = [*&v2[v19] viewContext];
  *&v2[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_context] = v21;
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 mergeByPropertyStoreTrumpMergePolicy];
  [v23 setMergePolicy:v24];

  v25 = type metadata accessor for CoreDataStackShared(0);
  v70.receiver = v2;
  v70.super_class = v25;
  v26 = objc_msgSendSuper2(&v70, "init");
  if (MKBGetDeviceLockState() == 1)
  {
    v27 = v68;
    v28 = v65;
    if (qword_1C978 != -1)
    {
      swift_once();
    }

    v29 = sub_113E0();
    sub_1898(v29, qword_1CD88);
    v30 = v62;
    v20(v62, v27, v28);
    v31 = sub_113C0();
    v32 = sub_115B0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136446210;
      sub_BD2C();
      v35 = sub_117A0();
      v36 = v28;
      v38 = v37;
      v39 = *(v61 + 8);
      v39(v30, v36);
      v40 = sub_483C(v35, v38, aBlock);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_0, v31, v32, "%{public}s (sharedCoredataInit) SharedDeviceInfoProvider.isDeviceLocked == TRUE, unable to complete CoreDataStackShared initialization.", v33, 0xCu);
      sub_3B14(v34);

      (*(v64 + 8))(v66, v67);
      v39(v68, v65);
    }

    else
    {

      v56 = *(v61 + 8);
      v56(v30, v28);
      (*(v64 + 8))(v66, v67);
      v56(v27, v28);
    }
  }

  else
  {
    v58 = *&v26[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container];
    v41 = v59;
    v42 = v65;
    v20(v59, v68, v65);
    v62 = v26;
    v43 = v64;
    v44 = v60;
    (*(v64 + 16))(v60, v66, v67);
    v45 = v61;
    v46 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v47 = (v11 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (*(v43 + 80) + v47 + 8) & ~*(v43 + 80);
    v49 = swift_allocObject();
    v50 = v41;
    v51 = v42;
    (*(v45 + 32))(v49 + v46, v50, v42);
    *(v49 + v47) = v62;
    v52 = v67;
    (*(v43 + 32))(v49 + v48, v44, v67);
    aBlock[4] = sub_BC20;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_B848;
    aBlock[3] = &unk_18F00;
    v53 = _Block_copy(aBlock);
    v54 = v58;
    v55 = v62;

    [v54 loadPersistentStoresWithCompletionHandler:v53];
    _Block_release(v53);

    (*(v43 + 8))(v66, v52);
    v26 = v62;
    (*(v45 + 8))(v68, v51);
  }

  return v26;
}

void sub_B130(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4, uint64_t a5)
{
  v9 = sub_11110();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_11150();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v18 = &v61 - v17;
  if (a2)
  {
    v19 = sub_11020();
    if (qword_1C978 != -1)
    {
      swift_once();
    }

    v20 = sub_113E0();
    sub_1898(v20, qword_1CD88);
    (*(v14 + 16))(v18, a3, v13);
    v21 = v19;
    v22 = sub_113C0();
    v23 = sub_115C0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v68 = v26;
      *v24 = 136446466;
      sub_BD2C();
      v27 = sub_117A0();
      v28 = v13;
      v30 = v29;
      (*(v14 + 8))(v18, v28);
      v31 = sub_483C(v27, v30, &v68);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v21;
      *v25 = v21;
      v32 = v21;
      _os_log_impl(&dword_0, v22, v23, "%{public}s (sharedCoredataInit) LoadPersistentStores Unresolved error: %@", v24, 0x16u);
      sub_6A70(v25);

      sub_3B14(v26);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }
  }

  else
  {
    v63 = a5;
    v64 = v16;
    a4[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_persistentStoresLoadSuccess] = 1;
    v33 = [*&a4[OBJC_IVAR____TtC21JournalDataclassOwner19CoreDataStackShared_container] viewContext];
    v34 = [v33 persistentStoreCoordinator];

    v65 = a3;
    v62 = v12;
    if (v34)
    {
      v35 = [v34 persistentStores];

      sub_BD84();
      v36 = sub_11500();

      if (v36 >> 62)
      {
        v37 = sub_11770();
      }

      else
      {
        v37 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
      }
    }

    else
    {
      v37 = 0;
    }

    v66 = v10;
    v38 = v13;
    if (qword_1C978 != -1)
    {
      swift_once();
    }

    v39 = sub_113E0();
    sub_1898(v39, qword_1CD88);
    v40 = a4;
    v41 = sub_113C0();
    v42 = sub_115D0();

    v43 = os_log_type_enabled(v41, v42);
    v67 = v9;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v68 = v45;
      *v44 = 136446466;
      sub_BD2C();
      v46 = sub_117A0();
      v48 = sub_483C(v46, v47, &v68);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2048;
      *(v44 + 14) = v37;
      _os_log_impl(&dword_0, v41, v42, "%{public}s(sharedCoredataInit) persistentStoresCount:%ld", v44, 0x16u);
      sub_3B14(v45);
      v9 = v67;
    }

    v49 = v64;
    (*(v14 + 16))(v64, v65, v38);
    v50 = v66;
    v51 = v62;
    (*(v66 + 16))(v62, v63, v9);
    v52 = sub_113C0();
    v53 = sub_115D0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v68 = v65;
      *v54 = 136446466;
      sub_BD2C();
      v55 = sub_117A0();
      v57 = v56;
      (*(v14 + 8))(v49, v38);
      v58 = sub_483C(v55, v57, &v68);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2048;
      sub_110E0();
      v60 = v59;
      (*(v50 + 8))(v51, v67);
      *(v54 + 14) = -v60;
      _os_log_impl(&dword_0, v52, v53, "%{public}s (sharedCoredataInit) container.loadPersistentStores completed in %f seconds.", v54, 0x16u);
      sub_3B14(v65);
    }

    else
    {

      (*(v50 + 8))(v51, v9);
      (*(v14 + 8))(v49, v38);
    }
  }
}

void sub_B848(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

id sub_B904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataStackShared(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CoreDataStackShared(uint64_t a1)
{
  result = qword_1CDD0;
  if (!qword_1CDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BA1C(uint64_t a1)
{
  result = sub_11150();
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

uint64_t sub_BAC4()
{
  v1 = sub_11150();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_11110();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_BC20(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_11150() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_11110() - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  sub_B130(a1, a2, (v2 + v6), v9, v10);
}

uint64_t sub_BD14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_BD2C()
{
  result = qword_1CDE0;
  if (!qword_1CDE0)
  {
    sub_11150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CDE0);
  }

  return result;
}

unint64_t sub_BD84()
{
  result = qword_1CD00;
  if (!qword_1CD00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CD00);
  }

  return result;
}

void *sub_BE58(uint64_t a1, const char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, ...)
{
  v9 = v6;
  if (qword_1C980 != -1)
  {
    swift_once();
  }

  v10 = sub_113E0();
  sub_1898(v10, qword_1CDE8);
  v11 = v5;
  v12 = sub_113C0();
  v13 = sub_115D0();

  if (os_log_type_enabled(v12, v13))
  {
    v21 = a2;
    v14 = swift_slowAlloc();
    v22 = a4;
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136446210;
    sub_11150();
    sub_F570(&qword_1CDE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = sub_117A0();
    v18 = sub_483C(v16, v17, &v24);

    *(v14 + 4) = v18;
    v9 = v6;
    _os_log_impl(&dword_0, v12, v13, v21, v14, 0xCu);
    sub_3B14(v15);
    a4 = v22;
  }

  __chkstk_darwin(v19);
  sub_3610(a3, a4);
  result = sub_11670();
  if (!v9)
  {
    return v24;
  }

  return result;
}

uint64_t sub_C0A4()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CDE8);
  v1 = sub_1898(v0, qword_1CDE8);
  if (qword_1C960 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CEC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_C16C(void *a1@<X1>, unint64_t *a2@<X8>)
{
  sub_11180();
  v5 = sub_11160();
  v6 = sub_11170();
  [v5 setPredicate:v6];

  v7 = sub_11690();
  if (v2)
  {
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v8 = sub_113E0();
    sub_1898(v8, qword_1CDE8);
    v9 = a1;
    swift_errorRetain();
    v10 = sub_113C0();
    v11 = sub_115C0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v30 = v5;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v12 = 136446466;
      sub_11150();
      sub_F570(&qword_1CDE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_117A0();
      v17 = sub_483C(v15, v16, &v32);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v18;
      *v13 = v18;
      _os_log_impl(&dword_0, v10, v11, "%{public}s (getUnuploadedAssets) Unable to get un-uploaded assets: %@", v12, 0x16u);
      sub_394C(v13, &qword_1CC20, &qword_12690);
      v5 = v30;

      sub_3B14(v14);
    }

    swift_willThrow();
  }

  else
  {
    v19 = v7;
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v20 = sub_113E0();
    sub_1898(v20, qword_1CDE8);
    swift_bridgeObjectRetain_n();
    v21 = a1;
    v22 = sub_113C0();
    v23 = sub_115D0();

    if (os_log_type_enabled(v22, v23))
    {
      v31 = v5;
      v24 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v24 = 136446466;
      sub_11150();
      sub_F570(&qword_1CDE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = sub_117A0();
      v27 = sub_483C(v25, v26, &v32);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2048;
      if (v19 >> 62)
      {
        v28 = sub_11770();
      }

      else
      {
        v28 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      }

      *(v24 + 14) = v28;

      _os_log_impl(&dword_0, v22, v23, "%{public}s (getUnuploadedAssets) fetched un-uploaded assets:%ld", v24, 0x16u);
      sub_3B14(v29);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    *a2 = v19;
  }
}

void sub_C5F8(void *a1@<X1>, unint64_t *a2@<X8>)
{
  sub_111C0();
  v5 = sub_111B0();
  sub_3610(&qword_1CE38, &qword_128F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_12830;
  sub_6C3C(0, &qword_1CE40, NSPredicate_ptr);
  *(v6 + 32) = sub_11570();
  *(v6 + 40) = sub_11580();
  isa = sub_114F0().super.isa;

  v8 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v5 setPredicate:v8];
  v9 = sub_11690();
  if (v2)
  {
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v10 = sub_113E0();
    sub_1898(v10, qword_1CDE8);
    v11 = a1;
    swift_errorRetain();
    v12 = sub_113C0();
    v13 = sub_115C0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v32 = v5;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v14 = 136446466;
      sub_11150();
      sub_F570(&qword_1CDE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = sub_117A0();
      v19 = sub_483C(v17, v18, &v34);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&dword_0, v12, v13, "%{public}s (getUnuploadedAttachments) Unable to get un-uploaded attachments: %@", v14, 0x16u);
      sub_394C(v15, &qword_1CC20, &qword_12690);
      v5 = v32;

      sub_3B14(v16);
    }

    swift_willThrow();
  }

  else
  {
    v21 = v9;
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v22 = sub_113E0();
    sub_1898(v22, qword_1CDE8);
    swift_bridgeObjectRetain_n();
    v23 = a1;
    v24 = sub_113C0();
    v25 = sub_115D0();

    if (os_log_type_enabled(v24, v25))
    {
      v33 = v5;
      v26 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v26 = 136446466;
      sub_11150();
      sub_F570(&qword_1CDE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = sub_117A0();
      v29 = sub_483C(v27, v28, &v34);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2048;
      if (v21 >> 62)
      {
        v30 = sub_11770();
      }

      else
      {
        v30 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      }

      *(v26 + 14) = v30;

      _os_log_impl(&dword_0, v24, v25, "%{public}s (getUnuploadedAttachments) fetched un-uploaded attachments:%ld", v26, 0x16u);
      sub_3B14(v31);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    *a2 = v21;
  }
}

void *sub_CBB0(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4)
{
  a2(0);
  v7 = a3();
  sub_3610(&qword_1CE38, &qword_128F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_12840;
  sub_6C3C(0, &qword_1CE40, NSPredicate_ptr);
  *(v8 + 32) = sub_11560();
  isa = sub_114F0().super.isa;

  v10 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v7 setPredicate:v10];
  v11 = a1;
  v12 = sub_11690();
  if (!v4)
  {
    v13 = v12;
    swift_getKeyPath();
    if (v13 >> 62)
    {
LABEL_22:
      v14 = sub_11770();
      v20 = v7;
      if (v14)
      {
LABEL_5:
        v15 = 0;
        v7 = (v13 & 0xC000000000000001);
        v11 = &_swiftEmptyArrayStorage;
        do
        {
          v16 = v15;
          while (1)
          {
            if (v7)
            {
              v17 = sub_11730();
              v15 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (v16 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_21;
              }

              v17 = *(v13 + 8 * v16 + 32);
              v15 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
LABEL_20:
                __break(1u);
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }
            }

            v18 = v17;
            swift_getAtKeyPath();

            if (v21)
            {
              break;
            }

            ++v16;
            if (v15 == v14)
            {
              goto LABEL_24;
            }
          }

          sub_114E0();
          if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_11520();
          }

          sub_11530();
          v11 = &_swiftEmptyArrayStorage;
        }

        while (v15 != v14);
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
      v20 = v7;
      if (v14)
      {
        goto LABEL_5;
      }
    }

    v11 = &_swiftEmptyArrayStorage;
LABEL_24:

    return v11;
  }

  return v11;
}

NSObject *sub_CE64(uint64_t a1, uint64_t a2, void *a3)
{
  v184 = a1;
  v4 = sub_11150();
  v177 = *(v4 - 8);
  v178 = v4;
  __chkstk_darwin(v4);
  v172 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3610(&qword_1CE18, &qword_12858);
  v7 = __chkstk_darwin(v6 - 8);
  v175 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v176 = &v169 - v9;
  v10 = sub_3610(&qword_1CE20, &qword_12860);
  v11 = __chkstk_darwin(v10 - 8);
  v179 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v169 - v14;
  v16 = __chkstk_darwin(v13);
  v173 = (&v169 - v17);
  __chkstk_darwin(v16);
  v174 = &v169 - v18;
  v19 = sub_110B0();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v183 = (&v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v21);
  v25 = &v169 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v169 - v27;
  __chkstk_darwin(v26);
  v30 = &v169 - v29;
  sub_11180();
  sub_F570(&qword_1CE28, &type metadata accessor for JournalEntryAssetMO, &protocol conformance descriptor for JournalEntryAssetMO);
  v31 = sub_11240();
  if (!v31)
  {
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v60 = sub_113E0();
    sub_1898(v60, qword_1CDE8);
    v61 = a3;
    v62 = sub_113C0();
    v63 = sub_115B0();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v189 = v65;
      *v64 = 136315138;
      v66 = [v61 debugDescription];
      v67 = sub_11480();
      v69 = v68;

      v70 = sub_483C(v67, v69, &v189);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_0, v62, v63, "Failed to create partial record for asset: %s", v64, 0xCu);
      sub_3B14(v65);
    }

    goto LABEL_16;
  }

  v32 = v31;
  v171 = v15;
  v186 = v30;
  v187 = v19;
  v33 = sub_11120();
  v35 = v34;
  sub_6C3C(0, &qword_1CD48, CKRecordID_ptr);
  v36 = sub_11340();
  v188 = a3;
  v37 = v36;
  v38 = [v36 zoneID];

  v39 = v188;
  v192._countAndFlagsBits = v33;
  v192._object = v35;
  v40.super.isa = v38;
  isa = sub_11540(v192, v40).super.isa;
  [objc_allocWithZone(CKReference) initWithRecordID:isa action:1];

  v185 = v32;
  sub_116D0();
  v42 = [v39 assetMetaData];
  if (!v42)
  {
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v71 = sub_113E0();
    sub_1898(v71, qword_1CDE8);
    v72 = v39;
    v73 = sub_113C0();
    v74 = sub_115B0();

    v75 = os_log_type_enabled(v73, v74);
    v62 = v185;
    if (v75)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v189 = v77;
      *v76 = 136315138;
      v78 = [v72 debugDescription];
      v79 = sub_11480();
      v81 = v80;

      v82 = sub_483C(v79, v81, &v189);

      *(v76 + 4) = v82;
      _os_log_impl(&dword_0, v73, v74, "Missing assetMetadata for asset id %s", v76, 0xCu);
      sub_3B14(v77);
    }

LABEL_16:
    return 0;
  }

  v43 = v42;
  v181 = sub_110C0();
  v182 = v44;

  v45 = sub_11120();
  v47 = v46;
  type metadata accessor for CloudKitStackShared();
  sub_30EC(v28);
  *&v189 = 0;
  *(&v189 + 1) = 0xE000000000000000;
  sub_11720(16);

  *&v189 = v45;
  *(&v189 + 1) = v47;
  v193._countAndFlagsBits = 0x654D74657373612DLL;
  v193._object = 0xEE00617461646174;
  sub_114B0(v193);
  v48 = v186;
  sub_11080();

  v49 = *(v20 + 8);
  v50 = v187;
  v184 = v20 + 8;
  v180 = v49;
  v49(v28, v187);
  if (qword_1C980 != -1)
  {
    swift_once();
  }

  v51 = sub_113E0();
  sub_1898(v51, qword_1CDE8);
  (*(v20 + 16))(v25, v48, v50);
  v52 = sub_113C0();
  v53 = sub_115A0();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v189 = v55;
    *v54 = 136315138;
    sub_F570(&qword_1CE10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v56 = sub_117A0();
    v58 = v57;
    v180(v25, v187);
    v59 = sub_483C(v56, v58, &v189);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_0, v52, v53, "Saving assetMetadata to url: %s", v54, 0xCu);
    sub_3B14(v55);
    v39 = v188;
  }

  else
  {

    v180(v25, v50);
  }

  sub_110D0();
  v85 = objc_allocWithZone(CKAsset);
  sub_11070(v86);
  v88 = v87;
  v89 = [v85 initWithFileURL:v87];

  v90 = v89;
  v91 = v185;
  sub_116D0();

  v92 = [v91 encryptedValues];
  v93 = [v39 title];
  if (v93)
  {
    v94 = v93;
    v95 = sub_110C0();
    v97 = v96;

    v98 = &protocol witness table for Data;
    v99 = &type metadata for Data;
  }

  else
  {
    v95 = 0;
    v97 = 0;
    v99 = 0;
    v98 = 0;
    *&v190 = 0;
  }

  v100 = v175;
  *&v189 = v95;
  *(&v189 + 1) = v97;
  *(&v190 + 1) = v99;
  v191 = v98;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v101 = [v91 encryptedValues];
  v102 = [v39 assetType];
  if (v102)
  {
    v103 = v102;
    v104 = sub_11480();
    v106 = v105;

    v107 = &protocol witness table for String;
    v108 = &type metadata for String;
  }

  else
  {
    v104 = 0;
    v106 = 0;
    v108 = 0;
    v107 = 0;
    *&v190 = 0;
  }

  v109 = v173;
  *&v189 = v104;
  *(&v189 + 1) = v106;
  *(&v190 + 1) = v108;
  v191 = v107;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v110 = [v91 encryptedValues];
  v111 = [v39 createdDate];
  if (v111)
  {
    v112 = v111;
    sub_110F0();

    v113 = 0;
  }

  else
  {
    v113 = 1;
  }

  v114 = sub_11110();
  v115 = *(v114 - 8);
  v116 = v115;
  v183 = *(v115 + 56);
  v175 = (v115 + 56);
  v183(v109, v113, 1, v114);
  v117 = v174;
  sub_F2F8(v109, v174, &qword_1CE20, &qword_12860);
  v173 = *(v116 + 48);
  v118 = v173(v117, 1, v114);
  v170 = v116;
  if (v118 == 1)
  {
    sub_394C(v117, &qword_1CE20, &qword_12860);
    v189 = 0u;
    v190 = 0u;
    v191 = 0;
  }

  else
  {
    *(&v190 + 1) = v114;
    v191 = &protocol witness table for Date;
    v119 = sub_F360(&v189);
    (*(v116 + 32))(v119, v117, v114);
  }

  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v120 = [v91 encryptedValues];
  swift_getObjectType();
  v121 = [v188 minimumSupportedAppVersion];
  *(&v190 + 1) = &type metadata for Int16;
  v191 = &protocol witness table for Int16;
  LOWORD(v189) = v121;
  v83 = v185;
  sub_116A0();
  swift_unknownObjectRelease();
  [v83 encryptedValues];
  sub_6C3C(0, &qword_1CE30, NSManagedObjectModel_ptr);
  v122 = sub_11640();
  v123 = sub_11630();
  v125 = v124;

  if (v125)
  {
    v126 = &protocol witness table for String;
    v127 = &type metadata for String;
  }

  else
  {
    v123 = 0;
    v127 = 0;
    v126 = 0;
    *&v190 = 0;
  }

  *&v189 = v123;
  *(&v189 + 1) = v125;
  *(&v190 + 1) = v127;
  v191 = v126;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v128 = [v83 encryptedValues];
  v129 = [v188 source];
  if (v129)
  {
    v130 = v129;
    v131 = sub_11480();
    v133 = v132;

    v134 = &protocol witness table for String;
    v135 = &type metadata for String;
  }

  else
  {
    v131 = 0;
    v133 = 0;
    v135 = 0;
    v134 = 0;
    *&v190 = 0;
  }

  v136 = v176;
  *&v189 = v131;
  *(&v189 + 1) = v133;
  *(&v190 + 1) = v135;
  v191 = v134;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  [v83 encryptedValues];
  v137 = [v188 suggestionId];
  if (v137)
  {
    v138 = v137;
    sub_11130();

    v139 = 0;
  }

  else
  {
    v139 = 1;
  }

  v140 = v177;
  v141 = v178;
  (*(v177 + 56))(v100, v139, 1, v178);
  sub_F2F8(v100, v136, &qword_1CE18, &qword_12858);
  if ((*(v140 + 48))(v136, 1, v141))
  {
    sub_394C(v136, &qword_1CE18, &qword_12858);
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    *&v190 = 0;
  }

  else
  {
    v146 = v172;
    (*(v140 + 16))(v172, v136, v141);
    sub_394C(v136, &qword_1CE18, &qword_12858);
    v147 = v140;
    v144 = sub_11120();
    v145 = v148;
    (*(v147 + 8))(v146, v141);
    v143 = &protocol witness table for String;
    v142 = &type metadata for String;
  }

  *(&v190 + 1) = v142;
  v191 = v143;
  *&v189 = v144;
  *(&v189 + 1) = v145;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v149 = [v83 encryptedValues];
  v150 = [v188 suggestionDate];
  if (v150)
  {
    v151 = v179;
    v152 = v150;
    sub_110F0();

    v153 = 0;
  }

  else
  {
    v153 = 1;
    v151 = v179;
  }

  v183(v151, v153, 1, v114);
  v154 = v171;
  sub_F2F8(v151, v171, &qword_1CE20, &qword_12860);
  if (v173(v154, 1, v114) == 1)
  {
    sub_394C(v154, &qword_1CE20, &qword_12860);
    v189 = 0u;
    v190 = 0u;
    v191 = 0;
  }

  else
  {
    *(&v190 + 1) = v114;
    v191 = &protocol witness table for Date;
    v155 = sub_F360(&v189);
    (*(v170 + 32))(v155, v154, v114);
  }

  v156 = v186;
  v157 = v188;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v158 = [v83 encryptedValues];
  swift_getObjectType();
  v159 = [v157 isSlim];
  *(&v190 + 1) = &type metadata for Bool;
  v191 = &protocol witness table for Bool;
  LOBYTE(v189) = v159;
  sub_116A0();
  swift_unknownObjectRelease();
  v160 = [v83 encryptedValues];
  v161 = [v157 osVersion];
  if (v161)
  {
    v162 = v161;
    v163 = sub_11480();
    v165 = v164;

    v166 = &protocol witness table for String;
    v167 = &type metadata for String;
  }

  else
  {
    v163 = 0;
    v165 = 0;
    v167 = 0;
    v166 = 0;
    *&v190 = 0;
  }

  v168 = v187;
  *&v189 = v163;
  *(&v189 + 1) = v165;
  *(&v190 + 1) = v167;
  v191 = v166;
  swift_getObjectType();
  sub_116A0();
  sub_F2A4(v181, v182);
  swift_unknownObjectRelease();
  v180(v156, v168);
  return v83;
}

NSObject *sub_E3C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_11040();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_110B0();
  v102 = *(v8 - 8);
  v103 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v96 - v13;
  __chkstk_darwin(v12);
  v16 = &v96 - v15;
  sub_111C0();
  sub_F570(&qword_1CE00, &type metadata accessor for JournalEntryAssetFileAttachmentMO, &protocol conformance descriptor for JournalEntryAssetFileAttachmentMO);
  v17 = sub_11240();
  if (!v17)
  {
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v36 = sub_113E0();
    sub_1898(v36, qword_1CDE8);
    v37 = a3;
    v18 = sub_113C0();
    v38 = sub_115B0();

    if (os_log_type_enabled(v18, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v37;
      *v40 = v37;
      v41 = v37;
      _os_log_impl(&dword_0, v18, v38, "Failed to create partial record for the attachment: %@", v39, 0xCu);
      sub_394C(v40, &qword_1CC20, &qword_12690);
    }

    goto LABEL_27;
  }

  v18 = v17;
  v99 = v5;
  v100 = v4;
  v98 = v11;
  v101 = v16;
  v19 = sub_11120();
  v21 = v20;
  sub_6C3C(0, &qword_1CD48, CKRecordID_ptr);
  v22 = sub_11340();
  v23 = [v22 zoneID];

  v110._countAndFlagsBits = v19;
  v110._object = v21;
  v24.super.isa = v23;
  isa = sub_11540(v110, v24).super.isa;
  [objc_allocWithZone(CKReference) initWithRecordID:isa action:1];

  sub_116D0();
  v26 = [v18 encryptedValues];
  swift_getObjectType();
  v27 = [a3 index];
  v108 = &type metadata for Int16;
  v109 = &protocol witness table for Int16;
  LOWORD(v105) = v27;
  sub_116A0();
  swift_unknownObjectRelease();
  v28 = [v18 encryptedValues];
  v29 = [a3 name];
  if (v29)
  {
    v30 = v29;
    v31 = sub_11480();
    v33 = v32;

    v34 = &protocol witness table for String;
    v35 = &type metadata for String;
  }

  else
  {
    v31 = 0;
    v33 = 0;
    v35 = 0;
    v34 = 0;
    v107 = 0;
  }

  v105 = v31;
  v106 = v33;
  v108 = v35;
  v109 = v34;
  swift_getObjectType();
  sub_116A0();
  swift_unknownObjectRelease();
  v42 = [a3 filePath];
  v43 = v101;
  if (!v42)
  {
    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v66 = sub_113E0();
    sub_1898(v66, qword_1CDE8);
    v67 = a3;
    v68 = sub_113C0();
    v69 = sub_115B0();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v104 = v71;
      *v70 = 136315138;
      v72 = [v67 filePath];
      if (v72)
      {
        v73 = v72;
        v74 = sub_11480();
        v76 = v75;
      }

      else
      {
        v74 = 0;
        v76 = 0;
      }

      v105 = v74;
      v106 = v76;
      sub_3610(&qword_1CE08, &qword_12850);
      v92 = sub_11490();
      v94 = sub_483C(v92, v93, &v104);

      *(v70 + 4) = v94;
      _os_log_impl(&dword_0, v68, v69, "Unable to get attachment url: %s", v70, 0xCu);
      sub_3B14(v71);
    }

LABEL_27:
    return 0;
  }

  v44 = v42;
  v45 = sub_11480();
  v47 = v46;

  if (qword_1C930 != -1)
  {
    swift_once();
  }

  v48 = sub_11310();
  sub_1898(v48, qword_1CE88);
  sub_112C0();
  v105 = v45;
  v106 = v47;
  v49 = v99;
  v50 = *(v99 + 104);
  v97 = v45;
  v51 = v100;
  v50(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v100);
  sub_3658();
  sub_110A0();
  (*(v49 + 8))(v7, v51);
  v52 = v102;
  v53 = *(v102 + 8);
  v54 = v14;
  v55 = v103;
  v53(v54, v103);
  v56 = [objc_opt_self() defaultManager];
  sub_11090();
  v57 = sub_11450();

  v58 = [v56 fileExistsAtPath:v57];

  if ((v58 & 1) == 0)
  {
    v100 = v53;

    if (qword_1C980 != -1)
    {
      swift_once();
    }

    v77 = sub_113E0();
    sub_1898(v77, qword_1CDE8);
    v78 = v98;
    (*(v52 + 16))(v98, v43, v55);
    v79 = v43;
    v80 = sub_113C0();
    v81 = sub_115B0();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = v55;
      v84 = swift_slowAlloc();
      v105 = v84;
      *v82 = 136315138;
      sub_F570(&qword_1CE10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v85 = sub_117A0();
      v87 = v86;
      v88 = v78;
      v89 = v100;
      v100(v88, v83);
      v90 = sub_483C(v85, v87, &v105);

      *(v82 + 4) = v90;
      _os_log_impl(&dword_0, v80, v81, "File attachment file does not exist: %s", v82, 0xCu);
      sub_3B14(v84);

      v89(v101, v83);
    }

    else
    {

      v91 = v100;
      v100(v78, v55);
      v91(v79, v55);
    }

    return 0;
  }

  v59 = objc_allocWithZone(CKAsset);
  sub_11070(v60);
  v62 = v61;
  v63 = [v59 initWithFileURL:v61];

  v64 = v63;
  sub_116D0();
  v65 = [v18 encryptedValues];
  swift_getObjectType();
  v108 = &type metadata for String;
  v109 = &protocol witness table for String;
  v105 = v97;
  v106 = v47;
  sub_116A0();

  swift_unknownObjectRelease();
  v53(v43, v55);
  return v18;
}

SEL *sub_EE5C(unint64_t a1, SEL *a2, uint64_t (*a3)(char *, char *, void *), char *a4, ...)
{
  v42 = a3;
  v44 = sub_11150();
  v7 = *(v44 - 8);
  v8 = __chkstk_darwin(v44);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v45 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v13 = sub_11770();
    v37 = a4;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    v37 = a4;
    if (v13)
    {
LABEL_3:
      if (v13 >= 1)
      {
        v43 = v10;
        v14 = 0;
        v15 = a1 & 0xC000000000000001;
        v16 = (v7 + 8);
        v39 = a2;
        v40 = &_swiftEmptyArrayStorage;
        v38 = a1;
        v41 = a1 & 0xC000000000000001;
        while (1)
        {
          if (v15)
          {
            v17 = sub_11730();
          }

          else
          {
            v17 = *(a1 + 8 * v14 + 32);
          }

          v18 = v17;
          v19 = [v17 id];
          if (v19)
          {
            v20 = v19;
            sub_11130();

            v21 = [v18 *a2];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 id];
              if (v23)
              {
                v24 = a2;
                v25 = v43;
                v26 = v23;
                sub_11130();

                v27 = v42(v12, v25, v18);
                if (v27)
                {
                  v28 = v27;
                  sub_114E0();
                  if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v45 & 0xFFFFFFFFFFFFFF8)) >> 1)
                  {
                    sub_11520();
                  }

                  sub_11530();

                  v29 = *v16;
                  v30 = v44;
                  (*v16)(v43, v44);
                  v29(v12, v30);
                  v40 = v45;
                  a1 = v38;
                  a2 = v39;
                  v15 = v41;
                }

                else
                {

                  v31 = *v16;
                  v32 = v44;
                  (*v16)(v25, v44);
                  v31(v12, v32);
                  a2 = v24;
                  v15 = v41;
                }

                goto LABEL_7;
              }

              (*v16)(v12, v44);
            }

            else
            {
              (*v16)(v12, v44);
            }
          }

LABEL_7:
          if (v13 == ++v14)
          {
            goto LABEL_22;
          }
        }
      }

      __break(1u);
LABEL_31:
      v34 = sub_11770();
      goto LABEL_27;
    }
  }

  v40 = &_swiftEmptyArrayStorage;
LABEL_22:
  if (qword_1C980 != -1)
  {
    swift_once();
  }

  v33 = sub_113E0();
  sub_1898(v33, qword_1CDE8);
  a2 = v40;

  a4 = sub_113C0();
  LOBYTE(v7) = sub_11590();
  if (!os_log_type_enabled(a4, v7))
  {

    goto LABEL_29;
  }

  v10 = swift_slowAlloc();
  *v10 = 134217984;
  if (a2 >> 62)
  {
    goto LABEL_31;
  }

  v34 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
LABEL_27:
  *(v10 + 4) = v34;

  _os_log_impl(&dword_0, a4, v7, v37, v10, 0xCu);

LABEL_29:

  return a2;
}

uint64_t sub_F2A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_F2F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3610(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t *sub_F360(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_F4E4@<X0>(uint64_t (*a1)(void)@<X3>, unint64_t *a2@<X4>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  a1(0);
  sub_F570(a2, a3, a4);
  result = sub_11250();
  *a5 = result;
  return result;
}

uint64_t sub_F570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_F5D4(char a1)
{
  if (qword_1C988 != -1)
  {
    swift_once();
  }

  v3 = sub_113E0();
  sub_1898(v3, qword_1CE58);
  v4 = v1;
  v5 = sub_113C0();
  v6 = sub_115D0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136446466;
    sub_11150();
    sub_BD2C();
    v8 = sub_117A0();
    v10 = sub_483C(v8, v9, &v24);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0x6465636E7973;
      }

      else
      {
        v11 = 0x6465636E79736E75;
      }

      if (a1 == 1)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE800000000000000;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7958113;
    }

    v13 = sub_483C(v11, v12, &v24);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_0, v5, v6, "%{public}s (haveData) type:%s started", v7, 0x16u);
    swift_arrayDestroy();
  }

  v24 = &_swiftEmptyArrayStorage;
  if (a1)
  {
    sub_1057C();
    v14 = sub_11550();
    sub_114E0();
    if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_11520();
    }

    sub_11530();
  }

  sub_1057C();
  sub_11550();
  sub_114E0();
  if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_11520();
  }

  sub_11530();
  sub_111F0();
  v15 = sub_111E0();
  isa = sub_114F0().super.isa;
  v17 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v15 setPredicate:v17];
  sub_11180();
  v18 = sub_11160();
  sub_111C0();
  v19 = sub_111B0();
  v20 = v19;
  if (a1)
  {
    v21 = sub_11550();
    [v18 setPredicate:v21];
    [v20 setPredicate:v21];
  }

  __chkstk_darwin(v19);
  sub_11670();

  return v23;
}

uint64_t sub_FA94()
{
  v0 = sub_113E0();
  sub_1834(v0, qword_1CE58);
  v1 = sub_1898(v0, qword_1CE58);
  if (qword_1C960 != -1)
  {
    swift_once();
  }

  v2 = sub_1898(v0, qword_1CEC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_FB5C(void *a2@<X2>, char a3@<W3>, char *a6@<X8>)
{
  sub_111F0();
  v9 = sub_11680();
  if (!v6)
  {
    v21 = v9;
    if (qword_1C988 != -1)
    {
      swift_once();
    }

    v22 = sub_113E0();
    sub_1898(v22, qword_1CE58);
    v23 = a2;
    v24 = sub_113C0();
    v25 = sub_115D0();

    if (os_log_type_enabled(v24, v25))
    {
      v70 = a6;
      v26 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v26 = 136446722;
      sub_11150();
      sub_BD2C();
      v27 = sub_117A0();
      v29 = sub_483C(v27, v28, &v74);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      if (a3)
      {
        if (a3 == 1)
        {
          v30 = 0x6465636E7973;
        }

        else
        {
          v30 = 0x6465636E79736E75;
        }

        if (a3 == 1)
        {
          v31 = 0xE600000000000000;
        }

        else
        {
          v31 = 0xE800000000000000;
        }
      }

      else
      {
        v30 = 7958113;
        v31 = 0xE300000000000000;
      }

      v35 = sub_483C(v30, v31, &v74);

      *(v26 + 14) = v35;
      *(v26 + 22) = 2048;
      *(v26 + 24) = v21;
      _os_log_impl(&dword_0, v24, v25, "%{public}s (haveData) type:%s Synced entries:%ld", v26, 0x20u);
      swift_arrayDestroy();

      a6 = v70;
      if (v21)
      {
        goto LABEL_41;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_41;
      }
    }

    sub_11180();
    v36 = sub_11680();
    v37 = v23;
    v38 = sub_113C0();
    v39 = sub_115D0();

    if (os_log_type_enabled(v38, v39))
    {
      v71 = a6;
      v40 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v40 = 136446722;
      sub_11150();
      sub_BD2C();
      v41 = sub_117A0();
      v43 = sub_483C(v41, v42, &v74);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      if (a3)
      {
        if (a3 == 1)
        {
          v44 = 0x6465636E7973;
        }

        else
        {
          v44 = 0x6465636E79736E75;
        }

        if (a3 == 1)
        {
          v45 = 0xE600000000000000;
        }

        else
        {
          v45 = 0xE800000000000000;
        }
      }

      else
      {
        v44 = 7958113;
        v45 = 0xE300000000000000;
      }

      v46 = sub_483C(v44, v45, &v74);

      *(v40 + 14) = v46;
      *(v40 + 22) = 2048;
      *(v40 + 24) = v36;
      _os_log_impl(&dword_0, v38, v39, "%{public}s (haveData) type:%s Synced assets:%ld", v40, 0x20u);
      swift_arrayDestroy();

      a6 = v71;
    }

    else
    {
    }

    if (!v36)
    {
      sub_111C0();
      v47 = sub_11680();
      v48 = v37;
      v49 = sub_113C0();
      v50 = sub_115D0();

      if (os_log_type_enabled(v49, v50))
      {
        v72 = a6;
        v51 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v51 = 136446722;
        sub_11150();
        sub_BD2C();
        v52 = sub_117A0();
        v54 = sub_483C(v52, v53, &v74);

        *(v51 + 4) = v54;
        *(v51 + 12) = 2080;
        if (a3)
        {
          if (a3 == 1)
          {
            v55 = 0xE600000000000000;
            v56 = 0x6465636E7973;
          }

          else
          {
            v55 = 0xE800000000000000;
            v56 = 0x6465636E79736E75;
          }
        }

        else
        {
          v56 = 7958113;
          v55 = 0xE300000000000000;
        }

        v57 = sub_483C(v56, v55, &v74);

        *(v51 + 14) = v57;
        *(v51 + 22) = 2048;
        *(v51 + 24) = v47;
        _os_log_impl(&dword_0, v49, v50, "%{public}s (haveData) type:%s Synced attachments:%ld", v51, 0x20u);
        swift_arrayDestroy();

        a6 = v72;
      }

      else
      {
      }

      if (v47)
      {
        v32 = 1;
      }

      else
      {
        v58 = v48;
        v59 = sub_113C0();
        v60 = sub_115D0();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = a6;
          v62 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *v62 = 136446466;
          sub_11150();
          sub_BD2C();
          v63 = sub_117A0();
          v65 = sub_483C(v63, v64, &v74);

          *(v62 + 4) = v65;
          *(v62 + 12) = 2080;
          if (a3)
          {
            if (a3 == 1)
            {
              v66 = 0xE600000000000000;
              v67 = 0x6465636E7973;
            }

            else
            {
              v66 = 0xE800000000000000;
              v67 = 0x6465636E79736E75;
            }
          }

          else
          {
            v67 = 7958113;
            v66 = 0xE300000000000000;
          }

          v68 = sub_483C(v67, v66, &v74);

          *(v62 + 14) = v68;
          _os_log_impl(&dword_0, v59, v60, "%{public}s (haveData) type:%s No sync data found", v62, 0x16u);
          swift_arrayDestroy();

          v32 = 0;
          a6 = v61;
        }

        else
        {

          v32 = 0;
        }
      }

      goto LABEL_42;
    }

LABEL_41:
    v32 = 1;
    goto LABEL_42;
  }

  if (qword_1C988 != -1)
  {
    swift_once();
  }

  v10 = sub_113E0();
  sub_1898(v10, qword_1CE58);
  v11 = a2;
  swift_errorRetain();
  v12 = sub_113C0();
  v13 = sub_115C0();

  if (os_log_type_enabled(v12, v13))
  {
    v69 = a6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v14 = 136446722;
    sub_11150();
    sub_BD2C();
    v16 = sub_117A0();
    v18 = sub_483C(v16, v17, &v74);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    if (a3)
    {
      if (a3 == 1)
      {
        v19 = 0x6465636E7973;
      }

      else
      {
        v19 = 0x6465636E79736E75;
      }

      if (a3 == 1)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE800000000000000;
      }
    }

    else
    {
      v19 = 7958113;
      v20 = 0xE300000000000000;
    }

    v33 = sub_483C(v19, v20, &v74);

    *(v14 + 14) = v33;
    *(v14 + 22) = 2112;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v34;
    *v15 = v34;
    _os_log_impl(&dword_0, v12, v13, "%{public}s (haveData) type:%s Unable to get count: %@", v14, 0x20u);
    sub_6A70(v15);

    swift_arrayDestroy();

    v32 = 0;
    a6 = v69;
  }

  else
  {

    v32 = 0;
  }

LABEL_42:
  *a6 = v32;
}

unint64_t sub_1057C()
{
  result = qword_1CE40;
  if (!qword_1CE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CE40);
  }

  return result;
}

id sub_105F0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_6C3C(0, &qword_1CE30, NSManagedObjectModel_ptr);
  v4 = sub_11640();
  v5 = objc_allocWithZone(NSPersistentContainer);
  v6 = sub_11450();
  v7 = [v5 initWithName:v6 managedObjectModel:v4];

  v8 = sub_10BD4(a1, v2);
  sub_3610(&qword_1CE38, &qword_128F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_12840;
  *(v9 + 32) = v8;
  sub_6C3C(0, &qword_1CE70, NSPersistentStoreDescription_ptr);
  v10 = v8;
  isa = sub_114F0().super.isa;

  [v7 setPersistentStoreDescriptions:isa];

  if (qword_1C960 != -1)
  {
    swift_once();
  }

  v12 = sub_113E0();
  sub_1898(v12, qword_1CEC0);
  v13 = v7;
  v14 = sub_113C0();
  v15 = sub_115D0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = [v13 name];
    v18 = sub_11480();
    v20 = v19;

    v21 = sub_483C(v18, v20, &v28);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v13 persistentStoreDescriptions];
    sub_11500();

    v23 = sub_11510();
    v25 = v24;

    v26 = sub_483C(v23, v25, &v28);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_0, v14, v15, "CoreDataStack init for container %s\nSQLite PATH: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  return v13;
}

Swift::Int sub_10928()
{
  v1 = *v0;
  sub_117D0();
  sub_117E0(v1);
  return sub_117F0();
}

Swift::Int sub_1099C(uint64_t a1)
{
  v2 = *v1;
  sub_117D0();
  sub_117E0(v2);
  return sub_117F0();
}

uint64_t sub_109E0(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_110B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 2)
  {

    return URL.init(fileURLWithPath:)(0x6C756E2F7665642FLL, 0xE90000000000006CLL);
  }

  else
  {
    if (a2)
    {
      v8 = 0x2D73746E656D6F6DLL;
    }

    else
    {
      v8 = 0x73746E656D6F6DLL;
    }

    if (a2)
    {
      v9 = 0xEF676E6967617473;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (qword_1C930 != -1)
    {
      swift_once();
    }

    v10 = sub_11310();
    sub_1898(v10, qword_1CE88);
    sub_11290();
    v12[0] = v8;
    v12[1] = v9;
    v14._countAndFlagsBits = 0x6574696C71732ELL;
    v14._object = 0xE700000000000000;
    sub_114B0(v14);
    sub_11080();

    return (*(v5 + 8))(v7, v4);
  }
}

id sub_10BD4(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_110B0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_109E0(v6, a2);
  v9 = objc_allocWithZone(NSPersistentStoreDescription);
  sub_11070(v10);
  v12 = v11;
  v13 = [v9 initWithURL:v11];

  [v13 setShouldInferMappingModelAutomatically:1];
  [v13 setShouldMigrateStoreAutomatically:1];
  [v13 setOption:a1 forKey:NSPersistentStoreFileProtectionKey];
  sub_6C3C(0, &qword_1CE78, NSNumber_ptr);
  isa = sub_116E0(1).super.super.isa;
  [v13 setOption:isa forKey:NSPersistentHistoryTrackingKey];

  v15 = sub_116E0(1).super.super.isa;
  [v13 setOption:v15 forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];

  (*(v5 + 8))(v8, v4);
  return v13;
}

uint64_t sub_10DA8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10DBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_10E04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreDataStackConfiguration.Environment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreDataStackConfiguration.Environment(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10FCC()
{
  result = qword_1CE80;
  if (!qword_1CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE80);
  }

  return result;
}