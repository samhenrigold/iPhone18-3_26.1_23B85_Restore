id sub_1B62B5E84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsTokenTTL) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62B86EC;
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

id (*sub_1B62B6020(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSAnonymousCredential__mapsTokenTTL);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62B60A4;
}

uint64_t sub_1B62B60D4(char *a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *&a1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v7 = a1;
  [v6 lock];
  v8 = *&v7[*a3];
  [*&a1[v5] unlock];

  return v8;
}

uint64_t sub_1B62B6158(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + *a1);
  [v3 unlock];
  return v4;
}

id sub_1B62B620C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSAnonymousCredential__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62B8710;
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

id sub_1B62B63A8(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedAnonymousCredential();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62B6418(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSAnonymousCredential__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62B649C;
}

char *sub_1B62B64C0()
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B63BF044())
  {
    sub_1B62B8F70(MEMORY[0x1E69E7CC0], &qword_1EB943170, &unk_1B63C3FF0, type metadata accessor for ReviewedPlace);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  v9 = v1;
  sub_1B629821C();
  v2 = *&v0[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v0;
  v4 = v0;
  v5 = v2;
  sub_1B6381A7C(inited, &v9, v4);

  swift_setDeallocating();
  swift_arrayDestroy();
  v6 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v6 lock];
  sub_1B62B88A0(v4);
  [v6 unlock];
  v7 = sub_1B62B7AA8(v9, sub_1B62903E4, sub_1B62E8480);

  return v7;
}

void sub_1B62B6650(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (!a1 && a2)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v13 = a3;
      v14 = a4;
      v15 = a2;
      v16 = sub_1B63BF044();
      a2 = v15;
      a4 = v14;
      a3 = v13;
      if (!v16)
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

    v17 = v7;
    type metadata accessor for MapsSyncManagedAnonymousCredential();
    v8 = swift_dynamicCastClass();
    if (v8 && (v9 = [v8 reviewedPlaces]) != 0)
    {
      v10 = v9;
      v11 = v5;
      sub_1B62B875C(v10, v6, v11);

      v12 = v11;
    }

    else
    {
      v12 = v17;
    }
  }
}

void sub_1B62B6788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B629E3F0(a1, v24);
  type metadata accessor for MapsSyncManagedReviewedPlace();
  if (swift_dynamicCast())
  {
    v4 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
    v5 = v24[5];
    v22 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad);
    v6 = objc_allocWithZone(type metadata accessor for ReviewedPlace(0));
    v6[OBJC_IVAR___MSReviewedPlace__hasUserReviewed] = 0;
    v7 = OBJC_IVAR___MSReviewedPlace__lastSuggestedReviewDate;
    v8 = sub_1B63BE994();
    v9 = *(*(v8 - 8) + 56);
    v9(&v6[v7], 1, 1, v8);
    *&v6[OBJC_IVAR___MSReviewedPlace__latitude] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__longitude] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__mapItemIdComparableRepresentation] = xmmword_1B63C3E40;
    v9(&v6[OBJC_IVAR___MSReviewedPlace__mapItemLastRefreshed], 1, 1, v8);
    *&v6[OBJC_IVAR___MSReviewedPlace__mapItemStorage] = xmmword_1B63C3E40;
    *&v6[OBJC_IVAR___MSReviewedPlace__muid] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__positionIndex] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__rating] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__resultProviderIdentifier] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount] = 0;
    *&v6[OBJC_IVAR___MSReviewedPlace__version] = 0;
    *&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
    v10 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
    v11 = objc_allocWithZone(MEMORY[0x1E696AD10]);
    v12 = v5;
    v13 = v4;
    *&v6[v10] = [v11 init];
    *&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
    v14 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
    v15 = type metadata accessor for MapsSyncHashing(0);
    (*(*(v15 - 8) + 56))(&v6[v14], 1, 1, v15);
    v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    v17 = sub_1B63BEA04();
    (*(*(v17 - 8) + 56))(&v6[v16], 1, 1, v17);
    v9(&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v8);
    v9(&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v8);
    *&v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v13;
    v6[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v22;
    v23.receiver = v6;
    v23.super_class = type metadata accessor for MapsSyncObject(0);
    v18 = v13;
    v19 = objc_msgSendSuper2(&v23, sel_init);
    v20 = [v12 objectID];
    v21 = *(v19 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v19 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v20;

    (*((*MEMORY[0x1E69E7D40] & *v19) + 0x218))(v12, v22, 1);
    sub_1B62CAA74(v24, v19);
  }
}

id sub_1B62B6D58(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v9 lock];
  v10 = OBJC_IVAR___MSAnonymousCredential__reviewedPlaceChanges;
  swift_beginAccess();
  v11 = *&v4[v10];
  v12 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v10] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1B62B1FCC(0, v11[2] + 1, 1, v11);
    *&v4[v10] = v11;
  }

  v15 = v11[2];
  v14 = v11[3];
  if (v15 >= v14 >> 1)
  {
    v11 = sub_1B62B1FCC((v14 > 1), v15 + 1, 1, v11);
  }

  v11[2] = v15 + 1;
  v16 = &v11[2 * v15];
  *(v16 + 32) = a2 & 1;
  v16[5] = v12;
  *&v4[v10] = v11;
  swift_endAccess();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = v12;
  v17[4] = a3;
  v17[5] = a4;
  sub_1B6282B88();
  v18 = v12;
  v19 = v4;

  if (sub_1B63BEF24())
  {
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1B62B9374;
    *(v20 + 24) = v17;
    v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v22 = *&v19[v21];

    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v21] = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_1B629A8E8(0, v22[2] + 1, 1, v22);
      *&v19[v21] = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1B629A8E8((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[2 * v25];
    v26[4] = sub_1B62B9488;
    v26[5] = v20;
    *&v19[v21] = v22;
    swift_endAccess();
  }

  return [v9 unlock];
}

uint64_t sub_1B62B6FC0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = a4;
  v12 = a2;

  v13 = v10;
  v14 = a4;
  sub_1B63821D8(inited, v12, a5, a6);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_1B62B70AC(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  if (!a1)
  {
    type metadata accessor for MapsSyncManagedAnonymousCredential();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      if (a2)
      {
        v8 = a2 & 0xFFFFFFFFFFFFFF8;
        if (a2 >> 62)
        {
          v18 = v7;
          v14 = sub_1B63BF044();
          v8 = a2 & 0xFFFFFFFFFFFFFF8;
          v15 = v14;
          v7 = v18;
          if (!v15)
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
          v9 = v7;
          v16 = a3;
          v12 = MEMORY[0x1B8C92830](0, a2);
        }

        else
        {
          if (!*(v8 + 16))
          {
            __break(1u);
            return;
          }

          v9 = v7;
          v10 = *(a2 + 32);
          v11 = a3;
          v12 = v10;
        }

        v17 = v12;
        type metadata accessor for MapsSyncManagedReviewedPlace();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          a4(v9, v13);
        }
      }
    }
  }
}

void *sub_1B62B71E4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B62B7240(a1, a2, v6, v5);
}

void *sub_1B62B7240(void *a1, void *a2, int a3, int a4)
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
  *&v4[OBJC_IVAR___MSAnonymousCredential__anonymousId] = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSAnonymousCredential__mapsToken] = xmmword_1B63C3E40;
  v12 = OBJC_IVAR___MSAnonymousCredential__mapsTokenCreatedAt;
  v13 = sub_1B63BE994();
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR___MSAnonymousCredential__mapsTokenTTL] = 0;
  *&v4[OBJC_IVAR___MSAnonymousCredential__positionIndex] = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___MSAnonymousCredential__reviewedPlaceChanges] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = v15;
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v18 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v20 = sub_1B63BEA04();
  v21 = *(*(v20 - 8) + 56);
  v22 = &v4[v19];
  v23 = v52;
  v21(v22, 1, 1, v20);
  v14(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v13);
  v14(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v13);
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
    v21(v33, 0, 1, v20);
    v34 = v47;
    sub_1B628C510(v33, v47, &unk_1EB943680, qword_1B63C4070);
    v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v34, &v32[v35], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v36 = v49;
    sub_1B628C510(v33, v49, &unk_1EB943680, qword_1B63C4070);
    v37 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v38 = swift_allocObject();
    sub_1B628A128(v36, v38 + v37, &unk_1EB943680, qword_1B63C4070);
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

    sub_1B6284EAC(v33, &unk_1EB943680, qword_1B63C4070);
  }

  return v28;
}

uint64_t sub_1B62B780C()
{
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSAnonymousCredential__anonymousId), *(v0 + OBJC_IVAR___MSAnonymousCredential__anonymousId + 8));
  sub_1B6284F64(*(v0 + OBJC_IVAR___MSAnonymousCredential__mapsToken), *(v0 + OBJC_IVAR___MSAnonymousCredential__mapsToken + 8));
  sub_1B6284EAC(v0 + OBJC_IVAR___MSAnonymousCredential__mapsTokenCreatedAt, &unk_1EB943210, &unk_1B63C3F50);
}

id AnonymousCredential.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnonymousCredential(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B62B7940(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for MapsSyncQueryPredicate();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_1B62B7AA8(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1B63BF044();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1B628B9E4(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void sub_1B62B7BB8(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42 - v9;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedAnonymousCredential();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = a1;
    if (a2)
    {
      v14 = *(v2 + OBJC_IVAR___MSAnonymousCredential__anonymousId);
      v15 = *(v2 + OBJC_IVAR___MSAnonymousCredential__anonymousId + 8);
      *(v2 + OBJC_IVAR___MSAnonymousCredential__anonymousId) = xmmword_1B63C3E40;
      sub_1B6284F64(v14, v15);
    }

    else
    {
      v16 = [v12 anonymousId];
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

      v21 = (v2 + OBJC_IVAR___MSAnonymousCredential__anonymousId);
      v22 = *(v2 + OBJC_IVAR___MSAnonymousCredential__anonymousId);
      v23 = *(v2 + OBJC_IVAR___MSAnonymousCredential__anonymousId + 8);
      *v21 = v18;
      v21[1] = v20;
      sub_1B6284F64(v22, v23);
      if ((a2 & 1) == 0)
      {
        v27 = [v12 mapsToken];
        if (v27)
        {
          v28 = v27;
          v29 = sub_1B63BE924();
          v31 = v30;
        }

        else
        {
          v29 = 0;
          v31 = 0xF000000000000000;
        }

        v32 = (v2 + OBJC_IVAR___MSAnonymousCredential__mapsToken);
        v33 = *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsToken);
        v34 = *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsToken + 8);
        *v32 = v29;
        v32[1] = v31;
        sub_1B6284F64(v33, v34);
        v35 = [v12 mapsTokenCreatedAt];
        if (v35)
        {
          v36 = v35;
          sub_1B63BE974();

          v37 = sub_1B63BE994();
          (*(*(v37 - 8) + 56))(v8, 0, 1, v37);
        }

        else
        {
          v38 = sub_1B63BE994();
          (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
        }

        sub_1B628A128(v8, v10, &unk_1EB943210, &unk_1B63C3F50);
        goto LABEL_16;
      }
    }

    v24 = *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsToken);
    v25 = *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsToken + 8);
    *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsToken) = xmmword_1B63C3E40;
    sub_1B6284F64(v24, v25);
    v26 = sub_1B63BE994();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
LABEL_16:
    v39 = OBJC_IVAR___MSAnonymousCredential__mapsTokenCreatedAt;
    swift_beginAccess();
    sub_1B6282DFC(v10, v2 + v39, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v40 = [v12 mapsTokenTTL];
    *(v2 + OBJC_IVAR___MSAnonymousCredential__mapsTokenTTL) = v40;
    v41 = [v12 positionIndex];

    *(v2 + OBJC_IVAR___MSAnonymousCredential__positionIndex) = v41;
  }
}

id sub_1B62B7F34(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v27 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - v16;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDB0F2A8;
  if (a2 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    sub_1B629119C(a1, a2);
    v19 = sub_1B63BE904();
    sub_1B6284F64(a1, a2);
  }

  if (a4 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    sub_1B629119C(a3, a4);
    v20 = sub_1B63BE904();
    sub_1B6284F64(a3, a4);
  }

  sub_1B628C510(a5, v17, &unk_1EB943210, &unk_1B63C3F50);
  v21 = sub_1B63BE994();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v17, 1, v21) != 1)
  {
    v23 = sub_1B63BE954();
    (*(v22 + 8))(v17, v21);
  }

  v24 = [v8 initWithStore:v18 anonymousId:v19 mapsToken:v20 mapsTokenCreatedAt:v23 mapsTokenTTL:a6 positionIndex:v27];

  sub_1B6284EAC(a5, &unk_1EB943210, &unk_1B63C3F50);
  return v24;
}

