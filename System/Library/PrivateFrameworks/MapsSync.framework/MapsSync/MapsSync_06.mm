void sub_1B6324364(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
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

uint64_t sub_1B632440C(uint64_t a1, unint64_t a2)
{
  sub_1B6327D18(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B6324454(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  sub_1B6291034(*a1, v7);
  a5(v6, v7);

  return sub_1B6284F64(v6, v7);
}

void sub_1B63244B8(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedUserRoute();
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

void sub_1B63245DC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedUserRoute();
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

uint64_t (*sub_1B63246A8(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6323F94(a1, a2);
  a1[1] = v4;
  return sub_1B63246F0;
}

uint64_t sub_1B6324708(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
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

id sub_1B63247D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSUserRoute__southLatitude);
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
  *(v20 + 16) = sub_1B6327EE8;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_142;
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
    v16 = sub_1B6327EE8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6324B90(void *a1)
{
  sub_1B6327F10(a1);
}

void (*sub_1B6324BC8(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B63247D0(a1, a2);
  return sub_1B6324C10;
}

id sub_1B6324C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSUserRoute__totalAscent);
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
  *(v20 + 16) = sub_1B63280C0;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_153;
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
    v16 = sub_1B63280C0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B632502C(void *a1)
{
  sub_1B63280E8(a1);
}

void (*sub_1B6325064(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B6324C6C(a1, a2);
  return sub_1B63250AC;
}

id sub_1B6325108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSUserRoute__totalDescent);
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
  *(v20 + 16) = sub_1B6328298;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_164;
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
    v16 = sub_1B6328298;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63254C8(void *a1)
{
  sub_1B63282C0(a1);
}

void (*sub_1B6325500(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B6325108(a1, a2);
  return sub_1B6325548;
}

id sub_1B63255CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSUserRoute__tourIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6328470;
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

id sub_1B6325768(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedUserRoute();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B63257D8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSUserRoute__tourIdentifier);
  [v3 unlock];
  *a1 = v4;
  return sub_1B632585C;
}

id sub_1B63258C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSUserRoute__transportType);
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
  *(v20 + 16) = sub_1B6328494;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_183;
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
    v16 = sub_1B6328494;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6325C84(void *a1)
{
  sub_1B63284BC(a1);
}

void (*sub_1B6325CBC(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B63258C4(a1, a2);
  return sub_1B6325D04;
}

id sub_1B6325D60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSUserRoute__westLongitude);
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
  *(v20 + 16) = sub_1B632866C;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_194;
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
    v16 = sub_1B632866C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6326120(void *a1)
{
  sub_1B6328694(a1);
}

void sub_1B6326158(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v15];
  v7 = v15[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedUserRoute();
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

void (*sub_1B632626C(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B6325D60(a1, a2);
  return sub_1B63262B4;
}

void *sub_1B63262CC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B6326328(a1, a2, v6, v5);
}

void *sub_1B6326328(void *a1, void *a2, int a3, int a4)
{
  v53 = a4;
  v54 = a3;
  v55 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v49 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v48 - v11;
  *&v4[OBJC_IVAR___MSUserRoute__addressObject] = xmmword_1B63C3E40;
  v12 = &v4[OBJC_IVAR___MSUserRoute__customName];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR___MSUserRoute__customNote];
  *v13 = 0;
  v13[1] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__eastLongitude] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__hikeType] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__length] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__northLatitude] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__originLatitude] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__originLongitude] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__positionIndex] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__routeGeometry] = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSUserRoute__southLatitude] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__totalAscent] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__totalDescent] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__tourIdentifier] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__transportType] = 0;
  *&v4[OBJC_IVAR___MSUserRoute__westLongitude] = 0;
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
  v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
  v21 = sub_1B63BE994();
  v22 = *(*(v21 - 8) + 56);
  v23 = &v4[v20];
  v24 = v54;
  v22(v23, 1, 1, v21);
  v22(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v21);
  v25 = v55;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v55;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v24;
  v26 = type metadata accessor for MapsSyncObject(0);
  v56.receiver = v4;
  v56.super_class = v26;
  v27 = v25;
  v28 = objc_msgSendSuper2(&v56, sel_init);
  v29 = v28;
  if (a1)
  {
    v30 = v28;
    v31 = [a1 objectID];
    v32 = *(v30 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v30 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v31;

    (*((*MEMORY[0x1E69E7D40] & *v30) + 0x218))(a1, v24 & 1, v53 & 1);
  }

  else
  {
    v33 = v28;
    v34 = v52;
    sub_1B63BE9F4();
    v19(v34, 0, 1, v18);
    v35 = v49;
    sub_1B62B2C0C(v34, v49);
    v36 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v35, &v33[v36]);
    swift_endAccess();
    v37 = v51;
    sub_1B62B2C0C(v34, v51);
    v38 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v39 = swift_allocObject();
    sub_1B62B2CEC(v37, v39 + v38);
    v40 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v41 = *&v33[v40];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[v40] = v41;
    v43 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_1B629A8E8(0, v41[2] + 1, 1, v41);
      *&v33[v40] = v41;
    }

    v45 = v41[2];
    v44 = v41[3];
    if (v45 >= v44 >> 1)
    {
      v41 = sub_1B629A8E8((v44 > 1), v45 + 1, 1, v41);
    }

    v41[2] = v45 + 1;
    v46 = &v41[2 * v45];
    v46[4] = sub_1B62B2D5C;
    v46[5] = v39;
    *&v33[v40] = v41;
    swift_endAccess();

    sub_1B62B2DF0(v43);
  }

  return v29;
}

void sub_1B632692C()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSUserRoute__addressObject), *(v0 + OBJC_IVAR___MSUserRoute__addressObject + 8));

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSUserRoute__routeGeometry), *(v0 + OBJC_IVAR___MSUserRoute__routeGeometry + 8));
  v1 = *(v0 + OBJC_IVAR___MSUserRoute__westLongitude);
}

