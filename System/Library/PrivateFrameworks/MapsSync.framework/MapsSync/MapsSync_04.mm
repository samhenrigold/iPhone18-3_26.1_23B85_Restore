id sub_1B62EC0E0(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setNavigationInterrupted_];
  }

  return result;
}

id (*sub_1B62EC144(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62EC1C8;
}

id sub_1B62EC234(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
  v7 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8);
  v30 = v6;
  v31 = v7;
  sub_1B6291034(v6, v7);
  sub_1B6284F64(0, 0xF000000000000000);
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v7 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      v10 = objc_allocWithZone(MEMORY[0x1E69A25C0]);
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
  *(v22 + 16) = sub_1B62ED760;
  *(v22 + 24) = v19;
  v29[4] = sub_1B62B8284;
  v29[5] = v22;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1B62B1294;
  v29[3] = &block_descriptor_8;
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
      v27 = objc_allocWithZone(MEMORY[0x1E69A25C0]);
      sub_1B629119C(v26, v25);
      v28 = sub_1B63BE904();
      v12 = [v27 initWithData_];

      sub_1B6284F64(v26, v25);
      sub_1B6295C20(v15);
    }

    v18 = sub_1B62ED760;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B62EC728(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v2 lock];
  sub_1B62EC7A0(v2, a1, v1);
  [v2 unlock];
}

uint64_t sub_1B62EC7A0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = [v5 data];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B63BE924();
      v10 = v9;
    }

    else
    {

      v8 = 0;
      v10 = 0xF000000000000000;
    }

    v13 = (a3 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
    v14 = *(a3 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
    v15 = *(a3 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8);
    *v13 = v8;
    v13[1] = v10;
    sub_1B6284F64(v14, v15);
  }

  else
  {
    v11 = *(a3 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
    v12 = *(a3 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8);
    *(a3 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage) = xmmword_1B63C3E40;
    sub_1B6284F64(v11, v12);
    v5 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v17 = v5;
  if (sub_1B63BEF24())
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1B62EDDA0;
    *(v18 + 24) = v16;
    v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v20 = *(a3 + v19);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + v19) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1B629A8E8(0, v20[2] + 1, 1, v20);
      *(a3 + v19) = v20;
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
    *(a3 + v19) = v20;
    swift_endAccess();
  }

  else
  {
  }
}

void sub_1B62EC9E8(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    if (a3)
    {
      v21 = v5;
      v20 = a2;
      v19 = a3;
      [v19 copy];
      sub_1B63BEF84();
      swift_unknownObjectRelease();
      sub_1B6281C60(0, &qword_1EDB0E790, 0x1E69A25C0);
      swift_dynamicCast();
      v6 = [v22 waypointsCount];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        while (1)
        {
          v9 = [v22 waypointsAtIndex_];
          if (!v9)
          {
            break;
          }

          v10 = v9;
          ++v8;
          v11 = [v9 mapItemStorage];
          v12 = [objc_opt_self() mapItemStorageForGEOMapItem:v11 forUseType:3];

          [v10 setMapItemStorage_];
          if (v7 == v8)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_7:
        v13 = [v22 data];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1B63BE924();
          v17 = v16;

          v18 = sub_1B63BE904();
          sub_1B628BAC0(v15, v17);
        }

        else
        {
          v18 = 0;
        }

        [v21 setRouteRequestStorage_];
      }
    }

    else
    {

      [v5 setRouteRequestStorage_];
    }
  }
}

void (*sub_1B62ECC30(id *a1, uint64_t a2))(uint64_t a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B62EC234(a1, a2);
  return sub_1B62ECC78;
}

void sub_1B62ECC78(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62EC7A0(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62EC7A0(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

uint64_t sub_1B62ECDCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData);
  v7 = *(v3 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData + 8);
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
  *(v19 + 16) = sub_1B62ED788;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_34_2;
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
    v10 = sub_1B62ED788;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B62ED218(uint64_t a1, unint64_t a2)
{
  sub_1B62ED984(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62ED260(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B6291034(*a1, v2);
  sub_1B62ED984(v1, v2);

  return sub_1B6284F64(v1, v2);
}

void sub_1B62ED2BC(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
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

void sub_1B62ED3E0(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1B63BE904();
    }

    v10 = v9;
    [v7 setSharedETAData_];
  }
}

uint64_t (*sub_1B62ED4A0(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B62ECDCC(a1, a2);
  a1[1] = v4;
  return sub_1B62ED4E8;
}

uint64_t sub_1B62ED4E8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {
    sub_1B6291034(v4, v3);
    sub_1B62ED984(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B62ED984(v4, v3);
  }

  return sub_1B6284F64(v2, v3);
}

void *sub_1B62ED560(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted] = 0;
  *&v9[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage] = xmmword_1B63C3E40;
  *&v9[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData] = xmmword_1B63C3E40;
  return sub_1B62F0450(a1, a2, v6, v5);
}

uint64_t sub_1B62ED674()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage), *(v0 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8));
  v1 = *(v0 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData);
  v2 = *(v0 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData + 8);

  return sub_1B6284F64(v1, v2);
}

id HistoryDirectionsItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryDirectionsItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B62ED7B0(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 position];
    *(v2 + OBJC_IVAR___MSHistoryItem__position) = v8;
    v9 = [v6 positionIndex];

    *(v2 + OBJC_IVAR___MSHistoryItem__positionIndex) = v9;
  }

  type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v12 = a1;
    v13 = [v11 navigationInterrupted];
    *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted) = v13;
    if (a2)
    {
      v14 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
      v15 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8);
      *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage) = xmmword_1B63C3E40;
      sub_1B6284F64(v14, v15);
    }

    else
    {
      v16 = [v11 routeRequestStorage];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1B63BE924();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0xF000000000000000;
      }

      v21 = (v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
      v22 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage);
      v23 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage + 8);
      *v21 = v18;
      v21[1] = v20;
      sub_1B6284F64(v22, v23);
      v24 = [v11 sharedETAData];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1B63BE924();
        v28 = v27;

LABEL_13:
        v29 = (v2 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData);
        v30 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData);
        v31 = *(v2 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData + 8);
        *v29 = v26;
        v29[1] = v28;

        return sub_1B6284F64(v30, v31);
      }
    }

    v26 = 0;
    v28 = 0xF000000000000000;
    goto LABEL_13;
  }

  return result;
}

id sub_1B62ED984(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData);
  v8 = *(v3 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData);
  v9 = *(v3 + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B62EDD98;
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

id HistoryEvDirectionsItem.__allocating_init(requiredCharge:vehicleIdentifier:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = objc_allocWithZone(v3);
  if (qword_1EDB0F2A0 != -1)
  {
    v12 = v6;
    swift_once();
    v6 = v12;
  }

  v7 = qword_1EDB0F2A8;
  if (a2)
  {
    v8 = v6;
    v9 = sub_1B63BEBC4();

    v6 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 initWithStore:v7 requiredCharge:v9 vehicleIdentifier:a3];

  return v10;
}

id HistoryEvDirectionsItem.init(requiredCharge:vehicleIdentifier:)(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_1EDB0F2A0 != -1)
  {
    v9 = a2;
    v10 = a3;
    swift_once();
    a2 = v9;
    a3 = v10;
  }

  v4 = qword_1EDB0F2A8;
  if (a2)
  {
    v5 = a3;
    v6 = sub_1B63BEBC4();

    a3 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithStore:v4 requiredCharge:v6 vehicleIdentifier:a3];

  return v7;
}

char *HistoryEvDirectionsItem.init(store:requiredCharge:vehicleIdentifier:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = [v5 initWithStore_];
  v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v12 = *&v10[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v13 = v10;
  [v12 lock];
  *&v13[OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge] = a4;
  v14 = &v13[OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier];
  *v14 = a2;
  *(v14 + 1) = a3;

  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1B62EF30C;
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

void sub_1B62EE2A4(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a3;
    [v9 setRequiredCharge_];
    if (a5)
    {
      v11 = sub_1B63BEBC4();
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [v9 setVehicleIdentifier_];
  }
}

double sub_1B62EE50C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge);
  [v1 unlock];
  return v2;
}

id sub_1B62EE5C4(double a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v1 + OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62EF318;
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

id sub_1B62EE768(double a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setRequiredCharge_];
  }

  return result;
}

id (*sub_1B62EE7D8(void *a1))(double *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62EE864;
}

uint64_t sub_1B62EE904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier);
  v6 = *(v2 + OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier + 8);
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
  *(v19 + 16) = sub_1B62EF320;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_9;
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

    v15 = sub_1B62EF320;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62EED10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62EF32C;
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

void sub_1B62EEEC8(void *a1, uint64_t a2, uint64_t *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v16];
  v5 = v16[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 vehicleIdentifier]) != 0)
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

void sub_1B62EEFEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
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
    [v7 setVehicleIdentifier_];
  }
}

id (*sub_1B62EF0A4(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B62EE904(a1, a2);
  a1[1] = v4;
  return sub_1B62EF0EC;
}

id sub_1B62EF0EC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1B62EED10(*a1, v2);
  }

  sub_1B62EED10(v3, v2);
}

void *sub_1B62EF160(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge] = 0;
  v10 = &v9[OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier];
  *v10 = 0;
  v10[1] = 0;
  v9[OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted] = 0;
  *&v9[OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage] = xmmword_1B63C3E40;
  *&v9[OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData] = xmmword_1B63C3E40;
  return sub_1B62F0450(a1, a2, v6, v5);
}

id HistoryEvDirectionsItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryEvDirectionsItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B62EF4B4(void *a1, char a2)
{
  sub_1B62ED7B0(a1, a2);
  type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    v7 = a1;
    [v6 requiredCharge];
    *(v2 + OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge) = v8;
    if ((a2 & 1) != 0 || (v9 = [v6 vehicleIdentifier]) == 0)
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

    v14 = (v2 + OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier);
    *v14 = v11;
    v14[1] = v13;
  }

  return result;
}

void sub_1B62EF5B0(void *a1)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    [v4 position];
    *(v1 + OBJC_IVAR___MSHistoryItem__position) = v6;
    v7 = [v4 positionIndex];

    *(v1 + OBJC_IVAR___MSHistoryItem__positionIndex) = v7;
  }
}

double sub_1B62EF640()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryItem__position);
  [v1 unlock];
  return v2;
}

id sub_1B62EF6A0(double a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v1 + OBJC_IVAR___MSHistoryItem__position) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62F02C4;
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
    v12[4] = sub_1B62B8188;
    v12[5] = v6;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return [v4 unlock];
}

id (*sub_1B62EF844(void *a1))(double *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryItem__position);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62EF8D0;
}

uint64_t sub_1B62EF8F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryItem__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B62EF950(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryItem__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62F09C4;
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

id (*sub_1B62EFAEC(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryItem__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62EFB70;
}

id HistoryItem.__allocating_init(position:positionIndex:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  if (qword_1EDB0F2A0 != -1)
  {
    v8 = v5;
    swift_once();
    v5 = v8;
  }

  v6 = qword_1EDB0F2A8;

  return [v5 initWithStore:v6 position:a1 positionIndex:a2];
}

id HistoryItem.init(position:positionIndex:)(uint64_t a1)
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB0F2A8;

  return [v1 initWithStore:v3 position:a1 positionIndex:?];
}

char *HistoryItem.init(store:position:positionIndex:)(void *a1, uint64_t a2, double a3)
{
  v7 = [v3 initWithStore_];
  v8 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v9 = *&v7[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v10 = v7;
  [v9 lock];
  *&v10[OBJC_IVAR___MSHistoryItem__position] = a3;
  *&v10[OBJC_IVAR___MSHistoryItem__positionIndex] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1B62F09CC;
    *(v12 + 24) = v11;
    v13 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v14 = *&v10[v13];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v10[v13] = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1B629A8E8(0, v14[2] + 1, 1, v14);
      *&v10[v13] = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1B629A8E8((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    v18 = &v14[2 * v17];
    v18[4] = sub_1B62B9488;
    v18[5] = v12;
    *&v10[v13] = v14;
    swift_endAccess();
  }

  [*&v7[v8] unlock];

  return v10;
}

void sub_1B62EFF8C(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryItem();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a3;
    [v8 setPosition_];
    [v8 setPositionIndex_];
  }
}

id sub_1B62F0254(double a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPosition_];
  }

  return result;
}