void sub_1B62B8190(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B62B3BA0(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1B62B828C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSAnonymousCredential__anonymousId);
  v8 = *(v3 + OBJC_IVAR___MSAnonymousCredential__anonymousId);
  v9 = *(v3 + OBJC_IVAR___MSAnonymousCredential__anonymousId + 8);
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
    *(v11 + 16) = sub_1B62B9444;
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

id sub_1B62B8484(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSAnonymousCredential__mapsToken);
  v8 = *(v3 + OBJC_IVAR___MSAnonymousCredential__mapsToken);
  v9 = *(v3 + OBJC_IVAR___MSAnonymousCredential__mapsToken + 8);
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
    *(v11 + 16) = sub_1B62B93D8;
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

void sub_1B62B8660(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B62B5B54(a1, a2, v6);
}

uint64_t sub_1B62B875C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B63BE844();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B63BEEC4();
  sub_1B62B9380();
  while (1)
  {
    sub_1B63BEF64();
    if (!v13)
    {
      break;
    }

    sub_1B628E928(&v12, v11);
    sub_1B62B6788(v11, a2, a3);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
      return (*(v7 + 8))(v9, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B62B88A0(uint64_t a1)
{
  v2 = OBJC_IVAR___MSAnonymousCredential__reviewedPlaceChanges;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v9 = *v6;
      if (*(v6 - 1))
      {
        v7 = v9;
        v8 = sub_1B62CBFBC(v7);
      }

      else
      {
        sub_1B62CAA74(&v10, v9);
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t type metadata accessor for AnonymousCredential(uint64_t a1)
{
  result = qword_1EB943138;
  if (!qword_1EB943138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id keypath_get_65Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  [*(*a1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  v7 = *(v5 + *a2);
  result = [*(v5 + v6) unlock];
  *a3 = v7;
  return result;
}

void sub_1B62B8A18(uint64_t a1)
{
  sub_1B628CC34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B62B8F70(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = sub_1B63BF044();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = sub_1B63BF104();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_1B63BF044();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E69E7CD0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = v6 + 56;
  v44 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v41 = v4;
    while (1)
    {
      v14 = MEMORY[0x1B8C92830](v13, v4);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = sub_1B63BEF14();
      v18 = -1 << *(v6 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v12 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        a4(0);
        while (1)
        {
          v24 = *(*(v6 + 48) + 8 * v19);
          v25 = sub_1B63BEF24();

          if (v25)
          {
            break;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v12 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          if (((1 << v19) & v21) == 0)
          {
            v8 = v44;
            v4 = v41;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v44;
        v4 = v41;
        if (v13 == v44)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v12 + 8 * v20) = v22 | v21;
        *(*(v6 + 48) + 8 * v19) = v16;
        v26 = *(v6 + 16);
        v15 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v27;
        if (v13 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v28 = 0;
    v42 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v28 != v42)
    {
      v29 = *(v4 + 32 + 8 * v28);
      v30 = sub_1B63BEF14();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *(v12 + 8 * (v32 >> 6));
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        a4(0);
        while (1)
        {
          v37 = *(*(v6 + 48) + 8 * v32);
          v38 = sub_1B63BEF24();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *(v12 + 8 * (v32 >> 6));
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v12 + 8 * v33) = v35 | v34;
        *(*(v6 + 48) + 8 * v32) = v29;
        v39 = *(v6 + 16);
        v15 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v40;
      }

      if (++v28 == v44)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t objectdestroy_40Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = a3(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v7, 1, v9))
  {
    (*(v10 + 8))(v3 + v7, v9);
  }

  return MEMORY[0x1EEE6BDD0](v3, v7 + v8, v6 | 7);
}

unint64_t sub_1B62B9380()
{
  result = qword_1EDB0E8D0;
  if (!qword_1EDB0E8D0)
  {
    sub_1B63BE844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB0E8D0);
  }

  return result;
}

uint64_t objectdestroy_130Tm()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1B628BAC0(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id CachedCuratedCollection.__allocating_init(collectionDescription:curatedCollectionIdentifier:image:imageUrl:isTombstone:lastFetchedDate:lastSignificantChangeDate:placesCount:positionIndex:publisherAttribution:resultProviderIdentifier:title:titleLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v55 = a8;
  v56 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v48 - v29;
  v53 = objc_allocWithZone(v20);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDB0F2A8;
  if (a2)
  {
    v51 = sub_1B63BEBC4();
  }

  else
  {
    v51 = 0;
  }

  if (a5 >> 60 == 15)
  {
    v50 = 0;
  }

  else
  {
    sub_1B629119C(a4, a5);
    v50 = sub_1B63BE904();
    sub_1B6284F64(a4, a5);
  }

  v57 = a4;
  v58 = a10;
  if (a7)
  {
    v49 = sub_1B63BEBC4();
  }

  else
  {
    v49 = 0;
  }

  v54 = a9;
  sub_1B628C510(a9, v30, &unk_1EB943210, &unk_1B63C3F50);
  v31 = sub_1B63BE994();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = 0;
  if (v33(v30, 1, v31) != 1)
  {
    v34 = sub_1B63BE954();
    (*(v32 + 8))(v30, v31);
  }

  sub_1B628C510(v58, v28, &unk_1EB943210, &unk_1B63C3F50);
  if (v33(v28, 1, v31) == 1)
  {
    v35 = 0;
    v36 = a17;
    if (a14)
    {
LABEL_16:
      v37 = sub_1B63BEBC4();

      goto LABEL_19;
    }
  }

  else
  {
    v35 = sub_1B63BE954();
    (*(v32 + 8))(v28, v31);
    v36 = a17;
    if (a14)
    {
      goto LABEL_16;
    }
  }

  v37 = 0;
LABEL_19:
  v38 = a5;
  if (v36)
  {
    v39 = sub_1B63BEBC4();
  }

  else
  {
    v39 = 0;
  }

  if (a19)
  {
    v40 = sub_1B63BEBC4();
  }

  else
  {
    v40 = 0;
  }

  LODWORD(v47) = a15;
  LODWORD(v46) = a11;
  v42 = v50;
  v41 = v51;
  v43 = v49;
  v44 = [v53 initWithStore:v52 collectionDescription:v51 curatedCollectionIdentifier:v56 image:v50 imageUrl:v49 isTombstone:v55 & 1 lastFetchedDate:v34 lastSignificantChangeDate:v35 placesCount:v46 positionIndex:a12 publisherAttribution:v37 resultProviderIdentifier:v47 title:v39 titleLocale:v40];

  sub_1B6284F64(v57, v38);
  sub_1B6284EAC(v58, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v54, &unk_1EB943210, &unk_1B63C3F50);
  return v44;
}

id CachedCuratedCollection.init(collectionDescription:curatedCollectionIdentifier:image:imageUrl:isTombstone:lastFetchedDate:lastSignificantChangeDate:placesCount:positionIndex:publisherAttribution:resultProviderIdentifier:title:titleLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = sub_1B62C120C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
  sub_1B6284F64(a4, a5);
  return v21;
}

char *CachedCuratedCollection.__allocating_init(store:collectionDescription:curatedCollectionIdentifier:image:imageUrl:isTombstone:lastFetchedDate:lastSignificantChangeDate:placesCount:positionIndex:publisherAttribution:resultProviderIdentifier:title:titleLocale:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  v95 = a8;
  v88 = a7;
  v96 = a5;
  v97 = a6;
  v89 = a4;
  v98 = a3;
  v90 = a2;
  v111 = a11;
  v112 = a10;
  v109 = a19;
  v100 = a18;
  v101 = a20;
  v108 = a16;
  v99 = a15;
  v105 = a14;
  v106 = a13;
  v107 = a17;
  v104 = a12;
  v87 = a9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v92 = *(v26 - 8);
  v27 = *(v92 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v103 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v102 = &v85 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v85 - v31;
  v33 = objc_allocWithZone(v21);
  v94 = a1;
  v34 = [v33 initWithStore_];
  v35 = *&v34[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v36 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v110 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v37 = v34;
  v91 = v34;
  v38 = v37;
  [v35 lock];
  v93 = *&v34[v36];
  v39 = &v38[OBJC_IVAR___MSCachedCuratedCollection__collectionDescription];
  v40 = v98;
  *v39 = a2;
  *(v39 + 1) = v40;

  *&v38[OBJC_IVAR___MSCachedCuratedCollection__curatedCollectionIdentifier] = a4;
  v41 = &v38[OBJC_IVAR___MSCachedCuratedCollection__image];
  v43 = *&v38[OBJC_IVAR___MSCachedCuratedCollection__image];
  v42 = *&v38[OBJC_IVAR___MSCachedCuratedCollection__image + 8];
  v44 = v96;
  v45 = v97;
  *v41 = v96;
  v41[1] = v45;
  sub_1B6291034(v44, v45);
  sub_1B6284F64(v43, v42);
  v46 = &v38[OBJC_IVAR___MSCachedCuratedCollection__imageUrl];
  v47 = v95;
  *v46 = a7;
  *(v46 + 1) = v47;

  v38[OBJC_IVAR___MSCachedCuratedCollection__isTombstone] = a9;
  v48 = v112;
  sub_1B628C510(v112, v32, &unk_1EB943210, &unk_1B63C3F50);
  v49 = OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate;
  swift_beginAccess();
  sub_1B6282DFC(v32, &v38[v49], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v50 = v111;
  sub_1B628C510(v111, v32, &unk_1EB943210, &unk_1B63C3F50);
  v51 = OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate;
  swift_beginAccess();
  sub_1B6282DFC(v32, &v38[v51], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  *&v38[OBJC_IVAR___MSCachedCuratedCollection__placesCount] = v104;
  v52 = v105;
  *&v38[OBJC_IVAR___MSCachedCuratedCollection__positionIndex] = v106;
  v53 = &v38[OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution];
  v54 = v99;
  *v53 = v52;
  v53[1] = v54;

  *&v38[OBJC_IVAR___MSCachedCuratedCollection__resultProviderIdentifier] = v108;
  v55 = &v38[OBJC_IVAR___MSCachedCuratedCollection__title];
  v56 = v100;
  *v55 = v107;
  v55[1] = v56;

  v57 = &v38[OBJC_IVAR___MSCachedCuratedCollection__titleLocale];
  v58 = v101;
  *v57 = v109;
  v57[1] = v58;

  sub_1B628C510(v48, v102, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v50, v103, &unk_1EB943210, &unk_1B63C3F50);
  v59 = *(v92 + 80);
  v60 = (v59 + 73) & ~v59;
  v61 = (v27 + v59 + v60) & ~v59;
  v92 = (v27 + v61 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v86 = (v92 + 11) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 19) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 11) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v67 = v97;
  v66 = v98;
  *(v65 + 16) = v90;
  *(v65 + 24) = v66;
  v68 = v96;
  *(v65 + 32) = v89;
  *(v65 + 40) = v68;
  v69 = v88;
  *(v65 + 48) = v67;
  *(v65 + 56) = v69;
  *(v65 + 64) = v95;
  *(v65 + 72) = v87;
  sub_1B628A128(v102, v65 + v60, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628A128(v103, v65 + v61, &unk_1EB943210, &unk_1B63C3F50);
  *(v65 + v92) = v104;
  *(v65 + v86) = v106;
  v70 = (v65 + v62);
  v71 = v91;
  v72 = v99;
  *v70 = v105;
  v70[1] = v72;
  *(v65 + v63) = v108;
  v73 = (v65 + v64);
  v74 = v100;
  *v73 = v107;
  v73[1] = v74;
  v75 = (v65 + v85);
  v76 = v101;
  *v75 = v109;
  v75[1] = v76;
  sub_1B6282B88();
  sub_1B6291034(v68, v67);
  if (sub_1B63BEF24())
  {
    v77 = swift_allocObject();
    *(v77 + 16) = sub_1B62C15E4;
    *(v77 + 24) = v65;
    v78 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v79 = *&v38[v78];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38[v78] = v79;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v79 = sub_1B629A8E8(0, v79[2] + 1, 1, v79);
      *&v38[v78] = v79;
    }

    v82 = v79[2];
    v81 = v79[3];
    if (v82 >= v81 >> 1)
    {
      v79 = sub_1B629A8E8((v81 > 1), v82 + 1, 1, v79);
    }

    v79[2] = v82 + 1;
    v83 = &v79[2 * v82];
    v83[4] = sub_1B62B8188;
    v83[5] = v77;
    *&v38[v78] = v79;
    swift_endAccess();
  }

  [*&v71[v110] unlock];

  sub_1B6284F64(v68, v67);
  sub_1B6284EAC(v111, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v112, &unk_1EB943210, &unk_1B63C3F50);

  return v38;
}

char *CachedCuratedCollection.init(store:collectionDescription:curatedCollectionIdentifier:image:imageUrl:isTombstone:lastFetchedDate:lastSignificantChangeDate:placesCount:positionIndex:publisherAttribution:resultProviderIdentifier:title:titleLocale:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  v93 = a8;
  v86 = a7;
  v94 = a5;
  v95 = a6;
  v87 = a4;
  v97 = a3;
  v88 = a2;
  v109 = a11;
  v110 = a10;
  v107 = a19;
  v98 = a18;
  v99 = a20;
  v106 = a16;
  v96 = a15;
  v103 = a14;
  v104 = a13;
  v105 = a17;
  v102 = a12;
  v85 = a9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v89 = *(v26 - 8);
  v27 = *(v89 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v101 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v100 = &v83 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v83 - v31;
  v92 = a1;
  v33 = [v21 initWithStore_];
  v34 = *&v33[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v35 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v108 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v36 = v33;
  v90 = v33;
  v37 = v36;
  [v34 lock];
  v91 = *&v33[v35];
  v38 = &v37[OBJC_IVAR___MSCachedCuratedCollection__collectionDescription];
  v39 = v97;
  *v38 = a2;
  *(v38 + 1) = v39;

  *&v37[OBJC_IVAR___MSCachedCuratedCollection__curatedCollectionIdentifier] = a4;
  v40 = &v37[OBJC_IVAR___MSCachedCuratedCollection__image];
  v42 = *&v37[OBJC_IVAR___MSCachedCuratedCollection__image];
  v41 = *&v37[OBJC_IVAR___MSCachedCuratedCollection__image + 8];
  v43 = v94;
  v44 = v95;
  *v40 = v94;
  v40[1] = v44;
  sub_1B6291034(v43, v44);
  sub_1B6284F64(v42, v41);
  v45 = &v37[OBJC_IVAR___MSCachedCuratedCollection__imageUrl];
  v46 = v93;
  *v45 = a7;
  *(v45 + 1) = v46;

  v37[OBJC_IVAR___MSCachedCuratedCollection__isTombstone] = a9;
  v47 = v110;
  sub_1B628C510(v110, v32, &unk_1EB943210, &unk_1B63C3F50);
  v48 = OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate;
  swift_beginAccess();
  sub_1B6282DFC(v32, &v37[v48], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v49 = v109;
  sub_1B628C510(v109, v32, &unk_1EB943210, &unk_1B63C3F50);
  v50 = OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate;
  swift_beginAccess();
  sub_1B6282DFC(v32, &v37[v50], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  *&v37[OBJC_IVAR___MSCachedCuratedCollection__placesCount] = v102;
  v51 = v103;
  *&v37[OBJC_IVAR___MSCachedCuratedCollection__positionIndex] = v104;
  v52 = &v37[OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution];
  v53 = v96;
  *v52 = v51;
  v52[1] = v53;

  *&v37[OBJC_IVAR___MSCachedCuratedCollection__resultProviderIdentifier] = v106;
  v54 = &v37[OBJC_IVAR___MSCachedCuratedCollection__title];
  v55 = v98;
  *v54 = v105;
  v54[1] = v55;

  v56 = &v37[OBJC_IVAR___MSCachedCuratedCollection__titleLocale];
  v57 = v99;
  *v56 = v107;
  v56[1] = v57;

  sub_1B628C510(v47, v100, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v49, v101, &unk_1EB943210, &unk_1B63C3F50);
  v58 = *(v89 + 80);
  v59 = (v58 + 73) & ~v58;
  v60 = (v27 + v58 + v59) & ~v58;
  v89 = (v27 + v60 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v84 = (v89 + 11) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v61 + 19) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v83 + 11) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v64 = v97;
  *(v63 + 16) = v88;
  *(v63 + 24) = v64;
  v66 = v94;
  v65 = v95;
  *(v63 + 32) = v87;
  *(v63 + 40) = v66;
  v67 = v86;
  *(v63 + 48) = v65;
  *(v63 + 56) = v67;
  *(v63 + 64) = v93;
  *(v63 + 72) = v85;
  sub_1B628A128(v100, v63 + v59, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628A128(v101, v63 + v60, &unk_1EB943210, &unk_1B63C3F50);
  *(v63 + v89) = v102;
  *(v63 + v84) = v104;
  v68 = (v63 + v61);
  v69 = v90;
  v70 = v96;
  *v68 = v103;
  v68[1] = v70;
  *(v63 + v83) = v106;
  v71 = (v63 + v62);
  v72 = v98;
  *v71 = v105;
  v71[1] = v72;
  v73 = (v63 + ((v62 + 23) & 0xFFFFFFFFFFFFFFF8));
  v74 = v99;
  *v73 = v107;
  v73[1] = v74;
  sub_1B6282B88();
  sub_1B6291034(v66, v65);
  if (sub_1B63BEF24())
  {
    v75 = swift_allocObject();
    *(v75 + 16) = sub_1B62C2748;
    *(v75 + 24) = v63;
    v76 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v77 = *&v37[v76];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v37[v76] = v77;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v77 = sub_1B629A8E8(0, v77[2] + 1, 1, v77);
      *&v37[v76] = v77;
    }

    v80 = v77[2];
    v79 = v77[3];
    if (v80 >= v79 >> 1)
    {
      v77 = sub_1B629A8E8((v79 > 1), v80 + 1, 1, v77);
    }

    v77[2] = v80 + 1;
    v81 = &v77[2 * v80];
    v81[4] = sub_1B62B9488;
    v81[5] = v75;
    *&v37[v76] = v77;
    swift_endAccess();
  }

  [*&v69[v108] unlock];

  sub_1B6284F64(v66, v65);
  sub_1B6284EAC(v109, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v110, &unk_1EB943210, &unk_1B63C3F50);

  return v37;
}

void sub_1B62BA9D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v46 - v29;
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  v31 = swift_dynamicCastClass();
  if (v31)
  {
    v32 = v31;
    v49 = a2;
    v33 = a2;
    if (a4)
    {
      v34 = sub_1B63BEBC4();
    }

    else
    {
      v34 = 0;
    }

    [v32 setCollectionDescription_];

    [v32 setCuratedCollectionIdentifier_];
    if (a7 >> 60 == 15)
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_1B63BE904();
    }

    [v32 setImage_];

    if (a9)
    {
      v36 = sub_1B63BEBC4();
    }

    else
    {
      v36 = 0;
    }

    v48 = a14;
    v47 = a13;
    [v32 setImageUrl_];

    [v32 setIsTombstone_];
    sub_1B628C510(a11, v30, &unk_1EB943210, &unk_1B63C3F50);
    v37 = sub_1B63BE994();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    v40 = 0;
    if (v39(v30, 1, v37) != 1)
    {
      v40 = sub_1B63BE954();
      (*(v38 + 8))(v30, v37);
    }

    [v32 setLastFetchedDate_];

    sub_1B628C510(v46, v28, &unk_1EB943210, &unk_1B63C3F50);
    if (v39(v28, 1, v37) == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = sub_1B63BE954();
      (*(v38 + 8))(v28, v37);
    }

    [v32 setLastSignificantChangeDate_];

    [v32 setPlacesCount_];
    [v32 setPositionIndex_];
    if (a16)
    {
      v42 = sub_1B63BEBC4();
    }

    else
    {
      v42 = 0;
    }

    [v32 setPublisherAttribution_];

    [v32 setResultProviderIdentifier_];
    if (a19)
    {
      v43 = sub_1B63BEBC4();
    }

    else
    {
      v43 = 0;
    }

    [v32 setTitle_];

    if (a21)
    {
      v44 = sub_1B63BEBC4();
    }

    else
    {
      v44 = 0;
    }

    v45 = v49;
    [v32 setTitleLocale_];
  }
}

uint64_t sub_1B62BB1B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__collectionDescription);
  v6 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__collectionDescription + 8);
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
  *(v19 + 16) = sub_1B62C172C;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_1;
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

    v15 = sub_1B62C172C;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62BB55C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedCuratedCollection__collectionDescription);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C1754;
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

uint64_t (*sub_1B62BB714(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62BB1B8(a1, a2);
  a1[1] = v4;
  return sub_1B62BB75C;
}

id sub_1B62BB7E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCachedCuratedCollection__curatedCollectionIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62C1778;
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

id (*sub_1B62BB97C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedCuratedCollection__curatedCollectionIdentifier);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62BBA00;
}

uint64_t sub_1B62BBAA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSCachedCuratedCollection__image);
  v7 = *(v3 + OBJC_IVAR___MSCachedCuratedCollection__image + 8);
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
  *(v19 + 16) = sub_1B62C179C;
  *(v19 + 24) = v11;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_41;
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
    v10 = sub_1B62C179C;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B62BBEF4(uint64_t a1, unint64_t a2)
{
  sub_1B62C17A8(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62BBF3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B6291034(*a1, v2);
  sub_1B62C17A8(v1, v2);

  return sub_1B6284F64(v1, v2);
}

void sub_1B62BBF98(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCachedCuratedCollection();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 image]) != 0)
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

void sub_1B62BC0BC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
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
    [v7 setImage_];
  }
}

uint64_t (*sub_1B62BC17C(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B62BBAA8(a1, a2);
  a1[1] = v4;
  return sub_1B62BC1C4;
}

uint64_t sub_1B62BC1C4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {
    sub_1B6291034(v4, v3);
    sub_1B62C17A8(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B62C17A8(v4, v3);
  }

  return sub_1B6284F64(v2, v3);
}

uint64_t sub_1B62BC254(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__imageUrl);
  v6 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__imageUrl + 8);
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
  *(v19 + 16) = sub_1B62C1978;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_51;
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

    v15 = sub_1B62C1978;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62BC5F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedCuratedCollection__imageUrl);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C19A0;
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

uint64_t (*sub_1B62BC7B0(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62BC254(a1, a2);
  a1[1] = v4;
  return sub_1B62BC7F8;
}

uint64_t sub_1B62BC880()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCachedCuratedCollection__isTombstone);
  [v1 unlock];
  return v2;
}

id sub_1B62BC92C(char a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCachedCuratedCollection__isTombstone) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62C19C4;
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

id sub_1B62BCAC8(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setIsTombstone_];
  }

  return result;
}

id (*sub_1B62BCB2C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedCuratedCollection__isTombstone);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62BCBB0;
}

uint64_t sub_1B62BCBF0@<X0>(char *a2@<X8>)
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
  v13 = OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate;
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
  *(v26 + 16) = sub_1B62C19CC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_76;
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

uint64_t sub_1B62BD0F0(uint64_t a1)
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
  v12 = OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate;
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
    *(v15 + 16) = sub_1B62C19F4;
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

void (*sub_1B62BD3C0(void *a1))(uint64_t a1, uint64_t a2)
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
  sub_1B62BCBF0(v4);
  return sub_1B62BD47C;
}

id sub_1B62BD4AC(void *a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_1B62BD5DC@<X0>(char *a2@<X8>)
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
  v13 = OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate;
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
  *(v26 + 16) = sub_1B62C1A00;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_93;
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

void sub_1B62BDADC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
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

uint64_t sub_1B62BDBF8(uint64_t a1)
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
  v12 = OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate;
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
    *(v15 + 16) = sub_1B62C1A28;
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

uint64_t sub_1B62BDEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1B628C510(a1, &v11 - v8, &unk_1EB943210, &unk_1B63C3F50);
  return a5(v9);
}

void sub_1B62BDF7C(void *a1, uint64_t a2, _BYTE *a3, SEL *a4)
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
    type metadata accessor for MapsSyncManagedCachedCuratedCollection();
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

void sub_1B62BE1B4(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
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

void (*sub_1B62BE320(void *a1))(uint64_t a1, uint64_t a2)
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
  sub_1B62BD5DC(v4);
  return sub_1B62BE3DC;
}

void sub_1B62BE3F4(uint64_t a1, char a2, void (*a3)(void *))
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

id sub_1B62BE508(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCachedCuratedCollection__placesCount) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62C1ABC;
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

id (*sub_1B62BE6A4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedCuratedCollection__placesCount);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62BE728;
}

id sub_1B62BE7BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCachedCuratedCollection__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62C1AE0;
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

id sub_1B62BE958(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

id (*sub_1B62BE9C8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedCuratedCollection__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62BEA4C;
}

uint64_t sub_1B62BEA88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution);
  v6 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution + 8);
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
  *(v19 + 16) = sub_1B62C1B04;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_125;
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

    v15 = sub_1B62C1B04;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62BEE2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C1B2C;
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

uint64_t (*sub_1B62BEFE4(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62BEA88(a1, a2);
  a1[1] = v4;
  return sub_1B62BF02C;
}

uint64_t sub_1B62BF050(char *a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *&a1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v7 = a1;
  [v6 lock];
  v8 = *&v7[*a3];
  [*&a1[v5] unlock];

  return v8;
}

uint64_t sub_1B62BF0D4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + *a1);
  [v3 unlock];
  return v4;
}