id UserRoute.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserRoute(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B6326C10(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedUserRoute();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = a1;
  if (a2)
  {
    v8 = *(v2 + OBJC_IVAR___MSUserRoute__addressObject);
    v9 = *(v2 + OBJC_IVAR___MSUserRoute__addressObject + 8);
    *(v2 + OBJC_IVAR___MSUserRoute__addressObject) = xmmword_1B63C3E40;
    sub_1B6284F64(v8, v9);
LABEL_9:
    v18 = (v2 + OBJC_IVAR___MSUserRoute__customName);
    *v18 = 0;
    v18[1] = 0;

    goto LABEL_10;
  }

  v10 = [v6 addressObject];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1B63BE924();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  v15 = (v2 + OBJC_IVAR___MSUserRoute__addressObject);
  v16 = *(v2 + OBJC_IVAR___MSUserRoute__addressObject);
  v17 = *(v2 + OBJC_IVAR___MSUserRoute__addressObject + 8);
  *v15 = v12;
  v15[1] = v14;
  sub_1B6284F64(v16, v17);
  if (a2)
  {
    goto LABEL_9;
  }

  v47 = [v6 customName];
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

  v66 = (v2 + OBJC_IVAR___MSUserRoute__customName);
  *v66 = v49;
  v66[1] = v51;

  v67 = [v6 customNote];
  if (v67)
  {
    v68 = v67;
    v19 = sub_1B63BEBD4();
    v20 = v69;

    goto LABEL_11;
  }

LABEL_10:
  v19 = 0;
  v20 = 0;
LABEL_11:
  v21 = (v2 + OBJC_IVAR___MSUserRoute__customNote);
  *v21 = v19;
  v21[1] = v20;

  if (a2)
  {
    v22 = 0;
  }

  else
  {
    v22 = [v6 eastLongitude];
  }

  v23 = *(v2 + OBJC_IVAR___MSUserRoute__eastLongitude);
  *(v2 + OBJC_IVAR___MSUserRoute__eastLongitude) = v22;

  v24 = [v6 hikeType];
  *(v2 + OBJC_IVAR___MSUserRoute__hikeType) = v24;
  if (a2)
  {
    v25 = *(v2 + OBJC_IVAR___MSUserRoute__length);
    *(v2 + OBJC_IVAR___MSUserRoute__length) = 0;

    v26 = *(v2 + OBJC_IVAR___MSUserRoute__northLatitude);
    *(v2 + OBJC_IVAR___MSUserRoute__northLatitude) = 0;

    v27 = *(v2 + OBJC_IVAR___MSUserRoute__originLatitude);
    *(v2 + OBJC_IVAR___MSUserRoute__originLatitude) = 0;

    v28 = 0;
  }

  else
  {
    v29 = [v6 length];
    v30 = *(v2 + OBJC_IVAR___MSUserRoute__length);
    *(v2 + OBJC_IVAR___MSUserRoute__length) = v29;

    v31 = [v6 northLatitude];
    v32 = *(v2 + OBJC_IVAR___MSUserRoute__northLatitude);
    *(v2 + OBJC_IVAR___MSUserRoute__northLatitude) = v31;

    v33 = [v6 originLatitude];
    v34 = *(v2 + OBJC_IVAR___MSUserRoute__originLatitude);
    *(v2 + OBJC_IVAR___MSUserRoute__originLatitude) = v33;

    v28 = [v6 originLongitude];
  }

  v35 = *(v2 + OBJC_IVAR___MSUserRoute__originLongitude);
  *(v2 + OBJC_IVAR___MSUserRoute__originLongitude) = v28;

  v36 = [v6 positionIndex];
  *(v2 + OBJC_IVAR___MSUserRoute__positionIndex) = v36;
  if (a2)
  {
    v37 = *(v2 + OBJC_IVAR___MSUserRoute__routeGeometry);
    v38 = *(v2 + OBJC_IVAR___MSUserRoute__routeGeometry + 8);
    *(v2 + OBJC_IVAR___MSUserRoute__routeGeometry) = xmmword_1B63C3E40;
    sub_1B6284F64(v37, v38);
    v39 = *(v2 + OBJC_IVAR___MSUserRoute__southLatitude);
    *(v2 + OBJC_IVAR___MSUserRoute__southLatitude) = 0;

    v40 = *(v2 + OBJC_IVAR___MSUserRoute__totalAscent);
    *(v2 + OBJC_IVAR___MSUserRoute__totalAscent) = 0;

    v41 = 0;
  }

  else
  {
    v42 = [v6 routeGeometry];
    if (v42)
    {
      v43 = v42;
      v44 = sub_1B63BE924();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0xF000000000000000;
    }

    v52 = (v2 + OBJC_IVAR___MSUserRoute__routeGeometry);
    v53 = *(v2 + OBJC_IVAR___MSUserRoute__routeGeometry);
    v54 = *(v2 + OBJC_IVAR___MSUserRoute__routeGeometry + 8);
    *v52 = v44;
    v52[1] = v46;
    sub_1B6284F64(v53, v54);
    v55 = [v6 southLatitude];
    v56 = *(v2 + OBJC_IVAR___MSUserRoute__southLatitude);
    *(v2 + OBJC_IVAR___MSUserRoute__southLatitude) = v55;

    v57 = [v6 totalAscent];
    v58 = *(v2 + OBJC_IVAR___MSUserRoute__totalAscent);
    *(v2 + OBJC_IVAR___MSUserRoute__totalAscent) = v57;

    v41 = [v6 totalDescent];
  }

  v59 = *(v2 + OBJC_IVAR___MSUserRoute__totalDescent);
  *(v2 + OBJC_IVAR___MSUserRoute__totalDescent) = v41;

  v60 = [v6 tourIdentifier];
  *(v2 + OBJC_IVAR___MSUserRoute__tourIdentifier) = v60;
  if (a2)
  {
    v61 = *(v2 + OBJC_IVAR___MSUserRoute__transportType);
    *(v2 + OBJC_IVAR___MSUserRoute__transportType) = 0;

    v62 = 0;
  }

  else
  {
    v63 = [v6 transportType];
    v64 = *(v2 + OBJC_IVAR___MSUserRoute__transportType);
    *(v2 + OBJC_IVAR___MSUserRoute__transportType) = v63;

    v62 = [v6 westLongitude];
  }

  v65 = *(v2 + OBJC_IVAR___MSUserRoute__westLongitude);
  *(v2 + OBJC_IVAR___MSUserRoute__westLongitude) = v62;
}

id sub_1B6327108(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSUserRoute__addressObject);
  v8 = *(v3 + OBJC_IVAR___MSUserRoute__addressObject);
  v9 = *(v3 + OBJC_IVAR___MSUserRoute__addressObject + 8);
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
    *(v11 + 16) = sub_1B6329624;
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

id sub_1B6327398(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__eastLongitude);
  *(v2 + OBJC_IVAR___MSUserRoute__eastLongitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6329600;
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

id sub_1B6327594(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__length);
  *(v2 + OBJC_IVAR___MSUserRoute__length) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B63295DC;
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

id sub_1B632776C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__northLatitude);
  *(v2 + OBJC_IVAR___MSUserRoute__northLatitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B63295B8;
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

id sub_1B6327944(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__originLatitude);
  *(v2 + OBJC_IVAR___MSUserRoute__originLatitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6329594;
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

id sub_1B6327B1C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__originLongitude);
  *(v2 + OBJC_IVAR___MSUserRoute__originLongitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6329570;
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

id sub_1B6327D18(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSUserRoute__routeGeometry);
  v8 = *(v3 + OBJC_IVAR___MSUserRoute__routeGeometry);
  v9 = *(v3 + OBJC_IVAR___MSUserRoute__routeGeometry + 8);
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
    *(v11 + 16) = sub_1B632954C;
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

id sub_1B6327F10(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__southLatitude);
  *(v2 + OBJC_IVAR___MSUserRoute__southLatitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6329528;
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

id sub_1B63280E8(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__totalAscent);
  *(v2 + OBJC_IVAR___MSUserRoute__totalAscent) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6329504;
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

id sub_1B63282C0(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__totalDescent);
  *(v2 + OBJC_IVAR___MSUserRoute__totalDescent) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B63294E0;
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

id sub_1B63284BC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__transportType);
  *(v2 + OBJC_IVAR___MSUserRoute__transportType) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B63294BC;
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

id sub_1B6328694(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSUserRoute__westLongitude);
  *(v2 + OBJC_IVAR___MSUserRoute__westLongitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6329498;
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

uint64_t keypath_set_197Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

id Vehicle.__allocating_init(colorHex:currentVehicleState:dateOfVehicleIngestion:displayName:headUnitBluetoothIdentifier:headUnitMacAddress:iapIdentifier:lastStateUpdateDate:licensePlate:lprPowerType:lprVehicleType:manufacturer:model:pairedAppIdentifier:positionIndex:powerByConnector:preferredChargingNetworks:siriIntentsIdentifier:supportedConnectors:vehicleIdentifier:vehicleType:year:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, void *a38)
{
  v39 = v38;
  v106 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = &v84 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v84 - v48;
  v102 = objc_allocWithZone(v39);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v100 = qword_1EDB0F2A8;
  if (a2)
  {
    v101 = sub_1B63BEBC4();
  }

  else
  {
    v101 = 0;
  }

  v103 = a4;
  if (a4 >> 60 == 15)
  {
    v99 = 0;
  }

  else
  {
    v50 = v106;
    sub_1B629119C(v106, a4);
    v99 = sub_1B63BE904();
    sub_1B6284F64(v50, a4);
  }

  v104 = a5;
  sub_1B628C510(a5, v49, &unk_1EB943210, &unk_1B63C3F50);
  v51 = sub_1B63BE994();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v54 = 0;
  if (v53(v49, 1, v51) != 1)
  {
    v54 = sub_1B63BE954();
    (*(v52 + 8))(v49, v51);
  }

  v97 = v54;
  if (a7)
  {
    v96 = sub_1B63BEBC4();

    v55 = a11;
    if (a9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v96 = 0;
    v55 = a11;
    if (a9)
    {
LABEL_13:
      v95 = sub_1B63BEBC4();

      v56 = a13;
      v57 = a14;
      if (v55)
      {
        goto LABEL_14;
      }

LABEL_18:
      v93 = 0;
      if (v56)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  v95 = 0;
  v56 = a13;
  v57 = a14;
  if (!v55)
  {
    goto LABEL_18;
  }

LABEL_14:
  v93 = sub_1B63BEBC4();

  if (v56)
  {
LABEL_15:
    v94 = sub_1B63BEBC4();

    goto LABEL_20;
  }

LABEL_19:
  v94 = 0;
LABEL_20:
  sub_1B628C510(v57, v47, &unk_1EB943210, &unk_1B63C3F50);
  if (v53(v47, 1, v51) == 1)
  {
    v112 = 0;
    v58 = a18;
    if (a16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v112 = sub_1B63BE954();
    (*(v52 + 8))(v47, v51);
    v58 = a18;
    if (a16)
    {
LABEL_22:
      v110 = sub_1B63BEBC4();

      v59 = a20;
      if (v58)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }
  }

  v110 = 0;
  v59 = a20;
  if (v58)
  {
LABEL_23:
    v108 = sub_1B63BEBC4();

    v60 = a22;
    if (v59)
    {
      goto LABEL_24;
    }

    goto LABEL_31;
  }

LABEL_30:
  v108 = 0;
  v60 = a22;
  if (v59)
  {
LABEL_24:
    v61 = sub_1B63BEBC4();

    v62 = a24;
    if (v60)
    {
      goto LABEL_25;
    }

    goto LABEL_32;
  }

LABEL_31:
  v61 = 0;
  v62 = a24;
  if (v60)
  {
LABEL_25:
    v111 = sub_1B63BEBC4();

    v63 = a26;
    if (v62)
    {
      goto LABEL_26;
    }

LABEL_33:
    v109 = 0;
    v65 = a28;
    v64 = a29;
    if (v63)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

LABEL_32:
  v111 = 0;
  v63 = a26;
  if (!v62)
  {
    goto LABEL_33;
  }

LABEL_26:
  v109 = sub_1B63BEBC4();

  v65 = a28;
  v64 = a29;
  if (v63)
  {
LABEL_27:
    v107 = sub_1B63BEBC4();

    goto LABEL_35;
  }

LABEL_34:
  v107 = 0;
LABEL_35:
  v105 = a30;
  if (v64 >> 60 == 15)
  {
    v66 = 0;
  }

  else
  {
    sub_1B629119C(v65, v64);
    v66 = sub_1B63BE904();
    sub_1B6284F64(v65, v64);
  }

  v92 = v64;
  if (a31 >> 60 == 15)
  {
    v67 = 0;
  }

  else
  {
    v68 = v105;
    sub_1B629119C(v105, a31);
    v67 = sub_1B63BE904();
    sub_1B6284F64(v68, a31);
  }

  v98 = v57;
  v91 = v65;
  v90 = a31;
  if (a33)
  {
    v69 = sub_1B63BEBC4();
  }

  else
  {
    v69 = 0;
  }

  if (a36)
  {
    v70 = sub_1B63BEBC4();
  }

  else
  {
    v70 = 0;
  }

  v89 = v70;
  v83 = v70;
  v88 = v69;
  v82 = v69;
  v87 = v67;
  v81 = v67;
  v86 = v66;
  v80 = v66;
  v79 = v61;
  v85 = v61;
  v71 = v94;
  v72 = v93;
  v73 = v101;
  v74 = v99;
  v75 = v96;
  v76 = v97;
  v77 = v95;
  v102 = [v102 initWithStore:v100 colorHex:v101 currentVehicleState:v99 dateOfVehicleIngestion:v97 displayName:v96 headUnitBluetoothIdentifier:v95 headUnitMacAddress:v93 iapIdentifier:v94 lastStateUpdateDate:v112 licensePlate:v110 lprPowerType:v108 lprVehicleType:v79 manufacturer:v111 model:v109 pairedAppIdentifier:v107 positionIndex:a27 powerByConnector:v80 preferredChargingNetworks:v81 siriIntentsIdentifier:v82 supportedConnectors:a34 vehicleIdentifier:v83 vehicleType:a37 year:a38];

  sub_1B6284F64(v105, v90);
  sub_1B6284F64(v91, v92);
  sub_1B6284F64(v106, v103);
  sub_1B6284EAC(v98, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v104, &unk_1EB943210, &unk_1B63C3F50);
  return v102;
}

id Vehicle.init(colorHex:currentVehicleState:dateOfVehicleIngestion:displayName:headUnitBluetoothIdentifier:headUnitMacAddress:iapIdentifier:lastStateUpdateDate:licensePlate:lprPowerType:lprVehicleType:manufacturer:model:pairedAppIdentifier:positionIndex:powerByConnector:preferredChargingNetworks:siriIntentsIdentifier:supportedConnectors:vehicleIdentifier:vehicleType:year:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, void *a38)
{
  v40 = sub_1B6336F54(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);

  sub_1B6284F64(a30, a31);
  sub_1B6284F64(a28, a29);
  sub_1B6284F64(a3, a4);
  return v40;
}

char *Vehicle.__allocating_init(store:colorHex:currentVehicleState:dateOfVehicleIngestion:displayName:headUnitBluetoothIdentifier:headUnitMacAddress:iapIdentifier:lastStateUpdateDate:licensePlate:lprPowerType:lprVehicleType:manufacturer:model:pairedAppIdentifier:positionIndex:powerByConnector:preferredChargingNetworks:siriIntentsIdentifier:supportedConnectors:vehicleIdentifier:vehicleType:year:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, unint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, void *a39)
{
  v191 = a8;
  v176 = a7;
  v212 = a6;
  v217 = a4;
  v218 = a5;
  v194 = a3;
  v178 = a2;
  v215 = a32;
  v216 = a30;
  v213 = a31;
  v214 = a29;
  v197 = a39;
  v196 = a38;
  v195 = a37;
  v208 = a36;
  v193 = a35;
  v192 = a34;
  v206 = a28;
  v207 = a33;
  v188 = a27;
  v205 = a26;
  v186 = a25;
  v204 = a24;
  v185 = a23;
  v203 = a22;
  v182 = a21;
  v202 = a20;
  v183 = a19;
  v201 = a18;
  v184 = a17;
  v211 = a15;
  v200 = a16;
  v187 = a14;
  v173 = a13;
  v189 = a12;
  v174 = a11;
  v190 = a10;
  v175 = a9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v179 = *(v43 - 8);
  v177 = *(v179 + 64);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v199 = &v159 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v198 = &v159 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v159 - v48;
  v50 = objc_allocWithZone(v39);
  v181 = a1;
  v51 = [v50 initWithStore_];
  v52 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v53 = *&v51[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v209 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v54 = v51;
  v210 = v51;
  v55 = v54;
  [v53 lock];
  v180 = *&v51[v52];
  v56 = &v55[OBJC_IVAR___MSVehicle__colorHex];
  v57 = v194;
  *v56 = a2;
  *(v56 + 1) = v57;

  v58 = &v55[OBJC_IVAR___MSVehicle__currentVehicleState];
  v59 = *&v55[OBJC_IVAR___MSVehicle__currentVehicleState];
  v60 = *&v55[OBJC_IVAR___MSVehicle__currentVehicleState + 8];
  v61 = v217;
  v62 = v218;
  *v58 = v217;
  *(v58 + 1) = v62;
  sub_1B6291034(v61, v62);
  sub_1B6284F64(v59, v60);
  v63 = v212;
  sub_1B628C510(v212, v49, &unk_1EB943210, &unk_1B63C3F50);
  v64 = OBJC_IVAR___MSVehicle__dateOfVehicleIngestion;
  swift_beginAccess();
  sub_1B6282DFC(v49, &v55[v64], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v65 = &v55[OBJC_IVAR___MSVehicle__displayName];
  v66 = v191;
  *v65 = a7;
  *(v65 + 1) = v66;

  v67 = &v55[OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier];
  v68 = v190;
  *v67 = a9;
  *(v67 + 1) = v68;

  v69 = &v55[OBJC_IVAR___MSVehicle__headUnitMacAddress];
  v70 = v189;
  *v69 = a11;
  *(v69 + 1) = v70;

  v71 = &v55[OBJC_IVAR___MSVehicle__iapIdentifier];
  v72 = v187;
  *v71 = a13;
  *(v71 + 1) = v72;

  v73 = v211;
  sub_1B628C510(v211, v49, &unk_1EB943210, &unk_1B63C3F50);
  v74 = OBJC_IVAR___MSVehicle__lastStateUpdateDate;
  swift_beginAccess();
  sub_1B6282DFC(v49, &v55[v74], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v75 = &v55[OBJC_IVAR___MSVehicle__licensePlate];
  v76 = v184;
  *v75 = v200;
  v75[1] = v76;

  v77 = &v55[OBJC_IVAR___MSVehicle__lprPowerType];
  v78 = v183;
  *v77 = v201;
  v77[1] = v78;

  v79 = &v55[OBJC_IVAR___MSVehicle__lprVehicleType];
  v80 = v182;
  *v79 = v202;
  v79[1] = v80;

  v81 = &v55[OBJC_IVAR___MSVehicle__manufacturer];
  v82 = v185;
  *v81 = v203;
  v81[1] = v82;

  v83 = &v55[OBJC_IVAR___MSVehicle__model];
  v84 = v186;
  *v83 = v204;
  v83[1] = v84;

  v85 = &v55[OBJC_IVAR___MSVehicle__pairedAppIdentifier];
  v86 = v188;
  *v85 = v205;
  v85[1] = v86;

  *&v55[OBJC_IVAR___MSVehicle__positionIndex] = v206;
  v87 = &v55[OBJC_IVAR___MSVehicle__powerByConnector];
  v88 = *&v55[OBJC_IVAR___MSVehicle__powerByConnector];
  v89 = *&v55[OBJC_IVAR___MSVehicle__powerByConnector + 8];
  v90 = v214;
  v91 = v216;
  *v87 = v214;
  *(v87 + 1) = v91;
  sub_1B6291034(v90, v91);
  sub_1B6284F64(v88, v89);
  v92 = &v55[OBJC_IVAR___MSVehicle__preferredChargingNetworks];
  v93 = *&v55[OBJC_IVAR___MSVehicle__preferredChargingNetworks];
  v94 = *&v55[OBJC_IVAR___MSVehicle__preferredChargingNetworks + 8];
  v95 = v213;
  v96 = v215;
  *v92 = v213;
  *(v92 + 1) = v96;
  sub_1B6291034(v95, v96);
  sub_1B6284F64(v93, v94);
  v97 = &v55[OBJC_IVAR___MSVehicle__siriIntentsIdentifier];
  v98 = v192;
  *v97 = v207;
  v97[1] = v98;

  v99 = *&v55[OBJC_IVAR___MSVehicle__supportedConnectors];
  v100 = v193;
  *&v55[OBJC_IVAR___MSVehicle__supportedConnectors] = v193;
  v172 = v100;

  v101 = &v55[OBJC_IVAR___MSVehicle__vehicleIdentifier];
  v102 = v195;
  *v101 = v208;
  v101[1] = v102;

  v103 = *&v55[OBJC_IVAR___MSVehicle__vehicleType];
  v104 = v196;
  *&v55[OBJC_IVAR___MSVehicle__vehicleType] = v196;
  v171 = v104;

  v105 = *&v55[OBJC_IVAR___MSVehicle__year];
  v106 = v197;
  *&v55[OBJC_IVAR___MSVehicle__year] = v197;
  v170 = v106;

  sub_1B628C510(v63, v198, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v73, v199, &unk_1EB943210, &unk_1B63C3F50);
  v107 = *(v179 + 80);
  v108 = (v107 + 48) & ~v107;
  v109 = (v177 + 7 + v108) & 0xFFFFFFFFFFFFFFF8;
  v110 = (v109 + 23) & 0xFFFFFFFFFFFFFFF8;
  v111 = (v110 + 23) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v111 + 23) & 0xFFFFFFFFFFFFFFF8;
  v113 = (v107 + v112 + 16) & ~v107;
  v114 = (v177 + 7 + v113) & 0xFFFFFFFFFFFFFFF8;
  v159 = (v114 + 23) & 0xFFFFFFFFFFFFFFF8;
  v160 = (v159 + 23) & 0xFFFFFFFFFFFFFFF8;
  v161 = (v160 + 23) & 0xFFFFFFFFFFFFFFF8;
  v162 = (v161 + 23) & 0xFFFFFFFFFFFFFFF8;
  v165 = (v162 + 23) & 0xFFFFFFFFFFFFFFF8;
  v167 = (v165 + 23) & 0xFFFFFFFFFFFFFFF8;
  v164 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
  v166 = (v164 + 23) & 0xFFFFFFFFFFFFFFF8;
  v169 = (v166 + 23) & 0xFFFFFFFFFFFFFFF8;
  v179 = (v169 + 23) & 0xFFFFFFFFFFFFFFF8;
  v168 = (v179 + 15) & 0xFFFFFFFFFFFFFFF8;
  v177 = (v168 + 23) & 0xFFFFFFFFFFFFFFF8;
  v163 = (v177 + 15) & 0xFFFFFFFFFFFFFFF8;
  v115 = swift_allocObject();
  v116 = v194;
  v115[2] = v178;
  v115[3] = v116;
  v117 = v218;
  v115[4] = v217;
  v115[5] = v117;
  sub_1B628A128(v198, v115 + v108, &unk_1EB943210, &unk_1B63C3F50);
  v118 = (v115 + v109);
  v119 = v191;
  *v118 = v176;
  v118[1] = v119;
  v120 = (v115 + v110);
  v121 = v190;
  *v120 = v175;
  v120[1] = v121;
  v122 = (v115 + v111);
  v123 = v189;
  *v122 = v174;
  v122[1] = v123;
  v124 = (v115 + v112);
  v125 = v187;
  *v124 = v173;
  v124[1] = v125;
  sub_1B628A128(v199, v115 + v113, &unk_1EB943210, &unk_1B63C3F50);
  v126 = (v115 + v114);
  v127 = v184;
  *v126 = v200;
  v126[1] = v127;
  v128 = (v115 + v159);
  v129 = v183;
  *v128 = v201;
  v128[1] = v129;
  v130 = (v115 + v160);
  v131 = v182;
  *v130 = v202;
  v130[1] = v131;
  v132 = (v115 + v161);
  v133 = v185;
  *v132 = v203;
  v132[1] = v133;
  v134 = (v115 + v162);
  v135 = v186;
  *v134 = v204;
  v134[1] = v135;
  v136 = (v115 + v165);
  v137 = v188;
  *v136 = v205;
  v136[1] = v137;
  *(v115 + v167) = v206;
  v138 = (v115 + v164);
  v140 = v213;
  v139 = v214;
  v142 = v215;
  v141 = v216;
  *v138 = v214;
  v138[1] = v141;
  v143 = (v115 + v166);
  *v143 = v140;
  v143[1] = v142;
  v144 = (v115 + v169);
  v145 = v192;
  *v144 = v207;
  v144[1] = v145;
  *(v115 + v179) = v193;
  v146 = (v115 + v168);
  v147 = v195;
  *v146 = v208;
  v146[1] = v147;
  *(v115 + v177) = v196;
  *(v115 + v163) = v197;
  sub_1B6282B88();
  sub_1B6291034(v217, v218);
  sub_1B6291034(v139, v141);
  sub_1B6291034(v140, v142);
  v148 = v172;
  v149 = v171;
  v150 = v170;
  if (sub_1B63BEF24())
  {
    v151 = swift_allocObject();
    *(v151 + 16) = sub_1B63375B0;
    *(v151 + 24) = v115;
    v152 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v153 = *&v55[v152];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v55[v152] = v153;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v153 = sub_1B629A8E8(0, v153[2] + 1, 1, v153);
      *&v55[v152] = v153;
    }

    v156 = v153[2];
    v155 = v153[3];
    if (v156 >= v155 >> 1)
    {
      v153 = sub_1B629A8E8((v155 > 1), v156 + 1, 1, v153);
    }

    v153[2] = v156 + 1;
    v157 = &v153[2 * v156];
    v157[4] = sub_1B62B8188;
    v157[5] = v151;
    *&v55[v152] = v153;
    swift_endAccess();
  }

  [*&v210[v209] unlock];

  sub_1B6284F64(v213, v215);
  sub_1B6284F64(v214, v216);
  sub_1B6284F64(v217, v218);
  sub_1B6284EAC(v211, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v212, &unk_1EB943210, &unk_1B63C3F50);

  return v55;
}

char *Vehicle.init(store:colorHex:currentVehicleState:dateOfVehicleIngestion:displayName:headUnitBluetoothIdentifier:headUnitMacAddress:iapIdentifier:lastStateUpdateDate:licensePlate:lprPowerType:lprVehicleType:manufacturer:model:pairedAppIdentifier:positionIndex:powerByConnector:preferredChargingNetworks:siriIntentsIdentifier:supportedConnectors:vehicleIdentifier:vehicleType:year:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, unint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, void *a39)
{
  v40 = v39;
  v191 = a8;
  v175 = a7;
  v212 = a6;
  v217 = a4;
  v218 = a5;
  v178 = a2;
  v215 = a32;
  v216 = a30;
  v213 = a31;
  v214 = a29;
  v196 = a39;
  v195 = a38;
  v194 = a37;
  v208 = a36;
  v193 = a35;
  v192 = a34;
  v206 = a28;
  v207 = a33;
  v187 = a27;
  v205 = a26;
  v186 = a25;
  v204 = a24;
  v184 = a23;
  v203 = a22;
  v182 = a21;
  v202 = a20;
  v183 = a19;
  v201 = a18;
  v185 = a17;
  v211 = a15;
  v200 = a16;
  v188 = a14;
  v199 = a13;
  v189 = a12;
  v173 = a11;
  v190 = a10;
  v174 = a9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v179 = *(v45 - 8);
  v176 = *(v179 + 64);
  v46 = MEMORY[0x1EEE9AC00](v45 - 8);
  v198 = &v159 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v197 = &v159 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v159 - v50;
  v181 = a1;
  v52 = [v40 initWithStore_];
  v53 = *&v52[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v54 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v209 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v55 = v52;
  v210 = v52;
  v56 = v55;
  [v53 lock];
  v180 = *&v52[v54];
  v57 = &v56[OBJC_IVAR___MSVehicle__colorHex];
  *v57 = a2;
  *(v57 + 1) = a3;
  v177 = a3;

  v58 = &v56[OBJC_IVAR___MSVehicle__currentVehicleState];
  v59 = *&v56[OBJC_IVAR___MSVehicle__currentVehicleState];
  v60 = *&v56[OBJC_IVAR___MSVehicle__currentVehicleState + 8];
  v61 = v217;
  v62 = v218;
  *v58 = v217;
  *(v58 + 1) = v62;
  sub_1B6291034(v61, v62);
  sub_1B6284F64(v59, v60);
  v63 = v212;
  sub_1B628C510(v212, v51, &unk_1EB943210, &unk_1B63C3F50);
  v64 = OBJC_IVAR___MSVehicle__dateOfVehicleIngestion;
  swift_beginAccess();
  sub_1B6282DFC(v51, &v56[v64], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v65 = &v56[OBJC_IVAR___MSVehicle__displayName];
  v66 = v191;
  *v65 = a7;
  *(v65 + 1) = v66;

  v67 = &v56[OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier];
  v68 = v190;
  *v67 = a9;
  *(v67 + 1) = v68;

  v69 = &v56[OBJC_IVAR___MSVehicle__headUnitMacAddress];
  v70 = v189;
  *v69 = a11;
  *(v69 + 1) = v70;

  v71 = &v56[OBJC_IVAR___MSVehicle__iapIdentifier];
  v72 = v188;
  *v71 = v199;
  v71[1] = v72;

  v73 = v211;
  sub_1B628C510(v211, v51, &unk_1EB943210, &unk_1B63C3F50);
  v74 = OBJC_IVAR___MSVehicle__lastStateUpdateDate;
  swift_beginAccess();
  sub_1B6282DFC(v51, &v56[v74], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v75 = &v56[OBJC_IVAR___MSVehicle__licensePlate];
  v76 = v185;
  *v75 = v200;
  v75[1] = v76;

  v77 = &v56[OBJC_IVAR___MSVehicle__lprPowerType];
  v78 = v183;
  *v77 = v201;
  v77[1] = v78;

  v79 = &v56[OBJC_IVAR___MSVehicle__lprVehicleType];
  v80 = v182;
  *v79 = v202;
  v79[1] = v80;

  v81 = &v56[OBJC_IVAR___MSVehicle__manufacturer];
  v82 = v184;
  *v81 = v203;
  v81[1] = v82;

  v83 = &v56[OBJC_IVAR___MSVehicle__model];
  v84 = v186;
  *v83 = v204;
  v83[1] = v84;

  v85 = &v56[OBJC_IVAR___MSVehicle__pairedAppIdentifier];
  v86 = v187;
  *v85 = v205;
  v85[1] = v86;

  *&v56[OBJC_IVAR___MSVehicle__positionIndex] = v206;
  v87 = &v56[OBJC_IVAR___MSVehicle__powerByConnector];
  v88 = *&v56[OBJC_IVAR___MSVehicle__powerByConnector];
  v89 = *&v56[OBJC_IVAR___MSVehicle__powerByConnector + 8];
  v90 = v214;
  v91 = v216;
  *v87 = v214;
  *(v87 + 1) = v91;
  sub_1B6291034(v90, v91);
  sub_1B6284F64(v88, v89);
  v92 = &v56[OBJC_IVAR___MSVehicle__preferredChargingNetworks];
  v93 = *&v56[OBJC_IVAR___MSVehicle__preferredChargingNetworks];
  v94 = *&v56[OBJC_IVAR___MSVehicle__preferredChargingNetworks + 8];
  v95 = v213;
  v96 = v215;
  *v92 = v213;
  *(v92 + 1) = v96;
  sub_1B6291034(v95, v96);
  sub_1B6284F64(v93, v94);
  v97 = &v56[OBJC_IVAR___MSVehicle__siriIntentsIdentifier];
  v98 = v192;
  *v97 = v207;
  v97[1] = v98;

  v99 = *&v56[OBJC_IVAR___MSVehicle__supportedConnectors];
  v100 = v193;
  *&v56[OBJC_IVAR___MSVehicle__supportedConnectors] = v193;
  v172 = v100;

  v101 = &v56[OBJC_IVAR___MSVehicle__vehicleIdentifier];
  v102 = v194;
  *v101 = v208;
  v101[1] = v102;

  v103 = *&v56[OBJC_IVAR___MSVehicle__vehicleType];
  v104 = v195;
  *&v56[OBJC_IVAR___MSVehicle__vehicleType] = v195;
  v171 = v104;

  v105 = *&v56[OBJC_IVAR___MSVehicle__year];
  v106 = v196;
  *&v56[OBJC_IVAR___MSVehicle__year] = v196;
  v170 = v106;

  sub_1B628C510(v63, v197, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v73, v198, &unk_1EB943210, &unk_1B63C3F50);
  v107 = *(v179 + 80);
  v108 = (v107 + 48) & ~v107;
  v109 = (v176 + 7 + v108) & 0xFFFFFFFFFFFFFFF8;
  v110 = (v109 + 23) & 0xFFFFFFFFFFFFFFF8;
  v111 = (v110 + 23) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v111 + 23) & 0xFFFFFFFFFFFFFFF8;
  v113 = (v107 + v112 + 16) & ~v107;
  v114 = (v176 + 7 + v113) & 0xFFFFFFFFFFFFFFF8;
  v159 = (v114 + 23) & 0xFFFFFFFFFFFFFFF8;
  v160 = (v159 + 23) & 0xFFFFFFFFFFFFFFF8;
  v161 = (v160 + 23) & 0xFFFFFFFFFFFFFFF8;
  v162 = (v161 + 23) & 0xFFFFFFFFFFFFFFF8;
  v165 = (v162 + 23) & 0xFFFFFFFFFFFFFFF8;
  v167 = (v165 + 23) & 0xFFFFFFFFFFFFFFF8;
  v164 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
  v166 = (v164 + 23) & 0xFFFFFFFFFFFFFFF8;
  v169 = (v166 + 23) & 0xFFFFFFFFFFFFFFF8;
  v179 = (v169 + 23) & 0xFFFFFFFFFFFFFFF8;
  v168 = (v179 + 15) & 0xFFFFFFFFFFFFFFF8;
  v176 = (v168 + 23) & 0xFFFFFFFFFFFFFFF8;
  v163 = (v176 + 15) & 0xFFFFFFFFFFFFFFF8;
  v115 = swift_allocObject();
  v116 = v177;
  v115[2] = v178;
  v115[3] = v116;
  v117 = v218;
  v115[4] = v217;
  v115[5] = v117;
  sub_1B628A128(v197, v115 + v108, &unk_1EB943210, &unk_1B63C3F50);
  v118 = (v115 + v109);
  v119 = v191;
  *v118 = v175;
  v118[1] = v119;
  v120 = (v115 + v110);
  v121 = v190;
  *v120 = v174;
  v120[1] = v121;
  v122 = (v115 + v111);
  v123 = v189;
  *v122 = v173;
  v122[1] = v123;
  v124 = (v115 + v112);
  v125 = v188;
  *v124 = v199;
  v124[1] = v125;
  sub_1B628A128(v198, v115 + v113, &unk_1EB943210, &unk_1B63C3F50);
  v126 = (v115 + v114);
  v127 = v185;
  *v126 = v200;
  v126[1] = v127;
  v128 = (v115 + v159);
  v129 = v183;
  *v128 = v201;
  v128[1] = v129;
  v130 = (v115 + v160);
  v131 = v182;
  *v130 = v202;
  v130[1] = v131;
  v132 = (v115 + v161);
  v133 = v184;
  *v132 = v203;
  v132[1] = v133;
  v134 = (v115 + v162);
  v135 = v186;
  *v134 = v204;
  v134[1] = v135;
  v136 = (v115 + v165);
  v137 = v187;
  *v136 = v205;
  v136[1] = v137;
  *(v115 + v167) = v206;
  v138 = (v115 + v164);
  v140 = v213;
  v139 = v214;
  v142 = v215;
  v141 = v216;
  *v138 = v214;
  v138[1] = v141;
  v143 = (v115 + v166);
  *v143 = v140;
  v143[1] = v142;
  v144 = (v115 + v169);
  v145 = v192;
  *v144 = v207;
  v144[1] = v145;
  *(v115 + v179) = v193;
  v146 = (v115 + v168);
  v147 = v194;
  *v146 = v208;
  v146[1] = v147;
  *(v115 + v176) = v195;
  *(v115 + v163) = v196;
  sub_1B6282B88();
  sub_1B6291034(v217, v218);
  sub_1B6291034(v139, v141);
  sub_1B6291034(v140, v142);
  v148 = v172;
  v149 = v171;
  v150 = v170;
  if (sub_1B63BEF24())
  {
    v151 = swift_allocObject();
    *(v151 + 16) = sub_1B6339AA0;
    *(v151 + 24) = v115;
    v152 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v153 = *&v56[v152];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v56[v152] = v153;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v153 = sub_1B629A8E8(0, v153[2] + 1, 1, v153);
      *&v56[v152] = v153;
    }

    v156 = v153[2];
    v155 = v153[3];
    if (v156 >= v155 >> 1)
    {
      v153 = sub_1B629A8E8((v155 > 1), v156 + 1, 1, v153);
    }

    v153[2] = v156 + 1;
    v157 = &v153[2 * v156];
    v157[4] = sub_1B62B9488;
    v157[5] = v151;
    *&v56[v152] = v153;
    swift_endAccess();
  }

  [*&v210[v209] unlock];

  sub_1B6284F64(v213, v215);
  sub_1B6284F64(v214, v216);
  sub_1B6284F64(v217, v218);
  sub_1B6284EAC(v211, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v212, &unk_1EB943210, &unk_1B63C3F50);

  return v56;
}

void sub_1B632BDF0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = v74 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v49 = v74 - v48;
  type metadata accessor for MapsSyncManagedVehicle();
  v50 = swift_dynamicCastClass();
  if (v50)
  {
    v51 = v50;
    v52 = a2;
    if (a4)
    {
      a4 = sub_1B63BEBC4();
    }

    [v51 setColorHex_];

    v74[0] = a2;
    if (a6 >> 60 == 15)
    {
      v53 = 0;
    }

    else
    {
      v53 = sub_1B63BE904();
    }

    [v51 setCurrentVehicleState_];

    sub_1B628C510(a7, v49, &unk_1EB943210, &unk_1B63C3F50);
    v54 = sub_1B63BE994();
    v55 = *(v54 - 8);
    v56 = *(v55 + 48);
    v57 = 0;
    if (v56(v49, 1, v54) != 1)
    {
      v57 = sub_1B63BE954();
      (*(v55 + 8))(v49, v54);
    }

    [v51 setDateOfVehicleIngestion_];

    if (a9)
    {
      v58 = sub_1B63BEBC4();
    }

    else
    {
      v58 = 0;
    }

    v59 = a13;
    [v51 setDisplayName_];

    if (a11)
    {
      v60 = sub_1B63BEBC4();
    }

    else
    {
      v60 = 0;
    }

    [v51 setHeadUnitBluetoothIdentifier_];

    if (a13)
    {
      v59 = sub_1B63BEBC4();
    }

    [v51 setHeadUnitMacAddress_];

    if (a15)
    {
      v61 = sub_1B63BEBC4();
    }

    else
    {
      v61 = 0;
    }

    [v51 setIapIdentifier_];

    sub_1B628C510(a16, v47, &unk_1EB943210, &unk_1B63C3F50);
    if (v56(v47, 1, v54) == 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = sub_1B63BE954();
      (*(v55 + 8))(v47, v54);
    }

    v63 = v74[0];
    [v51 setLastStateUpdateDate_];

    if (a18)
    {
      v64 = sub_1B63BEBC4();
    }

    else
    {
      v64 = 0;
    }

    v65 = a22;
    [v51 setLicensePlate_];

    if (a20)
    {
      v66 = sub_1B63BEBC4();
    }

    else
    {
      v66 = 0;
    }

    [v51 setLprPowerType_];

    if (a22)
    {
      v65 = sub_1B63BEBC4();
    }

    [v51 setLprVehicleType_];

    if (a24)
    {
      v67 = sub_1B63BEBC4();
    }

    else
    {
      v67 = 0;
    }

    [v51 setManufacturer_];

    if (a26)
    {
      v68 = sub_1B63BEBC4();
    }

    else
    {
      v68 = 0;
    }

    [v51 setModel_];

    if (a28)
    {
      v69 = sub_1B63BEBC4();
    }

    else
    {
      v69 = 0;
    }

    [v51 setPairedAppIdentifier_];

    [v51 setPositionIndex_];
    if (a31 >> 60 == 15)
    {
      v70 = 0;
    }

    else
    {
      v70 = sub_1B63BE904();
    }

    v71 = a35;
    [v51 setPowerByConnector_];

    if (a33 >> 60 == 15)
    {
      v72 = 0;
    }

    else
    {
      v72 = sub_1B63BE904();
    }

    [v51 setPreferredChargingNetworks_];

    if (a35)
    {
      v71 = sub_1B63BEBC4();
    }

    [v51 setSiriIntentsIdentifier_];

    [v51 setSupportedConnectors_];
    if (a38)
    {
      v73 = sub_1B63BEBC4();
    }

    else
    {
      v73 = 0;
    }

    [v51 setVehicleIdentifier_];

    [v51 setVehicleType_];
    [v51 setYear_];
  }
}

uint64_t sub_1B632CBF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__colorHex);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__colorHex + 8);
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
  *(v19 + 16) = sub_1B6337824;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_21;
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

    v15 = sub_1B6337824;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B632CF98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__colorHex);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B633784C;
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

uint64_t (*sub_1B632D150(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B632CBF4(a1, a2);
  a1[1] = v4;
  return sub_1B632D198;
}

uint64_t sub_1B632D1C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSVehicle__currentVehicleState);
  v7 = *(v3 + OBJC_IVAR___MSVehicle__currentVehicleState + 8);
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
  *(v19 + 16) = sub_1B6337870;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_34_4;
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
    v10 = sub_1B6337870;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B632D598(uint64_t a1, unint64_t a2)
{
  sub_1B6337898(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t (*sub_1B632D5E0(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B632D1C8(a1, a2);
  a1[1] = v4;
  return sub_1B632D628;
}

uint64_t sub_1B632D658@<X0>(char *a2@<X8>)
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
  v13 = OBJC_IVAR___MSVehicle__dateOfVehicleIngestion;
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
  *(v26 + 16) = sub_1B6337A68;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_44_3;
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

uint64_t sub_1B632DB58(uint64_t a1)
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
  v12 = OBJC_IVAR___MSVehicle__dateOfVehicleIngestion;
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
    *(v15 + 16) = sub_1B6337A90;
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

void (*sub_1B632DE28(void *a1))(uint64_t a1, uint64_t a2)
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
  sub_1B632D658(v4);
  return sub_1B632DEE4;
}

uint64_t sub_1B632DF14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__displayName);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__displayName + 8);
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
  *(v19 + 16) = sub_1B6337A9C;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_61_0;
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

    v15 = sub_1B6337A9C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B632E2B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__displayName);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6337AC4;
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

uint64_t (*sub_1B632E470(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B632DF14(a1, a2);
  a1[1] = v4;
  return sub_1B632E4B8;
}

uint64_t sub_1B632E4E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier + 8);
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
  *(v19 + 16) = sub_1B6337AE8;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_79_0;
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

    v15 = sub_1B6337AE8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B632E88C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6337B10;
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

uint64_t (*sub_1B632EA44(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B632E4E8(a1, a2);
  a1[1] = v4;
  return sub_1B632EA8C;
}

uint64_t sub_1B632EABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__headUnitMacAddress);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__headUnitMacAddress + 8);
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
  *(v19 + 16) = sub_1B6337B34;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_97;
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

    v15 = sub_1B6337B34;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B632EE60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__headUnitMacAddress);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6337B5C;
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

uint64_t (*sub_1B632F018(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B632EABC(a1, a2);
  a1[1] = v4;
  return sub_1B632F060;
}

uint64_t sub_1B632F090(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__iapIdentifier);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__iapIdentifier + 8);
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
  *(v19 + 16) = sub_1B6337B80;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_115_1;
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

    v15 = sub_1B6337B80;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B632F434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__iapIdentifier);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6337BA8;
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

uint64_t (*sub_1B632F5EC(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B632F090(a1, a2);
  a1[1] = v4;
  return sub_1B632F634;
}

id sub_1B632F664(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_1B632F794@<X0>(char *a2@<X8>)
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
  v13 = OBJC_IVAR___MSVehicle__lastStateUpdateDate;
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
  *(v26 + 16) = sub_1B6337BCC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_133_0;
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

void sub_1B632FC94(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
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

uint64_t sub_1B632FDB0(uint64_t a1)
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
  v12 = OBJC_IVAR___MSVehicle__lastStateUpdateDate;
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
    *(v15 + 16) = sub_1B6337BF4;
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

uint64_t sub_1B6330080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1B628C510(a1, &v11 - v8, &unk_1EB943210, &unk_1B63C3F50);
  return a5(v9);
}

void sub_1B6330134(void *a1, uint64_t a2, _BYTE *a3, SEL *a4)
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
    type metadata accessor for MapsSyncManagedVehicle();
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

void sub_1B633036C(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  type metadata accessor for MapsSyncManagedVehicle();
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

void (*sub_1B63304D8(void *a1))(uint64_t a1, uint64_t a2)
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
  sub_1B632F794(v4);
  return sub_1B6330594;
}

void sub_1B63305AC(uint64_t a1, char a2, void (*a3)(void *))
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

uint64_t sub_1B633066C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__licensePlate);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__licensePlate + 8);
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
  *(v19 + 16) = sub_1B6337C88;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_151_0;
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

    v15 = sub_1B6337C88;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6330A10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__licensePlate);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6337CB0;
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

uint64_t (*sub_1B6330BC8(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B633066C(a1, a2);
  a1[1] = v4;
  return sub_1B6330C10;
}

uint64_t sub_1B6330C40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__lprPowerType);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__lprPowerType + 8);
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
  *(v19 + 16) = sub_1B6337CD4;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_169_1;
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

    v15 = sub_1B6337CD4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6330FE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__lprPowerType);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6337CFC;
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

