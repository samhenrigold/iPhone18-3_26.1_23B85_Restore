id sub_1B6307750(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage);
  v8 = *(v3 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage);
  v9 = *(v3 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B6307AA0;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

id IncidentReport.__allocating_init(countryCode:positionIndex:type:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = v4;
  v9 = objc_allocWithZone(v5);
  if (qword_1EDB0F2A0 != -1)
  {
    v15 = v9;
    swift_once();
    v9 = v15;
  }

  v10 = qword_1EDB0F2A8;
  if (a2)
  {
    v11 = v9;
    v12 = sub_1B63BEBC4();

    v9 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v9 initWithStore:v10 countryCode:v12 positionIndex:a3 type:a4];

  return v13;
}

id IncidentReport.init(countryCode:positionIndex:type:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (qword_1EDB0F2A0 != -1)
  {
    v11 = a2;
    swift_once();
    a2 = v11;
  }

  v7 = qword_1EDB0F2A8;
  if (a2)
  {
    v8 = sub_1B63BEBC4();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithStore:v7 countryCode:v8 positionIndex:a3 type:a4];

  return v9;
}

char *IncidentReport.__allocating_init(store:countryCode:positionIndex:type:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v6 = v5;
  v12 = [objc_allocWithZone(v6) initWithStore_];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v14 = *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v15 = v12;
  [v14 lock];
  v16 = &v15[OBJC_IVAR___MSIncidentReport__countryCode];
  *v16 = a2;
  *(v16 + 1) = a3;

  *&v15[OBJC_IVAR___MSIncidentReport__positionIndex] = a4;
  *&v15[OBJC_IVAR___MSIncidentReport__type] = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1B63099F8;
    *(v18 + 24) = v17;
    v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v20 = *&v15[v19];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[v19] = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1B629A8E8(0, v20[2] + 1, 1, v20);
      *&v15[v19] = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1B629A8E8((v22 > 1), v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    v24 = &v20[2 * v23];
    v24[4] = sub_1B62B8188;
    v24[5] = v18;
    *&v15[v19] = v20;
    swift_endAccess();
  }

  [*&v12[v13] unlock];

  return v15;
}

char *IncidentReport.init(store:countryCode:positionIndex:type:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v6 = v5;
  v12 = [v6 initWithStore_];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v14 = *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v15 = v12;
  [v14 lock];
  v16 = &v15[OBJC_IVAR___MSIncidentReport__countryCode];
  *v16 = a2;
  *(v16 + 1) = a3;

  *&v15[OBJC_IVAR___MSIncidentReport__positionIndex] = a4;
  *&v15[OBJC_IVAR___MSIncidentReport__type] = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1B6309E00;
    *(v18 + 24) = v17;
    v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v20 = *&v15[v19];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[v19] = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1B629A8E8(0, v20[2] + 1, 1, v20);
      *&v15[v19] = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1B629A8E8((v22 > 1), v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    v24 = &v20[2 * v23];
    v24[4] = sub_1B62B9488;
    v24[5] = v18;
    *&v15[v19] = v20;
    swift_endAccess();
  }

  [*&v12[v13] unlock];

  return v15;
}

void sub_1B6308178(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, __int16 a6)
{
  type metadata accessor for MapsSyncManagedIncidentReport();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = a2;
    if (a4)
    {
      a4 = sub_1B63BEBC4();
    }

    [v10 setCountryCode_];

    [v10 setPositionIndex_];
    [v10 setType_];
  }
}

uint64_t sub_1B6308408(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSIncidentReport__countryCode);
  v6 = *(v2 + OBJC_IVAR___MSIncidentReport__countryCode + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6309A08;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_16;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B6309A08;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6308814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSIncidentReport__countryCode);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6309A14;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B63089CC(void *a1, uint64_t a2, uint64_t *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v16];
  v5 = v16[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedIncidentReport();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 countryCode]) != 0)
    {
      v10 = v9;
      v11 = sub_1B63BEBD4();
      v13 = v12;

      *a3 = v11;
      a3[1] = v13;
    }

    else
    {
    }
  }

  else
  {
    v14 = v16[0];
    v15 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B6308AF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedIncidentReport();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4)
    {
      v9 = sub_1B63BEBC4();
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [v7 setCountryCode_];
  }
}

id (*sub_1B6308BA8(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B6308408(a1, a2);
  a1[1] = v4;
  return sub_1B6308BF0;
}

id sub_1B6308BF0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1B6308814(*a1, v2);
  }

  sub_1B6308814(v3, v2);
}

uint64_t sub_1B6308CD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSIncidentReport__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B6308D80(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSIncidentReport__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6309A1C;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6308F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedIncidentReport();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B6308F80(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSIncidentReport__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B6309004;
}

uint64_t sub_1B6309098()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSIncidentReport__type);
  [v1 unlock];
  return v2;
}

id sub_1B6309144(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSIncidentReport__type) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6309A24;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B63092E0(uint64_t a1, uint64_t a2, __int16 a3)
{
  type metadata accessor for MapsSyncManagedIncidentReport();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setType_];
  }

  return result;
}

id (*sub_1B6309344(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSIncidentReport__type);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B63093C8;
}

void *sub_1B63093F0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B630944C(a1, a2, v6, v5);
}

void *sub_1B630944C(void *a1, void *a2, int a3, int a4)
{
  v51 = a4;
  v52 = a3;
  v53 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v46 - v11;
  v12 = &v4[OBJC_IVAR___MSIncidentReport__countryCode];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR___MSIncidentReport__positionIndex] = 0;
  *&v4[OBJC_IVAR___MSIncidentReport__type] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v15 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v17 = sub_1B63BEA04();
  v18 = *(*(v17 - 8) + 56);
  v18(&v4[v16], 1, 1, v17);
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v20 = sub_1B63BE994();
  v21 = *(*(v20 - 8) + 56);
  v22 = &v4[v19];
  v23 = v52;
  v21(v22, 1, 1, v20);
  v21(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v20);
  v24 = v53;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v23;
  v25 = type metadata accessor for MapsSyncObject(0);
  v54.receiver = v4;
  v54.super_class = v25;
  v26 = a2;
  v27 = objc_msgSendSuper2(&v54, sel_init);
  v28 = v27;
  if (v24)
  {
    v29 = v27;
    v30 = [v24 objectID];
    v31 = *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v30;

    (*((*MEMORY[0x1E69E7D40] & *v29) + 0x218))(v24, v23 & 1, v51 & 1);
  }

  else
  {
    v32 = v27;
    v33 = v50;
    sub_1B63BE9F4();
    v18(v33, 0, 1, v17);
    v34 = v47;
    sub_1B62B2C0C(v33, v47);
    v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v34, &v32[v35]);
    swift_endAccess();
    v36 = v49;
    sub_1B62B2C0C(v33, v49);
    v37 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v38 = swift_allocObject();
    sub_1B62B2CEC(v36, v38 + v37);
    v39 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v40 = *&v32[v39];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[v39] = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_1B629A8E8(0, v40[2] + 1, 1, v40);
      *&v32[v39] = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_1B629A8E8((v42 > 1), v43 + 1, 1, v40);
    }

    v40[2] = v43 + 1;
    v44 = &v40[2 * v43];
    v44[4] = sub_1B62B2D5C;
    v44[5] = v38;
    *&v32[v39] = v40;
    swift_endAccess();

    sub_1B62B2DF0(v33);
  }

  return v28;
}

id IncidentReport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IncidentReport(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for IncidentReport(uint64_t a1)
{
  result = qword_1EDB0EB08;
  if (!qword_1EDB0EB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B6309D0C(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedIncidentReport();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    if ((a2 & 1) != 0 || (v8 = [v6 countryCode]) == 0)
    {
      v10 = 0;
      v12 = 0;
    }

    else
    {
      v9 = v8;
      v10 = sub_1B63BEBD4();
      v12 = v11;
    }

    v13 = (v2 + OBJC_IVAR___MSIncidentReport__countryCode);
    *v13 = v10;
    v13[1] = v12;

    v14 = [v6 positionIndex];
    *(v2 + OBJC_IVAR___MSIncidentReport__positionIndex) = v14;
    v15 = [v6 type];

    *(v2 + OBJC_IVAR___MSIncidentReport__type) = v15;
  }
}

void *sub_1B6309E0C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B630F9F8(a1, a2, v6, v5);
}

id RAPRecord.__allocating_init(clientRevision:contentData:countryCode:positionIndex:rapResponse:reportId:status:statusLastUpdatedDate:summary:type:)(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15)
{
  v16 = v15;
  v42 = a6;
  v41 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v37 - v23;
  v40 = objc_allocWithZone(v16);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v39 = qword_1EDB0F2A8;
  if (a3 >> 60 == 15)
  {
    v37 = 0;
    if (a5)
    {
LABEL_5:
      v25 = sub_1B63BEBC4();

      goto LABEL_8;
    }
  }

  else
  {
    sub_1B629119C(a2, a3);
    v37 = sub_1B63BE904();
    sub_1B6284F64(a2, a3);
    if (a5)
    {
      goto LABEL_5;
    }
  }

  v25 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    v26 = 0;
    v43 = a7;
    v44 = a2;
    if (a10)
    {
LABEL_10:
      v27 = sub_1B63BEBC4();

      goto LABEL_13;
    }
  }

  else
  {
    sub_1B629119C(a7, a8);
    v26 = sub_1B63BE904();
    sub_1B6284F64(a7, a8);
    v43 = a7;
    v44 = a2;
    if (a10)
    {
      goto LABEL_10;
    }
  }

  v27 = 0;
LABEL_13:
  v38 = a12;
  sub_1B628C510(a12, v24, &unk_1EB943210, &unk_1B63C3F50);
  v28 = sub_1B63BE994();
  v29 = *(v28 - 8);
  v30 = 0;
  if ((*(v29 + 48))(v24, 1, v28) != 1)
  {
    v30 = sub_1B63BE954();
    (*(v29 + 8))(v24, v28);
  }

  if (a14)
  {
    v31 = sub_1B63BEBC4();
  }

  else
  {
    v31 = 0;
  }

  LOWORD(v36) = a15;
  LOWORD(v35) = a11;
  v32 = v37;
  v33 = [v40 initWithStore:v39 clientRevision:v41 contentData:v37 countryCode:v25 positionIndex:v42 rapResponse:v26 reportId:v27 status:v35 statusLastUpdatedDate:v30 summary:v31 type:v36];

  sub_1B6284F64(v43, a8);
  sub_1B6284F64(v44, a3);
  sub_1B6284EAC(v38, &unk_1EB943210, &unk_1B63C3F50);
  return v33;
}