id sub_1B62F0390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

void *sub_1B62F03F4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B62F0450(a1, a2, v6, v5);
}

void *sub_1B62F0450(void *a1, void *a2, int a3, int a4)
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
  *&v4[OBJC_IVAR___MSHistoryItem__position] = 0;
  *&v4[OBJC_IVAR___MSHistoryItem__positionIndex] = 0;
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

id HistoryItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id HistoryMarkedLocation.__allocating_init(customName:floorOrdinal:latitude:longitude:mapItemStorage:muid:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v8 = v7;
  v15 = objc_allocWithZone(v8);
  if (qword_1EDB0F2A0 != -1)
  {
    v21 = v15;
    swift_once();
    v15 = v21;
  }

  v16 = qword_1EDB0F2A8;
  if (a2)
  {
    v17 = v15;
    v18 = sub_1B63BEBC4();

    v15 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v15 initWithStore:v16 customName:v18 floorOrdinal:a3 latitude:a4 longitude:a5 mapItemStorage:a6 muid:a7];

  return v19;
}

id HistoryMarkedLocation.init(customName:floorOrdinal:latitude:longitude:mapItemStorage:muid:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v8 = v7;
  if (qword_1EDB0F2A0 != -1)
  {
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  v14 = qword_1EDB0F2A8;
  if (a2)
  {
    v15 = sub_1B63BEBC4();
  }

  else
  {
    v15 = 0;
  }

  v16 = [v8 initWithStore:v14 customName:v15 floorOrdinal:a3 latitude:a4 longitude:a5 mapItemStorage:a6 muid:a7];

  return v16;
}

char *HistoryMarkedLocation.__allocating_init(store:customName:floorOrdinal:latitude:longitude:mapItemStorage:muid:)(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v16 = [objc_allocWithZone(v9) initWithStore_];
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v18 = *&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v19 = v16;
  [v18 lock];
  v54 = v17;
  v49 = v16;
  v20 = &v19[OBJC_IVAR___MSHistoryMarkedLocation__customName];
  *v20 = a2;
  *(v20 + 1) = a3;

  v50 = a4;
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal] = a4;
  v21 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__latitude];
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__latitude] = a5;
  v47 = a5;

  v22 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__longitude];
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__longitude] = a6;
  v46 = a6;

  if (a7 && (v23 = [a7 data]) != 0)
  {
    v24 = v23;
    v25 = sub_1B63BE924();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xF000000000000000;
  }

  v28 = &v19[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
  v29 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
  v30 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8];
  *v28 = v25;
  v28[1] = v27;
  sub_1B6284F64(v29, v30);
  v31 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__muid];
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__muid] = a8;
  v32 = a8;

  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = a3;
  *(v33 + 32) = v50;
  *(v33 + 40) = a5;
  *(v33 + 48) = a6;
  *(v33 + 56) = a7;
  *(v33 + 64) = a8;
  sub_1B6282B88();
  v34 = v47;
  v51 = v46;
  v35 = v32;
  v36 = a7;
  if (sub_1B63BEF24())
  {
    v52 = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1B62F4544;
    *(v37 + 24) = v33;
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v39 = *&v19[v38];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v38] = v39;
    v41 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
      *&v19[v38] = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      v39 = sub_1B629A8E8((v42 > 1), v43 + 1, 1, v39);
    }

    v39[2] = v43 + 1;
    v44 = &v39[2 * v43];
    v44[4] = sub_1B62B8188;
    v44[5] = v37;
    *&v19[v38] = v39;
    swift_endAccess();

    v34 = v41;
    v35 = v52;
  }

  else
  {
  }

  [*&v49[v54] unlock];

  return v19;
}

char *HistoryMarkedLocation.init(store:customName:floorOrdinal:latitude:longitude:mapItemStorage:muid:)(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v16 = [v9 initWithStore_];
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v18 = *&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v19 = v16;
  [v18 lock];
  v54 = v17;
  v49 = v16;
  v20 = &v19[OBJC_IVAR___MSHistoryMarkedLocation__customName];
  *v20 = a2;
  *(v20 + 1) = a3;

  v50 = a4;
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal] = a4;
  v21 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__latitude];
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__latitude] = a5;
  v47 = a5;

  v22 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__longitude];
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__longitude] = a6;
  v46 = a6;

  if (a7 && (v23 = [a7 data]) != 0)
  {
    v24 = v23;
    v25 = sub_1B63BE924();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xF000000000000000;
  }

  v28 = &v19[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
  v29 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
  v30 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8];
  *v28 = v25;
  v28[1] = v27;
  sub_1B6284F64(v29, v30);
  v31 = *&v19[OBJC_IVAR___MSHistoryMarkedLocation__muid];
  *&v19[OBJC_IVAR___MSHistoryMarkedLocation__muid] = a8;
  v32 = a8;

  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = a3;
  *(v33 + 32) = v50;
  *(v33 + 40) = a5;
  *(v33 + 48) = a6;
  *(v33 + 56) = a7;
  *(v33 + 64) = a8;
  sub_1B6282B88();
  v34 = v47;
  v51 = v46;
  v35 = v32;
  v36 = a7;
  if (sub_1B63BEF24())
  {
    v52 = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1B62F52AC;
    *(v37 + 24) = v33;
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v39 = *&v19[v38];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v38] = v39;
    v41 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
      *&v19[v38] = v39;
    }

    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      v39 = sub_1B629A8E8((v42 > 1), v43 + 1, 1, v39);
    }

    v39[2] = v43 + 1;
    v44 = &v39[2 * v43];
    v44[4] = sub_1B62B9488;
    v44[5] = v37;
    *&v19[v38] = v39;
    swift_endAccess();

    v34 = v41;
    v35 = v52;
  }

  else
  {
  }

  [*&v49[v54] unlock];

  return v19;
}

void sub_1B62F1588(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = a2;
    if (a4)
    {
      a4 = sub_1B63BEBC4();
    }

    [v15 setCustomName_];

    [v15 setFloorOrdinal_];
    [v15 setLatitude_];
    [v15 setLongitude_];
    if (a8)
    {
      v17 = [a8 data];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1B63BE924();
        v21 = v20;

        a8 = sub_1B63BE904();
        sub_1B628BAC0(v19, v21);
      }

      else
      {
        a8 = 0;
      }
    }

    [v15 setMapItemStorage_];

    [v15 setMuid_];
  }
}

uint64_t sub_1B62F1900(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__customName);
  v6 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__customName + 8);
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
  *(v19 + 16) = sub_1B62F457C;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_10;
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

    v15 = sub_1B62F457C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62F1D0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryMarkedLocation__customName);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62F4588;
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

void sub_1B62F1EC4(void *a1, uint64_t a2, uint64_t *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v16];
  v5 = v16[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 customName]) != 0)
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

void sub_1B62F1FE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
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
    [v7 setCustomName_];
  }
}

id (*sub_1B62F20A0(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B62F1900(a1, a2);
  a1[1] = v4;
  return sub_1B62F20E8;
}

id sub_1B62F20E8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1B62F1D0C(*a1, v2);
  }

  sub_1B62F1D0C(v3, v2);
}

uint64_t sub_1B62F21CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal);
  [v1 unlock];
  return v2;
}

id sub_1B62F2278(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62F4590;
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

id sub_1B62F2414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setFloorOrdinal_];
  }

  return result;
}

id (*sub_1B62F2478(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62F24FC;
}

id sub_1B62F2568(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistoryMarkedLocation__latitude);
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
  *(v20 + 16) = sub_1B62F4598;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_41_1;
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
    v16 = sub_1B62F4598;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62F2928(void *a1)
{
  sub_1B62F4858(a1);
}

void (*sub_1B62F2960(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B62F2568(a1, a2);
  return sub_1B62F29A8;
}

id sub_1B62F2A04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistoryMarkedLocation__longitude);
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
  *(v20 + 16) = sub_1B62F4A08;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_51_2;
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
    v16 = sub_1B62F4A08;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62F2DC4(void *a1)
{
  sub_1B62F4A30(a1);
}

void (*sub_1B62F2DFC(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B62F2A04(a1, a2);
  return sub_1B62F2E44;
}

void sub_1B62F2E5C(id *a1, char a2, void (*a3)(id))
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

id sub_1B62F2F20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage);
  v7 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8);
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
  *(v22 + 16) = sub_1B62F4BE0;
  *(v22 + 24) = v19;
  v29[4] = sub_1B62B9478;
  v29[5] = v22;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1B62B1294;
  v29[3] = &block_descriptor_62_0;
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

    v18 = sub_1B62F4BE0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B62F3414(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v2 lock];
  sub_1B62F35B0(v2, a1, v1);
  [v2 unlock];
}

void sub_1B62F348C(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
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

uint64_t sub_1B62F35B0(uint64_t a1, void *a2, char *a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = [v5 data];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B63BE924();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xF000000000000000;
    }

    v16 = &a3[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
    v17 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
    v18 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8];
    *v16 = v8;
    *(v16 + 1) = v10;
    sub_1B6284F64(v17, v18);
    v19 = [v5 _muid];
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v21 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__muid];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__muid] = v20;

    [v5 coordinate];
    v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v24 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__latitude];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__latitude] = v23;

    [v5 coordinate];
    v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

    v27 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__longitude];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__longitude] = v26;
  }

  else
  {
    v11 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage];
    v12 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage] = xmmword_1B63C3E40;
    sub_1B6284F64(v11, v12);
    v13 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__muid];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__muid] = 0;

    v14 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__latitude];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__latitude] = 0;

    v15 = *&a3[OBJC_IVAR___MSHistoryMarkedLocation__longitude];
    *&a3[OBJC_IVAR___MSHistoryMarkedLocation__longitude] = 0;

    v5 = 0;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  sub_1B6282B88();
  v29 = v5;
  v30 = a3;
  if (sub_1B63BEF24())
  {
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1B62F5238;
    *(v31 + 24) = v28;
    v32 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v33 = *&v30[v32];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v30[v32] = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_1B629A8E8(0, v33[2] + 1, 1, v33);
      *&v30[v32] = v33;
    }

    v36 = v33[2];
    v35 = v33[3];
    if (v36 >= v35 >> 1)
    {
      v33 = sub_1B629A8E8((v35 > 1), v36 + 1, 1, v33);
    }

    v33[2] = v36 + 1;
    v37 = &v33[2 * v36];
    v37[4] = sub_1B62B9488;
    v37[5] = v31;
    *&v30[v32] = v33;
    swift_endAccess();
  }

  else
  {
  }
}

void sub_1B62F38F4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      ObjectType = swift_getObjectType();
      v9 = a2;
      v10 = a3;
      v11 = [ObjectType strippedMapItemWith_];
      v12 = [v11 data];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1B63BE924();
        v16 = v15;

        v17 = sub_1B63BE904();
        sub_1B628BAC0(v14, v16);
      }

      else
      {
        v17 = 0;
      }

      [v7 setMapItemStorage_];

      v18 = [v11 _muid];
      v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      [v7 setMuid_];

      [v11 coordinate];
      v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v7 setLatitude_];

      [v11 coordinate];
      v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v7 setLongitude_];
    }

    else
    {
      v23 = a2;
      [v7 setMapItemStorage_];
      [v7 setMuid_];
      [v7 setLatitude_];
      [v7 setLongitude_];
    }
  }
}

void (*sub_1B62F3B74(id *a1, uint64_t a2))(uint64_t a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B62F2F20(a1, a2);
  return sub_1B62F3BBC;
}