uint64_t (*sub_1B633119C(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6330C40(a1, a2);
  a1[1] = v4;
  return sub_1B63311E4;
}

uint64_t sub_1B6331214(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__lprVehicleType);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__lprVehicleType + 8);
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
  *(v19 + 16) = sub_1B6337D20;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_187;
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

    v15 = sub_1B6337D20;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B63315B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__lprVehicleType);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6337D48;
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

uint64_t (*sub_1B6331770(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6331214(a1, a2);
  a1[1] = v4;
  return sub_1B63317B8;
}

uint64_t sub_1B63317E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__manufacturer);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__manufacturer + 8);
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
  *(v19 + 16) = sub_1B6337D6C;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_205;
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

    v15 = sub_1B6337D6C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6331B8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__manufacturer);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6337D94;
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

uint64_t (*sub_1B6331D44(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B63317E8(a1, a2);
  a1[1] = v4;
  return sub_1B6331D8C;
}

uint64_t sub_1B6331DBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__model);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__model + 8);
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
  *(v19 + 16) = sub_1B6337DB8;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_223;
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

    v15 = sub_1B6337DB8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6332160(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__model);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6337DE0;
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

uint64_t (*sub_1B6332318(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6331DBC(a1, a2);
  a1[1] = v4;
  return sub_1B6332360;
}

uint64_t sub_1B6332390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__pairedAppIdentifier);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__pairedAppIdentifier + 8);
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
  *(v19 + 16) = sub_1B6337E04;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_241;
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

    v15 = sub_1B6337E04;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6332734(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__pairedAppIdentifier);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6337E2C;
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