id sub_1B62BF188(int a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCachedCuratedCollection__resultProviderIdentifier) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62C1B50;
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

id (*sub_1B62BF324(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCachedCuratedCollection__resultProviderIdentifier);
  [v3 unlock];
  *(a1 + 8) = v4;
  return sub_1B62BF3A8;
}

uint64_t sub_1B62BF3E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__title);
  v6 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__title + 8);
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
  *(v19 + 16) = sub_1B62C1B74;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_151;
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

    v15 = sub_1B62C1B74;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62BF78C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedCuratedCollection__title);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C1B9C;
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

uint64_t (*sub_1B62BF944(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62BF3E8(a1, a2);
  a1[1] = v4;
  return sub_1B62BF98C;
}

id sub_1B62BF9BC(void *a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1B62BFA3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__titleLocale);
  v6 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__titleLocale + 8);
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
  *(v19 + 16) = sub_1B62C1BC0;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_169;
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

    v15 = sub_1B62C1BC0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62BFDE0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

id sub_1B62BFE68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedCuratedCollection__titleLocale);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C1BE8;
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

void sub_1B62C0020(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v18];
  v7 = v18[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedCachedCuratedCollection();
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

void sub_1B62C0144(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
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

uint64_t (*sub_1B62C0208(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62BFA3C(a1, a2);
  a1[1] = v4;
  return sub_1B62C0250;
}

uint64_t sub_1B62C0268(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

void *sub_1B62C02E8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B62C0344(a1, a2, v6, v5);
}

void *sub_1B62C0344(void *a1, void *a2, int a3, int a4)
{
  v53 = a4;
  v54 = a3;
  v55 = a2;
  v56 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v49 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v10;
  v11 = &v4[OBJC_IVAR___MSCachedCuratedCollection__collectionDescription];
  *v11 = 0;
  v11[1] = 0;
  *&v4[OBJC_IVAR___MSCachedCuratedCollection__curatedCollectionIdentifier] = 0;
  *&v4[OBJC_IVAR___MSCachedCuratedCollection__image] = xmmword_1B63C3E40;
  v12 = &v4[OBJC_IVAR___MSCachedCuratedCollection__imageUrl];
  *v12 = 0;
  v12[1] = 0;
  v4[OBJC_IVAR___MSCachedCuratedCollection__isTombstone] = 0;
  v13 = OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate;
  v14 = sub_1B63BE994();
  v15 = *(*(v14 - 8) + 56);
  v15(&v4[v13], 1, 1, v14);
  v15(&v4[OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate], 1, 1, v14);
  *&v4[OBJC_IVAR___MSCachedCuratedCollection__placesCount] = 0;
  *&v4[OBJC_IVAR___MSCachedCuratedCollection__positionIndex] = 0;
  v16 = &v4[OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution];
  *v16 = 0;
  v16[1] = 0;
  *&v4[OBJC_IVAR___MSCachedCuratedCollection__resultProviderIdentifier] = 0;
  v17 = &v4[OBJC_IVAR___MSCachedCuratedCollection__title];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR___MSCachedCuratedCollection__titleLocale];
  *v18 = 0;
  v18[1] = 0;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId] = 0;
  v19 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks] = MEMORY[0x1E69E7CC0];
  v20 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  v21 = type metadata accessor for MapsSyncHashing(0);
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v23 = sub_1B63BEA04();
  v24 = *(*(v23 - 8) + 56);
  v24(&v4[v22], 1, 1, v23);
  v15(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime], 1, 1, v14);
  v15(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v14);
  v25 = v54;
  v26 = v55;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = v55;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v25;
  v27 = type metadata accessor for MapsSyncObject(0);
  v57.receiver = v4;
  v57.super_class = v27;
  v28 = v56;
  v29 = v26;
  v30 = objc_msgSendSuper2(&v57, sel_init);
  v31 = v30;
  if (v28)
  {
    v32 = v30;
    v33 = [v28 objectID];
    v34 = *(v32 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v32 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v33;

    (*((*MEMORY[0x1E69E7D40] & *v32) + 0x218))(v28, v25 & 1, v53 & 1);
  }

  else
  {
    v35 = v30;
    v36 = v52;
    sub_1B63BE9F4();
    v24(v36, 0, 1, v23);
    v37 = v49;
    sub_1B628C510(v36, v49, &unk_1EB943680, qword_1B63C4070);
    v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B6282DFC(v37, &v35[v38], &unk_1EB943680, qword_1B63C4070);
    swift_endAccess();
    v39 = v51;
    sub_1B628C510(v36, v51, &unk_1EB943680, qword_1B63C4070);
    v40 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v41 = swift_allocObject();
    sub_1B628A128(v39, v41 + v40, &unk_1EB943680, qword_1B63C4070);
    v42 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v43 = *&v35[v42];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35[v42] = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_1B629A8E8(0, v43[2] + 1, 1, v43);
      *&v35[v42] = v43;
    }

    v46 = v43[2];
    v45 = v43[3];
    if (v46 >= v45 >> 1)
    {
      v43 = sub_1B629A8E8((v45 > 1), v46 + 1, 1, v43);
    }

    v43[2] = v46 + 1;
    v47 = &v43[2 * v46];
    v47[4] = sub_1B62B2D5C;
    v47[5] = v41;
    *&v35[v42] = v43;
    swift_endAccess();

    sub_1B6284EAC(v36, &unk_1EB943680, qword_1B63C4070);
  }

  return v31;
}