void sub_1B62F3BBC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62F35B0(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62F35B0(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

id sub_1B62F3CD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistoryMarkedLocation__muid);
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
  *(v20 + 16) = sub_1B62F4BEC;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_72_0;
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
    v16 = sub_1B62F4BEC;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62F4090(void *a1)
{
  sub_1B62F4C14(a1);
}

void sub_1B62F40C8(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v15];
  v7 = v15[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
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

id sub_1B62F41DC(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B62F424C(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B62F3CD0(a1, a2);
  return sub_1B62F4294;
}

void *sub_1B62F42AC(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___MSHistoryMarkedLocation__customName];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v9[OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal] = 0;
  *&v9[OBJC_IVAR___MSHistoryMarkedLocation__latitude] = 0;
  *&v9[OBJC_IVAR___MSHistoryMarkedLocation__longitude] = 0;
  *&v9[OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage] = xmmword_1B63C3E40;
  *&v9[OBJC_IVAR___MSHistoryMarkedLocation__muid] = 0;
  return sub_1B62F0450(a1, a2, a3, a4);
}

void sub_1B62F4410()
{

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage), *(v0 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8));
  v1 = *(v0 + OBJC_IVAR___MSHistoryMarkedLocation__muid);
}

id HistoryMarkedLocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryMarkedLocation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B62F45C0(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 position];
    *(v2 + OBJC_IVAR___MSHistoryItem__position) = v8;
    v9 = [v6 positionIndex];

    *(v2 + OBJC_IVAR___MSHistoryItem__positionIndex) = v9;
  }

  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = a1;
    if ((a2 & 1) != 0 || (v13 = [v11 customName]) == 0)
    {
      v15 = 0;
      v17 = 0;
    }

    else
    {
      v14 = v13;
      v15 = sub_1B63BEBD4();
      v17 = v16;
    }

    v18 = (v2 + OBJC_IVAR___MSHistoryMarkedLocation__customName);
    *v18 = v15;
    v18[1] = v17;

    v19 = [v11 floorOrdinal];
    *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal) = v19;
    if (a2)
    {
      v20 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__latitude);
      *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__latitude) = 0;

      v21 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__longitude);
      *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__longitude) = 0;

      v22 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage);
      v23 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8);
      *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage) = xmmword_1B63C3E40;
      sub_1B6284F64(v22, v23);

      v24 = 0;
    }

    else
    {
      v25 = [v11 latitude];
      v26 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__latitude);
      *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__latitude) = v25;

      v27 = [v11 longitude];
      v28 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__longitude);
      *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__longitude) = v27;

      v29 = [v11 mapItemStorage];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1B63BE924();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0xF000000000000000;
      }

      v34 = (v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage);
      v35 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage);
      v36 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage + 8);
      *v34 = v31;
      v34[1] = v33;
      sub_1B6284F64(v35, v36);
      v24 = [v11 muid];
    }

    v37 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__muid);
    *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__muid) = v24;
  }
}

id sub_1B62F4858(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__latitude);
  *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62F5264;
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

id sub_1B62F4A30(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__longitude);
  *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62F5240;
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

id sub_1B62F4C14(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__muid);
  *(v2 + OBJC_IVAR___MSHistoryMarkedLocation__muid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62F5214;
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

id HistoryMultiPointRoute.__allocating_init(navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(char a1, void *a2, __int16 a3, void *a4, uint64_t a5, unint64_t a6, __int16 a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = objc_allocWithZone(v10);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDB0F2A8;
  if (a6 >> 60 != 15)
  {
    sub_1B629119C(a5, a6);
    v18 = sub_1B63BE904();
    sub_1B6284F64(a5, a6);
    if (a9)
    {
      goto LABEL_5;
    }

LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v18 = 0;
  if (!a9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v19 = sub_1B63BEBC4();

LABEL_8:
  LOWORD(v22) = a7;
  v20 = [v16 initWithStore:v17 navigationInterrupted:a1 & 1 requiredCharge:a2 routeProgressWaypointIndex:a3 routeRequestStorage:a4 sharedETAData:v18 type:v22 vehicleIdentifier:v19];
  sub_1B6284F64(a5, a6);

  return v20;
}

id HistoryMultiPointRoute.init(navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(char a1, void *a2, __int16 a3, void *a4, uint64_t a5, unint64_t a6, __int16 a7, uint64_t a8, uint64_t a9)
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDB0F2A8;
  if (a6 >> 60 != 15)
  {
    sub_1B629119C(a5, a6);
    v16 = sub_1B63BE904();
    sub_1B6284F64(a5, a6);
    if (a9)
    {
      goto LABEL_5;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v16 = 0;
  if (!a9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v17 = sub_1B63BEBC4();

LABEL_8:
  LOWORD(v20) = a7;
  v18 = [v22 initWithStore:v15 navigationInterrupted:a1 & 1 requiredCharge:a2 routeProgressWaypointIndex:a3 routeRequestStorage:a4 sharedETAData:v16 type:v20 vehicleIdentifier:v17];
  sub_1B6284F64(a5, a6);

  return v18;
}

char *HistoryMultiPointRoute.__allocating_init(store:navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(void *a1, char a2, void *a3, __int16 a4, void *a5, uint64_t a6, unint64_t a7, __int16 a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v17 = [objc_allocWithZone(v11) initWithStore_];
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v19 = *&v17[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v20 = v17;
  [v19 lock];
  v52 = v18;
  v45 = a2 & 1;
  v20[OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted] = a2;
  v21 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge];
  *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge] = a3;
  v46 = a3;

  *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex] = a4;
  if (a5 && (v22 = [a5 data]) != 0)
  {
    v23 = v22;
    v24 = sub_1B63BE924();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xF000000000000000;
  }

  v27 = &v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage];
  v28 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage];
  v29 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8];
  *v27 = v24;
  v27[1] = v26;
  sub_1B6284F64(v28, v29);
  v30 = &v20[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData];
  v31 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData];
  v32 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData + 8];
  *v30 = a6;
  *(v30 + 1) = a7;
  sub_1B6291034(a6, a7);
  sub_1B6284F64(v31, v32);
  *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__type] = a8;
  v33 = &v20[OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier];
  *v33 = a9;
  *(v33 + 1) = a10;

  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  *(v34 + 24) = a3;
  *(v34 + 32) = a4;
  *(v34 + 40) = a5;
  *(v34 + 48) = a6;
  *(v34 + 56) = a7;
  *(v34 + 64) = a8;
  *(v34 + 72) = a9;
  *(v34 + 80) = a10;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v35 = v46;
  sub_1B6291034(a6, a7);
  v36 = a5;
  if (sub_1B63BEF24())
  {
    v50 = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1B62F903C;
    *(v37 + 24) = v34;
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v39 = *&v20[v38];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[v38] = v39;
    v48 = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
      *&v20[v38] = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1B629A8E8((v41 > 1), v42 + 1, 1, v39);
    }

    v39[2] = v42 + 1;
    v43 = &v39[2 * v42];
    v43[4] = sub_1B62B8188;
    v43[5] = v37;
    *&v20[v38] = v39;
    swift_endAccess();

    v36 = v48;
    v35 = v50;
  }

  else
  {
  }

  [*&v17[v52] unlock];
  sub_1B6284F64(a6, a7);

  return v20;
}

char *HistoryMultiPointRoute.init(store:navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(void *a1, char a2, void *a3, __int16 a4, void *a5, uint64_t a6, unint64_t a7, __int16 a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v17 = [v11 initWithStore_];
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v19 = *&v17[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v20 = v17;
  [v19 lock];
  v52 = v18;
  v45 = a2 & 1;
  v20[OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted] = a2;
  v21 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge];
  *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge] = a3;
  v46 = a3;

  *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex] = a4;
  if (a5 && (v22 = [a5 data]) != 0)
  {
    v23 = v22;
    v24 = sub_1B63BE924();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xF000000000000000;
  }

  v27 = &v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage];
  v28 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage];
  v29 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8];
  *v27 = v24;
  v27[1] = v26;
  sub_1B6284F64(v28, v29);
  v30 = &v20[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData];
  v31 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData];
  v32 = *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData + 8];
  *v30 = a6;
  *(v30 + 1) = a7;
  sub_1B6291034(a6, a7);
  sub_1B6284F64(v31, v32);
  *&v20[OBJC_IVAR___MSHistoryMultiPointRoute__type] = a8;
  v33 = &v20[OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier];
  *v33 = a9;
  *(v33 + 1) = a10;

  v34 = swift_allocObject();
  *(v34 + 16) = v45;
  *(v34 + 24) = a3;
  *(v34 + 32) = a4;
  *(v34 + 40) = a5;
  *(v34 + 48) = a6;
  *(v34 + 56) = a7;
  *(v34 + 64) = a8;
  *(v34 + 72) = a9;
  *(v34 + 80) = a10;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v35 = v46;
  sub_1B6291034(a6, a7);
  v36 = a5;
  if (sub_1B63BEF24())
  {
    v50 = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1B62F9CC4;
    *(v37 + 24) = v34;
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v39 = *&v20[v38];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[v38] = v39;
    v48 = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1B629A8E8(0, v39[2] + 1, 1, v39);
      *&v20[v38] = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1B629A8E8((v41 > 1), v42 + 1, 1, v39);
    }

    v39[2] = v42 + 1;
    v43 = &v39[2 * v42];
    v43[4] = sub_1B62B9488;
    v43[5] = v37;
    *&v20[v38] = v39;
    swift_endAccess();

    v35 = v50;
    v36 = v48;
  }

  else
  {
  }

  [*&v17[v52] unlock];
  sub_1B6284F64(a6, a7);

  return v20;
}

void sub_1B62F5D84(uint64_t a1, void *a2, char a3, uint64_t a4, __int16 a5, void *a6, uint64_t a7, unint64_t a8, __int16 a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    v19 = a2;
    [v18 setNavigationInterrupted_];
    [v18 setRequiredCharge_];
    [v18 setRouteProgressWaypointIndex_];
    if (a6)
    {
      v20 = [a6 data];
      if (v20)
      {
        v21 = v20;
        v22 = sub_1B63BE924();
        v24 = v23;

        a6 = sub_1B63BE904();
        sub_1B628BAC0(v22, v24);
      }

      else
      {
        a6 = 0;
      }
    }

    [v18 setRouteRequestStorage_];

    if (a8 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_1B63BE904();
    }

    [v18 setSharedETAData_];

    [v18 setType_];
    if (a11)
    {
      v26 = sub_1B63BEBC4();
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    [v18 setVehicleIdentifier_];
  }
}

uint64_t sub_1B62F6190()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted);
  [v1 unlock];
  return v2;
}

id sub_1B62F623C(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62F9084;
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

id sub_1B62F63E8(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setNavigationInterrupted_];
  }

  return result;
}

id (*sub_1B62F644C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62F64D0;
}

id sub_1B62F653C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge);
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
  *(v20 + 16) = sub_1B62F908C;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B8284;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_11;
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
    v16 = sub_1B62F908C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62F68FC(void *a1)
{
  sub_1B62F9340(a1);
}

void sub_1B62F6934(void *a1, uint64_t a2, void **a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v13];
  v5 = v13[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7)
    {
      v9 = [v7 requiredCharge];

      if (v9)
      {
        v10 = *a3;
        *a3 = v9;
      }
    }

    else
    {
    }
  }

  else
  {
    v11 = v13[0];
    v12 = sub_1B63BE824();

    swift_willThrow();
  }
}

id sub_1B62F6A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setRequiredCharge_];
  }

  return result;
}

void (*sub_1B62F6AA4(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B62F653C(a1, a2);
  return sub_1B62F6AEC;
}

void sub_1B62F6AEC(id *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_1B62F9340(v4);

    v3 = v2;
  }

  else
  {
    sub_1B62F9340(*a1);
    v3 = v4;
  }
}

id sub_1B62F6BC4(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62F9500;
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

id (*sub_1B62F6D70(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62F6DF4;
}

id sub_1B62F6E60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
  v7 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8);
  v30 = v6;
  v31 = v7;
  sub_1B6291034(v6, v7);
  sub_1B6284F64(0, 0xF000000000000000);
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v7 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      v10 = objc_allocWithZone(MEMORY[0x1E69A25C0]);
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
  *(v22 + 16) = sub_1B62F9524;
  *(v22 + 24) = v19;
  v29[4] = sub_1B62B9478;
  v29[5] = v22;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1B62B1294;
  v29[3] = &block_descriptor_41_2;
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
      v27 = objc_allocWithZone(MEMORY[0x1E69A25C0]);
      sub_1B629119C(v26, v25);
      v28 = sub_1B63BE904();
      v12 = [v27 initWithData_];

      sub_1B6284F64(v26, v25);
      sub_1B6295C20(v15);
    }

    v18 = sub_1B62F9524;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B62F7354(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v2 lock];
  sub_1B62F73CC(v2, a1, v1);
  [v2 unlock];
}