uint64_t (*sub_1B63328EC(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6332390(a1, a2);
  a1[1] = v4;
  return sub_1B6332934;
}

uint64_t sub_1B63329BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSVehicle__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B6332A68(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSVehicle__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B6337E50;
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

id sub_1B6332C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedVehicle();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B6332C68(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVehicle__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B6332CEC;
}

uint64_t sub_1B6332D28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSVehicle__powerByConnector);
  v7 = *(v3 + OBJC_IVAR___MSVehicle__powerByConnector + 8);
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
  *(v19 + 16) = sub_1B6337E58;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_266;
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
    v10 = sub_1B6337E58;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B63330F8(uint64_t a1, unint64_t a2)
{
  sub_1B6337E80(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B6333140(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  sub_1B6291034(*a1, v7);
  a5(v6, v7);

  return sub_1B6284F64(v6, v7);
}

uint64_t (*sub_1B63331A4(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6332D28(a1, a2);
  a1[1] = v4;
  return sub_1B63331EC;
}

uint64_t sub_1B6333204(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
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

id sub_1B63332A0(void *a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1B633332C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSVehicle__preferredChargingNetworks);
  v7 = *(v3 + OBJC_IVAR___MSVehicle__preferredChargingNetworks + 8);
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
  *(v19 + 16) = sub_1B6338050;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_277;
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
    v10 = sub_1B6338050;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1B63336FC(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
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

uint64_t sub_1B63337A4(uint64_t a1, unint64_t a2)
{
  sub_1B6338078(a1, a2);

  return sub_1B6284F64(a1, a2);
}

void sub_1B63337EC(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedVehicle();
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

void sub_1B6333910(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedVehicle();
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

uint64_t (*sub_1B63339DC(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B633332C(a1, a2);
  a1[1] = v4;
  return sub_1B6333A24;
}

uint64_t sub_1B6333A54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier + 8);
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
  *(v19 + 16) = sub_1B6338248;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_288;
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

    v15 = sub_1B6338248;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6333DF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6338270;
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

uint64_t (*sub_1B6333FB0(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6333A54(a1, a2);
  a1[1] = v4;
  return sub_1B6333FF8;
}

id sub_1B6334054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSVehicle__supportedConnectors);
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
  *(v20 + 16) = sub_1B6338294;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_306;
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
    v16 = sub_1B6338294;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6334414(void *a1)
{
  sub_1B63382BC(a1);
}

void (*sub_1B633444C(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B6334054(a1, a2);
  return sub_1B6334494;
}

id sub_1B63344C4(void *a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1B6334544(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSVehicle__vehicleIdentifier);
  v6 = *(v2 + OBJC_IVAR___MSVehicle__vehicleIdentifier + 8);
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
  *(v19 + 16) = sub_1B633846C;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_316;
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

    v15 = sub_1B633846C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63348E8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

id sub_1B6334970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__vehicleIdentifier);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6338494;
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

void sub_1B6334B28(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v18];
  v7 = v18[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedVehicle();
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

void sub_1B6334C4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedVehicle();
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

uint64_t (*sub_1B6334D10(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6334544(a1, a2);
  a1[1] = v4;
  return sub_1B6334D58;
}

uint64_t sub_1B6334D70(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

id sub_1B6334E34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSVehicle__vehicleType);
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
  *(v20 + 16) = sub_1B63384B8;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_334;
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
    v16 = sub_1B63384B8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63351F4(void *a1)
{
  sub_1B63384E0(a1);
}

void (*sub_1B633522C(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B6334E34(a1, a2);
  return sub_1B6335274;
}

void sub_1B633528C(id *a1, char a2, void (*a3)(id))
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

id sub_1B6335350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSVehicle__year);
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
  *(v20 + 16) = sub_1B6338690;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_345;
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
    v16 = sub_1B6338690;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B6335710(void *a1)
{
  sub_1B63386B8(a1);
}

void sub_1B6335748(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v15];
  v7 = v15[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedVehicle();
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

id sub_1B633585C(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedVehicle();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B63358CC(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B6335350(a1, a2);
  return sub_1B6335914;
}

void *sub_1B633592C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B6335988(a1, a2, v6, v5);
}

void *sub_1B6335988(void *a1, void *a2, int a3, int a4)
{
  v64 = a4;
  v66 = a3;
  v67 = a2;
  v68 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v60 = &v59 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v59 - v10;
  v11 = &v4[OBJC_IVAR___MSVehicle__colorHex];
  *v11 = 0;
  v11[1] = 0;
  v65 = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSVehicle__currentVehicleState] = xmmword_1B63C3E40;
  v12 = OBJC_IVAR___MSVehicle__dateOfVehicleIngestion;
  v13 = sub_1B63BE994();
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  v15 = &v4[OBJC_IVAR___MSVehicle__displayName];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR___MSVehicle__headUnitMacAddress];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR___MSVehicle__iapIdentifier];
  *v18 = 0;
  v18[1] = 0;
  v14(&v4[OBJC_IVAR___MSVehicle__lastStateUpdateDate], 1, 1, v13);
  v19 = &v4[OBJC_IVAR___MSVehicle__licensePlate];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v4[OBJC_IVAR___MSVehicle__lprPowerType];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v4[OBJC_IVAR___MSVehicle__lprVehicleType];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v4[OBJC_IVAR___MSVehicle__manufacturer];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v4[OBJC_IVAR___MSVehicle__model];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v4[OBJC_IVAR___MSVehicle__pairedAppIdentifier];
  *v24 = 0;
  v24[1] = 0;
  *&v4[OBJC_IVAR___MSVehicle__positionIndex] = 0;
  v25 = v65;
  *&v4[OBJC_IVAR___MSVehicle__powerByConnector] = v65;
  *&v4[OBJC_IVAR___MSVehicle__preferredChargingNetworks] = v25;
  v26 = &v4[OBJC_IVAR___MSVehicle__siriIntentsIdentifier];
  *v26 = 0;
  v26[1] = 0;
  *&v4[OBJC_IVAR___MSVehicle__supportedConnectors] = 0;
  v27 = &v4[OBJC_IVAR___MSVehicle__vehicleIdentifier];
  *v27 = 0;
  v27[1] = 0;
  *&v4[OBJC_IVAR___MSVehicle__vehicleType] = 0;
  *&v4[OBJC_IVAR___MSVehicle__year] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v28 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v28] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v29 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v30 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v30 - 8) + 56))(&v4[v29], 1, 1, v30);
  v31 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v32 = sub_1B63BEA04();
  v33 = *(*(v32 - 8) + 56);
  v33(&v4[v31], 1, 1, v32);
  v14(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v13);
  v14(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v13);
  v34 = v66;
  v35 = v67;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v67;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v34;
  v36 = type metadata accessor for MapsSyncObject(0);
  v69.receiver = v4;
  v69.super_class = v36;
  v37 = v68;
  v38 = v35;
  v39 = objc_msgSendSuper2(&v69, sel_init);
  v40 = v39;
  if (v37)
  {
    v41 = v39;
    v42 = [v37 objectID];
    v43 = *(v41 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v41 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v42;

    (*((*MEMORY[0x1E69E7D40] & *v41) + 0x218))(v37, v34 & 1, v64 & 1);
  }

  else
  {
    v44 = v39;
    v45 = v63;
    sub_1B63BE9F4();
    v33(v45, 0, 1, v32);
    v46 = v60;
    sub_1B628C510(v45, v60, &unk_1EB943680, qword_1B63C4070);
    v47 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v46, &v44[v47], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v48 = v62;
    sub_1B628C510(v45, v62, &unk_1EB943680, qword_1B63C4070);
    v49 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v50 = swift_allocObject();
    sub_1B628A128(v48, v50 + v49, &unk_1EB943680, qword_1B63C4070);
    v51 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v52 = *&v44[v51];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v44[v51] = v52;
    v54 = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = sub_1B629A8E8(0, v52[2] + 1, 1, v52);
      *&v44[v51] = v52;
    }

    v56 = v52[2];
    v55 = v52[3];
    if (v56 >= v55 >> 1)
    {
      v52 = sub_1B629A8E8((v55 > 1), v56 + 1, 1, v52);
    }

    v52[2] = v56 + 1;
    v57 = &v52[2 * v56];
    v57[4] = sub_1B62B2D5C;
    v57[5] = v50;
    *&v44[v51] = v52;
    swift_endAccess();

    sub_1B6284EAC(v54, &unk_1EB943680, qword_1B63C4070);
  }

  return v40;
}

void sub_1B633606C()
{

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSVehicle__currentVehicleState), *(v0 + OBJC_IVAR___MSVehicle__currentVehicleState + 8));
  sub_1B6284EAC(v0 + OBJC_IVAR___MSVehicle__dateOfVehicleIngestion, &unk_1EB943210, &unk_1B63C3F50);

  sub_1B6284EAC(v0 + OBJC_IVAR___MSVehicle__lastStateUpdateDate, &unk_1EB943210, &unk_1B63C3F50);

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSVehicle__powerByConnector), *(v0 + OBJC_IVAR___MSVehicle__powerByConnector + 8));
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSVehicle__preferredChargingNetworks), *(v0 + OBJC_IVAR___MSVehicle__preferredChargingNetworks + 8));

  v1 = *(v0 + OBJC_IVAR___MSVehicle__year);
}