uint64_t sub_1B62C098C()
{

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSCachedCuratedCollection__image), *(v0 + OBJC_IVAR___MSCachedCuratedCollection__image + 8));

  sub_1B6284EAC(v0 + OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v0 + OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate, &unk_1EB943210, &unk_1B63C3F50);
}

id CachedCuratedCollection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedCuratedCollection(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B62C0B98(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v77 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v77 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v77 - v15;
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {
    v18 = result;
    v77 = a1;
    if ((a2 & 1) != 0 || (v19 = [v18 collectionDescription]) == 0)
    {
      v21 = 0;
      v23 = 0;
    }

    else
    {
      v20 = v19;
      v21 = sub_1B63BEBD4();
      v23 = v22;
    }

    v24 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__collectionDescription);
    *v24 = v21;
    v24[1] = v23;

    v25 = [v18 curatedCollectionIdentifier];
    *(v2 + OBJC_IVAR___MSCachedCuratedCollection__curatedCollectionIdentifier) = v25;
    if (a2)
    {
      v26 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__image);
      v27 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__image + 8);
      *(v2 + OBJC_IVAR___MSCachedCuratedCollection__image) = xmmword_1B63C3E40;
      sub_1B6284F64(v26, v27);
    }

    else
    {
      v28 = [v18 image];
      if (v28)
      {
        v29 = v28;
        v30 = sub_1B63BE924();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0xF000000000000000;
      }

      v33 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__image);
      v34 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__image);
      v35 = *(v2 + OBJC_IVAR___MSCachedCuratedCollection__image + 8);
      *v33 = v30;
      v33[1] = v32;
      sub_1B6284F64(v34, v35);
      v36 = [v18 imageUrl];
      if (v36)
      {
        v37 = v36;
        v38 = sub_1B63BEBD4();
        v40 = v39;

        goto LABEL_14;
      }
    }

    v38 = 0;
    v40 = 0;
LABEL_14:
    v41 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__imageUrl);
    *v41 = v38;
    v41[1] = v40;

    v42 = [v18 isTombstone];
    *(v2 + OBJC_IVAR___MSCachedCuratedCollection__isTombstone) = v42;
    if (a2)
    {
      v43 = sub_1B63BE994();
      (*(*(v43 - 8) + 56))(v16, 1, 1, v43);
    }

    else
    {
      v44 = [v18 lastFetchedDate];
      if (v44)
      {
        v45 = v44;
        sub_1B63BE974();

        v46 = sub_1B63BE994();
        (*(*(v46 - 8) + 56))(v14, 0, 1, v46);
      }

      else
      {
        v47 = sub_1B63BE994();
        (*(*(v47 - 8) + 56))(v14, 1, 1, v47);
      }

      sub_1B628A128(v14, v16, &unk_1EB943210, &unk_1B63C3F50);
    }

    v48 = OBJC_IVAR___MSCachedCuratedCollection__lastFetchedDate;
    swift_beginAccess();
    sub_1B6282DFC(v16, v2 + v48, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    if (a2)
    {
      v49 = sub_1B63BE994();
      (*(*(v49 - 8) + 56))(v11, 1, 1, v49);
    }

    else
    {
      v50 = [v18 lastSignificantChangeDate];
      if (v50)
      {
        v51 = v50;
        sub_1B63BE974();

        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      v53 = sub_1B63BE994();
      (*(*(v53 - 8) + 56))(v8, v52, 1, v53);
      sub_1B628A128(v8, v11, &unk_1EB943210, &unk_1B63C3F50);
    }

    v54 = OBJC_IVAR___MSCachedCuratedCollection__lastSignificantChangeDate;
    swift_beginAccess();
    sub_1B6282DFC(v11, v2 + v54, &unk_1EB943210, &unk_1B63C3F50);
    swift_endAccess();
    v55 = [v18 placesCount];
    *(v2 + OBJC_IVAR___MSCachedCuratedCollection__placesCount) = v55;
    v56 = [v18 positionIndex];
    *(v2 + OBJC_IVAR___MSCachedCuratedCollection__positionIndex) = v56;
    if ((a2 & 1) != 0 || (v57 = [v18 publisherAttribution]) == 0)
    {
      v59 = 0;
      v61 = 0;
    }

    else
    {
      v58 = v57;
      v59 = sub_1B63BEBD4();
      v61 = v60;
    }

    v62 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__publisherAttribution);
    *v62 = v59;
    v62[1] = v61;

    v63 = [v18 resultProviderIdentifier];
    *(v2 + OBJC_IVAR___MSCachedCuratedCollection__resultProviderIdentifier) = v63;
    if (a2)
    {
      v64 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__title);
      *v64 = 0;
      v64[1] = 0;
    }

    else
    {
      v65 = [v18 title];
      if (v65)
      {
        v66 = v65;
        v67 = sub_1B63BEBD4();
        v69 = v68;
      }

      else
      {
        v67 = 0;
        v69 = 0;
      }

      v70 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__title);
      *v70 = v67;
      v70[1] = v69;

      v71 = [v18 titleLocale];
      if (v71)
      {
        v72 = v71;
        v73 = sub_1B63BEBD4();
        v75 = v74;

LABEL_39:
        v76 = (v2 + OBJC_IVAR___MSCachedCuratedCollection__titleLocale);
        *v76 = v73;
        v76[1] = v75;
      }
    }

    v73 = 0;
    v75 = 0;
    goto LABEL_39;
  }

  return result;
}