uint64_t sub_1B62F73CC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = [v5 data];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B63BE924();
      v10 = v9;
    }

    else
    {

      v8 = 0;
      v10 = 0xF000000000000000;
    }

    v13 = (a3 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
    v14 = *(a3 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
    v15 = *(a3 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8);
    *v13 = v8;
    v13[1] = v10;
    sub_1B6284F64(v14, v15);
  }

  else
  {
    v11 = *(a3 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
    v12 = *(a3 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8);
    *(a3 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage) = xmmword_1B63C3E40;
    sub_1B6284F64(v11, v12);
    v5 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v17 = v5;
  if (sub_1B63BEF24())
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1B62F9C98;
    *(v18 + 24) = v16;
    v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v20 = *(a3 + v19);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + v19) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1B629A8E8(0, v20[2] + 1, 1, v20);
      *(a3 + v19) = v20;
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
    *(a3 + v19) = v20;
    swift_endAccess();
  }

  else
  {
  }
}

void sub_1B62F7614(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    if (a3)
    {
      v21 = v5;
      v20 = a2;
      v19 = a3;
      [v19 copy];
      sub_1B63BEF84();
      swift_unknownObjectRelease();
      sub_1B6281C60(0, &qword_1EDB0E790, 0x1E69A25C0);
      swift_dynamicCast();
      v6 = [v22 waypointsCount];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        while (1)
        {
          v9 = [v22 waypointsAtIndex_];
          if (!v9)
          {
            break;
          }

          v10 = v9;
          ++v8;
          v11 = [v9 mapItemStorage];
          v12 = [objc_opt_self() mapItemStorageForGEOMapItem:v11 forUseType:3];

          [v10 setMapItemStorage_];
          if (v7 == v8)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_7:
        v13 = [v22 data];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1B63BE924();
          v17 = v16;

          v18 = sub_1B63BE904();
          sub_1B628BAC0(v15, v17);
        }

        else
        {
          v18 = 0;
        }

        [v21 setRouteRequestStorage_];
      }
    }

    else
    {

      [v5 setRouteRequestStorage_];
    }
  }
}

void (*sub_1B62F785C(id *a1, uint64_t a2))(uint64_t a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B62F6E60(a1, a2);
  return sub_1B62F78A4;
}

void sub_1B62F78A4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62F73CC(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62F73CC(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

uint64_t sub_1B62F79F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData);
  v7 = *(v3 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData + 8);
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
  *(v19 + 16) = sub_1B62F954C;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_51_3;
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
    v10 = sub_1B62F954C;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B62F7E44(uint64_t a1, unint64_t a2)
{
  sub_1B62F9574(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62F7E8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B6291034(*a1, v2);
  sub_1B62F9574(v1, v2);

  return sub_1B6284F64(v1, v2);
}

void sub_1B62F7EE8(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
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

void sub_1B62F800C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1B63BE904();
    }

    v10 = v9;
    [v7 setSharedETAData_];
  }
}

uint64_t (*sub_1B62F80CC(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B62F79F8(a1, a2);
  a1[1] = v4;
  return sub_1B62F8114;
}

uint64_t sub_1B62F8114(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {
    sub_1B6291034(v4, v3);
    sub_1B62F9574(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B62F9574(v4, v3);
  }

  return sub_1B6284F64(v2, v3);
}

id sub_1B62F81F8(__int16 a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__type) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62F9754;
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

id sub_1B62F83A4(uint64_t a1, uint64_t a2, __int16 a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62F8414(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryMultiPointRoute__type);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62F8498;
}

uint64_t sub_1B62F8538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier);
  v6 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier + 8);
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
  *(v19 + 16) = sub_1B62F9778;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_69_0;
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

    v15 = sub_1B62F9778;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62F8944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62F9784;
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

void sub_1B62F8B0C(void *a1, uint64_t a2, uint64_t *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v16];
  v5 = v16[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 vehicleIdentifier]) != 0)
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

void sub_1B62F8C30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
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
    [v7 setVehicleIdentifier_];
  }
}

id (*sub_1B62F8CE8(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B62F8538(a1, a2);
  a1[1] = v4;
  return sub_1B62F8D30;
}

id sub_1B62F8D30(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1B62F8944(*a1, v2);
  }

  sub_1B62F8944(v3, v2);
}

void *sub_1B62F8DA4(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted] = 0;
  *&v9[OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge] = 0;
  *&v9[OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex] = 0;
  *&v9[OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage] = xmmword_1B63C3E40;
  *&v9[OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData] = xmmword_1B63C3E40;
  *&v9[OBJC_IVAR___MSHistoryMultiPointRoute__type] = 0;
  v10 = &v9[OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier];
  *v10 = 0;
  v10[1] = 0;
  return sub_1B62F0450(a1, a2, a3, a4);
}

uint64_t sub_1B62F8F20()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage), *(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8));
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData), *(v0 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData + 8));
}

id HistoryMultiPointRoute.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryMultiPointRoute(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B62F9098(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 position];
    *(v2 + OBJC_IVAR___MSHistoryItem__position) = v8;
    v9 = [v6 positionIndex];

    *(v2 + OBJC_IVAR___MSHistoryItem__positionIndex) = v9;
  }

  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v12 = a1;
    v13 = [v11 navigationInterrupted];
    *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted) = v13;
    if (a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = [v11 requiredCharge];
    }

    v15 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge);
    *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge) = v14;

    v16 = [v11 routeProgressWaypointIndex];
    *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex) = v16;
    if (a2)
    {
      v17 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
      v18 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8);
      *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage) = xmmword_1B63C3E40;
      sub_1B6284F64(v17, v18);
    }

    else
    {
      v19 = [v11 routeRequestStorage];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1B63BE924();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xF000000000000000;
      }

      v24 = (v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
      v25 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage);
      v26 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage + 8);
      *v24 = v21;
      v24[1] = v23;
      sub_1B6284F64(v25, v26);
      v27 = [v11 sharedETAData];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1B63BE924();
        v31 = v30;

        goto LABEL_16;
      }
    }

    v29 = 0;
    v31 = 0xF000000000000000;
LABEL_16:
    v32 = (v2 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData);
    v33 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData);
    v34 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData + 8);
    *v32 = v29;
    v32[1] = v31;
    sub_1B6284F64(v33, v34);
    v35 = [v11 type];
    *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__type) = v35;
    if ((a2 & 1) != 0 || (v36 = [v11 vehicleIdentifier]) == 0)
    {

      v38 = 0;
      v40 = 0;
    }

    else
    {
      v37 = v36;
      v38 = sub_1B63BEBD4();
      v40 = v39;
    }

    v41 = (v2 + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier);
    *v41 = v38;
    v41[1] = v40;
  }

  return result;
}

id sub_1B62F9340(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge);
  *(v2 + OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62F9CA0;
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

id sub_1B62F9574(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData);
  v8 = *(v3 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData);
  v9 = *(v3 + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData + 8);
  *v7 = a1;
  v7[1] = a2;
  sub_1B6291034(a1, a2);
  sub_1B6284F64(v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1B6281C60(0, &qword_1EDB0F060, 0x1E69E58C0);
  sub_1B6291034(a1, a2);
  if (sub_1B63BEF24())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B62F9C90;
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

id HistoryPlaceItem.__allocating_init(latitude:longitude:mapItemLastRefreshed:muid:supersededSearchId:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v28 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  v17 = objc_allocWithZone(v6);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDB0F2A8;
  v27 = a3;
  sub_1B628C510(a3, v16, &unk_1EB943210, &unk_1B63C3F50);
  v19 = sub_1B63BE994();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v16, 1, v19) != 1)
  {
    v21 = sub_1B63BE954();
    (*(v20 + 8))(v16, v19);
  }

  sub_1B628C510(v28, v13, &unk_1EB943680, qword_1B63C4070);
  v22 = sub_1B63BEA04();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v13, 1, v22) != 1)
  {
    v24 = sub_1B63BE9C4();
    (*(v23 + 8))(v13, v22);
  }

  v25 = [v17 initWithStore:v18 latitude:a1 longitude:a2 mapItemLastRefreshed:v21 muid:a4 supersededSearchId:v24];

  sub_1B6284EAC(v28, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v27, &unk_1EB943210, &unk_1B63C3F50);
  return v25;
}

id HistoryPlaceItem.init(latitude:longitude:mapItemLastRefreshed:muid:supersededSearchId:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_1B62FFC80(a1, a2, a3, a4, a5);

  return v8;
}