id Vehicle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Vehicle(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B6336468(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v160 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v160 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v160 - v15;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedVehicle();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v162 = v8;
  v19 = a1;
  v20 = v19;
  v21 = 0x1EB942000;
  v22 = &off_1B63C3000;
  if (a2)
  {
    v23 = (v2 + OBJC_IVAR___MSVehicle__colorHex);
    *v23 = 0;
    v23[1] = 0;

LABEL_8:
    v30 = (v2 + *(v21 + 3320));
    v31 = *v30;
    v32 = v30[1];
    *v30 = *(v22 + 228);
    sub_1B6284F64(v31, v32);
    v33 = sub_1B63BE994();
    (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
    goto LABEL_16;
  }

  v161 = v19;
  v24 = [v18 colorHex];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1B63BEBD4();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = (v2 + OBJC_IVAR___MSVehicle__colorHex);
  *v29 = v26;
  v29[1] = v28;

  v20 = v161;
  v22 = &off_1B63C3000;
  v21 = 0x1EB942000uLL;
  if (a2)
  {
    goto LABEL_8;
  }

  v34 = [v18 currentVehicleState];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1B63BE924();
    v38 = v37;

    v21 = 0x1EB942000;
  }

  else
  {
    v36 = 0;
    v38 = 0xF000000000000000;
  }

  v39 = (v2 + *(v21 + 3320));
  v40 = *v39;
  v41 = v39[1];
  *v39 = v36;
  v39[1] = v38;
  sub_1B6284F64(v40, v41);
  v42 = [v18 dateOfVehicleIngestion];
  if (v42)
  {
    v43 = v42;
    sub_1B63BE974();

    v44 = sub_1B63BE994();
    (*(*(v44 - 8) + 56))(v14, 0, 1, v44);
  }

  else
  {
    v45 = sub_1B63BE994();
    (*(*(v45 - 8) + 56))(v14, 1, 1, v45);
  }

  v20 = v161;
  v22 = &off_1B63C3000;
  sub_1B628A128(v14, v16, &unk_1EB943210, &unk_1B63C3F50);
LABEL_16:
  v46 = OBJC_IVAR___MSVehicle__dateOfVehicleIngestion;
  swift_beginAccess();
  sub_1B6282DFC(v16, v2 + v46, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  if (a2)
  {
    v47 = (v2 + OBJC_IVAR___MSVehicle__displayName);
    *v47 = 0;
    v47[1] = 0;
  }

  else
  {
    v48 = [v18 displayName];
    if (v48)
    {
      v49 = v48;
      v50 = sub_1B63BEBD4();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v53 = (v2 + OBJC_IVAR___MSVehicle__displayName);
    *v53 = v50;
    v53[1] = v52;

    v54 = [v18 headUnitBluetoothIdentifier];
    if (v54)
    {
      v55 = v54;
      v56 = sub_1B63BEBD4();
      v58 = v57;

      goto LABEL_24;
    }
  }

  v56 = 0;
  v58 = 0;
LABEL_24:
  v59 = (v2 + OBJC_IVAR___MSVehicle__headUnitBluetoothIdentifier);
  *v59 = v56;
  v59[1] = v58;

  if (a2)
  {
    v60 = (v2 + OBJC_IVAR___MSVehicle__headUnitMacAddress);
    *v60 = 0;
    v60[1] = 0;
  }

  else
  {
    v61 = [v18 headUnitMacAddress];
    if (v61)
    {
      v62 = v61;
      v63 = sub_1B63BEBD4();
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    v66 = (v2 + OBJC_IVAR___MSVehicle__headUnitMacAddress);
    *v66 = v63;
    v66[1] = v65;

    v67 = [v18 iapIdentifier];
    if (v67)
    {
      v68 = v67;
      v69 = sub_1B63BEBD4();
      v71 = v70;

      goto LABEL_32;
    }
  }

  v69 = 0;
  v71 = 0;
LABEL_32:
  v72 = v162;
  v73 = (v2 + OBJC_IVAR___MSVehicle__iapIdentifier);
  *v73 = v69;
  v73[1] = v71;

  if (a2)
  {
    v74 = sub_1B63BE994();
    (*(*(v74 - 8) + 56))(v11, 1, 1, v74);
  }

  else
  {
    v75 = [v18 lastStateUpdateDate];
    if (v75)
    {
      v76 = v75;
      sub_1B63BE974();

      v77 = 0;
    }

    else
    {
      v77 = 1;
    }

    v78 = sub_1B63BE994();
    (*(*(v78 - 8) + 56))(v72, v77, 1, v78);
    sub_1B628A128(v72, v11, &unk_1EB943210, &unk_1B63C3F50);
  }

  v79 = OBJC_IVAR___MSVehicle__lastStateUpdateDate;
  swift_beginAccess();
  sub_1B6282DFC(v11, v2 + v79, &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  if (a2)
  {
    v80 = (v2 + OBJC_IVAR___MSVehicle__licensePlate);
    *v80 = 0;
    v80[1] = 0;
  }

  else
  {
    v81 = [v18 licensePlate];
    if (v81)
    {
      v82 = v81;
      v83 = sub_1B63BEBD4();
      v85 = v84;
    }

    else
    {
      v83 = 0;
      v85 = 0;
    }

    v86 = (v2 + OBJC_IVAR___MSVehicle__licensePlate);
    *v86 = v83;
    v86[1] = v85;

    v87 = [v18 lprPowerType];
    if (v87)
    {
      v88 = v87;
      v89 = sub_1B63BEBD4();
      v91 = v90;

      goto LABEL_46;
    }
  }

  v89 = 0;
  v91 = 0;
LABEL_46:
  v92 = (v2 + OBJC_IVAR___MSVehicle__lprPowerType);
  *v92 = v89;
  v92[1] = v91;

  if (a2)
  {
    v93 = (v2 + OBJC_IVAR___MSVehicle__lprVehicleType);
    *v93 = 0;
    v93[1] = 0;
  }

  else
  {
    v94 = [v18 lprVehicleType];
    if (v94)
    {
      v95 = v94;
      v96 = sub_1B63BEBD4();
      v98 = v97;
    }

    else
    {
      v96 = 0;
      v98 = 0;
    }

    v99 = (v2 + OBJC_IVAR___MSVehicle__lprVehicleType);
    *v99 = v96;
    v99[1] = v98;

    v100 = [v18 manufacturer];
    if (v100)
    {
      v101 = v100;
      v102 = sub_1B63BEBD4();
      v104 = v103;

      goto LABEL_54;
    }
  }

  v102 = 0;
  v104 = 0;
LABEL_54:
  v105 = (v2 + OBJC_IVAR___MSVehicle__manufacturer);
  *v105 = v102;
  v105[1] = v104;

  if (a2)
  {
    v106 = (v2 + OBJC_IVAR___MSVehicle__model);
    *v106 = 0;
    v106[1] = 0;
  }

  else
  {
    v107 = [v18 model];
    if (v107)
    {
      v108 = v107;
      v109 = sub_1B63BEBD4();
      v111 = v110;
    }

    else
    {
      v109 = 0;
      v111 = 0;
    }

    v112 = (v2 + OBJC_IVAR___MSVehicle__model);
    *v112 = v109;
    v112[1] = v111;

    v113 = [v18 pairedAppIdentifier];
    if (v113)
    {
      v114 = v113;
      v115 = sub_1B63BEBD4();
      v117 = v116;

      goto LABEL_62;
    }
  }

  v115 = 0;
  v117 = 0;
LABEL_62:
  v118 = (v2 + OBJC_IVAR___MSVehicle__pairedAppIdentifier);
  *v118 = v115;
  v118[1] = v117;

  v119 = [v18 positionIndex];
  *(v2 + OBJC_IVAR___MSVehicle__positionIndex) = v119;
  if (a2)
  {
    v120 = *(v2 + OBJC_IVAR___MSVehicle__powerByConnector);
    v121 = *(v2 + OBJC_IVAR___MSVehicle__powerByConnector + 8);
    *(v2 + OBJC_IVAR___MSVehicle__powerByConnector) = *(v22 + 228);
    sub_1B6284F64(v120, v121);
LABEL_69:
    v132 = 0;
    v134 = 0xF000000000000000;
    goto LABEL_70;
  }

  v122 = [v18 powerByConnector];
  if (v122)
  {
    v123 = v122;
    v124 = sub_1B63BE924();
    v126 = v125;
  }

  else
  {
    v124 = 0;
    v126 = 0xF000000000000000;
  }

  v127 = (v2 + OBJC_IVAR___MSVehicle__powerByConnector);
  v128 = *(v2 + OBJC_IVAR___MSVehicle__powerByConnector);
  v129 = *(v2 + OBJC_IVAR___MSVehicle__powerByConnector + 8);
  *v127 = v124;
  v127[1] = v126;
  sub_1B6284F64(v128, v129);
  v130 = [v18 preferredChargingNetworks];
  if (!v130)
  {
    goto LABEL_69;
  }

  v131 = v130;
  v132 = sub_1B63BE924();
  v134 = v133;

LABEL_70:
  v135 = (v2 + OBJC_IVAR___MSVehicle__preferredChargingNetworks);
  v136 = *(v2 + OBJC_IVAR___MSVehicle__preferredChargingNetworks);
  v137 = *(v2 + OBJC_IVAR___MSVehicle__preferredChargingNetworks + 8);
  *v135 = v132;
  v135[1] = v134;
  sub_1B6284F64(v136, v137);
  if (a2)
  {
    v138 = (v2 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier);
    *v138 = 0;
    v138[1] = 0;

    v139 = *(v2 + OBJC_IVAR___MSVehicle__supportedConnectors);
    *(v2 + OBJC_IVAR___MSVehicle__supportedConnectors) = 0;

    v140 = (v2 + OBJC_IVAR___MSVehicle__vehicleIdentifier);
    *v140 = 0;
    v140[1] = 0;

    v141 = *(v2 + OBJC_IVAR___MSVehicle__vehicleType);
    *(v2 + OBJC_IVAR___MSVehicle__vehicleType) = 0;

    v142 = 0;
  }

  else
  {
    v143 = [v18 siriIntentsIdentifier];
    if (v143)
    {
      v144 = v143;
      v145 = sub_1B63BEBD4();
      v147 = v146;
    }

    else
    {
      v145 = 0;
      v147 = 0;
    }

    v148 = (v2 + OBJC_IVAR___MSVehicle__siriIntentsIdentifier);
    *v148 = v145;
    v148[1] = v147;

    v149 = [v18 supportedConnectors];
    v150 = *(v2 + OBJC_IVAR___MSVehicle__supportedConnectors);
    *(v2 + OBJC_IVAR___MSVehicle__supportedConnectors) = v149;

    v151 = [v18 vehicleIdentifier];
    if (v151)
    {
      v152 = v151;
      v153 = sub_1B63BEBD4();
      v155 = v154;
    }

    else
    {
      v153 = 0;
      v155 = 0;
    }

    v156 = (v2 + OBJC_IVAR___MSVehicle__vehicleIdentifier);
    *v156 = v153;
    v156[1] = v155;

    v157 = [v18 vehicleType];
    v158 = *(v2 + OBJC_IVAR___MSVehicle__vehicleType);
    *(v2 + OBJC_IVAR___MSVehicle__vehicleType) = v157;

    v142 = [v18 year];
  }

  v159 = *(v2 + OBJC_IVAR___MSVehicle__year);
  *(v2 + OBJC_IVAR___MSVehicle__year) = v142;
}

id sub_1B6336F54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v46 = &v82 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v82 - v47;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v98 = qword_1EDB0F2A8;
  if (a2)
  {
    v97 = sub_1B63BEBC4();
  }

  else
  {
    v97 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v96 = 0;
  }

  else
  {
    sub_1B629119C(a3, a4);
    v96 = sub_1B63BE904();
    sub_1B6284F64(a3, a4);
  }

  sub_1B628C510(a5, v48, &unk_1EB943210, &unk_1B63C3F50);
  v49 = sub_1B63BE994();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  v52 = v51(v48, 1, v49);
  v101 = 0;
  if (v52 != 1)
  {
    v101 = sub_1B63BE954();
    (*(v50 + 8))(v48, v49);
  }

  if (a7)
  {
    v94 = sub_1B63BEBC4();

    v53 = a11;
    if (a9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v94 = 0;
    v53 = a11;
    if (a9)
    {
LABEL_13:
      v93 = sub_1B63BEBC4();

      v54 = a13;
      v55 = a14;
      if (v53)
      {
        goto LABEL_14;
      }

LABEL_18:
      v92 = 0;
      if (v54)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  v93 = 0;
  v54 = a13;
  v55 = a14;
  if (!v53)
  {
    goto LABEL_18;
  }

LABEL_14:
  v92 = sub_1B63BEBC4();

  if (v54)
  {
LABEL_15:
    v91 = sub_1B63BEBC4();

    goto LABEL_20;
  }

LABEL_19:
  v91 = 0;
LABEL_20:
  sub_1B628C510(v55, v46, &unk_1EB943210, &unk_1B63C3F50);
  if (v51(v46, 1, v49) == 1)
  {
    v104 = 0;
    v56 = a18;
    if (a16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v104 = sub_1B63BE954();
    (*(v50 + 8))(v46, v49);
    v56 = a18;
    if (a16)
    {
LABEL_22:
      v90 = sub_1B63BEBC4();

      v57 = a20;
      if (v56)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  v90 = 0;
  v57 = a20;
  if (v56)
  {
LABEL_23:
    v102 = sub_1B63BEBC4();

    v58 = a22;
    if (v57)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  v102 = 0;
  v58 = a22;
  if (v57)
  {
LABEL_24:
    v89 = sub_1B63BEBC4();

    v59 = a24;
    if (v58)
    {
      goto LABEL_25;
    }

LABEL_31:
    v88 = 0;
    v60 = a26;
    if (v59)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_30:
  v89 = 0;
  v59 = a24;
  if (!v58)
  {
    goto LABEL_31;
  }

LABEL_25:
  v88 = sub_1B63BEBC4();

  v60 = a26;
  if (v59)
  {
LABEL_26:
    v103 = sub_1B63BEBC4();

    goto LABEL_33;
  }

LABEL_32:
  v103 = 0;
LABEL_33:
  v100 = a5;
  if (v60)
  {
    v61 = sub_1B63BEBC4();
  }

  else
  {
    v61 = 0;
  }

  if (a29 >> 60 == 15)
  {
    v62 = 0;
  }

  else
  {
    sub_1B629119C(a28, a29);
    v62 = sub_1B63BE904();
    sub_1B6284F64(a28, a29);
  }

  if (a31 >> 60 == 15)
  {
    v63 = 0;
  }

  else
  {
    sub_1B629119C(a30, a31);
    v63 = sub_1B63BE904();
    sub_1B6284F64(a30, a31);
  }

  v95 = v55;
  if (a33)
  {
    v64 = sub_1B63BEBC4();
  }

  else
  {
    v64 = 0;
  }

  if (a36)
  {
    v65 = sub_1B63BEBC4();
  }

  else
  {
    v65 = 0;
  }

  v87 = v65;
  v81 = v65;
  v80 = v64;
  v86 = v63;
  v79 = v63;
  v84 = v62;
  v78 = v62;
  v83 = v61;
  v77 = v61;
  v66 = v88;
  v67 = v89;
  v85 = v64;
  v68 = v90;
  v69 = v91;
  v70 = v92;
  v72 = v96;
  v71 = v97;
  v73 = v101;
  v75 = v93;
  v74 = v94;
  v99 = [v99 initWithStore:v98 colorHex:v97 currentVehicleState:v96 dateOfVehicleIngestion:v101 displayName:v94 headUnitBluetoothIdentifier:v93 headUnitMacAddress:v92 iapIdentifier:v91 lastStateUpdateDate:v104 licensePlate:v90 lprPowerType:v102 lprVehicleType:v89 manufacturer:v88 model:v103 pairedAppIdentifier:v77 positionIndex:a27 powerByConnector:v78 preferredChargingNetworks:v79 siriIntentsIdentifier:v80 supportedConnectors:a34 vehicleIdentifier:v81 vehicleType:a37 year:a38];

  sub_1B6284EAC(v95, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v100, &unk_1EB943210, &unk_1B63C3F50);
  return v99;
}

void sub_1B63375B4(uint64_t a1, void *a2)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v4 = *(v3 + 80);
  v32 = (v4 + 48) & ~v4;
  v5 = *(v3 + 64) + 7;
  v6 = (v5 + v32) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v4 + v9 + 16) & ~v4;
  v11 = (v5 + v10) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = v2 + v8;
  v20 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v2 + v13);
  v23 = *v22;
  v24 = v22[1];
  v25 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v2 + v14);
  v27 = *v26;
  v28 = v26[1];
  v29 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v2 + v17);
  v31 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1B632BDF0(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v32, *(v2 + v6), *(v2 + v6 + 8), *(v2 + v7), *(v2 + v7 + 8), *v19, *(v19 + 8), *(v2 + v9), *(v2 + v9 + 8), v2 + v10, *(v2 + v11), *(v2 + v11 + 8), *(v2 + v12), *(v2 + v12 + 8), v23, v24, v27, v28, *(v2 + v15), *(v2 + v15 + 8), *(v2 + v16), *(v2 + v16 + 8), v30, *(v2 + v18), *(v2 + v18 + 8), *(v2 + v20), *(v2 + v20 + 8), *(v2 + v21), *(v2 + v21 + 8), *(v2 + v25), *(v2 + v29), *(v2 + v29 + 8), *(v2 + v31), *(v2 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1B6337898(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__currentVehicleState);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__currentVehicleState);
  v9 = *(v3 + OBJC_IVAR___MSVehicle__currentVehicleState + 8);
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
    *(v11 + 16) = sub_1B63399D4;
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

id sub_1B6337E80(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__powerByConnector);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__powerByConnector);
  v9 = *(v3 + OBJC_IVAR___MSVehicle__powerByConnector + 8);
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
    *(v11 + 16) = sub_1B63399B0;
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

id sub_1B6338078(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSVehicle__preferredChargingNetworks);
  v8 = *(v3 + OBJC_IVAR___MSVehicle__preferredChargingNetworks);
  v9 = *(v3 + OBJC_IVAR___MSVehicle__preferredChargingNetworks + 8);
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
    *(v11 + 16) = sub_1B633998C;
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

id sub_1B63382BC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVehicle__supportedConnectors);
  *(v2 + OBJC_IVAR___MSVehicle__supportedConnectors) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6339968;
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

id sub_1B63384E0(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVehicle__vehicleType);
  *(v2 + OBJC_IVAR___MSVehicle__vehicleType) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6339944;
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

id sub_1B63386B8(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVehicle__year);
  *(v2 + OBJC_IVAR___MSVehicle__year) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6339920;
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

uint64_t keypath_setTm_3(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void sub_1B63388B0(uint64_t a1)
{
  sub_1B628CC34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id Visit.__allocating_init(hidden:startDate:visitClassification:)(char a1, uint64_t a2, __int16 a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = objc_allocWithZone(v4);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB0F2A8;
  sub_1B628C510(a2, v10, &unk_1EB943210, &unk_1B63C3F50);
  v13 = sub_1B63BE994();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v10, 1, v13) != 1)
  {
    v15 = sub_1B63BE954();
    (*(v14 + 8))(v10, v13);
  }

  v16 = [v11 initWithStore:v12 hidden:a1 & 1 startDate:v15 visitClassification:a3];

  sub_1B6284EAC(a2, &unk_1EB943210, &unk_1B63C3F50);
  return v16;
}

id Visit.init(hidden:startDate:visitClassification:)(char a1, uint64_t a2, __int16 a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDB0F2A8;
  sub_1B628C510(a2, v10, &unk_1EB943210, &unk_1B63C3F50);
  v12 = sub_1B63BE994();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B63BE954();
    (*(v13 + 8))(v10, v12);
  }

  v15 = [v4 initWithStore:v11 hidden:a1 & 1 startDate:v14 visitClassification:a3];

  sub_1B6284EAC(a2, &unk_1EB943210, &unk_1B63C3F50);
  return v15;
}

char *Visit.__allocating_init(store:hidden:startDate:visitClassification:)(void *a1, char a2, uint64_t a3, int a4)
{
  v5 = v4;
  v37 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v34 - v12;
  v14 = objc_allocWithZone(v5);
  v38 = a1;
  v15 = [v14 initWithStore_];
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v17 = *&v15[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v18 = v15;
  [v17 lock];
  v34[1] = *&v15[v16];
  v18[OBJC_IVAR___MSVisit__hidden] = a2;
  sub_1B628C510(a3, v13, &unk_1EB943210, &unk_1B63C3F50);
  v19 = OBJC_IVAR___MSVisit__startDate;
  swift_beginAccess();
  sub_1B6282DFC(v13, &v18[v19], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v20 = v37;
  *&v18[OBJC_IVAR___MSVisit__visitClassification] = v37;
  v39 = a3;
  v21 = a3;
  v22 = v35;
  sub_1B628C510(v21, v35, &unk_1EB943210, &unk_1B63C3F50);
  v23 = (*(v36 + 80) + 17) & ~*(v36 + 80);
  v24 = (v10 + v23 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  sub_1B628A128(v22, v25 + v23, &unk_1EB943210, &unk_1B63C3F50);
  *(v25 + v24) = v20;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1B633CF74;
    *(v26 + 24) = v25;
    v27 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v28 = *&v18[v27];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v18[v27] = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1B629A8E8(0, v28[2] + 1, 1, v28);
      *&v18[v27] = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_1B629A8E8((v30 > 1), v31 + 1, 1, v28);
    }

    v28[2] = v31 + 1;
    v32 = &v28[2 * v31];
    v32[4] = sub_1B62B8188;
    v32[5] = v26;
    *&v18[v27] = v28;
    swift_endAccess();
  }

  [*&v15[v16] unlock];

  sub_1B6284EAC(v39, &unk_1EB943210, &unk_1B63C3F50);
  return v18;
}

char *Visit.init(store:hidden:startDate:visitClassification:)(void *a1, char a2, uint64_t a3, int a4)
{
  v5 = v4;
  v37 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v38 = a1;
  v14 = [v5 initWithStore_];
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v16 = *&v14[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v17 = v14;
  [v16 lock];
  v35 = *&v14[v15];
  v17[OBJC_IVAR___MSVisit__hidden] = a2;
  sub_1B628C510(a3, v13, &unk_1EB943210, &unk_1B63C3F50);
  v18 = OBJC_IVAR___MSVisit__startDate;
  swift_beginAccess();
  sub_1B6282DFC(v13, &v17[v18], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v19 = v37;
  *&v17[OBJC_IVAR___MSVisit__visitClassification] = v37;
  v39 = a3;
  v20 = a3;
  v21 = v34;
  sub_1B628C510(v20, v34, &unk_1EB943210, &unk_1B63C3F50);
  v22 = (*(v36 + 80) + 17) & ~*(v36 + 80);
  v23 = (v10 + v22 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  sub_1B628A128(v21, v24 + v22, &unk_1EB943210, &unk_1B63C3F50);
  *(v24 + v23) = v19;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1B633D684;
    *(v25 + 24) = v24;
    v26 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v27 = *&v17[v26];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v17[v26] = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1B629A8E8(0, v27[2] + 1, 1, v27);
      *&v17[v26] = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_1B629A8E8((v29 > 1), v30 + 1, 1, v27);
    }

    v27[2] = v30 + 1;
    v31 = &v27[2 * v30];
    v31[4] = sub_1B62B9488;
    v31[5] = v25;
    *&v17[v26] = v27;
    swift_endAccess();
  }

  [*&v14[v15] unlock];

  sub_1B6284EAC(v39, &unk_1EB943210, &unk_1B63C3F50);
  return v17;
}

void sub_1B633A738(uint64_t a1, void *a2, char a3, uint64_t a4, __int16 a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  type metadata accessor for MapsSyncManagedVisit();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v14 = a2;
    [v13 setHidden_];
    sub_1B628C510(a4, v11, &unk_1EB943210, &unk_1B63C3F50);
    v15 = sub_1B63BE994();
    v16 = *(v15 - 8);
    v17 = 0;
    if ((*(v16 + 48))(v11, 1, v15) != 1)
    {
      v17 = sub_1B63BE954();
      (*(v16 + 8))(v11, v15);
    }

    [v13 setStartDate_];

    [v13 setVisitClassification_];
  }
}

void sub_1B633AA2C(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedVisit();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = a1;
    v17 = [v15 hidden];
    *(v4 + OBJC_IVAR___MSVisit__hidden) = v17;
    if (a2)
    {
      v18 = sub_1B63BE994();
      (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    }

    else
    {
      v19 = [v15 startDate];
      if (v19)
      {
        v20 = v19;
        sub_1B63BE974();

        v21 = sub_1B63BE994();
        (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
      }

      else
      {
        v22 = sub_1B63BE994();
        (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
      }

      sub_1B628A128(v11, v13, &unk_1EB943210, &unk_1B63C3F50);
    }

    v23 = OBJC_IVAR___MSVisit__startDate;
    swift_beginAccess();
    sub_1B6282DFC(v13, v4 + v23, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v24 = [v15 visitClassification];
    *(v4 + OBJC_IVAR___MSVisit__visitClassification) = v24;
    if (a3)
    {
      v25 = [v15 location];
      if (v25)
      {
        v26 = v25;
        v27 = *(v4 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
        objc_allocWithZone(type metadata accessor for VisitedLocation(0));
        v28 = v26;
        v29 = sub_1B63471D0(v26, v27, a2 & 1, 1);

        v16 = *(v4 + OBJC_IVAR___MSVisit__location);
        *(v4 + OBJC_IVAR___MSVisit__location) = v29;
      }
    }
  }
}

uint64_t sub_1B633ADF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSVisit__hidden);
  [v1 unlock];
  return v2;
}

id sub_1B633AEA4(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSVisit__hidden) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B633D034;
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

id sub_1B633B040(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedVisit();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setHidden_];
  }

  return result;
}

id (*sub_1B633B0A4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisit__hidden);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B633B128;
}

uint64_t sub_1B633B278@<X0>(char *a2@<X8>)
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
  v13 = OBJC_IVAR___MSVisit__startDate;
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
  *(v26 + 16) = sub_1B633D03C;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B8284;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_22;
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

uint64_t sub_1B633B878(uint64_t a1)
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
  v12 = OBJC_IVAR___MSVisit__startDate;
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
    *(v15 + 16) = sub_1B633D048;
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

uint64_t sub_1B633BB48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B628C510(a1, &v6 - v3, &unk_1EB943210, &unk_1B63C3F50);
  return sub_1B633B878(v4);
}

void sub_1B633BBF4(void *a1, uint64_t a2, _BYTE *a3)
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
    type metadata accessor for MapsSyncManagedVisit();
    v16 = swift_dynamicCastClass();
    v17 = v14;
    if (v16 && (v18 = [v16 startDate]) != 0)
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

void sub_1B633BE24(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  type metadata accessor for MapsSyncManagedVisit();
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

    [v9 setStartDate_];
  }
}

void (*sub_1B633BF90(void *a1))(uint64_t a1, char a2)
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
  sub_1B633B278(v4);
  return sub_1B633C04C;
}

void sub_1B633C04C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B628C510(*(a1 + 16), v2, &unk_1EB943210, &unk_1B63C3F50);
    sub_1B633B878(v2);
    sub_1B6284EAC(v3, &unk_1EB943210, &unk_1B63C3F50);
  }

  else
  {
    sub_1B633B878(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t sub_1B633C158()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSVisit__visitClassification);
  [v1 unlock];
  return v2;
}

id sub_1B633C204(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSVisit__visitClassification) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B633D0D4;
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

id sub_1B633C3A0(uint64_t a1, uint64_t a2, __int16 a3)
{
  type metadata accessor for MapsSyncManagedVisit();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setVisitClassification_];
  }

  return result;
}

