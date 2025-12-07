id sub_1B633FF80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid);
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
  *(v20 + 16) = sub_1B63482F0;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B8284;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_23;
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
    v16 = sub_1B63482F0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6340340(void *a1)
{
  sub_1B6348318(a1);
}

void (*sub_1B6340378(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B633FF80(a1, a2);
  return sub_1B63403C0;
}

id sub_1B634041C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider);
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
  *(v20 + 16) = sub_1B63484D8;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_27_3;
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
    v16 = sub_1B63484D8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63407DC(void *a1)
{
  sub_1B6348500(a1);
}

void (*sub_1B6340814(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B634041C(a1, a2);
  return sub_1B634085C;
}

uint64_t sub_1B63408E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSVisitedLocation__hidden);
  [v1 unlock];
  return v2;
}

id sub_1B6340990(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSVisitedLocation__hidden) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B63486C0;
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

id sub_1B6340B3C(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedVisitedLocation();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setHidden_];
  }

  return result;
}

id (*sub_1B6340BA0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisitedLocation__hidden);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B6340C24;
}

uint64_t sub_1B6340C64@<X0>(char *a2@<X8>)
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
  v13 = OBJC_IVAR___MSVisitedLocation__latestVisitDate;
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
  *(v26 + 16) = sub_1B63486C8;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_45;
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

id sub_1B6341190(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSVisitedLocation__latitude);
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
  *(v20 + 16) = sub_1B63486F0;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_55_1;
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
    v16 = sub_1B63486F0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6341550(void *a1)
{
  sub_1B6348718(a1);
}

void (*sub_1B6341588(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B6341190(a1, a2);
  return sub_1B63415D0;
}

id sub_1B634162C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSVisitedLocation__longitude);
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
  *(v20 + 16) = sub_1B63488D8;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_66_0;
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
    v16 = sub_1B63488D8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63419EC(void *a1)
{
  sub_1B6348900(a1);
}

void (*sub_1B6341A24(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B634162C(a1, a2);
  return sub_1B6341A6C;
}

uint64_t sub_1B6341A9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemAddress);
  v6 = *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemAddress + 8);
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
  *(v19 + 16) = sub_1B6348AC0;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_77;
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

    v15 = sub_1B6348AC0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6341E40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemAddress);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6348AE8;
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

uint64_t (*sub_1B6342008(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6341A9C(a1, a2);
  a1[1] = v4;
  return sub_1B6342050;
}

uint64_t sub_1B6342080(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemCategory);
  v6 = *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemCategory + 8);
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
  *(v19 + 16) = sub_1B6348B0C;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_94;
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

    v15 = sub_1B6348B0C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6342424(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

id sub_1B63424AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemCategory);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6348B34;
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

uint64_t (*sub_1B6342674(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6342080(a1, a2);
  a1[1] = v4;
  return sub_1B63426BC;
}

uint64_t sub_1B63426D4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

uint64_t sub_1B634276C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemCity);
  v6 = *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemCity + 8);
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
  *(v19 + 16) = sub_1B6348B58;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_112_1;
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

    v15 = sub_1B6348B58;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6342B10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemCity);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6348B80;
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

uint64_t (*sub_1B6342CD8(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B634276C(a1, a2);
  a1[1] = v4;
  return sub_1B6342D20;
}

uint64_t sub_1B6342D50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemIdentifier);
  v6 = *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemIdentifier + 8);
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
  *(v19 + 16) = sub_1B6348BA4;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_130;
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

    v15 = sub_1B6348BA4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B63430F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemIdentifier);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6348BCC;
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

uint64_t (*sub_1B63432BC(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B6342D50(a1, a2);
  a1[1] = v4;
  return sub_1B6343304;
}

id sub_1B6343334(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_1B6343464@<X0>(char *a2@<X8>)
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
  v13 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
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
  *(v26 + 16) = sub_1B6348BF0;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_148;
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

uint64_t sub_1B6343A64(uint64_t a1)
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
  v12 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943210, &unk_1B63C3F50);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B6348C18;
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

uint64_t sub_1B6343D44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B628C510(a1, &v6 - v3, &unk_1EB943210, &unk_1B63C3F50);
  return sub_1B6343A64(v4);
}

void sub_1B6343DF0(void *a1, uint64_t a2, _BYTE *a3, SEL *a4)
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
    type metadata accessor for MapsSyncManagedVisitedLocation();
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

void sub_1B6344028(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  type metadata accessor for MapsSyncManagedVisitedLocation();
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

    [v9 setMapItemLastRefreshed_];
  }
}

void (*sub_1B6344194(void *a1))(uint64_t a1, char a2)
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
  sub_1B6343464(v4);
  return sub_1B6344250;
}

void sub_1B6344250(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B628C510(*(a1 + 16), v2, &unk_1EB943210, &unk_1B63C3F50);
    sub_1B6343A64(v2);
    sub_1B6284EAC(v3, &unk_1EB943210, &unk_1B63C3F50);
  }

  else
  {
    sub_1B6343A64(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

id sub_1B6344304(void *a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1B6344384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemName);
  v6 = *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemName + 8);
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
  *(v19 + 16) = sub_1B6348CA4;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_165;
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

    v15 = sub_1B6348CA4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6344728(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemName);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6348CCC;
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

void sub_1B63448F0(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v18];
  v7 = v18[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedVisitedLocation();
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

void sub_1B6344A14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedVisitedLocation();
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

uint64_t (*sub_1B6344AD8(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B6344384(a1, a2);
  a1[1] = v4;
  return sub_1B6344B20;
}

id sub_1B6344B7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemStorage);
  v7 = *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8);
  v30 = v6;
  v31 = v7;
  sub_1B6291034(v6, v7);
  sub_1B6284F64(0, 0xF000000000000000);
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v7 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      v10 = objc_allocWithZone(MEMORY[0x1E69A21E0]);
      sub_1B629119C(v6, v7);
      v11 = sub_1B63BE904();
      v12 = [v10 initWithData_];

      sub_1B6284F64(v6, v7);
LABEL_15:
      v18 = 0;
      v19 = 0;
LABEL_16:
      sub_1B6284F64(v30, v31);
      sub_1B62B1F7C(v18, v19);
      return v12;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_10:
    v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_12;
  }

  v13 = sub_1B63BF364();

  if (v13)
  {
    goto LABEL_10;
  }

  v14 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_12:

  v15 = sub_1B629409C();
  v17 = v16;

  if (v17)
  {
    v29[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v15);
    goto LABEL_14;
  }

  [v5 lock];
  v19 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v21 = v19;
  [v5 unlock];
  if (!v19)
  {
    sub_1B6295C20(v15);
    v12 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  v19 = swift_allocObject();
  v19[2] = v15;
  v19[3] = v21;
  v19[4] = &v30;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B6348CF0;
  *(v22 + 24) = v19;
  v29[4] = sub_1B62B9478;
  v29[5] = v22;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1B62B1294;
  v29[3] = &block_descriptor_183_0;
  v23 = _Block_copy(v29);
  v24 = v21;

  sub_1B62B1FC0(v15);

  [v15 performBlockAndWait_];
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if ((v23 & 1) == 0)
  {
    v25 = v31;
    if (v31 >> 60 == 15)
    {

      sub_1B6295C20(v15);
      v12 = 0;
    }

    else
    {
      v26 = v30;
      v27 = objc_allocWithZone(MEMORY[0x1E69A21E0]);
      sub_1B629119C(v26, v25);
      v28 = sub_1B63BE904();
      v12 = [v27 initWithData_];

      sub_1B6284F64(v26, v25);
      sub_1B6295C20(v15);
    }

    v18 = sub_1B6348CF0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B6345070(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v2 lock];
  sub_1B634520C(v2, a1, v1);
  [v2 unlock];
}

void sub_1B63450E8(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedVisitedLocation();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 mapItemStorage]) != 0)
    {
      v10 = v9;
      v11 = sub_1B63BE924();
      v13 = v12;

      v14 = *a3;
      v15 = a3[1];
      *a3 = v11;
      a3[1] = v13;
      sub_1B6284F64(v14, v15);
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

uint64_t sub_1B634520C(uint64_t a1, void *a2, char *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v87 - v6;
  if (a2)
  {
    v8 = a2;
    v9 = [v8 data];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1B63BE924();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xF000000000000000;
    }

    v28 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
    v29 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
    v30 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8];
    *v28 = v11;
    *(v28 + 1) = v13;
    sub_1B6284F64(v29, v30);
    v31 = [v8 _muid];
    v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v33 = *&a3[OBJC_IVAR___MSVisitedLocation__muid];
    *&a3[OBJC_IVAR___MSVisitedLocation__muid] = v32;

    [v8 coordinate];
    v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v36 = *&a3[OBJC_IVAR___MSVisitedLocation__latitude];
    *&a3[OBJC_IVAR___MSVisitedLocation__latitude] = v35;

    [v8 coordinate];
    v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v39 = *&a3[OBJC_IVAR___MSVisitedLocation__longitude];
    *&a3[OBJC_IVAR___MSVisitedLocation__longitude] = v38;

    v40 = [v8 addressObject];
    if (v40 && (v41 = v40, v42 = [v40 fullAddressWithMultiline_], v41, v42))
    {
      v43 = sub_1B63BEBD4();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemAddress];
    *v46 = v43;
    *(v46 + 1) = v45;

    v47 = [v8 name];
    if (v47)
    {
      v48 = v47;
      v49 = sub_1B63BEBD4();
      v51 = v50;
    }

    else
    {
      v49 = 0;
      v51 = 0;
    }

    v52 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemName];
    *v52 = v49;
    *(v52 + 1) = v51;

    v27 = v8;
    v53 = sub_1B6347B3C(v27);
    v55 = v54;

    v56 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemCategory];
    *v56 = v53;
    *(v56 + 1) = v55;

    v57 = [v27 _identifier];
    if (v57 && (v58 = v57, v59 = [v57 mapsIdentifierString], v58, v59))
    {
      v60 = sub_1B63BEBD4();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    v63 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier];
    *v63 = v60;
    *(v63 + 1) = v62;

    sub_1B63BE984();
    v64 = sub_1B63BE994();
    (*(*(v64 - 8) + 56))(v7, 0, 1, v64);
    v65 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v7, &a3[v65], &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v66 = [v27 enclosingRegionIdentifier];
    if (v66)
    {
      v67 = v66;
      v68 = [v67 muid];
      v69 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    }

    else
    {
      v69 = 0;
    }

    v70 = *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid];
    *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid] = v69;

    v71 = [v27 enclosingRegionIdentifier];
    if (v71)
    {
      v72 = v71;
      v73 = [v72 resultProviderID];
      v74 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    }

    else
    {

      v74 = 0;
    }

    v75 = *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider];
    *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider] = v74;
  }

  else
  {
    v14 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
    v15 = *&a3[OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8];
    *&a3[OBJC_IVAR___MSVisitedLocation__mapItemStorage] = xmmword_1B63C3E40;
    sub_1B6284F64(v14, v15);
    v16 = *&a3[OBJC_IVAR___MSVisitedLocation__muid];
    *&a3[OBJC_IVAR___MSVisitedLocation__muid] = 0;

    v17 = *&a3[OBJC_IVAR___MSVisitedLocation__latitude];
    *&a3[OBJC_IVAR___MSVisitedLocation__latitude] = 0;

    v18 = *&a3[OBJC_IVAR___MSVisitedLocation__longitude];
    *&a3[OBJC_IVAR___MSVisitedLocation__longitude] = 0;

    v19 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemAddress];
    *v19 = 0;
    *(v19 + 1) = 0;

    v20 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemName];
    *v20 = 0;
    *(v20 + 1) = 0;

    v21 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemCategory];
    *v21 = 0;
    *(v21 + 1) = 0;

    v22 = &a3[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier];
    *v22 = 0;
    *(v22 + 1) = 0;

    v23 = sub_1B63BE994();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    v24 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v7, &a3[v24], &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v25 = *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid];
    *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid] = 0;

    v26 = *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider];
    *&a3[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider] = 0;

    v27 = 0;
  }

  v76 = swift_allocObject();
  *(v76 + 16) = a2;
  *(v76 + 24) = a3;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v77 = v27;
  v78 = a3;
  if (sub_1B63BEF24())
  {
    v79 = swift_allocObject();
    *(v79 + 16) = sub_1B6349C08;
    *(v79 + 24) = v76;
    v80 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v81 = *&v78[v80];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v78[v80] = v81;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v81 = sub_1B629A8E8(0, v81[2] + 1, 1, v81);
      *&v78[v80] = v81;
    }

    v84 = v81[2];
    v83 = v81[3];
    if (v84 >= v83 >> 1)
    {
      v81 = sub_1B629A8E8((v83 > 1), v84 + 1, 1, v81);
    }

    v81[2] = v84 + 1;
    v85 = &v81[2 * v84];
    v85[4] = sub_1B62B9488;
    v85[5] = v79;
    *&v78[v80] = v81;
    swift_endAccess();
  }
}