id RAPRecord.init(clientRevision:contentData:countryCode:positionIndex:rapResponse:reportId:status:statusLastUpdatedDate:summary:type:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15)
{
  v19 = sub_1B6310620(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  sub_1B6284F64(a7, a8);
  sub_1B6284F64(a2, a3);
  return v19;
}

char *RAPRecord.__allocating_init(store:clientRevision:contentData:countryCode:positionIndex:rapResponse:reportId:status:statusLastUpdatedDate:summary:type:)(void *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, unsigned __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int16 a16)
{
  v17 = v16;
  v95 = a8;
  v77 = a7;
  v19 = a5;
  v78 = a5;
  v20 = a2;
  v79 = a2;
  v83 = a16;
  v89 = a15;
  v93 = a13;
  v94 = a3;
  v87 = a4;
  v88 = a14;
  v90 = a12;
  v85 = a6;
  v86 = a11;
  v76 = a9;
  v75 = a10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v81 = *(v22 - 8);
  v23 = *(v81 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v80 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v74 - v25;
  v27 = objc_allocWithZone(v17);
  v84 = a1;
  v28 = [v27 initWithStore_];
  v29 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v30 = *&v28[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v91 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v31 = v28;
  v32 = v28;
  v92 = v28;
  v33 = v31;
  [v30 lock];
  v82 = *&v32[v29];
  *&v33[OBJC_IVAR___MSRAPRecord__clientRevision] = v20;
  v34 = &v33[OBJC_IVAR___MSRAPRecord__contentData];
  v35 = *&v33[OBJC_IVAR___MSRAPRecord__contentData];
  v36 = *&v33[OBJC_IVAR___MSRAPRecord__contentData + 8];
  v37 = v94;
  v38 = v87;
  *v34 = v94;
  *(v34 + 1) = v38;
  sub_1B6291034(v37, v38);
  sub_1B6284F64(v35, v36);
  v39 = &v33[OBJC_IVAR___MSRAPRecord__countryCode];
  v40 = v85;
  *v39 = v19;
  v39[1] = v40;

  *&v33[OBJC_IVAR___MSRAPRecord__positionIndex] = a7;
  v41 = &v33[OBJC_IVAR___MSRAPRecord__rapResponse];
  v42 = *&v33[OBJC_IVAR___MSRAPRecord__rapResponse];
  v43 = *&v33[OBJC_IVAR___MSRAPRecord__rapResponse + 8];
  v44 = v95;
  v45 = v76;
  *v41 = v95;
  *(v41 + 1) = v45;
  sub_1B6291034(v44, v45);
  sub_1B6284F64(v42, v43);
  v46 = &v33[OBJC_IVAR___MSRAPRecord__reportId];
  v47 = v86;
  *v46 = a10;
  *(v46 + 1) = v47;

  *&v33[OBJC_IVAR___MSRAPRecord__status] = v90;
  v48 = v93;
  sub_1B628C510(v93, v26, &unk_1EB943210, &unk_1B63C3F50);
  v49 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
  swift_beginAccess();
  sub_1B6282DFC(v26, &v33[v49], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v50 = &v33[OBJC_IVAR___MSRAPRecord__summary];
  v51 = v89;
  *v50 = v88;
  v50[1] = v51;

  LOWORD(v19) = v83;
  *&v33[OBJC_IVAR___MSRAPRecord__type] = v83;
  v52 = v48;
  v53 = v80;
  sub_1B628C510(v52, v80, &unk_1EB943210, &unk_1B63C3F50);
  v54 = (*(v81 + 80) + 98) & ~*(v81 + 80);
  v55 = (v23 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  *(v56 + 16) = v79;
  v57 = v94;
  v58 = v95;
  v59 = v87;
  *(v56 + 24) = v94;
  *(v56 + 32) = v59;
  v60 = v85;
  *(v56 + 40) = v78;
  *(v56 + 48) = v60;
  *(v56 + 56) = v77;
  *(v56 + 64) = v58;
  v61 = v75;
  *(v56 + 72) = v45;
  *(v56 + 80) = v61;
  *(v56 + 88) = v86;
  *(v56 + 96) = v90;
  v62 = v53;
  v63 = v57;
  sub_1B628A128(v62, v56 + v54, &unk_1EB943210, &unk_1B63C3F50);
  v64 = (v56 + v55);
  v65 = v89;
  *v64 = v88;
  v64[1] = v65;
  *(v56 + ((v55 + 17) & 0xFFFFFFFFFFFFFFF8)) = v19;
  sub_1B6282B88();
  sub_1B6291034(v63, v59);
  sub_1B6291034(v58, v45);
  if (sub_1B63BEF24())
  {
    v66 = swift_allocObject();
    *(v66 + 16) = sub_1B6310918;
    *(v66 + 24) = v56;
    v67 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v68 = *&v33[v67];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[v67] = v68;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v68 = sub_1B629A8E8(0, v68[2] + 1, 1, v68);
      *&v33[v67] = v68;
    }

    v71 = v68[2];
    v70 = v68[3];
    if (v71 >= v70 >> 1)
    {
      v68 = sub_1B629A8E8((v70 > 1), v71 + 1, 1, v68);
    }

    v68[2] = v71 + 1;
    v72 = &v68[2 * v71];
    v72[4] = sub_1B62B8188;
    v72[5] = v66;
    *&v33[v67] = v68;
    swift_endAccess();
  }

  [*&v92[v91] unlock];

  sub_1B6284F64(v95, v45);
  sub_1B6284F64(v94, v59);
  sub_1B6284EAC(v93, &unk_1EB943210, &unk_1B63C3F50);

  return v33;
}

char *RAPRecord.init(store:clientRevision:contentData:countryCode:positionIndex:rapResponse:reportId:status:statusLastUpdatedDate:summary:type:)(void *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, unsigned __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int16 a16)
{
  v17 = v16;
  v94 = a8;
  v76 = a7;
  v85 = a6;
  v86 = a4;
  v19 = a5;
  v77 = a5;
  v20 = a2;
  v78 = a2;
  v82 = a16;
  v92 = a13;
  v93 = a3;
  v87 = a14;
  v88 = a15;
  v89 = a12;
  v84 = a11;
  v75 = a9;
  v74 = a10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v80 = *(v22 - 8);
  v23 = *(v80 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v79 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v73 - v25;
  v83 = a1;
  v27 = [v17 initWithStore_];
  v28 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v29 = *&v27[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v90 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v30 = v27;
  v31 = v27;
  v91 = v27;
  v32 = v30;
  [v29 lock];
  v81 = *&v31[v28];
  *&v32[OBJC_IVAR___MSRAPRecord__clientRevision] = v20;
  v33 = &v32[OBJC_IVAR___MSRAPRecord__contentData];
  v34 = *&v32[OBJC_IVAR___MSRAPRecord__contentData];
  v35 = *&v32[OBJC_IVAR___MSRAPRecord__contentData + 8];
  v36 = v93;
  v37 = v86;
  *v33 = v93;
  *(v33 + 1) = v37;
  sub_1B6291034(v36, v37);
  sub_1B6284F64(v34, v35);
  v38 = &v32[OBJC_IVAR___MSRAPRecord__countryCode];
  v39 = v85;
  *v38 = v19;
  v38[1] = v39;

  *&v32[OBJC_IVAR___MSRAPRecord__positionIndex] = a7;
  v40 = &v32[OBJC_IVAR___MSRAPRecord__rapResponse];
  v41 = *&v32[OBJC_IVAR___MSRAPRecord__rapResponse];
  v42 = *&v32[OBJC_IVAR___MSRAPRecord__rapResponse + 8];
  v43 = v94;
  v44 = v75;
  *v40 = v94;
  *(v40 + 1) = v44;
  sub_1B6291034(v43, v44);
  sub_1B6284F64(v41, v42);
  v45 = &v32[OBJC_IVAR___MSRAPRecord__reportId];
  v46 = v84;
  *v45 = a10;
  *(v45 + 1) = v46;

  *&v32[OBJC_IVAR___MSRAPRecord__status] = v89;
  v47 = v92;
  sub_1B628C510(v92, v26, &unk_1EB943210, &unk_1B63C3F50);
  v48 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
  swift_beginAccess();
  sub_1B6282DFC(v26, &v32[v48], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v49 = &v32[OBJC_IVAR___MSRAPRecord__summary];
  v50 = v88;
  *v49 = v87;
  v49[1] = v50;

  LOWORD(v19) = v82;
  *&v32[OBJC_IVAR___MSRAPRecord__type] = v82;
  v51 = v47;
  v52 = v79;
  sub_1B628C510(v51, v79, &unk_1EB943210, &unk_1B63C3F50);
  v53 = (*(v80 + 80) + 98) & ~*(v80 + 80);
  v54 = (v23 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  *(v55 + 16) = v78;
  v56 = v93;
  v57 = v94;
  v58 = v86;
  *(v55 + 24) = v93;
  *(v55 + 32) = v58;
  v59 = v85;
  *(v55 + 40) = v77;
  *(v55 + 48) = v59;
  *(v55 + 56) = v76;
  *(v55 + 64) = v57;
  v60 = v74;
  *(v55 + 72) = v44;
  *(v55 + 80) = v60;
  *(v55 + 88) = v84;
  *(v55 + 96) = v89;
  v61 = v52;
  v62 = v56;
  sub_1B628A128(v61, v55 + v53, &unk_1EB943210, &unk_1B63C3F50);
  v63 = (v55 + v54);
  v64 = v88;
  *v63 = v87;
  v63[1] = v64;
  *(v55 + ((v54 + 17) & 0xFFFFFFFFFFFFFFF8)) = v19;
  sub_1B6282B88();
  sub_1B6291034(v62, v58);
  sub_1B6291034(v57, v44);
  if (sub_1B63BEF24())
  {
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1B631196C;
    *(v65 + 24) = v55;
    v66 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v67 = *&v32[v66];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[v66] = v67;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v67 = sub_1B629A8E8(0, v67[2] + 1, 1, v67);
      *&v32[v66] = v67;
    }

    v70 = v67[2];
    v69 = v67[3];
    if (v70 >= v69 >> 1)
    {
      v67 = sub_1B629A8E8((v69 > 1), v70 + 1, 1, v67);
    }

    v67[2] = v70 + 1;
    v71 = &v67[2 * v70];
    v71[4] = sub_1B62B9488;
    v71[5] = v65;
    *&v32[v66] = v67;
    swift_endAccess();
  }

  [*&v91[v90] unlock];

  sub_1B6284F64(v94, v44);
  sub_1B6284F64(v93, v58);
  sub_1B6284EAC(v92, &unk_1EB943210, &unk_1B63C3F50);

  return v32;
}

void sub_1B630AF48(uint64_t a1, void *a2, __int16 a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, void *a12, __int16 a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v36 - v23;
  type metadata accessor for MapsSyncManagedRAPRecord();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v27 = a2;
    [v26 setClientRevision_];
    if (a5 >> 60 == 15)
    {
      v28 = 0;
    }

    else
    {
      v28 = sub_1B63BE904();
    }

    [v26 setContentData_];

    if (a7)
    {
      v29 = sub_1B63BEBC4();
    }

    else
    {
      v29 = 0;
    }

    v30 = a12;
    [v26 setCountryCode_];

    [v26 setPositionIndex_];
    if (a10 >> 60 == 15)
    {
      v31 = 0;
    }

    else
    {
      v31 = sub_1B63BE904();
    }

    [v26 setRapResponse_];

    if (a12)
    {
      v30 = sub_1B63BEBC4();
    }

    [v26 setReportId_];

    [v26 setStatus_];
    sub_1B628C510(a14, v24, &unk_1EB943210, &unk_1B63C3F50);
    v32 = sub_1B63BE994();
    v33 = *(v32 - 8);
    v34 = 0;
    if ((*(v33 + 48))(v24, 1, v32) != 1)
    {
      v34 = sub_1B63BE954();
      (*(v33 + 8))(v24, v32);
    }

    [v26 setStatusLastUpdatedDate_];

    if (a16)
    {
      v35 = sub_1B63BEBC4();
    }

    else
    {
      v35 = 0;
    }

    [v26 setSummary_];

    [v26 setType_];
  }
}

id sub_1B630B5B4(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSRAPRecord__clientRevision) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6310A14;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B630B750(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSRAPRecord__clientRevision);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B630B7D4;
}

uint64_t sub_1B630B814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSRAPRecord__contentData);
  v7 = *(v3 + OBJC_IVAR___MSRAPRecord__contentData + 8);
  v24 = v6;
  v25 = v7;
  sub_1B6291034(v6, v7);
  sub_1B6284F64(0, 0xF000000000000000);
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v7 >> 60 != 15)
  {
    sub_1B6291034(v6, v7);
    v10 = 0;
    v11 = 0;
    v12 = v6;
LABEL_17:
    sub_1B6284F64(v6, v7);
    sub_1B62B1F7C(v10, v11);
    return v12;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v13 = sub_1B63BF364();

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v15 = sub_1B629409C();
  v17 = v16;

  if (v17)
  {
    v23[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  [v5 lock];
  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v11;
  [v5 unlock];
  if (!v11)
  {
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v11 = swift_allocObject();
  v11[2] = v15;
  v11[3] = v18;
  v11[4] = &v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6310A38;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_17;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v15);

  [v15 performBlockAndWait_];
  sub_1B6295C20(v15);

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    v12 = v24;
    sub_1B6291034(v24, v25);
    v6 = v24;
    v7 = v25;
    v10 = sub_1B6310A38;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B630BBE4(uint64_t a1, unint64_t a2)
{
  sub_1B6310A60(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t (*sub_1B630BC2C(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B630B814(a1, a2);
  a1[1] = v4;
  return sub_1B630BC74;
}

uint64_t sub_1B630BCA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSRAPRecord__countryCode);
  v6 = *(v2 + OBJC_IVAR___MSRAPRecord__countryCode + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6310C30;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_34_3;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B6310C30;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B630C048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSRAPRecord__countryCode);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6310C58;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B630C200(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B630BCA4(a1, a2);
  a1[1] = v4;
  return sub_1B630C248;
}

uint64_t sub_1B630C2D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSRAPRecord__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B630C37C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSRAPRecord__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6310C7C;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B630C518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedRAPRecord();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B630C57C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSRAPRecord__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B630C600;
}

id sub_1B630C63C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1B63BE904();
    sub_1B6284F64(v5, v7);
    v8 = v9;
  }

  return v8;
}

uint64_t sub_1B630C6C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSRAPRecord__rapResponse);
  v7 = *(v3 + OBJC_IVAR___MSRAPRecord__rapResponse + 8);
  v24 = v6;
  v25 = v7;
  sub_1B6291034(v6, v7);
  sub_1B6284F64(0, 0xF000000000000000);
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v7 >> 60 != 15)
  {
    sub_1B6291034(v6, v7);
    v10 = 0;
    v11 = 0;
    v12 = v6;
LABEL_17:
    sub_1B6284F64(v6, v7);
    sub_1B62B1F7C(v10, v11);
    return v12;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v13 = sub_1B63BF364();

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v15 = sub_1B629409C();
  v17 = v16;

  if (v17)
  {
    v23[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  [v5 lock];
  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v11;
  [v5 unlock];
  if (!v11)
  {
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v11 = swift_allocObject();
  v11[2] = v15;
  v11[3] = v18;
  v11[4] = &v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6310C84;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_58;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v15);

  [v15 performBlockAndWait_];
  sub_1B6295C20(v15);

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    v12 = v24;
    sub_1B6291034(v24, v25);
    v6 = v24;
    v7 = v25;
    v10 = sub_1B6310C84;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1B630CA98(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  if (a3)
  {
    v6 = a1;
    v7 = a3;
    v8 = sub_1B63BE924();
    v10 = v9;
  }

  else
  {
    v11 = a1;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  a4(v8, v10);
  sub_1B6284F64(v8, v10);
}

uint64_t sub_1B630CB40(uint64_t a1, unint64_t a2)
{
  sub_1B6310CAC(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B630CB88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  sub_1B6291034(*a1, v7);
  a5(v6, v7);

  return sub_1B6284F64(v6, v7);
}

void sub_1B630CBEC(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedRAPRecord();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9 && (v11 = [v9 *a4]) != 0)
    {
      v12 = v11;
      v13 = sub_1B63BE924();
      v15 = v14;

      v16 = *a3;
      v17 = a3[1];
      *a3 = v13;
      a3[1] = v15;
      sub_1B6284F64(v16, v17);
    }

    else
    {
    }
  }

  else
  {
    v18 = v20[0];
    v19 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B630CD10(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedRAPRecord();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    if (a4 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B63BE904();
    }

    v12 = v11;
    [v9 *a5];
  }
}

uint64_t (*sub_1B630CDDC(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B630C6C8(a1, a2);
  a1[1] = v4;
  return sub_1B630CE24;
}

uint64_t sub_1B630CE3C(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1;
  if (a2)
  {
    sub_1B6291034(v6, v5);
    a3(v4, v5);
    sub_1B6284F64(v4, v5);
  }

  else
  {
    a3(v6, v5);
  }

  return sub_1B6284F64(v4, v5);
}

uint64_t sub_1B630CED8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSRAPRecord__reportId);
  v6 = *(v2 + OBJC_IVAR___MSRAPRecord__reportId + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6310E7C;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_69_1;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B6310E7C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B630D27C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSRAPRecord__reportId);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6310EA4;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B630D434(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B630CED8(a1, a2);
  a1[1] = v4;
  return sub_1B630D47C;
}

id sub_1B630D500(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSRAPRecord__status) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6310EC8;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B630D69C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSRAPRecord__status);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B630D720;
}

uint64_t sub_1B630D870@<X0>(char *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v3 + v13, v9, &unk_1EB943210, &unk_1B63C3F50);
  [v12 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  sub_1B628C510(v9, v7, &unk_1EB943210, &unk_1B63C3F50);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943210, &unk_1B63C3F50);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  if ((*(ObjectType + 592))(v15))
  {
  }

  else
  {
    v17 = sub_1B63BF364();

    if ((v17 & 1) == 0)
    {
      v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      sub_1B628276C();
      goto LABEL_10;
    }
  }

  v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();
LABEL_10:

  v19 = sub_1B629409C();
  v21 = v20;

  if (v21)
  {
    aBlock[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    v22 = v19;
LABEL_16:
    sub_1B6295C20(v22);
    v30(v32, 1, 1, v10);
    return sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  }

  [v12 lock];
  v23 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v24 = v23;
  [v12 property descriptor for VisitedLocation.hidden];
  if (!v23)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v24;
  v25[4] = v9;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B6310EEC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_95;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  sub_1B62B1FC0(v19);

  [v19 performBlockAndWait_];
  sub_1B6295C20(v19);

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  return result;
}

uint64_t sub_1B630DE70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943210, &unk_1B63C3F50);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B6310EF8;
    *(v15 + 24) = v14;
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v17 = *(v2 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B629A8E8(0, v17[2] + 1, 1, v17);
      *(v2 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1B629A8E8((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_1B62B9488;
    v21[5] = v15;
    *(v2 + v16) = v17;
    swift_endAccess();
  }

  [v11 unlock];
  return sub_1B6284EAC(a1, &unk_1EB943210, &unk_1B63C3F50);
}

uint64_t sub_1B630E140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B628C510(a1, &v6 - v3, &unk_1EB943210, &unk_1B63C3F50);
  return sub_1B630DE70(v4);
}

void sub_1B630E1EC(void *a1, uint64_t a2, _BYTE *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B63BE994();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23[-v11];
  v24[0] = 0;
  v13 = [a1 existingObjectWithID:a2 error:v24];
  v14 = v24[0];
  if (v13)
  {
    v15 = v13;
    type metadata accessor for MapsSyncManagedRAPRecord();
    v16 = swift_dynamicCastClass();
    v17 = v14;
    if (v16 && (v18 = [v16 statusLastUpdatedDate]) != 0)
    {
      v19 = v18;
      sub_1B63BE974();

      v20 = *(v7 + 32);
      v20(v12, v10, v6);
      sub_1B6284EAC(a3, &unk_1EB943210, &unk_1B63C3F50);
      v20(a3, v12, v6);
      (*(v7 + 56))(a3, 0, 1, v6);
    }

    else
    {
    }
  }

  else
  {
    v21 = v24[0];
    v22 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B630E41C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  type metadata accessor for MapsSyncManagedRAPRecord();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    sub_1B628C510(a3, v7, &unk_1EB943210, &unk_1B63C3F50);
    v10 = sub_1B63BE994();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    v13 = a2;
    v14 = 0;
    if (v12 != 1)
    {
      v14 = sub_1B63BE954();
      (*(v11 + 8))(v7, v10);
    }

    [v9 setStatusLastUpdatedDate_];
  }
}

void (*sub_1B630E588(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1B630D870(v4);
  return sub_1B630E644;
}

void sub_1B630E644(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B628C510(*(a1 + 16), v2, &unk_1EB943210, &unk_1B63C3F50);
    sub_1B630DE70(v2);
    sub_1B6284EAC(v3, &unk_1EB943210, &unk_1B63C3F50);
  }

  else
  {
    sub_1B630DE70(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

id sub_1B630E6F8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1B63BEBC4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1B630E778(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSRAPRecord__summary);
  v6 = *(v2 + OBJC_IVAR___MSRAPRecord__summary + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6310F84;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_112;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B6310F84;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B630EB1C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1B63BEBD4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1B630EBA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSRAPRecord__summary);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6310FAC;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B630ED5C(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v18];
  v7 = v18[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedRAPRecord();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9 && (v11 = [v9 *a4]) != 0)
    {
      v12 = v11;
      v13 = sub_1B63BEBD4();
      v15 = v14;

      *a3 = v13;
      a3[1] = v15;
    }

    else
    {
    }
  }

  else
  {
    v16 = v18[0];
    v17 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B630EE80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedRAPRecord();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    if (a4)
    {
      v11 = sub_1B63BEBC4();
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v9 *a5];
  }
}

uint64_t (*sub_1B630EF44(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B630E778(a1, a2);
  a1[1] = v4;
  return sub_1B630EF8C;
}

uint64_t sub_1B630EFA4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

id sub_1B630F090(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSRAPRecord__type) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6310FD0;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B630F22C(uint64_t a1, uint64_t a2, __int16 a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedRAPRecord();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B630F29C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSRAPRecord__type);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B630F320;
}

uint64_t sub_1B630F38C()
{
  v6 = 0;
  v1 = *&v0[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v0;
  v3 = v0;
  v4 = v1;
  sub_1B6382638(inited, &v6, v3);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v6;
}

void sub_1B630F444(uint64_t a1, unint64_t a2, void **a3, uint64_t a4)
{
  if (!a1 && a2)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v32 = a3;
      v33 = a4;
      v34 = a2;
      v35 = sub_1B63BF044();
      a2 = v34;
      a4 = v33;
      a3 = v32;
      if (!v35)
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = a4;
      v6 = a3;
      v7 = MEMORY[0x1B8C92830](0);
    }

    else
    {
      if (!*(v4 + 16))
      {
        __break(1u);
        return;
      }

      v5 = a4;
      v6 = a3;
      v7 = *(a2 + 32);
    }

    v36 = v7;
    type metadata accessor for MapsSyncManagedRAPRecord();
    v8 = swift_dynamicCastClass();
    if (v8 && (v9 = [v8 communityID]) != 0)
    {
      v10 = v9;
      v11 = *(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      v12 = *(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad);
      v13 = objc_allocWithZone(type metadata accessor for CommunityID(0));
      v14 = &v13[OBJC_IVAR___MSCommunityID__communityIdentifier];
      *v14 = 0;
      v14[1] = 0;
      v13[OBJC_IVAR___MSCommunityID__expired] = 0;
      *&v13[OBJC_IVAR___MSCommunityID__positionIndex] = 0;
      *&v13[OBJC_IVAR___MSCommunityID__usedCount] = 0;
      v15 = MEMORY[0x1E69E7CC0];
      *&v13[OBJC_IVAR___MSCommunityID__rapRecordChanges] = MEMORY[0x1E69E7CC0];
      *&v13[OBJC_IVAR___MSCommunityID__reviewedPlaceChanges] = v15;
      *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
      v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
      v17 = objc_allocWithZone(MEMORY[0x1E696AD10]);
      v18 = v10;
      v19 = v11;
      *&v13[v16] = [v17 init];
      *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v15;
      v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
      v21 = type metadata accessor for MapsSyncHashing(0);
      (*(*(v21 - 8) + 56))(&v13[v20], 1, 1, v21);
      v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
      v23 = sub_1B63BEA04();
      (*(*(v23 - 8) + 56))(&v13[v22], 1, 1, v23);
      v24 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
      v25 = sub_1B63BE994();
      v26 = *(*(v25 - 8) + 56);
      v26(&v13[v24], 1, 1, v25);
      v26(&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v25);
      *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v19;
      v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v12;
      v37.receiver = v13;
      v37.super_class = type metadata accessor for MapsSyncObject(0);
      v27 = v19;
      v28 = objc_msgSendSuper2(&v37, sel_init);
      v29 = [v18 objectID];
      v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
      *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

      (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v18, v12, 1);
      v31 = *v6;
      *v6 = v28;
    }

    else
    {
    }
  }
}

void sub_1B630F83C(void *a1)
{
  if (a1)
  {
    v7 = a1;
    sub_1B62DD7A8(v1, 0, sub_1B62DD660, 0);
  }

  else
  {
    v8 = 0;
    v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D70;
    *(inited + 32) = v1;
    v4 = v1;
    v5 = v2;
    sub_1B6382638(inited, &v8, v4);

    swift_setDeallocating();
    swift_arrayDestroy();
    v6 = v8;
    if (v8)
    {
      sub_1B62DD7A8(v4, 1, sub_1B62DD714, 0);
    }
  }
}

void *sub_1B630F9F8(void *a1, void *a2, int a3, int a4)
{
  v52 = a4;
  v53 = a3;
  v54 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v48 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v47 - v11;
  *&v4[OBJC_IVAR___MSRAPRecord__clientRevision] = 0;
  *&v4[OBJC_IVAR___MSRAPRecord__contentData] = xmmword_1B63C3E40;
  v12 = &v4[OBJC_IVAR___MSRAPRecord__countryCode];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR___MSRAPRecord__positionIndex] = 0;
  *&v4[OBJC_IVAR___MSRAPRecord__rapResponse] = xmmword_1B63C3E40;
  v13 = &v4[OBJC_IVAR___MSRAPRecord__reportId];
  *v13 = 0;
  v13[1] = 0;
  *&v4[OBJC_IVAR___MSRAPRecord__status] = 0;
  v14 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
  v15 = sub_1B63BE994();
  v16 = *(*(v15 - 8) + 56);
  v16(&v4[v14], 1, 1, v15);
  v17 = &v4[OBJC_IVAR___MSRAPRecord__summary];
  *v17 = 0;
  v17[1] = 0;
  *&v4[OBJC_IVAR___MSRAPRecord__type] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v20 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v22 = sub_1B63BEA04();
  v23 = *(*(v22 - 8) + 56);
  v23(&v4[v21], 1, 1, v22);
  v16(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v15);
  v16(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v15);
  v24 = v53;
  v25 = v54;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v54;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v24;
  v26 = type metadata accessor for MapsSyncObject(0);
  v55.receiver = v4;
  v55.super_class = v26;
  v27 = v25;
  v28 = objc_msgSendSuper2(&v55, sel_init);
  v29 = v28;
  if (a1)
  {
    v30 = v28;
    v31 = [a1 objectID];
    v32 = *(v30 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v30 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v31;

    (*((*MEMORY[0x1E69E7D40] & *v30) + 0x218))(a1, v24 & 1, v52 & 1);
  }

  else
  {
    v33 = v28;
    v34 = v51;
    sub_1B63BE9F4();
    v23(v34, 0, 1, v22);
    v35 = v48;
    sub_1B628C510(v34, v48, &unk_1EB943680, qword_1B63C4070);
    v36 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v35, &v33[v36], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v37 = v50;
    sub_1B628C510(v34, v50, &unk_1EB943680, qword_1B63C4070);
    v38 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v39 = swift_allocObject();
    sub_1B628A128(v37, v39 + v38, &unk_1EB943680, qword_1B63C4070);
    v40 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v41 = *&v33[v40];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[v40] = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_1B629A8E8(0, v41[2] + 1, 1, v41);
      *&v33[v40] = v41;
    }

    v44 = v41[2];
    v43 = v41[3];
    if (v44 >= v43 >> 1)
    {
      v41 = sub_1B629A8E8((v43 > 1), v44 + 1, 1, v41);
    }

    v41[2] = v44 + 1;
    v45 = &v41[2 * v44];
    v45[4] = sub_1B62B2D5C;
    v45[5] = v39;
    *&v33[v40] = v41;
    swift_endAccess();

    sub_1B6284EAC(v34, &unk_1EB943680, qword_1B63C4070);
  }

  return v29;
}

uint64_t sub_1B6310000()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSRAPRecord__contentData), *(v0 + OBJC_IVAR___MSRAPRecord__contentData + 8));

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSRAPRecord__rapResponse), *(v0 + OBJC_IVAR___MSRAPRecord__rapResponse + 8));

  sub_1B6284EAC(v0 + OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate, &unk_1EB943210, &unk_1B63C3F50);
}

id RAPRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RAPRecord(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B631018C(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v62 - v9;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedRAPRecord();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = a1;
  v14 = [v12 clientRevision];
  *(v2 + OBJC_IVAR___MSRAPRecord__clientRevision) = v14;
  if (a2)
  {
    v15 = *(v2 + OBJC_IVAR___MSRAPRecord__contentData);
    v16 = *(v2 + OBJC_IVAR___MSRAPRecord__contentData + 8);
    *(v2 + OBJC_IVAR___MSRAPRecord__contentData) = xmmword_1B63C3E40;
    sub_1B6284F64(v15, v16);
  }

  else
  {
    v17 = [v12 contentData];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1B63BE924();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xF000000000000000;
    }

    v22 = (v2 + OBJC_IVAR___MSRAPRecord__contentData);
    v23 = *(v2 + OBJC_IVAR___MSRAPRecord__contentData);
    v24 = *(v2 + OBJC_IVAR___MSRAPRecord__contentData + 8);
    *v22 = v19;
    v22[1] = v21;
    sub_1B6284F64(v23, v24);
    v25 = [v12 countryCode];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1B63BEBD4();
      v29 = v28;

      goto LABEL_10;
    }
  }

  v27 = 0;
  v29 = 0;
LABEL_10:
  v30 = (v2 + OBJC_IVAR___MSRAPRecord__countryCode);
  *v30 = v27;
  v30[1] = v29;

  v31 = [v12 positionIndex];
  *(v2 + OBJC_IVAR___MSRAPRecord__positionIndex) = v31;
  if (a2)
  {
    v32 = *(v2 + OBJC_IVAR___MSRAPRecord__rapResponse);
    v33 = *(v2 + OBJC_IVAR___MSRAPRecord__rapResponse + 8);
    *(v2 + OBJC_IVAR___MSRAPRecord__rapResponse) = xmmword_1B63C3E40;
    sub_1B6284F64(v32, v33);
LABEL_17:
    v44 = 0;
    v46 = 0;
    goto LABEL_18;
  }

  v34 = [v12 rapResponse];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1B63BE924();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xF000000000000000;
  }

  v39 = (v2 + OBJC_IVAR___MSRAPRecord__rapResponse);
  v40 = *(v2 + OBJC_IVAR___MSRAPRecord__rapResponse);
  v41 = *(v2 + OBJC_IVAR___MSRAPRecord__rapResponse + 8);
  *v39 = v36;
  v39[1] = v38;
  sub_1B6284F64(v40, v41);
  v42 = [v12 reportId];
  if (!v42)
  {
    goto LABEL_17;
  }

  v43 = v42;
  v44 = sub_1B63BEBD4();
  v46 = v45;

LABEL_18:
  v47 = (v2 + OBJC_IVAR___MSRAPRecord__reportId);
  *v47 = v44;
  v47[1] = v46;

  v48 = [v12 status];
  *(v2 + OBJC_IVAR___MSRAPRecord__status) = v48;
  if (a2)
  {
    v49 = sub_1B63BE994();
    (*(*(v49 - 8) + 56))(v10, 1, 1, v49);
  }

  else
  {
    v50 = [v12 statusLastUpdatedDate];
    if (v50)
    {
      v51 = v50;
      sub_1B63BE974();

      v52 = sub_1B63BE994();
      (*(*(v52 - 8) + 56))(v8, 0, 1, v52);
    }

    else
    {
      v53 = sub_1B63BE994();
      (*(*(v53 - 8) + 56))(v8, 1, 1, v53);
    }

    sub_1B628A128(v8, v10, &unk_1EB943210, &unk_1B63C3F50);
  }

  v54 = OBJC_IVAR___MSRAPRecord__statusLastUpdatedDate;
  swift_beginAccess();
  sub_1B6282DFC(v10, v2 + v54, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  if ((a2 & 1) != 0 || (v55 = [v12 summary]) == 0)
  {
    v57 = 0;
    v59 = 0;
  }

  else
  {
    v56 = v55;
    v57 = sub_1B63BEBD4();
    v59 = v58;
  }

  v60 = (v2 + OBJC_IVAR___MSRAPRecord__summary);
  *v60 = v57;
  v60[1] = v59;

  v61 = [v12 type];

  *(v2 + OBJC_IVAR___MSRAPRecord__type) = v61;
}

id sub_1B6310620(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15)
{
  v38 = a6;
  v36 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v35 - v21;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v35 = qword_1EDB0F2A8;
  if (a3 >> 60 == 15)
  {
    v23 = 0;
    if (a5)
    {
LABEL_5:
      v24 = sub_1B63BEBC4();

      goto LABEL_8;
    }
  }

  else
  {
    sub_1B629119C(a2, a3);
    v23 = sub_1B63BE904();
    sub_1B6284F64(a2, a3);
    if (a5)
    {
      goto LABEL_5;
    }
  }

  v24 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    v25 = 0;
    if (a10)
    {
LABEL_10:
      v26 = sub_1B63BEBC4();

      goto LABEL_13;
    }
  }

  else
  {
    sub_1B629119C(a7, a8);
    v25 = sub_1B63BE904();
    sub_1B6284F64(a7, a8);
    if (a10)
    {
      goto LABEL_10;
    }
  }

  v26 = 0;
LABEL_13:
  sub_1B628C510(a12, v22, &unk_1EB943210, &unk_1B63C3F50);
  v27 = sub_1B63BE994();
  v28 = *(v27 - 8);
  v29 = 0;
  if ((*(v28 + 48))(v22, 1, v27) != 1)
  {
    v29 = sub_1B63BE954();
    (*(v28 + 8))(v22, v27);
  }

  if (a14)
  {
    v30 = sub_1B63BEBC4();
  }

  else
  {
    v30 = 0;
  }

  LOWORD(v34) = a15;
  LOWORD(v33) = a11;
  v31 = [v37 initWithStore:v35 clientRevision:v36 contentData:v23 countryCode:v24 positionIndex:v38 rapResponse:v25 reportId:v26 status:v33 statusLastUpdatedDate:v29 summary:v30 type:v34];

  sub_1B6284EAC(a12, &unk_1EB943210, &unk_1B63C3F50);
  return v31;
}

