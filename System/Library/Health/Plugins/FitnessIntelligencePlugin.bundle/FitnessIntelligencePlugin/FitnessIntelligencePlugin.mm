__n128 sub_15F4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1604(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1624(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1678(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1698(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_16E8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *sub_1734@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id static PropertyRecordCheckpointEntity.syncEntityIdentifier.getter()
{
  v0 = objc_allocWithZone(HDSyncEntityIdentifier);
  v1 = sub_75598();
  v2 = [v0 initWithEntityIdentifier:3 schemaIdentifier:v1];

  return v2;
}

uint64_t static PropertyRecordCheckpointEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v73 = a5;
  v81 = a1;
  v82 = a4;
  v79 = a2;
  v80 = a3;
  v5 = sub_754B8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v72 = &v70 - v10;
  __chkstk_darwin(v9);
  v12 = &v70 - v11;
  sub_75378();
  v13 = sub_754A8();
  v14 = sub_75738();
  v15 = os_log_type_enabled(v13, v14);
  v77 = v5;
  v76 = v6;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    v86[0] = sub_38F8(&qword_8EB08, &qword_79B20);
    sub_38F8(&qword_8EB10, &qword_79B28);
    v18 = sub_755B8();
    v20 = sub_31B4(v18, v19, aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v13, v14, "Generate sync objects for %s", v16, 0xCu);
    sub_3940(v17);
  }

  v75 = *(v6 + 8);
  v75(v12, v5);
  v21 = swift_allocObject();
  v21[2] = -1;
  v78 = v21 + 2;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = v83;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = v81;
  v26 = [v81 maxEncodedBytesPerCodableChangeForSyncEntityClass:ObjCClassFromMetadata];
  v27 = swift_allocObject();
  *(v27 + 16) = &_swiftEmptySetSingleton;
  v74 = (v27 + 16);
  v28 = swift_allocObject();
  v28[2] = v22;
  v28[3] = v26;
  v28[4] = v27;
  v28[5] = 1000;
  v28[6] = v23;
  v29 = swift_allocObject();
  v29[2] = v23;
  v29[3] = v25;
  v30 = v80;
  v29[4] = v79;
  v29[5] = v30;
  v31 = v82;
  v29[6] = v21;
  v29[7] = v31;
  v29[8] = sub_37E4;
  v29[9] = v28;
  v80 = v22;

  v32 = v25;
  v81 = v21;

  v33 = v31;

  v34 = [v33 database];
  v35 = swift_allocObject();
  v35[2] = sub_386C;
  v35[3] = v29;
  aBlock[4] = sub_38B4;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_862C0;
  v36 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v37 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v34 error:aBlock block:v36];
  _Block_release(v36);

  v38 = aBlock[0];
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    if (!v37)
    {
      goto LABEL_23;
    }

    v39 = v78;
    swift_beginAccess();
    if (*v39 == -1)
    {
      v47 = v71;
      sub_75378();

      v48 = sub_754A8();
      v49 = sub_75738();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v74;
      if (v50)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v85[0] = v53;
        *v52 = 134218242;
        swift_beginAccess();
        v54 = *v51;
        if ((v54 & 0xC000000000000001) != 0)
        {

          v55 = sub_75898();
        }

        else
        {
          v55 = *(v54 + 16);
        }

        *(v52 + 4) = v55;

        *(v52 + 12) = 2080;
        v67 = sub_75B18();
        v69 = sub_31B4(v67, v68, v85);

        *(v52 + 14) = v69;
        _os_log_impl(&dword_0, v48, v49, "Last anchor is invalid, not syncing %ld %s", v52, 0x16u);
        sub_3940(v53);

        v75(v71, v77);
      }

      else
      {

        v75(v47, v77);
      }

      goto LABEL_26;
    }

    v40 = v72;
    sub_75378();

    v41 = sub_754A8();
    v42 = sub_75738();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v74;
    if (v43)
    {
      LODWORD(v82) = v42;
      v45 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v86[0] = v79;
      *v45 = 134218242;
      swift_beginAccess();
      if ((*v44 & 0xC000000000000001) != 0)
      {

        v46 = sub_75898();
      }

      else
      {
        v46 = *(*v44 + 16);
      }

      *(v45 + 4) = v46;

      *(v45 + 12) = 2080;
      v56 = sub_75B18();
      v58 = sub_31B4(v56, v57, v86);

      *(v45 + 14) = v58;
      _os_log_impl(&dword_0, v41, v82, "Syncing over %ld %s", v45, 0x16u);
      sub_3940(v79);
    }

    else
    {
    }

    v75(v40, v77);
    swift_beginAccess();

    v60 = sub_3BF4(v59, sub_6214, sub_5AF8);

    if ((v60 & 0x8000000000000000) == 0 && (v60 & 0x4000000000000000) == 0)
    {
      sub_75A78();
      goto LABEL_20;
    }
  }

  sub_38F8(&qword_8EB00, &qword_79B18);
  sub_759C8();

LABEL_20:
  v61 = v73;

  sub_38F8(&qword_8EB00, &qword_79B18);
  isa = sub_75678().super.isa;

  v63 = *v78;
  v84 = 0;
  v64 = [v61 sendCodableChange:isa version:0 resultAnchor:v63 sequence:0 done:1 error:&v84];

  v65 = v84;
  if (!v64)
  {
    v38 = v65;
LABEL_23:
    sub_74898();

    swift_willThrow();
  }

LABEL_26:
}

uint64_t sub_22A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = a5;
  v55 = a6;
  v13 = sub_754B8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_38F8(&qword_8EB18, &qword_7A950);
  __chkstk_darwin(v17 - 8);
  v19 = &v53 - v18;
  v20 = sub_751D8();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v53 - v25;
  sub_4E9F8(a3, v19);
  v27 = (*(v21 + 48))(v19, 1, v20);
  if (v27 == 1)
  {
    sub_3D48(v19, &qword_8EB18, &qword_7A950);
    sub_75378();
    v46 = sub_754A8();
    v47 = sub_75718();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = v54;
      _os_log_impl(&dword_0, v46, v47, "Failed to decode SnapshotContainer from row: %ld", v48, 0xCu);
    }

    (*(v14 + 8))(v16, v13);
    return v27 != 1;
  }

  v54 = a8;
  (*(v21 + 32))(v26, v19, v20);
  v28 = *(v21 + 16);
  v28(v24, v26, v20);
  v29 = type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper(0);
  v30 = objc_allocWithZone(v29);
  v31 = OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry;
  v28(&v30[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry], v24, v20);
  (*(v21 + 56))(&v30[v31], 0, 1, v20);
  sub_39E0();
  v32 = sub_74F78();
  v33 = &v30[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity];
  *v33 = v32;
  v33[1] = v34;
  v57.receiver = v30;
  v57.super_class = v29;
  v35 = objc_msgSendSuper2(&v57, "init");
  v36 = *(v21 + 8);
  v36(v24, v20);
  v37 = sub_550E0();
  if (v37 < 1)
  {
    goto LABEL_14;
  }

  v38 = v37;
  v39 = v54;
  result = swift_beginAccess();
  v41 = *(v39 + 16);
  v42 = __OFADD__(v41, v38);
  v43 = v41 + v38;
  if (v42)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v43 > a9)
  {
    goto LABEL_14;
  }

  v53 = a11;
  swift_beginAccess();
  v44 = *(a10 + 16);
  if ((v44 & 0xC000000000000001) != 0)
  {

    v45 = sub_75898();
  }

  else
  {
    v45 = *(v44 + 16);
  }

  if (v45 >= v53)
  {
LABEL_14:
    *v55 = 1;

    v36(v26, v20);
    return v27 != 1;
  }

  swift_beginAccess();
  v49 = v35;
  sub_68B3C(&v56, v49);
  swift_endAccess();

  v36(v26, v20);
  v50 = v54;
  result = swift_beginAccess();
  v51 = *(v50 + 16);
  v42 = __OFADD__(v51, v38);
  v52 = v51 + v38;
  if (!v42)
  {
    *(v50 + 16) = v52;
    return v27 != 1;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_27AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v15 = sub_754B8();
  v35 = *(v15 - 8);
  v36 = v15;
  __chkstk_darwin(v15);
  v34 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a7 + 16;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = sub_55A6C();
  sub_462C(v19);

  isa = sub_75678().super.isa;

  v21 = [a8 database];
  v22 = swift_allocObject();
  *(v22 + 16) = a9;
  *(v22 + 24) = a10;
  aBlock[4] = sub_3D1C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_778C;
  aBlock[3] = &unk_86310;
  v23 = _Block_copy(aBlock);

  swift_beginAccess();
  v37 = 0;
  v24 = [ObjCClassFromMetadata enumerateEntitiesForSyncWithProperties:isa predicate:0 session:a4 syncAnchorRange:a5 limit:a6 lastSyncAnchor:0 healthDatabase:v17 error:v21 block:{&v37, v23}];
  v25 = v37;
  swift_endAccess();
  v26 = v25;
  _Block_release(v23);

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  if (!v24)
  {
    sub_74898();

    swift_willThrow();
    v27 = v34;
    sub_75378();
    swift_errorRetain();
    v28 = sub_754A8();
    v29 = sub_75718();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_0, v28, v29, "Error while enumerating entities for sync: %@", v30, 0xCu);
      sub_3D48(v31, &unk_8EB30, &unk_7A270);
    }

    else
    {
    }

    (*(v35 + 8))(v27, v36);
  }

  return v24;
}

uint64_t sub_2BB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

id static PropertyRecordCheckpointEntity.nextSyncAnchor(with:startSyncAnchor:profile:error:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [a3 database];
  v10 = [ObjCClassFromMetadata nextSyncAnchorWithStartAnchor:a2 predicate:0 syncEntityClass:ObjCClassFromMetadata session:a1 orderingTerms:0 limit:0 healthDatabase:v9 error:a4];

  return v10;
}

id static PropertyRecordCheckpointEntity.decodeSyncObject(with:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_38F8(&qword_8EB18, &qword_7A950);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper(0);
  v8 = objc_allocWithZone(v7);
  v9 = sub_751D8();
  sub_398C(a1, a2);
  sub_398C(a1, a2);
  sub_39E0();
  sub_74F88();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  sub_3A38(v6, &v8[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry]);
  v10 = &v8[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity];
  *v10 = a1;
  *(v10 + 1) = a2;
  v13.receiver = v8;
  v13.super_class = v7;
  return objc_msgSendSuper2(&v13, "init");
}

unint64_t sub_31B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3280(v11, 0, 0, 1, a1, a2);
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
    sub_3CBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3940(v11);
  return v7;
}

unint64_t sub_3280(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_338C(a5, a6);
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
    result = sub_75948();
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

void *sub_338C(uint64_t a1, unint64_t a2)
{
  v3 = sub_33D8(a1, a2);
  sub_3508(&off_85738);
  return v3;
}

void *sub_33D8(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_35F4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_75948();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_75618();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_35F4(v10, 0);
        result = sub_758F8();
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

uint64_t sub_3508(uint64_t result)
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

  result = sub_3668(result, v11, 1, v3);
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

void *sub_35F4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_38F8(&qword_8EB28, &qword_79B38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3668(char *result, int64_t a2, char a3, char *a4)
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
    sub_38F8(&qword_8EB28, &qword_79B38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_376C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_37A4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_381C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_38E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_38F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3940(void *a1)
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

uint64_t sub_398C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_39E0()
{
  result = qword_8EB20;
  if (!qword_8EB20)
  {
    sub_751D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8EB20);
  }

  return result;
}

uint64_t sub_3A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8EB18, &qword_7A950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_3AD4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_6214();

    sub_75918();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = sub_759D8();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

char *sub_3BF4(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_75898();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_3CB4(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return a2;
}

uint64_t sub_3CBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3D48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_38F8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FitnessIntelligencePlugin.pluginIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___FIFitnessIntelligencePlugin_pluginIdentifier);

  return v1;
}

id sub_3E08(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_75598();

  return v3;
}

uint64_t FitnessIntelligencePlugin.syncSchemaIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___FIFitnessIntelligencePlugin_syncSchemaIdentifier);

  return v1;
}

id FitnessIntelligencePlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FitnessIntelligencePlugin.init()()
{
  v1 = v0;
  v2 = sub_754B8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR___FIFitnessIntelligencePlugin_pluginIdentifier];
  *v6 = 0xD000000000000024;
  *(v6 + 1) = 0x8000000000077430;
  v7 = &v1[OBJC_IVAR___FIFitnessIntelligencePlugin_syncSchemaIdentifier];
  *v7 = 0xD000000000000029;
  *(v7 + 1) = 0x8000000000077460;
  sub_75378();
  v8 = sub_754A8();
  v9 = sub_75738();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "FitnessIntelligence Plugin Loaded", v10, 2u);
  }

  (*(v3 + 8))(v5, v2);
  *&v1[OBJC_IVAR___FIFitnessIntelligencePlugin_schemaProvider] = [objc_allocWithZone(type metadata accessor for DatabaseSchemaProvider()) init];
  v11 = type metadata accessor for FitnessIntelligencePlugin();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "init");
}

id FitnessIntelligencePlugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitnessIntelligencePlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t FitnessIntelligencePlugin.taskServerClasses()()
{
  sub_38F8(&qword_8EB58, &unk_79BB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79B90;
  *(v0 + 32) = type metadata accessor for SnapshotContainerTaskServer();
  *(v0 + 40) = type metadata accessor for InferenceRecordTaskServer();
  *(v0 + 48) = type metadata accessor for WorkoutTaskServer();
  *(v0 + 56) = type metadata accessor for SanityTaskServer();
  return v0;
}

uint64_t FitnessIntelligencePlugin.currentSchemaVersion(for:)(uint64_t a1)
{
  v1 = 6;
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

void *_s25FitnessIntelligencePluginAAC16databaseEntities3forSayyXlXpGSo29HDSQLiteEntityProtectionClassV_tF_0(uint64_t a1)
{
  if (a1 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_38F8(&qword_8EB58, &unk_79BB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_79BA0;
  *(v1 + 32) = type metadata accessor for WorkoutPropertyRecordEntity();
  *(v1 + 40) = type metadata accessor for RingsPropertyRecordEntity();
  *(v1 + 48) = type metadata accessor for FitnessPlusPropertyRecordEntity();
  *(v1 + 56) = type metadata accessor for PropertyRecordCheckpointEntity();
  v2 = type metadata accessor for InferenceRecordContainerEntity();
  result = v1;
  *(v1 + 64) = v2;
  return result;
}

uint64_t _s25FitnessIntelligencePluginAAC19orderedSyncEntitiesSayyXlXpGyF_0()
{
  sub_38F8(&qword_8EB58, &unk_79BB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79BA0;
  *(v0 + 32) = type metadata accessor for WorkoutPropertyRecordEntity();
  *(v0 + 40) = type metadata accessor for RingsPropertyRecordEntity();
  *(v0 + 48) = type metadata accessor for FitnessPlusPropertyRecordEntity();
  *(v0 + 56) = type metadata accessor for PropertyRecordCheckpointEntity();
  *(v0 + 64) = type metadata accessor for InferenceRecordContainerEntity();
  return v0;
}

unint64_t *sub_462C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_67C78(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_67C78((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_5F90(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_472C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_67C98(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      sub_38F8(&qword_8EDA8, &unk_79D30);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_67C98((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t *sub_48BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_67C78(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      ++v4;
      sub_38F8(&qword_8EDD0, &qword_79D50);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_67C78((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_5F90(&v8, &v2[4 * v6 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_49C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_67C78(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    type metadata accessor for HKWorkoutActivityType(0);
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_67C78((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_5F90(&v8, &v2[4 * v6 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_4BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_67D9C(0, v1, 0);
    v3 = a1 + 32;
    type metadata accessor for HKWorkoutActivityType(0);
    do
    {
      v3 += 8;
      sub_38F8(&qword_8EDD8, &qword_79D58);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_67D9C((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[5 * v5];
      v6[8] = v10;
      *(v6 + 2) = v8;
      *(v6 + 3) = v9;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t *sub_4DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_67C78(0, v7, 0);
    v8 = v19;
    v11 = *(v4 + 16);
    v9 = v4 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v3);
      swift_dynamicCast();
      v19 = v8;
      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        sub_67C78((v14 > 1), v15 + 1, 1);
        v8 = v19;
      }

      v8[2] = v15 + 1;
      sub_5F90(&v18, &v8[4 * v15 + 4]);
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

unint64_t *sub_4FBC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v26 = a4;
  v27 = a5;
  v7 = a2(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v31 = _swiftEmptyArrayStorage;
    v25 = a3;
    a3(0, v11, 0);
    v12 = v31;
    v15 = *(v8 + 16);
    v14 = v8 + 16;
    v13 = v15;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    do
    {
      v13(v10, v16, v7);
      sub_38F8(v26, v27);
      swift_dynamicCast();
      v31 = v12;
      v19 = v12[2];
      v18 = v12[3];
      if (v19 >= v18 >> 1)
      {
        v25(v18 > 1, v19 + 1, 1);
        v12 = v31;
      }

      v12[2] = v19 + 1;
      v20 = &v12[5 * v19];
      v21 = v28;
      v22 = v29;
      v20[8] = v30;
      *(v20 + 2) = v21;
      *(v20 + 3) = v22;
      v16 += v17;
      --v11;
    }

    while (v11);
  }

  return v12;
}

char *sub_5174(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_759D8();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_67C78(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_75928();
        sub_5FA0();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_67C78((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_5F90(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_5FA0();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_67C78((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_5F90(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

Swift::Int sub_5354()
{
  v1 = *v0;
  sub_75AE8();
  sub_75AF8(v1);
  return sub_75B08();
}

Swift::Int sub_53C8(uint64_t a1)
{
  v2 = *v1;
  sub_75AE8();
  sub_75AF8(v2);
  return sub_75B08();
}

uint64_t sub_5434()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ReduceStrategy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReduceStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_5604()
{
  result = qword_8ED90;
  if (!qword_8ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8ED90);
  }

  return result;
}

uint64_t sub_5658(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_74CA8();
  v30 = v6;
  v7 = sub_5FEC(&qword_8ED98, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
  v31 = v7;
  v8 = sub_5914(&v28);
  v9 = *(*(v6 - 8) + 16);
  v9(v8, a2, v6);
  sub_38F8(&qword_8EDA0, &unk_79D20);
  inited = swift_initStackObject();
  v11 = inited;
  *(inited + 16) = xmmword_79BF0;
  if (v30)
  {
    sub_5978(&v28, inited + 32);
  }

  else
  {
    v12 = v31;
    v13 = v29;
    *(inited + 32) = v28;
    *(inited + 48) = v13;
    *(inited + 64) = v12;
  }

  v14 = sub_6C2DC(a1, 1, v11);
  swift_setDeallocating();
  if (*(v11 + 56))
  {
    sub_3940((v11 + 32));
  }

  if (v30)
  {
    sub_3940(&v28);
  }

  v15 = *(sub_38F8(&qword_8F000, &qword_7A5D0) + 36);
  v30 = v6;
  v31 = v7;
  v16 = sub_5914(&v28);
  v9(v16, a2 + v15, v6);
  v17 = swift_initStackObject();
  v18 = v17;
  *(v17 + 16) = xmmword_79BF0;
  if (v30)
  {
    sub_5978(&v28, v17 + 32);
  }

  else
  {
    v19 = v31;
    v20 = v29;
    *(v17 + 32) = v28;
    *(v17 + 48) = v20;
    *(v17 + 64) = v19;
  }

  v21 = sub_6C2DC(a1, v14, v18);
  swift_setDeallocating();
  if (*(v18 + 56))
  {
    sub_3940((v18 + 32));
  }

  if (v30)
  {
    sub_3940(&v28);
  }

  v22 = *(a3 + 16);
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = sub_59E8(*(a3 + 16), 0);
  v24 = sub_5B2C(&v28, v23 + 4, v22, a3);
  v25 = v28;

  sub_3CB4(v25);
  if (v24 != v22)
  {
    __break(1u);
LABEL_18:
    v23 = _swiftEmptyArrayStorage;
  }

  v26 = sub_472C(v23);

  sub_6C3E0(a1, v21, v26);
}

uint64_t *sub_5914(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_5978(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_59E8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_38F8(&qword_8EDB0, &qword_7AC50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_5A70(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_38F8(&qword_8F180, &qword_79D40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_5B2C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_5CB8(uint64_t *result, uint64_t **a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  sub_75888();
  a5(0);
  sub_5FEC(a6, a7, &protocol conformance descriptor for NSObject);
  result = sub_756F8();
  v8 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = v14;
  v29 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = (&dword_0 + 1);
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_758B8())
      {
        goto LABEL_30;
      }

      v29(0);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    v23 = __OFADD__(v19, 1);
    v19 = (v19 + 1);
    if (v23)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_30:
  v14 = v28;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

_OWORD *sub_5F90(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_5FA0()
{
  result = qword_8EDE8;
  if (!qword_8EDE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8EDE8);
  }

  return result;
}

uint64_t sub_5FEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PropertyRecordEntityError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PropertyRecordEntityError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_61C0()
{
  result = qword_8EDF8;
  if (!qword_8EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8EDF8);
  }

  return result;
}

uint64_t sub_6218(unint64_t a1, void *a2)
{
  v91 = a2;
  v89 = sub_754B8();
  v3 = *(v89 - 8);
  v4 = __chkstk_darwin(v89);
  v85 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = (&v71 - v7);
  __chkstk_darwin(v6);
  v10 = (&v71 - v9);
  v11 = sub_38F8(&qword_8F0A0, &qword_79EC8);
  v95 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v101 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v71 - v15;
  __chkstk_darwin(v14);
  v94 = &v71 - v17;
  v18 = sub_654E0(a1);
  if (!v18)
  {
    goto LABEL_68;
  }

  if (v18 >> 62)
  {
    goto LABEL_66;
  }

  if (!*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_67:

LABEL_68:
    sub_75378();
    v68 = sub_754A8();
    v69 = sub_75718();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_0, v68, v69, "Applying journal entries, but none found. Skipping.", v70, 2u);
    }

    return (*(v3 + 1))(v10, v89);
  }

LABEL_4:
  v96 = v16;
  v102 = v11;
  v103 = v18;
  v11 = v18;
  v16 = sub_38F8(&qword_8EF20, qword_79ED0);
  sub_7718(&qword_8EF28, &qword_8EF20, qword_79ED0, &protocol conformance descriptor for [A]);
  v10 = &v103;
  v19 = 0;
  v20 = sub_75648();

  v22 = 0;
  v23 = *(v20 + 64);
  v72 = v20 + 64;
  v24 = 1 << *(v20 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v100 = (v95 + 32);
  v88 = (v3 + 8);
  *&v21 = 136315394;
  v78 = v21;
  *&v21 = 138412290;
  v77 = v21;
  v82 = v8;
  v74 = v20;
  v73 = v27;
LABEL_8:
  while (v26)
  {
LABEL_13:
    v29 = (v22 << 9) | (8 * __clz(__rbit64(v26)));
    v30 = *(v20 + 56);
    v81 = *(*(v20 + 48) + v29);
    v31 = *(v30 + v29);
    v84 = v31 >> 62;
    if (v31 >> 62)
    {
      v64 = v22;
      v11 = v27;
      v16 = v26;
      v18 = sub_759D8();
      v26 = v16;
      v27 = v11;
      v22 = v64;
      v10 = v18;
    }

    else
    {
      v10 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
    }

    v26 &= v26 - 1;
    if (v10)
    {
      v75 = v26;
      v76 = v22;
      v87 = v31 & 0xC000000000000001;
      v32 = v31 & 0xFFFFFFFFFFFFFF8;
      v80 = v31 + 32;
      v83 = v31 & 0xFFFFFFFFFFFFFF8;
      if (v31 < 0)
      {
        v32 = v31;
      }

      v79 = v32;

      v33 = 0;
      v90 = v31;
      v86 = v10;
      while (1)
      {
        if (v87)
        {
          v18 = sub_75928();
          v35 = __OFADD__(v33, 1);
          v36 = (v33 + 1);
          if (v35)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v33 >= *(v83 + 16))
          {
            goto LABEL_65;
          }

          v18 = *(v80 + 8 * v33);
          v35 = __OFADD__(v33, 1);
          v36 = (v33 + 1);
          if (v35)
          {
            goto LABEL_63;
          }
        }

        v11 = *(v18 + OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_entities);
        if (v11 >> 62)
        {
          v47 = v18;
          v48 = sub_759D8();
          v18 = v47;
          v16 = v48;
          v92 = v18;
          v93 = v36;
          if (v48)
          {
LABEL_29:
            v37 = 0;
            v97 = v11 & 0xFFFFFFFFFFFFFF8;
            v98 = v11 & 0xC000000000000001;
            v8 = _swiftEmptyArrayStorage;
            while (1)
            {
              if (v98)
              {
                v18 = sub_75928();
              }

              else
              {
                if (v37 >= *(v97 + 16))
                {
                  goto LABEL_62;
                }

                v18 = *(v11 + 8 * v37 + 32);
              }

              v38 = v18;
              v3 = (v37 + 1);
              if (__OFADD__(v37, 1))
              {
                break;
              }

              sub_398C(*(v18 + OBJC_IVAR___RingsEntityWrapper_serializedEntity), *(v18 + OBJC_IVAR___RingsEntityWrapper_serializedEntity + 8));
              sub_7718(&qword_8EF30, &qword_8F0A0, &qword_79EC8, &protocol conformance descriptor for DatabasePropertyRecord<A>);
              v39 = v96;
              v40 = v102;
              sub_74F88();
              if (v19)
              {

                goto LABEL_48;
              }

              v99 = 0;
              v41 = (v37 + 1);
              v3 = v11;

              v42 = *v100;
              v43 = v94;
              (*v100)(v94, v39, v40);
              v42(v101, v43, v40);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_675D0(0, v8[2] + 1, 1, v8);
              }

              v45 = v8[2];
              v44 = v8[3];
              v10 = (v45 + 1);
              if (v45 >= v44 >> 1)
              {
                v8 = sub_675D0((v44 > 1), v45 + 1, 1, v8);
              }

              v8[2] = v10;
              v18 = (v42)(v8 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v45, v101, v102);
              ++v37;
              v46 = v41 == v16;
              v19 = v99;
              if (v46)
              {
                goto LABEL_46;
              }
            }

            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            v66 = v18;
            v67 = sub_759D8();
            v18 = v66;
            if (!v67)
            {
              goto LABEL_67;
            }

            goto LABEL_4;
          }
        }

        else
        {
          v16 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
          v92 = v18;
          v93 = v36;
          if (v16)
          {
            goto LABEL_29;
          }
        }

        v8 = _swiftEmptyArrayStorage;
LABEL_46:
        sub_5CD24(v8, v81, v91, 0);
        if (v19)
        {

LABEL_48:
          v19 = 0;
          v8 = v82;
          sub_75378();
          swift_errorRetain();
          v49 = sub_754A8();
          v50 = sub_75718();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v103 = v53;
            *v51 = v78;
            v54 = sub_75B18();
            v56 = sub_31B4(v54, v55, &v103);

            *(v51 + 4) = v56;
            *(v51 + 12) = 2112;
            swift_errorRetain();
            v57 = _swift_stdlib_bridgeErrorToNSError();
            *(v51 + 14) = v57;
            *v52 = v57;
            _os_log_impl(&dword_0, v49, v50, "Failed to apply %s: %@", v51, 0x16u);
            sub_3D48(v52, &unk_8EB30, &unk_7A270);

            sub_3940(v53);
          }

          v3 = *v88;
          (*v88)(v8, v89);
          v16 = [v91 database];
          if (v84)
          {
            sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);

            sub_759C8();
          }

          else
          {

            sub_75A78();
            sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
          }

          sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
          isa = sub_75678().super.isa;

          v103 = 0;
          v11 = [v16 addJournalEntries:isa error:&v103];

          if (v11)
          {
            v34 = v103;
          }

          else
          {
            v59 = v103;
            v16 = sub_74898();

            swift_willThrow();
            sub_75378();
            swift_errorRetain();
            v60 = sub_754A8();
            v61 = sub_75728();

            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v11 = swift_slowAlloc();
              *v62 = v77;
              swift_errorRetain();
              v63 = _swift_stdlib_bridgeErrorToNSError();
              *(v62 + 4) = v63;
              *v11 = v63;
              _os_log_impl(&dword_0, v60, v61, "Failed to add journal entries back: %@", v62, 0xCu);
              sub_3D48(v11, &unk_8EB30, &unk_7A270);
            }

            else
            {
            }

            v18 = (v3)(v85, v89);
            v19 = 0;
          }
        }

        else
        {
        }

        v10 = v86;
        v33 = v93;
        if (v93 == v86)
        {

          v20 = v74;
          v22 = v76;
          v27 = v73;
          v26 = v75;
          goto LABEL_8;
        }
      }
    }
  }

  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_64;
    }

    if (v28 >= v27)
    {
    }

    v26 = *(v72 + 8 * v28);
    ++v22;
    if (v26)
    {
      v22 = v28;
      goto LABEL_13;
    }
  }
}

void *sub_6E08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_provenance);
  *(a2 + 8) = 0;
  return result;
}

id sub_6EBC(id a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_754B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_38F8(&qword_8EB58, &unk_79BB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_79E90;
  *(v8 + 32) = sub_7688(0, &qword_8EEF8, NSArray_ptr);
  *(v8 + 40) = sub_7688(0, &qword_8EF00, NSData_ptr);
  sub_757F8();

  if (v35[3])
  {
    sub_38F8(&qword_8EF10, &qword_79EC0);
    if (swift_dynamicCast())
    {
      v9 = v34;
      v10 = *(v34 + 16);
      if (v10)
      {
        v31 = a1;
        v35[0] = _swiftEmptyArrayStorage;
        sub_75978();
        v11 = type metadata accessor for RingsPropertyRecordEntity.EntityWrapper();
        v12 = (v9 + 40);
        do
        {
          v13 = *(v12 - 1);
          v14 = *v12;
          v15 = objc_allocWithZone(v11);
          v16 = &v15[OBJC_IVAR___RingsEntityWrapper_serializedEntity];
          *v16 = v13;
          v16[1] = v14;
          sub_398C(v13, v14);
          v33.receiver = v15;
          v33.super_class = v11;
          objc_msgSendSuper2(&v33, "init");
          sub_75958();
          sub_75988();
          sub_75998();
          sub_75968();
          v12 += 2;
          --v10;
        }

        while (v10);

        v17 = v35[0];
        a1 = v31;
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      v27 = sub_75598();
      v28 = [a1 decodeInt64ForKey:v27];

      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_entities] = v17;
      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_provenance] = v28;
      v29 = type metadata accessor for RingsPropertyRecordJournalEntry();
      v32.receiver = v2;
      v32.super_class = v29;
      v30 = objc_msgSendSuper2(&v32, "init");

      return v30;
    }
  }

  else
  {
    sub_3D48(v35, &qword_8EF08, &unk_7A250);
  }

  sub_75378();
  v18 = sub_754A8();
  v19 = sub_75718();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v35[0] = v22;
    *v21 = 136315138;
    v23 = sub_75B18();
    v25 = sub_31B4(v23, v24, v35);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_0, v18, v19, "Failed to decode %s journal entry: missing entity data", v21, 0xCu);
    sub_3940(v22);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for RingsPropertyRecordJournalEntry();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_7318(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_provenance);
  v4 = sub_75598();
  [a1 encodeInt64:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_entities);
  if (v5 >> 62)
  {
    v6 = sub_759D8();
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  if (v6)
  {
    sub_67DDC(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = sub_75928();
        v9 = *(v8 + OBJC_IVAR___RingsEntityWrapper_serializedEntity);
        v10 = *(v8 + OBJC_IVAR___RingsEntityWrapper_serializedEntity + 8);
        sub_398C(v9, v10);
        swift_unknownObjectRelease();
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_67DDC((v11 > 1), v12 + 1, 1);
        }

        ++v7;
        _swiftEmptyArrayStorage[2] = v12 + 1;
        v13 = &_swiftEmptyArrayStorage[2 * v12];
        v13[4] = v9;
        v13[5] = v10;
      }

      while (v6 != v7);
    }

    else
    {
      v14 = (v5 + 32);
      do
      {
        v15 = (*v14 + OBJC_IVAR___RingsEntityWrapper_serializedEntity);
        v16 = *v15;
        v17 = v15[1];
        sub_398C(*v15, v17);
        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_67DDC((v18 > 1), v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[2 * v19];
        v20[4] = v16;
        v20[5] = v17;
        ++v14;
        --v6;
      }

      while (v6);
    }
  }

  isa = sub_75678().super.isa;

  v22 = sub_75598();
  [a1 encodeObject:isa forKey:v22];
}

id sub_7620(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RingsPropertyRecordJournalEntry();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_7688(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_76D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_7718(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_76D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a1 + 32);
  v17[3] = swift_getObjectType();
  v17[0] = a2;
  v15 = sub_75688();
  swift_unknownObjectRetain();
  LOBYTE(a8) = v14(v17, v15, a4, a5, a6, a7, a8);

  sub_3940(v17);
  return a8 & 1;
}

uint64_t sub_7858(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v87 = a3;
  v86 = a2;
  v10 = sub_754B8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v5 respondsToSelector:"syncVersionRangeForSession:"];
  if (result)
  {
    v69 = v13;
    v66 = v11;
    v67 = v10;
    v68 = v6;
    v15 = [v5 syncVersionRangeForSession:a1];
    v79 = HIDWORD(v15);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v77 = [a1 maxEncodedBytesPerCodableChangeForSyncEntityClass:ObjCClassFromMetadata] / 3;
    v85 = swift_allocObject();
    v16 = a5;
    v81 = a5;
    v78 = a1;
    *(v85 + 16) = -1;
    v17 = swift_allocObject();
    v84 = v17;
    *(v17 + 16) = &_swiftEmptySetSingleton;
    v73 = (v17 + 16);
    v18 = swift_allocObject();
    v83 = v18;
    *(v18 + 16) = -1;
    v70 = (v18 + 16);
    v19 = swift_allocObject();
    v82 = v19;
    *(v19 + 16) = 0;
    v72 = (v19 + 16);
    v20 = swift_allocObject();
    v88 = v20;
    *(v20 + 16) = &_swiftEmptySetSingleton;
    v75 = v20 + 16;
    v21 = swift_allocObject();
    *(v21 + 16) = -1;
    v74 = (v21 + 16);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v71 = (v22 + 16);
    sub_38F8(&qword_8EFF8, &unk_79F38);
    v23 = swift_allocBox();
    v76 = a4;
    v24 = v23;
    v26 = v25;
    v27 = sub_38F8(&qword_8F000, &qword_7A5D0);
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
    v28 = swift_allocObject();
    *(v28 + 16) = v24;
    *(v28 + 24) = v22;
    v29 = v77;
    *(v28 + 32) = v19;
    *(v28 + 40) = v29;
    *(v28 + 48) = v21;
    *(v28 + 56) = v20;
    *(v28 + 64) = v16;
    v77 = v15;
    LODWORD(v29) = v79;
    *(v28 + 72) = v15;
    *(v28 + 76) = v29;
    v30 = v83;
    *(v28 + 80) = v84;
    *(v28 + 88) = v30;
    v31 = swift_allocObject();
    v32 = v78;
    v31[2] = v5;
    v31[3] = v32;
    v33 = v87;
    v31[4] = v86;
    v31[5] = v33;
    v34 = v76;
    v31[6] = v85;
    v31[7] = v34;
    v31[8] = sub_FEEC;
    v31[9] = v28;
    v79 = v24;

    v86 = v22;

    v87 = v21;

    v35 = v31;

    swift_unknownObjectRetain();

    v36 = v32;

    v37 = v34;

    v38 = [v37 database];
    v39 = swift_allocObject();
    v39[2] = sub_FFA4;
    v39[3] = v35;
    aBlock[4] = sub_1008C;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_86808;
    v40 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v41 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v38 error:aBlock block:v40];
    _Block_release(v40);

    v42 = aBlock[0];
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if (v24)
    {
      __break(1u);
    }

    else
    {
      if (!v41)
      {
LABEL_20:
        sub_74898();

        swift_willThrow();
      }

      v43 = v75;
      swift_beginAccess();
      v44 = *v43;
      v45 = v73;
      swift_beginAccess();

      sub_E4F0(v46, v44);
      *v43 = v47;

      v48 = v72;
      swift_beginAccess();
      v49 = *v48;
      v50 = v71;
      swift_beginAccess();
      if (!__OFADD__(*v50, v49))
      {
        *v50 += v49;
        v51 = v70;
        swift_beginAccess();
        v52 = *v51;
        v42 = v74;
        swift_beginAccess();
        *v42 = v52;
        *v45 = &_swiftEmptySetSingleton;

        *v48 = 0;
        *v51 = -1;
        if (*v42 == -1)
        {
LABEL_18:
        }

        ObjCClassFromMetadata = v35;
        v53 = v69;
        sub_75378();

        v54 = sub_754A8();
        v55 = sub_75738();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v89 = v57;
          *v56 = 136315394;
          *(v56 + 4) = sub_31B4(0xD00000000000001BLL, 0x80000000000778B0, &v89);
          *(v56 + 12) = 2048;
          v34 = v81;
          v35 = v77;
          if ((*v43 & 0xC000000000000001) != 0)
          {

            v58 = sub_75898();
          }

          else
          {
            v58 = *(*v43 + 16);
          }

          *(v56 + 14) = v58;

          _os_log_impl(&dword_0, v54, v55, "[%s] Wrapping up syncing with %ld records to send", v56, 0x16u);
          sub_3940(v57);

          (*(v66 + 8))(v69, v67);
          v42 = v74;
        }

        else
        {

          (*(v66 + 8))(v53, v67);
          v34 = v81;
          v35 = v77;
        }

        v60 = sub_3AA8(v59);

        if ((v60 & 0x8000000000000000) == 0 && (v60 & 0x4000000000000000) == 0)
        {
          sub_75A78();
LABEL_16:

          sub_38F8(&qword_8EB00, &qword_79B18);
          isa = sub_75678().super.isa;

          v62 = *v42;
          v89 = 0;
          v63 = [v34 sendCodableChange:isa version:v35 resultAnchor:v62 sequence:0 done:1 error:&v89];

          if (v63)
          {
            v64 = v89;
            goto LABEL_18;
          }

          v42 = v89;
          goto LABEL_20;
        }

LABEL_24:
        sub_38F8(&qword_8EB00, &qword_79B18);
        sub_759C8();

        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_832C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v87 = a3;
  v86 = a2;
  v10 = sub_754B8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v5 respondsToSelector:"syncVersionRangeForSession:"];
  if (result)
  {
    v69 = v13;
    v66 = v11;
    v67 = v10;
    v68 = v6;
    v15 = [v5 syncVersionRangeForSession:a1];
    v79 = HIDWORD(v15);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v77 = [a1 maxEncodedBytesPerCodableChangeForSyncEntityClass:ObjCClassFromMetadata] / 3;
    v85 = swift_allocObject();
    v16 = a5;
    v81 = a5;
    v78 = a1;
    *(v85 + 16) = -1;
    v17 = swift_allocObject();
    v84 = v17;
    *(v17 + 16) = &_swiftEmptySetSingleton;
    v73 = (v17 + 16);
    v18 = swift_allocObject();
    v83 = v18;
    *(v18 + 16) = -1;
    v70 = (v18 + 16);
    v19 = swift_allocObject();
    v82 = v19;
    *(v19 + 16) = 0;
    v72 = (v19 + 16);
    v20 = swift_allocObject();
    v88 = v20;
    *(v20 + 16) = &_swiftEmptySetSingleton;
    v75 = v20 + 16;
    v21 = swift_allocObject();
    v76 = a4;
    v22 = v21;
    *(v21 + 16) = -1;
    v74 = (v21 + 16);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v71 = (v23 + 16);
    sub_38F8(&qword_8EFF8, &unk_79F38);
    v24 = swift_allocBox();
    v26 = v25;
    v27 = sub_38F8(&qword_8F000, &qword_7A5D0);
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
    v28 = swift_allocObject();
    *(v28 + 16) = v24;
    *(v28 + 24) = v23;
    v29 = v77;
    *(v28 + 32) = v19;
    *(v28 + 40) = v29;
    *(v28 + 48) = v22;
    *(v28 + 56) = v20;
    *(v28 + 64) = v16;
    v77 = v15;
    LODWORD(v29) = v79;
    *(v28 + 72) = v15;
    *(v28 + 76) = v29;
    v30 = v83;
    *(v28 + 80) = v84;
    *(v28 + 88) = v30;
    v31 = swift_allocObject();
    v32 = v78;
    v31[2] = v5;
    v31[3] = v32;
    v33 = v87;
    v31[4] = v86;
    v31[5] = v33;
    v34 = v76;
    v31[6] = v85;
    v31[7] = v34;
    v31[8] = sub_FE28;
    v31[9] = v28;
    v79 = v24;

    v86 = v23;

    v87 = v22;

    v35 = v31;

    swift_unknownObjectRetain();

    v36 = v32;

    v37 = v34;

    v38 = [v37 database];
    v39 = swift_allocObject();
    v39[2] = sub_FE40;
    v39[3] = v35;
    aBlock[4] = sub_1008C;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_866F0;
    v40 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v41 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v38 error:aBlock block:v40];
    _Block_release(v40);

    v42 = aBlock[0];
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      __break(1u);
    }

    else
    {
      if (!v41)
      {
LABEL_20:
        sub_74898();

        swift_willThrow();
      }

      v43 = v75;
      swift_beginAccess();
      v44 = *v43;
      v45 = v73;
      swift_beginAccess();

      sub_E6DC(v46, v44, type metadata accessor for RingsPropertyRecordEntity.EntityWrapper, &qword_8F090, type metadata accessor for RingsPropertyRecordEntity.EntityWrapper, sub_68D04);
      *v43 = v47;

      v48 = v72;
      swift_beginAccess();
      v49 = *v48;
      v50 = v71;
      swift_beginAccess();
      if (!__OFADD__(*v50, v49))
      {
        *v50 += v49;
        v51 = v70;
        swift_beginAccess();
        v52 = *v51;
        v42 = v74;
        swift_beginAccess();
        *v42 = v52;
        *v45 = &_swiftEmptySetSingleton;

        *v48 = 0;
        *v51 = -1;
        if (*v42 == -1)
        {
LABEL_18:
        }

        ObjCClassFromMetadata = v35;
        v53 = v69;
        sub_75378();

        v54 = sub_754A8();
        v55 = sub_75738();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v89 = v57;
          *v56 = 136315394;
          *(v56 + 4) = sub_31B4(0xD000000000000019, 0x8000000000077890, &v89);
          *(v56 + 12) = 2048;
          v34 = v81;
          v35 = v77;
          if ((*v43 & 0xC000000000000001) != 0)
          {

            v58 = sub_75898();
          }

          else
          {
            v58 = *(*v43 + 16);
          }

          *(v56 + 14) = v58;

          _os_log_impl(&dword_0, v54, v55, "[%s] Wrapping up syncing with %ld records to send", v56, 0x16u);
          sub_3940(v57);

          (*(v66 + 8))(v69, v67);
          v42 = v74;
        }

        else
        {

          (*(v66 + 8))(v53, v67);
          v34 = v81;
          v35 = v77;
        }

        v60 = sub_3B70(v59);

        if ((v60 & 0x8000000000000000) == 0 && (v60 & 0x4000000000000000) == 0)
        {
          sub_75A78();
LABEL_16:

          sub_38F8(&qword_8EB00, &qword_79B18);
          isa = sub_75678().super.isa;

          v62 = *v42;
          v89 = 0;
          v63 = [v34 sendCodableChange:isa version:v35 resultAnchor:v62 sequence:0 done:1 error:&v89];

          if (v63)
          {
            v64 = v89;
            goto LABEL_18;
          }

          v42 = v89;
          goto LABEL_20;
        }

LABEL_24:
        sub_38F8(&qword_8EB00, &qword_79B18);
        sub_759C8();

        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_8E44(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v87 = a3;
  v86 = a2;
  v10 = sub_754B8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v5 respondsToSelector:"syncVersionRangeForSession:"];
  if (result)
  {
    v69 = v13;
    v66 = v11;
    v67 = v10;
    v68 = v6;
    v15 = [v5 syncVersionRangeForSession:a1];
    v79 = HIDWORD(v15);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v77 = [a1 maxEncodedBytesPerCodableChangeForSyncEntityClass:ObjCClassFromMetadata] / 3;
    v85 = swift_allocObject();
    v16 = a5;
    v81 = a5;
    v78 = a1;
    *(v85 + 16) = -1;
    v17 = swift_allocObject();
    v84 = v17;
    *(v17 + 16) = &_swiftEmptySetSingleton;
    v73 = (v17 + 16);
    v18 = swift_allocObject();
    v83 = v18;
    *(v18 + 16) = -1;
    v70 = (v18 + 16);
    v19 = swift_allocObject();
    v82 = v19;
    *(v19 + 16) = 0;
    v72 = (v19 + 16);
    v20 = swift_allocObject();
    v88 = v20;
    *(v20 + 16) = &_swiftEmptySetSingleton;
    v75 = v20 + 16;
    v21 = swift_allocObject();
    v76 = a4;
    v22 = v21;
    *(v21 + 16) = -1;
    v74 = (v21 + 16);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v71 = (v23 + 16);
    sub_38F8(&qword_8EFF8, &unk_79F38);
    v24 = swift_allocBox();
    v26 = v25;
    v27 = sub_38F8(&qword_8F000, &qword_7A5D0);
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
    v28 = swift_allocObject();
    *(v28 + 16) = v24;
    *(v28 + 24) = v23;
    v29 = v77;
    *(v28 + 32) = v19;
    *(v28 + 40) = v29;
    *(v28 + 48) = v22;
    *(v28 + 56) = v20;
    *(v28 + 64) = v16;
    v77 = v15;
    LODWORD(v29) = v79;
    *(v28 + 72) = v15;
    *(v28 + 76) = v29;
    v30 = v83;
    *(v28 + 80) = v84;
    *(v28 + 88) = v30;
    v31 = swift_allocObject();
    v32 = v78;
    v31[2] = v5;
    v31[3] = v32;
    v33 = v87;
    v31[4] = v86;
    v31[5] = v33;
    v34 = v76;
    v31[6] = v85;
    v31[7] = v34;
    v31[8] = sub_FC2C;
    v31[9] = v28;
    v79 = v24;

    v86 = v23;

    v87 = v22;

    v35 = v31;

    swift_unknownObjectRetain();

    v36 = v32;

    v37 = v34;

    v38 = [v37 database];
    v39 = swift_allocObject();
    v39[2] = sub_FC48;
    v39[3] = v35;
    aBlock[4] = sub_FC94;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_865D8;
    v40 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v41 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v38 error:aBlock block:v40];
    _Block_release(v40);

    v42 = aBlock[0];
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      __break(1u);
    }

    else
    {
      if (!v41)
      {
LABEL_20:
        sub_74898();

        swift_willThrow();
      }

      v43 = v75;
      swift_beginAccess();
      v44 = *v43;
      v45 = v73;
      swift_beginAccess();

      sub_E6DC(v46, v44, type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper, &qword_8EDB8, type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper, sub_68D7C);
      *v43 = v47;

      v48 = v72;
      swift_beginAccess();
      v49 = *v48;
      v50 = v71;
      swift_beginAccess();
      if (!__OFADD__(*v50, v49))
      {
        *v50 += v49;
        v51 = v70;
        swift_beginAccess();
        v52 = *v51;
        v42 = v74;
        swift_beginAccess();
        *v42 = v52;
        *v45 = &_swiftEmptySetSingleton;

        *v48 = 0;
        *v51 = -1;
        if (*v42 == -1)
        {
LABEL_18:
        }

        ObjCClassFromMetadata = v35;
        v53 = v69;
        sub_75378();

        v54 = sub_754A8();
        v55 = sub_75738();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v89 = v57;
          *v56 = 136315394;
          *(v56 + 4) = sub_31B4(0xD00000000000001FLL, 0x8000000000077870, &v89);
          *(v56 + 12) = 2048;
          v34 = v81;
          v35 = v77;
          if ((*v43 & 0xC000000000000001) != 0)
          {

            v58 = sub_75898();
          }

          else
          {
            v58 = *(*v43 + 16);
          }

          *(v56 + 14) = v58;

          _os_log_impl(&dword_0, v54, v55, "[%s] Wrapping up syncing with %ld records to send", v56, 0x16u);
          sub_3940(v57);

          (*(v66 + 8))(v69, v67);
          v42 = v74;
        }

        else
        {

          (*(v66 + 8))(v53, v67);
          v34 = v81;
          v35 = v77;
        }

        v60 = sub_3BC8(v59);

        if ((v60 & 0x8000000000000000) == 0 && (v60 & 0x4000000000000000) == 0)
        {
          sub_75A78();
LABEL_16:

          sub_38F8(&qword_8EB00, &qword_79B18);
          isa = sub_75678().super.isa;

          v62 = *v42;
          v89 = 0;
          v63 = [v34 sendCodableChange:isa version:v35 resultAnchor:v62 sequence:0 done:1 error:&v89];

          if (v63)
          {
            v64 = v89;
            goto LABEL_18;
          }

          v42 = v89;
          goto LABEL_20;
        }

LABEL_24:
        sub_38F8(&qword_8EB00, &qword_79B18);
        sub_759C8();

        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_995C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v177 = a5;
  v173 = a4;
  v182 = a3;
  v172 = sub_38F8(&qword_8F068, &qword_79F48);
  v17 = __chkstk_darwin(v172);
  v165 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v168 = &v148 - v19;
  v20 = sub_38F8(&qword_8EFF8, &unk_79F38);
  v21 = __chkstk_darwin(v20 - 8);
  v169 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v166 = &v148 - v24;
  v25 = __chkstk_darwin(v23);
  v162 = &v148 - v26;
  v27 = __chkstk_darwin(v25);
  v167 = (&v148 - v28);
  v29 = __chkstk_darwin(v27);
  v171 = &v148 - v30;
  v31 = __chkstk_darwin(v29);
  v163 = &v148 - v32;
  v33 = __chkstk_darwin(v31);
  v170 = &v148 - v34;
  __chkstk_darwin(v33);
  v174 = &v148 - v35;
  v175 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v178 = *(v175 - 8);
  v36 = __chkstk_darwin(v175);
  v159 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v160 = &v148 - v39;
  __chkstk_darwin(v38);
  v179 = &v148 - v40;
  v41 = sub_754B8();
  v180 = *(v41 - 8);
  v181 = v41;
  v42 = __chkstk_darwin(v41);
  v161 = &v148 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v164 = &v148 - v45;
  v46 = __chkstk_darwin(v44);
  __chkstk_darwin(v46);
  v48 = &v148 - v47;
  v49 = sub_38F8(&qword_8F0B8, &unk_79F60);
  __chkstk_darwin(v49 - 8);
  v51 = &v148 - v50;
  v52 = sub_38F8(&qword_8EFE0, &qword_79F30);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = &v148 - v54;
  v176 = swift_projectBox();
  v56 = type metadata accessor for WorkoutPropertyRecordEntity();
  v57 = sub_10030(&unk_8F0C0, 255, type metadata accessor for WorkoutPropertyRecordEntity, &unk_79F00);
  (*(v57 + 48))(v182, v56, v57);
  if ((v53[6])(v51, 1, v52) == 1)
  {
    sub_3D48(v51, &qword_8F0B8, &unk_79F60);
    sub_75378();
    v58 = sub_754A8();
    v59 = sub_75718();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v177;
      _os_log_impl(&dword_0, v58, v59, "Failed to decode SnapshotContainer from row: %ld", v60, 0xCu);
    }

    (*(v180 + 8))(v48, v181);
    return 0;
  }

  (v53[4])(v55, v51, v52);
  v62 = (*(v57 + 56))(v55, v56, v57);
  v63 = [v62 encodedByteCount];
  if (v63 <= 0)
  {
    (v53[1])(v55, v52);

    return 1;
  }

  v153 = v62;
  v154 = v63;
  v150 = a13;
  v151 = a12;
  v155 = a17;
  v157 = a16;
  v182 = a10;
  v152 = a9;
  v177 = v52;
  v156 = v55;
  sub_75088();
  v64 = v176;
  swift_beginAccess();
  v65 = v174;
  sub_FCE0(v64, v174, &qword_8EFF8, &unk_79F38);
  v66 = v178 + 48;
  v67 = *(v178 + 48);
  v68 = v175;
  v69 = (v67)(v65, 1, v175);
  v70 = v65;
  v71 = v182;
  sub_3D48(v70, &qword_8EFF8, &unk_79F38);
  v158 = v53;
  if (v69 != 1)
  {
    swift_beginAccess();
    v72 = v64;
    v73 = v170;
    sub_FCE0(v179, v170, &qword_8F000, &qword_7A5D0);
    v74 = *(v178 + 56);
    v174 = v178 + 56;
    v149 = v74;
    v74(v73, 0, 1, v68);
    v75 = v172[12];
    v76 = v72;
    v77 = v168;
    sub_FCE0(v76, v168, &qword_8EFF8, &unk_79F38);
    sub_FCE0(v73, v77 + v75, &qword_8EFF8, &unk_79F38);
    if ((v67)(v77, 1, v68) == 1)
    {
      sub_3D48(v73, &qword_8EFF8, &unk_79F38);
      v78 = (v67)(v77 + v75, 1, v68);
      v71 = v182;
      v64 = v176;
      if (v78 == 1)
      {
        sub_3D48(v77, &qword_8EFF8, &unk_79F38);
        goto LABEL_21;
      }
    }

    else
    {
      v79 = v163;
      sub_FCE0(v77, v163, &qword_8EFF8, &unk_79F38);
      if ((v67)(v77 + v75, 1, v68) != 1)
      {
        v92 = v160;
        sub_FDB8(v77 + v75, v160);
        sub_74CA8();
        sub_10030(&qword_8F088, 255, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
        v93 = sub_75588();
        v94 = v79;
        v71 = v182;
        v64 = v176;
        if (v93)
        {
          v95 = sub_75588();
          sub_3D48(v92, &qword_8F000, &qword_7A5D0);
          sub_3D48(v170, &qword_8EFF8, &unk_79F38);
          sub_3D48(v94, &qword_8F000, &qword_7A5D0);
          v68 = v175;
          sub_3D48(v168, &qword_8EFF8, &unk_79F38);
          v53 = v158;
          if (v95)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_3D48(v92, &qword_8F000, &qword_7A5D0);
          sub_3D48(v170, &qword_8EFF8, &unk_79F38);
          sub_3D48(v94, &qword_8F000, &qword_7A5D0);
          sub_3D48(v168, &qword_8EFF8, &unk_79F38);
          v53 = v158;
        }

        goto LABEL_14;
      }

      sub_3D48(v170, &qword_8EFF8, &unk_79F38);
      sub_3D48(v79, &qword_8F000, &qword_7A5D0);
      v71 = v182;
      v64 = v176;
    }

    sub_3D48(v77, &qword_8F068, &qword_79F48);
LABEL_14:
    v80 = v152;
    swift_beginAccess();
    v81 = *(v80 + 16);
    swift_beginAccess();
    v82 = *(v71 + 16);
    v83 = __OFADD__(v81, v82);
    v84 = v81 + v82;
    if (v83)
    {
      goto LABEL_56;
    }

    if (v84 > a11)
    {
      v178 = a15;
      v172 = a14;
      v85 = v164;
      sub_75378();
      v86 = v151;

      v66 = v150;

      v87 = sub_754A8();
      v88 = sub_75738();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v185[0] = v171;
        *v89 = 136315906;
        *(v89 + 4) = sub_31B4(0xD00000000000001BLL, 0x80000000000778B0, v185);
        *(v89 + 12) = 2048;
        swift_beginAccess();
        *(v89 + 14) = *(v86 + 16);

        *(v89 + 22) = 2048;
        swift_beginAccess();
        v90 = *(v66 + 16);
        if ((v90 & 0xC000000000000001) != 0)
        {

          v91 = sub_75898();
        }

        else
        {
          v91 = *(v90 + 16);
        }

        v122 = v164;
        *(v89 + 24) = v91;
        v66 = v150;

        *(v89 + 32) = 2080;
        *(v89 + 34) = sub_31B4(0xD00000000000001BLL, 0x80000000000778B0, v185);
        _os_log_impl(&dword_0, v87, v88, "[%s][%lld] Syncing over %ld %s", v89, 0x2Au);
        swift_arrayDestroy();

        v67 = *(v180 + 8);
        (v67)(v122, v181);
        v68 = v177;
        v53 = v158;
      }

      else
      {

        v67 = *(v180 + 8);
        (v67)(v85, v181);
        v68 = v177;
      }

      swift_beginAccess();

      v124 = sub_3AA8(v123);

      if ((v124 & 0x8000000000000000) == 0 && (v124 & 0x4000000000000000) == 0)
      {
        sub_75A78();
        goto LABEL_44;
      }

      goto LABEL_58;
    }
  }

LABEL_21:
  swift_beginAccess();
  v96 = v171;
  sub_FCE0(v64, v171, &qword_8EFF8, &unk_79F38);
  v97 = (v67)(v96, 1, v68);
  sub_3D48(v96, &qword_8EFF8, &unk_79F38);
  if (v97 == 1)
  {
LABEL_22:
    swift_beginAccess();
    v98 = v166;
    sub_FCE0(v64, v166, &qword_8EFF8, &unk_79F38);
    v99 = (v67)(v98, 1, v68);
    sub_3D48(v98, &qword_8EFF8, &unk_79F38);
    v100 = v68;
    v68 = v177;
    v67 = v157;
    v53 = v158;
    v66 = v155;
    if (v99 != 1)
    {
      goto LABEL_52;
    }

    v101 = v169;
    sub_FCE0(v179, v169, &qword_8F000, &qword_7A5D0);
    (*(v178 + 56))(v101, 0, 1, v100);
    goto LABEL_51;
  }

  swift_beginAccess();
  v53 = v167;
  sub_FCE0(v179, v167, &qword_8F000, &qword_7A5D0);
  v181 = *(v178 + 56);
  v181(v53, 0, 1, v68);
  v102 = v64;
  v103 = v172[12];
  v104 = v165;
  sub_FCE0(v102, v165, &qword_8EFF8, &unk_79F38);
  sub_FCE0(v53, v104 + v103, &qword_8EFF8, &unk_79F38);
  if ((v67)(v104, 1, v68) == 1)
  {
    sub_3D48(v53, &qword_8EFF8, &unk_79F38);
    v105 = (v67)(v104 + v103, 1, v68);
    v71 = v182;
    if (v105 == 1)
    {
      sub_3D48(v104, &qword_8EFF8, &unk_79F38);
      v64 = v176;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v106 = v162;
  sub_FCE0(v104, v162, &qword_8EFF8, &unk_79F38);
  if ((v67)(v104 + v103, 1, v68) == 1)
  {
    sub_3D48(v167, &qword_8EFF8, &unk_79F38);
    sub_3D48(v106, &qword_8F000, &qword_7A5D0);
    v68 = v175;
    v71 = v182;
LABEL_29:
    sub_3D48(v104, &qword_8F068, &qword_79F48);
LABEL_30:
    v64 = v176;
    goto LABEL_31;
  }

  v117 = v159;
  sub_FDB8(v104 + v103, v159);
  sub_74CA8();
  sub_10030(&qword_8F088, 255, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
  v118 = sub_75588();
  v119 = v106;
  v71 = v182;
  if ((v118 & 1) == 0)
  {
    sub_3D48(v117, &qword_8F000, &qword_7A5D0);
    v53 = &qword_8EFF8;
    sub_3D48(v167, &qword_8EFF8, &unk_79F38);
    sub_3D48(v119, &qword_8F000, &qword_7A5D0);
    sub_3D48(v104, &qword_8EFF8, &unk_79F38);
    v68 = v175;
    goto LABEL_30;
  }

  v120 = v175;
  v121 = sub_75588();
  sub_3D48(v117, &qword_8F000, &qword_7A5D0);
  v53 = &unk_79F38;
  sub_3D48(v167, &qword_8EFF8, &unk_79F38);
  sub_3D48(v119, &qword_8F000, &qword_7A5D0);
  v68 = v120;
  sub_3D48(v165, &qword_8EFF8, &unk_79F38);
  v64 = v176;
  if (v121)
  {
    goto LABEL_22;
  }

LABEL_31:
  v66 = v150;
  swift_beginAccess();
  v107 = *(v66 + 16);
  v67 = v157;
  swift_beginAccess();

  sub_E4F0(v108, v107);
  v110 = v109;
  swift_beginAccess();
  *(v66 + 16) = v110;

  swift_beginAccess();
  v111 = *(v71 + 16);
  v112 = v152;
  swift_beginAccess();
  v113 = *(v112 + 16);
  v83 = __OFADD__(v113, v111);
  v114 = v113 + v111;
  if (v83)
  {
    goto LABEL_57;
  }

  *(v112 + 16) = v114;
  v66 = v155;
  swift_beginAccess();
  v115 = *(v66 + 16);
  v116 = v151;
  swift_beginAccess();
  *(v116 + 16) = v115;
  swift_beginAccess();
  *(v67 + 16) = &_swiftEmptySetSingleton;

  swift_beginAccess();
  *(v71 + 16) = 0;
  swift_beginAccess();
  *(v66 + 16) = -1;
  v101 = v169;
  sub_FCE0(v179, v169, &qword_8F000, &qword_7A5D0);
  v181(v101, 0, 1, v68);
  v68 = v177;
  v53 = v158;
LABEL_51:
  while (1)
  {
    swift_beginAccess();
    sub_FD48(v101, v64);
LABEL_52:
    swift_beginAccess();
    v143 = v153;
    sub_68CC8(v183, v143);
    swift_endAccess();

    sub_3D48(v179, &qword_8F000, &qword_7A5D0);
    v144 = v53[1];
    ++v53;
    v144(v156, v68);
    swift_beginAccess();
    v145 = *(v71 + 16);
    v83 = __OFADD__(v145, v154);
    v146 = &v154[v145];
    if (!v83)
    {
      break;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    sub_38F8(&qword_8EB00, &qword_79B18);
    sub_759C8();

LABEL_44:

    sub_38F8(&qword_8EB00, &qword_79B18);
    isa = sub_75678().super.isa;

    v126 = v151;
    swift_beginAccess();
    v127 = *(v126 + 16);
    v184[0] = 0;
    v128 = [v172 sendCodableChange:isa version:v178 resultAnchor:v127 sequence:0 done:0 error:v184];

    if (v128)
    {
      v129 = v184[0];
    }

    else
    {
      v130 = v184[0];
      sub_74898();

      swift_willThrow();
      v131 = v161;
      sub_75378();
      swift_errorRetain();
      v132 = sub_754A8();
      v133 = sub_75718();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v184[0] = v136;
        *v134 = 136315394;
        *(v134 + 4) = sub_31B4(0xD00000000000001BLL, 0x80000000000778B0, v184);
        *(v134 + 12) = 2112;
        swift_errorRetain();
        v137 = _swift_stdlib_bridgeErrorToNSError();
        *(v134 + 14) = v137;
        *v135 = v137;
        _os_log_impl(&dword_0, v132, v133, "[%s] Failed to send sync message: %@", v134, 0x16u);
        sub_3D48(v135, &unk_8EB30, &unk_7A270);

        sub_3940(v136);
        v66 = v150;
        v68 = v177;

        v138 = v161;
      }

      else
      {

        v138 = v131;
      }

      (v67)(v138, v181);
      v53 = v158;
      v126 = v151;
    }

    v67 = v157;
    swift_beginAccess();
    v139 = *(v67 + 16);
    swift_beginAccess();
    *(v66 + 16) = v139;

    swift_beginAccess();
    v140 = *(v71 + 16);
    v141 = v152;
    swift_beginAccess();
    *(v141 + 16) = v140;
    v66 = v155;
    swift_beginAccess();
    v142 = *(v66 + 16);
    swift_beginAccess();
    *(v126 + 16) = v142;
    swift_beginAccess();
    *(v67 + 16) = &_swiftEmptySetSingleton;

    swift_beginAccess();
    *(v71 + 16) = 0;
    swift_beginAccess();
    *(v66 + 16) = -1;
    v101 = v169;
    sub_FCE0(v179, v169, &qword_8F000, &qword_7A5D0);
    v149(v101, 0, 1, v175);
  }

  *(v71 + 16) = v146;
  v61 = 1;
  swift_beginAccess();
  *(v66 + 16) = v173;
  return v61;
}

uint64_t sub_B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v177 = a5;
  v173 = a4;
  v182 = a3;
  v172 = sub_38F8(&qword_8F068, &qword_79F48);
  v17 = __chkstk_darwin(v172);
  v165 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v168 = &v148 - v19;
  v20 = sub_38F8(&qword_8EFF8, &unk_79F38);
  v21 = __chkstk_darwin(v20 - 8);
  v169 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v166 = &v148 - v24;
  v25 = __chkstk_darwin(v23);
  v162 = &v148 - v26;
  v27 = __chkstk_darwin(v25);
  v167 = (&v148 - v28);
  v29 = __chkstk_darwin(v27);
  v171 = &v148 - v30;
  v31 = __chkstk_darwin(v29);
  v163 = &v148 - v32;
  v33 = __chkstk_darwin(v31);
  v170 = &v148 - v34;
  __chkstk_darwin(v33);
  v174 = &v148 - v35;
  v175 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v178 = *(v175 - 8);
  v36 = __chkstk_darwin(v175);
  v159 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v160 = &v148 - v39;
  __chkstk_darwin(v38);
  v179 = &v148 - v40;
  v41 = sub_754B8();
  v180 = *(v41 - 8);
  v181 = v41;
  v42 = __chkstk_darwin(v41);
  v161 = &v148 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v164 = &v148 - v45;
  v46 = __chkstk_darwin(v44);
  __chkstk_darwin(v46);
  v48 = &v148 - v47;
  v49 = sub_38F8(&qword_8F098, &qword_79F58);
  __chkstk_darwin(v49 - 8);
  v51 = &v148 - v50;
  v52 = sub_38F8(&qword_8F0A0, &qword_79EC8);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = &v148 - v54;
  v176 = swift_projectBox();
  v56 = type metadata accessor for RingsPropertyRecordEntity();
  v57 = sub_10030(&qword_8F0A8, 255, type metadata accessor for RingsPropertyRecordEntity, &unk_7A5F0);
  (*(v57 + 48))(v182, v56, v57);
  if ((v53[6])(v51, 1, v52) == 1)
  {
    sub_3D48(v51, &qword_8F098, &qword_79F58);
    sub_75378();
    v58 = sub_754A8();
    v59 = sub_75718();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v177;
      _os_log_impl(&dword_0, v58, v59, "Failed to decode SnapshotContainer from row: %ld", v60, 0xCu);
    }

    (*(v180 + 8))(v48, v181);
    return 0;
  }

  (v53[4])(v55, v51, v52);
  v62 = (*(v57 + 56))(v55, v56, v57);
  v63 = [v62 encodedByteCount];
  if (v63 <= 0)
  {
    (v53[1])(v55, v52);

    return 1;
  }

  v153 = v62;
  v154 = v63;
  v150 = a13;
  v151 = a12;
  v155 = a17;
  v157 = a16;
  v182 = a10;
  v152 = a9;
  v177 = v52;
  v156 = v55;
  sub_75088();
  v64 = v176;
  swift_beginAccess();
  v65 = v174;
  sub_FCE0(v64, v174, &qword_8EFF8, &unk_79F38);
  v66 = v178 + 48;
  v67 = *(v178 + 48);
  v68 = v175;
  v69 = (v67)(v65, 1, v175);
  v70 = v65;
  v71 = v182;
  sub_3D48(v70, &qword_8EFF8, &unk_79F38);
  v158 = v53;
  if (v69 != 1)
  {
    swift_beginAccess();
    v72 = v64;
    v73 = v170;
    sub_FCE0(v179, v170, &qword_8F000, &qword_7A5D0);
    v74 = *(v178 + 56);
    v174 = v178 + 56;
    v149 = v74;
    v74(v73, 0, 1, v68);
    v75 = v172[12];
    v76 = v72;
    v77 = v168;
    sub_FCE0(v76, v168, &qword_8EFF8, &unk_79F38);
    sub_FCE0(v73, v77 + v75, &qword_8EFF8, &unk_79F38);
    if ((v67)(v77, 1, v68) == 1)
    {
      sub_3D48(v73, &qword_8EFF8, &unk_79F38);
      v78 = (v67)(v77 + v75, 1, v68);
      v71 = v182;
      v64 = v176;
      if (v78 == 1)
      {
        sub_3D48(v77, &qword_8EFF8, &unk_79F38);
        goto LABEL_21;
      }
    }

    else
    {
      v79 = v163;
      sub_FCE0(v77, v163, &qword_8EFF8, &unk_79F38);
      if ((v67)(v77 + v75, 1, v68) != 1)
      {
        v92 = v160;
        sub_FDB8(v77 + v75, v160);
        sub_74CA8();
        sub_10030(&qword_8F088, 255, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
        v93 = sub_75588();
        v94 = v79;
        v71 = v182;
        v64 = v176;
        if (v93)
        {
          v95 = sub_75588();
          sub_3D48(v92, &qword_8F000, &qword_7A5D0);
          sub_3D48(v170, &qword_8EFF8, &unk_79F38);
          sub_3D48(v94, &qword_8F000, &qword_7A5D0);
          v68 = v175;
          sub_3D48(v168, &qword_8EFF8, &unk_79F38);
          v53 = v158;
          if (v95)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_3D48(v92, &qword_8F000, &qword_7A5D0);
          sub_3D48(v170, &qword_8EFF8, &unk_79F38);
          sub_3D48(v94, &qword_8F000, &qword_7A5D0);
          sub_3D48(v168, &qword_8EFF8, &unk_79F38);
          v53 = v158;
        }

        goto LABEL_14;
      }

      sub_3D48(v170, &qword_8EFF8, &unk_79F38);
      sub_3D48(v79, &qword_8F000, &qword_7A5D0);
      v71 = v182;
      v64 = v176;
    }

    sub_3D48(v77, &qword_8F068, &qword_79F48);
LABEL_14:
    v80 = v152;
    swift_beginAccess();
    v81 = *(v80 + 16);
    swift_beginAccess();
    v82 = *(v71 + 16);
    v83 = __OFADD__(v81, v82);
    v84 = v81 + v82;
    if (v83)
    {
      goto LABEL_56;
    }

    if (v84 > a11)
    {
      v178 = a15;
      v172 = a14;
      v85 = v164;
      sub_75378();
      v86 = v151;

      v66 = v150;

      v87 = sub_754A8();
      v88 = sub_75738();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v185[0] = v171;
        *v89 = 136315906;
        *(v89 + 4) = sub_31B4(0xD000000000000019, 0x8000000000077890, v185);
        *(v89 + 12) = 2048;
        swift_beginAccess();
        *(v89 + 14) = *(v86 + 16);

        *(v89 + 22) = 2048;
        swift_beginAccess();
        v90 = *(v66 + 16);
        if ((v90 & 0xC000000000000001) != 0)
        {

          v91 = sub_75898();
        }

        else
        {
          v91 = *(v90 + 16);
        }

        v122 = v164;
        *(v89 + 24) = v91;
        v66 = v150;

        *(v89 + 32) = 2080;
        *(v89 + 34) = sub_31B4(0xD000000000000019, 0x8000000000077890, v185);
        _os_log_impl(&dword_0, v87, v88, "[%s][%lld] Syncing over %ld %s", v89, 0x2Au);
        swift_arrayDestroy();

        v67 = *(v180 + 8);
        (v67)(v122, v181);
        v68 = v177;
        v53 = v158;
      }

      else
      {

        v67 = *(v180 + 8);
        (v67)(v85, v181);
        v68 = v177;
      }

      swift_beginAccess();

      v124 = sub_3B70(v123);

      if ((v124 & 0x8000000000000000) == 0 && (v124 & 0x4000000000000000) == 0)
      {
        sub_75A78();
        goto LABEL_44;
      }

      goto LABEL_58;
    }
  }

LABEL_21:
  swift_beginAccess();
  v96 = v171;
  sub_FCE0(v64, v171, &qword_8EFF8, &unk_79F38);
  v97 = (v67)(v96, 1, v68);
  sub_3D48(v96, &qword_8EFF8, &unk_79F38);
  if (v97 == 1)
  {
LABEL_22:
    swift_beginAccess();
    v98 = v166;
    sub_FCE0(v64, v166, &qword_8EFF8, &unk_79F38);
    v99 = (v67)(v98, 1, v68);
    sub_3D48(v98, &qword_8EFF8, &unk_79F38);
    v100 = v68;
    v68 = v177;
    v67 = v157;
    v53 = v158;
    v66 = v155;
    if (v99 != 1)
    {
      goto LABEL_52;
    }

    v101 = v169;
    sub_FCE0(v179, v169, &qword_8F000, &qword_7A5D0);
    (*(v178 + 56))(v101, 0, 1, v100);
    goto LABEL_51;
  }

  swift_beginAccess();
  v53 = v167;
  sub_FCE0(v179, v167, &qword_8F000, &qword_7A5D0);
  v181 = *(v178 + 56);
  v181(v53, 0, 1, v68);
  v102 = v64;
  v103 = v172[12];
  v104 = v165;
  sub_FCE0(v102, v165, &qword_8EFF8, &unk_79F38);
  sub_FCE0(v53, v104 + v103, &qword_8EFF8, &unk_79F38);
  if ((v67)(v104, 1, v68) == 1)
  {
    sub_3D48(v53, &qword_8EFF8, &unk_79F38);
    v105 = (v67)(v104 + v103, 1, v68);
    v71 = v182;
    if (v105 == 1)
    {
      sub_3D48(v104, &qword_8EFF8, &unk_79F38);
      v64 = v176;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v106 = v162;
  sub_FCE0(v104, v162, &qword_8EFF8, &unk_79F38);
  if ((v67)(v104 + v103, 1, v68) == 1)
  {
    sub_3D48(v167, &qword_8EFF8, &unk_79F38);
    sub_3D48(v106, &qword_8F000, &qword_7A5D0);
    v68 = v175;
    v71 = v182;
LABEL_29:
    sub_3D48(v104, &qword_8F068, &qword_79F48);
LABEL_30:
    v64 = v176;
    goto LABEL_31;
  }

  v117 = v159;
  sub_FDB8(v104 + v103, v159);
  sub_74CA8();
  sub_10030(&qword_8F088, 255, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
  v118 = sub_75588();
  v119 = v106;
  v71 = v182;
  if ((v118 & 1) == 0)
  {
    sub_3D48(v117, &qword_8F000, &qword_7A5D0);
    v53 = &qword_8EFF8;
    sub_3D48(v167, &qword_8EFF8, &unk_79F38);
    sub_3D48(v119, &qword_8F000, &qword_7A5D0);
    sub_3D48(v104, &qword_8EFF8, &unk_79F38);
    v68 = v175;
    goto LABEL_30;
  }

  v120 = v175;
  v121 = sub_75588();
  sub_3D48(v117, &qword_8F000, &qword_7A5D0);
  v53 = &unk_79F38;
  sub_3D48(v167, &qword_8EFF8, &unk_79F38);
  sub_3D48(v119, &qword_8F000, &qword_7A5D0);
  v68 = v120;
  sub_3D48(v165, &qword_8EFF8, &unk_79F38);
  v64 = v176;
  if (v121)
  {
    goto LABEL_22;
  }

LABEL_31:
  v66 = v150;
  swift_beginAccess();
  v107 = *(v66 + 16);
  v67 = v157;
  swift_beginAccess();

  sub_E6DC(v108, v107, type metadata accessor for RingsPropertyRecordEntity.EntityWrapper, &qword_8F090, type metadata accessor for RingsPropertyRecordEntity.EntityWrapper, sub_68D04);
  v110 = v109;
  swift_beginAccess();
  *(v66 + 16) = v110;

  swift_beginAccess();
  v111 = *(v71 + 16);
  v112 = v152;
  swift_beginAccess();
  v113 = *(v112 + 16);
  v83 = __OFADD__(v113, v111);
  v114 = v113 + v111;
  if (v83)
  {
    goto LABEL_57;
  }

  *(v112 + 16) = v114;
  v66 = v155;
  swift_beginAccess();
  v115 = *(v66 + 16);
  v116 = v151;
  swift_beginAccess();
  *(v116 + 16) = v115;
  swift_beginAccess();
  *(v67 + 16) = &_swiftEmptySetSingleton;

  swift_beginAccess();
  *(v71 + 16) = 0;
  swift_beginAccess();
  *(v66 + 16) = -1;
  v101 = v169;
  sub_FCE0(v179, v169, &qword_8F000, &qword_7A5D0);
  v181(v101, 0, 1, v68);
  v68 = v177;
  v53 = v158;
LABEL_51:
  while (1)
  {
    swift_beginAccess();
    sub_FD48(v101, v64);
LABEL_52:
    swift_beginAccess();
    v143 = v153;
    sub_68D04(v183, v143);
    swift_endAccess();

    sub_3D48(v179, &qword_8F000, &qword_7A5D0);
    v144 = v53[1];
    ++v53;
    v144(v156, v68);
    swift_beginAccess();
    v145 = *(v71 + 16);
    v83 = __OFADD__(v145, v154);
    v146 = &v154[v145];
    if (!v83)
    {
      break;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    sub_38F8(&qword_8EB00, &qword_79B18);
    sub_759C8();

LABEL_44:

    sub_38F8(&qword_8EB00, &qword_79B18);
    isa = sub_75678().super.isa;

    v126 = v151;
    swift_beginAccess();
    v127 = *(v126 + 16);
    v184[0] = 0;
    v128 = [v172 sendCodableChange:isa version:v178 resultAnchor:v127 sequence:0 done:0 error:v184];

    if (v128)
    {
      v129 = v184[0];
    }

    else
    {
      v130 = v184[0];
      sub_74898();

      swift_willThrow();
      v131 = v161;
      sub_75378();
      swift_errorRetain();
      v132 = sub_754A8();
      v133 = sub_75718();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v184[0] = v136;
        *v134 = 136315394;
        *(v134 + 4) = sub_31B4(0xD000000000000019, 0x8000000000077890, v184);
        *(v134 + 12) = 2112;
        swift_errorRetain();
        v137 = _swift_stdlib_bridgeErrorToNSError();
        *(v134 + 14) = v137;
        *v135 = v137;
        _os_log_impl(&dword_0, v132, v133, "[%s] Failed to send sync message: %@", v134, 0x16u);
        sub_3D48(v135, &unk_8EB30, &unk_7A270);

        sub_3940(v136);
        v66 = v150;
        v68 = v177;

        v138 = v161;
      }

      else
      {

        v138 = v131;
      }

      (v67)(v138, v181);
      v53 = v158;
      v126 = v151;
    }

    v67 = v157;
    swift_beginAccess();
    v139 = *(v67 + 16);
    swift_beginAccess();
    *(v66 + 16) = v139;

    swift_beginAccess();
    v140 = *(v71 + 16);
    v141 = v152;
    swift_beginAccess();
    *(v141 + 16) = v140;
    v66 = v155;
    swift_beginAccess();
    v142 = *(v66 + 16);
    swift_beginAccess();
    *(v126 + 16) = v142;
    swift_beginAccess();
    *(v67 + 16) = &_swiftEmptySetSingleton;

    swift_beginAccess();
    *(v71 + 16) = 0;
    swift_beginAccess();
    *(v66 + 16) = -1;
    v101 = v169;
    sub_FCE0(v179, v169, &qword_8F000, &qword_7A5D0);
    v149(v101, 0, 1, v175);
  }

  *(v71 + 16) = v146;
  v61 = 1;
  swift_beginAccess();
  *(v66 + 16) = v173;
  return v61;
}

uint64_t sub_CBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v177 = a5;
  v173 = a4;
  v182 = a3;
  v172 = sub_38F8(&qword_8F068, &qword_79F48);
  v17 = __chkstk_darwin(v172);
  v165 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v168 = &v148 - v19;
  v20 = sub_38F8(&qword_8EFF8, &unk_79F38);
  v21 = __chkstk_darwin(v20 - 8);
  v169 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v166 = &v148 - v24;
  v25 = __chkstk_darwin(v23);
  v162 = &v148 - v26;
  v27 = __chkstk_darwin(v25);
  v167 = (&v148 - v28);
  v29 = __chkstk_darwin(v27);
  v171 = &v148 - v30;
  v31 = __chkstk_darwin(v29);
  v163 = &v148 - v32;
  v33 = __chkstk_darwin(v31);
  v170 = &v148 - v34;
  __chkstk_darwin(v33);
  v174 = &v148 - v35;
  v175 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v178 = *(v175 - 8);
  v36 = __chkstk_darwin(v175);
  v159 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v160 = &v148 - v39;
  __chkstk_darwin(v38);
  v179 = &v148 - v40;
  v41 = sub_754B8();
  v180 = *(v41 - 8);
  v181 = v41;
  v42 = __chkstk_darwin(v41);
  v161 = &v148 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v164 = &v148 - v45;
  v46 = __chkstk_darwin(v44);
  __chkstk_darwin(v46);
  v48 = &v148 - v47;
  v49 = sub_38F8(&unk_8F070, &qword_79F50);
  __chkstk_darwin(v49 - 8);
  v51 = &v148 - v50;
  v52 = sub_38F8(&unk_8FD00, &qword_7A260);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = &v148 - v54;
  v176 = swift_projectBox();
  v56 = type metadata accessor for FitnessPlusPropertyRecordEntity();
  v57 = sub_10030(&qword_8F080, 255, type metadata accessor for FitnessPlusPropertyRecordEntity, &unk_7A9F0);
  (*(v57 + 48))(v182, v56, v57);
  if ((v53[6])(v51, 1, v52) == 1)
  {
    sub_3D48(v51, &unk_8F070, &qword_79F50);
    sub_75378();
    v58 = sub_754A8();
    v59 = sub_75718();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v177;
      _os_log_impl(&dword_0, v58, v59, "Failed to decode SnapshotContainer from row: %ld", v60, 0xCu);
    }

    (*(v180 + 8))(v48, v181);
    return 0;
  }

  (v53[4])(v55, v51, v52);
  v62 = (*(v57 + 56))(v55, v56, v57);
  v63 = [v62 encodedByteCount];
  if (v63 <= 0)
  {
    (v53[1])(v55, v52);

    return 1;
  }

  v153 = v62;
  v154 = v63;
  v150 = a13;
  v151 = a12;
  v155 = a17;
  v157 = a16;
  v182 = a10;
  v152 = a9;
  v177 = v52;
  v156 = v55;
  sub_75088();
  v64 = v176;
  swift_beginAccess();
  v65 = v174;
  sub_FCE0(v64, v174, &qword_8EFF8, &unk_79F38);
  v66 = v178 + 48;
  v67 = *(v178 + 48);
  v68 = v175;
  v69 = (v67)(v65, 1, v175);
  v70 = v65;
  v71 = v182;
  sub_3D48(v70, &qword_8EFF8, &unk_79F38);
  v158 = v53;
  if (v69 != 1)
  {
    swift_beginAccess();
    v72 = v64;
    v73 = v170;
    sub_FCE0(v179, v170, &qword_8F000, &qword_7A5D0);
    v74 = *(v178 + 56);
    v174 = v178 + 56;
    v149 = v74;
    v74(v73, 0, 1, v68);
    v75 = v172[12];
    v76 = v72;
    v77 = v168;
    sub_FCE0(v76, v168, &qword_8EFF8, &unk_79F38);
    sub_FCE0(v73, v77 + v75, &qword_8EFF8, &unk_79F38);
    if ((v67)(v77, 1, v68) == 1)
    {
      sub_3D48(v73, &qword_8EFF8, &unk_79F38);
      v78 = (v67)(v77 + v75, 1, v68);
      v71 = v182;
      v64 = v176;
      if (v78 == 1)
      {
        sub_3D48(v77, &qword_8EFF8, &unk_79F38);
        goto LABEL_21;
      }
    }

    else
    {
      v79 = v163;
      sub_FCE0(v77, v163, &qword_8EFF8, &unk_79F38);
      if ((v67)(v77 + v75, 1, v68) != 1)
      {
        v92 = v160;
        sub_FDB8(v77 + v75, v160);
        sub_74CA8();
        sub_10030(&qword_8F088, 255, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
        v93 = sub_75588();
        v94 = v79;
        v71 = v182;
        v64 = v176;
        if (v93)
        {
          v95 = sub_75588();
          sub_3D48(v92, &qword_8F000, &qword_7A5D0);
          sub_3D48(v170, &qword_8EFF8, &unk_79F38);
          sub_3D48(v94, &qword_8F000, &qword_7A5D0);
          v68 = v175;
          sub_3D48(v168, &qword_8EFF8, &unk_79F38);
          v53 = v158;
          if (v95)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_3D48(v92, &qword_8F000, &qword_7A5D0);
          sub_3D48(v170, &qword_8EFF8, &unk_79F38);
          sub_3D48(v94, &qword_8F000, &qword_7A5D0);
          sub_3D48(v168, &qword_8EFF8, &unk_79F38);
          v53 = v158;
        }

        goto LABEL_14;
      }

      sub_3D48(v170, &qword_8EFF8, &unk_79F38);
      sub_3D48(v79, &qword_8F000, &qword_7A5D0);
      v71 = v182;
      v64 = v176;
    }

    sub_3D48(v77, &qword_8F068, &qword_79F48);
LABEL_14:
    v80 = v152;
    swift_beginAccess();
    v81 = *(v80 + 16);
    swift_beginAccess();
    v82 = *(v71 + 16);
    v83 = __OFADD__(v81, v82);
    v84 = v81 + v82;
    if (v83)
    {
      goto LABEL_56;
    }

    if (v84 > a11)
    {
      v178 = a15;
      v172 = a14;
      v85 = v164;
      sub_75378();
      v86 = v151;

      v66 = v150;

      v87 = sub_754A8();
      v88 = sub_75738();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v185[0] = v171;
        *v89 = 136315906;
        *(v89 + 4) = sub_31B4(0xD00000000000001FLL, 0x8000000000077870, v185);
        *(v89 + 12) = 2048;
        swift_beginAccess();
        *(v89 + 14) = *(v86 + 16);

        *(v89 + 22) = 2048;
        swift_beginAccess();
        v90 = *(v66 + 16);
        if ((v90 & 0xC000000000000001) != 0)
        {

          v91 = sub_75898();
        }

        else
        {
          v91 = *(v90 + 16);
        }

        v122 = v164;
        *(v89 + 24) = v91;
        v66 = v150;

        *(v89 + 32) = 2080;
        *(v89 + 34) = sub_31B4(0xD00000000000001FLL, 0x8000000000077870, v185);
        _os_log_impl(&dword_0, v87, v88, "[%s][%lld] Syncing over %ld %s", v89, 0x2Au);
        swift_arrayDestroy();

        v67 = *(v180 + 8);
        (v67)(v122, v181);
        v68 = v177;
        v53 = v158;
      }

      else
      {

        v67 = *(v180 + 8);
        (v67)(v85, v181);
        v68 = v177;
      }

      swift_beginAccess();

      v124 = sub_3BC8(v123);

      if ((v124 & 0x8000000000000000) == 0 && (v124 & 0x4000000000000000) == 0)
      {
        sub_75A78();
        goto LABEL_44;
      }

      goto LABEL_58;
    }
  }

LABEL_21:
  swift_beginAccess();
  v96 = v171;
  sub_FCE0(v64, v171, &qword_8EFF8, &unk_79F38);
  v97 = (v67)(v96, 1, v68);
  sub_3D48(v96, &qword_8EFF8, &unk_79F38);
  if (v97 == 1)
  {
LABEL_22:
    swift_beginAccess();
    v98 = v166;
    sub_FCE0(v64, v166, &qword_8EFF8, &unk_79F38);
    v99 = (v67)(v98, 1, v68);
    sub_3D48(v98, &qword_8EFF8, &unk_79F38);
    v100 = v68;
    v68 = v177;
    v67 = v157;
    v53 = v158;
    v66 = v155;
    if (v99 != 1)
    {
      goto LABEL_52;
    }

    v101 = v169;
    sub_FCE0(v179, v169, &qword_8F000, &qword_7A5D0);
    (*(v178 + 56))(v101, 0, 1, v100);
    goto LABEL_51;
  }

  swift_beginAccess();
  v53 = v167;
  sub_FCE0(v179, v167, &qword_8F000, &qword_7A5D0);
  v181 = *(v178 + 56);
  v181(v53, 0, 1, v68);
  v102 = v64;
  v103 = v172[12];
  v104 = v165;
  sub_FCE0(v102, v165, &qword_8EFF8, &unk_79F38);
  sub_FCE0(v53, v104 + v103, &qword_8EFF8, &unk_79F38);
  if ((v67)(v104, 1, v68) == 1)
  {
    sub_3D48(v53, &qword_8EFF8, &unk_79F38);
    v105 = (v67)(v104 + v103, 1, v68);
    v71 = v182;
    if (v105 == 1)
    {
      sub_3D48(v104, &qword_8EFF8, &unk_79F38);
      v64 = v176;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v106 = v162;
  sub_FCE0(v104, v162, &qword_8EFF8, &unk_79F38);
  if ((v67)(v104 + v103, 1, v68) == 1)
  {
    sub_3D48(v167, &qword_8EFF8, &unk_79F38);
    sub_3D48(v106, &qword_8F000, &qword_7A5D0);
    v68 = v175;
    v71 = v182;
LABEL_29:
    sub_3D48(v104, &qword_8F068, &qword_79F48);
LABEL_30:
    v64 = v176;
    goto LABEL_31;
  }

  v117 = v159;
  sub_FDB8(v104 + v103, v159);
  sub_74CA8();
  sub_10030(&qword_8F088, 255, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
  v118 = sub_75588();
  v119 = v106;
  v71 = v182;
  if ((v118 & 1) == 0)
  {
    sub_3D48(v117, &qword_8F000, &qword_7A5D0);
    v53 = &qword_8EFF8;
    sub_3D48(v167, &qword_8EFF8, &unk_79F38);
    sub_3D48(v119, &qword_8F000, &qword_7A5D0);
    sub_3D48(v104, &qword_8EFF8, &unk_79F38);
    v68 = v175;
    goto LABEL_30;
  }

  v120 = v175;
  v121 = sub_75588();
  sub_3D48(v117, &qword_8F000, &qword_7A5D0);
  v53 = &unk_79F38;
  sub_3D48(v167, &qword_8EFF8, &unk_79F38);
  sub_3D48(v119, &qword_8F000, &qword_7A5D0);
  v68 = v120;
  sub_3D48(v165, &qword_8EFF8, &unk_79F38);
  v64 = v176;
  if (v121)
  {
    goto LABEL_22;
  }

LABEL_31:
  v66 = v150;
  swift_beginAccess();
  v107 = *(v66 + 16);
  v67 = v157;
  swift_beginAccess();

  sub_E6DC(v108, v107, type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper, &qword_8EDB8, type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper, sub_68D7C);
  v110 = v109;
  swift_beginAccess();
  *(v66 + 16) = v110;

  swift_beginAccess();
  v111 = *(v71 + 16);
  v112 = v152;
  swift_beginAccess();
  v113 = *(v112 + 16);
  v83 = __OFADD__(v113, v111);
  v114 = v113 + v111;
  if (v83)
  {
    goto LABEL_57;
  }

  *(v112 + 16) = v114;
  v66 = v155;
  swift_beginAccess();
  v115 = *(v66 + 16);
  v116 = v151;
  swift_beginAccess();
  *(v116 + 16) = v115;
  swift_beginAccess();
  *(v67 + 16) = &_swiftEmptySetSingleton;

  swift_beginAccess();
  *(v71 + 16) = 0;
  swift_beginAccess();
  *(v66 + 16) = -1;
  v101 = v169;
  sub_FCE0(v179, v169, &qword_8F000, &qword_7A5D0);
  v181(v101, 0, 1, v68);
  v68 = v177;
  v53 = v158;
LABEL_51:
  while (1)
  {
    swift_beginAccess();
    sub_FD48(v101, v64);
LABEL_52:
    swift_beginAccess();
    v143 = v153;
    sub_68D7C(v183, v143);
    swift_endAccess();

    sub_3D48(v179, &qword_8F000, &qword_7A5D0);
    v144 = v53[1];
    ++v53;
    v144(v156, v68);
    swift_beginAccess();
    v145 = *(v71 + 16);
    v83 = __OFADD__(v145, v154);
    v146 = &v154[v145];
    if (!v83)
    {
      break;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    sub_38F8(&qword_8EB00, &qword_79B18);
    sub_759C8();

LABEL_44:

    sub_38F8(&qword_8EB00, &qword_79B18);
    isa = sub_75678().super.isa;

    v126 = v151;
    swift_beginAccess();
    v127 = *(v126 + 16);
    v184[0] = 0;
    v128 = [v172 sendCodableChange:isa version:v178 resultAnchor:v127 sequence:0 done:0 error:v184];

    if (v128)
    {
      v129 = v184[0];
    }

    else
    {
      v130 = v184[0];
      sub_74898();

      swift_willThrow();
      v131 = v161;
      sub_75378();
      swift_errorRetain();
      v132 = sub_754A8();
      v133 = sub_75718();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v184[0] = v136;
        *v134 = 136315394;
        *(v134 + 4) = sub_31B4(0xD00000000000001FLL, 0x8000000000077870, v184);
        *(v134 + 12) = 2112;
        swift_errorRetain();
        v137 = _swift_stdlib_bridgeErrorToNSError();
        *(v134 + 14) = v137;
        *v135 = v137;
        _os_log_impl(&dword_0, v132, v133, "[%s] Failed to send sync message: %@", v134, 0x16u);
        sub_3D48(v135, &unk_8EB30, &unk_7A270);

        sub_3940(v136);
        v66 = v150;
        v68 = v177;

        v138 = v161;
      }

      else
      {

        v138 = v131;
      }

      (v67)(v138, v181);
      v53 = v158;
      v126 = v151;
    }

    v67 = v157;
    swift_beginAccess();
    v139 = *(v67 + 16);
    swift_beginAccess();
    *(v66 + 16) = v139;

    swift_beginAccess();
    v140 = *(v71 + 16);
    v141 = v152;
    swift_beginAccess();
    *(v141 + 16) = v140;
    v66 = v155;
    swift_beginAccess();
    v142 = *(v66 + 16);
    swift_beginAccess();
    *(v126 + 16) = v142;
    swift_beginAccess();
    *(v67 + 16) = &_swiftEmptySetSingleton;

    swift_beginAccess();
    *(v71 + 16) = 0;
    swift_beginAccess();
    *(v66 + 16) = -1;
    v101 = v169;
    sub_FCE0(v179, v169, &qword_8F000, &qword_7A5D0);
    v149(v101, 0, 1, v175);
  }

  *(v71 + 16) = v146;
  v61 = 1;
  swift_beginAccess();
  *(v66 + 16) = v173;
  return v61;
}

void sub_E4F0(uint64_t a1, void *a2)
{
  v2 = a1;
  v16[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_75888();
    _s13EntityWrapperCMa();
    sub_10030(&qword_8F0B0, v3, _s13EntityWrapperCMa, &protocol conformance descriptor for NSObject);
    sub_756F8();
    v2 = v16[2];
    v4 = v16[3];
    v5 = v16[4];
    v6 = v16[5];
    v7 = v16[6];
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(a1 + 32);
    v4 = (a1 + 56);
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

    v7 = (v10 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
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

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_3CB4(v2);
      return;
    }

    while (1)
    {
      sub_68CC8(v16, v15);

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_758B8())
      {
        _s13EntityWrapperCMa();
        swift_dynamicCast();
        v15 = v16[0];
        v13 = v6;
        v14 = v7;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = v4[v13];
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_E6DC(uint64_t a1, void *a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), void (*a6)(id *))
{
  v8 = a1;
  v23[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_75888();
    a3(0);
    sub_10030(a4, 255, a5, &protocol conformance descriptor for NSObject);
    sub_756F8();
    v8 = v23[2];
    v11 = v23[3];
    v12 = v23[4];
    v13 = v23[5];
    v14 = v23[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_3CB4(v8);
      return;
    }

    while (1)
    {
      a6(v23);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_758B8())
      {
        a3(0);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v23[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_E8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void), uint64_t a12, uint64_t a13, uint64_t a14)
{
  v39 = a5;
  v40 = a6;
  v38 = a4;
  v16 = sub_754B8();
  v36 = *(v16 - 8);
  v37 = v16;
  __chkstk_darwin(v16);
  v35 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a7 + 16;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = a11();
  sub_462C(v20);

  isa = sub_75678().super.isa;

  v22 = [a8 database];
  v23 = swift_allocObject();
  *(v23 + 16) = a9;
  *(v23 + 24) = a10;
  aBlock[4] = a13;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_778C;
  aBlock[3] = a14;
  v24 = _Block_copy(aBlock);

  swift_beginAccess();
  v41 = 0;
  v25 = [ObjCClassFromMetadata enumerateEntitiesForSyncWithProperties:isa predicate:0 session:v38 syncAnchorRange:v39 limit:v40 lastSyncAnchor:0 healthDatabase:v18 error:v22 block:{&v41, v24}];
  v26 = v41;
  swift_endAccess();
  v27 = v26;
  _Block_release(v24);

  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  if ((v25 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
    v28 = v35;
    sub_75378();
    swift_errorRetain();
    v29 = sub_754A8();
    v30 = sub_75728();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&dword_0, v29, v30, "Error while enumerating entities for sync: %@", v31, 0xCu);
      sub_3D48(v32, &unk_8EB30, &unk_7A270);
    }

    else
    {
    }

    (*(v36 + 8))(v28, v37);
  }

  return v25;
}

id sub_ECA8(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_ED08@<X0>(uint64_t x8_0@<X8>)
{
  sub_752E8();
  sub_10030(&qword_8EFF0, 255, &type metadata accessor for WorkoutPropertyDimensionsField, &protocol conformance descriptor for WorkoutPropertyDimensionsField);
  v3 = sub_756B8();

  return sub_6ADA8(v3, x8_0);
}

id sub_EDA0()
{
  sub_38F8(&qword_8EFE0, &qword_79F30);
  sub_FB7C();
  result = sub_74F78();
  v3 = result;
  if (!v0)
  {
    v4 = v2;
    v5 = _s13EntityWrapperCMa();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity];
    *v7 = v3;
    *(v7 + 1) = v4;
    v8.receiver = v6;
    v8.super_class = v5;
    return objc_msgSendSuper2(&v8, "init");
  }

  return result;
}

id sub_F124(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s13EntityWrapperCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id static WorkoutPropertyRecordEntity.syncEntityIdentifier.getter()
{
  v0 = objc_allocWithZone(HDSyncEntityIdentifier);
  v1 = sub_75598();
  v2 = [v0 initWithEntityIdentifier:4 schemaIdentifier:v1];

  return v2;
}

uint64_t static WorkoutPropertyRecordEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = v5;
  v31 = a1;
  v12 = sub_754B8();
  v29 = *(v12 - 8);
  v30 = v12;
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75378();
  v15 = sub_754A8();
  v16 = sub_75738();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v6;
    v18 = v17;
    v25 = v17;
    v26 = swift_slowAlloc();
    v27 = v7;
    v33 = v26;
    *v18 = 136315138;
    v32 = sub_38F8(&qword_8EF40, &qword_79EF0);
    sub_38F8(&qword_8EF48, &qword_79EF8);
    v19 = sub_755B8();
    v21 = a4;
    v22 = sub_31B4(v19, v20, &v33);

    v23 = v25;
    *(v25 + 4) = v22;
    a4 = v21;
    _os_log_impl(&dword_0, v15, v16, "Generate sync objects for %s", v23, 0xCu);
    sub_3940(v26);
  }

  (*(v29 + 8))(v14, v30);
  return sub_7858(v31, a2, a3, a4, a5);
}

id static WorkoutPropertyRecordEntity.decodeSyncObject(with:)(uint64_t a1, unint64_t a2)
{
  v4 = _s13EntityWrapperCMa();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity];
  *v6 = a1;
  *(v6 + 1) = a2;
  sub_398C(a1, a2);
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t _s25FitnessIntelligencePlugin27WorkoutPropertyRecordEntityC18receiveSyncObjects_7version9syncStore7profile5errorSo013HDSyncReceiveJ6ResultVSaySo0P7Codable_pG_So0P12VersionRangeaSo0pM0_pSo9HDProfileCSAySo7NSErrorCSgGSgtFZ_0(unint64_t a1)
{
  v2 = sub_754B8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75378();
  swift_bridgeObjectRetain_n();
  v6 = sub_754A8();
  v7 = sub_75738();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315394;
    v15 = sub_38F8(&qword_8EF40, &qword_79EF0);
    sub_38F8(&qword_8EF48, &qword_79EF8);
    v10 = sub_755B8();
    v12 = sub_31B4(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    if (a1 >> 62)
    {
      v13 = sub_759D8();
    }

    else
    {
      v13 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    *(v8 + 14) = v13;

    _os_log_impl(&dword_0, v6, v7, "Received synced %s entities, count: %ld", v8, 0x16u);
    sub_3940(v9);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_FACC(uint64_t a1)
{
  result = sub_10030(&qword_8EFA8, 255, type metadata accessor for WorkoutPropertyRecordEntity, &unk_7A9A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_FB28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_FB7C()
{
  result = qword_8EFE8;
  if (!qword_8EFE8)
  {
    sub_76D0(&qword_8EFE0, &qword_79F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8EFE8);
  }

  return result;
}

uint64_t sub_FBF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_FC9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_FCE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_38F8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_FD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8EFF8, &unk_79F38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_FDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F000, &qword_7A5D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_FE7C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_FF54()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10030(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100D4(unint64_t a1, void *a2)
{
  v116 = a2;
  v96 = sub_754B8();
  v3 = *(v96 - 8);
  v4 = __chkstk_darwin(v96);
  p_aBlock = (&v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v92 = &v88 - v7;
  v8 = sub_38F8(&qword_8EB18, &qword_7A950);
  __chkstk_darwin(v8 - 8);
  v10 = &v88 - v9;
  v11 = sub_751D8();
  v117 = *(v11 - 1);
  v12 = *(v117 + 64);
  v13 = __chkstk_darwin(v11);
  v105 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v122 = &v88 - v15;
  __chkstk_darwin(v14);
  v115 = &v88 - v16;
  v17 = sub_654FC(a1);
  if (v17)
  {
    v18 = v17;
    if (v17 >> 62)
    {
      goto LABEL_54;
    }

    if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      do
      {
        v89 = v18;
        aBlock = v18;
        sub_38F8(&qword_8F168, &unk_79FB0);
        sub_11788();
        p_aBlock = &aBlock;
        v19 = sub_75648();
        v90 = 0;
        v21 = 0;
        v23 = v19 + 64;
        v22 = *(v19 + 64);
        v97 = v19;
        v24 = 1 << *(v19 + 32);
        v25 = -1;
        if (v24 < 64)
        {
          v25 = ~(-1 << v24);
        }

        v26 = v25 & v22;
        v27 = (v24 + 63) >> 6;
        v112 = (v117 + 48);
        v121 = (v117 + 32);
        v114 = v117 + 16;
        v102 = v12 + 7;
        v113 = &v125;
        v100 = (v117 + 8);
        v18 = &v122;
        v91 = (v3 + 1);
        *&v20 = 136315394;
        v88 = v20;
        v93 = v27;
        v101 = v10;
        v94 = v19 + 64;
        while (v26)
        {
LABEL_14:
          v98 = v26;
          v99 = v21;
          v29 = (v21 << 9) | (8 * __clz(__rbit64(v26)));
          v30 = *(v97 + 56);
          v119 = *(*(v97 + 48) + v29);
          v31 = *(v30 + v29);
          v95 = v31 >> 62;
          if (v31 >> 62)
          {
            v12 = sub_759D8();
          }

          else
          {
            v12 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
          }

          v120 = v31;
          if (v12)
          {
            v32 = 0;
            p_aBlock = (v31 & 0xC000000000000001);
            v3 = (v31 & 0xFFFFFFFFFFFFFF8);
            v33 = _swiftEmptyArrayStorage;
            while (1)
            {
              if (p_aBlock)
              {
                v34 = sub_75928();
              }

              else
              {
                if (v32 >= v3[2])
                {
                  goto LABEL_50;
                }

                v34 = *(v31 + 8 * v32 + 32);
              }

              v35 = v34;
              v36 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                break;
              }

              sub_117EC(*&v34[OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_entity] + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry, v10);

              if ((*v112)(v10, 1, v11) == 1)
              {
                sub_3D48(v10, &qword_8EB18, &qword_7A950);
              }

              else
              {
                v37 = *v121;
                (*v121)(v115, v10, v11);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v33 = sub_675F4(0, v33[2] + 1, 1, v33);
                }

                v38 = v33;
                v39 = v33[2];
                v40 = v38;
                v41 = v38[3];
                if (v39 >= v41 >> 1)
                {
                  v40 = sub_675F4((v41 > 1), v39 + 1, 1, v40);
                }

                v40[2] = v39 + 1;
                v42 = v40 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v39;
                v33 = v40;
                v37(v42, v115, v11);
                v31 = v120;
              }

              ++v32;
              if (v36 == v12)
              {
                goto LABEL_32;
              }
            }

            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v33 = _swiftEmptyArrayStorage;
LABEL_32:
          v118 = type metadata accessor for PropertyRecordCheckpointEntity();
          v104 = v33[2];
          if (v104)
          {
            v12 = 0;
            v103 = v33;
            while (v12 < v33[2])
            {
              v43 = v117;
              v44 = *(v117 + 80);
              v45 = *(v117 + 72);
              v106 = v12;
              v46 = v33 + ((v44 + 32) & ~v44) + v45 * v12;
              v47 = *(v117 + 16);
              v48 = v122;
              v47(v122, v46, v11);
              v49 = v47;
              v108 = v47;
              v50 = v116;
              v51 = [v116 syncIdentityManager];
              v52 = [v51 currentSyncIdentity];

              v53 = [v52 entity];
              v54 = [v53 persistentID];

              v109 = [objc_opt_self() contextForWritingProtectedData];
              v111 = [v50 database];
              v55 = v105;
              v49(v105, v48, v11);
              v56 = (v44 + 24) & ~v44;
              v57 = (v102 + v56) & 0xFFFFFFFFFFFFFFF8;
              v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
              v3 = swift_allocObject();
              v3[2] = v118;
              v107 = *(v43 + 32);
              v107(v3 + v56, v55, v11);
              *(v3 + v57) = v119;
              *(v3 + v58) = v54;
              v59 = swift_allocObject();
              *(v59 + 16) = sub_118F8;
              *(v59 + 24) = v3;
              v127 = sub_FC94;
              v128 = v59;
              aBlock = _NSConcreteStackBlock;
              v124 = 1107296256;
              v125 = sub_2BB8;
              v126 = &unk_868D0;
              v110 = _Block_copy(&aBlock);
              v109 = v109;

              v108(v55, v122, v11);
              v10 = swift_allocObject();
              *(v10 + 2) = v118;
              v60 = &v10[v56];
              p_aBlock = v11;
              v107(v60, v55, v11);
              *&v10[v57] = v119;
              v61 = v116;
              *&v10[v58] = v116;
              v62 = swift_allocObject();
              *(v62 + 16) = sub_119DC;
              *(v62 + 24) = v10;
              v127 = sub_11AC4;
              v128 = v62;
              aBlock = _NSConcreteStackBlock;
              v124 = 1107296256;
              v125 = sub_65494;
              v126 = &unk_86948;
              v63 = _Block_copy(&aBlock);
              v12 = v61;

              aBlock = 0;
              v64 = v111;
              v11 = v109;
              v65 = v110;
              v66 = [v111 performTransactionWithContext:v109 error:&aBlock block:v110 inaccessibilityHandler:v63];
              _Block_release(v63);
              _Block_release(v65);

              v67 = aBlock;
              LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

              if (v65)
              {
                goto LABEL_52;
              }

              if (!v66)
              {
                sub_74898();

                swift_willThrow();

                v11 = p_aBlock;
                (*v100)(v122, p_aBlock);
                v68 = v92;
                sub_75378();
                swift_errorRetain();
                v69 = sub_754A8();
                v70 = sub_75718();

                if (os_log_type_enabled(v69, v70))
                {
                  v71 = swift_slowAlloc();
                  v72 = swift_slowAlloc();
                  v73 = swift_slowAlloc();
                  aBlock = v73;
                  *v71 = v88;
                  v74 = sub_75B18();
                  v76 = sub_31B4(v74, v75, &aBlock);

                  *(v71 + 4) = v76;
                  *(v71 + 12) = 2112;
                  swift_errorRetain();
                  v77 = _swift_stdlib_bridgeErrorToNSError();
                  *(v71 + 14) = v77;
                  *v72 = v77;
                  _os_log_impl(&dword_0, v69, v70, "Failed to apply %s: %@", v71, 0x16u);
                  sub_3D48(v72, &unk_8EB30, &unk_7A270);

                  sub_3940(v73);

                  (*v91)(v92, v96);
                }

                else
                {

                  (*v91)(v68, v96);
                }

                v10 = v101;
                v78 = [v12 database];
                if (v95)
                {
                  v3 = HDJournalEntry_ptr;
                  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);

                  sub_759C8();
                }

                else
                {

                  sub_75A78();
                  v3 = HDJournalEntry_ptr;
                  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
                }

                sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
                p_aBlock = sub_75678().super.isa;

                aBlock = 0;
                v79 = [v78 addJournalEntries:p_aBlock error:&aBlock];

                if (v79)
                {
                  v80 = aBlock;

                  v90 = 0;
                  goto LABEL_8;
                }

                v87 = aBlock;
                sub_74898();

                swift_willThrow();
                aBlock = 0;
                v124 = 0xE000000000000000;
                sub_75908(38);
                v129._object = 0x80000000000779F0;
                v129._countAndFlagsBits = 0xD000000000000024;
                sub_75608(v129);
                swift_getErrorValue();
                sub_75A48();
                result = sub_759B8();
                __break(1u);
                return result;
              }

              v12 = v106 + 1;

              v11 = p_aBlock;
              (*v100)(v122, p_aBlock);
              v10 = v101;
              v33 = v103;
              if (v104 == v12)
              {
                goto LABEL_7;
              }
            }

LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

LABEL_7:

LABEL_8:
          v12 = (v98 - 1) & v98;

          v26 = v12;
          v23 = v94;
          v21 = v99;
          v27 = v93;
        }

        while (1)
        {
          v28 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v28 >= v27)
          {
          }

          v26 = *(v23 + 8 * v28);
          ++v21;
          if (v26)
          {
            v21 = v28;
            goto LABEL_14;
          }
        }

LABEL_53:
        __break(1u);
LABEL_54:
        v82 = v18;
        v83 = sub_759D8();
        v18 = v82;
      }

      while (v83);
    }
  }

  sub_75378();
  v84 = sub_754A8();
  v85 = sub_75718();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_0, v84, v85, "Applying journal entries, but none found. Skipping.", v86, 2u);
  }

  return (v3[1])(p_aBlock, v96);
}

void *sub_1103C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_provenance);
  *(a2 + 8) = 0;
  return result;
}

id sub_110F0(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_754B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_38F8(&qword_8EB18, &qword_7A950);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  sub_7688(0, &qword_8EF00, NSData_ptr);
  v11 = sub_757E8();
  if (v11 && (v37 = xmmword_79F70, v12 = v11, sub_748B8(), v12, v13 = *(&v37 + 1), *(&v37 + 1) >> 60 != 15))
  {
    v24 = v37;
    v25 = sub_75598();
    v26 = a1;
    v27 = [a1 decodeInt64ForKey:v25];

    v28 = type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper(0);
    v29 = objc_allocWithZone(v28);
    v30 = sub_751D8();
    sub_398C(v24, v13);
    sub_398C(v24, v13);
    sub_39E0();
    sub_74F88();
    (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
    sub_3A38(v10, &v29[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry]);
    v31 = &v29[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity];
    *v31 = v24;
    v31[1] = v13;
    v36.receiver = v29;
    v36.super_class = v28;
    *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_entity] = objc_msgSendSuper2(&v36, "init");
    *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_provenance] = v27;
    v32 = type metadata accessor for PropertyRecordCheckpointJournalEntry();
    v35.receiver = v2;
    v35.super_class = v32;
    v33 = objc_msgSendSuper2(&v35, "init");
    sub_11774(v24, v13);

    return v33;
  }

  else
  {
    sub_75378();
    v14 = sub_754A8();
    v15 = sub_75718();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v37 = v17;
      *v16 = 136315138;
      v18 = sub_75B18();
      v20 = sub_31B4(v18, v19, &v37);
      v34 = v2;
      v21 = a1;
      v22 = v20;

      *(v16 + 4) = v22;
      _os_log_impl(&dword_0, v14, v15, "Failed to decode %s journal entry: missing entity data", v16, 0xCu);
      sub_3940(v17);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    type metadata accessor for PropertyRecordCheckpointJournalEntry();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void sub_11538(void *a1)
{
  v3 = (*(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_entity) + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity);
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = v3[1];
  }

  sub_11760(*v3, v4);
  isa = sub_748A8().super.isa;
  sub_FB28(v5, v6);
  v8 = sub_75598();
  [a1 encodeObject:isa forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_provenance);
  v10 = sub_75598();
  [a1 encodeInt64:v9 forKey:v10];
}

id sub_116F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PropertyRecordCheckpointJournalEntry();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_11760(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_398C(result, a2);
  }

  return result;
}

uint64_t sub_11774(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_FB28(result, a2);
  }

  return result;
}

unint64_t sub_11788()
{
  result = qword_8F170;
  if (!qword_8F170)
  {
    sub_76D0(&qword_8F168, &unk_79FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F170);
  }

  return result;
}

uint64_t sub_117EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8EB18, &qword_7A950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1185C()
{
  v1 = sub_751D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_11920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_11938()
{
  v1 = sub_751D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_119F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_751D8() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + 16);
  v10 = *(v3 + v8);
  v11 = *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v9, v3 + v7, v10, v11);
}

uint64_t sub_11AD8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_38F8(&unk_8FA00, &qword_7A740);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_75598();
  v7 = HDSQLiteColumnWithNameAsData();

  if (!v7)
  {
    goto LABEL_4;
  }

  sub_748C8();

  v8 = sub_74D78();
  sub_11CF4();
  sub_74F88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v5, 0, 1, v8);
  if ((*(v9 + 48))(v5, 1, v8))
  {
    sub_11D4C(v5);
LABEL_4:
    v11 = sub_74D78();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  (*(v9 + 32))(a2, v5, v8);
  return (v10)(a2, 0, 1, v8);
}

unint64_t sub_11CF4()
{
  result = qword_8F178;
  if (!qword_8F178)
  {
    sub_74D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F178);
  }

  return result;
}

uint64_t sub_11D4C(uint64_t a1)
{
  v2 = sub_38F8(&unk_8FA00, &qword_7A740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_11DB4(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___RingsEntityWrapper_serializedEntity];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_11E14(uint64_t a1)
{
  v1 = a1;
  v2 = sub_12FE0();
  v3 = sub_11EB8(v1);
  v5 = v4;
  v6 = v2[2];
  if (v6)
  {
    v7 = v3;
    v8 = 0;
    v9 = v2 + 5;
    while (1)
    {
      v10 = *(v9 - 1) == v7 && *v9 == v5;
      if (v10 || (sub_75A68() & 1) != 0)
      {
        break;
      }

      ++v8;
      v9 += 2;
      if (v6 == v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = -1;
  }

  return v8;
}

uint64_t sub_11EB8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x4164657461657263;
    v7 = 0x766F7250636E7973;
    if (a1 != 10)
    {
      v7 = 0x6E656449636E7973;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x79747265706F7270;
    v9 = 0x79747265706F7270;
    if (a1 != 7)
    {
      v9 = 0x6E6F6973726576;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4449574F52;
    v2 = 0x59664F68746E6F6DLL;
    v3 = 0x656557664F796164;
    if (a1 != 4)
    {
      v3 = 0x646573756170;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6361437472617473;
    if (a1 != 1)
    {
      v4 = 0x6568636143646E65;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1207C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_11EB8(*a1);
  v5 = v4;
  if (v3 == sub_11EB8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_75A68();
  }

  return v8 & 1;
}

Swift::Int sub_12104()
{
  v1 = *v0;
  sub_75AE8();
  sub_11EB8(v1);
  sub_755E8();

  return sub_75B08();
}

uint64_t sub_12168(uint64_t a1)
{
  sub_11EB8(*v1);
  sub_755E8();
}

Swift::Int sub_121BC(uint64_t a1)
{
  v2 = *v1;
  sub_75AE8();
  sub_11EB8(v2);
  sub_755E8();

  return sub_75B08();
}

unint64_t sub_1221C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1330C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1224C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_11EB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_125F0()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79FC0;
  v1 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v2 = sub_75598();
  v3 = sub_75598();
  v4 = [v1 initWithName:v2 columnType:v3 keyPathType:3];

  *(v0 + 32) = v4;
  v5 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v6 = sub_75598();
  v7 = sub_75598();
  v8 = [v5 initWithName:v6 columnType:v7 keyPathType:3];

  *(v0 + 40) = v8;
  v9 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v10 = sub_75598();
  v11 = sub_75598();
  v12 = [v9 initWithName:v10 columnType:v11 keyPathType:3];

  *(v0 + 48) = v12;
  v13 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v14 = sub_75598();
  v15 = sub_75598();
  v16 = [v13 initWithName:v14 columnType:v15 keyPathType:4];

  *(v0 + 56) = v16;
  v17 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v18 = sub_75598();
  v19 = sub_75598();
  v20 = [v17 initWithName:v18 columnType:v19 keyPathType:4];

  *(v0 + 64) = v20;
  v21 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v22 = sub_75598();
  v23 = sub_75598();
  v24 = [v21 initWithName:v22 columnType:v23 keyPathType:3];

  *(v0 + 72) = v24;
  v25 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v26 = sub_75598();
  v27 = sub_75598();
  v28 = [v25 initWithName:v26 columnType:v27 keyPathType:4];

  *(v0 + 80) = v28;
  v29 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v30 = sub_75598();
  v31 = sub_75598();
  v32 = [v29 initWithName:v30 columnType:v31 keyPathType:4];

  *(v0 + 88) = v32;
  v33 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v34 = sub_75598();
  v35 = sub_75598();
  v36 = [v33 initWithName:v34 columnType:v35 keyPathType:3];

  *(v0 + 96) = v36;
  v37 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v38 = sub_75598();
  v39 = sub_75598();
  v40 = [v37 initWithName:v38 columnType:v39 keyPathType:1];

  *(v0 + 104) = v40;
  v41 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v42 = sub_75598();
  v43 = sub_75598();
  v44 = [v41 initWithName:v42 columnType:v43 keyPathType:3];

  *(v0 + 112) = v44;
  v45 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v46 = sub_75598();
  v47 = sub_75598();
  v48 = [v45 initWithName:v46 columnType:v47 keyPathType:3];

  *(v0 + 120) = v48;
  qword_90008 = v0;
}

uint64_t static RingsPropertyRecordEntity.indices(with:)()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79FD0;
  v1 = objc_allocWithZone(HDSQLiteEntityIndex);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_75598();
  isa = sub_75678().super.isa;
  v5 = [v1 initWithEntity:ObjCClassFromMetadata name:v3 columns:isa];

  *(v0 + 32) = v5;
  return v0;
}

id PropertyRecordCheckpointEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID:a1];
}

id RingsPropertyRecordEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RingsPropertyRecordEntity();
  return objc_msgSendSuper2(&v4, "initWithPersistentID:", a1);
}

id RingsPropertyRecordEntity.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RingsPropertyRecordEntity();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_12FA4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_12FE0()
{
  sub_67C58(0, 11, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v2 = *(&off_85760 + v0 + 32);
    if (v2 > 5)
    {
      v9 = 0xE900000000000074;
      v10 = 0x6E656449636E7973;
      if (v2 == 10)
      {
        v10 = 0x766F7250636E7973;
      }

      v11 = 0xEC00000079746974;
      if (v2 == 10)
      {
        v11 = 0xEE0065636E616E65;
      }

      if (v2 == 9)
      {
        v10 = 0x4164657461657263;
      }

      else
      {
        v9 = v11;
      }

      if (v2 == 7)
      {
        v12 = 0x79747265706F7270;
      }

      else
      {
        v12 = 0x6E6F6973726576;
      }

      v13 = 0xEC00000061746144;
      if (v2 != 7)
      {
        v13 = 0xE700000000000000;
      }

      if (v2 == 6)
      {
        v12 = 0x79747265706F7270;
        v13 = 0xEC000000646E694BLL;
      }

      if (*(&off_85760 + v0 + 32) <= 8u)
      {
        v7 = v12;
      }

      else
      {
        v7 = v10;
      }

      if (*(&off_85760 + v0 + 32) <= 8u)
      {
        v8 = v13;
      }

      else
      {
        v8 = v9;
      }
    }

    else
    {
      if (v2 == 4)
      {
        v3 = 0x656557664F796164;
      }

      else
      {
        v3 = 0x646573756170;
      }

      if (v2 == 4)
      {
        v4 = 0xE90000000000006BLL;
      }

      else
      {
        v4 = 0xE600000000000000;
      }

      if (v2 == 3)
      {
        v3 = 0x59664F68746E6F6DLL;
        v4 = 0xEB00000000726165;
      }

      if (v2 == 1)
      {
        v5 = 0x6361437472617473;
      }

      else
      {
        v5 = 0x6568636143646E65;
      }

      if (v2 == 1)
      {
        v6 = 0xEF7865646E496568;
      }

      else
      {
        v6 = 0xED00007865646E49;
      }

      if (!*(&off_85760 + v0 + 32))
      {
        v5 = 0x4449574F52;
        v6 = 0xE500000000000000;
      }

      if (*(&off_85760 + v0 + 32) <= 2u)
      {
        v7 = v5;
      }

      else
      {
        v7 = v3;
      }

      if (*(&off_85760 + v0 + 32) <= 2u)
      {
        v8 = v6;
      }

      else
      {
        v8 = v4;
      }
    }

    v17 = result;
    v15 = result[2];
    v14 = result[3];
    if (v15 >= v14 >> 1)
    {
      sub_67C58((v14 > 1), v15 + 1, 1);
      result = v17;
    }

    ++v0;
    result[2] = v15 + 1;
    v16 = &result[2 * v15];
    v16[4] = v7;
    v16[5] = v8;
  }

  while (v0 != 11);
  return result;
}

unint64_t sub_1330C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_85958;
  v6._object = a2;
  v4 = sub_75A18(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

char *_s25FitnessIntelligencePlugin25RingsPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0()
{
  sub_75908(34);

  v22._countAndFlagsBits = 0xD00000000000002ELL;
  v22._object = 0x8000000000077A20;
  sub_75608(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  sub_75608(v23);
  if (qword_8E9E8 != -1)
  {
    swift_once();
  }

  v0 = qword_90008;
  if (qword_90008 >> 62)
  {
    v1 = sub_759D8();
  }

  else
  {
    v1 = *(&dword_10 + (qword_90008 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  result = sub_67C58(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = sub_75928();
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [v4 name];
      v7 = sub_755A8();
      v9 = v8;

      v20 = v7;
      v21 = v9;
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      sub_75608(v24);
      v10 = [v5 columnType];
      v11 = sub_755A8();
      v13 = v12;

      v25._countAndFlagsBits = v11;
      v25._object = v13;
      sub_75608(v25);

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_67C58((v14 > 1), v15 + 1, 1);
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v20;
      v16[5] = v21;
    }

    while (v1 != v3);
LABEL_14:
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
    v17 = sub_75538();
    v19 = v18;

    v26._countAndFlagsBits = v17;
    v26._object = v19;
    sub_75608(v26);

    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    sub_75608(v27);
    return 0xD00000000000001BLL;
  }

  __break(1u);
  return result;
}

uint64_t *sub_13634(uint64_t *a1)
{
  if (qword_8E9E8 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v2 = qword_90008;
  v3 = qword_90008 >> 62;
  if (qword_90008 >> 62)
  {
    if (qword_90008 < 0)
    {
      v1 = qword_90008;
    }

    else
    {
      v1 = (qword_90008 & 0xFFFFFFFFFFFFFF8);
    }

    *a1 = sub_759D8();
    v4 = sub_759D8();
  }

  else
  {
    v4 = *(&dword_10 + (qword_90008 & 0xFFFFFFFFFFFFFF8));
    *a1 = v4;
  }

  if ((v4 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v1 = swift_slowAlloc();
  if (v3)
  {
    sub_759D8();
    v5 = sub_759D8();

    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_15:
    sub_3AD4(v2);

    goto LABEL_9;
  }

LABEL_9:
  sub_7688(0, &qword_8FB90, HDSQLiteEntityColumnDefinitionObject_ptr);
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t getEnumTagSinglePayload for RingsPropertyRecordEntity.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RingsPropertyRecordEntity.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1398C()
{
  result = qword_8F250;
  if (!qword_8F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F250);
  }

  return result;
}

unint64_t sub_139E0(uint64_t a1)
{
  *(a1 + 8) = sub_13A10();
  result = sub_13A64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_13A10()
{
  result = qword_8F258;
  if (!qword_8F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F258);
  }

  return result;
}

unint64_t sub_13A64()
{
  result = qword_8F260;
  if (!qword_8F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F260);
  }

  return result;
}

unint64_t sub_13AB8(uint64_t a1)
{
  result = sub_13AE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_13AE0()
{
  result = qword_8F268;
  if (!qword_8F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F268);
  }

  return result;
}

uint64_t sub_13B34@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v4 = sub_754B8();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75188();
  __chkstk_darwin(v6 - 8);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_74CA8();
  v33 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v13 = __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = sub_38F8(&qword_8F098, &qword_79F58);
  __chkstk_darwin(v18 - 8);
  v20 = &v33 - v19;
  v21 = sub_38F8(&qword_8F0A0, &qword_79EC8);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v33 - v23;
  sub_1411C(a2, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_3D48(v20, &qword_8F098, &qword_79F58);
    v28 = 1;
    v29 = v40;
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    v25 = sub_75098();
    v27 = v26;
    sub_75278();
    sub_FB28(v25, v27);
    sub_75088();
    v32 = *(v33 + 16);
    v32(v39, v17, v8);
    sub_3D48(v17, &qword_8F000, &qword_7A5D0);
    sub_75088();
    v32(v34, &v15[*(v12 + 36)], v8);
    sub_3D48(v15, &qword_8F000, &qword_7A5D0);
    sub_75058();
    sub_5978(v42, v41);
    v29 = v40;
    sub_74ED8();
    sub_3940(v42);
    (*(v22 + 8))(v24, v21);
    v28 = 0;
  }

  v30 = sub_74EE8();
  return (*(*(v30 - 8) + 56))(v29, v28, 1, v30);
}

uint64_t sub_1411C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = sub_754B8();
  v5 = *(v96 - 8);
  __chkstk_darwin(v96);
  v7 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_38F8(&qword_8F288, &qword_7A128);
  v9 = __chkstk_darwin(v8);
  v88 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = v77 - v11;
  v94 = sub_74CA8();
  v86 = *(v94 - 8);
  v12 = __chkstk_darwin(v94);
  v93 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = v77 - v14;
  v81 = sub_38F8(&qword_8F000, &qword_7A5D0);
  __chkstk_darwin(v81);
  v83 = v77 - v15;
  v87 = sub_75188();
  v84 = *(v87 - 8);
  v16 = __chkstk_darwin(v87);
  v82 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = v77 - v18;
  v19 = sub_38F8(&qword_8F290, &qword_7A130);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v98 = v77 - v23;
  v24 = sub_75288();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_38F8(&qword_8F298, &qword_7A138);
  v29 = __chkstk_darwin(v28 - 8);
  v91 = v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v99 = v77 - v31;
  sub_11E14(1);
  v90 = HDSQLiteColumnAsInt64();
  sub_11E14(2);
  v89 = HDSQLiteColumnAsInt64();
  sub_11E14(8);
  v80 = HDSQLiteColumnAsInt64();
  sub_11E14(7);
  v32 = HDSQLiteColumnAsData();
  if (!v32)
  {

LABEL_16:
    sub_75378();
    v60 = sub_754A8();
    v61 = sub_75718();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "Failed to initialize RingsPropertyRecord from row: no propertyData", v62, 2u);
    }

    (*(v5 + 8))(v7, v96);
    v63 = 1;
    goto LABEL_24;
  }

  v78 = v22;
  v33 = a3;
  v95 = a2;
  v79 = v8;
  v34 = v32;
  v35 = sub_748C8();
  v37 = v36;

  sub_11E14(6);
  v38 = HDSQLiteColumnAsString();
  if (!v38)
  {

    sub_FB28(v35, v37);
    a3 = v33;
    goto LABEL_16;
  }

  v39 = v38;
  v77[3] = v35;
  v77[4] = v37;
  v96 = v33;
  v77[2] = sub_755A8();
  v77[1] = v40;

  v41 = *(v25 + 104);
  v41(v27, enum case for RingsPropertyDimensionsField.monthOfYear(_:), v24);
  v42 = v95;
  v43 = sub_56628(v27, v95);
  v44 = *(v25 + 8);
  v44(v27, v24);
  if (v43 && (sub_11E14(3), (v45 = HDSQLiteColumnAsString()) != 0))
  {
    v46 = v45;
    sub_755A8();

    v42 = v95;
    sub_74CF8();
  }

  else
  {
    v47 = sub_74D08();
    (*(*(v47 - 8) + 56))(v99, 1, 1, v47);
  }

  v41(v27, enum case for RingsPropertyDimensionsField.dayOfWeek(_:), v24);
  v48 = sub_56628(v27, v42);
  v44(v27, v24);
  v49 = v79;
  if (v48 && (sub_11E14(4), (v50 = HDSQLiteColumnAsString()) != 0))
  {
    v51 = v50;
    sub_755A8();

    v42 = v95;
    v49 = v79;
    sub_753C8();
  }

  else
  {
    v52 = sub_753D8();
    (*(*(v52 - 8) + 56))(v98, 1, 1, v52);
  }

  v41(v27, enum case for RingsPropertyDimensionsField.paused(_:), v24);
  v53 = sub_56628(v27, v42);

  v44(v27, v24);
  v54 = v49;
  if (v53)
  {
    sub_11E14(5);
    IsNull = HDSQLiteColumnIsNull();
    v57 = v93;
    v56 = v94;
    v58 = v92;
    v59 = v99;
    if ((IsNull & 1) == 0)
    {
      sub_11E14(5);
      HDSQLiteColumnAsInt64();
    }

    v64 = v98;
  }

  else
  {
    v64 = v98;
    v57 = v93;
    v56 = v94;
    v58 = v92;
    v59 = v99;
  }

  sub_FCE0(v59, v91, &qword_8F298, &qword_7A138);
  sub_FCE0(v64, v78, &qword_8F290, &qword_7A130);
  sub_75148();
  sub_74CB8();
  sub_74CB8();
  sub_14CD0(&qword_8F2A0, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
  result = sub_75568();
  if (result)
  {
    v67 = v85;
    v66 = v86;
    v68 = *(v86 + 32);
    v68(v85, v58, v56);
    v68((v67 + *(v54 + 48)), v57, v56);
    v69 = v88;
    sub_FCE0(v67, v88, &qword_8F288, &qword_7A128);
    v70 = *(v54 + 48);
    v71 = v83;
    v68(v83, v69, v56);
    v72 = *(v66 + 8);
    v72(v69 + v70, v56);
    sub_14C60(v67, v69);
    v68(&v71[*(v81 + 36)], (v69 + *(v54 + 48)), v56);
    v72(v69, v56);
    v73 = v84;
    v74 = v97;
    v75 = v87;
    (*(v84 + 16))(v82, v97, v87);
    sub_74EE8();
    sub_14CD0(&qword_8F2A8, &type metadata accessor for RingsPropertyRecord, &protocol conformance descriptor for RingsPropertyRecord);
    a3 = v96;
    sub_75078();
    (*(v73 + 8))(v74, v75);
    sub_3D48(v98, &qword_8F290, &qword_7A130);
    sub_3D48(v99, &qword_8F298, &qword_7A138);
    v63 = 0;
LABEL_24:
    v76 = sub_38F8(&qword_8F0A0, &qword_79EC8);
    return (*(*(v76 - 8) + 56))(a3, v63, 1, v76);
  }

  __break(1u);
  return result;
}

uint64_t sub_14C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F288, &qword_7A128);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_14CD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_14D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_14DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DatabaseChecksum(uint64_t a1)
{
  result = qword_8F308;
  if (!qword_8F308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_14E80(uint64_t a1)
{
  sub_14EF4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_14EF4(uint64_t a1)
{
  if (!qword_8F318)
  {
    sub_74CA8();
    sub_14F58();
    v1 = sub_75578();
    if (!v2)
    {
      atomic_store(v1, &qword_8F318);
    }
  }
}

unint64_t sub_14F58()
{
  result = qword_8F2A0;
  if (!qword_8F2A0)
  {
    sub_74CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F2A0);
  }

  return result;
}

uint64_t sub_15090()
{
  v0 = sub_754B8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75378();
  v4 = sub_754A8();
  v5 = sub_75738();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = 6;
    _os_log_impl(&dword_0, v4, v5, "No-op unprotected database migration to v%ld", v6, 0xCu);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_151D8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  v11 = a3;
  v12 = v9(v10, v11, a4, a5);

  return v12;
}

id sub_15270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  return sub_154C8(a1, a2, a3, a4, "Starting migration to v2", _s25FitnessIntelligencePlugin30InferenceRecordContainerEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0, 2);
}

id sub_152E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  return sub_154C8(a1, a2, a3, a4, "Starting migration to v3", _s25FitnessIntelligencePlugin27WorkoutPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0, 3);
}

id sub_15360(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  return sub_154C8(a1, a2, a3, a4, "Starting migration to v4", _s25FitnessIntelligencePlugin30PropertyRecordCheckpointEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0, 4);
}

id sub_153D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  return sub_154C8(a1, a2, a3, a4, "Starting migration to v5", _s25FitnessIntelligencePlugin25RingsPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0, 5);
}

id sub_15450(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  return sub_154C8(a1, a2, a3, a4, "Starting migration to v6", _s25FitnessIntelligencePlugin0A24PlusPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0, 6);
}

id sub_154C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v36[0] = a7;
  v10 = sub_754B8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v36 - v15;
  sub_75378();
  v17 = sub_754A8();
  v18 = sub_75738();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, a5, v19, 2u);
  }

  v20 = *(v11 + 8);
  v20(v16, v10);
  v21 = [a2 protectedDatabase];
  if (v21)
  {
    v22 = v21;
    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    a6();
    v26 = v25;

    if (v26)
    {
      v27 = sub_75598();

      v37 = 0;
      v28 = [v22 executeSQL:v27 error:&v37 bindingHandler:0 enumerationHandler:0];

      if (v28)
      {
        v29 = v37;

        return 0;
      }

      v30 = v37;
      sub_74898();

      swift_willThrow();
      sub_75378();
      swift_errorRetain();
      v31 = sub_754A8();
      v32 = sub_75718();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 134218242;
        *(v33 + 4) = v36[0];
        *(v33 + 12) = 2112;
        swift_errorRetain();
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v35;
        *v34 = v35;
        _os_log_impl(&dword_0, v31, v32, "Failed to run migration to %ld: %@", v33, 0x16u);
        sub_16B00(v34);
      }

      else
      {
      }

      v20(v14, v10);
    }

    else
    {
    }
  }

  return &dword_0 + 1;
}

uint64_t sub_15868(uint64_t a1, void *a2)
{
  v3 = sub_754B8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v36[-v8];
  sub_75378();
  v10 = sub_754A8();
  v11 = sub_75738();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Starting migration to v7", v12, 2u);
  }

  v13 = *(v4 + 8);
  v13(v9, v3);
  v14 = [a2 protectedDatabase];
  if (v14)
  {
    v15 = v14;
    v16 = sub_75598();
    v37 = 0;
    v17 = [v15 executeSQL:v16 error:&v37 bindingHandler:0 enumerationHandler:0];

    v18 = v37;
    if (v17)
    {
      v19 = v37;
      v20 = sub_75598();
      v37 = 0;
      v21 = [v15 executeSQL:v20 error:&v37 bindingHandler:0 enumerationHandler:0];

      v18 = v37;
      if (v21)
      {
        v22 = v37;
        v23 = sub_75598();
        v37 = 0;
        v24 = [v15 executeSQL:v23 error:&v37 bindingHandler:0 enumerationHandler:0];

        v18 = v37;
        if (v24)
        {
          v25 = v37;
          v26 = sub_75598();
          v37 = 0;
          v27 = [v15 executeSQL:v26 error:&v37 bindingHandler:0 enumerationHandler:0];

          v18 = v37;
          if (v27)
          {
            v28 = v37;

            return 0;
          }
        }
      }
    }

    v30 = v18;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v31 = sub_754A8();
    v32 = sub_75718();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 134218242;
      *(v33 + 4) = 7;
      *(v33 + 12) = 2112;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v35;
      *v34 = v35;
      _os_log_impl(&dword_0, v31, v32, "Failed to run migration to %ld: %@", v33, 0x16u);
      sub_16B00(v34);
    }

    else
    {
    }

    v13(v7, v3);
  }

  return 1;
}

uint64_t sub_15CB4(uint64_t a1, void *a2)
{
  v3 = sub_754B8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v55 - v8;
  sub_75378();
  v10 = sub_754A8();
  v11 = sub_75738();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Starting migration to v8", v12, 2u);
  }

  v15 = *(v4 + 8);
  v14 = v4 + 8;
  v13 = v15;
  v15(v9, v3);
  v16 = [a2 protectedDatabase];
  if (v16)
  {
    v17 = v16;
    v18 = sub_75598();
    v56 = 0;
    v19 = [v17 executeSQL:v18 error:&v56 bindingHandler:0 enumerationHandler:0];

    v20 = v56;
    if (v19)
    {
      v21 = v56;
      v22 = sub_75598();
      v56 = 0;
      v23 = [v17 executeSQL:v22 error:&v56 bindingHandler:0 enumerationHandler:0];

      v20 = v56;
      if (v23)
      {
        v24 = v56;
        v25 = sub_75598();
        v56 = 0;
        v26 = [v17 executeSQL:v25 error:&v56 bindingHandler:0 enumerationHandler:0];

        v20 = v56;
        if (v26)
        {
          v27 = v56;
          v28 = sub_75598();
          v56 = 0;
          v29 = [v17 executeSQL:v28 error:&v56 bindingHandler:0 enumerationHandler:0];

          v20 = v56;
          if (v29)
          {
            v30 = v56;
            v31 = sub_75598();
            v56 = 0;
            v32 = [v17 executeSQL:v31 error:&v56 bindingHandler:0 enumerationHandler:0];

            v20 = v56;
            if (v32)
            {
              v33 = v56;
              v34 = sub_75598();
              v56 = 0;
              v35 = [v17 executeSQL:v34 error:&v56 bindingHandler:0 enumerationHandler:0];

              v20 = v56;
              if (v35)
              {
                v36 = v56;
                v37 = sub_75598();
                v56 = 0;
                v38 = [v17 executeSQL:v37 error:&v56 bindingHandler:0 enumerationHandler:0];

                v20 = v56;
                if (v38)
                {
                  v39 = v56;
                  v40 = sub_75598();
                  v56 = 0;
                  v41 = [v17 executeSQL:v40 error:&v56 bindingHandler:0 enumerationHandler:0];

                  v20 = v56;
                  if (v41)
                  {
                    v42 = v56;

                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }

    v44 = v20;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v45 = sub_754A8();
    v46 = sub_75718();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v55[0] = v14;
      v49 = v17;
      v50 = v7;
      v51 = v3;
      v52 = v13;
      v53 = v48;
      *v47 = 134218242;
      *(v47 + 4) = 8;
      *(v47 + 12) = 2112;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 14) = v54;
      *v53 = v54;
      _os_log_impl(&dword_0, v45, v46, "Failed to run migration to %ld: %@", v47, 0x16u);
      sub_16B00(v53);

      v52(v50, v51);
    }

    else
    {

      v13(v7, v3);
    }
  }

  return 1;
}

uint64_t sub_16270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = sub_754B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75378();
  v10 = sub_754A8();
  v11 = sub_75738();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, a5, v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  return 0;
}

id DatabaseSchemaProvider.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DatabaseSchemaProvider();
  return objc_msgSendSuper2(&v3, "init");
}

id DatabaseSchemaProvider.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DatabaseSchemaProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void _s25FitnessIntelligencePluginAAC22registerMigrationSteps3for8migratorySo29HDSQLiteEntityProtectionClassV_So18HDDatabaseMigratorCtF_0(uint64_t a1, void *a2)
{
  v4 = sub_75598();
  if (a1 == 2)
  {
    v25 = sub_15264;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86AA0;
    v5 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v4 toVersion:1 foreignKeyStatus:0 handler:v5];
    _Block_release(v5);

    v6 = sub_75598();
    v25 = sub_15270;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86AC8;
    v7 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v6 toVersion:2 foreignKeyStatus:0 handler:v7];
    _Block_release(v7);

    v8 = sub_75598();
    v25 = sub_152E8;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86AF0;
    v9 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v8 toVersion:3 foreignKeyStatus:0 handler:v9];
    _Block_release(v9);

    v10 = sub_75598();
    v25 = sub_15360;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86B18;
    v11 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v10 toVersion:4 foreignKeyStatus:0 handler:v11];
    _Block_release(v11);

    v12 = sub_75598();
    v25 = sub_153D8;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86B40;
    v13 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v12 toVersion:5 foreignKeyStatus:0 handler:v13];
    _Block_release(v13);

    v14 = sub_75598();
    v25 = sub_15450;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86B68;
    v15 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v14 toVersion:6 foreignKeyStatus:0 handler:v15];
    _Block_release(v15);

    v16 = sub_75598();
    v25 = sub_15868;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86B90;
    v17 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v16 toVersion:7 foreignKeyStatus:0 handler:v17];
    _Block_release(v17);

    v18 = sub_75598();
    v25 = sub_15CB4;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86BB8;
    v19 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v18 toVersion:8 foreignKeyStatus:0 handler:v19];
    _Block_release(v19);

    v4 = sub_75598();
    v25 = sub_16264;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86BE0;
    v20 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v4 toVersion:9 foreignKeyStatus:0 handler:v20];
  }

  else
  {
    v25 = sub_15090;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86A78;
    v20 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v4 toVersion:6 foreignKeyStatus:0 handler:v20];
  }

  _Block_release(v20);
}

uint64_t sub_16AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_16B00(uint64_t a1)
{
  v2 = sub_38F8(&unk_8EB30, &unk_7A270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SnapshotContainerTaskServer.__allocating_init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  isa = sub_74988().super.isa;
  v11 = [v9 initWithUUID:isa configuration:a2 client:a3 delegate:a4];

  swift_unknownObjectRelease();
  v12 = sub_749B8();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

id SanityTaskServer.init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = sub_16F58(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v6;
}

NSXPCInterface __swiftcall SanityTaskServer.exportedInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence25SanityTaskServerInterface_];

  return v0;
}

NSXPCInterface __swiftcall SnapshotContainerTaskServer.remoteInterface()()
{
  v0 = objc_allocWithZone(NSXPCInterface);

  return [v0 init];
}

id SanityTaskServer.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SanityTaskServer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_16F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v18 = a1;
  v4 = sub_75768();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75758();
  __chkstk_darwin(v8);
  v9 = sub_754F8();
  __chkstk_darwin(v9 - 8);
  sub_1720C();
  sub_754E8();
  v24 = _swiftEmptyArrayStorage;
  sub_17258();
  sub_38F8(&qword_8F3A0, &unk_7A440);
  sub_172B0();
  sub_75858();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  v10 = sub_75798();
  v11 = v18;
  v12 = v19;
  *&v19[OBJC_IVAR____TtC25FitnessIntelligencePlugin16SanityTaskServer_queue] = v10;
  isa = sub_74988().super.isa;
  v14 = type metadata accessor for SanityTaskServer();
  v23.receiver = v12;
  v23.super_class = v14;
  v15 = objc_msgSendSuper2(&v23, "initWithUUID:configuration:client:delegate:", isa, v20, v21, v22);

  v16 = sub_749B8();
  (*(*(v16 - 8) + 8))(v11, v16);
  return v15;
}

unint64_t sub_1720C()
{
  result = qword_8F930;
  if (!qword_8F930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8F930);
  }

  return result;
}

unint64_t sub_17258()
{
  result = qword_8F940;
  if (!qword_8F940)
  {
    sub_75758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F940);
  }

  return result;
}

unint64_t sub_172B0()
{
  result = qword_8F950;
  if (!qword_8F950)
  {
    sub_76D0(&qword_8F3A0, &unk_7A440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F950);
  }

  return result;
}

uint64_t sub_17314(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t InferenceRecordTaskServer.retrieve(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v26 = sub_754C8();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_754F8();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_749B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v3[OBJC_IVAR____TtC25FitnessIntelligencePlugin25InferenceRecordTaskServer_queue];
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v13, v12, v9);
  *(v15 + v14) = v3;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = v23;
  *v16 = v22;
  v16[1] = v17;
  aBlock[4] = sub_17A58;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_86C30;
  v18 = _Block_copy(aBlock);
  v19 = v3;

  sub_754D8();
  v29 = _swiftEmptyArrayStorage;
  sub_19A18(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_17B0C();
  v20 = v26;
  sub_75858();
  sub_75788();
  _Block_release(v18);
  (*(v28 + 8))(v6, v20);
  (*(v25 + 8))(v8, v27);
}

uint64_t sub_17700(uint64_t a1, void *a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  v6 = sub_74D78();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v23[-v11];
  type metadata accessor for InferenceRecordContainerEntity();
  v13 = [a2 client];
  v14 = [v13 profile];

  v15 = 0;
  v16 = sub_6FE28(a1, v14);

  if (v16[2])
  {
    (*(v7 + 16))(v10, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    (*(v7 + 32))(v12, v10, v6);
    sub_19A18(&qword_8F178, &type metadata accessor for InferenceRecord, &protocol conformance descriptor for InferenceRecord);
    v20 = sub_74F98();
    v22 = v21;
    (*(v7 + 8))(v12, v6);
  }

  else
  {

    sub_19A60();
    v18 = swift_allocError();
    *v19 = 3;
    swift_willThrow();
    v15 = v18;
    v20 = 0;
    v22 = 0xC000000000000000;
  }

  a3(v20, v22, v15);

  return sub_FB28(v20, v22);
}

uint64_t sub_179A8()
{
  v1 = sub_749B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_17A58()
{
  v1 = *(sub_749B8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_17700(v0 + v2, v4, v5);
}

uint64_t sub_17AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_17B0C()
{
  result = qword_8F3B8;
  if (!qword_8F3B8)
  {
    sub_76D0(&qword_8F3B0, &qword_7A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F3B8);
  }

  return result;
}

void sub_17CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6.super.isa = sub_748A8().super.isa;
  if (a3)
  {
    v7 = sub_74888();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, v6.super.isa);
}

uint64_t InferenceRecordTaskServer.listRecords(adapter:interval:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a1;
  v8 = sub_754C8();
  v33 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_754F8();
  v31 = *(v11 - 8);
  v32 = v11;
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v18 = &v27 - v17;
  v30 = *&v5[OBJC_IVAR____TtC25FitnessIntelligencePlugin25InferenceRecordTaskServer_queue];
  sub_183FC(a3, &v27 - v17);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  *(v21 + 24) = a2;
  sub_185B4(v18, v21 + v19);
  *(v21 + v20) = v5;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  aBlock[4] = sub_18624;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_86C80;
  v24 = _Block_copy(aBlock);

  v25 = v5;

  sub_754D8();
  v34 = _swiftEmptyArrayStorage;
  sub_19A18(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_17B0C();
  sub_75858();
  sub_75788();
  _Block_release(v24);
  (*(v33 + 8))(v10, v8);
  (*(v31 + 8))(v13, v32);
}

char *sub_180BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  v34 = a5;
  v11 = sub_74D78();
  v39 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InferenceRecordContainerEntity();
  v14 = [a4 client];
  v15 = [v14 profile];

  v16 = a1;
  v17 = 0;
  v19 = sub_702A8(v16, a2, a3, v15);
  v38 = v13;

  v20 = v19[2];
  if (v20)
  {
    v33 = a6;
    v41 = _swiftEmptyArrayStorage;
    result = sub_67DDC(0, v20, 0);
    v21 = 0;
    v22 = v41;
    v23 = v39;
    v36 = v19 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v35 = v39 + 16;
    v37 = (v39 + 8);
    while (v21 < v19[2])
    {
      v24 = v38;
      (*(v23 + 16))(v38, &v36[*(v23 + 72) * v21], v11);
      sub_19A18(&qword_8F178, &type metadata accessor for InferenceRecord, &protocol conformance descriptor for InferenceRecord);
      v25 = sub_74F98();
      if (v17)
      {
        (*v37)(v24, v11);

        v34(_swiftEmptyArrayStorage, v17);
        goto LABEL_2;
      }

      v27 = v25;
      v28 = v26;
      v40 = 0;
      v29 = v20;
      result = (*v37)(v24, v11);
      v41 = v22;
      v31 = v22[2];
      v30 = v22[3];
      if (v31 >= v30 >> 1)
      {
        result = sub_67DDC((v30 > 1), v31 + 1, 1);
        v22 = v41;
      }

      ++v21;
      v22[2] = v31 + 1;
      v32 = &v22[2 * v31];
      v32[4] = v27;
      v32[5] = v28;
      v20 = v29;
      v23 = v39;
      v17 = v40;
      if (v29 == v21)
      {

        v34(v22, 0);
        goto LABEL_2;
      }
    }

    __break(1u);
  }

  else
  {

    v34(_swiftEmptyArrayStorage, 0);
LABEL_2:
  }

  return result;
}

uint64_t sub_183FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1846C()
{
  v1 = *(sub_38F8(&qword_8F3C0, &qword_7A1E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_74848();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v8 + 16, v2 | 7);
}

uint64_t sub_185B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_18624()
{
  v1 = *(sub_38F8(&qword_8F3C0, &qword_7A1E0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_180BC(v4, v5, v0 + v2, v6, v8, v9);
}

uint64_t InferenceRecordTaskServer.setFeedbackId(_:for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v33 = a2;
  v30 = a4;
  v31 = a1;
  v37 = sub_754C8();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_754F8();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_749B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *&v5[OBJC_IVAR____TtC25FitnessIntelligencePlugin25InferenceRecordTaskServer_queue];
  (*(v11 + 16))(v13, a3, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v14, v13, v10);
  *(v18 + v15) = v5;
  v19 = (v18 + v16);
  v20 = v31;
  v22 = v32;
  v21 = v33;
  *v19 = v30;
  v19[1] = v22;
  v23 = (v18 + v17);
  *v23 = v20;
  v23[1] = v21;
  aBlock[4] = sub_190D8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_86CD0;
  v24 = _Block_copy(aBlock);
  v25 = v5;

  sub_754D8();
  v40 = _swiftEmptyArrayStorage;
  sub_19A18(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_17B0C();
  v26 = v35;
  v27 = v37;
  sub_75858();
  sub_75788();
  _Block_release(v24);
  (*(v39 + 8))(v26, v27);
  (*(v36 + 8))(v9, v38);
}

uint64_t sub_18C34(uint64_t a1, void *a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v40 = a6;
  v42 = a4;
  v9 = sub_74D78();
  v41 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - v14;
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = type metadata accessor for InferenceRecordContainerEntity();
  v19 = [a2 client];
  v20 = [v19 profile];

  v21 = sub_6FE28(a1, v20);
  v22 = a3;
  v37 = v18;
  v38 = a2;
  v23 = v41;
  v36 = v12;
  if (*(v21 + 2))
  {
    v35 = v22;
    v24 = (v41[80] + 32) & ~v41[80];
    v34 = *(v41 + 2);
    v34(v15, &v21[v24], v9);

    (*(v23 + 4))(v17, v15, v9);
    v25 = v36;
    v41 = v17;
    sub_74D38();
    sub_38F8(&qword_8F3C8, &unk_7A2E0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_79BF0;
    v27 = v25;
    v34((v26 + v24), v25, v9);
    v28 = [v38 client];
    v29 = [v28 profile];

    sub_705B8(v26, 0, v29);

    v35(1, 0);
    v32 = *(v23 + 1);
    v32(v27, v9);
    return (v32)(v41, v9);
  }

  else
  {

    sub_19A60();
    v30 = swift_allocError();
    *v31 = 2;
    v22(0, v30);
  }
}

uint64_t sub_1900C()
{
  v1 = sub_749B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_190D8()
{
  v1 = *(sub_749B8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_18C34(v0 + v2, v5, v6, v7, v9, v10);
}

uint64_t InferenceRecordTaskServer.saveInference(_:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_754C8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_754F8();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin25InferenceRecordTaskServer_queue];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v4;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = sub_19878;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_86D20;
  v17 = _Block_copy(aBlock);
  sub_398C(a1, a2);
  v18 = v4;

  sub_754D8();
  v22 = _swiftEmptyArrayStorage;
  sub_19A18(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_17B0C();
  sub_75858();
  sub_75788();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_195B8(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t, void))
{
  v8 = sub_74D78();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_398C(a1, a2);
  sub_19A18(&qword_8F178, &type metadata accessor for InferenceRecord, &protocol conformance descriptor for InferenceRecord);
  sub_74F88();
  type metadata accessor for InferenceRecordContainerEntity();
  sub_38F8(&qword_8F3C8, &unk_7A2E0);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_79BF0;
  (*(v9 + 16))(v13 + v12, v11, v8);
  v14 = [a3 client];
  v15 = [v14 profile];

  sub_705B8(v13, 0, v15);

  a4(1, 0);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_19830()
{
  sub_FB28(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_19960()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_199A8(uint64_t a1)
{
  v2 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_19A60()
{
  result = qword_8F3D0;
  if (!qword_8F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F3D0);
  }

  return result;
}

uint64_t sub_19ADC(uint64_t a1)
{
  result = sub_1B700(&qword_8EFA8, type metadata accessor for WorkoutPropertyRecordEntity, &unk_7A9A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19B34()
{
  v0 = sub_74F28();
  sub_19BBC(v0, qword_90010);
  v1 = sub_19C20(v0, qword_90010);
  v2 = enum case for WorkoutPropertyKind.totalCount(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t *sub_19BBC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_19C20(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_19C58(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a3;
  v49 = sub_74CA8();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v8 = sub_749C8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_74A38();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_754B8();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = __chkstk_darwin(v15);
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  v20 = [a1 protectedDatabase];
  if (v20)
  {
    v21 = v20;
    v45 = a2;
    (*(v9 + 104))(v11, enum case for Calendar.Identifier.gregorian(_:), v8);
    sub_749D8();
    (*(v9 + 8))(v11, v8);
    v46 = sub_75598();
    v59 = nullsub_1;
    v60 = 0;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_644E0;
    v58 = &unk_86E80;
    v22 = _Block_copy(&aBlock);

    v23 = v49;
    (*(v6 + 16))(&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v49);
    v24 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v14;
    (*(v6 + 32))(v25 + v24, &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    *(v25 + ((v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1B638;
    *(v26 + 24) = v25;
    v59 = sub_1B6F8;
    v60 = v26;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v27 = v21;
    v57 = sub_4F494;
    v58 = &unk_86EF8;
    v28 = _Block_copy(&aBlock);

    aBlock = 0;
    v29 = v46;
    LOBYTE(v23) = [v21 executeSQL:v46 error:&aBlock bindingHandler:v22 enumerationHandler:v28];
    _Block_release(v28);
    _Block_release(v22);

    if (v23)
    {
      v30 = aBlock;

      (*(v51 + 8))(v14, v52);

      return 1;
    }

    v36 = aBlock;
    sub_74898();

    swift_willThrow();
    v37 = v47;
    sub_75378();
    swift_errorRetain();
    v38 = sub_754A8();
    v39 = sub_75718();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&dword_0, v38, v39, "Failed to list all cache indexes %@", v40, 0xCu);
      sub_3D48(v41, &unk_8EB30, &unk_7A270);
    }

    (*(v53 + 8))(v37, v54);
    v43 = v45;
    if (v45)
    {
      *v43 = sub_74888();
    }

    (*(v51 + 8))(v14, v52);
  }

  else
  {
    sub_75378();
    v32 = sub_754A8();
    v33 = sub_75718();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "Failed to list cache indexes: no protected database", v34, 2u);
    }

    (*(v53 + 8))(v19, v54);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v35 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_1A388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v81 = a5;
  v91 = a3;
  v92 = a4;
  v83 = a2;
  v79 = sub_38F8(&qword_8F288, &qword_7A128);
  v6 = __chkstk_darwin(v79);
  v78 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v77 = &v76 - v8;
  v86 = sub_74CA8();
  v88 = *(v86 - 8);
  v9 = __chkstk_darwin(v86);
  v82 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = &v76 - v11;
  v84 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v12 = __chkstk_darwin(v84);
  v76 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v80 = &v76 - v15;
  __chkstk_darwin(v14);
  v94 = &v76 - v16;
  v90 = sub_74A38();
  v17 = *(v90 - 1);
  __chkstk_darwin(v90);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_74968();
  v89 = *(v20 - 8);
  __chkstk_darwin(v20);
  v93 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_38F8(&qword_8F3E0, &unk_7A210);
  __chkstk_darwin(v22 - 8);
  v24 = &v76 - v23;
  v25 = sub_74A68();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v76 - v30;
  HDSQLiteColumnAsDouble();
  v32 = HDSQLiteColumnAsString();
  if (!v32)
  {
    goto LABEL_4;
  }

  v87 = v20;
  v33 = v32;
  sub_755A8();
  v5 = v34;

  sub_74A48();

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_3D48(v24, &qword_8F3E0, &unk_7A210);
    v20 = v87;
LABEL_4:
    sub_74A58();
    v35 = v91;
    sub_74A18();
    goto LABEL_6;
  }

  (*(v26 + 32))(v31, v24, v25);
  (*(v26 + 16))(v29, v31, v25);
  v35 = v91;
  sub_74A18();
  (*(v26 + 8))(v31, v25);
  v20 = v87;
LABEL_6:
  v36 = v93;
  sub_748D8();
  isa = sub_74918().super.isa;
  v38 = v90;
  (*(v17 + 16))(v19, v35, v90);
  v39 = sub_749F8().super.isa;
  (*(v17 + 8))(v19, v38);
  v40 = _HKCacheIndexFromDate();

  v41 = v92;
  if (sub_74C98() < v40)
  {
    (*(v89 + 8))(v36, v20);
    return 1;
  }

  v42 = v85;
  sub_74CB8();
  LOBYTE(v43) = 0;
  sub_74C58();
  v87 = v20;
  v44 = v88;
  v45 = v86;
  v90 = *(v88 + 8);
  v91 = v88 + 8;
  (v90)(v42, v86);
  v46 = *(v84 + 36);
  v47 = sub_1B700(&qword_8F2A0, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
  v48 = sub_75558();
  v51 = *(v44 + 16);
  v49 = (v44 + 16);
  v50 = v51;
  if (v48)
  {
    v52 = v82;
    v53 = v82;
    v54 = v41;
  }

  else
  {
    v54 = v94 + v46;
    v52 = v82;
    v53 = v82;
  }

  v50(v53, v54, v45);
  if ((sub_75568() & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v55 = v77;
  v50(v77, v94, v45);
  v56 = v79;
  v57 = *(v88 + 32);
  v57(v55 + *(v79 + 48), v52, v45);
  v58 = v45;
  v59 = v78;
  sub_FCE0(v55, v78, &qword_8F288, &qword_7A128);
  v43 = *(v56 + 48);
  v5 = v80;
  v57(v80, v59, v58);
  v60 = v59 + v43;
  v61 = v90;
  LOBYTE(v43) = v91;
  (v90)(v60, v58);
  sub_1B748(v55, v59, &qword_8F288, &qword_7A128);
  v57(v5 + *(v84 + 36), (v59 + *(v56 + 48)), v58);
  v61(v59, v58);
  v49 = v81;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v49;
  v63 = v95;
  *v49 = 0x8000000000000000;
  v47 = sub_42788(v5);
  v65 = v63[2];
  v66 = (v64 & 1) == 0;
  v67 = v65 + v66;
  if (__OFADD__(v65, v66))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v43) = v64;
  if (v63[3] >= v67)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  sub_42AC4(v67, isUniquelyReferenced_nonNull_native);
  v63 = v95;
  v68 = sub_42788(v5);
  if ((v43 & 1) == (v69 & 1))
  {
    v47 = v68;
    while (1)
    {
LABEL_17:
      *v49 = v63;

      v70 = *v49;
      if ((v43 & 1) == 0)
      {
        v43 = v76;
        sub_FCE0(v5, v76, &qword_8F000, &qword_7A5D0);
        sub_6D61C(v47, v43, 0, v70);
      }

      v71 = v70[7];
      v72 = *(v71 + 8 * v47);
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (!v73)
      {
        break;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      sub_42874();
      v63 = v95;
    }

    *(v71 + 8 * v47) = v74;
    sub_3D48(v5, &qword_8F000, &qword_7A5D0);
    sub_3D48(v94, &qword_8F000, &qword_7A5D0);
    (*(v89 + 8))(v36, v87);
    return 1;
  }

  result = sub_75A98();
  __break(1u);
  return result;
}

void *sub_1AD00(uint64_t a1, void *a2, uint64_t a3)
{
  v60 = sub_38F8(&qword_8F3D8, &qword_7A208);
  v7 = __chkstk_darwin(v60);
  v59 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v58 = v52 - v10;
  __chkstk_darwin(v9);
  v57 = v52 - v11;
  v12 = type metadata accessor for DatabaseChecksum(0);
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v61 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_74CA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v66 = &_swiftEmptyDictionarySingleton;
  v17 = [a2 database];
  (*(v15 + 16))(v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = swift_allocObject();
  (*(v15 + 32))(v19 + v18, v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  *(v19 + ((v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v66;
  v20 = swift_allocObject();
  v20[2] = sub_1B470;
  v20[3] = v19;
  aBlock[4] = sub_FC94;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_86E58;
  v21 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v22 = [v17 performTransactionWithContext:a3 error:aBlock block:v21 inaccessibilityHandler:0];
  _Block_release(v21);

  v23 = aBlock[0];
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    goto LABEL_30;
  }

  if (!v22)
  {
    sub_74898();

    swift_willThrow();

    return v23;
  }

  v24 = v66;
  v25 = v66[2];
  v23 = _swiftEmptyArrayStorage;
  if (!v25)
  {
    goto LABEL_23;
  }

  v52[1] = v19;
  v52[2] = v3;
  aBlock[0] = _swiftEmptyArrayStorage;

  sub_67DFC(0, v25, 0);
  v23 = aBlock[0];
  v64 = v24 + 8;
  v26 = sub_75868();
  v27 = 0;
  v53 = v24 + 9;
  v54 = v25;
  do
  {
    if (v26 < 0 || v26 >= 1 << *(v24 + 32))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    v29 = v26 >> 6;
    if ((v64[v26 >> 6] & (1 << v26)) == 0)
    {
      goto LABEL_26;
    }

    v30 = *(v24 + 9);
    v62 = v27;
    v63 = v30;
    v31 = v24[6];
    v32 = sub_38F8(&qword_8F000, &qword_7A5D0);
    v33 = v57;
    sub_FCE0(v31 + *(*(v32 - 8) + 72) * v26, v57, &qword_8F000, &qword_7A5D0);
    v34 = *(v24[7] + 8 * v26);
    v35 = v33;
    v36 = v58;
    sub_1B748(v35, v58, &qword_8F000, &qword_7A5D0);
    *(v36 + *(v60 + 48)) = v34;
    v37 = v36;
    v38 = v59;
    sub_1B748(v37, v59, &qword_8F3D8, &qword_7A208);
    v39 = v38;
    v40 = v61;
    sub_1B748(v39, v61, &qword_8F000, &qword_7A5D0);
    v41 = v40;
    *(v40 + *(v56 + 20)) = v34;
    aBlock[0] = v23;
    v43 = v23[2];
    v42 = v23[3];
    if (v43 >= v42 >> 1)
    {
      sub_67DFC((v42 > 1), v43 + 1, 1);
      v41 = v61;
      v23 = aBlock[0];
    }

    v23[2] = v43 + 1;
    sub_1B534(v41, v23 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v43);
    v28 = 1 << *(v24 + 32);
    if (v26 >= v28)
    {
      goto LABEL_27;
    }

    v44 = v64[v29];
    if ((v44 & (1 << v26)) == 0)
    {
      goto LABEL_28;
    }

    if (v63 != *(v24 + 9))
    {
      goto LABEL_29;
    }

    v45 = v44 & (-2 << (v26 & 0x3F));
    if (v45)
    {
      v28 = __clz(__rbit64(v45)) | v26 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v46 = v29 << 6;
      v47 = v29 + 1;
      v48 = &v53[v29];
      while (v47 < (v28 + 63) >> 6)
      {
        v50 = *v48++;
        v49 = v50;
        v46 += 64;
        ++v47;
        if (v50)
        {
          sub_1B598(v26, v63, 0);
          v28 = __clz(__rbit64(v49)) + v46;
          goto LABEL_6;
        }
      }

      sub_1B598(v26, v63, 0);
    }

LABEL_6:
    v27 = v62 + 1;
    v26 = v28;
  }

  while (v62 + 1 != v54);

LABEL_23:

  return v23;
}