void sub_1B6345968(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = sub_1B63BE994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapsSyncManagedVisitedLocation();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    if (a3)
    {
      ObjectType = swift_getObjectType();
      v47 = a2;
      v13 = a3;
      v14 = [ObjectType strippedMapItemWith_];
      v15 = [v14 data];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1B63BE924();
        v19 = v18;

        v20 = sub_1B63BE904();
        sub_1B628BAC0(v17, v19);
      }

      else
      {
        v20 = 0;
      }

      [v11 setMapItemStorage_];

      v22 = [v14 _muid];
      v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      [v11 setMuid_];

      [v14 coordinate];
      v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v11 setLatitude_];

      [v14 coordinate];
      v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v11 setLongitude_];

      v28 = [v14 addressObject];
      if (!v28 || (v29 = v28, v30 = [v28 fullAddressWithMultiline_], v29, !v30))
      {
        v30 = 0;
      }

      [v11 setMapItemAddress_];

      v31 = [v14 name];
      [v11 setMapItemName_];

      v32 = v14;
      sub_1B6347B3C(v32);

      v33 = sub_1B63BEBC4();

      [v11 setMapItemCategory_];

      v34 = [v32 _identifier];
      if (!v34 || (v35 = v34, v36 = [v34 mapsIdentifierString], v35, !v36))
      {
        v36 = 0;
      }

      [v11 setMapItemIdentifier_];

      sub_1B63BE984();
      v37 = sub_1B63BE954();
      (*(v7 + 8))(v9, v6);
      [v11 setMapItemLastRefreshed_];

      v38 = [v32 enclosingRegionIdentifier];
      if (v38)
      {
        v39 = v38;
        v40 = [v39 muid];
        v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      }

      else
      {
        v41 = 0;
      }

      [v11 setEnclosingRegionMuid_];

      v42 = [v32 enclosingRegionIdentifier];
      if (v42)
      {
        v43 = v42;
        v44 = [v43 resultProviderID];
        v45 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      }

      else
      {
        v45 = 0;
      }

      [v11 setEnclosingRegionProvider_];
    }

    else
    {
      v47 = a2;
      [v11 setMapItemStorage_];
      [v11 setMuid_];
      [v11 setLatitude_];
      [v11 setLongitude_];
      [v11 setMapItemAddress_];
      [v11 setMapItemName_];
      [v11 setMapItemCategory_];
      [v11 setMapItemIdentifier_];
      [v11 setMapItemLastRefreshed_];
      [v11 setEnclosingRegionMuid_];
      [v11 setEnclosingRegionProvider_];
      v21 = v47;
    }
  }
}

void (*sub_1B6345F60(id *a1, uint64_t a2))(uint64_t a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B6344B7C(a1, a2);
  return sub_1B6345FA8;
}

void sub_1B6345FA8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B634520C(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B634520C(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

uint64_t sub_1B63460E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory);
  [v1 unlock];
  return v2;
}

id sub_1B6346194(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6348CFC;
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

id sub_1B6346340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedVisitedLocation();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setMapItemTopLevelCategory_];
  }

  return result;
}

id (*sub_1B63463A4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B6346428;
}

id sub_1B6346494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSVisitedLocation__muid);
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
  *(v20 + 16) = sub_1B6348D04;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_200;
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
    v16 = sub_1B6348D04;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6346854(void *a1)
{
  sub_1B6348D2C(a1);
}

void sub_1B634688C(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v15];
  v7 = v15[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedVisitedLocation();
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

id sub_1B63469A0(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedVisitedLocation();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B6346A10(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B6346494(a1, a2);
  return sub_1B6346A58;
}

void sub_1B6346A70(id *a1, char a2, void (*a3)(id))
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

char *sub_1B6346AF0()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B63BF044())
  {
    sub_1B62B7F0C(MEMORY[0x1E69E7CC0]);
  }

  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];

  v2 = OBJC_IVAR___MSVisitedLocation__visits;
  swift_beginAccess();
  v3 = *(v0 + v2);

  [v1 unlock];
  v4 = sub_1B62B7A7C(v3);

  return v4;
}

id sub_1B6346C30(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  swift_beginAccess();
  v5 = a1;
  sub_1B62CAA38(&v17, v5);
  v6 = v17;
  swift_endAccess();

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v5;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6348EEC;
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

id sub_1B6346E80(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  swift_beginAccess();
  v5 = sub_1B62CC838(a1);
  swift_endAccess();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v7 = a1;
  if (sub_1B63BEF24())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1B6348F10;
    *(v8 + 24) = v6;
    v9 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v10 = *(v2 + v9);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v9) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1B629A8E8(0, v10[2] + 1, 1, v10);
      *(v2 + v9) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1B629A8E8((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_1B62B9488;
    v14[5] = v8;
    *(v2 + v9) = v10;
    swift_endAccess();
  }

  return [v4 unlock];
}

void sub_1B634705C(void *a1, void *a2, uint64_t a3, SEL *a4)
{
  type metadata accessor for MapsSyncManagedVisitedLocation();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    v14 = a2;
    [v10 lock];
    v11 = sub_1B629563C(v10, a1);
    [v10 unlock];
    if (v11)
    {
      type metadata accessor for MapsSyncManagedVisit();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        [v9 *a4];
      }

      v13 = v11;
    }

    else
    {
      v13 = v14;
    }
  }
}

void *sub_1B63471D0(void *a1, void *a2, int a3, int a4)
{
  v55 = a4;
  v56 = a3;
  v57 = a2;
  v58 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v51 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v51 - v10;
  *&v4[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid] = 0;
  *&v4[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider] = 0;
  v4[OBJC_IVAR___MSVisitedLocation__hidden] = 0;
  v11 = OBJC_IVAR___MSVisitedLocation__latestVisitDate;
  v12 = sub_1B63BE994();
  v13 = *(*(v12 - 8) + 56);
  v13(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR___MSVisitedLocation__latitude] = 0;
  *&v4[OBJC_IVAR___MSVisitedLocation__longitude] = 0;
  v14 = &v4[OBJC_IVAR___MSVisitedLocation__mapItemAddress];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v4[OBJC_IVAR___MSVisitedLocation__mapItemCategory];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR___MSVisitedLocation__mapItemCity];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier];
  *v17 = 0;
  v17[1] = 0;
  v13(&v4[OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed], 1, 1, v12);
  v18 = &v4[OBJC_IVAR___MSVisitedLocation__mapItemName];
  *v18 = 0;
  v18[1] = 0;
  *&v4[OBJC_IVAR___MSVisitedLocation__mapItemStorage] = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory] = 0;
  *&v4[OBJC_IVAR___MSVisitedLocation__muid] = 0;
  v19 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B63BF044())
  {
    sub_1B62B7F0C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CD0];
  }

  *&v4[OBJC_IVAR___MSVisitedLocation__visits] = v20;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v21] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v19;
  v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v23 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v23 - 8) + 56))(&v4[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v25 = sub_1B63BEA04();
  v26 = *(*(v25 - 8) + 56);
  v26(&v4[v24], 1, 1, v25);
  v13(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v12);
  v13(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v12);
  v27 = v57;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v57;
  v28 = v56 & 1;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v56 & 1;
  v29 = type metadata accessor for MapsSyncObject(0);
  v59.receiver = v4;
  v59.super_class = v29;
  v30 = v27;
  v31 = objc_msgSendSuper2(&v59, sel_init);
  v32 = v31;
  v33 = v58;
  if (v58)
  {
    v34 = v31;
    v35 = [v33 objectID];
    v36 = *(v34 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v34 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v35;

    (*((*MEMORY[0x1E69E7D40] & *v34) + 0x218))(v33, v28, v55 & 1);
  }

  else
  {
    v37 = v31;
    v38 = v54;
    sub_1B63BE9F4();
    v26(v38, 0, 1, v25);
    v39 = v51;
    sub_1B628C510(v38, v51, &unk_1EB943680, qword_1B63C4070);
    v40 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v39, &v37[v40], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v41 = v53;
    sub_1B628C510(v38, v53, &unk_1EB943680, qword_1B63C4070);
    v42 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v43 = swift_allocObject();
    sub_1B628A128(v41, v43 + v42, &unk_1EB943680, qword_1B63C4070);
    v44 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v45 = *&v37[v44];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v37[v44] = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = sub_1B629A8E8(0, v45[2] + 1, 1, v45);
      *&v37[v44] = v45;
    }

    v48 = v45[2];
    v47 = v45[3];
    if (v48 >= v47 >> 1)
    {
      v45 = sub_1B629A8E8((v47 > 1), v48 + 1, 1, v45);
    }

    v45[2] = v48 + 1;
    v49 = &v45[2 * v48];
    v49[4] = sub_1B62B2D5C;
    v49[5] = v43;
    *&v37[v44] = v45;
    swift_endAccess();

    sub_1B6284EAC(v38, &unk_1EB943680, qword_1B63C4070);
  }

  return v32;
}

uint64_t sub_1B6347870()
{
  sub_1B6284EAC(v0 + OBJC_IVAR___MSVisitedLocation__latestVisitDate, &unk_1EB943210, &unk_1B63C3F50);

  sub_1B6284EAC(v0 + OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed, &unk_1EB943210, &unk_1B63C3F50);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSVisitedLocation__mapItemStorage), *(v0 + OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8));
}

id VisitedLocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitedLocation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6347B3C(void *a1)
{
  v22 = sub_1B63BE844();
  v19 = *(v22 - 8);
  v2 = MEMORY[0x1EEE9AC00](v22);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - v5;
  v28 = MEMORY[0x1E69E7CD0];
  v7 = [a1 _place];
  v8 = [v7 firstBusiness];

  v9 = [v8 localizedCategories];
  if (!v9)
  {
    sub_1B6281C60(0, &qword_1EB942B88, 0x1E695DF70);
    v9 = MEMORY[0x1B8C925C0](MEMORY[0x1E69E7CC0]);
  }

  sub_1B63BEEE4();

  sub_1B63BE834();
  if (!v27)
  {
LABEL_16:
    (*(v19 + 8))(v6, v22);
    v26 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943328, &unk_1B63C4B40);
    sub_1B6349C10();
    sub_1B6349C74();
    v17 = sub_1B63BEC74();

    return v17;
  }

  v10 = sub_1B6281C60(0, &qword_1EB943330, 0x1E69A1BD0);
  v20 = (v19 + 8);
  v21 = v10;
  while (1)
  {
    if (!swift_dynamicCast())
    {
      goto LABEL_6;
    }

    v11 = v6;
    v12 = v24;
    v13 = [v24 localizedNames];
    if (!v13)
    {
      sub_1B6281C60(0, &qword_1EB942B88, 0x1E695DF70);
      v13 = MEMORY[0x1B8C925C0](MEMORY[0x1E69E7CC0]);
    }

    sub_1B63BEEE4();

    sub_1B63BE834();
    if (v25)
    {
      break;
    }

LABEL_5:
    (*v20)(v4, v22);

    v6 = v11;
LABEL_6:
    sub_1B63BE834();
    if (!v27)
    {
      goto LABEL_16;
    }
  }

  sub_1B6281C60(0, qword_1EB943338, 0x1E69A1E68);
  while ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_1B63BE834();
    if (!v25)
    {
      goto LABEL_5;
    }
  }

  v14 = v23;
  result = [v23 name];
  if (result)
  {
    v16 = result;
    sub_1B63BEBD4();

    sub_1B62CD684();

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_1B6347EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19)
{
  v43 = a4;
  v44 = a5;
  v39 = a3;
  v40 = a1;
  v41 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v37 - v21;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDB0F2A8;
  if (a7)
  {
    v37 = sub_1B63BEBC4();

    v23 = a11;
    if (a9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v37 = 0;
    v23 = a11;
    if (a9)
    {
LABEL_5:
      v24 = sub_1B63BEBC4();

      v25 = a13;
      v26 = a14;
      if (v23)
      {
        goto LABEL_6;
      }

LABEL_10:
      v27 = 0;
      if (v25)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  v24 = 0;
  v25 = a13;
  v26 = a14;
  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_6:
  v27 = sub_1B63BEBC4();

  if (v25)
  {
LABEL_7:
    v28 = sub_1B63BEBC4();

    goto LABEL_12;
  }

LABEL_11:
  v28 = 0;
LABEL_12:
  sub_1B628C510(v26, v22, &unk_1EB943210, &unk_1B63C3F50);
  v29 = sub_1B63BE994();
  v30 = *(v29 - 8);
  v31 = 0;
  if ((*(v30 + 48))(v22, 1, v29) != 1)
  {
    v31 = sub_1B63BE954();
    (*(v30 + 8))(v22, v29);
  }

  if (a16)
  {
    v32 = sub_1B63BEBC4();
  }

  else
  {
    v32 = 0;
  }

  LODWORD(v36) = a18;
  v33 = v37;
  v34 = [v42 initWithStore:v38 enclosingRegionMuid:v40 enclosingRegionProvider:v41 hidden:v39 & 1 latitude:v43 longitude:v44 mapItemAddress:v37 mapItemCategory:v24 mapItemCity:v27 mapItemIdentifier:v28 mapItemLastRefreshed:v31 mapItemName:v32 mapItemStorage:a17 mapItemTopLevelCategory:v36 muid:a19];

  sub_1B6284EAC(v26, &unk_1EB943210, &unk_1B63C3F50);
  return v34;
}

void sub_1B63481DC(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 120) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1B633EB9C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + ((v8 + 11) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1B6348318(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid);
  *(v2 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6349D34;
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

id sub_1B6348500(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider);
  *(v2 + OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6349D10;
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

id sub_1B6348718(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVisitedLocation__latitude);
  *(v2 + OBJC_IVAR___MSVisitedLocation__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6349CEC;
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

id sub_1B6348900(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVisitedLocation__longitude);
  *(v2 + OBJC_IVAR___MSVisitedLocation__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6349CC8;
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

void sub_1B6348C18(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B6344028(a1, a2, v6);
}

id sub_1B6348D2C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVisitedLocation__muid);
  *(v2 + OBJC_IVAR___MSVisitedLocation__muid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6349BE4;
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

uint64_t type metadata accessor for VisitedLocation(uint64_t a1)
{
  result = qword_1EB942E20;
  if (!qword_1EB942E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_set_225Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void sub_1B6348FC8(uint64_t a1)
{
  sub_1B628CC34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B6349B8C()
{
  result = qword_1EB943320;
  if (!qword_1EB943320)
  {
    type metadata accessor for MapsSyncManagedVisit();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB943320);
  }

  return result;
}

unint64_t sub_1B6349C10()
{
  result = qword_1EB942BA0;
  if (!qword_1EB942BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB943328, &unk_1B63C4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942BA0);
  }

  return result;
}

unint64_t sub_1B6349C74()
{
  result = qword_1EB942BB0;
  if (!qword_1EB942BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942BB0);
  }

  return result;
}

id sub_1B6349DC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CollectionPlaceItemRequest.fetch(searchTerm:sortDescriptors:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  v5[59] = a1;
  v5[64] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6349E6C, 0, 0);
}

uint64_t sub_1B6349E6C()
{
  v43 = v0[63];
  v44 = v0[64];
  v41 = v0[62];
  v42 = v0[61];
  v1 = v0[59];
  v2 = v0[60];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B63C4B80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D50;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1B6281318();
  *(inited + 64) = v6;
  *(inited + 32) = v1;
  *(inited + 40) = v2;

  v7 = sub_1B628E52C(0xD00000000000001ALL, 0x80000001B63CA370, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  *(v3 + 32) = v7;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1B63C3D50;
  *(v8 + 56) = v5;
  *(v8 + 64) = v6;
  *(v8 + 32) = v1;
  *(v8 + 40) = v2;

  v9 = sub_1B628E52C(0xD00000000000001BLL, 0x80000001B63C81C0, v8);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v8 + 32));
  *(v3 + 40) = v9;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1B63C3D50;
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v1;
  *(v10 + 40) = v2;

  v11 = sub_1B628E52C(0xD00000000000001ELL, 0x80000001B63C81E0, v10);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v10 + 32));
  *(v3 + 48) = v11;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1B63C3D50;
  *(v12 + 56) = v5;
  *(v12 + 64) = v6;
  *(v12 + 32) = v1;
  *(v12 + 40) = v2;

  v13 = sub_1B628E52C(0xD00000000000001FLL, 0x80000001B63C8200, v12);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v12 + 32));
  *(v3 + 56) = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1B63C3D50;
  *(v14 + 56) = v5;
  *(v14 + 64) = v6;
  *(v14 + 32) = v1;
  *(v14 + 40) = v2;

  v15 = sub_1B628E52C(0xD00000000000001DLL, 0x80000001B63C81A0, v14);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v14 + 32));
  *(v3 + 64) = v15;
  Predicate = type metadata accessor for MapsSyncQueryPredicate();
  v17 = objc_allocWithZone(Predicate);
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v18 = sub_1B63BEC94();

  v19 = [v17 initWithType:2 subpredicates:v18];
  v0[65] = v19;

  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1B63C3D50;
  v21 = MEMORY[0x1E69E72E8];
  *(v20 + 56) = MEMORY[0x1E69E7290];
  *(v20 + 64) = v21;
  *(v20 + 32) = 6;
  v22 = (v20 + 32);
  v23 = sub_1B628E52C(0xD00000000000002ELL, 0x80000001B63CA390, v20);
  v0[66] = v23;
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v22);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B63C4B90;
  *(v24 + 32) = v19;
  *(v24 + 40) = v23;
  v25 = objc_allocWithZone(Predicate);
  v26 = v19;
  v27 = v23;
  v28 = sub_1B63BEC94();

  v29 = [v25 initWithType:1 subpredicates:v28];
  v0[67] = v29;

  v30 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v31 = v41;
  v32 = v29;

  v33 = sub_1B62895F4(v29, v42, v41);
  v0[68] = v33;

  v34 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  v33[v34] = 1;
  v35 = v33;
  v0[69] = sub_1B62835B4();
  v36 = swift_allocObject();
  v0[70] = v36;
  v36[2] = v43;
  v36[3] = v33;
  v36[4] = v44;
  v37 = v35;
  v38 = v43;
  v39 = swift_task_alloc();
  v0[71] = v39;
  *v39 = v0;
  v39[1] = sub_1B634A3F4;

  return sub_1B62857BC(sub_1B6283660, v36);
}

uint64_t sub_1B634A3F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v4 = sub_1B634A700;
  }

  else
  {

    v4 = sub_1B634A520;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B634A520()
{
  v1 = *(v0 + 576);

  v16 = MEMORY[0x1E69E7CC0];
  if (!(v1 >> 62))
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  v3 = sub_1B63BF044();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = *(v0 + 576) + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v4;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x1B8C92830](v7, *(v0 + 576));
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v6 + 8 * v7);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for CollectionPlaceItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v16;
  }

  while (v4 != v3);