void sub_1B631091C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 98) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B630AF48(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 17) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1B6310A60(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSRAPRecord__contentData);
  v8 = *(v3 + OBJC_IVAR___MSRAPRecord__contentData);
  v9 = *(v3 + OBJC_IVAR___MSRAPRecord__contentData + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B6311918;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

id sub_1B6310CAC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSRAPRecord__rapResponse);
  v8 = *(v3 + OBJC_IVAR___MSRAPRecord__rapResponse);
  v9 = *(v3 + OBJC_IVAR___MSRAPRecord__rapResponse + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B63118F4;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B6310EF8(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B630E41C(a1, a2, v6);
}

uint64_t type metadata accessor for RAPRecord(uint64_t a1)
{
  result = qword_1EDB0E6D8;
  if (!qword_1EDB0E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_set_132Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void sub_1B6311088(uint64_t a1)
{
  sub_1B628CC34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1B6311970(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B6318D18(a1, a2, v6, v5);
}

id ReviewedPlace.__allocating_init(hasUserReviewed:lastSuggestedReviewDate:latitude:longitude:mapItemIdComparableRepresentation:mapItemLastRefreshed:mapItemStorage:muid:positionIndex:rating:resultProviderIdentifier:uploadedPhotosCount:version:)(int a1, uint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, id a8, unint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, int a14, __int16 a15)
{
  v16 = v15;
  v49 = a4;
  v50 = a8;
  v54 = a5;
  v48 = a3;
  v47 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v43 - v24;
  v46 = objc_allocWithZone(v16);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v45 = qword_1EDB0F2A8;
  sub_1B628C510(a2, v25, &unk_1EB943210, &unk_1B63C3F50);
  v26 = sub_1B63BE994();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = 0;
  if (v28(v25, 1, v26) != 1)
  {
    v29 = sub_1B63BE954();
    (*(v27 + 8))(v25, v26);
  }

  v51 = a6;
  v44 = v29;
  if (a6 >> 60 == 15)
  {
    v43 = 0;
  }

  else
  {
    v30 = v54;
    sub_1B629119C(v54, a6);
    v43 = sub_1B63BE904();
    sub_1B6284F64(v30, a6);
  }

  sub_1B628C510(a7, v23, &unk_1EB943210, &unk_1B63C3F50);
  v31 = v28(v23, 1, v26);
  v52 = a7;
  v53 = a2;
  if (v31 == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_1B63BE954();
    (*(v27 + 8))(v23, v26);
  }

  v33 = v50;
  if (a9 >> 60 == 15)
  {
    v34 = 0;
  }

  else
  {
    sub_1B629119C(v50, a9);
    v34 = sub_1B63BE904();
    sub_1B6284F64(v33, a9);
  }

  WORD2(v42) = a15;
  LODWORD(v42) = a14;
  v41 = v32;
  v35 = v44;
  v37 = v48;
  v36 = v49;
  v38 = v32;
  v39 = v43;
  v50 = [v46 initWithStore:v45 hasUserReviewed:v47 & 1 lastSuggestedReviewDate:v44 latitude:v48 longitude:v49 mapItemIdComparableRepresentation:v43 mapItemLastRefreshed:v41 mapItemStorage:v34 muid:a10 positionIndex:a11 rating:a12 resultProviderIdentifier:a13 uploadedPhotosCount:v42 version:?];

  sub_1B6284F64(v33, a9);
  sub_1B6284F64(v54, v51);
  sub_1B6284EAC(v52, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v53, &unk_1EB943210, &unk_1B63C3F50);
  return v50;
}

id ReviewedPlace.init(hasUserReviewed:lastSuggestedReviewDate:latitude:longitude:mapItemIdComparableRepresentation:mapItemLastRefreshed:mapItemStorage:muid:positionIndex:rating:resultProviderIdentifier:uploadedPhotosCount:version:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, int a14, __int16 a15)
{
  v20 = sub_1B6319B20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);

  sub_1B6284F64(a8, a9);
  sub_1B6284F64(a5, a6);

  return v20;
}

char *ReviewedPlace.__allocating_init(store:hasUserReviewed:lastSuggestedReviewDate:latitude:longitude:mapItemIdComparableRepresentation:mapItemLastRefreshed:mapItemStorage:muid:positionIndex:rating:resultProviderIdentifier:uploadedPhotosCount:version:)(void *a1, int a2, uint64_t a3, void *a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, int a15, unsigned __int16 a16)
{
  v110 = a7;
  v113 = a6;
  v98 = a5;
  v99 = a4;
  v19 = a2;
  v92 = a2;
  v111 = a9;
  v112 = a10;
  LODWORD(v106) = a16;
  LODWORD(v107) = a15;
  v100 = a13;
  v101 = a14;
  v104 = a11;
  v105 = a12;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v93 = *(v21 - 8);
  v22 = *(v93 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v103 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v102 = &v86 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v86 - v26;
  v28 = objc_allocWithZone(v16);
  v95 = a1;
  v29 = [v28 initWithStore_];
  v30 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v31 = *&v29[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v108 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v32 = v29;
  v109 = v29;
  v33 = v32;
  [v31 lock];
  v94 = *&v29[v30];
  v33[OBJC_IVAR___MSReviewedPlace__hasUserReviewed] = v19;
  sub_1B628C510(a3, v27, &unk_1EB943210, &unk_1B63C3F50);
  v34 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
  swift_beginAccess();
  sub_1B6282DFC(v27, &v33[v34], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v35 = *&v33[OBJC_IVAR___MSReviewedPlace__latitude];
  v36 = v99;
  *&v33[OBJC_IVAR___MSReviewedPlace__latitude] = v99;
  v91 = v36;

  v37 = *&v33[OBJC_IVAR___MSReviewedPlace__longitude];
  v38 = v98;
  *&v33[OBJC_IVAR___MSReviewedPlace__longitude] = v98;
  v90 = v38;

  v39 = &v33[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation];
  v40 = *&v33[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation];
  v41 = *&v33[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8];
  v42 = v113;
  v43 = v110;
  *v39 = v113;
  *(v39 + 1) = v43;
  sub_1B6291034(v42, v43);
  sub_1B6284F64(v40, v41);
  sub_1B628C510(a8, v27, &unk_1EB943210, &unk_1B63C3F50);
  v44 = OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v27, &v33[v44], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v45 = &v33[OBJC_IVAR___MSReviewedPlace__mapItemStorage];
  v46 = *&v33[OBJC_IVAR___MSReviewedPlace__mapItemStorage];
  v47 = *&v33[OBJC_IVAR___MSReviewedPlace__mapItemStorage + 8];
  v48 = v111;
  v49 = v112;
  *v45 = v111;
  *(v45 + 1) = v49;
  sub_1B6291034(v48, v49);
  sub_1B6284F64(v46, v47);
  v50 = v105;
  *&v33[OBJC_IVAR___MSReviewedPlace__muid] = v104;
  *&v33[OBJC_IVAR___MSReviewedPlace__positionIndex] = v50;
  v51 = *&v33[OBJC_IVAR___MSReviewedPlace__rating];
  v52 = v100;
  *&v33[OBJC_IVAR___MSReviewedPlace__rating] = v100;
  v89 = v52;

  v53 = *&v33[OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier];
  v54 = v101;
  *&v33[OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier] = v101;
  v88 = v54;

  *&v33[OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount] = v107;
  *&v33[OBJC_IVAR___MSReviewedPlace__version] = v106;
  v97 = a3;
  sub_1B628C510(a3, v102, &unk_1EB943210, &unk_1B63C3F50);
  v96 = a8;
  sub_1B628C510(a8, v103, &unk_1EB943210, &unk_1B63C3F50);
  v55 = *(v93 + 80);
  v56 = (v55 + 17) & ~v55;
  v57 = (v22 + 7 + v56) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v55 + v59 + 16) & ~v55;
  v87 = (v22 + 7 + v60) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = v92;
  sub_1B628A128(v102, v63 + v56, &unk_1EB943210, &unk_1B63C3F50);
  v64 = v98;
  *(v63 + v57) = v99;
  *(v63 + v58) = v64;
  v65 = (v63 + v59);
  v66 = v113;
  v67 = v110;
  *v65 = v113;
  v65[1] = v67;
  sub_1B628A128(v103, v63 + v60, &unk_1EB943210, &unk_1B63C3F50);
  v68 = (v63 + v87);
  v70 = v111;
  v69 = v112;
  *v68 = v111;
  v68[1] = v69;
  v71 = v105;
  *(v63 + v93) = v104;
  *(v63 + v86) = v71;
  v72 = v101;
  *(v63 + v61) = v100;
  *(v63 + v62) = v72;
  v73 = v63 + ((v62 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v73 = v107;
  *(v73 + 4) = v106;
  sub_1B6282B88();
  v74 = v91;
  v75 = v90;
  sub_1B6291034(v66, v67);
  sub_1B6291034(v70, v69);
  v76 = v89;
  v77 = v88;
  if (sub_1B63BEF24())
  {
    v106 = v75;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_1B6319E70;
    *(v78 + 24) = v63;
    v79 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v80 = *&v33[v79];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[v79] = v80;
    v107 = v74;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v80 = sub_1B629A8E8(0, v80[2] + 1, 1, v80);
      *&v33[v79] = v80;
    }

    v83 = v80[2];
    v82 = v80[3];
    if (v83 >= v82 >> 1)
    {
      v80 = sub_1B629A8E8((v82 > 1), v83 + 1, 1, v80);
    }

    v80[2] = v83 + 1;
    v84 = &v80[2 * v83];
    v84[4] = sub_1B62B8188;
    v84[5] = v78;
    *&v33[v79] = v80;
    swift_endAccess();
    v75 = v106;
    v74 = v107;
  }

  [*&v109[v108] unlock];

  sub_1B6284F64(v111, v112);
  sub_1B6284F64(v113, v110);

  sub_1B6284EAC(v96, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v97, &unk_1EB943210, &unk_1B63C3F50);

  return v33;
}

char *ReviewedPlace.init(store:hasUserReviewed:lastSuggestedReviewDate:latitude:longitude:mapItemIdComparableRepresentation:mapItemLastRefreshed:mapItemStorage:muid:positionIndex:rating:resultProviderIdentifier:uploadedPhotosCount:version:)(void *a1, int a2, uint64_t a3, void *a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, int a15, unsigned __int16 a16)
{
  v17 = v16;
  v109 = a7;
  v112 = a6;
  v98 = a5;
  v21 = a2;
  v92 = a2;
  v110 = a9;
  v111 = a10;
  LODWORD(v105) = a16;
  LODWORD(v106) = a15;
  v99 = a13;
  v100 = a14;
  v103 = a11;
  v104 = a12;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v93 = *(v23 - 8);
  v24 = *(v93 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v102 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v101 = &v85 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v85 - v28;
  v95 = a1;
  v30 = [v17 initWithStore_];
  v31 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v32 = *&v30[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v107 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v33 = v30;
  v108 = v30;
  v34 = v33;
  [v32 lock];
  v94 = *&v30[v31];
  v34[OBJC_IVAR___MSReviewedPlace__hasUserReviewed] = v21;
  sub_1B628C510(a3, v29, &unk_1EB943210, &unk_1B63C3F50);
  v35 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
  swift_beginAccess();
  sub_1B6282DFC(v29, &v34[v35], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v36 = *&v34[OBJC_IVAR___MSReviewedPlace__latitude];
  v89 = a4;
  *&v34[OBJC_IVAR___MSReviewedPlace__latitude] = a4;
  v91 = a4;

  v37 = *&v34[OBJC_IVAR___MSReviewedPlace__longitude];
  v38 = v98;
  *&v34[OBJC_IVAR___MSReviewedPlace__longitude] = v98;
  v90 = v38;

  v39 = &v34[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation];
  v40 = *&v34[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation];
  v41 = *&v34[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8];
  v42 = v112;
  v43 = v109;
  *v39 = v112;
  *(v39 + 1) = v43;
  sub_1B6291034(v42, v43);
  sub_1B6284F64(v40, v41);
  sub_1B628C510(a8, v29, &unk_1EB943210, &unk_1B63C3F50);
  v44 = OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v29, &v34[v44], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v45 = &v34[OBJC_IVAR___MSReviewedPlace__mapItemStorage];
  v46 = *&v34[OBJC_IVAR___MSReviewedPlace__mapItemStorage];
  v47 = *&v34[OBJC_IVAR___MSReviewedPlace__mapItemStorage + 8];
  v48 = v110;
  v49 = v111;
  *v45 = v110;
  *(v45 + 1) = v49;
  sub_1B6291034(v48, v49);
  sub_1B6284F64(v46, v47);
  v50 = v104;
  *&v34[OBJC_IVAR___MSReviewedPlace__muid] = v103;
  *&v34[OBJC_IVAR___MSReviewedPlace__positionIndex] = v50;
  v51 = *&v34[OBJC_IVAR___MSReviewedPlace__rating];
  v52 = v99;
  *&v34[OBJC_IVAR___MSReviewedPlace__rating] = v99;
  v88 = v52;

  v53 = *&v34[OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier];
  v54 = v100;
  *&v34[OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier] = v100;
  v87 = v54;

  *&v34[OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount] = v106;
  *&v34[OBJC_IVAR___MSReviewedPlace__version] = v105;
  v97 = a3;
  sub_1B628C510(a3, v101, &unk_1EB943210, &unk_1B63C3F50);
  v96 = a8;
  sub_1B628C510(a8, v102, &unk_1EB943210, &unk_1B63C3F50);
  v55 = *(v93 + 80);
  v56 = (v55 + 17) & ~v55;
  v57 = (v24 + 7 + v56) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v55 + v59 + 16) & ~v55;
  v86 = (v24 + 7 + v60) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v86 + 23) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = v92;
  sub_1B628A128(v101, v63 + v56, &unk_1EB943210, &unk_1B63C3F50);
  *(v63 + v57) = v89;
  *(v63 + v58) = v98;
  v64 = (v63 + v59);
  v65 = v112;
  v66 = v109;
  *v64 = v112;
  v64[1] = v66;
  sub_1B628A128(v102, v63 + v60, &unk_1EB943210, &unk_1B63C3F50);
  v67 = (v63 + v86);
  v69 = v110;
  v68 = v111;
  *v67 = v110;
  v67[1] = v68;
  v70 = v104;
  *(v63 + v93) = v103;
  *(v63 + v85) = v70;
  v71 = v100;
  *(v63 + v61) = v99;
  *(v63 + v62) = v71;
  v72 = v63 + ((v62 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v72 = v106;
  *(v72 + 4) = v105;
  sub_1B6282B88();
  v73 = v91;
  v74 = v90;
  sub_1B6291034(v65, v66);
  sub_1B6291034(v69, v68);
  v75 = v88;
  v76 = v87;
  if (sub_1B63BEF24())
  {
    v105 = v74;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_1B631B8D4;
    *(v77 + 24) = v63;
    v78 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v79 = *&v34[v78];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[v78] = v79;
    v106 = v73;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v79 = sub_1B629A8E8(0, v79[2] + 1, 1, v79);
      *&v34[v78] = v79;
    }

    v82 = v79[2];
    v81 = v79[3];
    if (v82 >= v81 >> 1)
    {
      v79 = sub_1B629A8E8((v81 > 1), v82 + 1, 1, v79);
    }

    v79[2] = v82 + 1;
    v83 = &v79[2 * v82];
    v83[4] = sub_1B62B9488;
    v83[5] = v77;
    *&v34[v78] = v79;
    swift_endAccess();
    v74 = v105;
    v73 = v106;
  }

  [*&v108[v107] unlock];

  sub_1B6284F64(v110, v111);
  sub_1B6284F64(v112, v109);

  sub_1B6284EAC(v96, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v97, &unk_1EB943210, &unk_1B63C3F50);

  return v34;
}

void sub_1B6312ECC(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v39 - v28;
  type metadata accessor for MapsSyncManagedReviewedPlace();
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v31 = v30;
    v41 = a7;
    v42 = a9;
    v43 = a6;
    v44 = a2;
    [v31 setHasUserReviewed_];
    sub_1B628C510(a4, v29, &unk_1EB943210, &unk_1B63C3F50);
    v32 = sub_1B63BE994();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    v35 = 0;
    if (v34(v29, 1, v32) != 1)
    {
      v35 = sub_1B63BE954();
      (*(v33 + 8))(v29, v32);
    }

    [v31 setLastSuggestedReviewDate_];

    [v31 setLatitude_];
    [v31 setLongitude_];
    if (a8 >> 60 == 15)
    {
      v36 = 0;
    }

    else
    {
      v36 = sub_1B63BE904();
    }

    LODWORD(v43) = a16;
    v40 = a14;
    v41 = a15;
    [v31 setMapItemIdComparableRepresentation_];

    sub_1B628C510(v42, v27, &unk_1EB943210, &unk_1B63C3F50);
    if (v34(v27, 1, v32) == 1)
    {
      v37 = 0;
    }

    else
    {
      v37 = sub_1B63BE954();
      (*(v33 + 8))(v27, v32);
    }

    [v31 setMapItemLastRefreshed_];

    if (a11 >> 60 == 15)
    {
      v38 = 0;
    }

    else
    {
      v38 = sub_1B63BE904();
    }

    [v31 setMapItemStorage_];

    [v31 setMuid_];
    [v31 setPositionIndex_];
    [v31 setRating_];
    [v31 setResultProviderIdentifier_];
    [v31 setUploadedPhotosCount_];
    [v31 setVersion_];
  }
}

uint64_t sub_1B6313600()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSReviewedPlace__hasUserReviewed);
  [v1 unlock];
  return v2;
}

id sub_1B63136AC(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSReviewedPlace__hasUserReviewed) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6319FC4;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6313848(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedReviewedPlace();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setHasUserReviewed_];
  }

  return result;
}

id (*sub_1B63138AC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__hasUserReviewed);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B6313930;
}

uint64_t sub_1B6313970@<X0>(char *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v3 + v13, v9, &unk_1EB943210, &unk_1B63C3F50);
  [v12 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  sub_1B628C510(v9, v7, &unk_1EB943210, &unk_1B63C3F50);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943210, &unk_1B63C3F50);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  if ((*(ObjectType + 592))(v15))
  {
  }

  else
  {
    v17 = sub_1B63BF364();

    if ((v17 & 1) == 0)
    {
      v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      sub_1B628276C();
      goto LABEL_10;
    }
  }

  v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();
LABEL_10:

  v19 = sub_1B629409C();
  v21 = v20;

  if (v21)
  {
    aBlock[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    v22 = v19;
LABEL_16:
    sub_1B6295C20(v22);
    v30(v32, 1, 1, v10);
    return sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  }

  [v12 lock];
  v23 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v24 = v23;
  [v12 property descriptor for VisitedLocation.hidden];
  if (!v23)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v24;
  v25[4] = v9;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B6319FCC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B8284;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_18;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  sub_1B62B1FC0(v19);

  [v19 performBlockAndWait_];
  sub_1B6295C20(v19);

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  return result;
}

uint64_t sub_1B6313E70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943210, &unk_1B63C3F50);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B6319FF4;
    *(v15 + 24) = v14;
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v17 = *(v2 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B629A8E8(0, v17[2] + 1, 1, v17);
      *(v2 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1B629A8E8((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_1B62B9488;
    v21[5] = v15;
    *(v2 + v16) = v17;
    swift_endAccess();
  }

  [v11 unlock];
  return sub_1B6284EAC(a1, &unk_1EB943210, &unk_1B63C3F50);
}

void (*sub_1B6314140(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1B6313970(v4);
  return sub_1B63141FC;
}

id sub_1B6314258(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSReviewedPlace__latitude);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B631A000;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_41_3;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B631A000;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6314618(void *a1)
{
  sub_1B631A028(a1);
}

void (*sub_1B6314650(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B6314258(a1, a2);
  return sub_1B6314698;
}

id sub_1B63146F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSReviewedPlace__longitude);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B631A1D8;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_51_4;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B631A1D8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6314AB4(void *a1)
{
  sub_1B631A200(a1);
}

void (*sub_1B6314AEC(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B63146F4(a1, a2);
  return sub_1B6314B34;
}

void sub_1B6314B4C(id *a1, char a2, void (*a3)(id))
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    a3(v6);

    v5 = v4;
  }

  else
  {
    a3(*a1);
    v5 = v6;
  }
}

uint64_t sub_1B6314BE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation);
  v7 = *(v3 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8);
  v24 = v6;
  v25 = v7;
  sub_1B6291034(v6, v7);
  sub_1B6284F64(0, 0xF000000000000000);
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v7 >> 60 != 15)
  {
    sub_1B6291034(v6, v7);
    v10 = 0;
    v11 = 0;
    v12 = v6;
LABEL_17:
    sub_1B6284F64(v6, v7);
    sub_1B62B1F7C(v10, v11);
    return v12;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v13 = sub_1B63BF364();

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v15 = sub_1B629409C();
  v17 = v16;

  if (v17)
  {
    v23[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  [v5 lock];
  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v11;
  [v5 unlock];
  if (!v11)
  {
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v11 = swift_allocObject();
  v11[2] = v15;
  v11[3] = v18;
  v11[4] = &v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B631A3B0;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_62_2;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v15);

  [v15 performBlockAndWait_];
  sub_1B6295C20(v15);

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    v12 = v24;
    sub_1B6291034(v24, v25);
    v6 = v24;
    v7 = v25;
    v10 = sub_1B631A3B0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6314FB4(uint64_t a1, unint64_t a2)
{
  sub_1B631A3D8(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t (*sub_1B6314FFC(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6314BE4(a1, a2);
  a1[1] = v4;
  return sub_1B6315044;
}

id sub_1B6315074(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = a1;
  a3();

  v9 = sub_1B63BE994();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1B63BE954();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_1B63151A4@<X0>(char *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v3 + v13, v9, &unk_1EB943210, &unk_1B63C3F50);
  [v12 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  sub_1B628C510(v9, v7, &unk_1EB943210, &unk_1B63C3F50);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943210, &unk_1B63C3F50);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  if ((*(ObjectType + 592))(v15))
  {
  }

  else
  {
    v17 = sub_1B63BF364();

    if ((v17 & 1) == 0)
    {
      v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      sub_1B628276C();
      goto LABEL_10;
    }
  }

  v18 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();
LABEL_10:

  v19 = sub_1B629409C();
  v21 = v20;

  if (v21)
  {
    aBlock[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    v22 = v19;
LABEL_16:
    sub_1B6295C20(v22);
    v30(v32, 1, 1, v10);
    return sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  }

  [v12 lock];
  v23 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v24 = v23;
  [v12 property descriptor for VisitedLocation.hidden];
  if (!v23)
  {
    v22 = v19;
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v24;
  v25[4] = v9;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B631A5A8;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_72_1;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  sub_1B62B1FC0(v19);

  [v19 performBlockAndWait_];
  sub_1B6295C20(v19);

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1B628A128(v9, v32, &unk_1EB943210, &unk_1B63C3F50);
  }

  return result;
}

void sub_1B63156A4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  if (a3)
  {
    sub_1B63BE974();
    v10 = sub_1B63BE994();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1B63BE994();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a1;
  a4(v9);
}

uint64_t sub_1B63157C0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943210, &unk_1B63C3F50);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B631A5D0;
    *(v15 + 24) = v14;
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v17 = *(v2 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1B629A8E8(0, v17[2] + 1, 1, v17);
      *(v2 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1B629A8E8((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = sub_1B62B9488;
    v21[5] = v15;
    *(v2 + v16) = v17;
    swift_endAccess();
  }

  [v11 unlock];
  return sub_1B6284EAC(a1, &unk_1EB943210, &unk_1B63C3F50);
}

uint64_t sub_1B6315A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1B628C510(a1, &v11 - v8, &unk_1EB943210, &unk_1B63C3F50);
  return a5(v9);
}

void sub_1B6315B44(void *a1, uint64_t a2, _BYTE *a3, SEL *a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1B63BE994();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-v13];
  v26[0] = 0;
  v15 = [a1 existingObjectWithID:a2 error:v26];
  v16 = v26[0];
  if (v15)
  {
    v17 = v15;
    type metadata accessor for MapsSyncManagedReviewedPlace();
    v18 = swift_dynamicCastClass();
    v19 = v16;
    if (v18 && (v20 = [v18 *a4]) != 0)
    {
      v21 = v20;
      sub_1B63BE974();

      v22 = *(v9 + 32);
      v22(v14, v12, v8);
      sub_1B6284EAC(a3, &unk_1EB943210, &unk_1B63C3F50);
      v22(a3, v14, v8);
      (*(v9 + 56))(a3, 0, 1, v8);
    }

    else
    {
    }
  }

  else
  {
    v23 = v26[0];
    v24 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B6315D7C(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  type metadata accessor for MapsSyncManagedReviewedPlace();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    sub_1B628C510(a3, v9, &unk_1EB943210, &unk_1B63C3F50);
    v12 = sub_1B63BE994();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v9, 1, v12);
    v15 = a2;
    v16 = 0;
    if (v14 != 1)
    {
      v16 = sub_1B63BE954();
      (*(v13 + 8))(v9, v12);
    }

    [v11 *a4];
  }
}

void (*sub_1B6315EE8(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  sub_1B63151A4(v4);
  return sub_1B6315FA4;
}

void sub_1B6315FBC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_1B628C510(*(a1 + 16), v4, &unk_1EB943210, &unk_1B63C3F50);
    a3(v4);
    sub_1B6284EAC(v5, &unk_1EB943210, &unk_1B63C3F50);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

id sub_1B631607C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1B63BE904();
    sub_1B6284F64(v5, v7);
    v8 = v9;
  }

  return v8;
}

uint64_t sub_1B6316108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSReviewedPlace__mapItemStorage);
  v7 = *(v3 + OBJC_IVAR___MSReviewedPlace__mapItemStorage + 8);
  v24 = v6;
  v25 = v7;
  sub_1B6291034(v6, v7);
  sub_1B6284F64(0, 0xF000000000000000);
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v7 >> 60 != 15)
  {
    sub_1B6291034(v6, v7);
    v10 = 0;
    v11 = 0;
    v12 = v6;
LABEL_17:
    sub_1B6284F64(v6, v7);
    sub_1B62B1F7C(v10, v11);
    return v12;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v13 = sub_1B63BF364();

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v15 = sub_1B629409C();
  v17 = v16;

  if (v17)
  {
    v23[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  [v5 lock];
  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v11;
  [v5 unlock];
  if (!v11)
  {
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v11 = swift_allocObject();
  v11[2] = v15;
  v11[3] = v18;
  v11[4] = &v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B631A664;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_90_0;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v15);

  [v15 performBlockAndWait_];
  sub_1B6295C20(v15);

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    v12 = v24;
    sub_1B6291034(v24, v25);
    v6 = v24;
    v7 = v25;
    v10 = sub_1B631A664;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1B63164D8(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  if (a3)
  {
    v6 = a1;
    v7 = a3;
    v8 = sub_1B63BE924();
    v10 = v9;
  }

  else
  {
    v11 = a1;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  a4(v8, v10);
  sub_1B6284F64(v8, v10);
}

uint64_t sub_1B6316580(uint64_t a1, unint64_t a2)
{
  sub_1B631A68C(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B63165C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  sub_1B6291034(*a1, v7);
  a5(v6, v7);

  return sub_1B6284F64(v6, v7);
}

void sub_1B631662C(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedReviewedPlace();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9 && (v11 = [v9 *a4]) != 0)
    {
      v12 = v11;
      v13 = sub_1B63BE924();
      v15 = v14;

      v16 = *a3;
      v17 = a3[1];
      *a3 = v13;
      a3[1] = v15;
      sub_1B6284F64(v16, v17);
    }

    else
    {
    }
  }

  else
  {
    v18 = v20[0];
    v19 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B6316750(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedReviewedPlace();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    if (a4 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B63BE904();
    }

    v12 = v11;
    [v9 *a5];
  }
}

uint64_t (*sub_1B631681C(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6316108(a1, a2);
  a1[1] = v4;
  return sub_1B6316864;
}

uint64_t sub_1B631687C(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1;
  if (a2)
  {
    sub_1B6291034(v6, v5);
    a3(v4, v5);
    sub_1B6284F64(v4, v5);
  }

  else
  {
    a3(v6, v5);
  }

  return sub_1B6284F64(v4, v5);
}

id sub_1B631696C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSReviewedPlace__muid) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631A85C;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B6316B08(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__muid);
  [v3 unlock];
  *a1 = v4;
  return sub_1B6316B8C;
}

id sub_1B6316C1C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSReviewedPlace__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631A880;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6316DB8(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedReviewedPlace();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B6316E28(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B6316EAC;
}

id sub_1B6316F14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSReviewedPlace__rating);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B631A8A4;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_115_0;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B631A8A4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63172D4(void *a1)
{
  sub_1B631A8CC(a1);
}

void (*sub_1B631730C(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B6316F14(a1, a2);
  return sub_1B6317354;
}

id sub_1B63173B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B631AA7C;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_126;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B631AA7C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6317770(void *a1)
{
  sub_1B631AAA4(a1);
}

void sub_1B63177A8(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v15];
  v7 = v15[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedReviewedPlace();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9)
    {
      v11 = [v9 *a4];

      if (v11)
      {
        v12 = *a3;
        *a3 = v11;
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v15[0];
    v14 = sub_1B63BE824();

    swift_willThrow();
  }
}

void (*sub_1B63178BC(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B63173B0(a1, a2);
  return sub_1B6317904;
}

uint64_t sub_1B631798C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount);
  [v1 unlock];
  return v2;
}

id sub_1B6317A38(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631AC54;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6317BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedReviewedPlace();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setUploadedPhotosCount_];
  }

  return result;
}

id (*sub_1B6317C38(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B6317CBC;
}

uint64_t sub_1B6317D54()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSReviewedPlace__version);
  [v1 unlock];
  return v2;
}

id sub_1B6317E00(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSReviewedPlace__version) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631AC5C;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B6317F9C(uint64_t a1, uint64_t a2, __int16 a3)
{
  type metadata accessor for MapsSyncManagedReviewedPlace();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setVersion_];
  }

  return result;
}

id (*sub_1B6318000(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSReviewedPlace__version);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B6318084;
}

void sub_1B6318108(uint64_t a1, unint64_t a2, void **a3, uint64_t a4)
{
  if (!a1 && a2)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v29 = a3;
      v30 = a4;
      v31 = a2;
      v32 = sub_1B63BF044();
      a2 = v31;
      a4 = v30;
      a3 = v29;
      if (!v32)
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v34 = a3;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = a4;
      v6 = MEMORY[0x1B8C92830](0);
    }

    else
    {
      if (!*(v4 + 16))
      {
        __break(1u);
        return;
      }

      v5 = a4;
      v6 = *(a2 + 32);
    }

    v35 = v6;
    type metadata accessor for MapsSyncManagedReviewedPlace();
    v7 = swift_dynamicCastClass();
    if (v7 && (v8 = [v7 anonymousCredential]) != 0)
    {
      v9 = v8;
      v10 = *(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      v33 = *(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad);
      v11 = objc_allocWithZone(type metadata accessor for AnonymousCredential(0));
      *&v11[OBJC_IVAR___MSAnonymousCredential__anonymousId] = xmmword_1B63C3E40;
      *&v11[OBJC_IVAR___MSAnonymousCredential__mapsToken] = xmmword_1B63C3E40;
      v12 = OBJC_IVAR___MSAnonymousCredential__mapsTokenCreatedAt;
      v13 = sub_1B63BE994();
      v14 = *(*(v13 - 8) + 56);
      v14(&v11[v12], 1, 1, v13);
      *&v11[OBJC_IVAR___MSAnonymousCredential__mapsTokenTTL] = 0;
      *&v11[OBJC_IVAR___MSAnonymousCredential__positionIndex] = 0;
      v15 = MEMORY[0x1E69E7CC0];
      *&v11[OBJC_IVAR___MSAnonymousCredential__reviewedPlaceChanges] = MEMORY[0x1E69E7CC0];
      *&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
      v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
      v17 = objc_allocWithZone(MEMORY[0x1E696AD10]);
      v18 = v9;
      v19 = v10;
      *&v11[v16] = [v17 init];
      *&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v15;
      v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
      v21 = type metadata accessor for MapsSyncHashing(0);
      (*(*(v21 - 8) + 56))(&v11[v20], 1, 1, v21);
      v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
      v23 = sub_1B63BEA04();
      (*(*(v23 - 8) + 56))(&v11[v22], 1, 1, v23);
      v14(&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v13);
      v14(&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v13);
      *&v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v19;
      v11[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v33;
      v36.receiver = v11;
      v36.super_class = type metadata accessor for MapsSyncObject(0);
      v24 = v19;
      v25 = objc_msgSendSuper2(&v36, sel_init);
      v26 = [v18 objectID];
      v27 = *(v25 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
      *(v25 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v26;

      (*((*MEMORY[0x1E69E7D40] & *v25) + 0x218))(v18, v33, 1);
      v28 = *v34;
      *v34 = v25;
    }

    else
    {
    }
  }
}

uint64_t sub_1B6318640(void (*a1)(uint64_t, uint64_t *, char *))
{
  v8 = 0;
  v3 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v1;
  v5 = v1;
  v6 = v3;
  a1(inited, &v8, v5);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v8;
}

void sub_1B6318708(uint64_t a1, unint64_t a2, void **a3, uint64_t a4)
{
  if (!a1 && a2)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v32 = a3;
      v33 = a4;
      v34 = a2;
      v35 = sub_1B63BF044();
      a2 = v34;
      a4 = v33;
      a3 = v32;
      if (!v35)
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = a4;
      v6 = a3;
      v7 = MEMORY[0x1B8C92830](0);
    }

    else
    {
      if (!*(v4 + 16))
      {
        __break(1u);
        return;
      }

      v5 = a4;
      v6 = a3;
      v7 = *(a2 + 32);
    }

    v36 = v7;
    type metadata accessor for MapsSyncManagedReviewedPlace();
    v8 = swift_dynamicCastClass();
    if (v8 && (v9 = [v8 communityID]) != 0)
    {
      v10 = v9;
      v11 = *(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
      v12 = *(v5 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad);
      v13 = objc_allocWithZone(type metadata accessor for CommunityID(0));
      v14 = &v13[OBJC_IVAR___MSCommunityID__communityIdentifier];
      *v14 = 0;
      v14[1] = 0;
      v13[OBJC_IVAR___MSCommunityID__expired] = 0;
      *&v13[OBJC_IVAR___MSCommunityID__positionIndex] = 0;
      *&v13[OBJC_IVAR___MSCommunityID__usedCount] = 0;
      v15 = MEMORY[0x1E69E7CC0];
      *&v13[OBJC_IVAR___MSCommunityID__rapRecordChanges] = MEMORY[0x1E69E7CC0];
      *&v13[OBJC_IVAR___MSCommunityID__reviewedPlaceChanges] = v15;
      *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
      v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
      v17 = objc_allocWithZone(MEMORY[0x1E696AD10]);
      v18 = v10;
      v19 = v11;
      *&v13[v16] = [v17 init];
      *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v15;
      v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
      v21 = type metadata accessor for MapsSyncHashing(0);
      (*(*(v21 - 8) + 56))(&v13[v20], 1, 1, v21);
      v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
      v23 = sub_1B63BEA04();
      (*(*(v23 - 8) + 56))(&v13[v22], 1, 1, v23);
      v24 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
      v25 = sub_1B63BE994();
      v26 = *(*(v25 - 8) + 56);
      v26(&v13[v24], 1, 1, v25);
      v26(&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v25);
      *&v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v19;
      v13[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v12;
      v37.receiver = v13;
      v37.super_class = type metadata accessor for MapsSyncObject(0);
      v27 = v19;
      v28 = objc_msgSendSuper2(&v37, sel_init);
      v29 = [v18 objectID];
      v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
      *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

      (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v18, v12, 1);
      v31 = *v6;
      *v6 = v28;
    }

    else
    {
    }
  }
}

void sub_1B6318B54(void *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t, void), void (*a4)(uint64_t, void **, char *), uint64_t a5)
{
  if (a1)
  {
    v15 = a1;
    a3(v5, 0, a2, 0);
  }

  else
  {
    v16 = 0;
    v10 = *&v5[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D70;
    *(inited + 32) = v5;
    v12 = v5;
    v13 = v10;
    a4(inited, &v16, v12);

    swift_setDeallocating();
    swift_arrayDestroy();
    v14 = v16;
    if (v16)
    {
      a3(v12, 1, a5, 0);
    }
  }
}

void *sub_1B6318D18(void *a1, void *a2, int a3, int a4)
{
  v49 = a4;
  v51 = a3;
  v52 = a2;
  v53 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v44 - v10;
  v4[OBJC_IVAR___MSReviewedPlace__hasUserReviewed] = 0;
  v11 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
  v12 = sub_1B63BE994();
  v13 = *(*(v12 - 8) + 56);
  v13(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR___MSReviewedPlace__latitude] = 0;
  *&v4[OBJC_IVAR___MSReviewedPlace__longitude] = 0;
  v50 = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation] = xmmword_1B63C3E40;
  v13(&v4[OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed], 1, 1, v12);
  *&v4[OBJC_IVAR___MSReviewedPlace__mapItemStorage] = v50;
  *&v4[OBJC_IVAR___MSReviewedPlace__muid] = 0;
  *&v4[OBJC_IVAR___MSReviewedPlace__positionIndex] = 0;
  *&v4[OBJC_IVAR___MSReviewedPlace__rating] = 0;
  *&v4[OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier] = 0;
  *&v4[OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount] = 0;
  *&v4[OBJC_IVAR___MSReviewedPlace__version] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v16 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v18 = sub_1B63BEA04();
  v19 = *(*(v18 - 8) + 56);
  v19(&v4[v17], 1, 1, v18);
  v13(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v12);
  v13(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v12);
  v20 = v51;
  v21 = v52;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v52;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v20;
  v22 = type metadata accessor for MapsSyncObject(0);
  v54.receiver = v4;
  v54.super_class = v22;
  v23 = v53;
  v24 = v21;
  v25 = objc_msgSendSuper2(&v54, sel_init);
  v26 = v25;
  if (v23)
  {
    v27 = v25;
    v28 = [v23 objectID];
    v29 = *(v27 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v27 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v28;

    (*((*MEMORY[0x1E69E7D40] & *v27) + 0x218))(v23, v20 & 1, v49 & 1);
  }

  else
  {
    v30 = v25;
    v31 = v48;
    sub_1B63BE9F4();
    v19(v31, 0, 1, v18);
    v32 = v45;
    sub_1B628C510(v31, v45, &unk_1EB943680, qword_1B63C4070);
    v33 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v32, &v30[v33], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v34 = v47;
    sub_1B628C510(v31, v47, &unk_1EB943680, qword_1B63C4070);
    v35 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v36 = swift_allocObject();
    sub_1B628A128(v34, v36 + v35, &unk_1EB943680, qword_1B63C4070);
    v37 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v38 = *&v30[v37];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v30[v37] = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1B629A8E8(0, v38[2] + 1, 1, v38);
      *&v30[v37] = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    if (v41 >= v40 >> 1)
    {
      v38 = sub_1B629A8E8((v40 > 1), v41 + 1, 1, v38);
    }

    v38[2] = v41 + 1;
    v42 = &v38[2 * v41];
    v42[4] = sub_1B62B2D5C;
    v42[5] = v36;
    *&v30[v37] = v38;
    swift_endAccess();

    sub_1B6284EAC(v31, &unk_1EB943680, qword_1B63C4070);
  }

  return v26;
}

void sub_1B6319358()
{
  sub_1B6284EAC(v0 + OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate, &unk_1EB943210, &unk_1B63C3F50);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation), *(v0 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8));
  sub_1B6284EAC(v0 + OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSReviewedPlace__mapItemStorage), *(v0 + OBJC_IVAR___MSReviewedPlace__mapItemStorage + 8));

  v1 = *(v0 + OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier);
}

id ReviewedPlace.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewedPlace(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B6319544(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v66 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v66 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v66 - v15;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedReviewedPlace();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    v19 = a1;
    v20 = [v18 hasUserReviewed];
    *(v2 + OBJC_IVAR___MSReviewedPlace__hasUserReviewed) = v20;
    if (a2)
    {
      v21 = sub_1B63BE994();
      (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
    }

    else
    {
      v22 = [v18 lastSuggestedReviewDate];
      if (v22)
      {
        v23 = v22;
        sub_1B63BE974();

        v24 = sub_1B63BE994();
        (*(*(v24 - 8) + 56))(v14, 0, 1, v24);
      }

      else
      {
        v25 = sub_1B63BE994();
        (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
      }

      sub_1B628A128(v14, v16, &unk_1EB943210, &unk_1B63C3F50);
    }

    v26 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
    swift_beginAccess();
    sub_1B6282DFC(v16, v2 + v26, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    if (a2)
    {
      v27 = *(v2 + OBJC_IVAR___MSReviewedPlace__latitude);
      *(v2 + OBJC_IVAR___MSReviewedPlace__latitude) = 0;

      v28 = *(v2 + OBJC_IVAR___MSReviewedPlace__longitude);
      *(v2 + OBJC_IVAR___MSReviewedPlace__longitude) = 0;

      v29 = *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation);
      v30 = *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8);
      *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation) = xmmword_1B63C3E40;
      sub_1B6284F64(v29, v30);
      v31 = sub_1B63BE994();
      (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    }

    else
    {
      v32 = [v18 latitude];
      v33 = *(v2 + OBJC_IVAR___MSReviewedPlace__latitude);
      *(v2 + OBJC_IVAR___MSReviewedPlace__latitude) = v32;

      v34 = [v18 longitude];
      v35 = *(v2 + OBJC_IVAR___MSReviewedPlace__longitude);
      *(v2 + OBJC_IVAR___MSReviewedPlace__longitude) = v34;

      v36 = [v18 mapItemIdComparableRepresentation];
      if (v36)
      {
        v37 = v36;
        v38 = sub_1B63BE924();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0xF000000000000000;
      }

      v41 = (v2 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation);
      v42 = *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation);
      v43 = *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8);
      *v41 = v38;
      v41[1] = v40;
      sub_1B6284F64(v42, v43);
      v44 = [v18 mapItemLastRefreshed];
      if (v44)
      {
        v45 = v44;
        sub_1B63BE974();

        v46 = 0;
      }

      else
      {
        v46 = 1;
      }

      v47 = sub_1B63BE994();
      (*(*(v47 - 8) + 56))(v8, v46, 1, v47);
      sub_1B628A128(v8, v11, &unk_1EB943210, &unk_1B63C3F50);
    }

    v48 = OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v11, v2 + v48, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    if ((a2 & 1) != 0 || (v49 = [v18 mapItemStorage]) == 0)
    {
      v51 = 0;
      v53 = 0xF000000000000000;
    }

    else
    {
      v50 = v49;
      v51 = sub_1B63BE924();
      v53 = v52;
    }

    v54 = (v2 + OBJC_IVAR___MSReviewedPlace__mapItemStorage);
    v55 = *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemStorage);
    v56 = *(v2 + OBJC_IVAR___MSReviewedPlace__mapItemStorage + 8);
    *v54 = v51;
    v54[1] = v53;
    sub_1B6284F64(v55, v56);
    v57 = [v18 muid];
    *(v2 + OBJC_IVAR___MSReviewedPlace__muid) = v57;
    v58 = [v18 positionIndex];
    *(v2 + OBJC_IVAR___MSReviewedPlace__positionIndex) = v58;
    if (a2)
    {
      v59 = *(v2 + OBJC_IVAR___MSReviewedPlace__rating);
      *(v2 + OBJC_IVAR___MSReviewedPlace__rating) = 0;

      v60 = 0;
    }

    else
    {
      v61 = [v18 rating];
      v62 = *(v2 + OBJC_IVAR___MSReviewedPlace__rating);
      *(v2 + OBJC_IVAR___MSReviewedPlace__rating) = v61;

      v60 = [v18 resultProviderIdentifier];
    }

    v63 = *(v2 + OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier);
    *(v2 + OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier) = v60;

    v64 = [v18 uploadedPhotosCount];
    *(v2 + OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount) = v64;
    v65 = [v18 version];

    *(v2 + OBJC_IVAR___MSReviewedPlace__version) = v65;
  }
}