id (*sub_1B633C404(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisit__visitClassification);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B633C488;
}

void *sub_1B633C53C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSVisit__location);
  v3 = v2;
  [v1 unlock];
  return v2;
}

void sub_1B633C5F4(void *a1)
{
  sub_1B633D0DC(a1);
}

void sub_1B633C62C(void *a1, void *a2, char *a3)
{
  type metadata accessor for MapsSyncManagedVisit();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    if (a3)
    {
      v7 = v6;
      v8 = *&a3[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
      v12 = a2;
      v9 = a3;
      [v8 lock];
      v13 = sub_1B629563C(v8, a1);
      [v8 unlock];
      if (v13)
      {
        type metadata accessor for MapsSyncManagedVisitedLocation();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          [v7 setLocation_];
        }

        else
        {
        }

        v11 = v13;
      }

      else
      {

        v11 = v12;
      }
    }

    else
    {

      [v6 setLocation_];
    }
  }
}

void (*sub_1B633C794(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSVisit__location);
  v5 = v4;
  [v3 unlock];
  *a1 = v4;
  return sub_1B633C81C;
}

void sub_1B633C81C(id *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_1B633D0DC(v4);

    v3 = v2;
  }

  else
  {
    sub_1B633D0DC(*a1);
    v3 = v4;
  }
}