id sub_1B62C120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v53 = a3;
  v52 = a8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v47 - v27;
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDB0F2A8;
  if (a2)
  {
    v49 = sub_1B63BEBC4();
  }

  else
  {
    v49 = 0;
  }

  if (a5 >> 60 == 15)
  {
    v48 = 0;
    v29 = a10;
    if (a7)
    {
LABEL_8:
      v47 = sub_1B63BEBC4();

      goto LABEL_11;
    }
  }

  else
  {
    sub_1B629119C(a4, a5);
    v48 = sub_1B63BE904();
    sub_1B6284F64(a4, a5);
    v29 = a10;
    if (a7)
    {
      goto LABEL_8;
    }
  }

  v47 = 0;
LABEL_11:
  v51 = a9;
  sub_1B628C510(a9, v28, &unk_1EB943210, &unk_1B63C3F50);
  v30 = sub_1B63BE994();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v33 = 0;
  if (v32(v28, 1, v30) != 1)
  {
    v33 = sub_1B63BE954();
    (*(v31 + 8))(v28, v30);
  }

  sub_1B628C510(v29, v26, &unk_1EB943210, &unk_1B63C3F50);
  if (v32(v26, 1, v30) == 1)
  {
    v34 = 0;
    v35 = a17;
    if (a14)
    {
LABEL_15:
      v36 = sub_1B63BEBC4();

      goto LABEL_18;
    }
  }

  else
  {
    v34 = sub_1B63BE954();
    (*(v31 + 8))(v26, v30);
    v35 = a17;
    if (a14)
    {
      goto LABEL_15;
    }
  }

  v36 = 0;
LABEL_18:
  v37 = v29;
  if (v35)
  {
    v38 = sub_1B63BEBC4();
  }

  else
  {
    v38 = 0;
  }

  if (a19)
  {
    v39 = sub_1B63BEBC4();
  }

  else
  {
    v39 = 0;
  }

  LODWORD(v46) = a15;
  LODWORD(v45) = a11;
  v40 = v49;
  v42 = v47;
  v41 = v48;
  v43 = [v54 initWithStore:v50 collectionDescription:v49 curatedCollectionIdentifier:v53 image:v48 imageUrl:v47 isTombstone:v52 & 1 lastFetchedDate:v33 lastSignificantChangeDate:v34 placesCount:v45 positionIndex:a12 publisherAttribution:v36 resultProviderIdentifier:v46 title:v38 titleLocale:v39];

  sub_1B6284EAC(v37, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B6284EAC(v51, &unk_1EB943210, &unk_1B63C3F50);
  return v43;
}

void sub_1B62C15E8(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 73) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v10 + 11) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 11) & 0xFFFFFFFFFFFFFFF8;
  sub_1B62BA9D4(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), v2 + v7, v2 + v9, *(v2 + v10), *(v2 + v11), *(v2 + v12), *(v2 + v12 + 8), *(v2 + v13), *(v2 + v14), *(v2 + v14 + 8), *(v2 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

id sub_1B62C17A8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedCuratedCollection__image);
  v8 = *(v3 + OBJC_IVAR___MSCachedCuratedCollection__image);
  v9 = *(v3 + OBJC_IVAR___MSCachedCuratedCollection__image + 8);
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
    *(v11 + 16) = sub_1B62C2704;
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

id keypath_get_190Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, _DWORD *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  [*(*a1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock) lock];
  LODWORD(a2) = *(v5 + *a2);
  result = [*(v5 + v6) unlock];
  *a3 = a2;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t objectdestroy_78Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = a3(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v7, 1, v9))
  {
    (*(v10 + 8))(v3 + v7, v9);
  }

  return MEMORY[0x1EEE6BDD0](v3, v7 + v8, v6 | 7);
}

id CachedMapItemStorage.__allocating_init(customName:latitude:longitude:mapItemStorage:muid:resultsProvider:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
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

  v19 = [v15 initWithStore:v16 customName:v18 latitude:a3 longitude:a4 mapItemStorage:a5 muid:a6 resultsProvider:a7];

  return v19;
}

id CachedMapItemStorage.init(customName:latitude:longitude:mapItemStorage:muid:resultsProvider:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
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

  v16 = [v8 initWithStore:v14 customName:v15 latitude:a3 longitude:a4 mapItemStorage:a5 muid:a6 resultsProvider:a7];

  return v16;
}

char *CachedMapItemStorage.__allocating_init(store:customName:latitude:longitude:mapItemStorage:muid:resultsProvider:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v16 = [objc_allocWithZone(v9) initWithStore_];
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v18 = *&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v19 = v16;
  [v18 lock];
  v54 = v17;
  v55 = v16;
  v20 = &v19[OBJC_IVAR___MSCachedMapItemStorage__customName];
  *v20 = a2;
  *(v20 + 1) = a3;

  v21 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__latitude];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__latitude] = a4;
  v49 = a4;

  v22 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__longitude];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__longitude] = a5;
  v48 = a5;

  if (a6 && (v23 = [a6 data]) != 0)
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

  v28 = &v19[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
  v29 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
  v30 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8];
  *v28 = v25;
  v28[1] = v27;
  sub_1B6284F64(v29, v30);
  v31 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__muid];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__muid] = a7;
  v32 = a7;

  v33 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider] = a8;
  v34 = a8;

  v35 = swift_allocObject();
  v35[2] = a2;
  v35[3] = a3;
  v35[4] = a4;
  v35[5] = a5;
  v35[6] = a6;
  v35[7] = a7;
  v35[8] = a8;
  sub_1B6282B88();
  v51 = v49;
  v36 = v48;
  v37 = v32;
  v38 = v34;
  v39 = a6;
  if (sub_1B63BEF24())
  {
    v52 = v37;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1B62C6770;
    *(v40 + 24) = v35;
    v41 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v42 = *&v19[v41];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v41] = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_1B629A8E8(0, v42[2] + 1, 1, v42);
      *&v19[v41] = v42;
    }

    v45 = v42[2];
    v44 = v42[3];
    if (v45 >= v44 >> 1)
    {
      v42 = sub_1B629A8E8((v44 > 1), v45 + 1, 1, v42);
    }

    v42[2] = v45 + 1;
    v46 = &v42[2 * v45];
    v46[4] = sub_1B62B8188;
    v46[5] = v40;
    *&v19[v41] = v42;
    swift_endAccess();

    v37 = v52;
  }

  else
  {
  }

  [*&v55[v54] unlock];

  return v19;
}

char *CachedMapItemStorage.init(store:customName:latitude:longitude:mapItemStorage:muid:resultsProvider:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v16 = [v9 initWithStore_];
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v18 = *&v16[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v19 = v16;
  [v18 lock];
  v54 = v17;
  v55 = v16;
  v20 = &v19[OBJC_IVAR___MSCachedMapItemStorage__customName];
  *v20 = a2;
  *(v20 + 1) = a3;

  v21 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__latitude];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__latitude] = a4;
  v49 = a4;

  v22 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__longitude];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__longitude] = a5;
  v48 = a5;

  if (a6 && (v23 = [a6 data]) != 0)
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

  v28 = &v19[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
  v29 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
  v30 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8];
  *v28 = v25;
  v28[1] = v27;
  sub_1B6284F64(v29, v30);
  v31 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__muid];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__muid] = a7;
  v32 = a7;

  v33 = *&v19[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider];
  *&v19[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider] = a8;
  v34 = a8;

  v35 = swift_allocObject();
  v35[2] = a2;
  v35[3] = a3;
  v35[4] = a4;
  v35[5] = a5;
  v35[6] = a6;
  v35[7] = a7;
  v35[8] = a8;
  sub_1B6282B88();
  v51 = v49;
  v36 = v48;
  v37 = v32;
  v38 = v34;
  v39 = a6;
  if (sub_1B63BEF24())
  {
    v52 = v37;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1B62C775C;
    *(v40 + 24) = v35;
    v41 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v42 = *&v19[v41];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v41] = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_1B629A8E8(0, v42[2] + 1, 1, v42);
      *&v19[v41] = v42;
    }

    v45 = v42[2];
    v44 = v42[3];
    if (v45 >= v44 >> 1)
    {
      v42 = sub_1B629A8E8((v44 > 1), v45 + 1, 1, v42);
    }

    v42[2] = v45 + 1;
    v46 = &v42[2 * v45];
    v46[4] = sub_1B62B9488;
    v46[5] = v40;
    *&v19[v41] = v42;
    swift_endAccess();

    v37 = v52;
  }

  else
  {
  }

  [*&v55[v54] unlock];

  return v19;
}

void sub_1B62C3190(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();
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

    [v15 setLatitude_];
    [v15 setLongitude_];
    if (a7)
    {
      v17 = [a7 data];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1B63BE924();
        v21 = v20;

        a7 = sub_1B63BE904();
        sub_1B628BAC0(v19, v21);
      }

      else
      {
        a7 = 0;
      }
    }

    [v15 setMapItemStorage_];

    [v15 setMuid_];
    [v15 setResultsProvider_];
  }
}

uint64_t sub_1B62C3514(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__customName);
  v6 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__customName + 8);
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
  *(v19 + 16) = sub_1B62C67A8;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_2;
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

    v15 = sub_1B62C67A8;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62C3920(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCachedMapItemStorage__customName);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C67B4;
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

void sub_1B62C3AD8(void *a1, uint64_t a2, uint64_t *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v16];
  v5 = v16[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCachedMapItemStorage();
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

void sub_1B62C3BFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();
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

id (*sub_1B62C3CB4(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B62C3514(a1, a2);
  a1[1] = v4;
  return sub_1B62C3CFC;
}

id sub_1B62C3CFC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1B62C3920(*a1, v2);
  }

  sub_1B62C3920(v3, v2);
}

id sub_1B62C3DB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSCachedMapItemStorage__latitude);
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
  *(v20 + 16) = sub_1B62C67BC;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_34;
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
    v16 = sub_1B62C67BC;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62C4174(void *a1)
{
  sub_1B62C6A58(a1);
}

void (*sub_1B62C41AC(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B62C3DB4(a1, a2);
  return sub_1B62C41F4;
}

id sub_1B62C4250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSCachedMapItemStorage__longitude);
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
  *(v20 + 16) = sub_1B62C6C08;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_44;
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
    v16 = sub_1B62C6C08;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62C4610(void *a1)
{
  sub_1B62C6C30(a1);
}

void (*sub_1B62C4648(id *a1, uint64_t a2))(id *a1, uint64_t a2)
{
  a1[1] = v2;
  *a1 = sub_1B62C4250(a1, a2);
  return sub_1B62C4690;
}

void sub_1B62C46A8(id *a1, char a2, void (*a3)(id))
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

id sub_1B62C476C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage);
  v7 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8);
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
  *(v22 + 16) = sub_1B62C6DE0;
  *(v22 + 24) = v19;
  v29[4] = sub_1B62B9478;
  v29[5] = v22;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1B62B1294;
  v29[3] = &block_descriptor_55;
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

    v18 = sub_1B62C6DE0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B62C4C60(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  [v2 lock];
  sub_1B62C4DFC(v2, a1, v1);
  [v2 unlock];
}

void sub_1B62C4CD8(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCachedMapItemStorage();
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

uint64_t sub_1B62C4DFC(uint64_t a1, void *a2, char *a3)
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

    v17 = &a3[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
    v18 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
    v19 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8];
    *v17 = v8;
    *(v17 + 1) = v10;
    sub_1B6284F64(v18, v19);
    v20 = [v5 _muid];
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v22 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__muid];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__muid] = v21;

    v23 = [v5 _resultProviderID];
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    v25 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider] = v24;

    [v5 coordinate];
    v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v28 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__latitude];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__latitude] = v27;

    [v5 coordinate];
    v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

    v31 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__longitude];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__longitude] = v30;
  }

  else
  {
    v11 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage];
    v12 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage] = xmmword_1B63C3E40;
    sub_1B6284F64(v11, v12);
    v13 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__muid];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__muid] = 0;

    v14 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider] = 0;

    v15 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__latitude];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__latitude] = 0;

    v16 = *&a3[OBJC_IVAR___MSCachedMapItemStorage__longitude];
    *&a3[OBJC_IVAR___MSCachedMapItemStorage__longitude] = 0;

    v5 = 0;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  sub_1B6282B88();
  v33 = v5;
  v34 = a3;
  if (sub_1B63BEF24())
  {
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1B62C76DC;
    *(v35 + 24) = v32;
    v36 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v37 = *&v34[v36];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[v36] = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_1B629A8E8(0, v37[2] + 1, 1, v37);
      *&v34[v36] = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      v37 = sub_1B629A8E8((v39 > 1), v40 + 1, 1, v37);
    }

    v37[2] = v40 + 1;
    v41 = &v37[2 * v40];
    v41[4] = sub_1B62B9488;
    v41[5] = v35;
    *&v34[v36] = v37;
    swift_endAccess();
  }

  else
  {
  }
}