char *HistoryPlaceItem.__allocating_init(store:latitude:longitude:mapItemLastRefreshed:muid:supersededSearchId:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v69 = a5;
  v70 = a6;
  v68 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v65 = *(v11 - 8);
  v64 = *(v65 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v61 = *(v16 - 8);
  v17 = *(v61 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v58 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v21 = objc_allocWithZone(v7);
  v66 = a1;
  v22 = [v21 initWithStore_];
  v55 = v22;
  v23 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v24 = *&v22[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v25 = v22;
  [v24 lock];
  v62 = *&v22[v23];
  v26 = *&v25[OBJC_IVAR___MSHistoryPlaceItem__latitude];
  v57 = a2;
  *&v25[OBJC_IVAR___MSHistoryPlaceItem__latitude] = a2;
  v60 = a2;

  v27 = *&v25[OBJC_IVAR___MSHistoryPlaceItem__longitude];
  v28 = v68;
  *&v25[OBJC_IVAR___MSHistoryPlaceItem__longitude] = v68;
  v59 = v28;

  sub_1B628C510(a4, v20, &unk_1EB943210, &unk_1B63C3F50);
  v29 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v20, &v25[v29], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v30 = *&v25[OBJC_IVAR___MSHistoryPlaceItem__muid];
  v31 = v69;
  *&v25[OBJC_IVAR___MSHistoryPlaceItem__muid] = v69;
  v56 = v31;

  v32 = v70;
  sub_1B628C510(v70, v15, &unk_1EB943680, qword_1B63C4070);
  v33 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
  swift_beginAccess();
  sub_1B6282DFC(v15, &v25[v33], &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  v67 = a4;
  v34 = v58;
  sub_1B628C510(a4, v58, &unk_1EB943210, &unk_1B63C3F50);
  v35 = v32;
  v36 = v63;
  sub_1B628C510(v35, v63, &unk_1EB943680, qword_1B63C4070);
  v37 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v38 = (v17 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v65 + 80) + v38 + 8) & ~*(v65 + 80);
  v40 = swift_allocObject();
  v41 = v68;
  *(v40 + 16) = v57;
  *(v40 + 24) = v41;
  sub_1B628A128(v34, v40 + v37, &unk_1EB943210, &unk_1B63C3F50);
  *(v40 + v38) = v69;
  sub_1B628A128(v36, v40 + v39, &unk_1EB943680, qword_1B63C4070);
  sub_1B6282B88();
  v42 = v23;
  v43 = v55;
  v44 = v60;
  v45 = v59;
  v46 = v56;
  if (sub_1B63BEF24())
  {
    v68 = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_1B62FFF48;
    *(v47 + 24) = v40;
    v48 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v49 = *&v25[v48];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25[v48] = v49;
    v69 = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_1B629A8E8(0, v49[2] + 1, 1, v49);
      *&v25[v48] = v49;
    }

    v52 = v49[2];
    v51 = v49[3];
    if (v52 >= v51 >> 1)
    {
      v49 = sub_1B629A8E8((v51 > 1), v52 + 1, 1, v49);
    }

    v49[2] = v52 + 1;
    v53 = &v49[2 * v52];
    v53[4] = sub_1B62B8188;
    v53[5] = v47;
    *&v25[v48] = v49;
    swift_endAccess();
    v45 = v68;
    v44 = v69;
  }

  [*&v43[v42] unlock];

  sub_1B6284EAC(v70, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v67, &unk_1EB943210, &unk_1B63C3F50);

  return v25;
}

char *HistoryPlaceItem.init(store:latitude:longitude:mapItemLastRefreshed:muid:supersededSearchId:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v66 = a5;
  v67 = a6;
  v68 = a4;
  v65 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v56 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v64 = a1;
  v21 = [v7 initWithStore_];
  v57 = v21;
  v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v23 = *&v21[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v24 = v21;
  [v23 lock];
  v62 = *&v21[v22];
  v25 = *&v24[OBJC_IVAR___MSHistoryPlaceItem__latitude];
  v26 = v65;
  *&v24[OBJC_IVAR___MSHistoryPlaceItem__latitude] = v65;
  v59 = v26;

  v27 = *&v24[OBJC_IVAR___MSHistoryPlaceItem__longitude];
  v55 = a3;
  *&v24[OBJC_IVAR___MSHistoryPlaceItem__longitude] = a3;
  v58 = a3;

  sub_1B628C510(a4, v20, &unk_1EB943210, &unk_1B63C3F50);
  v28 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v20, &v24[v28], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v29 = *&v24[OBJC_IVAR___MSHistoryPlaceItem__muid];
  v30 = v66;
  *&v24[OBJC_IVAR___MSHistoryPlaceItem__muid] = v66;
  v54 = v30;

  v31 = v67;
  sub_1B628C510(v67, v15, &unk_1EB943680, qword_1B63C4070);
  v32 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
  swift_beginAccess();
  sub_1B6282DFC(v15, &v24[v32], &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  v33 = v56;
  sub_1B628C510(v68, v56, &unk_1EB943210, &unk_1B63C3F50);
  v34 = v31;
  v35 = v61;
  sub_1B628C510(v34, v61, &unk_1EB943680, qword_1B63C4070);
  v36 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v37 = (v17 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (*(v63 + 80) + v37 + 8) & ~*(v63 + 80);
  v39 = swift_allocObject();
  v40 = v55;
  *(v39 + 16) = v65;
  *(v39 + 24) = v40;
  sub_1B628A128(v33, v39 + v36, &unk_1EB943210, &unk_1B63C3F50);
  *(v39 + v37) = v66;
  sub_1B628A128(v35, v39 + v38, &unk_1EB943680, qword_1B63C4070);
  sub_1B6282B88();
  v41 = v22;
  v42 = v57;
  v43 = v59;
  v44 = v58;
  v45 = v54;
  if (sub_1B63BEF24())
  {
    v65 = v44;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1B6300C88;
    *(v46 + 24) = v39;
    v47 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v48 = *&v24[v47];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v24[v47] = v48;
    v66 = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_1B629A8E8(0, v48[2] + 1, 1, v48);
      *&v24[v47] = v48;
    }

    v51 = v48[2];
    v50 = v48[3];
    if (v51 >= v50 >> 1)
    {
      v48 = sub_1B629A8E8((v50 > 1), v51 + 1, 1, v48);
    }

    v48[2] = v51 + 1;
    v52 = &v48[2 * v51];
    v52[4] = sub_1B62B9488;
    v52[5] = v46;
    *&v24[v47] = v48;
    swift_endAccess();
    v44 = v65;
    v43 = v66;
  }

  [*&v42[v41] unlock];

  sub_1B6284EAC(v67, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v68, &unk_1EB943210, &unk_1B63C3F50);

  return v24;
}

void sub_1B62FAD20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v21 = a2;
    [v20 setLatitude_];
    [v20 setLongitude_];
    sub_1B628C510(a5, v18, &unk_1EB943210, &unk_1B63C3F50);
    v22 = sub_1B63BE994();
    v23 = *(v22 - 8);
    v24 = 0;
    if ((*(v23 + 48))(v18, 1, v22) != 1)
    {
      v24 = sub_1B63BE954();
      (*(v23 + 8))(v18, v22);
    }

    [v20 setMapItemLastRefreshed_];

    [v20 setMuid_];
    sub_1B628C510(a7, v15, &unk_1EB943680, qword_1B63C4070);
    v25 = sub_1B63BEA04();
    v26 = *(v25 - 8);
    v27 = 0;
    if ((*(v26 + 48))(v15, 1, v25) != 1)
    {
      v27 = sub_1B63BE9C4();
      (*(v26 + 8))(v15, v25);
    }

    [v20 setSupersededSearchId_];
  }
}

id sub_1B62FB2CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistoryPlaceItem__latitude);
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
  *(v20 + 16) = sub_1B630005C;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B8284;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_12;
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
    v16 = sub_1B630005C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62FB68C(void *a1)
{
  sub_1B6300084(a1);
}

void (*sub_1B62FB6C4(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B62FB2CC(a1, a2);
  return sub_1B62FB70C;
}

id sub_1B62FB768(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistoryPlaceItem__longitude);
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
  *(v20 + 16) = sub_1B6300234;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_27_0;
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
    v16 = sub_1B6300234;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62FBB28(void *a1)
{
  sub_1B630025C(a1);
}

void (*sub_1B62FBB60(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B62FB768(a1, a2);
  return sub_1B62FBBA8;
}

void sub_1B62FBBC0(id *a1, char a2, void (*a3)(id))
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

uint64_t sub_1B62FBD68@<X0>(char *a2@<X8>)
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
  v13 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
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
  *(v26 + 16) = sub_1B630040C;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_38_0;
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

uint64_t sub_1B62FC368(uint64_t a1)
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
  v12 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
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
    *(v15 + 16) = sub_1B6300418;
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

void sub_1B62FC638(void *a1, uint64_t a2, _BYTE *a3)
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
    type metadata accessor for MapsSyncManagedHistoryPlaceItem();
    v16 = swift_dynamicCastClass();
    v17 = v14;
    if (v16 && (v18 = [v16 mapItemLastRefreshed]) != 0)
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

void sub_1B62FC868(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();
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

void (*sub_1B62FC9D4(void *a1))(uint64_t a1, uint64_t a2)
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
  sub_1B62FBD68(v4);
  return sub_1B62FCA90;
}

id sub_1B62FCAFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistoryPlaceItem__muid);
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
  *(v20 + 16) = sub_1B6300440;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_55_0;
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
    v16 = sub_1B6300440;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62FCEBC(void *a1)
{
  sub_1B6300468(a1);
}

void sub_1B62FCEF4(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v15];
  v7 = v15[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedHistoryPlaceItem();
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

id sub_1B62FD008(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B62FD078(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B62FCAFC(a1, a2);
  return sub_1B62FD0C0;
}

uint64_t sub_1B62FD200@<X0>(char *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B63BEA04();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v30(v9, 1, 1, v10);
  v12 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v12 lock];
  v13 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
  swift_beginAccess();
  sub_1B6284EAC(v9, &unk_1EB943680, qword_1B63C4070);
  sub_1B628C510(v3 + v13, v9, &unk_1EB943680, qword_1B63C4070);
  [v12 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943680, qword_1B63C4070);
  }

  sub_1B628C510(v9, v7, &unk_1EB943680, qword_1B63C4070);
  v14 = (*(v11 + 48))(v7, 1, v10);
  v15 = sub_1B6284EAC(v7, &unk_1EB943680, qword_1B63C4070);
  if (v14 != 1)
  {
    return sub_1B628A128(v9, v32, &unk_1EB943680, qword_1B63C4070);
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
    return sub_1B6284EAC(v9, &unk_1EB943680, qword_1B63C4070);
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
  *(v26 + 16) = sub_1B6300618;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_66;
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
    sub_1B628A128(v9, v32, &unk_1EB943680, qword_1B63C4070);
  }

  return result;
}

uint64_t sub_1B62FD800(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v11 lock];
  sub_1B628C510(a1, v10, &unk_1EB943680, qword_1B63C4070);
  v12 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
  swift_beginAccess();
  sub_1B6282DFC(v10, v1 + v12, &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  sub_1B628C510(a1, v8, &unk_1EB943680, qword_1B63C4070);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1B628A128(v8, v14 + v13, &unk_1EB943680, qword_1B63C4070);
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B6300624;
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
  return sub_1B6284EAC(a1, &unk_1EB943680, qword_1B63C4070);
}

uint64_t sub_1B62FDAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1B628C510(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

void sub_1B62FDB7C(void *a1, uint64_t a2, _BYTE *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B63BEA04();
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
    type metadata accessor for MapsSyncManagedHistoryPlaceItem();
    v16 = swift_dynamicCastClass();
    v17 = v14;
    if (v16 && (v18 = [v16 supersededSearchId]) != 0)
    {
      v19 = v18;
      sub_1B63BE9E4();

      v20 = *(v7 + 32);
      v20(v12, v10, v6);
      sub_1B6284EAC(a3, &unk_1EB943680, qword_1B63C4070);
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

void sub_1B62FDDAC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    sub_1B628C510(a3, v7, &unk_1EB943680, qword_1B63C4070);
    v10 = sub_1B63BEA04();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    v13 = a2;
    v14 = 0;
    if (v12 != 1)
    {
      v14 = sub_1B63BE9C4();
      (*(v11 + 8))(v7, v10);
    }

    [v9 setSupersededSearchId_];
  }
}

void (*sub_1B62FDF18(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8) + 64);
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
  sub_1B62FD200(v4);
  return sub_1B62FDFD4;
}

void sub_1B62FDFFC(uint64_t a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a2)
  {
    sub_1B628C510(v7, v6, a4, a5);
    a3(v6);
    sub_1B6284EAC(v7, a4, a5);
  }

  else
  {
    a3(v7);
  }

  free(v7);

  free(v6);
}

void *sub_1B62FE0DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage);
  v6 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage + 8);
  v35 = v7;
  v36 = v6;
  sub_1B6291034(v7, v6);
  sub_1B6284F64(0, 0xF000000000000000);
  v8 = [v5 unlock];
  if (*(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad) != 1 || v6 >> 60 != 15)
  {
    if (v6 >> 60 != 15)
    {
      v10 = objc_allocWithZone(MEMORY[0x1E69A21E0]);
      sub_1B629119C(v7, v6);
      v11 = sub_1B63BE904();
      v12 = [v10 initWithData_];

      if (v12)
      {
        v13 = v12;
        v14 = sub_1B62D6660(v3, v12);

        sub_1B6284F64(v7, v6);
LABEL_21:
        v28 = 0;
        v20 = 0;
LABEL_22:
        sub_1B6284F64(v35, v36);
        sub_1B62B1F7C(v28, v20);
        return v14;
      }

      sub_1B6284F64(v7, v6);
    }

LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  if ((*(ObjectType + 592))(v8))
  {

LABEL_11:
    v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    sub_1B62814B4();
    goto LABEL_13;
  }

  v15 = sub_1B63BF364();

  if (v15)
  {
    goto LABEL_11;
  }

  v16 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B628276C();
LABEL_13:

  v17 = sub_1B629409C();
  v19 = v18;

  if (v19)
  {
    v34[0] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v17);
    goto LABEL_20;
  }

  [v5 lock];
  v20 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
  v21 = v20;
  [v5 unlock];
  if (!v20)
  {
    sub_1B6295C20(v17);
    v14 = 0;
    v28 = 0;
    goto LABEL_22;
  }

  v20 = swift_allocObject();
  v20[2] = v17;
  v20[3] = v21;
  v20[4] = &v35;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B63006E4;
  *(v22 + 24) = v20;
  v34[4] = sub_1B62B9478;
  v34[5] = v22;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = sub_1B62B1294;
  v34[3] = &block_descriptor_83;
  v23 = _Block_copy(v34);
  v24 = v21;

  sub_1B62B1FC0(v17);

  [v17 performBlockAndWait_];
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v27 = v36;
    if (v36 >> 60 == 15)
    {
      sub_1B6295C20(v17);
    }

    else
    {
      v29 = v35;
      v30 = objc_allocWithZone(MEMORY[0x1E69A21E0]);
      sub_1B629119C(v29, v27);
      v31 = sub_1B63BE904();
      v32 = [v30 initWithData_];

      if (v32)
      {
        v33 = v32;
        v14 = sub_1B62D6660(v3, v32);

        sub_1B6284F64(v29, v27);
        sub_1B6295C20(v17);
LABEL_28:
        v28 = sub_1B63006E4;
        goto LABEL_22;
      }

      sub_1B6295C20(v17);

      sub_1B6284F64(v29, v27);
    }

    v14 = 0;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void sub_1B62FE648(uint64_t (**a1)(char *, uint64_t))
{
  v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v2 lock];
  sub_1B62FE808(v2, a1, v1);
  [v2 unlock];
}