id sub_1B6319B20(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15)
{
  v47 = a4;
  v41 = a8;
  v45 = a3;
  v44 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v41 - v23;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDB0F2A8;
  v49 = a2;
  sub_1B628C510(a2, v24, &unk_1EB943210, &unk_1B63C3F50);
  v26 = sub_1B63BE994();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = v28(v24, 1, v26);
  v50 = 0;
  if (v29 != 1)
  {
    v50 = sub_1B63BE954();
    (*(v27 + 8))(v24, v26);
  }

  if (a6 >> 60 == 15)
  {
    v42 = 0;
  }

  else
  {
    sub_1B629119C(a5, a6);
    v42 = sub_1B63BE904();
    sub_1B6284F64(a5, a6);
  }

  sub_1B628C510(a7, v22, &unk_1EB943210, &unk_1B63C3F50);
  v30 = v28(v22, 1, v26);
  v48 = a7;
  if (v30 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_1B63BE954();
    (*(v27 + 8))(v22, v26);
  }

  if (a9 >> 60 == 15)
  {
    v31 = 0;
  }

  else
  {
    v32 = v25;
    v33 = v41;
    sub_1B629119C(v41, a9);
    v31 = sub_1B63BE904();
    v34 = v33;
    v25 = v32;
    sub_1B6284F64(v34, a9);
  }

  WORD2(v40) = a15;
  LODWORD(v40) = a14;
  v35 = v43;
  v36 = v50;
  v37 = v42;
  v38 = [v46 initWithStore:v25 hasUserReviewed:v44 & 1 lastSuggestedReviewDate:v50 latitude:v45 longitude:v47 mapItemIdComparableRepresentation:v42 mapItemLastRefreshed:v43 mapItemStorage:v31 muid:a10 positionIndex:a11 rating:a12 resultProviderIdentifier:a13 uploadedPhotosCount:v40 version:?];

  sub_1B6284EAC(v48, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v49, &unk_1EB943210, &unk_1B63C3F50);
  return v38;
}