void sub_1B62C5194(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();
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

      v20 = [v11 _resultProviderID];
      v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      [v7 setResultsProvider_];

      [v11 coordinate];
      v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v7 setLatitude_];

      [v11 coordinate];
      v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v7 setLongitude_];
    }

    else
    {
      v25 = a2;
      [v7 setMapItemStorage_];
      [v7 setMuid_];
      [v7 setResultsProvider_];
      [v7 setLatitude_];
      [v7 setLongitude_];
    }
  }
}

void (*sub_1B62C5470(id *a1, uint64_t a2))(uint64_t a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B62C476C(a1, a2);
  return sub_1B62C54B8;
}

void sub_1B62C54B8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    [v3 lock];
    sub_1B62C4DFC(v3, v6, v2);
    [v3 unlock];

    v5 = v4;
  }

  else
  {
    [v3 lock];
    sub_1B62C4DFC(v3, v6, v2);
    [v3 unlock];
    v5 = v6;
  }
}

id sub_1B62C55CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSCachedMapItemStorage__muid);
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
  *(v20 + 16) = sub_1B62C6DEC;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_65;
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
    v16 = sub_1B62C6DEC;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62C598C(void *a1)
{
  sub_1B62C6E14(a1);
}

void (*sub_1B62C59C4(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B62C55CC(a1, a2);
  return sub_1B62C5A0C;
}

id sub_1B62C5A68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = *(v3 + OBJC_IVAR___MSCachedMapItemStorage__resultsProvider);
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
  *(v20 + 16) = sub_1B62C6FC4;
  *(v20 + 24) = v17;
  aBlock[4] = sub_1B62B9478;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B62B1294;
  aBlock[3] = &block_descriptor_76_0;
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
    v16 = sub_1B62C6FC4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62C5E28(void *a1)
{
  sub_1B62C6FEC(a1);
}

void sub_1B62C5E60(void *a1, uint64_t a2, void **a3, SEL *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v15];
  v7 = v15[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedCachedMapItemStorage();
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

id sub_1B62C5F74(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

void (*sub_1B62C5FE4(id *a1, uint64_t a2))(id *a1, char a2)
{
  a1[1] = v2;
  *a1 = sub_1B62C5A68(a1, a2);
  return sub_1B62C602C;
}

void *sub_1B62C6044(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v9 = objc_allocWithZone(v4);
  return sub_1B62C60A0(a1, a2, v6, v5);
}

void *sub_1B62C60A0(void *a1, void *a2, int a3, int a4)
{
  v49 = a4;
  v51 = a3;
  v50 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v45 - v11;
  v12 = &v4[OBJC_IVAR___MSCachedMapItemStorage__customName];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR___MSCachedMapItemStorage__latitude] = 0;
  *&v4[OBJC_IVAR___MSCachedMapItemStorage__longitude] = 0;
  *&v4[OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage] = xmmword_1B63C3E40;
  *&v4[OBJC_IVAR___MSCachedMapItemStorage__muid] = 0;
  *&v4[OBJC_IVAR___MSCachedMapItemStorage__resultsProvider] = 0;
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
  v21(&v4[v19], 1, 1, v20);
  v21(&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__modificationTime], 1, 1, v20);
  v22 = v51;
  v23 = v50;
  *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store] = a2;
  v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject_lazyLoad] = v22;
  v24 = type metadata accessor for MapsSyncObject(0);
  v52.receiver = v4;
  v52.super_class = v24;
  v25 = a2;
  v26 = objc_msgSendSuper2(&v52, sel_init);
  v27 = v26;
  if (v23)
  {
    v28 = v26;
    v29 = [v23 objectID];
    v30 = *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId);
    *(v28 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__managedObjectId) = v29;

    (*((*MEMORY[0x1E69E7D40] & *v28) + 0x218))(v23, v22 & 1, v49 & 1);
  }

  else
  {
    v31 = v26;
    v32 = v48;
    sub_1B63BE9F4();
    v18(v32, 0, 1, v17);
    v33 = v45;
    sub_1B62B2C0C(v32, v45);
    v34 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
    swift_beginAccess();
    sub_1B62B2C7C(v33, &v31[v34]);
    swift_endAccess();
    v35 = v47;
    sub_1B62B2C0C(v32, v47);
    v36 = (*(v46 + 80) + 16) & ~*(v46 + 80);
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

void sub_1B62C661C()
{

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage), *(v0 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8));
  v1 = *(v0 + OBJC_IVAR___MSCachedMapItemStorage__resultsProvider);
}

id CachedMapItemStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedMapItemStorage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B62C67E4(void *a1, char a2)
{
  sub_1B6283D00(a1);
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = a1;
  if (a2)
  {
    v8 = (v2 + OBJC_IVAR___MSCachedMapItemStorage__customName);
    *v8 = 0;
    v8[1] = 0;
  }

  else
  {
    v9 = [v6 customName];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1B63BEBD4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = (v2 + OBJC_IVAR___MSCachedMapItemStorage__customName);
    *v14 = v11;
    v14[1] = v13;

    if ((a2 & 1) == 0)
    {
      v21 = [v6 latitude];
      v22 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__latitude);
      *(v2 + OBJC_IVAR___MSCachedMapItemStorage__latitude) = v21;

      v23 = [v6 longitude];
      v24 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__longitude);
      *(v2 + OBJC_IVAR___MSCachedMapItemStorage__longitude) = v23;

      v25 = [v6 mapItemStorage];
      if (v25)
      {
        v26 = v25;
        v27 = sub_1B63BE924();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0xF000000000000000;
      }

      v30 = (v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage);
      v31 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage);
      v32 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8);
      *v30 = v27;
      v30[1] = v29;
      sub_1B6284F64(v31, v32);
      v33 = [v6 muid];
      v34 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__muid);
      *(v2 + OBJC_IVAR___MSCachedMapItemStorage__muid) = v33;

      v20 = [v6 resultsProvider];
      goto LABEL_14;
    }
  }

  v15 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__latitude);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__latitude) = 0;

  v16 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__longitude);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__longitude) = 0;

  v17 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage);
  v18 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage + 8);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__mapItemStorage) = xmmword_1B63C3E40;
  sub_1B6284F64(v17, v18);
  v19 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__muid);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__muid) = 0;

  v20 = 0;
LABEL_14:
  v35 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__resultsProvider);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__resultsProvider) = v20;
}

id sub_1B62C6A58(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__latitude);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__latitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C7708;
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

id sub_1B62C6C30(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__longitude);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__longitude) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C76E4;
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

id sub_1B62C6E14(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__muid);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__muid) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C76B8;
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

id sub_1B62C6FEC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  v5 = *(v2 + OBJC_IVAR___MSCachedMapItemStorage__resultsProvider);
  *(v2 + OBJC_IVAR___MSCachedMapItemStorage__resultsProvider) = a1;
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1B6282B88();
  v8 = v6;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62C7694;
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

uint64_t type metadata accessor for CachedMapItemStorage(uint64_t a1)
{
  result = qword_1EB9431A8;
  if (!qword_1EB9431A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Collection.__allocating_init(collectionDescription:image:imageUrl:positionIndex:title:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v15 = objc_allocWithZone(v10);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB0F2A8;
  if (a2)
  {
    v17 = sub_1B63BEBC4();
  }

  else
  {
    v17 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v18 = 0;
    v19 = a9;
    if (a6)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20 = 0;
    if (v19)
    {
      goto LABEL_9;
    }

LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  sub_1B629119C(a3, a4);
  v18 = sub_1B63BE904();
  sub_1B6284F64(a3, a4);
  v19 = a9;
  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = sub_1B63BEBC4();

  if (!v19)
  {
    goto LABEL_12;
  }

LABEL_9:
  v21 = sub_1B63BEBC4();

LABEL_13:
  v22 = [v15 initWithStore:v16 collectionDescription:v17 image:v18 imageUrl:v20 positionIndex:a7 title:v21];
  sub_1B6284F64(a3, a4);

  return v22;
}

id Collection.init(collectionDescription:image:imageUrl:positionIndex:title:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  if (qword_1EDB0F2A0 != -1)
  {
    v22 = a2;
    swift_once();
    a2 = v22;
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

  if (a4 >> 60 == 15)
  {
    v16 = 0;
    v17 = a9;
    if (a6)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = 0;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  sub_1B629119C(a3, a4);
  v16 = sub_1B63BE904();
  sub_1B6284F64(a3, a4);
  v17 = a9;
  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = sub_1B63BEBC4();

  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_9:
  v19 = sub_1B63BEBC4();

LABEL_13:
  v20 = [v10 initWithStore:v14 collectionDescription:v15 image:v16 imageUrl:v18 positionIndex:a7 title:v19];
  sub_1B6284F64(a3, a4);

  return v20;
}

char *Collection.__allocating_init(store:collectionDescription:image:imageUrl:positionIndex:title:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v17 = [objc_allocWithZone(v11) initWithStore_];
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v19 = *&v17[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v20 = v17;
  [v19 lock];
  v21 = &v20[OBJC_IVAR___MSCollection__collectionDescription];
  *v21 = a2;
  *(v21 + 1) = a3;

  v22 = &v20[OBJC_IVAR___MSCollection__image];
  v24 = *&v20[OBJC_IVAR___MSCollection__image];
  v23 = *&v20[OBJC_IVAR___MSCollection__image + 8];
  *v22 = a4;
  *(v22 + 1) = a5;
  sub_1B6291034(a4, a5);
  sub_1B6284F64(v24, v23);
  v25 = &v20[OBJC_IVAR___MSCollection__imageUrl];
  *v25 = a6;
  *(v25 + 1) = a7;

  *&v20[OBJC_IVAR___MSCollection__positionIndex] = a8;
  v26 = &v20[OBJC_IVAR___MSCollection__title];
  *v26 = a9;
  *(v26 + 1) = a10;

  v27 = swift_allocObject();
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = a5;
  v27[6] = a6;
  v27[7] = a7;
  v27[8] = a8;
  v27[9] = a9;
  v27[10] = a10;
  sub_1B6282B88();
  sub_1B6291034(a4, a5);
  if (sub_1B63BEF24())
  {
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1B62CA9A0;
    *(v28 + 24) = v27;
    v29 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v30 = *&v20[v29];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[v29] = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_1B629A8E8(0, v30[2] + 1, 1, v30);
      *&v20[v29] = v30;
    }

    v33 = v30[2];
    v32 = v30[3];
    if (v33 >= v32 >> 1)
    {
      v30 = sub_1B629A8E8((v32 > 1), v33 + 1, 1, v30);
    }

    v30[2] = v33 + 1;
    v34 = &v30[2 * v33];
    v34[4] = sub_1B62B8188;
    v34[5] = v28;
    *&v20[v29] = v30;
    swift_endAccess();
  }

  [*&v17[v18] unlock];
  sub_1B6284F64(a4, a5);

  return v20;
}

char *Collection.init(store:collectionDescription:image:imageUrl:positionIndex:title:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v17 = [v11 initWithStore_];
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v19 = *&v17[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v20 = v17;
  [v19 lock];
  v21 = &v20[OBJC_IVAR___MSCollection__collectionDescription];
  *v21 = a2;
  *(v21 + 1) = a3;
  v37 = a3;

  v22 = &v20[OBJC_IVAR___MSCollection__image];
  v24 = *&v20[OBJC_IVAR___MSCollection__image];
  v23 = *&v20[OBJC_IVAR___MSCollection__image + 8];
  *v22 = a4;
  *(v22 + 1) = a5;
  sub_1B6291034(a4, a5);
  sub_1B6284F64(v24, v23);
  v25 = &v20[OBJC_IVAR___MSCollection__imageUrl];
  *v25 = a6;
  *(v25 + 1) = a7;

  *&v20[OBJC_IVAR___MSCollection__positionIndex] = a8;
  v26 = &v20[OBJC_IVAR___MSCollection__title];
  *v26 = a9;
  *(v26 + 1) = a10;

  v27 = swift_allocObject();
  v27[2] = a2;
  v27[3] = v37;
  v27[4] = a4;
  v27[5] = a5;
  v27[6] = a6;
  v27[7] = a7;
  v27[8] = a8;
  v27[9] = a9;
  v27[10] = a10;
  sub_1B6282B88();
  sub_1B6291034(a4, a5);
  if (sub_1B63BEF24())
  {
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1B62CD694;
    *(v28 + 24) = v27;
    v29 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v30 = *&v20[v29];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[v29] = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_1B629A8E8(0, v30[2] + 1, 1, v30);
      *&v20[v29] = v30;
    }

    v33 = v30[2];
    v32 = v30[3];
    if (v33 >= v32 >> 1)
    {
      v30 = sub_1B629A8E8((v32 > 1), v33 + 1, 1, v30);
    }

    v30[2] = v33 + 1;
    v34 = &v30[2 * v33];
    v34[4] = sub_1B62B9488;
    v34[5] = v28;
    *&v20[v29] = v30;
    swift_endAccess();
  }

  [*&v17[v18] unlock];
  sub_1B6284F64(a4, a5);

  return v20;
}

void sub_1B62C81C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for MapsSyncManagedCollection();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = a2;
    if (a4)
    {
      v18 = sub_1B63BEBC4();
    }

    else
    {
      v18 = 0;
    }

    [v16 setCollectionDescription_];

    if (a6 >> 60 == 15)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_1B63BE904();
    }

    [v16 setImage_];

    if (a8)
    {
      v20 = sub_1B63BEBC4();
    }

    else
    {
      v20 = 0;
    }

    [v16 setImageUrl_];

    [v16 setPositionIndex_];
    if (a11)
    {
      v21 = sub_1B63BEBC4();
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    [v16 setTitle_];
  }
}

uint64_t sub_1B62C849C()
{
  v1 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B62C8604(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCollection__collectionDescription);
  v6 = *(v2 + OBJC_IVAR___MSCollection__collectionDescription + 8);
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
  *(v19 + 16) = sub_1B62CA9E0;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B8284;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_3;
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

    v15 = sub_1B62CA9E0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62C89A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollection__collectionDescription);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62CAA08;
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

uint64_t (*sub_1B62C8B60(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62C8604(a1, a2);
  a1[1] = v4;
  return sub_1B62C8BA8;
}

uint64_t sub_1B62C8C54(uint64_t a1, unint64_t a2)
{
  sub_1B62CCEE4(a1, a2);

  return sub_1B6284F64(a1, a2);
}

uint64_t sub_1B62C8C9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B6291034(*a1, v2);
  sub_1B62CCEE4(v1, v2);

  return sub_1B6284F64(v1, v2);
}

void sub_1B62C8CF8(void *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v4 = [a1 existingObjectWithID:a2 error:v18];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for MapsSyncManagedCollection();
    v7 = swift_dynamicCastClass();
    v8 = v5;
    if (v7 && (v9 = [v7 image]) != 0)
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

void sub_1B62C8E1C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for MapsSyncManagedCollection();
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
    [v7 setImage_];
  }
}

uint64_t (*sub_1B62C8EDC(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = v2;
  *a1 = sub_1B6294B38(a1, a2);
  a1[1] = v4;
  return sub_1B62C8F24;
}

uint64_t sub_1B62C8F24(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (a2)
  {
    sub_1B6291034(v4, v3);
    sub_1B62CCEE4(v2, v3);
    sub_1B6284F64(v2, v3);
  }

  else
  {
    sub_1B62CCEE4(v4, v3);
  }

  return sub_1B6284F64(v2, v3);
}

uint64_t sub_1B62C8FB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCollection__imageUrl);
  v6 = *(v2 + OBJC_IVAR___MSCollection__imageUrl + 8);
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
  *(v19 + 16) = sub_1B62CD0B4;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_44_0;
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

    v15 = sub_1B62CD0B4;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1B62C9358(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollection__imageUrl);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62CD0DC;
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

uint64_t (*sub_1B62C9510(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62C8FB4(a1, a2);
  a1[1] = v4;
  return sub_1B62C9558;
}

uint64_t sub_1B62C9570()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCollection__placesCount);
  [v1 unlock];
  return v2;
}

uint64_t sub_1B62C9638()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCollection__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B62C96E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCollection__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62CD100;
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

id sub_1B62C9880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedCollection();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B62C98E4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollection__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62C9968;
}