void sub_1B62FE6C0(void *a1, uint64_t a2, uint64_t *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v19];
  v5 = v19[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryPlaceItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 mapItem]) != 0 && (v10 = v9, v11 = objc_msgSend(v9, sel_mapItemStorage), v10, v11))
    {
      v12 = sub_1B63BE924();
      v14 = v13;

      v15 = *a3;
      v16 = a3[1];
      *a3 = v12;
      a3[1] = v14;
      sub_1B6284F64(v15, v16);
    }

    else
    {
    }
  }

  else
  {
    v17 = v19[0];
    v18 = sub_1B63BE824();

    swift_willThrow();
  }
}

uint64_t sub_1B62FE808(uint64_t a1, uint64_t (**a2)(char *, uint64_t), char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - v7;
  v9 = sub_1B63BE994();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  sub_1B63BE984();
  v62 = a1;
  if (a2)
  {
    v15 = v14;
    v60 = a2;
    v16 = a2;
    [v16 coordinate];
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v19 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__latitude];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__latitude] = v18;

    [v16 coordinate];
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v22 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__longitude];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__longitude] = v21;

    v23 = [v16 _muid];
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v25 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__muid];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__muid] = v24;

    v26 = [v16 data];
    v59 = v16;
    if (v26)
    {
      v27 = v26;
      v28 = sub_1B63BE924();
      v30 = v29;
    }

    else
    {

      v28 = 0;
      v30 = 0xF000000000000000;
    }

    v39 = &a3[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage];
    v40 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage];
    v41 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage + 8];
    *v39 = v28;
    *(v39 + 1) = v30;
    sub_1B6284F64(v40, v41);
    v37 = *(v10 + 16);
    v37(v8, v15, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    v42 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
    swift_beginAccess();
    v43 = &a3[v42];
    v14 = v15;
    sub_1B6282DFC(v8, v43, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v38 = v59;
    a2 = v60;
  }

  else
  {
    v31 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__latitude];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__latitude] = 0;

    v32 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__longitude];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__longitude] = 0;

    v33 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__muid];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__muid] = 0;

    v34 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage];
    v35 = *&a3[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage + 8];
    *&a3[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage] = xmmword_1B63C3E40;
    sub_1B6284F64(v34, v35);
    (*(v10 + 56))(v8, 1, 1, v9);
    v36 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v8, &a3[v36], &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v37 = *(v10 + 16);
    v38 = 0;
  }

  v44 = v61;
  v37(v61, v14, v9);
  v45 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v46 = (v11 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  v60 = v10;
  (*(v10 + 32))(v47 + v45, v44, v9);
  *(v47 + v46) = a3;
  sub_1B6282B88();
  v48 = v38;
  v49 = a3;
  if (sub_1B63BEF24())
  {
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1B6300B40;
    *(v50 + 24) = v47;
    v51 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v52 = *&v49[v51];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49[v51] = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = sub_1B629A8E8(0, v52[2] + 1, 1, v52);
      *&v49[v51] = v52;
    }

    v55 = v52[2];
    v54 = v52[3];
    if (v55 >= v54 >> 1)
    {
      v52 = sub_1B629A8E8((v54 > 1), v55 + 1, 1, v52);
    }

    v52[2] = v55 + 1;
    v56 = &v52[2 * v55];
    v56[4] = sub_1B62B9488;
    v56[5] = v50;
    *&v49[v51] = v52;
    swift_endAccess();
  }

  return v60[1](v14, v9);
}

void sub_1B62FED8C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  if (!a3)
  {
    v38 = a2;
    v39 = [v8 mapItem];
    if (v39)
    {
      v40 = v39;
      [v39 setMapItemStorage_];
    }

    [v8 setLatitude_];
    [v8 setLongitude_];
    [v8 setMuid_];
    v44 = v38;
    v41 = sub_1B63BE954();
    [v8 setModificationTime_];

    [v8 setMapItemLastRefreshed_];
    goto LABEL_21;
  }

  ObjCClassFromObject = swift_getObjCClassFromObject();
  v44 = a2;
  v10 = a3;
  v11 = [ObjCClassFromObject strippedMapItemWith_];
  v12 = [v8 managedObjectContext];
  if (v12)
  {
    v13 = v12;
    [v11 coordinate];
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v8 setLatitude_];

    [v11 coordinate];
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v8 setLongitude_];

    v18 = [v11 _muid];
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    [v8 setMuid_];

    v20 = sub_1B63BE954();
    [v8 setMapItemLastRefreshed_];

    v21 = [v8 mapItem];
    if (!v21)
    {
      type metadata accessor for MapsSyncManagedMixinMapItem();
      v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v8 setMapItem_];

      v23 = [v8 mapItem];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1B63BE954();
        [v24 setCreateTime_];
      }

      v26 = [v8 mapItem];
      if (!v26)
      {
        goto LABEL_10;
      }

      v27 = v26;
      v28 = sub_1B63BE954();
      [v27 setModificationTime_];

      v21 = v28;
    }

LABEL_10:
    v29 = [v8 mapItem];
    if (v29)
    {
      v30 = v29;
      [v11 coordinate];
      [v30 setLatitude_];
      [v11 coordinate];
      [v30 setLongitude_];
      v32 = [v11 data];
      if (v32)
      {
        v33 = v32;
        v34 = sub_1B63BE924();
        v36 = v35;

        v37 = sub_1B63BE904();
        sub_1B628BAC0(v34, v36);
      }

      else
      {
        v37 = 0;
      }

      [v30 setMapItemStorage_];

      v43 = sub_1B63BE954();
      [v30 setModificationTime_];
    }

LABEL_21:
    v42 = v44;
    goto LABEL_22;
  }

  v42 = v11;
LABEL_22:
}

void (*sub_1B62FF22C(void **a1, uint64_t a2))(uint64_t a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B62FE0DC(a1, a2);
  return sub_1B62FF274;
}

void sub_1B62FF274(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62FE808(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62FE808(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

void *sub_1B62FF344(void *a1, void *a2, int a3, int a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR___MSHistoryPlaceItem__latitude] = 0;
  *&v10[OBJC_IVAR___MSHistoryPlaceItem__longitude] = 0;
  v11 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
  v12 = sub_1B63BE994();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *&v10[OBJC_IVAR___MSHistoryPlaceItem__muid] = 0;
  v13 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
  v14 = sub_1B63BEA04();
  (*(*(v14 - 8) + 56))(&v10[v13], 1, 1, v14);
  *&v10[OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage] = xmmword_1B63C3E40;
  return sub_1B62F0450(a1, a2, a3, a4);
}

uint64_t sub_1B62FF598()
{
  sub_1B6284EAC(v0 + OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed, &unk_1EB943210, &unk_1B63C3F50);

  sub_1B6284EAC(v0 + OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId, &unk_1EB943680, qword_1B63C4070);
  v1 = *(v0 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage);
  v2 = *(v0 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage + 8);

  return sub_1B6284F64(v1, v2);
}

id HistoryPlaceItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryPlaceItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B62FF724(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v56 - v15;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    v19 = a1;
    [v18 position];
    *(v2 + OBJC_IVAR___MSHistoryItem__position) = v20;
    v21 = [v18 positionIndex];

    *(v2 + OBJC_IVAR___MSHistoryItem__positionIndex) = v21;
  }

  type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v23 = result;
    if (a2)
    {
      v24 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__latitude);
      *(v2 + OBJC_IVAR___MSHistoryPlaceItem__latitude) = 0;
      v25 = a1;

      v26 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__longitude);
      *(v2 + OBJC_IVAR___MSHistoryPlaceItem__longitude) = 0;

      v27 = sub_1B63BE994();
      (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    }

    else
    {
      v28 = a1;
      v29 = [v23 latitude];
      v30 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__latitude);
      *(v2 + OBJC_IVAR___MSHistoryPlaceItem__latitude) = v29;

      v31 = [v23 longitude];
      v32 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__longitude);
      *(v2 + OBJC_IVAR___MSHistoryPlaceItem__longitude) = v31;

      v33 = [v23 mapItemLastRefreshed];
      if (v33)
      {
        v34 = v33;
        sub_1B63BE974();

        v35 = sub_1B63BE994();
        (*(*(v35 - 8) + 56))(v14, 0, 1, v35);
      }

      else
      {
        v36 = sub_1B63BE994();
        (*(*(v36 - 8) + 56))(v14, 1, 1, v36);
      }

      sub_1B628A128(v14, v16, &unk_1EB943210, &unk_1B63C3F50);
    }

    v37 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
    swift_beginAccess();
    sub_1B6282DFC(v16, v2 + v37, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    if (a2)
    {
      v38 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__muid);
      *(v2 + OBJC_IVAR___MSHistoryPlaceItem__muid) = 0;

      v39 = sub_1B63BEA04();
      (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
    }

    else
    {
      v40 = [v23 muid];
      v41 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__muid);
      *(v2 + OBJC_IVAR___MSHistoryPlaceItem__muid) = v40;

      v42 = [v23 supersededSearchId];
      if (v42)
      {
        v43 = v42;
        sub_1B63BE9E4();

        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      v45 = sub_1B63BEA04();
      (*(*(v45 - 8) + 56))(v8, v44, 1, v45);
      sub_1B628A128(v8, v10, &unk_1EB943680, qword_1B63C4070);
    }

    v46 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
    swift_beginAccess();
    sub_1B6282DFC(v10, v2 + v46, &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    if ((a2 & 1) == 0 && (v47 = [v23 mapItem]) != 0 && (v48 = v47, v49 = objc_msgSend(v47, sel_mapItemStorage), v48, v49))
    {
      v50 = sub_1B63BE924();
      v52 = v51;
    }

    else
    {

      v50 = 0;
      v52 = 0xF000000000000000;
    }

    v53 = (v2 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage);
    v54 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage);
    v55 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage + 8);
    *v53 = v50;
    v53[1] = v52;
    return sub_1B6284F64(v54, v55);
  }

  return result;
}

id sub_1B62FFC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v25 = a2;
  v26 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB0F2A8;
  sub_1B628C510(a3, v15, &unk_1EB943210, &unk_1B63C3F50);
  v17 = sub_1B63BE994();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    v19 = sub_1B63BE954();
    (*(v18 + 8))(v15, v17);
  }

  sub_1B628C510(a5, v12, &unk_1EB943680, qword_1B63C4070);
  v20 = sub_1B63BEA04();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v12, 1, v20) != 1)
  {
    v22 = sub_1B63BE9C4();
    (*(v21 + 8))(v12, v20);
  }

  v23 = [v6 initWithStore:v16 latitude:a1 longitude:v25 mapItemLastRefreshed:v19 muid:v26 supersededSearchId:{v22, v25, v26}];

  sub_1B6284EAC(a5, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(a3, &unk_1EB943210, &unk_1B63C3F50);
  return v23;
}

void sub_1B62FFF4C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + v7);
  v12 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  sub_1B62FAD20(a1, a2, v9, v10, v2 + v6, v11, v12);
}