void sub_1B6319E74(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 17) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v6 + v11 + 16) & ~v6;
  v13 = (v8 + v12) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B6312ECC(a1, a2, *(v2 + 16), v2 + v7, *(v2 + v9), *(v2 + v10), *(v2 + v11), *(v2 + v11 + 8), v2 + v12, *(v2 + v13), *(v2 + v13 + 8), *(v2 + v14), *(v2 + v15), *(v2 + v16), *(v2 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 4));
}

id sub_1B631A028(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSReviewedPlace__latitude);
  *(v2 + OBJC_IVAR___MSReviewedPlace__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B631B870;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B631A200(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSReviewedPlace__longitude);
  *(v2 + OBJC_IVAR___MSReviewedPlace__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B631B84C;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B631A3D8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation);
  v8 = *(v3 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation);
  v9 = *(v3 + OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B631B828;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

id sub_1B631A68C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSReviewedPlace__mapItemStorage);
  v8 = *(v3 + OBJC_IVAR___MSReviewedPlace__mapItemStorage);
  v9 = *(v3 + OBJC_IVAR___MSReviewedPlace__mapItemStorage + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6282B88();
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B631B804;
    *(v11 + 24) = v10;
    v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v13 = *(v3 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B629A8E8(0, v13[2] + 1, 1, v13);
      *(v3 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B629A8E8((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B62B9488;
    v17[5] = v11;
    *(v3 + v12) = v13;
    swift_endAccess();
  }

  return [v6 unlock];
}

id sub_1B631A8CC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSReviewedPlace__rating);
  *(v2 + OBJC_IVAR___MSReviewedPlace__rating) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B631B7E0;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B631AAA4(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier);
  *(v2 + OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B631B7BC;
    *(v9 + 24) = v7;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v2 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v2 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v2 + v10) = v11;
    swift_endAccess();
  }

  return [v4 unlock];
}

uint64_t type metadata accessor for ReviewedPlace(uint64_t a1)
{
  result = qword_1EB942EB0;
  if (!qword_1EB942EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B631ACB0(uint64_t a1)
{
  sub_1B628CC34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id ServerEvaluationStatus.__allocating_init(arpStatus:positionIndex:rapStatus:reliabilityStatus:)(char a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  if (qword_1EDB0F2A0 != -1)
  {
    v13 = v10;
    swift_once();
    v10 = v13;
  }

  v11 = qword_1EDB0F2A8;

  return [v10 initWithStore:v11 arpStatus:a1 & 1 positionIndex:a2 rapStatus:a3 & 1 reliabilityStatus:a4 & 1];
}

id ServerEvaluationStatus.init(arpStatus:positionIndex:rapStatus:reliabilityStatus:)(char a1, uint64_t a2, char a3, char a4)
{
  if (qword_1EDB0F2A0 != -1)
  {
    v10 = a1;
    v11 = a3;
    swift_once();
    a1 = v10;
    a3 = v11;
  }

  v7 = a3 & 1;
  v8 = qword_1EDB0F2A8;

  return [v4 initWithStore:v8 arpStatus:a1 & 1 positionIndex:a2 rapStatus:v7 reliabilityStatus:a4 & 1];
}

char *ServerEvaluationStatus.__allocating_init(store:arpStatus:positionIndex:rapStatus:reliabilityStatus:)(void *a1, char a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = [objc_allocWithZone(v6) initWithStore_];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v14 = *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v15 = v12;
  [v14 lock];
  v15[OBJC_IVAR___MSServerEvaluationStatus__arpStatus] = a2;
  *&v15[OBJC_IVAR___MSServerEvaluationStatus__positionIndex] = a3;
  v15[OBJC_IVAR___MSServerEvaluationStatus__rapStatus] = a4;
  v15[OBJC_IVAR___MSServerEvaluationStatus__reliabilityStatus] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 33) = a5;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1B631D404;
    *(v17 + 24) = v16;
    v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v19 = *&v15[v18];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[v18] = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1B629A8E8(0, v19[2] + 1, 1, v19);
      *&v15[v18] = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1B629A8E8((v21 > 1), v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    v23 = &v19[2 * v22];
    v23[4] = sub_1B62B8188;
    v23[5] = v17;
    *&v15[v18] = v19;
    swift_endAccess();
  }

  [*&v12[v13] unlock];

  return v15;
}

char *ServerEvaluationStatus.init(store:arpStatus:positionIndex:rapStatus:reliabilityStatus:)(void *a1, char a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = [v6 initWithStore_];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v14 = *&v12[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v15 = v12;
  [v14 lock];
  v15[OBJC_IVAR___MSServerEvaluationStatus__arpStatus] = a2;
  *&v15[OBJC_IVAR___MSServerEvaluationStatus__positionIndex] = a3;
  v15[OBJC_IVAR___MSServerEvaluationStatus__rapStatus] = a4;
  v15[OBJC_IVAR___MSServerEvaluationStatus__reliabilityStatus] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 33) = a5;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1B631D940;
    *(v17 + 24) = v16;
    v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v19 = *&v15[v18];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[v18] = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1B629A8E8(0, v19[2] + 1, 1, v19);
      *&v15[v18] = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1B629A8E8((v21 > 1), v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    v23 = &v19[2 * v22];
    v23[4] = sub_1B62B9488;
    v23[5] = v17;
    *&v15[v18] = v19;
    swift_endAccess();
  }

  [*&v12[v13] unlock];

  return v15;
}

void sub_1B631BF10(uint64_t a1, void *a2, char a3, uint64_t a4, char a5, char a6)
{
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = a2;
    [v12 setArpStatus_];
    [v12 setPositionIndex_];
    [v12 setRapStatus_];
    [v12 setReliabilityStatus_];
  }
}

id sub_1B631C160(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSServerEvaluationStatus__arpStatus) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631D418;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B631C2FC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSServerEvaluationStatus__arpStatus);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B631C380;
}

uint64_t sub_1B631C418()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSServerEvaluationStatus__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B631C4C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSServerEvaluationStatus__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631D43C;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B631C660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B631C6C4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSServerEvaluationStatus__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B631C748;
}

id sub_1B631C7D8(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSServerEvaluationStatus__rapStatus) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631D444;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B631C974(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSServerEvaluationStatus__rapStatus);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B631C9F8;
}

uint64_t sub_1B631CA2C(char *a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *&a1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v7 = a1;
  [v6 lock];
  v8 = v7[*a3];
  [*&a1[v5] unlock];

  return v8;
}

uint64_t sub_1B631CAB0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + *a1);
  [v3 unlock];
  return v4;
}

id sub_1B631CB64(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSServerEvaluationStatus__reliabilityStatus) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631D468;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B631CD00(uint64_t a1, uint64_t a2, char a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B631CD70(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSServerEvaluationStatus__reliabilityStatus);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B631CDF4;
}

void *sub_1B631CE1C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B631CE78(a1, a2, v6, v5);
}