void *sub_1B633C888(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B633C8E4(a1, a2, v6, v5);
}

void *sub_1B633C8E4(void *a1, void *a2, int a3, int a4)
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
  v4[OBJC_IVAR___MSVisit__hidden] = 0;
  v12 = OBJC_IVAR___MSVisit__startDate;
  v13 = sub_1B63BE994();
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR___MSVisit__visitClassification] = 0;
  *&v4[OBJC_IVAR___MSVisit__location] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v15 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v17 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v19 = sub_1B63BEA04();
  v20 = *(*(v19 - 8) + 56);
  v21 = &v4[v18];
  v22 = v51;
  v20(v21, 1, 1, v19);
  v14(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v13);
  v14(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v13);
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
    v20(v32, 0, 1, v19);
    v33 = v46;
    sub_1B628C510(v32, v46, &unk_1EB943680, qword_1B63C4070);
    v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v33, &v31[v34], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v35 = v48;
    sub_1B628C510(v32, v48, &unk_1EB943680, qword_1B63C4070);
    v36 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v37 = swift_allocObject();
    sub_1B628A128(v35, v37 + v36, &unk_1EB943680, qword_1B63C4070);
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

    sub_1B6284EAC(v32, &unk_1EB943680, qword_1B63C4070);
  }

  return v27;
}

void sub_1B633CE90()
{
  sub_1B6284EAC(v0 + OBJC_IVAR___MSVisit__startDate, &unk_1EB943210, &unk_1B63C3F50);
  v1 = *(v0 + OBJC_IVAR___MSVisit__location);
}

id Visit.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Visit(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B633CF78(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 1) & 0xFFFFFFFFFFFFFFFELL));
  v8 = *(v2 + 16);

  sub_1B633A738(a1, a2, v8, v2 + v6, v7);
}

void sub_1B633D048(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B633BE24(a1, a2, v6);
}

id sub_1B633D0DC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSVisit__location);
  *(v2 + OBJC_IVAR___MSVisit__location) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B633D674;
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