id sub_1B62C99A4(void *a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_1B62C9A24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v7 = *(v2 + OBJC_IVAR___MSCollection__title);
  v6 = *(v2 + OBJC_IVAR___MSCollection__title + 8);
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
  *(v19 + 16) = sub_1B62CD108;
  *(v19 + 24) = v16;
  v23[4] = sub_1B62B9478;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B62B1294;
  v23[3] = &block_descriptor_69;
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

    v15 = sub_1B62CD108;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1B62C9DC8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

id sub_1B62C9E50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollection__title);
  *v7 = a1;
  v7[1] = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62CD130;
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

void sub_1B62CA008(void *a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v6 = [a1 existingObjectWithID:a2 error:v18];
  v7 = v18[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MapsSyncManagedCollection();
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

void sub_1B62CA12C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  type metadata accessor for MapsSyncManagedCollection();
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

uint64_t (*sub_1B62CA1F0(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v2;
  *a1 = sub_1B62C9A24(a1, a2);
  a1[1] = v4;
  return sub_1B62CA238;
}

uint64_t sub_1B62CA250(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

id sub_1B62CA2D0(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  swift_beginAccess();
  v5 = a1;
  sub_1B62CAC78(&v17, v5, type metadata accessor for CollectionItem, &qword_1EB943168, &qword_1B63C3FE8, type metadata accessor for CollectionItem);
  v6 = v17;
  swift_endAccess();

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_1B6282B88();
  v8 = v5;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62CD154;
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

id sub_1B62CA548(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  swift_beginAccess();
  v5 = sub_1B62CC18C(a1);
  swift_endAccess();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1B6282B88();
  v7 = a1;
  if (sub_1B63BEF24())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1B62CD178;
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

void sub_1B62CA714(void *a1, void *a2, uint64_t a3, SEL *a4)
{
  type metadata accessor for MapsSyncManagedCollection();
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
      type metadata accessor for MapsSyncManagedCollectionItem();
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

uint64_t sub_1B62CA8E8()
{

  sub_1B6284F64(*(v0 + OBJC_IVAR___MSCollection__image), *(v0 + OBJC_IVAR___MSCollection__image + 8));
}

id Collection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Collection(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B62CAAEC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B63BF434();
  sub_1B63BEC24();
  v8 = sub_1B63BF494();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B63BF364() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1B62CB75C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B62CAC78(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1B63BF054();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = sub_1B63BF044();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_1B62CAEDC(v15, result + 1, a4, a5, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_1B62CB334(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_1B62CB554(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = sub_1B63BEF14();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_1B63BEF24();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_1B62CB5D8(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B62CAEDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_1B63BF0F4();
    v21 = v8;
    sub_1B63BF004();
    if (sub_1B63BF074())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_1B62CB334(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_1B63BEF14();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_1B63BF074());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v8;
}

uint64_t sub_1B62CB0D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9431B8, &unk_1B63C4158);
  result = sub_1B63BF0E4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B63BF434();
      sub_1B63BEC24();
      result = sub_1B63BF494();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B62CB334(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B63BF0E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_1B63BEF14();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_1B62CB554(uint64_t a1, uint64_t a2)
{
  sub_1B63BEF14();
  result = sub_1B63BEFE4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1B62CB5D8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_1B62CB334(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1B62CBA38(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_1B62CBDB0(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_1B63BEF14();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_1B63BEF24();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B63BF3C4();
  __break(1u);
}

uint64_t sub_1B62CB75C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B62CB0D4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B62CB8DC();
      goto LABEL_16;
    }

    sub_1B62CBB78(v8 + 1);
  }

  v10 = *v4;
  sub_1B63BF434();
  sub_1B63BEC24();
  result = sub_1B63BF494();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B63BF364();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B63BF3C4();
  __break(1u);
  return result;
}

void *sub_1B62CB8DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9431B8, &unk_1B63C4158);
  v2 = *v0;
  v3 = sub_1B63BF0D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1B62CBA38(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B63BF0D4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1B62CBB78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9431B8, &unk_1B63C4158);
  result = sub_1B63BF0E4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1B63BF434();

      sub_1B63BEC24();
      result = sub_1B63BF494();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B62CBDB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B63BF0E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_1B63BEF14();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1B62CBFBC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1B63BF084();

    if (v6)
    {
      v7 = sub_1B62CCA08(v4, v5, &qword_1EB943170, &unk_1B63C3FF0, type metadata accessor for ReviewedPlace, type metadata accessor for ReviewedPlace);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for ReviewedPlace(0);
  v10 = sub_1B63BEF14();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1B63BEF24();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B62CBA38(&qword_1EB943170, &unk_1B63C3FF0);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1B62CCD44(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1B62CC18C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1B63BF084();

    if (v6)
    {
      v7 = sub_1B62CCA08(v4, v5, &qword_1EB943168, &qword_1B63C3FE8, type metadata accessor for CollectionItem, type metadata accessor for CollectionItem);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for CollectionItem(0);
  v10 = sub_1B63BEF14();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1B63BEF24();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B62CBA38(&qword_1EB943168, &qword_1B63C3FE8);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1B62CCD44(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1B62CC35C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1B63BF084();

    if (v6)
    {
      v7 = sub_1B62CCA08(v4, v5, &qword_1EB943160, &qword_1B63C3FE0, type metadata accessor for Collection, type metadata accessor for Collection);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for Collection(0);
  v10 = sub_1B63BEF14();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1B63BEF24();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B62CBA38(&qword_1EB943160, &qword_1B63C3FE0);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1B62CCD44(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1B62CC52C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1B63BF084();

    if (v6)
    {
      v7 = sub_1B62CCA08(v4, v5, &qword_1EB943158, &qword_1B63C3FD8, type metadata accessor for RAPRecord, type metadata accessor for RAPRecord);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for RAPRecord(0);
  v10 = sub_1B63BEF14();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1B63BEF24();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B62CBA38(&qword_1EB943158, &qword_1B63C3FD8);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1B62CCD44(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1B62CC6FC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B63BF434();
  sub_1B63BEC24();
  v6 = sub_1B63BF494();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B63BF364() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B62CB8DC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1B62CCB80(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1B62CC838(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1B63BF084();

    if (v6)
    {
      v7 = sub_1B62CCA08(v4, v5, &qword_1EB943150, &qword_1B63C3FD0, type metadata accessor for Visit, type metadata accessor for Visit);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for Visit(0);
  v10 = sub_1B63BEF14();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1B63BEF24();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B62CBA38(&qword_1EB943150, &qword_1B63C3FD0);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1B62CCD44(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1B62CCA08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v11 = v6;

  v12 = sub_1B63BF044();
  v13 = swift_unknownObjectRetain();
  v14 = sub_1B62CAEDC(v13, v12, a3, a4, a5);
  v23 = v14;

  v15 = sub_1B63BEF14();
  v16 = -1 << *(v14 + 32);
  v17 = v15 & ~v16;
  if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    a6(0);
    while (1)
    {
      v19 = *(*(v14 + 48) + 8 * v17);
      v20 = sub_1B63BEF24();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v14 + 48) + 8 * v17);
  sub_1B62CCD44(v17);
  result = sub_1B63BEF24();
  if (result)
  {
    *v11 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B62CCB80(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B63BEFC4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B63BF434();

        sub_1B63BEC24();
        v10 = sub_1B63BF494();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1B62CCD44(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B63BEFC4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1B63BEF14();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

id sub_1B62CCEE4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v6 lock];
  v7 = (v3 + OBJC_IVAR___MSCollection__image);
  v8 = *(v3 + OBJC_IVAR___MSCollection__image);
  v9 = *(v3 + OBJC_IVAR___MSCollection__image + 8);
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
    *(v11 + 16) = sub_1B62CD670;
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

uint64_t keypath_setTm_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

id CollectionItem.__allocating_init(positionIndex:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  if (qword_1EDB0F2A0 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1EDB0F2A8;

  return [v3 initWithStore:v4 positionIndex:a1];
}

id CollectionItem.init(positionIndex:)(uint64_t a1)
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB0F2A8;

  return [v1 initWithStore:v3 positionIndex:a1];
}

char *CollectionItem.init(store:positionIndex:)(void *a1, uint64_t a2)
{
  v5 = [v2 initWithStore_];
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v7 = *&v5[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v8 = v5;
  [v7 lock];
  *&v8[OBJC_IVAR___MSCollectionItem__positionIndex] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B62CE798;
    *(v10 + 24) = v9;
    v11 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v12 = *&v8[v11];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v8[v11] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1B629A8E8(0, v12[2] + 1, 1, v12);
      *&v8[v11] = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1B629A8E8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[2 * v15];
    v16[4] = sub_1B62B8188;
    v16[5] = v10;
    *&v8[v11] = v12;
    swift_endAccess();
  }

  [*&v5[v6] unlock];

  return v8;
}

uint64_t sub_1B62CDBD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR___MSCollectionItem__positionIndex);
  [v1 unlock];
  return v2;
}

id sub_1B62CDC84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  *(v2 + OBJC_IVAR___MSCollectionItem__positionIndex) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1B6282B88();
  if (sub_1B63BEF24())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B62CE5B0;
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

id sub_1B62CDE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MapsSyncManagedCollectionItem();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setPositionIndex_];
  }

  return result;
}

id (*sub_1B62CDE84(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v3 lock];
  v4 = *(v1 + OBJC_IVAR___MSCollectionItem__positionIndex);
  [v3 unlock];
  *a1 = v4;
  return sub_1B62CDF08;
}

id sub_1B62CDF2C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  swift_beginAccess();
  v5 = a1;
  sub_1B628FD50(&v17, v5);
  v6 = v17;
  swift_endAccess();

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_1B6282B88();
  v8 = v5;
  if (sub_1B63BEF24())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B62CE5CC;
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

id sub_1B62CE16C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v4 lock];
  swift_beginAccess();
  v5 = sub_1B62CC35C(a1);
  swift_endAccess();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1B6282B88();
  v7 = a1;
  if (sub_1B63BEF24())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1B62CE5F0;
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

void sub_1B62CE338(void *a1, void *a2, uint64_t a3, SEL *a4)
{
  type metadata accessor for MapsSyncManagedCollectionItem();
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
      type metadata accessor for MapsSyncManagedCollection();
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

id CollectionItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CollectionPlaceItem.__allocating_init(customName:droppedPinCoordinate:droppedPinFloorOrdinal:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:origin:originalIdentifier:placeItemNote:type:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, __int16 a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20)
{
  v21 = v20;
  v67 = a6;
  v68 = a7;
  LODWORD(v66) = a5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v58 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v58 - v29;
  v64 = objc_allocWithZone(v21);
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v62 = qword_1EDB0F2A8;
  if (a2)
  {
    v63 = sub_1B63BEBC4();
  }

  else
  {
    v63 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v61 = 0;
    v31 = a11;
    v32 = a12;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_11:
    v33 = 0;
    v70 = a4;
    if (v31)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_1B629119C(a3, a4);
  v61 = sub_1B63BE904();
  sub_1B6284F64(a3, a4);
  v31 = a11;
  v32 = a12;
  if (!a9)
  {
    goto LABEL_11;
  }

LABEL_8:
  v33 = sub_1B63BEBC4();

  v70 = a4;
  if (v31)
  {
LABEL_9:
    v59 = sub_1B63BEBC4();

    goto LABEL_13;
  }

LABEL_12:
  v59 = 0;
LABEL_13:
  sub_1B628C510(v32, v30, &unk_1EB943210, &unk_1B63C3F50);
  v34 = sub_1B63BE994();
  v35 = *(v34 - 8);
  v36 = 0;
  if ((*(v35 + 48))(v30, 1, v34) != 1)
  {
    v36 = sub_1B63BE954();
    (*(v35 + 8))(v30, v34);
  }

  v69 = a3;
  if (a14)
  {
    v37 = sub_1B63BEBC4();
  }

  else
  {
    v37 = 0;
  }

  v65 = v32;
  sub_1B628C510(a17, v27, &unk_1EB943680, qword_1B63C4070);
  v38 = sub_1B63BEA04();
  v39 = *(v38 - 8);
  v40 = 0;
  if ((*(v39 + 48))(v27, 1, v38) != 1)
  {
    v40 = sub_1B63BE9C4();
    (*(v39 + 8))(v27, v38);
  }

  v60 = a17;
  if (a19)
  {
    v41 = sub_1B63BEBC4();
  }

  else
  {
    v41 = 0;
  }

  LOWORD(v57) = a20;
  v56 = v40;
  LOWORD(v55) = a16;
  v54 = v37;
  v53 = v36;
  v42 = v36;
  v43 = v59;
  v52 = v33;
  v45 = v63;
  v44 = v64;
  v64 = v40;
  v46 = v37;
  v47 = v33;
  v48 = v61;
  v50 = v67;
  v49 = v68;
  v66 = [v44 initWithStore:v62 customName:v63 droppedPinCoordinate:v61 droppedPinFloorOrdinal:v66 latitude:v67 longitude:v68 mapItemAddress:v52 mapItemCategory:v59 mapItemLastRefreshed:v53 mapItemName:v54 muid:a15 origin:v55 originalIdentifier:v56 placeItemNote:v41 type:v57];

  sub_1B6284F64(v69, v70);
  sub_1B6284EAC(v60, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v65, &unk_1EB943210, &unk_1B63C3F50);
  return v66;
}

id CollectionPlaceItem.init(customName:droppedPinCoordinate:droppedPinFloorOrdinal:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:origin:originalIdentifier:placeItemNote:type:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, __int16 a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20)
{
  v24 = sub_1B62D78C4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);

  sub_1B6284F64(a3, a4);
  return v24;
}

char *CollectionPlaceItem.__allocating_init(store:customName:droppedPinCoordinate:droppedPinFloorOrdinal:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:origin:originalIdentifier:placeItemNote:type:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, unsigned __int16 a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int16 a21)
{
  v22 = v21;
  v109 = a8;
  v110 = a7;
  v99 = a6;
  v126 = a4;
  v127 = a5;
  v112 = a3;
  v96 = a2;
  v118 = a21;
  v116 = a20;
  v122 = a19;
  v121 = a17;
  v113 = a16;
  v111 = a15;
  v124 = a18;
  v125 = a13;
  v120 = a14;
  v107 = a12;
  v119 = a11;
  v108 = a10;
  v98 = a9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v104 = *(v26 - 8);
  v103 = *(v104 + 64);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v114 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v102 = *(v31 - 8);
  v32 = *(v102 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v117 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v96 - v34;
  v36 = objc_allocWithZone(v22);
  v106 = a1;
  v37 = [v36 initWithStore_];
  v38 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v39 = *&v37[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock];
  v115 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v40 = v37;
  v123 = v37;
  v41 = v40;
  [v39 lock];
  v105 = *&v37[v38];
  v42 = &v41[OBJC_IVAR___MSCollectionPlaceItem__customName];
  v43 = v112;
  *v42 = a2;
  *(v42 + 1) = v43;

  v44 = &v41[OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate];
  v46 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate];
  v45 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__droppedPinCoordinate + 8];
  v47 = v126;
  v48 = v127;
  *v44 = v126;
  *(v44 + 1) = v48;
  sub_1B6291034(v47, v48);
  sub_1B6284F64(v46, v45);
  *&v41[OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal] = a6;
  v49 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__latitude];
  v50 = v110;
  *&v41[OBJC_IVAR___MSCollectionPlaceItem__latitude] = v110;
  v101 = v50;

  v51 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__longitude];
  v52 = v109;
  *&v41[OBJC_IVAR___MSCollectionPlaceItem__longitude] = v109;
  v100 = v52;

  v53 = &v41[OBJC_IVAR___MSCollectionPlaceItem__mapItemAddress];
  v54 = v108;
  *v53 = a9;
  *(v53 + 1) = v54;

  v55 = &v41[OBJC_IVAR___MSCollectionPlaceItem__mapItemCategory];
  v56 = v107;
  *v55 = v119;
  v55[1] = v56;

  v57 = v125;
  sub_1B628C510(v125, v35, &unk_1EB943210, &unk_1B63C3F50);
  v58 = OBJC_IVAR___MSCollectionPlaceItem__mapItemLastRefreshed;
  swift_beginAccess();
  sub_1B6282DFC(v35, &v41[v58], &unk_1EB943210, &unk_1B63C3F50);
  swift_endAccess();
  v59 = &v41[OBJC_IVAR___MSCollectionPlaceItem__mapItemName];
  v60 = v111;
  *v59 = v120;
  v59[1] = v60;

  v61 = *&v41[OBJC_IVAR___MSCollectionPlaceItem__muid];
  v62 = v113;
  *&v41[OBJC_IVAR___MSCollectionPlaceItem__muid] = v113;
  v97 = v62;

  *&v41[OBJC_IVAR___MSCollectionPlaceItem__origin] = v121;
  v63 = v124;
  sub_1B628C510(v124, v30, &unk_1EB943680, qword_1B63C4070);
  v64 = OBJC_IVAR___MSCollectionPlaceItem__originalIdentifier;
  swift_beginAccess();
  sub_1B6282DFC(v30, &v41[v64], &unk_1EB943680, qword_1B63C4070);
  swift_endAccess();
  v65 = &v41[OBJC_IVAR___MSCollectionPlaceItem__placeItemNote];
  v66 = v116;
  *v65 = v122;
  v65[1] = v66;

  *&v41[OBJC_IVAR___MSCollectionPlaceItem__type] = v118;
  sub_1B628C510(v57, v117, &unk_1EB943210, &unk_1B63C3F50);
  sub_1B628C510(v63, v114, &unk_1EB943680, qword_1B63C4070);
  v67 = (*(v102 + 80) + 104) & ~*(v102 + 80);
  v68 = (v32 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v68 + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 9) & 0xFFFFFFFFFFFFFFF8;
  v71 = (*(v104 + 80) + v70 + 2) & ~*(v104 + 80);
  v72 = (v103 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v72 + 17) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v74 = v112;
  *(v73 + 16) = v96;
  *(v73 + 24) = v74;
  v76 = v126;
  v75 = v127;
  *(v73 + 32) = v126;
  *(v73 + 40) = v75;
  *(v73 + 48) = v99;
  v77 = v109;
  *(v73 + 56) = v110;
  *(v73 + 64) = v77;
  v78 = v108;
  *(v73 + 72) = v98;
  *(v73 + 80) = v78;
  v79 = v107;
  *(v73 + 88) = v119;
  *(v73 + 96) = v79;
  sub_1B628A128(v117, v73 + v67, &unk_1EB943210, &unk_1B63C3F50);
  v80 = (v73 + v68);
  v81 = v111;
  *v80 = v120;
  v80[1] = v81;
  v82 = v114;
  *(v73 + v69) = v113;
  *(v73 + v70) = v121;
  sub_1B628A128(v82, v73 + v71, &unk_1EB943680, qword_1B63C4070);
  v83 = (v73 + v72);
  v84 = v116;
  *v83 = v122;
  v83[1] = v84;
  *(v73 + v104) = v118;
  sub_1B6282B88();
  sub_1B6291034(v76, v75);
  v85 = v101;
  v86 = v100;
  v87 = v97;
  if (sub_1B63BEF24())
  {
    v88 = swift_allocObject();
    *(v88 + 16) = sub_1B62D7CF0;
    *(v88 + 24) = v73;
    v89 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v90 = *&v41[v89];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v41[v89] = v90;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v90 = sub_1B629A8E8(0, v90[2] + 1, 1, v90);
      *&v41[v89] = v90;
    }

    v93 = v90[2];
    v92 = v90[3];
    if (v93 >= v92 >> 1)
    {
      v90 = sub_1B629A8E8((v92 > 1), v93 + 1, 1, v90);
    }

    v90[2] = v93 + 1;
    v94 = &v90[2 * v93];
    v94[4] = sub_1B62B8188;
    v94[5] = v88;
    *&v41[v89] = v90;
    swift_endAccess();
  }

  [*&v123[v115] unlock];

  sub_1B6284F64(v126, v127);
  sub_1B6284EAC(v124, &unk_1EB943680, qword_1B63C4070);
  sub_1B6284EAC(v125, &unk_1EB943210, &unk_1B63C3F50);

  return v41;
}