void *sub_1B631CE78(void *a1, void *a2, int a3, int a4)
{
  v50 = a4;
  v51 = a3;
  v52 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v45 - v11;
  v4[OBJC_IVAR___MSServerEvaluationStatus__arpStatus] = 0;
  *&v4[OBJC_IVAR___MSServerEvaluationStatus__positionIndex] = 0;
  v4[OBJC_IVAR___MSServerEvaluationStatus__rapStatus] = 0;
  v4[OBJC_IVAR___MSServerEvaluationStatus__reliabilityStatus] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v12 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v14 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v16 = sub_1B63BEA04();
  v17 = *(*(v16 - 8) + 56);
  v17(&v4[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v19 = sub_1B63BE994();
  v20 = *(*(v19 - 8) + 56);
  v21 = &v4[v18];
  v22 = v51;
  v20(v21, 1, 1, v19);
  v20(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v19);
  v23 = v52;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v22;
  v24 = type metadata accessor for MapsSyncObject(0);
  v53.receiver = v4;
  v53.super_class = v24;
  v25 = a2;
  v26 = objc_msgSendSuper2(&v53, sel_init);
  v27 = v26;
  if (v23)
  {
    v28 = v26;
    v29 = [v23 objectID];
    v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

    (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v23, v22 & 1, v50 & 1);
  }

  else
  {
    v31 = v26;
    v32 = v49;
    sub_1B63BE9F4();
    v17(v32, 0, 1, v16);
    v33 = v46;
    sub_1B62B2C0C(v32, v46);
    v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v33, &v31[v34]);
    swift_endAccess();
    v35 = v48;
    sub_1B62B2C0C(v32, v48);
    v36 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v37 = swift_allocObject();
    sub_1B62B2CEC(v35, v37 + v36);
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v39 = *&v31[v38];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[v38] = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
      *&v31[v38] = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1B629A8E8((v41 > 1), v42 + 1, 1, v39);
    }

    v39[2] = v42 + 1;
    v43 = &v39[2 * v42];
    v43[4] = sub_1B62B2D5C;
    v43[5] = v37;
    *&v31[v38] = v39;
    swift_endAccess();

    sub_1B62B2DF0(v32);
  }

  return v27;
}

id ServerEvaluationStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerEvaluationStatus(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ServerEvaluationStatus(uint64_t a1)
{
  result = qword_1EB943310;
  if (!qword_1EB943310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  [*(*a1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  LOBYTE(a2) = *(v5 + *a2);
  result = [*(v5 + v6) unlock];
  *a3 = a2;
  return result;
}

void sub_1B631D878(void *a1)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 arpStatus];
    *(v1 + OBJC_IVAR___MSServerEvaluationStatus__arpStatus) = v6;
    v7 = [v4 positionIndex];
    *(v1 + OBJC_IVAR___MSServerEvaluationStatus__positionIndex) = v7;
    v8 = [v4 rapStatus];
    *(v1 + OBJC_IVAR___MSServerEvaluationStatus__rapStatus) = v8;
    LOBYTE(v4) = [v4 reliabilityStatus];

    *(v1 + OBJC_IVAR___MSServerEvaluationStatus__reliabilityStatus) = v4;
  }
}

id SharedTripBlockedItem.__allocating_init(expiryTime:sharedTripIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = objc_allocWithZone(v4);
  if (qword_1EDB0F2A0 != -1)
  {
    v13 = v7;
    swift_once();
    v7 = v13;
  }

  v8 = qword_1EDB0F2A8;
  if (a3)
  {
    v9 = v7;
    v10 = sub_1B63BEBC4();

    v7 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 initWithStore:v8 expiryTime:a1 sharedTripIdentifier:v10];

  return v11;
}

id SharedTripBlockedItem.init(expiryTime:sharedTripIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDB0F2A0 != -1)
  {
    v9 = a3;
    swift_once();
    a3 = v9;
  }

  v5 = qword_1EDB0F2A8;
  if (a3)
  {
    v6 = sub_1B63BEBC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithStore:v5 expiryTime:a1 sharedTripIdentifier:v6];

  return v7;
}

char *SharedTripBlockedItem.init(store:expiryTime:sharedTripIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [v5 initWithStore_];
  v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v12 = *&v10[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v13 = v10;
  [v12 lock];
  *&v13[OBJC_IVAR___MSSharedTripBlockedItem__expiryTime] = a2;
  v14 = &v13[OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier];
  *v14 = a3;
  *(v14 + 1) = a4;

  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1B631F2B0;
    *(v16 + 24) = v15;
    v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v18 = *&v13[v17];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v13[v17] = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1B629A8E8(0, v18[2] + 1, 1, v18);
      *&v13[v17] = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_1B629A8E8((v20 > 1), v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    v22 = &v18[2 * v21];
    v22[4] = sub_1B62B8188;
    v22[5] = v16;
    *&v13[v17] = v18;
    swift_endAccess();
  }

  [*&v10[v11] unlock];

  return v13;
}

void sub_1B631DE2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    [v9 setExpiryTime_];
    if (a5)
    {
      v11 = sub_1B63BEBC4();
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v9 setSharedTripIdentifier_];
  }
}

uint64_t sub_1B631E08C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSSharedTripBlockedItem__expiryTime);
  [v1 unlock];
  return v2;
}

id sub_1B631E138(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSSharedTripBlockedItem__expiryTime) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B631F2BC;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id sub_1B631E2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setExpiryTime_];
  }

  return result;
}

id (*sub_1B631E338(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSSharedTripBlockedItem__expiryTime);
  [v3 unlock];
  *a1 = v4;
  return sub_1B631E3BC;
}

uint64_t sub_1B631E458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier);
  v6 = *(v2 + OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B631F2C4;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_19;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B631F2C4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B631E864(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B631F2D0;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B631EA1C(void *a1, uint64_t a2, uint64_t *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v16];
  v5 = v16[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 sharedTripIdentifier]) != 0)
    {
      v10 = v9;
      v11 = sub_1B63BEBD4();
      v13 = v12;

      *a3 = v11;
      a3[1] = v13;
    }

    else
    {
    }
  }

  else
  {
    v14 = v16[0];
    v15 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B631EB40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4)
    {
      v9 = sub_1B63BEBC4();
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [v7 setSharedTripIdentifier_];
  }
}

id (*sub_1B631EBF8(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B631E458(a1, a2);
  a1[1] = v4;
  return sub_1B631EC40;
}

id sub_1B631EC40(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1B631E864(*a1, v2);
  }

  sub_1B631E864(v3, v2);
}

void *sub_1B631ECB4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B631ED10(a1, a2, v6, v5);
}

void *sub_1B631ED10(void *a1, void *a2, int a3, int a4)
{
  v51 = a4;
  v52 = a3;
  v53 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v46 - v11;
  *&v4[OBJC_IVAR___MSSharedTripBlockedItem__expiryTime] = 0;
  v12 = &v4[OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v15 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v17 = sub_1B63BEA04();
  v18 = *(*(v17 - 8) + 56);
  v18(&v4[v16], 1, 1, v17);
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v20 = sub_1B63BE994();
  v21 = *(*(v20 - 8) + 56);
  v22 = &v4[v19];
  v23 = v52;
  v21(v22, 1, 1, v20);
  v21(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v20);
  v24 = v53;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v23;
  v25 = type metadata accessor for MapsSyncObject(0);
  v54.receiver = v4;
  v54.super_class = v25;
  v26 = a2;
  v27 = objc_msgSendSuper2(&v54, sel_init);
  v28 = v27;
  if (v24)
  {
    v29 = v27;
    v30 = [v24 objectID];
    v31 = *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v29 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v30;

    (*((*MEMORY[0x1E69E7D40] & *v29) + 0x218))(v24, v23 & 1, v51 & 1);
  }

  else
  {
    v32 = v27;
    v33 = v50;
    sub_1B63BE9F4();
    v18(v33, 0, 1, v17);
    v34 = v47;
    sub_1B62B2C0C(v33, v47);
    v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v34, &v32[v35]);
    swift_endAccess();
    v36 = v49;
    sub_1B62B2C0C(v33, v49);
    v37 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v38 = swift_allocObject();
    sub_1B62B2CEC(v36, v38 + v37);
    v39 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v40 = *&v32[v39];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[v39] = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_1B629A8E8(0, v40[2] + 1, 1, v40);
      *&v32[v39] = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_1B629A8E8((v42 > 1), v43 + 1, 1, v40);
    }

    v40[2] = v43 + 1;
    v44 = &v40[2 * v43];
    v44[4] = sub_1B62B2D5C;
    v44[5] = v38;
    *&v32[v39] = v40;
    swift_endAccess();

    sub_1B62B2DF0(v33);
  }

  return v28;
}

id SharedTripBlockedItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedTripBlockedItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharedTripBlockedItem(uint64_t a1)
{
  result = qword_1EDB0E448;
  if (!qword_1EDB0E448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1B631F4F4(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    v7 = a1;
    v8 = [v6 expiryTime];
    *(v2 + OBJC_IVAR___MSSharedTripBlockedItem__expiryTime) = v8;
    if ((a2 & 1) != 0 || (v9 = [v6 sharedTripIdentifier]) == 0)
    {

      v11 = 0;
      v13 = 0;
    }

    else
    {
      v10 = v9;
      v11 = sub_1B63BEBD4();
      v13 = v12;
    }

    v14 = (v2 + OBJC_IVAR___MSSharedTripBlockedItem__sharedTripIdentifier);
    *v14 = v11;
    v14[1] = v13;
  }

  return result;
}

id UserRoute.__allocating_init(addressObject:customName:customNote:eastLongitude:hikeType:length:northLatitude:originLatitude:originLongitude:positionIndex:routeGeometry:southLatitude:totalAscent:totalDescent:tourIdentifier:transportType:westLongitude:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, unint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21)
{
  v22 = v21;
  v30 = objc_allocWithZone(v22);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v31 = qword_1EDB0F2A8;
  if (a2 >> 60 == 15)
  {
    v34 = 0;
    if (a4)
    {
LABEL_5:
      v37 = sub_1B63BEBC4();

      goto LABEL_8;
    }
  }

  else
  {
    sub_1B629119C(a1, a2);
    v34 = sub_1B63BE904();
    sub_1B6284F64(a1, a2);
    if (a4)
    {
      goto LABEL_5;
    }
  }

  v37 = 0;
LABEL_8:
  if (a6)
  {
    v36 = sub_1B63BEBC4();
  }

  else
  {
    v36 = 0;
  }

  v27 = a13;
  if (a15 >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    sub_1B629119C(a14, a15);
    v28 = sub_1B63BE904();
    sub_1B6284F64(a14, a15);
    v27 = a13;
  }

  v33 = [v30 initWithStore:v31 addressObject:v34 customName:v37 customNote:v36 eastLongitude:a7 hikeType:a8 length:a9 northLatitude:a10 originLatitude:a11 originLongitude:a12 positionIndex:v27 routeGeometry:v28 southLatitude:a16 totalAscent:a17 totalDescent:a18 tourIdentifier:a19 transportType:a20 westLongitude:a21];

  sub_1B6284F64(a14, a15);
  sub_1B6284F64(a1, a2);

  return v33;
}

id UserRoute.init(addressObject:customName:customNote:eastLongitude:hikeType:length:northLatitude:originLatitude:originLongitude:positionIndex:routeGeometry:southLatitude:totalAscent:totalDescent:tourIdentifier:transportType:westLongitude:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, unint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21)
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDB0F2A8;
  if (a2 >> 60 == 15)
  {
    v36 = 0;
    if (a4)
    {
LABEL_5:
      v30 = sub_1B63BEBC4();

      goto LABEL_8;
    }
  }

  else
  {
    sub_1B629119C(a1, a2);
    v36 = sub_1B63BE904();
    sub_1B6284F64(a1, a2);
    if (a4)
    {
      goto LABEL_5;
    }
  }

  v30 = 0;
LABEL_8:
  if (a6)
  {
    v35 = sub_1B63BEBC4();
  }

  else
  {
    v35 = 0;
  }

  v25 = a19;
  v26 = a13;
  if (a15 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    sub_1B629119C(a14, a15);
    v27 = sub_1B63BE904();
    sub_1B6284F64(a14, a15);
    v26 = a13;
    v25 = a19;
  }

  v33 = [v31 initWithStore:v29 addressObject:v36 customName:v30 customNote:v35 eastLongitude:a7 hikeType:a8 length:a9 northLatitude:a10 originLatitude:a11 originLongitude:a12 positionIndex:v26 routeGeometry:v27 southLatitude:a16 totalAscent:a17 totalDescent:a18 tourIdentifier:v25 transportType:a20 westLongitude:a21];

  sub_1B6284F64(a14, a15);
  sub_1B6284F64(a1, a2);

  return v33;
}

char *UserRoute.__allocating_init(store:addressObject:customName:customNote:eastLongitude:hikeType:length:northLatitude:originLatitude:originLongitude:positionIndex:routeGeometry:southLatitude:totalAscent:totalDescent:tourIdentifier:transportType:westLongitude:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, unint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22)
{
  v23 = v22;
  v29 = [objc_allocWithZone(v23) initWithStore_];
  v30 = *&v29[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v87 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v88 = v29;
  v31 = v29;
  [v30 lock];
  v32 = &v31[OBJC_IVAR___MSUserRoute__addressObject];
  v33 = *&v31[OBJC_IVAR___MSUserRoute__addressObject];
  v34 = *&v31[OBJC_IVAR___MSUserRoute__addressObject + 8];
  v89 = a2;
  v90 = a3;
  *v32 = a2;
  *(v32 + 1) = a3;
  sub_1B6291034(a2, a3);
  sub_1B6284F64(v33, v34);
  v35 = &v31[OBJC_IVAR___MSUserRoute__customName];
  *v35 = a4;
  *(v35 + 1) = a5;

  v36 = &v31[OBJC_IVAR___MSUserRoute__customNote];
  *v36 = a6;
  *(v36 + 1) = a7;

  v37 = *&v31[OBJC_IVAR___MSUserRoute__eastLongitude];
  *&v31[OBJC_IVAR___MSUserRoute__eastLongitude] = a8;
  v77 = a8;

  *&v31[OBJC_IVAR___MSUserRoute__hikeType] = a9;
  v38 = *&v31[OBJC_IVAR___MSUserRoute__length];
  *&v31[OBJC_IVAR___MSUserRoute__length] = a10;
  v75 = a10;

  v39 = *&v31[OBJC_IVAR___MSUserRoute__northLatitude];
  *&v31[OBJC_IVAR___MSUserRoute__northLatitude] = a11;
  v73 = a11;

  v40 = *&v31[OBJC_IVAR___MSUserRoute__originLatitude];
  *&v31[OBJC_IVAR___MSUserRoute__originLatitude] = a12;
  v72 = a12;

  v41 = *&v31[OBJC_IVAR___MSUserRoute__originLongitude];
  *&v31[OBJC_IVAR___MSUserRoute__originLongitude] = a13;
  v71 = a13;

  *&v31[OBJC_IVAR___MSUserRoute__positionIndex] = a14;
  v42 = &v31[OBJC_IVAR___MSUserRoute__routeGeometry];
  v43 = *&v31[OBJC_IVAR___MSUserRoute__routeGeometry];
  v44 = *&v31[OBJC_IVAR___MSUserRoute__routeGeometry + 8];
  *v42 = a15;
  *(v42 + 1) = a16;
  sub_1B6291034(a15, a16);
  sub_1B6284F64(v43, v44);
  v45 = *&v31[OBJC_IVAR___MSUserRoute__southLatitude];
  *&v31[OBJC_IVAR___MSUserRoute__southLatitude] = a17;
  v70 = a17;

  v46 = *&v31[OBJC_IVAR___MSUserRoute__totalAscent];
  *&v31[OBJC_IVAR___MSUserRoute__totalAscent] = a18;
  v69 = a18;

  v47 = *&v31[OBJC_IVAR___MSUserRoute__totalDescent];
  *&v31[OBJC_IVAR___MSUserRoute__totalDescent] = a19;
  v68 = a19;

  *&v31[OBJC_IVAR___MSUserRoute__tourIdentifier] = a20;
  v48 = *&v31[OBJC_IVAR___MSUserRoute__transportType];
  *&v31[OBJC_IVAR___MSUserRoute__transportType] = a21;
  v67 = a21;

  v49 = *&v31[OBJC_IVAR___MSUserRoute__westLongitude];
  *&v31[OBJC_IVAR___MSUserRoute__westLongitude] = a22;
  v66 = a22;

  v50 = swift_allocObject();
  v50[2] = a2;
  v50[3] = a3;
  v50[4] = a4;
  v50[5] = a5;
  v50[6] = a6;
  v50[7] = a7;
  v50[8] = a8;
  v50[9] = a9;
  v50[10] = a10;
  v50[11] = a11;
  v50[12] = a12;
  v50[13] = a13;
  v50[14] = a14;
  v50[15] = a15;
  v50[16] = a16;
  v50[17] = a17;
  v50[18] = a18;
  v50[19] = a19;
  v50[20] = a20;
  v50[21] = a21;
  v50[22] = a22;
  sub_1B6282B88();
  sub_1B6291034(a2, a3);
  v51 = v77;
  v52 = v75;
  v53 = v73;
  v86 = v72;
  v85 = v71;
  sub_1B6291034(a15, a16);
  v54 = v70;
  v55 = v69;
  v56 = v68;
  v84 = v67;
  v82 = v66;
  if (sub_1B63BEF24())
  {
    v78 = v56;
    v81 = v51;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1B6326B90;
    *(v57 + 24) = v50;
    v58 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v59 = *&v31[v58];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[v58] = v59;
    v61 = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = sub_1B629A8E8(0, v59[2] + 1, 1, v59);
      *&v31[v58] = v59;
    }

    v63 = v59[2];
    v62 = v59[3];
    if (v63 >= v62 >> 1)
    {
      v59 = sub_1B629A8E8((v62 > 1), v63 + 1, 1, v59);
    }

    v59[2] = v63 + 1;
    v64 = &v59[2 * v63];
    v64[4] = sub_1B62B8188;
    v64[5] = v57;
    *&v31[v58] = v59;
    swift_endAccess();

    v51 = v81;
    v52 = v61;
    v56 = v78;
  }

  else
  {
  }

  [*&v88[v87] unlock];

  sub_1B6284F64(a15, a16);
  sub_1B6284F64(v89, v90);

  return v31;
}