id sub_1B6300084(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__latitude);
  *(v2 + OBJC_IVAR___MSHistoryPlaceItem__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6300C38;
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

id sub_1B630025C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__longitude);
  *(v2 + OBJC_IVAR___MSHistoryPlaceItem__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6300C14;
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

id sub_1B6300468(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSHistoryPlaceItem__muid);
  *(v2 + OBJC_IVAR___MSHistoryPlaceItem__muid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6300BF0;
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

uint64_t sub_1B630064C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

void sub_1B6300B40(uint64_t a1, void *a2)
{
  v5 = *(sub_1B63BE994() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1B62FED8C(a1, a2, v8, v2 + v6, v7);
}

id HistoryRideShareItem.init(endWaypoint:startWaypoint:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDB0F2A8;
  if (a2 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    sub_1B629119C(a1, a2);
    v11 = sub_1B63BE904();
    sub_1B6284F64(a1, a2);
  }

  if (a4 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    sub_1B629119C(a3, a4);
    v12 = sub_1B63BE904();
    sub_1B6284F64(a3, a4);
  }

  v13 = [v5 initWithStore:v10 endWaypoint:v11 startWaypoint:v12];
  sub_1B6284F64(a3, a4);
  sub_1B6284F64(a1, a2);

  return v13;
}

char *HistoryRideShareItem.init(store:endWaypoint:startWaypoint:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = [v5 initWithStore_];
  v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v12 = *&v10[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v13 = v10;
  [v12 lock];
  v14 = &v13[OBJC_IVAR___MSHistoryRideShareItem__endWaypoint];
  v15 = *&v13[OBJC_IVAR___MSHistoryRideShareItem__endWaypoint];
  v16 = *&v13[OBJC_IVAR___MSHistoryRideShareItem__endWaypoint + 8];
  *v14 = a2;
  *(v14 + 1) = a3;
  sub_1B6291034(a2, a3);
  sub_1B6284F64(v15, v16);
  v17 = &v13[OBJC_IVAR___MSHistoryRideShareItem__startWaypoint];
  v18 = *&v13[OBJC_IVAR___MSHistoryRideShareItem__startWaypoint];
  v19 = *&v13[OBJC_IVAR___MSHistoryRideShareItem__startWaypoint + 8];
  *v17 = a4;
  *(v17 + 1) = a5;
  sub_1B6291034(a4, a5);
  sub_1B6284F64(v18, v19);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a5;
  sub_1B6282B88();
  v32 = v11;
  sub_1B6291034(a2, a3);
  sub_1B6291034(a4, a5);
  if (sub_1B63BEF24())
  {
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1B6302314;
    *(v21 + 24) = v20;
    v31 = v21;
    v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v23 = *&v13[v22];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v13[v22] = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1B629A8E8(0, v23[2] + 1, 1, v23);
      *&v13[v22] = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v30 = sub_1B629A8E8((v25 > 1), v26 + 1, 1, v23);
      v27 = v26 + 1;
      v23 = v30;
    }

    v23[2] = v27;
    v28 = &v23[2 * v26];
    v28[4] = sub_1B62B8188;
    v28[5] = v31;
    *&v13[v22] = v23;
    swift_endAccess();
  }

  [*&v10[v32] unlock];
  sub_1B6284F64(a4, a5);
  sub_1B6284F64(a2, a3);

  return v13;
}

void sub_1B63011A8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  type metadata accessor for MapsSyncManagedHistoryRideShareItem();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = a2;
    if (a4 >> 60 == 15)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_1B63BE904();
    }

    [v10 setEndWaypoint_];

    if (a6 >> 60 == 15)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_1B63BE904();
    }

    v14 = v13;
    [v10 setStartWaypoint_];
  }
}

uint64_t sub_1B6301430(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint);
  v7 = *(v3 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint + 8);
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
  *(v19 + 16) = sub_1B6302320;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_13;
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
    v10 = sub_1B6302320;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6301800(uint64_t a1, unint64_t a2)
{
  sub_1B6302510(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t (*sub_1B6301848(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6301430(a1, a2);
  a1[1] = v4;
  return sub_1B6301890;
}

id sub_1B63018C0(void *a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1B630194C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint);
  v7 = *(v3 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint + 8);
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
  *(v19 + 16) = sub_1B63026E0;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_19;
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
    v10 = sub_1B63026E0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1B6301D1C(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
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

uint64_t sub_1B6301DC4(uint64_t a1, unint64_t a2)
{
  sub_1B6302708(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B6301E0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  sub_1B6291034(*a1, v7);
  a5(v6, v7);

  return sub_1B6284F64(v6, v7);
}

void sub_1B6301E70(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v20];
  v7 = v20[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedHistoryRideShareItem();
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

void sub_1B6301F94(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedHistoryRideShareItem();
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

uint64_t (*sub_1B6302060(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B630194C(a1, a2);
  a1[1] = v4;
  return sub_1B63020A8;
}

uint64_t sub_1B63020C0(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
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

void *sub_1B6302144(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MSHistoryRideShareItem__endWaypoint] = xmmword_1B63C3E40;
  *&v9[OBJC_IVAR___MSHistoryRideShareItem__startWaypoint] = xmmword_1B63C3E40;
  return sub_1B62F0450(a1, a2, a3, a4);
}

uint64_t sub_1B6302240()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint), *(v0 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint + 8));
  v1 = *(v0 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint);
  v2 = *(v0 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint + 8);

  return sub_1B6284F64(v1, v2);
}

id HistoryRideShareItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryRideShareItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B6302348(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 position];
    *(v2 + OBJC_IVAR___MSHistoryItem__position) = v8;
    v9 = [v6 positionIndex];

    *(v2 + OBJC_IVAR___MSHistoryItem__positionIndex) = v9;
  }

  type metadata accessor for MapsSyncManagedHistoryRideShareItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v12 = a1;
    if (a2)
    {
      v13 = *(v2 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint);
      v14 = *(v2 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint + 8);
      *(v2 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint) = xmmword_1B63C3E40;
      sub_1B6284F64(v13, v14);
    }

    else
    {
      v15 = [v11 endWaypoint];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1B63BE924();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0xF000000000000000;
      }

      v20 = (v2 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint);
      v21 = *(v2 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint);
      v22 = *(v2 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint + 8);
      *v20 = v17;
      v20[1] = v19;
      sub_1B6284F64(v21, v22);
      if ((a2 & 1) == 0)
      {
        v23 = [v11 startWaypoint];
        if (v23)
        {
          v24 = v23;
          v25 = sub_1B63BE924();
          v27 = v26;

LABEL_14:
          v28 = (v2 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint);
          v29 = *(v2 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint);
          v30 = *(v2 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint + 8);
          *v28 = v25;
          v28[1] = v27;

          return sub_1B6284F64(v29, v30);
        }
      }
    }

    v25 = 0;
    v27 = 0xF000000000000000;
    goto LABEL_14;
  }

  return result;
}

id sub_1B6302510(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint);
  v8 = *(v3 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint);
  v9 = *(v3 + OBJC_IVAR___MSHistoryRideShareItem__endWaypoint + 8);
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
    *(v11 + 16) = sub_1B6302B0C;
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

id sub_1B6302708(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint);
  v8 = *(v3 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint);
  v9 = *(v3 + OBJC_IVAR___MSHistoryRideShareItem__startWaypoint + 8);
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
    *(v11 + 16) = sub_1B6302AE8;
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

uint64_t type metadata accessor for HistoryRideShareItem(uint64_t a1)
{
  result = qword_1EB9432E0;
  if (!qword_1EB9432E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id HistorySearchItem.__allocating_init(geoMapRegion:language:locationDisplay:query:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v15 = objc_allocWithZone(v9);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB0F2A8;
  if (a2 >> 60 == 15)
  {
    v17 = 0;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1B629119C(a1, a2);
    v17 = sub_1B63BE904();
    sub_1B6284F64(a1, a2);
    if (a4)
    {
LABEL_5:
      v18 = sub_1B63BEBC4();

      if (a6)
      {
        goto LABEL_6;
      }

LABEL_10:
      v19 = 0;
      if (a8)
      {
        goto LABEL_7;
      }

LABEL_11:
      v20 = 0;
      goto LABEL_12;
    }
  }

  v18 = 0;
  if (!a6)
  {
    goto LABEL_10;
  }

LABEL_6:
  v19 = sub_1B63BEBC4();

  if (!a8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v20 = sub_1B63BEBC4();

LABEL_12:
  v21 = [v15 initWithStore:v16 geoMapRegion:v17 language:v18 locationDisplay:v19 query:v20];
  sub_1B6284F64(a1, a2);

  return v21;
}

id HistorySearchItem.init(geoMapRegion:language:locationDisplay:query:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDB0F2A8;
  if (a2 >> 60 == 15)
  {
    v16 = 0;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1B629119C(a1, a2);
    v16 = sub_1B63BE904();
    sub_1B6284F64(a1, a2);
    if (a4)
    {
LABEL_5:
      v17 = sub_1B63BEBC4();

      if (a6)
      {
        goto LABEL_6;
      }

LABEL_10:
      v18 = 0;
      if (a8)
      {
        goto LABEL_7;
      }

LABEL_11:
      v19 = 0;
      goto LABEL_12;
    }
  }

  v17 = 0;
  if (!a6)
  {
    goto LABEL_10;
  }

LABEL_6:
  v18 = sub_1B63BEBC4();

  if (!a8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v19 = sub_1B63BEBC4();

LABEL_12:
  v20 = [v9 initWithStore:v15 geoMapRegion:v16 language:v17 locationDisplay:v18 query:v19];
  sub_1B6284F64(a1, a2);

  return v20;
}

char *HistorySearchItem.__allocating_init(store:geoMapRegion:language:locationDisplay:query:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = [objc_allocWithZone(v10) initWithStore_];
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v18 = *&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v19 = v16;
  [v18 lock];
  v20 = &v19[OBJC_IVAR___MSHistorySearchItem__geoMapRegion];
  v22 = *&v19[OBJC_IVAR___MSHistorySearchItem__geoMapRegion];
  v21 = *&v19[OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8];
  *v20 = a2;
  *(v20 + 1) = a3;
  sub_1B6291034(a2, a3);
  sub_1B6284F64(v22, v21);
  v23 = &v19[OBJC_IVAR___MSHistorySearchItem__language];
  *v23 = a4;
  *(v23 + 1) = a5;

  v24 = &v19[OBJC_IVAR___MSHistorySearchItem__locationDisplay];
  *v24 = a6;
  *(v24 + 1) = a7;

  v25 = &v19[OBJC_IVAR___MSHistorySearchItem__query];
  *v25 = a8;
  *(v25 + 1) = a9;

  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = a3;
  v26[4] = a4;
  v26[5] = a5;
  v26[6] = a6;
  v26[7] = a7;
  v26[8] = a8;
  v26[9] = a9;
  sub_1B6282B88();
  sub_1B6291034(a2, a3);
  if (sub_1B63BEF24())
  {
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1B6305828;
    *(v27 + 24) = v26;
    v28 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v29 = *&v19[v28];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v28] = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_1B629A8E8(0, v29[2] + 1, 1, v29);
      *&v19[v28] = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_1B629A8E8((v31 > 1), v32 + 1, 1, v29);
    }

    v29[2] = v32 + 1;
    v33 = &v29[2 * v32];
    v33[4] = sub_1B62B8188;
    v33[5] = v27;
    *&v19[v28] = v29;
    swift_endAccess();
  }

  [*&v16[v17] unlock];
  sub_1B6284F64(a2, a3);

  return v19;
}

char *HistorySearchItem.init(store:geoMapRegion:language:locationDisplay:query:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = [v10 initWithStore_];
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v18 = *&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v19 = v16;
  [v18 lock];
  v20 = &v19[OBJC_IVAR___MSHistorySearchItem__geoMapRegion];
  v22 = *&v19[OBJC_IVAR___MSHistorySearchItem__geoMapRegion];
  v21 = *&v19[OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8];
  *v20 = a2;
  *(v20 + 1) = a3;
  sub_1B6291034(a2, a3);
  sub_1B6284F64(v22, v21);
  v23 = &v19[OBJC_IVAR___MSHistorySearchItem__language];
  *v23 = a4;
  *(v23 + 1) = a5;

  v24 = &v19[OBJC_IVAR___MSHistorySearchItem__locationDisplay];
  *v24 = a6;
  *(v24 + 1) = a7;

  v25 = &v19[OBJC_IVAR___MSHistorySearchItem__query];
  *v25 = a8;
  *(v25 + 1) = a9;

  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = a3;
  v26[4] = a4;
  v26[5] = a5;
  v26[6] = a6;
  v26[7] = a7;
  v26[8] = a8;
  v26[9] = a9;
  sub_1B6282B88();
  sub_1B6291034(a2, a3);
  if (sub_1B63BEF24())
  {
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1B6306100;
    *(v27 + 24) = v26;
    v28 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v29 = *&v19[v28];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v28] = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_1B629A8E8(0, v29[2] + 1, 1, v29);
      *&v19[v28] = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_1B629A8E8((v31 > 1), v32 + 1, 1, v29);
    }

    v29[2] = v32 + 1;
    v33 = &v29[2 * v32];
    v33[4] = sub_1B62B9488;
    v33[5] = v27;
    *&v19[v28] = v29;
    swift_endAccess();
  }

  [*&v16[v17] unlock];
  sub_1B6284F64(a2, a3);

  return v19;
}

void sub_1B6303554(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for MapsSyncManagedHistorySearchItem();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = a2;
    if (a4 >> 60 == 15)
    {
      v17 = 0;
    }

    else
    {
      v17 = sub_1B63BE904();
    }

    [v15 setGeoMapRegion_];

    if (a6)
    {
      a6 = sub_1B63BEBC4();
    }

    [v15 setLanguage_];

    if (a8)
    {
      a8 = sub_1B63BEBC4();
    }

    [v15 setLocationDisplay_];

    if (a10)
    {
      v18 = sub_1B63BEBC4();
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    [v15 setQuery_];
  }
}

uint64_t sub_1B6303940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion);
  v7 = *(v3 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8);
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
  *(v19 + 16) = sub_1B6305860;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_14;
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
    v10 = sub_1B6305860;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6303D8C(uint64_t a1, unint64_t a2)
{
  sub_1B6305AF8(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B6303DD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B6291034(*a1, v2);
  sub_1B6305AF8(v1, v2);

  return sub_1B6284F64(v1, v2);
}

void sub_1B6303E30(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistorySearchItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 geoMapRegion]) != 0)
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