LABEL_21:
  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);
  v13 = *(v0 + 520);

  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t sub_1B634A700()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B634A94C(uint64_t a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = sub_1B63BEBD4();
  v11 = v10;
  v5[5] = v10;
  if (a2)
  {
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    a2 = sub_1B63BECA4();
  }

  v5[6] = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1B634AA70;

  return CollectionPlaceItemRequest.fetch(searchTerm:sortDescriptors:range:)(v9, v11, a2, a3);
}

uint64_t sub_1B634AA70(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for CollectionPlaceItem(0);
    v8 = sub_1B63BEC94();

    v10 = v8;
    v9 = 0;
  }

  v11 = *(v4 + 32);
  (v11)[2](v11, v10, v9);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_1B634AC54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B628E340;

  return sub_1B634A94C(v2, v3, v4, v5, v6);
}

uint64_t sub_1B634AD1C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

uint64_t sub_1B634AD60@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedHistoryItem();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

uint64_t sub_1B634ADA4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedCollectionItem();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

uint64_t sub_1B634ADE8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedAnonymousCredential();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

id sub_1B634AE84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B634AEB8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedContactHandle();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

id sub_1B634AF54(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedAnonymousCredential();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B634AFB4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B634B034(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1B634B1B8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t getEnumTagSinglePayload for MSRelationChangeType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MSRelationChangeType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B634B58C()
{
  result = qword_1EB9433C0;
  if (!qword_1EB9433C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9433C0);
  }

  return result;
}

uint64_t sub_1B634B5F8()
{
  v1 = *v0;
  sub_1B63BF434();
  MEMORY[0x1B8C92B30](v1);
  return sub_1B63BF494();
}

uint64_t sub_1B634B66C(uint64_t a1)
{
  v2 = *v1;
  sub_1B63BF434();
  MEMORY[0x1B8C92B30](v2);
  return sub_1B63BF494();
}

id sub_1B634B738(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedReviewedPlace();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B634B7AC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B634BAA0(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1B634B820()
{
  sub_1B63BF434();
  sub_1B63BF464();
  return sub_1B63BF494();
}

uint64_t sub_1B634B868(uint64_t a1)
{
  sub_1B63BF434();
  sub_1B63BF464();
  return sub_1B63BF494();
}

uint64_t sub_1B634B8AC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B6296B88(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t FavoriteItem.favoriteType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSFavoriteItem__type);
  [v1 unlock];
  LODWORD(result) = sub_1B6296B88(v2);
  if ((result & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t FavoriteItem.sourceType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSFavoriteItem__source);
  [v1 unlock];
  v4 = v2 <= 3 && v2 != 1 || v2 == 0xFFFF;
  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v4;
  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1B634BAA0(unsigned __int16 a1)
{
  v1 = a1;
  if (a1 <= 2u)
  {
    if (a1 && a1 != 2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a1 == 3)
  {
LABEL_8:
    v2 = 0;
    return v1 | (v2 << 16);
  }

  if (a1 != 0xFFFF)
  {
LABEL_9:
    v1 = 0;
    v2 = 1;
    return v1 | (v2 << 16);
  }

  v2 = 0;
  v1 = 0xFFFF;
  return v1 | (v2 << 16);
}

unint64_t sub_1B634BB00()
{
  result = qword_1EB9433C8;
  if (!qword_1EB9433C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9433C8);
  }

  return result;
}

unint64_t sub_1B634BB58()
{
  result = qword_1EB9433D0;
  if (!qword_1EB9433D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9433D0);
  }

  return result;
}

id sub_1B634BC44(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_1B634BD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), const char *a6, uint64_t a7)
{
  v13 = a5();
  if (qword_1EDB0F690 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDB0F680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B63C3D80;
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1B6281318();
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 64) = v17;
  *(v15 + 72) = a3;
  *(v15 + 80) = a4;

  sub_1B63BEA14(v13, &dword_1B627F000, v14, a6, a7, 2, v15);
}

uint64_t sub_1B634BE88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  if (qword_1EDB0F690 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDB0F680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B63C3D50;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B6281318();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  sub_1B63BEA14(v5, &dword_1B627F000, v6, "%{public}@", 10, 2, v7);
}

uint64_t sub_1B634BF8C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedRAPRecord();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

void sub_1B634C04C(unint64_t a1, char **a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_20:
    v3 = sub_1B63BF044();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  v22 = v2 & 0xFFFFFFFFFFFFFF8;
  v23 = v2;
  while (1)
  {
    if (v5)
    {
      v8 = MEMORY[0x1B8C92830](v4, v2);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_19;
      }

      v8 = *(v2 + 8 * v4 + 32);
    }

    v9 = v8;
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v11 = [v8 changedObjectID];
    v12 = [v11 entity];

    v13 = [v12 managedObjectClassName];
    if (!v13)
    {
      break;
    }

    v14 = v13;

    v15 = NSClassFromString(v14);
    if (v15)
    {
      swift_getObjCClassMetadata();
      sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
      if (swift_dynamicCastMetatype())
      {
        v16 = v3;
        v17 = v5;
        [swift_getObjCClassFromMetadata() wrapperClass];
        v18 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1B62B22B4(0, *(v18 + 2) + 1, 1, v18);
          *a2 = v18;
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1B62B22B4((v20 > 1), v21 + 1, 1, v18);
          *a2 = v18;
        }

        ObjCClassMetadata = swift_getObjCClassMetadata();
        *(v18 + 2) = v21 + 1;
        *&v18[8 * v21 + 32] = ObjCClassMetadata;
        v5 = v17;
        v3 = v16;
        v6 = v22;
        v2 = v23;
      }
    }

    ++v4;
    if (v10 == v3)
    {
      return;
    }
  }

  __break(1u);
}

id *sub_1B634C288()
{
  v1 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_persistentStoreObserver;
  swift_beginAccess();
  sub_1B634C588(v0 + v1, &v6);
  if (v7)
  {
    sub_1B628E928(&v6, &v8);
    v2 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_0(&v8, v9);
    [v2 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    sub_1B6284EAC(&v6, &unk_1EB943740, &qword_1B63C5030);
  }

  v3 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_historyStartDate;
  v4 = sub_1B63BE994();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1B6284EAC(v0 + v1, &unk_1EB943740, &qword_1B63C5030);

  return v0;
}

uint64_t sub_1B634C430()
{
  sub_1B634C288();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1B634C490(uint64_t a1)
{
  v2 = v1;
  sub_1B63BF114();
  MEMORY[0x1B8C92330](0xD000000000000027, 0x80000001B63CA660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433D8, &qword_1B63C5038);
  sub_1B63BF1B4();
  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0, 0xE000000000000000);

  v4 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_delegatesLock;
  [*(v2 + OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_delegatesLock) lock];
  [*(v2 + 16) removeObject_];
  return [*(v2 + v4) unlock];
}

uint64_t sub_1B634C588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943740, &qword_1B63C5030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B634C5F8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_beginAccess();
    v6 = *(a4 + 16);
    *(a4 + 16) = a1;
    v7 = a1;
  }

  else
  {
    swift_beginAccess();
    v9 = *(a3 + 16);
    *(a3 + 16) = a1;
    v10 = a1;
  }

  return sub_1B63BEE74();
}

uint64_t sub_1B634C690(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B63BEAF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B63BEB14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_historyQueue);
    v16 = v7;
    v15 = v12;

    aBlock[4] = sub_1B634DBB0;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B628D904;
    aBlock[3] = &block_descriptor_39;
    v13 = _Block_copy(aBlock);

    sub_1B63BEB04();
    v17 = MEMORY[0x1E69E7CC0];
    sub_1B6281CA8(&qword_1EDB0F650, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943400, &unk_1B63C5060);
    sub_1B6281CF0(&qword_1EDB0F648, &qword_1EB943400, &unk_1B63C5060);
    sub_1B63BEFA4();
    v14 = v15;
    MEMORY[0x1B8C92510](0, v10, v6, v13);
    _Block_release(v13);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v16);
  }

  return result;
}

uint64_t sub_1B634C974(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B634C9CC();
  }

  return result;
}

uint64_t sub_1B634C9CC()
{
  v1 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_contextLock;
  v2 = *(v0 + OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_contextLock);

  [v2 lock];
  v3 = *(v0 + 32);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = v3;
    v12[4] = sub_1B634DBC4;
    v12[5] = v4;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1B628D904;
    v12[3] = &block_descriptor_45_0;
    v5 = _Block_copy(v12);
    v6 = v3;

    v7 = v6;

    [v7 performBlock_];

    _Block_release(v5);
    v8 = *(v0 + v1);
    [v8 unlock];
  }

  else
  {
    v10 = swift_retain_n();
    sub_1B6285C18(v10, v0, sub_1B634DBB8, v0);

    v11 = *(v0 + v1);
    [v11 unlock];
  }
}

uint64_t sub_1B634CB98(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B63BE7C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1B63BE7A4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_1B634CC8C(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    sub_1B63BF114();
    MEMORY[0x1B8C92330](0xD00000000000002CLL, 0x80000001B63CA920);
    aBlock[6] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    sub_1B63BF1B4();
    v4 = sub_1B63BEDC4();
    if (qword_1EDB0F690 != -1)
    {
      swift_once();
    }

    v5 = qword_1EDB0F680;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B63C3D50;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1B6281318();
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    sub_1B63BEA14(v4, &dword_1B627F000, v5, "%{public}@", 10, 2, v6);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a1;
    aBlock[4] = sub_1B634DE00;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B628D904;
    aBlock[3] = &block_descriptor_52;
    v9 = _Block_copy(aBlock);

    sub_1B62B1FC0(a1);

    [a1 performBlock_];
    _Block_release(v9);
  }
}