char *UserRoute.init(store:addressObject:customName:customNote:eastLongitude:hikeType:length:northLatitude:originLatitude:originLongitude:positionIndex:routeGeometry:southLatitude:totalAscent:totalDescent:tourIdentifier:transportType:westLongitude:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, unint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22)
{
  v23 = v22;
  v29 = [v23 initWithStore_];
  v30 = *&v29[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v87 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v88 = v29;
  v31 = v29;
  [v30 lock];
  v32 = &v31[OBJC_IVAR___MSUserRoute__addressObject];
  v33 = *&v31[OBJC_IVAR___MSUserRoute__addressObject];
  v34 = *&v31[OBJC_IVAR___MSUserRoute__addressObject + 8];
  v89 = a2;
  v90 = a3;
  *v32 = a2;
  *(v32 + 1) = a3;
  sub_1B6291034(a2, a3);
  sub_1B6284F64(v33, v34);
  v35 = &v31[OBJC_IVAR___MSUserRoute__customName];
  *v35 = a4;
  *(v35 + 1) = a5;

  v36 = &v31[OBJC_IVAR___MSUserRoute__customNote];
  *v36 = a6;
  *(v36 + 1) = a7;

  v37 = *&v31[OBJC_IVAR___MSUserRoute__eastLongitude];
  *&v31[OBJC_IVAR___MSUserRoute__eastLongitude] = a8;
  v77 = a8;

  *&v31[OBJC_IVAR___MSUserRoute__hikeType] = a9;
  v38 = *&v31[OBJC_IVAR___MSUserRoute__length];
  *&v31[OBJC_IVAR___MSUserRoute__length] = a10;
  v75 = a10;

  v39 = *&v31[OBJC_IVAR___MSUserRoute__northLatitude];
  *&v31[OBJC_IVAR___MSUserRoute__northLatitude] = a11;
  v73 = a11;

  v40 = *&v31[OBJC_IVAR___MSUserRoute__originLatitude];
  *&v31[OBJC_IVAR___MSUserRoute__originLatitude] = a12;
  v72 = a12;

  v41 = *&v31[OBJC_IVAR___MSUserRoute__originLongitude];
  *&v31[OBJC_IVAR___MSUserRoute__originLongitude] = a13;
  v71 = a13;

  *&v31[OBJC_IVAR___MSUserRoute__positionIndex] = a14;
  v42 = &v31[OBJC_IVAR___MSUserRoute__routeGeometry];
  v43 = *&v31[OBJC_IVAR___MSUserRoute__routeGeometry];
  v44 = *&v31[OBJC_IVAR___MSUserRoute__routeGeometry + 8];
  *v42 = a15;
  *(v42 + 1) = a16;
  sub_1B6291034(a15, a16);
  sub_1B6284F64(v43, v44);
  v45 = *&v31[OBJC_IVAR___MSUserRoute__southLatitude];
  *&v31[OBJC_IVAR___MSUserRoute__southLatitude] = a17;
  v70 = a17;

  v46 = *&v31[OBJC_IVAR___MSUserRoute__totalAscent];
  *&v31[OBJC_IVAR___MSUserRoute__totalAscent] = a18;
  v69 = a18;

  v47 = *&v31[OBJC_IVAR___MSUserRoute__totalDescent];
  *&v31[OBJC_IVAR___MSUserRoute__totalDescent] = a19;
  v68 = a19;

  *&v31[OBJC_IVAR___MSUserRoute__tourIdentifier] = a20;
  v48 = *&v31[OBJC_IVAR___MSUserRoute__transportType];
  *&v31[OBJC_IVAR___MSUserRoute__transportType] = a21;
  v67 = a21;

  v49 = *&v31[OBJC_IVAR___MSUserRoute__westLongitude];
  *&v31[OBJC_IVAR___MSUserRoute__westLongitude] = a22;
  v66 = a22;

  v50 = swift_allocObject();
  v50[2] = a2;
  v50[3] = a3;
  v50[4] = a4;
  v50[5] = a5;
  v50[6] = a6;
  v50[7] = a7;
  v50[8] = a8;
  v50[9] = a9;
  v50[10] = a10;
  v50[11] = a11;
  v50[12] = a12;
  v50[13] = a13;
  v50[14] = a14;
  v50[15] = a15;
  v50[16] = a16;
  v50[17] = a17;
  v50[18] = a18;
  v50[19] = a19;
  v50[20] = a20;
  v50[21] = a21;
  v50[22] = a22;
  sub_1B6282B88();
  sub_1B6291034(a2, a3);
  v51 = v77;
  v52 = v75;
  v53 = v73;
  v54 = v72;
  v86 = v71;
  sub_1B6291034(a15, a16);
  v55 = v70;
  v85 = v69;
  v84 = v68;
  v82 = v67;
  v56 = v66;
  if (sub_1B63BEF24())
  {
    v79 = v54;
    v81 = v52;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1B63296B8;
    *(v57 + 24) = v50;
    v58 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v59 = *&v31[v58];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[v58] = v59;
    v61 = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = sub_1B629A8E8(0, v59[2] + 1, 1, v59);
      *&v31[v58] = v59;
    }

    v63 = v59[2];
    v62 = v59[3];
    if (v63 >= v62 >> 1)
    {
      v59 = sub_1B629A8E8((v62 > 1), v63 + 1, 1, v59);
    }

    v59[2] = v63 + 1;
    v64 = &v59[2 * v63];
    v64[4] = sub_1B62B9488;
    v64[5] = v57;
    *&v31[v58] = v59;
    swift_endAccess();

    v53 = v61;
    v54 = v79;
    v52 = v81;
  }

  else
  {
  }

  [*&v88[v87] unlock];

  sub_1B6284F64(a15, a16);
  sub_1B6284F64(v89, v90);

  return v31;
}

void sub_1B6320878(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  type metadata accessor for MapsSyncManagedUserRoute();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v32 = a2;
    if (a4 >> 60 == 15)
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_1B63BE904();
    }

    [v28 setAddressObject_];

    if (a6)
    {
      a6 = sub_1B63BEBC4();
    }

    [v28 setCustomName_];

    if (a8)
    {
      v30 = sub_1B63BEBC4();
    }

    else
    {
      v30 = 0;
    }

    [v28 setCustomNote_];

    [v28 setEastLongitude_];
    [v28 setHikeType_];
    [v28 setLength_];
    [v28 setNorthLatitude_];
    [v28 setOriginLatitude_];
    [v28 setOriginLongitude_];
    [v28 setPositionIndex_];
    if (a17 >> 60 == 15)
    {
      v31 = 0;
    }

    else
    {
      v31 = sub_1B63BE904();
    }

    [v28 setRouteGeometry_];

    [v28 setSouthLatitude_];
    [v28 setTotalAscent_];
    [v28 setTotalDescent_];
    [v28 setTourIdentifier_];
    [v28 setTransportType_];
    [v28 setWestLongitude_];
  }
}

uint64_t sub_1B6320E74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSUserRoute__addressObject);
  v7 = *(v3 + OBJC_IVAR___MSUserRoute__addressObject + 8);
  v24 = v6;
  v25 = v7;
  sub_1B6291034(v6, v7);
  sub_1B6284F64(0, 0xF000000000000000);
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v7 >> 60 != 15)
  {
    sub_1B6291034(v6, v7);
    v10 = 0;
    v11 = 0;
    v12 = v6;
LABEL_17:
    sub_1B6284F64(v6, v7);
    sub_1B62B1F7C(v10, v11);
    return v12;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v13 = sub_1B63BF364();

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v15 = sub_1B629409C();
  v17 = v16;

  if (v17)
  {
    v23[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  [v5 lock];
  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v11;
  [v5 unlock];
  if (!v11)
  {
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v11 = swift_allocObject();
  v11[2] = v15;
  v11[3] = v18;
  v11[4] = &v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6326BE8;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_20;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v15);

  [v15 performBlockAndWait_];
  sub_1B6295C20(v15);

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    v12 = v24;
    sub_1B6291034(v24, v25);
    v6 = v24;
    v7 = v25;
    v10 = sub_1B6326BE8;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6321244(uint64_t a1, unint64_t a2)
{
  sub_1B6327108(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t (*sub_1B632128C(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6320E74(a1, a2);
  a1[1] = v4;
  return sub_1B63212D4;
}

uint64_t sub_1B6321304(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSUserRoute__customName);
  v6 = *(v2 + OBJC_IVAR___MSUserRoute__customName + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B63272D8;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_27_2;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B63272D8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B63216A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSUserRoute__customName);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6327300;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

uint64_t (*sub_1B6321860(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6321304(a1, a2);
  a1[1] = v4;
  return sub_1B63218A8;
}

id sub_1B63218D8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1B63BEBC4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1B6321958(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSUserRoute__customNote);
  v6 = *(v2 + OBJC_IVAR___MSUserRoute__customNote + 8);
  v24[0] = v7;
  v24[1] = v6;

  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {

LABEL_13:
    v15 = 0;
    v16 = 0;
LABEL_14:

    sub_1B62B1F7C(v15, v16);
    return v7;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v10 = sub_1B63BF364();

  if (v10)
  {
    goto LABEL_9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v12 = sub_1B629409C();
  v14 = v13;

  if (v14)
  {
    v23[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v12);
    v7 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v16;
  [v5 unlock];
  if (!v16)
  {
    sub_1B6295C20(v12);
    v7 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v18;
  v16[4] = v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6327324;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_44_2;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v12);

  [v12 performBlockAndWait_];
  sub_1B6295C20(v12);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = v24[0];

    v15 = sub_1B6327324;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6321CFC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1B63BEBD4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

id sub_1B6321D84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSUserRoute__customNote);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B632734C;
    *(v9 + 24) = v8;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v11 = *(v3 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B629A8E8(0, v11[2] + 1, 1, v11);
      *(v3 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B629A8E8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1B62B9488;
    v15[5] = v9;
    *(v3 + v10) = v11;
    swift_endAccess();
  }

  return [v6 unlock];
}

void sub_1B6321F3C(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v18];
  v7 = v18[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedUserRoute();
    v9 = swift_dynamicCastClass();
    v10 = v7;
    if (v9 && (v11 = [v9 *a4]) != 0)
    {
      v12 = v11;
      v13 = sub_1B63BEBD4();
      v15 = v14;

      *a3 = v13;
      a3[1] = v15;
    }

    else
    {
    }
  }

  else
  {
    v16 = v18[0];
    v17 = sub_1B63BE824();

    swift_willThrow();
  }
}

void sub_1B6322060(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedUserRoute();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    if (a4)
    {
      v11 = sub_1B63BEBC4();
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v9 *a5];
  }
}

uint64_t (*sub_1B6322124(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6321958(a1, a2);
  a1[1] = v4;
  return sub_1B632216C;
}

uint64_t sub_1B6322184(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

id sub_1B6322248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSUserRoute__eastLongitude);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B6327370;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_62_3;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B6327370;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6322608(void *a1)
{
  sub_1B6327398(a1);
}

void (*sub_1B6322640(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B6322248(a1, a2);
  return sub_1B6322688;
}

id sub_1B632270C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSUserRoute__hikeType) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6327548;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B63228A8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__hikeType);
  [v3 unlock];
  *a1 = v4;
  return sub_1B632292C;
}

id sub_1B6322994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSUserRoute__length);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B632756C;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_79;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B632756C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6322D54(void *a1)
{
  sub_1B6327594(a1);
}

void (*sub_1B6322D8C(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B6322994(a1, a2);
  return sub_1B6322DD4;
}

void sub_1B6322DEC(id *a1, char a2, void (*a3)(id))
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    a3(v6);

    v5 = v4;
  }

  else
  {
    a3(*a1);
    v5 = v6;
  }
}

id sub_1B6322EB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSUserRoute__northLatitude);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B6327744;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_90_1;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B6327744;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6323270(void *a1)
{
  sub_1B632776C(a1);
}

void (*sub_1B63232A8(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B6322EB0(a1, a2);
  return sub_1B63232F0;
}

id sub_1B632334C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSUserRoute__originLatitude);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B632791C;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_101;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B632791C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B632370C(void *a1)
{
  sub_1B6327944(a1);
}

void (*sub_1B6323744(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B632334C(a1, a2);
  return sub_1B632378C;
}

id sub_1B63237E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSUserRoute__originLongitude);
  v26 = v6;
  v7 = v6;
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 != 0)
  {
    v10 = v7;
LABEL_13:
    v16 = 0;
    v17 = 0;
LABEL_14:

    sub_1B62B1F7C(v16, v17);
    return v6;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v11 = sub_1B63BF364();

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v13 = sub_1B629409C();
  v15 = v14;

  if (v15)
  {
    aBlock[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v13);
    v6 = 0;
    goto LABEL_13;
  }

  [v5 lock];
  v17 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v19 = v17;
  [v5 unlock];
  if (!v17)
  {
    sub_1B6295C20(v13);
    v6 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v19;
  v17[4] = &v26;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B6327AF4;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_112_0;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  sub_1B62B1FC0(v13);

  [v13 performBlockAndWait_];
  sub_1B6295C20(v13);

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = v26;
    v24 = v26;
    v16 = sub_1B6327AF4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6323BA8(void *a1)
{
  sub_1B6327B1C(a1);
}

void (*sub_1B6323BE0(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B63237E8(a1, a2);
  return sub_1B6323C28;
}

id sub_1B6323CAC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSUserRoute__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6327CCC;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B629A8E8(0, v8[2] + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B629A8E8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1B62B9488;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B6323E48(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B6323ECC;
}

id sub_1B6323F08(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1B63BE904();
    sub_1B6284F64(v5, v7);
    v8 = v9;
  }

  return v8;
}

uint64_t sub_1B6323F94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSUserRoute__routeGeometry);
  v7 = *(v3 + OBJC_IVAR___MSUserRoute__routeGeometry + 8);
  v24 = v6;
  v25 = v7;
  sub_1B6291034(v6, v7);
  sub_1B6284F64(0, 0xF000000000000000);
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v7 >> 60 != 15)
  {
    sub_1B6291034(v6, v7);
    v10 = 0;
    v11 = 0;
    v12 = v6;
LABEL_17:
    sub_1B6284F64(v6, v7);
    sub_1B62B1F7C(v10, v11);
    return v12;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_9:
    v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_11;
  }

  v13 = sub_1B63BF364();

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_11:

  v15 = sub_1B629409C();
  v17 = v16;

  if (v17)
  {
    v23[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  [v5 lock];
  v11 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v18 = v11;
  [v5 unlock];
  if (!v11)
  {
    sub_1B6295C20(v15);
    v12 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v11 = swift_allocObject();
  v11[2] = v15;
  v11[3] = v18;
  v11[4] = &v24;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6327CF0;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_131;
  v20 = _Block_copy(v23);
  v21 = v18;
  sub_1B62B1FC0(v15);

  [v15 performBlockAndWait_];
  sub_1B6295C20(v15);

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    v12 = v24;
    sub_1B6291034(v24, v25);
    v6 = v24;
    v7 = v25;
    v10 = sub_1B6327CF0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}