void sub_1B6303F54(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistorySearchItem();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1B63BE904();
    }

    v10 = v9;
    [v7 setGeoMapRegion_];
  }
}

uint64_t (*sub_1B6304014(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B6303940(a1, a2);
  a1[1] = v4;
  return sub_1B630405C;
}

uint64_t sub_1B630405C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {
    sub_1B6291034(v4, v3);
    sub_1B6305AF8(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B6305AF8(v4, v3);
  }

  return sub_1B6284F64(v2, v3);
}

uint64_t sub_1B63040EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSHistorySearchItem__language);
  v6 = *(v2 + OBJC_IVAR___MSHistorySearchItem__language + 8);
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
  *(v19 + 16) = sub_1B6305CC8;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_27_1;
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

    v15 = sub_1B6305CC8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6304490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistorySearchItem__language);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6305CF0;
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

uint64_t (*sub_1B6304648(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B63040EC(a1, a2);
  a1[1] = v4;
  return sub_1B6304690;
}

uint64_t sub_1B63046C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSHistorySearchItem__locationDisplay);
  v6 = *(v2 + OBJC_IVAR___MSHistorySearchItem__locationDisplay + 8);
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
  *(v19 + 16) = sub_1B6305D14;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_44_1;
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

    v15 = sub_1B6305D14;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B6304A64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistorySearchItem__locationDisplay);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6305D3C;
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

uint64_t (*sub_1B6304C1C(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B63046C0(a1, a2);
  a1[1] = v4;
  return sub_1B6304C64;
}

id sub_1B6304C94(void *a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1B6304D14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSHistorySearchItem__query);
  v6 = *(v2 + OBJC_IVAR___MSHistorySearchItem__query + 8);
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
  *(v19 + 16) = sub_1B6305D60;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_62_1;
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

    v15 = sub_1B6305D60;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B63050B8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

id sub_1B6305140(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistorySearchItem__query);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B6305D88;
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

void sub_1B63052F8(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v18];
  v7 = v18[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedHistorySearchItem();
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

void sub_1B630541C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedHistorySearchItem();
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

uint64_t (*sub_1B63054E0(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B6304D14(a1, a2);
  a1[1] = v4;
  return sub_1B6305528;
}

uint64_t sub_1B6305540(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

void *sub_1B63055C0(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MSHistorySearchItem__geoMapRegion] = xmmword_1B63C3E40;
  v10 = &v9[OBJC_IVAR___MSHistorySearchItem__language];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR___MSHistorySearchItem__locationDisplay];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v9[OBJC_IVAR___MSHistorySearchItem__query];
  *v12 = 0;
  *(v12 + 1) = 0;
  return sub_1B62F0450(a1, a2, a3, a4);
}

uint64_t sub_1B6305704()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion), *(v0 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8));
}

id HistorySearchItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistorySearchItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B630586C(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 position];
    *(v2 + OBJC_IVAR___MSHistoryItem__position) = v8;
    v9 = [v6 positionIndex];

    *(v2 + OBJC_IVAR___MSHistoryItem__positionIndex) = v9;
  }

  type metadata accessor for MapsSyncManagedHistorySearchItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v12 = a1;
    if (a2)
    {
      v13 = *(v2 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion);
      v14 = *(v2 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8);
      *(v2 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion) = xmmword_1B63C3E40;
      sub_1B6284F64(v13, v14);
    }

    else
    {
      v15 = [v11 geoMapRegion];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1B63BE924();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0xF000000000000000;
      }

      v20 = (v2 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion);
      v21 = *(v2 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion);
      v22 = *(v2 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8);
      *v20 = v17;
      v20[1] = v19;
      sub_1B6284F64(v21, v22);
      if ((a2 & 1) == 0)
      {
        v33 = [v11 language];
        if (v33)
        {
          v34 = v33;
          v35 = sub_1B63BEBD4();
          v37 = v36;
        }

        else
        {
          v35 = 0;
          v37 = 0;
        }

        v38 = (v2 + OBJC_IVAR___MSHistorySearchItem__language);
        *v38 = v35;
        v38[1] = v37;

        v39 = [v11 locationDisplay];
        if (v39)
        {
          v40 = v39;
          v24 = sub_1B63BEBD4();
          v25 = v41;

LABEL_13:
          v26 = (v2 + OBJC_IVAR___MSHistorySearchItem__locationDisplay);
          *v26 = v24;
          v26[1] = v25;

          if ((a2 & 1) != 0 || (v27 = [v11 query]) == 0)
          {

            v29 = 0;
            v31 = 0;
          }

          else
          {
            v28 = v27;
            v29 = sub_1B63BEBD4();
            v31 = v30;
          }

          v32 = (v2 + OBJC_IVAR___MSHistorySearchItem__query);
          *v32 = v29;
          v32[1] = v31;
        }

LABEL_12:
        v24 = 0;
        v25 = 0;
        goto LABEL_13;
      }
    }

    v23 = (v2 + OBJC_IVAR___MSHistorySearchItem__language);
    *v23 = 0;
    v23[1] = 0;

    goto LABEL_12;
  }

  return result;
}

id sub_1B6305AF8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion);
  v8 = *(v3 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion);
  v9 = *(v3 + OBJC_IVAR___MSHistorySearchItem__geoMapRegion + 8);
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
    *(v11 + 16) = sub_1B63060DC;
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

uint64_t keypath_set_72Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

id HistoryTransitItem.__allocating_init(muid:transitLineStorage:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  if (qword_1EDB0F2A0 != -1)
  {
    v14 = v8;
    swift_once();
    v8 = v14;
  }

  v9 = qword_1EDB0F2A8;
  if (a3 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v11 = v8;
    sub_1B629119C(a2, a3);
    v10 = sub_1B63BE904();
    sub_1B6284F64(a2, a3);
    v8 = v11;
  }

  v12 = [v8 initWithStore:v9 muid:a1 transitLineStorage:v10];
  sub_1B6284F64(a2, a3);

  return v12;
}

id HistoryTransitItem.init(muid:transitLineStorage:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDB0F2A8;
  if (a3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    sub_1B629119C(a2, a3);
    v9 = sub_1B63BE904();
    sub_1B6284F64(a2, a3);
  }

  v10 = [v4 initWithStore:v8 muid:a1 transitLineStorage:v9];
  sub_1B6284F64(a2, a3);

  return v10;
}

char *HistoryTransitItem.init(store:muid:transitLineStorage:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = a1;
  v10 = [v5 initWithStore_];
  v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v12 = *&v10[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v13 = v10;
  [v12 lock];
  *&v13[OBJC_IVAR___MSHistoryTransitItem__muid] = a2;
  v14 = &v13[OBJC_IVAR___MSHistoryTransitItem__transitLineStorage];
  v15 = *&v13[OBJC_IVAR___MSHistoryTransitItem__transitLineStorage];
  v16 = *&v13[OBJC_IVAR___MSHistoryTransitItem__transitLineStorage + 8];
  *v14 = a3;
  *(v14 + 1) = a4;
  sub_1B6291034(a3, a4);
  sub_1B6284F64(v15, v16);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  sub_1B6282B88();
  sub_1B6291034(a3, a4);
  if (sub_1B63BEF24())
  {
    v27 = v9;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1B63075D4;
    *(v18 + 24) = v17;
    v26 = v18;
    v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v20 = *&v13[v19];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v13[v19] = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1B629A8E8(0, v20[2] + 1, 1, v20);
      *&v13[v19] = v20;
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
    v24[5] = v26;
    *&v13[v19] = v20;
    swift_endAccess();

    v9 = v27;
  }

  else
  {
  }

  [*&v10[v11] unlock];
  sub_1B6284F64(a3, a4);

  return v13;
}

void sub_1B6306690(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  type metadata accessor for MapsSyncManagedHistoryTransitItem();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = a2;
    [v9 setMuid_];
    if (a5 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B63BE904();
    }

    v12 = v11;
    [v9 setTransitLineStorage_];
  }
}

uint64_t sub_1B630690C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSHistoryTransitItem__muid);
  [v1 unlock];
  return v2;
}

id sub_1B63069B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSHistoryTransitItem__muid) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B63075E0;
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

id sub_1B6306B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedHistoryTransitItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setMuid_];
  }

  return result;
}

id (*sub_1B6306BB8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSHistoryTransitItem__muid);
  [v3 unlock];
  *a1 = v4;
  return sub_1B6306C3C;
}

uint64_t sub_1B6306CE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage);
  v7 = *(v3 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage + 8);
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
  *(v19 + 16) = sub_1B63075E8;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_15;
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
    v10 = sub_1B63075E8;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6307130(uint64_t a1, unint64_t a2)
{
  sub_1B6307750(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B6307178(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B6291034(*a1, v2);
  sub_1B6307750(v1, v2);

  return sub_1B6284F64(v1, v2);
}

void sub_1B63071D4(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedHistoryTransitItem();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 transitLineStorage]) != 0)
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

void sub_1B63072F8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedHistoryTransitItem();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    if (a4 >> 60 == 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1B63BE904();
    }

    v10 = v9;
    [v7 setTransitLineStorage_];
  }
}

uint64_t (*sub_1B63073B8(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B6306CE4(a1, a2);
  a1[1] = v4;
  return sub_1B6307400;
}

uint64_t sub_1B6307400(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {
    sub_1B6291034(v4, v3);
    sub_1B6307750(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B6307750(v4, v3);
  }

  return sub_1B6284F64(v2, v3);
}

void *sub_1B6307478(void *a1, void *a2, int a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___MSHistoryTransitItem__muid] = 0;
  *&v9[OBJC_IVAR___MSHistoryTransitItem__transitLineStorage] = xmmword_1B63C3E40;
  return sub_1B62F0450(a1, a2, a3, a4);
}

id HistoryTransitItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryTransitItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B63075F4(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 position];
    *(v2 + OBJC_IVAR___MSHistoryItem__position) = v8;
    v9 = [v6 positionIndex];

    *(v2 + OBJC_IVAR___MSHistoryItem__positionIndex) = v9;
  }

  type metadata accessor for MapsSyncManagedHistoryTransitItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = result;
    v12 = a1;
    v13 = [v11 muid];
    *(v2 + OBJC_IVAR___MSHistoryTransitItem__muid) = v13;
    if ((a2 & 1) != 0 || (v14 = [v11 transitLineStorage]) == 0)
    {

      v16 = 0;
      v18 = 0xF000000000000000;
    }

    else
    {
      v15 = v14;
      v16 = sub_1B63BE924();
      v18 = v17;
    }

    v19 = (v2 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage);
    v20 = *(v2 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage);
    v21 = *(v2 + OBJC_IVAR___MSHistoryTransitItem__transitLineStorage + 8);
    *v19 = v16;
    v19[1] = v18;

    return sub_1B6284F64(v20, v21);
  }

  return result;
}