uint64_t type metadata accessor for Visit(uint64_t a1)
{
  result = qword_1EB942D10;
  if (!qword_1EB942D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B633D2D8(uint64_t a1)
{
  sub_1B628CC34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1B633D688(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B63471D0(a1, a2, v6, v5);
}

id VisitedLocation.__allocating_init(enclosingRegionMuid:enclosingRegionProvider:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemCity:mapItemIdentifier:mapItemLastRefreshed:mapItemName:mapItemStorage:mapItemTopLevelCategory:muid:)(void *a1, void *a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, int a18, void *a19)
{
  v20 = v19;
  v59 = a4;
  v60 = a5;
  LODWORD(v58) = a3;
  v53 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v50 - v24;
  v57 = objc_allocWithZone(v20);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v55 = qword_1EDB0F2A8;
  if (a7)
  {
    v54 = sub_1B63BEBC4();

    v26 = a11;
    if (a9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v54 = 0;
    v26 = a11;
    if (a9)
    {
LABEL_5:
      v27 = sub_1B63BEBC4();

      v28 = a13;
      v29 = a14;
      if (v26)
      {
        goto LABEL_6;
      }

LABEL_10:
      v30 = 0;
      if (v28)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  v27 = 0;
  v28 = a13;
  v29 = a14;
  if (!v26)
  {
    goto LABEL_10;
  }

LABEL_6:
  v30 = sub_1B63BEBC4();

  if (v28)
  {
LABEL_7:
    v31 = sub_1B63BEBC4();

    goto LABEL_12;
  }

LABEL_11:
  v31 = 0;
LABEL_12:
  v56 = v29;
  sub_1B628C510(v29, v25, &unk_1EB943210, &unk_1B63C3F50);
  v32 = sub_1B63BE994();
  v33 = *(v32 - 8);
  v34 = 0;
  if ((*(v33 + 48))(v25, 1, v32) != 1)
  {
    v34 = sub_1B63BE954();
    (*(v33 + 8))(v25, v32);
  }

  if (a16)
  {
    v35 = sub_1B63BEBC4();
  }

  else
  {
    v35 = 0;
  }

  v52 = v35;
  LODWORD(v49) = a18;
  v48 = v35;
  v47 = v34;
  v36 = v31;
  v45 = v30;
  v46 = v31;
  v37 = v30;
  v44 = v27;
  v51 = v34;
  v38 = v27;
  v39 = v54;
  v40 = v53;
  v42 = v59;
  v41 = v60;
  v58 = [v57 initWithStore:v55 enclosingRegionMuid:a1 enclosingRegionProvider:v53 hidden:v58 & 1 latitude:v59 longitude:v60 mapItemAddress:v54 mapItemCategory:v44 mapItemCity:v45 mapItemIdentifier:v46 mapItemLastRefreshed:v47 mapItemName:v48 mapItemStorage:a17 mapItemTopLevelCategory:v49 muid:a19];

  sub_1B6284EAC(v56, &unk_1EB943210, &unk_1B63C3F50);
  return v58;
}

id VisitedLocation.init(enclosingRegionMuid:enclosingRegionProvider:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemCity:mapItemIdentifier:mapItemLastRefreshed:mapItemName:mapItemStorage:mapItemTopLevelCategory:muid:)(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19)
{
  v23 = sub_1B6347EF8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);

  return v23;
}

char *VisitedLocation.__allocating_init(store:enclosingRegionMuid:enclosingRegionProvider:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemCity:mapItemIdentifier:mapItemLastRefreshed:mapItemName:mapItemStorage:mapItemTopLevelCategory:muid:)(void *a1, void *a2, void *a3, int a4, void *a5, void *a6, char *a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, int a19, void *a20)
{
  LODWORD(v106) = a4;
  v107 = a20;
  v108 = a19;
  v118 = a17;
  v119 = a18;
  v116 = a7;
  v117 = a16;
  v121 = a15;
  v114 = a13;
  v115 = a14;
  v112 = a11;
  v113 = a12;
  v111 = a9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v98 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v99 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v91 = &v90 - v30;
  v31 = objc_allocWithZone(v20);
  v110 = a1;
  v32 = [v31 initWithStore_];
  v33 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v34 = *&v32[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v35 = v32;
  [v34 lock];
  v109 = v32;
  v120 = v33;
  v100 = *&v32[v33];
  v36 = *&v35[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid];
  *&v35[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid] = a2;
  v102 = a2;
  v96 = a2;

  v37 = *&v35[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider];
  *&v35[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider] = a3;
  v103 = a3;
  v95 = a3;

  v92 = v106 & 1;
  v35[OBJC_IVAR___MSVisitedLocation__hidden] = v106;
  v38 = *&v35[OBJC_IVAR___MSVisitedLocation__latitude];
  *&v35[OBJC_IVAR___MSVisitedLocation__latitude] = a5;
  v104 = a5;
  v94 = a5;

  v39 = *&v35[OBJC_IVAR___MSVisitedLocation__longitude];
  *&v35[OBJC_IVAR___MSVisitedLocation__longitude] = a6;
  v105 = a6;
  v93 = a6;

  v40 = &v35[OBJC_IVAR___MSVisitedLocation__mapItemAddress];
  *v40 = v116;
  v40[1] = a8;
  v106 = a8;
  v41 = v121;

  v42 = &v35[OBJC_IVAR___MSVisitedLocation__mapItemCategory];
  *v42 = v111;
  v42[1] = a10;
  v101 = a10;

  v43 = &v35[OBJC_IVAR___MSVisitedLocation__mapItemCity];
  v44 = v113;
  *v43 = v112;
  v43[1] = v44;

  v45 = &v35[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier];
  v46 = v115;
  *v45 = v114;
  v45[1] = v46;

  v47 = v91;
  sub_1B628C510(v41, v91, &unk_1EB943210, &unk_1B63C3F50);
  v48 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v47, &v35[v48], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v49 = &v35[OBJC_IVAR___MSVisitedLocation__mapItemName];
  v50 = v118;
  *v49 = v117;
  *(v49 + 1) = v50;

  v51 = v119;

  if (v51)
  {
    v52 = [v51 data];
    if (v52)
    {
      v53 = v52;
      v51 = sub_1B63BE924();
      v55 = v54;

      goto LABEL_6;
    }

    v51 = 0;
  }

  v55 = 0xF000000000000000;
LABEL_6:
  v56 = &v35[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
  v57 = *&v35[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
  v58 = *&v35[OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8];
  *v56 = v51;
  *(v56 + 1) = v55;
  sub_1B6284F64(v57, v58);
  v59 = v108;
  *&v35[OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory] = v108;
  v60 = *&v35[OBJC_IVAR___MSVisitedLocation__muid];
  v61 = v107;
  *&v35[OBJC_IVAR___MSVisitedLocation__muid] = v107;
  v91 = v61;

  v62 = v99;
  sub_1B628C510(v41, v99, &unk_1EB943210, &unk_1B63C3F50);
  v63 = (*(v98 + 80) + 120) & ~*(v98 + 80);
  v64 = (v97 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 11) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  v68 = v103;
  *(v67 + 16) = v102;
  *(v67 + 24) = v68;
  *(v67 + 32) = v92;
  v69 = v105;
  *(v67 + 40) = v104;
  *(v67 + 48) = v69;
  v70 = v106;
  *(v67 + 56) = v116;
  *(v67 + 64) = v70;
  v71 = v101;
  *(v67 + 72) = v111;
  *(v67 + 80) = v71;
  v72 = v113;
  *(v67 + 88) = v112;
  *(v67 + 96) = v72;
  v73 = v115;
  *(v67 + 104) = v114;
  *(v67 + 112) = v73;
  sub_1B628A128(v62, v67 + v63, &unk_1EB943210, &unk_1B63C3F50);
  v74 = (v67 + v64);
  v75 = v118;
  *v74 = v117;
  v74[1] = v75;
  v76 = v119;
  *(v67 + v65) = v119;
  *(v67 + v66) = v59;
  *(v67 + ((v66 + 11) & 0xFFFFFFFFFFFFFFF8)) = v61;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v77 = v109;
  v78 = v96;
  v79 = v95;
  v118 = v94;
  v117 = v93;
  v116 = v91;
  v80 = v76;
  if (sub_1B63BEF24())
  {
    v119 = v79;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_1B63481D8;
    *(v81 + 24) = v67;
    v82 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v83 = *&v35[v82];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35[v82] = v83;
    v85 = v78;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v83 = sub_1B629A8E8(0, v83[2] + 1, 1, v83);
      *&v35[v82] = v83;
    }

    v87 = v83[2];
    v86 = v83[3];
    if (v87 >= v86 >> 1)
    {
      v83 = sub_1B629A8E8((v86 > 1), v87 + 1, 1, v83);
    }

    v83[2] = v87 + 1;
    v88 = &v83[2 * v87];
    v88[4] = sub_1B62B8188;
    v88[5] = v81;
    *&v35[v82] = v83;
    swift_endAccess();
    v78 = v85;
    v79 = v119;
  }

  [*&v77[v120] unlock];

  sub_1B6284EAC(v121, &unk_1EB943210, &unk_1B63C3F50);
  return v35;
}

char *VisitedLocation.init(store:enclosingRegionMuid:enclosingRegionProvider:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemCity:mapItemIdentifier:mapItemLastRefreshed:mapItemName:mapItemStorage:mapItemTopLevelCategory:muid:)(void *a1, void *a2, void *a3, char a4, void *a5, void *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, int a19, void *a20)
{
  v21 = v20;
  v116 = a7;
  v117 = a8;
  v107 = a20;
  v108 = a19;
  v119 = a17;
  v120 = a18;
  v118 = a16;
  v122 = a15;
  v114 = a13;
  v115 = a14;
  v112 = a11;
  v113 = a12;
  v111 = a9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v98 = *(v28 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v100 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v92 = &v91 - v31;
  v110 = a1;
  v32 = [v21 initWithStore_];
  v33 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v34 = *&v32[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v35 = v32;
  [v34 lock];
  v109 = v32;
  v121 = v33;
  v102 = *&v32[v33];
  v36 = *&v35[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid];
  *&v35[OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid] = a2;
  v103 = a2;
  v99 = a2;

  v37 = *&v35[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider];
  *&v35[OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider] = a3;
  v104 = a3;
  v96 = a3;

  v93 = a4 & 1;
  v35[OBJC_IVAR___MSVisitedLocation__hidden] = a4;
  v38 = *&v35[OBJC_IVAR___MSVisitedLocation__latitude];
  *&v35[OBJC_IVAR___MSVisitedLocation__latitude] = a5;
  v105 = a5;
  v95 = a5;

  v39 = *&v35[OBJC_IVAR___MSVisitedLocation__longitude];
  *&v35[OBJC_IVAR___MSVisitedLocation__longitude] = a6;
  v106 = a6;
  v94 = a6;

  v40 = &v35[OBJC_IVAR___MSVisitedLocation__mapItemAddress];
  v41 = v117;
  *v40 = v116;
  v40[1] = v41;

  v42 = &v35[OBJC_IVAR___MSVisitedLocation__mapItemCategory];
  *v42 = v111;
  v42[1] = a10;
  v101 = a10;
  v43 = v122;

  v44 = &v35[OBJC_IVAR___MSVisitedLocation__mapItemCity];
  v45 = v113;
  *v44 = v112;
  v44[1] = v45;

  v46 = &v35[OBJC_IVAR___MSVisitedLocation__mapItemIdentifier];
  v47 = v115;
  *v46 = v114;
  v46[1] = v47;

  v48 = v92;
  sub_1B628C510(v43, v92, &unk_1EB943210, &unk_1B63C3F50);
  v49 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v48, &v35[v49], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v50 = &v35[OBJC_IVAR___MSVisitedLocation__mapItemName];
  v51 = v119;
  *v50 = v118;
  *(v50 + 1) = v51;

  v52 = v120;

  if (v52)
  {
    v53 = [v52 data];
    if (v53)
    {
      v54 = v53;
      v52 = sub_1B63BE924();
      v56 = v55;

      goto LABEL_6;
    }

    v52 = 0;
  }

  v56 = 0xF000000000000000;
LABEL_6:
  v57 = &v35[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
  v58 = *&v35[OBJC_IVAR___MSVisitedLocation__mapItemStorage];
  v59 = *&v35[OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8];
  *v57 = v52;
  *(v57 + 1) = v56;
  sub_1B6284F64(v58, v59);
  v60 = v108;
  *&v35[OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory] = v108;
  v61 = *&v35[OBJC_IVAR___MSVisitedLocation__muid];
  v62 = v107;
  *&v35[OBJC_IVAR___MSVisitedLocation__muid] = v107;
  v92 = v62;

  v63 = v100;
  sub_1B628C510(v43, v100, &unk_1EB943210, &unk_1B63C3F50);
  v64 = (*(v98 + 80) + 120) & ~*(v98 + 80);
  v65 = (v97 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 11) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v104;
  *(v68 + 16) = v103;
  *(v68 + 24) = v69;
  *(v68 + 32) = v93;
  v70 = v106;
  *(v68 + 40) = v105;
  *(v68 + 48) = v70;
  v71 = v117;
  *(v68 + 56) = v116;
  *(v68 + 64) = v71;
  v72 = v101;
  *(v68 + 72) = v111;
  *(v68 + 80) = v72;
  v73 = v113;
  *(v68 + 88) = v112;
  *(v68 + 96) = v73;
  v74 = v115;
  *(v68 + 104) = v114;
  *(v68 + 112) = v74;
  sub_1B628A128(v63, v68 + v64, &unk_1EB943210, &unk_1B63C3F50);
  v75 = (v68 + v65);
  v76 = v119;
  *v75 = v118;
  v75[1] = v76;
  v77 = v120;
  *(v68 + v66) = v120;
  *(v68 + v67) = v60;
  *(v68 + ((v67 + 11) & 0xFFFFFFFFFFFFFFF8)) = v62;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v78 = v109;
  v79 = v99;
  v80 = v96;
  v119 = v95;
  v118 = v94;
  v117 = v92;
  v81 = v77;
  if (sub_1B63BEF24())
  {
    v120 = v80;
    v82 = swift_allocObject();
    *(v82 + 16) = sub_1B6349DBC;
    *(v82 + 24) = v68;
    v83 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v84 = *&v35[v83];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35[v83] = v84;
    v86 = v79;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v84 = sub_1B629A8E8(0, v84[2] + 1, 1, v84);
      *&v35[v83] = v84;
    }

    v88 = v84[2];
    v87 = v84[3];
    if (v88 >= v87 >> 1)
    {
      v84 = sub_1B629A8E8((v87 > 1), v88 + 1, 1, v84);
    }

    v84[2] = v88 + 1;
    v89 = &v84[2 * v88];
    v89[4] = sub_1B62B9488;
    v89[5] = v82;
    *&v35[v83] = v84;
    swift_endAccess();
    v79 = v86;
    v80 = v120;
  }

  [*&v78[v121] unlock];

  sub_1B6284EAC(v122, &unk_1EB943210, &unk_1B63C3F50);
  return v35;
}

void sub_1B633EB9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, unsigned int a20, uint64_t a21)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v48 - v29;
  type metadata accessor for MapsSyncManagedVisitedLocation();
  v31 = swift_dynamicCastClass();
  if (v31)
  {
    v32 = v31;
    v48[1] = a8;
    v49 = v30;
    v50 = a2;
    [v32 setEnclosingRegionMuid_];
    [v32 setEnclosingRegionProvider_];
    [v32 setHidden_];
    [v32 setLatitude_];
    [v32 setLongitude_];
    if (a9)
    {
      v33 = sub_1B63BEBC4();
    }

    else
    {
      v33 = 0;
    }

    [v32 setMapItemAddress_];

    v34 = v49;
    if (a11)
    {
      v35 = sub_1B63BEBC4();
    }

    else
    {
      v35 = 0;
    }

    [v32 setMapItemCategory_];

    if (a13)
    {
      v36 = sub_1B63BEBC4();
    }

    else
    {
      v36 = 0;
    }

    [v32 setMapItemCity_];

    if (a15)
    {
      v37 = sub_1B63BEBC4();
    }

    else
    {
      v37 = 0;
    }

    [v32 setMapItemIdentifier_];

    sub_1B628C510(a16, v34, &unk_1EB943210, &unk_1B63C3F50);
    v38 = sub_1B63BE994();
    v39 = *(v38 - 8);
    v40 = 0;
    if ((*(v39 + 48))(v34, 1, v38) != 1)
    {
      v40 = sub_1B63BE954();
      (*(v39 + 8))(v34, v38);
    }

    [v32 setMapItemLastRefreshed_];

    if (a18)
    {
      v41 = sub_1B63BEBC4();
    }

    else
    {
      v41 = 0;
    }

    [v32 setMapItemName_];

    if (a19 && (v42 = [a19 data]) != 0)
    {
      v43 = v42;
      v44 = sub_1B63BE924();
      v46 = v45;

      v47 = sub_1B63BE904();
      sub_1B628BAC0(v44, v46);
    }

    else
    {
      v47 = 0;
    }

    [v32 setMapItemStorage_];

    [v32 setMapItemTopLevelCategory_];
    [v32 setMuid_];
  }
}

void sub_1B633F278(void *a1, int a2, int a3)
{
  LODWORD(v5) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v133 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v133 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v133 - v17;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedVisitedLocation();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    LODWORD(v140) = a3;
    if (v5)
    {
      v21 = *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid);
      *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid) = 0;
      v22 = a1;

      v23 = 0;
    }

    else
    {
      v24 = a1;
      v25 = [v20 enclosingRegionMuid];
      v26 = *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid);
      *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionMuid) = v25;

      v23 = [v20 enclosingRegionProvider];
    }

    v27 = *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider);
    *(v3 + OBJC_IVAR___MSVisitedLocation__enclosingRegionProvider) = v23;

    v28 = [v20 hidden];
    *(v3 + OBJC_IVAR___MSVisitedLocation__hidden) = v28;
    v141 = v5;
    if (v5)
    {
      v29 = sub_1B63BE994();
      (*(*(v29 - 8) + 56))(v18, 1, 1, v29);
    }

    else
    {
      v30 = [v20 latestVisitDate];
      if (v30)
      {
        v5 = v30;
        sub_1B63BE974();

        LOBYTE(v5) = v141;
        v31 = sub_1B63BE994();
        (*(*(v31 - 8) + 56))(v16, 0, 1, v31);
      }

      else
      {
        v32 = sub_1B63BE994();
        (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
      }

      sub_1B628A128(v16, v18, &unk_1EB943210, &unk_1B63C3F50);
    }

    v33 = OBJC_IVAR___MSVisitedLocation__latestVisitDate;
    swift_beginAccess();
    sub_1B6282DFC(v18, v3 + v33, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    if (v5)
    {
      v34 = *(v3 + OBJC_IVAR___MSVisitedLocation__latitude);
      *(v3 + OBJC_IVAR___MSVisitedLocation__latitude) = 0;

      v35 = *(v3 + OBJC_IVAR___MSVisitedLocation__longitude);
      *(v3 + OBJC_IVAR___MSVisitedLocation__longitude) = 0;

      v36 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemAddress);
      *v36 = 0;
      v36[1] = 0;

      v37 = 0;
      v38 = 0;
      v39 = v3;
    }

    else
    {
      v40 = [v20 latitude];
      v41 = *(v3 + OBJC_IVAR___MSVisitedLocation__latitude);
      *(v3 + OBJC_IVAR___MSVisitedLocation__latitude) = v40;

      v42 = [v20 longitude];
      v43 = *(v3 + OBJC_IVAR___MSVisitedLocation__longitude);
      *(v3 + OBJC_IVAR___MSVisitedLocation__longitude) = v42;

      v44 = [v20 mapItemAddress];
      v39 = v3;
      if (v44)
      {
        v45 = v44;
        v46 = sub_1B63BEBD4();
        v48 = v47;
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      v49 = (v3 + OBJC_IVAR___MSVisitedLocation__mapItemAddress);
      *v49 = v46;
      v49[1] = v48;

      v50 = [v20 mapItemCategory];
      if (v50)
      {
        v51 = v50;
        v37 = sub_1B63BEBD4();
        v38 = v52;
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      LOBYTE(v5) = v141;
    }

    v53 = (v39 + OBJC_IVAR___MSVisitedLocation__mapItemCategory);
    *v53 = v37;
    v53[1] = v38;

    if (v5)
    {
      v54 = (v39 + OBJC_IVAR___MSVisitedLocation__mapItemCity);
      *v54 = 0;
      v54[1] = 0;

      v55 = 0;
      v56 = 0;
    }

    else
    {
      v57 = [v20 mapItemCity];
      if (v57)
      {
        v58 = v57;
        v59 = sub_1B63BEBD4();
        v61 = v60;
      }

      else
      {
        v59 = 0;
        v61 = 0;
      }

      v62 = (v39 + OBJC_IVAR___MSVisitedLocation__mapItemCity);
      *v62 = v59;
      v62[1] = v61;

      v63 = [v20 mapItemIdentifier];
      if (v63)
      {
        v64 = v63;
        v55 = sub_1B63BEBD4();
        v56 = v65;
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      LOBYTE(v5) = v141;
    }

    v66 = (v39 + OBJC_IVAR___MSVisitedLocation__mapItemIdentifier);
    *v66 = v55;
    v66[1] = v56;

    if (v5)
    {
      v67 = sub_1B63BE994();
      (*(*(v67 - 8) + 56))(v13, 1, 1, v67);
    }

    else
    {
      v68 = [v20 mapItemLastRefreshed];
      if (v68)
      {
        v69 = v68;
        sub_1B63BE974();

        v70 = 0;
      }

      else
      {
        v70 = 1;
      }

      v71 = sub_1B63BE994();
      (*(*(v71 - 8) + 56))(v10, v70, 1, v71);
      sub_1B628A128(v10, v13, &unk_1EB943210, &unk_1B63C3F50);
    }

    v72 = OBJC_IVAR___MSVisitedLocation__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v13, v39 + v72, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    if (v5)
    {
      v73 = (v39 + OBJC_IVAR___MSVisitedLocation__mapItemName);
      *v73 = 0;
      v73[1] = 0;

      v74 = 0;
      v75 = 0xF000000000000000;
      v76 = v140;
    }

    else
    {
      v77 = [v20 mapItemName];
      v76 = v140;
      if (v77)
      {
        v78 = v77;
        v79 = sub_1B63BEBD4();
        v81 = v80;
      }

      else
      {
        v79 = 0;
        v81 = 0;
      }

      v82 = (v39 + OBJC_IVAR___MSVisitedLocation__mapItemName);
      *v82 = v79;
      v82[1] = v81;

      v83 = [v20 mapItemStorage];
      if (v83)
      {
        v84 = v83;
        v74 = sub_1B63BE924();
        v75 = v85;
      }

      else
      {
        v74 = 0;
        v75 = 0xF000000000000000;
      }
    }

    v86 = (v39 + OBJC_IVAR___MSVisitedLocation__mapItemStorage);
    v87 = *(v39 + OBJC_IVAR___MSVisitedLocation__mapItemStorage);
    v88 = *(v39 + OBJC_IVAR___MSVisitedLocation__mapItemStorage + 8);
    *v86 = v74;
    v86[1] = v75;
    sub_1B6284F64(v87, v88);
    v89 = [v20 mapItemTopLevelCategory];
    *(v39 + OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory) = v89;
    if (v5)
    {
      v90 = 0;
    }

    else
    {
      v90 = [v20 muid];
    }

    v91 = *(v39 + OBJC_IVAR___MSVisitedLocation__muid);
    *(v39 + OBJC_IVAR___MSVisitedLocation__muid) = v90;

    if ((v76 & 1) != 0 && (v92 = [v20 visits]) != 0 && (v93 = v92, v145 = 0, v94 = type metadata accessor for MapsSyncManagedVisit(), sub_1B6349B8C(), v133[1] = v94, sub_1B63BED54(), v93, (v95 = v145) != 0))
    {
      v140 = v39;
      if ((v145 & 0xC000000000000001) != 0)
      {
        sub_1B63BF004();
        sub_1B63BED74();
        v95 = v145;
        v96 = v146;
        v97 = v147;
        v98 = v148;
        v99 = v149;
      }

      else
      {
        v98 = 0;
        v100 = -1 << *(v145 + 32);
        v96 = v145 + 56;
        v97 = ~v100;
        v101 = -v100;
        if (v101 < 64)
        {
          v102 = ~(-1 << v101);
        }

        else
        {
          v102 = -1;
        }

        v99 = v102 & *(v145 + 56);
      }

      v133[0] = v97;
      v103 = (v97 + 64) >> 6;
      v134 = v141 & 1;
      v136 = v96;
      v137 = v95;
      v135 = v103;
      if (v95 < 0)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v104 = v98;
        v105 = v99;
        v106 = v98;
        if (!v99)
        {
          break;
        }

LABEL_60:
        v107 = (v105 - 1) & v105;
        v108 = *(*(v95 + 48) + ((v106 << 9) | (8 * __clz(__rbit64(v105)))));
        if (!v108)
        {
LABEL_66:
          sub_1B628B9E4(v95);
          goto LABEL_67;
        }

        while (1)
        {
          v110 = *(v140 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
          v111 = objc_allocWithZone(type metadata accessor for Visit(0));
          v139 = v107;
          v112 = v111;
          v111[OBJC_IVAR___MSVisit__hidden] = 0;
          v113 = OBJC_IVAR___MSVisit__startDate;
          v114 = sub_1B63BE994();
          v115 = *(*(v114 - 8) + 56);
          v115(&v112[v113], 1, 1, v114);
          *&v112[OBJC_IVAR___MSVisit__visitClassification] = 0;
          *&v112[OBJC_IVAR___MSVisit__location] = 0;
          *&v112[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
          v116 = a1;
          v117 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
          v118 = objc_allocWithZone(MEMORY[0x1E696AD10]);
          v138 = v108;
          v119 = v110;
          *&v112[v117] = [v118 init];
          a1 = v116;
          *&v112[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
          v120 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
          v121 = type metadata accessor for MapsSyncHashing(0);
          (*(*(v121 - 8) + 56))(&v112[v120], 1, 1, v121);
          v122 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
          v123 = sub_1B63BEA04();
          (*(*(v123 - 8) + 56))(&v112[v122], 1, 1, v123);
          v115(&v112[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v114);
          v115(&v112[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v114);
          v103 = v135;
          *&v112[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v119;
          v112[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v134;
          v124 = type metadata accessor for MapsSyncObject(0);
          v144.receiver = v112;
          v144.super_class = v124;
          v125 = v119;
          v126 = objc_msgSendSuper2(&v144, sel_init);
          v127 = v138;
          v128 = [v138 objectID];
          v129 = *(v126 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
          *(v126 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v128;

          (*((*MEMORY[0x1E69E7D40] & *v126) + 0x218))(v127, v141 & 1, 0);
          v130 = v127;

          swift_beginAccess();
          v131 = v126;
          sub_1B62CAA38(&v143, v131);
          v132 = v143;
          swift_endAccess();

          v96 = v136;
          v95 = v137;
          v98 = v106;
          v99 = v139;
          if ((v137 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_62:
          v109 = sub_1B63BF074();
          if (v109)
          {
            v143 = v109;
            swift_dynamicCast();
            v108 = v142;
            v106 = v98;
            v107 = v99;
            if (v142)
            {
              continue;
            }
          }

          goto LABEL_66;
        }
      }

      while (1)
      {
        v106 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          break;
        }

        if (v106 >= v103)
        {
          goto LABEL_66;
        }

        v105 = *(v96 + 8 * v106);
        ++v104;
        if (v105)
        {
          goto LABEL_60;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_67:
    }
  }
}