void sub_1B634CEB8(uint64_t a1, void *a2)
{
  v5 = sub_1B63BE7C4();
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;
  v9 = sub_1B634D370(a2);
  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_35;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_36:

    return;
  }

  while (1)
  {
    v12 = v11 - 1;
    if (__OFSUB__(v11, 1))
    {
      __break(1u);
LABEL_40:
      v13 = MEMORY[0x1B8C92830](v12, v10);
      goto LABEL_8;
    }

    v2 = (v10 & 0xC000000000000001);
    if ((v10 & 0xC000000000000001) != 0)
    {
      goto LABEL_40;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v13 = *(v10 + 8 * v12 + 32);
LABEL_8:
    v14 = v13;
    v15 = [v13 token];

    if (!v15)
    {
      goto LABEL_36;
    }

    v16 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_historyTokenLock;
    [*(a1 + OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_historyTokenLock) lock];
    v17 = *(a1 + 40);
    *(a1 + 40) = v15;
    v33 = v15;

    [*(a1 + v16) unlock];
    if (![*(a1 + 16) count])
    {
      break;
    }

    v18 = sub_1B634DBCC(v10);
    a1 = sub_1B634D698(v18);

    if ((a1 & 1) == 0)
    {
      break;
    }

    v19 = 0;
    *&v34 = v10 & 0xFFFFFFFFFFFFFF8;
    ++v6;
    v35 = MEMORY[0x1E69E7CC0];
    while (v11 != v19)
    {
      if (v2)
      {
        v20 = MEMORY[0x1B8C92830](v19, v10);
      }

      else
      {
        if (v19 >= *(v34 + 16))
        {
          goto LABEL_34;
        }

        v20 = *(v10 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      v23 = [v20 objectIDNotification];
      sub_1B63BE7A4();

      a1 = sub_1B63BE7B4();
      (*v6)(v8, v5);
      ++v19;
      if (a1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1B62B2290(0, v35[2] + 1, 1, v35);
        }

        v25 = v35[2];
        v24 = v35[3];
        if (v25 >= v24 >> 1)
        {
          v35 = sub_1B62B2290((v24 > 1), v25 + 1, 1, v35);
        }

        v26 = v35;
        v35[2] = v25 + 1;
        v26[v25 + 4] = a1;
        v19 = v22;
      }
    }

    v6 = v35[2];
    if (!v6)
    {
LABEL_31:

      return;
    }

    v28 = 0;
    a1 = 0x1E695D628uLL;
    v34 = xmmword_1B63C3D50;
    while (v28 < v35[2])
    {
      v29 = (v28 + 1);
      v5 = objc_opt_self();

      v2 = sub_1B63BEB54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
      v10 = swift_allocObject();
      *(v10 + 16) = v34;
      *(v10 + 56) = sub_1B6281C60(0, &unk_1EDB0EF80, 0x1E695D628);
      v30 = v36;
      *(v10 + 32) = v36;
      v31 = v30;
      v8 = sub_1B63BEC94();

      [v5 _mergeChangesFromRemoteContextSave_intoContexts_];

      v28 = v29;
      if (v6 == v29)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v11 = sub_1B63BF044();
    if (!v11)
    {
      goto LABEL_36;
    }
  }

  v27 = v33;
}

uint64_t sub_1B634D370(void *a1)
{
  v2 = v1;
  v28 = *MEMORY[0x1E69E9840];
  v4 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_historyTokenLock;
  [*(v1 + OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_historyTokenLock) lock];
  v5 = *(v1 + 40);
  v6 = objc_opt_self();
  if (v5)
  {
    v7 = [v6 fetchHistoryAfterToken_];
  }

  else
  {
    v8 = v6;
    v9 = sub_1B63BE954();
    v7 = [v8 fetchHistoryAfterDate_];
  }

  v10 = *(v2 + v4);
  v11 = v7;
  [v10 unlock];
  *&v27[0] = 0;
  v12 = [a1 executeRequest:v11 error:v27];

  v13 = *&v27[0];
  if (v12)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      if ([v15 result])
      {
        sub_1B63BEF84();

        swift_unknownObjectRelease();
      }

      else
      {

        v25 = 0u;
        v26 = 0u;
      }

      v27[0] = v25;
      v27[1] = v26;
      if (*(&v26 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB943410, &qword_1B63C5078);
        if (swift_dynamicCast())
        {

          return v24;
        }
      }

      else
      {
        sub_1B6284EAC(v27, &unk_1EB943740, &qword_1B63C5030);
      }
    }

    else
    {
      v19 = v13;
    }
  }

  else
  {
    v17 = *&v27[0];
    v18 = sub_1B63BE824();

    swift_willThrow();
  }

  v21 = sub_1B63BEDC4();
  if (qword_1EDB0F690 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDB0F680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B63C3D50;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1B6281318();
  *(v23 + 32) = 0xD000000000000040;
  *(v23 + 40) = 0x80000001B63CA8D0;
  sub_1B63BEA14(v21, &dword_1B627F000, v22, "%{public}@", 10, 2, v23);

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B634D698(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_delegatesLock;
  [*(v1 + OBJC_IVAR____TtC8MapsSync17MapsSyncContainer_delegatesLock) lock];
  v3 = [*(v1 + 16) allObjects];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433D8, &qword_1B63C5038);
  v5 = sub_1B63BECA4();

  [*(v1 + v2) unlock];
  if (v5 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
  {
    v7 = 0;
    v8 = 0;
    v41 = i;
    v42 = v5 & 0xC000000000000001;
    v39 = v5 + 32;
    v40 = v5 & 0xFFFFFFFFFFFFFF8;
    v43 = *(a1 + 16);
    v36 = v5;
    v37 = v4;
    while (v42)
    {
      v9 = MEMORY[0x1B8C92830](v8, v5);
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_30;
      }

LABEL_12:
      if (v43)
      {
        v11 = 0;
        while (2)
        {
          v12 = *(a1 + 32 + 8 * v11++);
          v13 = [v9 storeSubscriptionTypes];
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
          v15 = sub_1B63BECA4();

          v16 = *(v15 + 16);
          v17 = 32;
          while (v16)
          {
            v18 = *(v15 + v17);
            v17 += 8;
            --v16;
            if (v18 == v12)
            {

              sub_1B63BF114();
              MEMORY[0x1B8C92330](0xD000000000000029, 0x80000001B63CA870);
              sub_1B63BF1B4();
              MEMORY[0x1B8C92330](0x617274206F687720, 0xEC00000020736B63);
              v19 = [v9 storeSubscriptionTypes];
              v20 = sub_1B63BECA4();

              v21 = MEMORY[0x1B8C923A0](v20, v14);
              v23 = v22;

              MEMORY[0x1B8C92330](v21, v23);

              _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0, 0xE000000000000000);

              v24 = [v9 respondsToSelector_];
              if (v24)
              {
                swift_unknownObjectRetain();
                v25 = sub_1B63BEC94();
                [v9 storeDidChange_];
                swift_unknownObjectRelease();
              }

              if ([v9 respondsToSelector_])
              {
                v44 = MEMORY[0x1E69E7CC0];
                swift_unknownObjectRetain();
                v26 = v43;
                sub_1B639E7FC(0, v43, 0);
                v27 = a1 + 32;
                do
                {
                  v28 = sub_1B63BEBE4();
                  v30 = v29;
                  v32 = *(v44 + 16);
                  v31 = *(v44 + 24);
                  if (v32 >= v31 >> 1)
                  {
                    sub_1B639E7FC((v31 > 1), v32 + 1, 1);
                  }

                  *(v44 + 16) = v32 + 1;
                  v33 = v44 + 16 * v32;
                  *(v33 + 32) = v28;
                  *(v33 + 40) = v30;
                  v27 += 8;
                  --v26;
                }

                while (v26);
                v34 = sub_1B63BEC94();

                [v9 storeDidChangeWithTypes_];
                swift_unknownObjectRelease_n();

                v7 = 1;
                v5 = v36;
                v4 = v37;
                i = v41;
              }

              else
              {
                swift_unknownObjectRelease();
                v7 = 1;
                i = v41;
              }

              goto LABEL_5;
            }
          }

          if (v11 != v43)
          {
            continue;
          }

          break;
        }

        swift_unknownObjectRelease();
        i = v41;
      }

      else
      {
        swift_unknownObjectRelease();
      }

LABEL_5:
      if (v8 == i)
      {

        return v7 & 1;
      }
    }

    if (v8 >= *(v40 + 16))
    {
      goto LABEL_31;
    }

    v9 = *(v39 + 8 * v8);
    swift_unknownObjectRetain();
    v10 = __OFADD__(v8++, 1);
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v7 = 0;
  return v7 & 1;
}

unint64_t sub_1B634DB54()
{
  result = qword_1EB942F40;
  if (!qword_1EB942F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F40);
  }

  return result;
}

unint64_t sub_1B634DBCC(unint64_t result)
{
  v1 = result;
  v12 = MEMORY[0x1E69E7CC0];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v9 = MEMORY[0x1E69E7CC0];
LABEL_14:
    sub_1B63BF114();

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
    v11 = MEMORY[0x1B8C923A0](v9, v10);
    MEMORY[0x1B8C92330](v11);

    _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD000000000000025, 0x80000001B63CA8A0);

    return v9;
  }

  result = sub_1B63BF044();
  v2 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1B8C92830](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      v6 = [v4 changes];
      if (v6)
      {
        v7 = v6;
        sub_1B6281C60(0, &qword_1EDB0EF78, 0x1E695D690);
        v8 = sub_1B63BECA4();

        sub_1B634C04C(v8, &v12);
      }
    }

    v9 = v12;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_41Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B634DE54@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 modificationTime];
  if (v3)
  {
    v4 = v3;
    sub_1B63BE974();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B63BE994();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B634DEF8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B628C510(a1, &v11 - v5, &unk_1EB943210, &unk_1B63C3F50);
  v7 = *a2;
  v8 = sub_1B63BE994();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B63BE954();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setModificationTime_];
}

void sub_1B634E034(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1B63BF004();
    type metadata accessor for MapsSyncManagedVisit();
    sub_1B6349B8C();
    sub_1B63BED74();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
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

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_1B628B9E4(v1);
      return;
    }

    while (1)
    {
      sub_1B62CAC3C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1B63BF074())
      {
        type metadata accessor for MapsSyncManagedVisit();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1B634E224(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id))
{
  v8 = a3;
  v9 = a4;
  a6(v8, v9);

  return 1;
}

uint64_t sub_1B634E2E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B6346494(a1, a2);
  v2[12] = v3;
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    *(inited + 56) = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    *(inited + 64) = sub_1B634E7B8();
    *(inited + 32) = v3;
    v5 = v3;
    v6 = sub_1B628E52C(0x203D3D206469756DLL, 0xEA00000000004025, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    v7 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
    v8 = sub_1B62895F4(v6, 0, 0);
    v2[13] = v8;

    v9 = objc_allocWithZone(type metadata accessor for CollectionPlaceItemRequest());
    if (qword_1EDB0F2A0 != -1)
    {
      v15 = v9;
      swift_once();
      v9 = v15;
    }

    v2[14] = [v9 initWithStore_];
    v10 = v8;
    v11 = swift_task_alloc();
    v2[15] = v11;
    *v11 = v2;
    v11[1] = sub_1B634E4F8;

    return sub_1B628B2B4(v8, v12);
  }

  else
  {
    v14 = v2[1];

    return v14();
  }
}

uint64_t sub_1B634E4F8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_1B634E73C;
  }

  else
  {
    v5 = *(v3 + 112);

    v4 = sub_1B634E618;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B634E618()
{
  v1 = v0[16];
  if (v1 >> 62)
  {
    result = sub_1B63BF044();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = v0[12];
    v12 = v0[13];

    v8 = 0;
    v10 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C92830](0, v0[16]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[16] + 32);
  }

  v5 = v0[12];
  v4 = v0[13];

  v8 = sub_1B62D5984(v6, v7);
  v10 = v9;

LABEL_9:
  v13 = v0[1];

  return v13(v8, v10);
}

uint64_t sub_1B634E73C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

unint64_t sub_1B634E7B8()
{
  result = qword_1EB942B80;
  if (!qword_1EB942B80)
  {
    sub_1B6281C60(255, &qword_1EDB0F620, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942B80);
  }

  return result;
}

uint64_t sub_1B634E994(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B634EA3C;

  return VisitedLocation.note()();
}

uint64_t sub_1B634EA3C(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = *v3;

  if (v4)
  {
    a2 = sub_1B63BE814();

    v9 = a2;
LABEL_3:
    v10 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    v9 = 0;
    goto LABEL_3;
  }

  v11 = sub_1B63BEBC4();

  v10 = v11;
  v9 = 0;
  a2 = v11;
LABEL_6:
  v12 = *(v6 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v8 + 8);

  return v13();
}

uint64_t VisitedLocation.setNote(_:)(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B634ECB0, 0, 0);
}

uint64_t sub_1B634ECB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B6346494(a1, a2);
  v2[32] = v3;
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    *(inited + 56) = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    *(inited + 64) = sub_1B634E7B8();
    *(inited + 32) = v4;
    v6 = v4;
    v7 = sub_1B628E52C(0x203D3D206469756DLL, 0xEA00000000004025, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    v8 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
    v9 = sub_1B62895F4(v7, 0, 0);
    v2[33] = v9;

    v10 = objc_allocWithZone(type metadata accessor for CollectionPlaceItemRequest());
    if (qword_1EDB0F2A0 != -1)
    {
      v16 = v10;
      swift_once();
      v10 = v16;
    }

    v2[34] = qword_1EDB0F2A8;
    v2[35] = [v10 initWithStore_];
    v11 = v9;
    v12 = swift_task_alloc();
    v2[36] = v12;
    *v12 = v2;
    v12[1] = sub_1B634EED4;

    return sub_1B628B2B4(v9, v13);
  }

  else
  {

    v15 = v2[1];

    return v15();
  }
}

uint64_t sub_1B634EED4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v4 = sub_1B634F834;
  }

  else
  {
    v5 = *(v3 + 280);

    v4 = sub_1B634EFF8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B634EFF8()
{
  v1 = v0[37];
  if (v1 >> 62)
  {
    result = sub_1B63BF044();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = v0[31];
    v11 = v0[29];
    v21 = v0[30];
    v22 = v0[28];
    v23 = v0[27];

    v12 = [objc_allocWithZone(type metadata accessor for CollectionPlaceItem(0)) init];
    v0[43] = v12;
    v13 = *(v11 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    v14 = v12;
    [v13 lock];
    v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
    swift_beginAccess();
    sub_1B628C510(v11 + v15, v10, &unk_1EB943210, &unk_1B63C3F50);
    [v13 unlock];
    sub_1B6396BEC(v10, 1);
    v16 = sub_1B6284EAC(v10, &unk_1EB943210, &unk_1B63C3F50);
    v18 = sub_1B6344B7C(v16, v17);
    v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
    [*&v14[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock] lock];
    sub_1B62D67AC(*&v14[v19], v18, v14);
    [*&v14[v19] unlock];

    [v13 lock];
    v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B628C510(v11 + v20, v21, &unk_1EB943680, qword_1B63C4070);
    [v13 unlock];
    sub_1B62D50D4(v21);

    sub_1B62D5DB0(v23, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    inited = swift_initStackObject();
    v0[44] = inited;
    *(inited + 16) = xmmword_1B63C3D70;
    *(inited + 32) = v14;
    v8 = swift_task_alloc();
    v0[45] = v8;
    *v8 = v0;
    v9 = sub_1B634F52C;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C92830](0, v0[37]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[37] + 32);
  }

  v0[39] = v3;
  v5 = v0[27];
  v4 = v0[28];

  sub_1B62D5DB0(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  v0[40] = inited;
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v3;
  v7 = v3;
  v8 = swift_task_alloc();
  v0[41] = v8;
  *v8 = v0;
  v9 = sub_1B634F374;
LABEL_9:
  v8[1] = v9;

  return sub_1B637E4F8(inited);
}

uint64_t sub_1B634F374()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1B634F8C0;
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v2 = sub_1B634F4AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B634F4AC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B634F52C()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1B634F78C;
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v2 = sub_1B634F664;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B634F664()
{
  v1 = v0[43];
  v2 = v0[32];
  v3 = v0[33];
  sub_1B63BF114();

  v4 = [v1 description];
  v5 = sub_1B63BEBD4();
  v7 = v6;

  MEMORY[0x1B8C92330](v5, v7);

  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD000000000000026, 0x80000001B63CA990);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B634F78C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 256);

  swift_setDeallocating();
  swift_arrayDestroy();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B634F834()
{
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B634F8C0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);

  swift_setDeallocating();
  swift_arrayDestroy();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B634FAF0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1B63BEBD4();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1B634FBD4;

  return VisitedLocation.setNote(_:)(a1, v7);
}

uint64_t sub_1B634FBD4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1B63BE814();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

char *sub_1B634FDFC(void *a1)
{
  v2 = sub_1B628E52C(0xD000000000000011, 0x80000001B63CAA90, MEMORY[0x1E69E7CC0]);
  v3 = sub_1B628EC4C(a1, v2, 0);

  return v3;
}

void sub_1B634FE60(void *a1, void *a2)
{
  v5 = type metadata accessor for Visit(0);
  v6 = sub_1B6393E40();
  if (!v2)
  {
    if (MapsSyncVisitedPlacesShouldDedupe(v6, v7))
    {
      sub_1B635072C(a1, a2);
      v8 = objc_allocWithZone(type metadata accessor for VisitRequest());
      *&v8[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
      *&v8[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v5;
      v12.receiver = v8;
      v12.super_class = type metadata accessor for MapsSyncRequest();
      v9 = a1;
      v10 = objc_msgSendSuper2(&v12, sel_init);
      v11 = a2;
      sub_1B63B3514(0x696669746E656469, 0xEA00000000007265, v11, MEMORY[0x1E69E7CC0], v10, v11);
    }
  }
}

void sub_1B634FF84(void *a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  *&v48 = 0xD000000000000011;
  *(&v48 + 1) = 0x80000001B63CA320;
  v4 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50[0] = v48;
  v50[1] = v49;
  if (!*(&v49 + 1))
  {
    sub_1B6284EAC(v50, &unk_1EB943740, &qword_1B63C5030);
    return;
  }

  v5 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
    v7 = sub_1B63BEBC4();
    v8 = [v6 initWithEntityName_];

    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B63C3D80;
    *(v9 + 56) = v5;
    v10 = sub_1B6281318();
    *(v9 + 32) = 0xD000000000000011;
    *(v9 + 40) = 0x80000001B63CA320;
    *(v9 + 96) = v5;
    *(v9 + 104) = v10;
    *(v9 + 64) = v10;
    *(v9 + 72) = v46;
    *(v9 + 80) = v47;
    v11 = sub_1B63BED94();
    [v8 setPredicate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v12 = swift_allocObject();
    *(v12 + 1) = xmmword_1B63C3D70;
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    swift_getKeyPath();
    v12[4] = sub_1B63BEDE4();
    v13 = sub_1B63BEC94();

    [v8 setSortDescriptors_];

    type metadata accessor for MapsSyncManagedVisitedLocation();
    v14 = sub_1B63BEEA4();
    if (v2)
    {
      goto LABEL_54;
    }

    v15 = v14;
    v16 = v14 >> 62;
    if (v14 >> 62)
    {
      v17 = sub_1B63BF044();
      if (v17)
      {
LABEL_9:
        v43 = a2;
        v44 = v15 & 0xC000000000000001;
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1B8C92830](0, v15);
        }

        else
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_58;
          }

          v18 = *(v15 + 32);
        }

        v12 = &selRef_powerByConnector;
        v42 = v18;
        v19 = [v18 visits];
        if (v19)
        {
          v20 = v19;
          *&v50[0] = 0;
          type metadata accessor for MapsSyncManagedVisit();
          sub_1B6349B8C();
          sub_1B63BED54();
        }

        if (MEMORY[0x1E69E7CC0] >> 62)
        {
          goto LABEL_61;
        }

LABEL_15:

        if (v17 < 0)
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
        }

        while (1)
        {
          if (v16)
          {
            if (sub_1B63BF044() < 1)
            {
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            v21 = sub_1B63BF044();
          }

          else
          {
            v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v21)
            {
              goto LABEL_58;
            }
          }

          v45 = v16;
          if (v21 < v17)
          {
            goto LABEL_59;
          }

          if (v44)
          {

            if (v17 != 1)
            {
              v22 = 1;
              do
              {
                v23 = v22 + 1;
                sub_1B63BF134();
                v22 = v23;
              }

              while (v17 != v23);
            }
          }

          else
          {
          }

          v44 = v8;
          if (v45)
          {

            sub_1B63BF2C4();
            v27 = (v28 >> 1) - v25;
            v26 = (v28 >> 1) <= v25;
            if (v28 >> 1 == v25)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v24 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
            v25 = 1;
            v27 = v17 - 1;
            v26 = v17 <= 1;
            if (v17 == 1)
            {
              goto LABEL_33;
            }
          }

          if (v26)
          {
            goto LABEL_64;
          }

          v30 = MEMORY[0x1E69E7CC0] >> 62;
          v31 = (v24 + 8 * v25);
          do
          {
            v32 = *v31;
            v33 = [v32 v12[40]];
            if (v33)
            {
              v34 = v33;
              *&v50[0] = 0;
              type metadata accessor for MapsSyncManagedVisit();
              sub_1B6349B8C();
              sub_1B63BED54();
            }

            if (v30 && sub_1B63BF044())
            {
              sub_1B62B8F48(MEMORY[0x1E69E7CC0]);
              v35 = v38;
            }

            else
            {

              v35 = MEMORY[0x1E69E7CD0];
            }

            sub_1B634E034(v35);
            v36 = [v32 v12[40]];
            if (v36)
            {
              v37 = v36;
              [v32 removeVisits_];
            }

            ++v31;
            --v27;
          }

          while (v27);
LABEL_33:
          swift_unknownObjectRelease();
          type metadata accessor for MapsSyncManagedVisit();
          sub_1B6349B8C();
          v29 = sub_1B63BED44();

          v12 = v42;
          [v42 setVisits_];

          sub_1B63BF114();

          *&v50[0] = 0x20646567727550;
          *(&v50[0] + 1) = 0xE700000000000000;
          if (v45)
          {
            v17 = sub_1B63BF044();
          }

          else
          {
            v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v16 = v43;
          v8 = v44;

          if (!__OFSUB__(v17, 1))
          {
            v39 = sub_1B63BF344();
            MEMORY[0x1B8C92330](v39);

            MEMORY[0x1B8C92330](0xD000000000000014, 0x80000001B63CAA70);
            _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v50[0], *(&v50[0] + 1));

            *&v50[0] = 0;
            if ([v43 save_])
            {
              v40 = *&v50[0];
            }

            else
            {
              v41 = *&v50[0];
              sub_1B63BE824();

              swift_willThrow();
            }

LABEL_54:
            return;
          }

LABEL_60:
          __break(1u);
LABEL_61:
          if (!sub_1B63BF044())
          {
            goto LABEL_15;
          }

          sub_1B62B8F48(MEMORY[0x1E69E7CC0]);

          if (v17 < 0)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_54;
  }
}

void sub_1B635072C(void *a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for VisitedLocationRequest());
  v5 = type metadata accessor for VisitedLocation(0);
  *&v4[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v4[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v5;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for MapsSyncRequest();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  v8 = a2;
  sub_1B63B34E8(0xD000000000000011, 0x80000001B63CA320, v8, MEMORY[0x1E69E7CC0], v7, v8);
}

void sub_1B6350808(void *a1, void *a2)
{
  v5 = type metadata accessor for Visit(0);
  v6 = sub_1B6393E40();
  if (!v2)
  {
    if (MapsSyncVisitedPlacesShouldDedupe(v6, v7))
    {
      v8 = objc_allocWithZone(type metadata accessor for VisitedLocationRequest());
      v9 = type metadata accessor for VisitedLocation(0);
      *&v8[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
      *&v8[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v9;
      v10 = type metadata accessor for MapsSyncRequest();
      v19.receiver = v8;
      v19.super_class = v10;
      v11 = a1;
      v12 = objc_msgSendSuper2(&v19, sel_init);
      v13 = a2;
      sub_1B63B34E8(0xD000000000000011, 0x80000001B63CA320, v13, MEMORY[0x1E69E7CC0], v12, v13);

      v14 = objc_allocWithZone(type metadata accessor for VisitRequest());
      *&v14[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = v11;
      *&v14[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v5;
      v18.receiver = v14;
      v18.super_class = v10;
      v15 = v11;
      v16 = objc_msgSendSuper2(&v18, sel_init);
      v17 = v13;
      sub_1B63B3514(0x696669746E656469, 0xEA00000000007265, v17, MEMORY[0x1E69E7CC0], v16, v17);
    }
  }
}

uint64_t sub_1B63509C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B634FAF0(v2, v3, v4);
}

uint64_t sub_1B6350A78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628E340;

  return sub_1B634E994(v2, v3);
}

id sub_1B6350C04(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedIncidentReport();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B6350DFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedMixinMapItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6350E30@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  result = sub_1B63BF124();
  *a2 = result;
  return result;
}

uint64_t sub_1B6350FCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController_storeSubscriptionTypes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B6351024(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController_storeSubscriptionTypes;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

char *MapsSyncStoreController.init(config:notifyForChanges:callbackQueue:delegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v44 = a3;
  v45 = a2;
  v51 = a1;
  v52 = sub_1B63BEAF4();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B63BEE14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B63BEB14();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1B63BEE04();
  MEMORY[0x1EEE9AC00](v42);
  *&v4[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController_storeSubscriptionTypes] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__barrierQueue;
  v16 = sub_1B6351804();
  sub_1B63BEDF4();
  sub_1B63BEB04();
  v17 = *(v9 + 104);
  v40 = *MEMORY[0x1E69E8090];
  v43 = v8;
  v39 = v17;
  v17(v11);
  v41 = v16;
  *&v5[v15] = sub_1B63BEE34();
  v49 = a4;
  swift_unknownObjectWeakAssign();
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDB0F2A8;
  *&v5[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__store] = qword_1EDB0F2A8;
  v19 = v44;
  if (v44)
  {
    v20 = v18;
    v21 = v19;
    v22 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v23 = v18;
    sub_1B63BEB04();
    v22 = MEMORY[0x1E69E7CC0];
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v38 = sub_1B6281CA8(&qword_1EDB0F660, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433F8, &unk_1B63C5220);
    sub_1B6281CF0(&qword_1EDB0F668, &qword_1EB9433F8, &unk_1B63C5220);
    sub_1B63BEFA4();
    v39(v11, v40, v43);
    v21 = sub_1B63BEE34();
    v19 = 0;
  }

  *&v5[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__callbackQueue] = v21;
  v24 = type metadata accessor for MapsSyncStoreController();
  v55.receiver = v5;
  v55.super_class = v24;
  v25 = v19;
  v26 = objc_msgSendSuper2(&v55, sel_init);
  v27 = OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController_storeSubscriptionTypes;
  swift_beginAccess();
  *&v26[v27] = v45;
  v28 = v26;

  v29 = sub_1B62814B4();
  sub_1B6282674(v28, v29);

  v30 = sub_1B628276C();
  sub_1B6282674(v28, v30);

  v31 = *&v28[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__callbackQueue];
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  aBlock[4] = sub_1B6352384;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B628D904;
  aBlock[3] = &block_descriptor_25;
  v33 = _Block_copy(aBlock);
  v34 = v31;
  sub_1B63BEB04();
  v53 = v22;
  sub_1B6281CA8(&qword_1EDB0F650, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943400, &unk_1B63C5060);
  sub_1B6281CF0(&qword_1EDB0F648, &qword_1EB943400, &unk_1B63C5060);
  v35 = v48;
  v36 = v52;
  sub_1B63BEFA4();
  MEMORY[0x1B8C92510](0, v14, v35, v33);
  _Block_release(v33);
  swift_unknownObjectRelease();

  (*(v50 + 8))(v35, v36);
  (*(v46 + 8))(v14, v47);

  return v28;
}

unint64_t sub_1B6351804()
{
  result = qword_1EDB0F658;
  if (!qword_1EDB0F658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB0F658);
  }

  return result;
}

void *sub_1B6351850(uint64_t a1)
{
  dispatch_activate(*(a1 + OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__barrierQueue));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result storeControllerWithDidLoad_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id MapsSyncStoreController.__allocating_init(notifyForChanges:delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = _s8MapsSync0aB11StoreConfigC07defaultcD0ACvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v6 = sub_1B63BEC94();

  v7 = [v4 initWithConfig:v5 notifyForChanges:v6 callbackQueue:0 delegate:a2];

  swift_unknownObjectRelease();
  return v7;
}

id MapsSyncStoreController.init(notifyForChanges:delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = _s8MapsSync0aB11StoreConfigC07defaultcD0ACvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v5 = sub_1B63BEC94();

  v6 = [v2 initWithConfig:v4 notifyForChanges:v5 callbackQueue:0 delegate:a2];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1B6351B28(uint64_t a1)
{
  v3 = sub_1B63BEAF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B63BEB14();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__barrierQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1B635238C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B628D904;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  sub_1B63BEB04();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1B6281CA8(&qword_1EDB0F650, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943400, &unk_1B63C5060);
  sub_1B6281CF0(&qword_1EDB0F648, &qword_1EB943400, &unk_1B63C5060);
  sub_1B63BEFA4();
  MEMORY[0x1B8C92510](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_1B6351DF0(char *a1, uint64_t a2)
{
  v4 = sub_1B63BEAF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B63BEB14();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&a1[OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController__callbackQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1B63524F8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B628D904;
  aBlock[3] = &block_descriptor_19_0;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  sub_1B63BEB04();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1B6281CA8(&qword_1EDB0F650, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943400, &unk_1B63C5060);
  sub_1B6281CF0(&qword_1EDB0F648, &qword_1EB943400, &unk_1B63C5060);
  sub_1B63BEFA4();
  MEMORY[0x1B8C92510](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v16);
}

void *sub_1B63520BC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong respondsToSelector_])
    {
      v4 = sub_1B63BEC94();
      [v3 storeControllerWithDataTypesChanged_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      [v6 storeControllerWithDataChanged_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id MapsSyncStoreController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSyncStoreController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncStoreController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6352510()
{
  result = sub_1B6352534();
  byte_1EB9455F0 = result & 1;
  return result;
}

uint64_t sub_1B6352534()
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(v9, 0x288uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9434C0, &qword_1B63C5298);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B63C5270;
  *(v0 + 32) = 0xE00000001;
  *(v0 + 40) = 1;
  *(v0 + 44) = getpid();
  v8 = 648;
  v1 = sysctl((v0 + 32), 4u, v9, &v8, 0, 0);

  if (!v1)
  {
    return (v9[33] >> 3) & 1;
  }

  sub_1B63BF114();

  MEMORY[0x1B8C921C0](v2);
  v3 = sub_1B63BF344();
  MEMORY[0x1B8C92330](v3);

  v4 = sub_1B63BEDC4();
  if (qword_1EDB0F690 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDB0F680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B63C3D50;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1B6281318();
  *(v6 + 32) = 0x66206C7463737973;
  *(v6 + 40) = 0xEF203A64656C6961;
  sub_1B63BEA14(v4, &dword_1B627F000, v5, "%{public}@", 10, 2, v6);

  return 0;
}

void sub_1B6352764(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  error[1] = *MEMORY[0x1E69E9840];
  if (*(a3 + 32))
  {
    v7 = SecTaskCreateFromSelf(0);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:
    v20 = sub_1B63BEDD4();
    if (qword_1EDB0F690 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDB0F680;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B63C3D50;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1B6281318();
    *(v22 + 32) = 0xD000000000000018;
    *(v22 + 40) = 0x80000001B63CACB0;
    sub_1B63BEA14(v20, &dword_1B627F000, v21, "%{public}@", 10, 2, v22);
    goto LABEL_11;
  }

  v17 = *(a3 + 16);
  v16 = *(a3 + 24);
  v18 = *(a3 + 8);
  v19 = HIDWORD(*a3);
  token.val[0] = *a3;
  token.val[1] = v19;
  *&token.val[2] = v18;
  *&token.val[4] = v17;
  *&token.val[6] = v16;
  v7 = SecTaskCreateWithAuditToken(0, &token);
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  error[0] = 0;
  v8 = sub_1B63BEBC4();
  v9 = SecTaskCopyValueForEntitlement(v7, v8, error);

  v10 = error[0];
  if (error[0])
  {
    *token.val = 0;
    *&token.val[2] = 0xE000000000000000;
    sub_1B63BF114();
    MEMORY[0x1B8C92330](0xD00000000000001CLL, 0x80000001B63CACD0);
    MEMORY[0x1B8C92330](a1, a2);
    MEMORY[0x1B8C92330](8250, 0xE200000000000000);
    v25 = v10;
    type metadata accessor for CFError(0);
    sub_1B63BF1B4();
    v11 = *token.val;
    v12 = *&token.val[2];
    v13 = sub_1B63BEDD4();
    if (qword_1EDB0F690 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDB0F680;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B63C3D50;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1B6281318();
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    sub_1B63BEA14(v13, &dword_1B627F000, v14, "%{public}@", 10, 2, v15);

    swift_unknownObjectRelease();
LABEL_11:

    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  if (v9)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {

    ObjectType = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  *a4 = v9;
  *(a4 + 24) = ObjectType;
}

uint64_t sub_1B6352AC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9433E8, &qword_1B63C63D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AnalyticsIdentifierRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id AnalyticsIdentifierRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id AnalyticsIdentifierRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for AnalyticsIdentifier(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id AnalyticsIdentifierRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for AnalyticsIdentifier(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6352EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B62980BC(a1, a2);
  if (!v3)
  {
    v5 = v4;
    v13 = MEMORY[0x1E69E7CC0];
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_20:
      v7 = sub_1B63BF044();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v2 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1B8C92830](v9, v5);
            }

            else
            {
              if (v9 >= *(v6 + 16))
              {
                goto LABEL_19;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for AnalyticsIdentifier(0);
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v2 = v13;
        }

        while (v8 != v7);
        goto LABEL_22;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v2 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v2;
}

uint64_t sub_1B6353110(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6353180, 0, 0);
}

uint64_t sub_1B6353180()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B6353284;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6353284(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1B635355C;
  }

  else
  {

    v4 = sub_1B63533A8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B63533A8()
{
  v1 = *(v0 + 56);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for AnalyticsIdentifier(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B635355C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B635373C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B63537E4;

  return sub_1B6353110(v4, v5);
}

uint64_t sub_1B63537E4(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for AnalyticsIdentifier(0);
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B6353970(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B63539E0, 0, 0);
}

uint64_t sub_1B63539E0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B6353AF0;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6353AF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1B6353DC8;
  }

  else
  {

    v4 = sub_1B6353C14;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6353C14()
{
  v1 = *(v0 + 64);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for AnalyticsIdentifier(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B6353DC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B6353FBC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B635407C;

  return sub_1B6353970(a1, v8);
}

uint64_t sub_1B635407C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for AnalyticsIdentifier(0);
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id AnalyticsIdentifierRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsIdentifierRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of AnalyticsIdentifierRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of AnalyticsIdentifierRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B635458C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6353FBC(v2, v3, v4);
}

uint64_t sub_1B6354640()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B635373C(v2, v3);
}

id AnonymousCredentialRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id AnonymousCredentialRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id AnonymousCredentialRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for AnonymousCredential(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id AnonymousCredentialRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for AnonymousCredential(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6354A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B62980BC(a1, a2);
  if (!v3)
  {
    v5 = v4;
    v13 = MEMORY[0x1E69E7CC0];
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_20:
      v7 = sub_1B63BF044();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v2 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1B8C92830](v9, v5);
            }

            else
            {
              if (v9 >= *(v6 + 16))
              {
                goto LABEL_19;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for AnonymousCredential(0);
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v2 = v13;
        }

        while (v8 != v7);
        goto LABEL_22;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v2 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v2;
}

uint64_t sub_1B6354CCC(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6354D3C, 0, 0);
}

uint64_t sub_1B6354D3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B6354E40;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6354E40(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1B635355C;
  }

  else
  {

    v4 = sub_1B6354F64;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6354F64()
{
  v1 = *(v0 + 56);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for AnonymousCredential(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B635528C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6355334;

  return sub_1B6354CCC(v4, v5);
}

uint64_t sub_1B6355334(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for AnonymousCredential(0);
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B63554C0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6355530, 0, 0);
}

uint64_t sub_1B6355530()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B6355640;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6355640(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1B6353DC8;
  }

  else
  {

    v4 = sub_1B6355764;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6355764()
{
  v1 = *(v0 + 64);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for AnonymousCredential(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B6355AA0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6355B60;

  return sub_1B63554C0(a1, v8);
}

uint64_t sub_1B6355B60(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for AnonymousCredential(0);
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id AnonymousCredentialRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnonymousCredentialRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of AnonymousCredentialRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of AnonymousCredentialRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B6356070()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6355AA0(v2, v3, v4);
}

uint64_t sub_1B6356124()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B635528C(v2, v3);
}

id CachedCuratedCollectionRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id CachedCuratedCollectionRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id CachedCuratedCollectionRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for CachedCuratedCollection(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CachedCuratedCollectionRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for CachedCuratedCollection(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B635646C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B62980BC(a1, a2);
  if (!v3)
  {
    v5 = v4;
    v13 = MEMORY[0x1E69E7CC0];
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_20:
      v7 = sub_1B63BF044();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v2 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1B8C92830](v9, v5);
            }

            else
            {
              if (v9 >= *(v6 + 16))
              {
                goto LABEL_19;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for CachedCuratedCollection(0);
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v2 = v13;
        }

        while (v8 != v7);
        goto LABEL_22;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v2 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v2;
}

uint64_t sub_1B63566C8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6356738, 0, 0);
}

uint64_t sub_1B6356738()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B635683C;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B635683C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1B635355C;
  }

  else
  {

    v4 = sub_1B6356960;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6356960()
{
  v1 = *(v0 + 56);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for CachedCuratedCollection(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B6356C88(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6356D30;

  return sub_1B63566C8(v4, v5);
}

uint64_t sub_1B6356D30(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for CachedCuratedCollection(0);
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

id CachedCuratedCollectionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedCuratedCollectionRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of CachedCuratedCollectionRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of CachedCuratedCollectionRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B6357220()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6356C88(v2, v3);
}

id CachedMapItemStorageRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id CachedMapItemStorageRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id CachedMapItemStorageRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for CachedMapItemStorage(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CachedMapItemStorageRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for CachedMapItemStorage(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6357650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B62980BC(a1, a2);
  if (!v3)
  {
    v5 = v4;
    v13 = MEMORY[0x1E69E7CC0];
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_20:
      v7 = sub_1B63BF044();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v2 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1B8C92830](v9, v5);
            }

            else
            {
              if (v9 >= *(v6 + 16))
              {
                goto LABEL_19;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for CachedMapItemStorage(0);
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v2 = v13;
        }

        while (v8 != v7);
        goto LABEL_22;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v2 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v2;
}

uint64_t sub_1B63578AC(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B635791C, 0, 0);
}

uint64_t sub_1B635791C()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B6357A20;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6357A20(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1B635355C;
  }

  else
  {

    v4 = sub_1B6357B44;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6357B44()
{
  v1 = *(v0 + 56);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for CachedMapItemStorage(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B6357E6C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B6357F14;

  return sub_1B63578AC(v4, v5);
}

uint64_t sub_1B6357F14(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for CachedMapItemStorage(0);
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B63580A0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6358110, 0, 0);
}

uint64_t sub_1B6358110()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B6358220;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6358220(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1B6353DC8;
  }

  else
  {

    v4 = sub_1B6358344;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6358344()
{
  v1 = *(v0 + 64);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for CachedMapItemStorage(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B6358680(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B6358740;

  return sub_1B63580A0(a1, v8);
}

uint64_t sub_1B6358740(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for CachedMapItemStorage(0);
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id CachedMapItemStorageRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedMapItemStorageRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of CachedMapItemStorageRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of CachedMapItemStorageRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B6358C50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B6358680(v2, v3, v4);
}

uint64_t sub_1B6358D04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B6357E6C(v2, v3);
}

id CollectionItemRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  if (qword_1EDB0F2A0 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EDB0F2A8;

  return [v1 initWithStore_];
}

id CollectionItemRequest.init()()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB0F2A8;

  return [v0 initWithStore_];
}

id CollectionItemRequest.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = type metadata accessor for CollectionItem(0);
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v3[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CollectionItemRequest.init(store:)(uint64_t a1)
{
  v3 = type metadata accessor for CollectionItem(0);
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v1[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B6359134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B62980BC(a1, a2);
  if (!v3)
  {
    v5 = v4;
    v13 = MEMORY[0x1E69E7CC0];
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_20:
      v7 = sub_1B63BF044();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v2 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1B8C92830](v9, v5);
            }

            else
            {
              if (v9 >= *(v6 + 16))
              {
                goto LABEL_19;
              }

              v10 = *(v5 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for CollectionItem(0);
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_22;
            }
          }

          MEMORY[0x1B8C92370]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B63BECC4();
          }

          sub_1B63BECE4();
          v2 = v13;
        }

        while (v8 != v7);
        goto LABEL_22;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v2 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v2;
}

uint64_t sub_1B6359390(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6359400, 0, 0);
}

uint64_t sub_1B6359400()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B6359504;

  return sub_1B62857BC(sub_1B6283660, v3);
}

uint64_t sub_1B6359504(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1B635355C;
  }

  else
  {

    v4 = sub_1B6359628;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6359628()
{
  v1 = *(v0 + 56);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 56);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 56);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 56));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for CollectionItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B6359950(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B63599F8;

  return sub_1B6359390(v4, v5);
}

uint64_t sub_1B63599F8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1B63BE814();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for CollectionItem(0);
    v10 = sub_1B63BEC94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B6359B84(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B6359BF4, 0, 0);
}

uint64_t sub_1B6359BF4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B6359D04;

  return sub_1B62857BC(sub_1B628A570, v4);
}

uint64_t sub_1B6359D04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1B6353DC8;
  }

  else
  {

    v4 = sub_1B6359E28;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6359E28()
{
  v1 = *(v0 + 64);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 64);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v8, *(v0 + 64));
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for CollectionItem(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v13;
  }

  while (v5 != v3);
LABEL_21:

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_1B635A164(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B635A224;

  return sub_1B6359B84(a1, v8);
}

uint64_t sub_1B635A224(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_1B63BE814();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for CollectionItem(0);
    v11 = sub_1B63BEC94();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id CollectionItemRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionItemRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of CollectionItemRequest.fetch()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B629DD18;

  return v5();
}

uint64_t dispatch thunk of CollectionItemRequest.fetch(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B628FBFC;

  return v7(a1);
}

uint64_t sub_1B635A734()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B635A164(v2, v3, v4);
}