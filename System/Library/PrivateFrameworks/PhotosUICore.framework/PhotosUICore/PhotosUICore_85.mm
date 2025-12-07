void sub_1A4704BB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A4704C1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x600))(v4);
    *v3 = !*v3;
    v2(v4, 0);
  }
}

void sub_1A4704CD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x5D0))(v4);
    *v3 = !*v3;
    v2(v4, 0);
  }
}

uint64_t sub_1A4704DB4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);

  swift_getObjectType();
  v5 = off_1F17032E8[0];

  if (!v5(a1))
  {
    swift_unknownObjectRelease();
    swift_getObjectType();
    v6 = off_1F1709208[0];
    swift_unknownObjectRetain();
    if ((v6() & 1) == 0)
    {
      swift_unknownObjectRelease();
      sub_1A42CCA40();
      swift_arrayDestroy();
      type metadata accessor for LemonadeNullNavigationParticipant();
      return sub_1A3D76DF4();
    }

    v4 = v3;
  }

  sub_1A42CCA40();
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_1A4704F14(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  sub_1A524CC54();
  v3[13] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[14] = v5;
  v3[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4704FB0, v5, v4);
}

uint64_t sub_1A4704FB0()
{
  v1 = v0[12];
  v2 = *(v1 + 32);
  v0[16] = v2;
  v0[6] = v2;
  v0[7] = &off_1F17032D0;
  v3 = *(v1 + 40);
  v0[17] = v3;
  v0[8] = v3;
  v0[9] = &off_1F17091F0;

  ObjectType = swift_getObjectType();
  v5 = off_1F17032F8;

  v10 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1A4705124;
  v8 = v0[10];
  v7 = v0[11];

  return (v10)(v8, v7, ObjectType, &off_1F17032D0);
}

uint64_t sub_1A4705124(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[22] = v4[16];
    v4[23] = v1;
    sub_1A42CCA40();
    swift_arrayDestroy();
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1A47055F0;
  }

  else
  {
    v4[19] = a1;
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1A4705264;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A4705264()
{
  v1 = v0[19];
  swift_unknownObjectRelease();
  if (v1 == 1)
  {
    ObjectType = swift_getObjectType();
    v3 = off_1F1709218;
    swift_unknownObjectRetain();
    v10 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_1A4705424;
    v6 = v0[10];
    v5 = v0[11];

    return (v10)(v6, v5, ObjectType, &off_1F17091F0);
  }

  else
  {
    v8 = v0[19];

    sub_1A42CCA40();
    swift_arrayDestroy();
    v9 = v0[1];

    return v9(v8);
  }
}

uint64_t sub_1A4705424(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[22] = v4[17];
    v4[23] = v1;
    sub_1A42CCA40();
    swift_arrayDestroy();
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1A47055F0;
  }

  else
  {
    v4[21] = a1;
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1A4705564;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A4705564()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 168);

  sub_1A42CCA40();
  swift_arrayDestroy();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A47055F0()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4705660(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  sub_1A524CC54();
  v3[11] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A47056FC, v5, v4);
}

uint64_t sub_1A47056FC()
{
  v13 = v0;
  v1 = *(v0 + 80);
  v2 = sub_1A4704DB4(*(v0 + 64));
  v4 = v3;
  *(v0 + 112) = v2;
  ObjectType = swift_getObjectType();
  if (v2 == *(v1 + 32))
  {
    sub_1A42C1E00(*(v0 + 64), &v12);
    if (v12 != 24)
    {
      v6 = *(v0 + 80);
      *(v0 + 16) = v12;
      *(v0 + 56) = 0;
      (*(*v6 + 640))(v0 + 16);
      sub_1A3F6857C(v0 + 16);
    }
  }

  v11 = (*(v4 + 48) + **(v4 + 48));
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1A47058A8;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);

  return v11(v9, v8, ObjectType, v4);
}

uint64_t sub_1A47058A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1A4705A44;
  }

  else
  {
    v4[17] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1A47059D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A47059D0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);
  v2 = *(v0 + 136);

  return v1(v2);
}

uint64_t sub_1A4705A44()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4705AB4(uint64_t a1)
{
  v1 = a1;
  sub_1A4704DB4(a1);
  v3 = v2;
  ObjectType = swift_getObjectType();
  LOBYTE(v1) = (*(v3 + 24))(v1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t sub_1A4705B1C(uint64_t a1)
{
  sub_1A4704DB4(a1);
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1A4705B84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return sub_1A4704F14(a1, a2);
}

uint64_t sub_1A4705C28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBBB04;

  return sub_1A4705660(a1, a2);
}

uint64_t sub_1A4705CCC(uint64_t a1, uint64_t a2)
{
  sub_1A4704DB4(a1);
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 56))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1A4705E3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PXSharedAlbumsActivityEntryItem_date;
  v4 = sub_1A5241144();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1A4705FE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v7 = a2;
  v9 = objc_allocWithZone(v4);
  v10 = sub_1A47066B8(a1, v7, a3, v5);

  return v10;
}

void sub_1A4706050()
{
  v1 = *(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_contributorDisplayNames);
  if (*(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_isFromMe) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2 = *(v1 + 16);
  if (v2 >= 2)
  {

    sub_1A3ECD684(v1, v1 + 32, 1, (2 * v2) | 1);
  }
}

void sub_1A47060CC()
{
  if (*(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_assetsForPreviews))
  {
    goto LABEL_9;
  }

  v1 = *(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry);
  v2 = [v1 keyAssets];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 fetchedObjects];

    if (v4)
    {
      sub_1A3D435C4();
      sub_1A524CA34();

      goto LABEL_9;
    }
  }

  v5 = [v1 keyAssetUUIDs];
  v6 = sub_1A524CA34();

  v7 = *(v6 + 16);

  if (!v7)
  {
LABEL_9:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v8 = [objc_msgSend(objc_opt_self() fetchKeyAssetsForActivity_];
  if (v8)
  {
    v9 = v8;
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v10 = sub_1A524CA34();

    if (!(v10 >> 62))
    {
      goto LABEL_8;
    }
  }

  else if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
LABEL_8:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3D435C4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A47063AC()
{
  v1 = [*(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry) contributorDisplayName];
  v2 = sub_1A524C674();

  return v2;
}

id sub_1A47065D0@<X0>(void *a1@<X8>)
{
  v4 = *(*v1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry);
  a1[3] = sub_1A3C52C70(0, &qword_1EB126820, off_1E771F6B0);
  *a1 = v4;

  return v4;
}

void sub_1A4706640(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A47066B8(void *a1, char a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_1A5241144();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry] = a1;
  v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_displayUseCase] = a2;
  v13 = a1;
  v14 = [v13 uuid];
  v15 = sub_1A524C674();
  v17 = v16;

  v18 = &v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid];
  *v18 = v15;
  v18[1] = v17;
  v19 = [v13 date];
  sub_1A52410F4();

  (*(v10 + 32))(&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_date], v12, v9);
  v20 = [v13 type];
  *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_type] = v20;
  v21 = [v13 isFromMe];
  v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_isFromMe] = v21;
  v22 = [v13 contributorDisplayNames];
  v23 = sub_1A524CA34();

  *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_contributorDisplayNames] = v23;
  v24 = [v13 avatarConfigurations];
  sub_1A3C52C70(0, &unk_1EB12CD80, off_1E771F6C0);
  v25 = sub_1A524CA34();

  *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_avatarInfos] = v25;
  v26 = [v13 albumName];
  v27 = sub_1A524C674();
  v29 = v28;

  v30 = &v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_albumName];
  *v30 = v27;
  v30[1] = v29;
  v31 = [v13 albumGUID];
  v32 = sub_1A524C674();
  v34 = v33;

  v35 = &v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_albumId];
  *v35 = v32;
  v35[1] = v34;
  v36 = [v13 message];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1A524C674();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = &v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_message];
  *v41 = v38;
  v41[1] = v40;
  v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_isPlaceholder] = a4 & 1;
  v42 = [v13 relatedCommentUUID];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1A524C674();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v47 = &v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_relatedCommentUUID];
  *v47 = v44;
  v47[1] = v46;
  if (a3)
  {
    v52 = a3;
    sub_1A43D2AD0(0);
    SendableTransfer.init(wrappedValue:)(&v52, v48, &v53);
    *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_assetsForPreviews] = v53;
  }

  else
  {
    *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_assetsForPreviews] = 0;
  }

  v54.receiver = v4;
  v54.super_class = ObjectType;
  return objc_msgSendSuper2(&v54, sel_init);
}

unint64_t sub_1A4706A78()
{
  result = qword_1EB140A88;
  if (!qword_1EB140A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140A88);
  }

  return result;
}

uint64_t type metadata accessor for SharedAlbumsActivityEntryItem(uint64_t a1)
{
  result = qword_1EB17DB80;
  if (!qword_1EB17DB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4706BB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SharedAlbumsActivityEntryItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4706C10(uint64_t a1)
{
  result = sub_1A5241144();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t *sub_1A4706D38()
{
  result = sub_1A3F67960();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBF20) = *result;
  HIWORD(dword_1EB1EBF20) = v1;
  dword_1EB1EBF24 = v2;
  return result;
}

uint64_t *sub_1A4706D70()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBF28) = *result;
  HIWORD(dword_1EB1EBF28) = v1;
  dword_1EB1EBF2C = v2;
  return result;
}

uint64_t *sub_1A4706DA8()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBF30) = *result;
  HIWORD(dword_1EB1EBF30) = v1;
  dword_1EB1EBF34 = v2;
  return result;
}

uint64_t type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload(uint64_t a1)
{
  result = qword_1EB1CF730;
  if (!qword_1EB1CF730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4706E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload(0) + 20);

  return sub_1A42BF46C(a3, v5);
}

unint64_t sub_1A4706E78()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1A4706EB4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A53C56A0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A53D0460 == a2)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1A524EAB4();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1A4706F98(uint64_t a1)
{
  v2 = sub_1A47071D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4706FD4(uint64_t a1)
{
  v2 = sub_1A47071D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4707010(void *a1)
{
  sub_1A4707530(0, &qword_1EB140A98, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A47071D8();
  sub_1A524ED34();
  v9[15] = 0;
  sub_1A524E994();
  if (!v1)
  {
    type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload(0);
    v9[14] = 1;
    type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
    sub_1A4707898(&qword_1EB131BD0, type metadata accessor for OneUpSharePlayDataSourceMessagePayload, &protocol conformance descriptor for OneUpSharePlayDataSourceMessagePayload);
    sub_1A524E9D4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A47071D8()
{
  result = qword_1EB1CF4A8[0];
  if (!qword_1EB1CF4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CF4A8);
  }

  return result;
}

void sub_1A470722C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4707530(0, &qword_1EB140AA0, MEMORY[0x1E69E6F48]);
  v19 = v6;
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A47071D8();
  sub_1A524ED14();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v15 = v9;
    v12 = v17;
    v21 = 0;
    *v11 = sub_1A524E8A4();
    v11[1] = v13;
    v14 = v13;
    v20 = 1;
    sub_1A4707898(&qword_1EB131BC8, type metadata accessor for OneUpSharePlayDataSourceMessagePayload, &protocol conformance descriptor for OneUpSharePlayDataSourceMessagePayload);
    sub_1A524E8E4();
    (*(v12 + 8))(v8, v19);
    sub_1A42BF46C(v5, v11 + *(v15 + 20));
    sub_1A4707594(v11, v16, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1A47075FC(v11);
  }
}

void sub_1A4707530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A47071D8();
    v7 = a3(a1, &type metadata for OneUpSharePlayReplaceDataSourceMessagePayload.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A4707594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A47075FC(uint64_t a1)
{
  v2 = type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A47076A0@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1CF490 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1EBF24;
  *a1 = dword_1EB1EBF20;
  a1[1] = v1;
  return result;
}

uint64_t sub_1A4707708@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1CF498 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1EBF2C;
  *a1 = dword_1EB1EBF28;
  a1[1] = v1;
  return result;
}

void sub_1A4707770(_DWORD *a1@<X8>)
{
  if (qword_1EB1CF4A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = dword_1EB1EBF34;
  *a1 = dword_1EB1EBF30;
  a1[1] = v2;
}

uint64_t sub_1A47077EC(void *a1)
{
  a1[1] = sub_1A4707898(&qword_1EB140AA8, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload, &unk_1A5359EE8);
  a1[2] = sub_1A4707898(&qword_1EB140AB0, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload, &unk_1A5359F10);
  result = sub_1A4707898(&qword_1EB140AB8, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload, &unk_1A5359F38);
  a1[3] = result;
  return result;
}

uint64_t sub_1A4707898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4707910(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  return static OneUpSharePlayDataSourceMessagePayload.== infix(_:_:)();
}

uint64_t sub_1A47079CC(uint64_t a1)
{
  result = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A4707A5C()
{
  result = qword_1EB1CF840[0];
  if (!qword_1EB1CF840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CF840);
  }

  return result;
}

unint64_t sub_1A4707AB4()
{
  result = qword_1EB1CF950;
  if (!qword_1EB1CF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CF950);
  }

  return result;
}

unint64_t sub_1A4707B0C()
{
  result = qword_1EB1CF958[0];
  if (!qword_1EB1CF958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CF958);
  }

  return result;
}

uint64_t sub_1A4707BD8@<X0>(char *a1@<X8>)
{
  v7 = 3;
  v8 = *v1;
  v3 = type metadata accessor for LemonadePickerRootViewModel(0);
  v4 = type metadata accessor for LemonadePeopleHomeView(0);
  v5 = sub_1A4708354(&unk_1EB12A120, type metadata accessor for LemonadePeopleHomeView, &unk_1A5378E50);

  return LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v8, &v7, sub_1A47082F4, v3, v4, &off_1F1731E50, v5, a1);
}

id LemonadePeopleHomeViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadePeopleHomeViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadePeopleHomeViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4707DA8(void *a1, void *a2, void *a3)
{
  sub_1A47081C4(0, &qword_1EB128FD0, MEMORY[0x1E69C2948]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v35 - v7;
  sub_1A47081C4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  type metadata accessor for PickerConfiguration(0, v17);
  v18 = PickerConfiguration.__allocating_init()();
  v19 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x2D8);
  v20 = a2;
  v19(a2);
  type metadata accessor for LemonadePhotoLibraryContext(0, v21);
  v22 = a1;
  v23 = v18;
  v24 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v22, v18, 0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LemonadeNavigationContext(0);
  sub_1A418E1E0(v16, v13);
  v25 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  LOBYTE(v36) = 3;

  v26 = a3;
  sub_1A3C799F0(v13, 0, 0, a3, v10, &v36, v24, 2);
  v27 = [objc_opt_self() defaultManager];
  v28 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager:v27 library:v24[2]];

  type metadata accessor for LemonadePickerRootViewModel(0);
  v29 = v24[2];
  v30 = sub_1A5244084();
  v31 = v35;
  (*(*(v30 - 8) + 56))(v35, 1, 1, v30);
  v32 = v23;
  v33 = v29;
  v34 = v28;
  sub_1A3C5A374();
  sub_1A49C7F18(v33, v34, v32, v31);
}

void sub_1A47081C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4708218(uint64_t a1)
{
  if (!qword_1EB140AC0)
  {
    sub_1A4708274();
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140AC0);
    }
  }
}

unint64_t sub_1A4708274()
{
  result = qword_1EB1CF9E0[0];
  if (!qword_1EB1CF9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CF9E0);
  }

  return result;
}

double sub_1A47082F4@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);

  return sub_1A49A6DE4(v3, 0, 0xE000000000000000, v4, a1);
}

uint64_t sub_1A4708354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A470839C(uint64_t a1)
{
  if (!qword_1EB140AD0)
  {
    v4[0] = type metadata accessor for LemonadePickerRootViewModel(255);
    v4[1] = type metadata accessor for LemonadePeopleHomeView(255);
    v4[2] = &off_1F1731E50;
    v4[3] = sub_1A4708354(&unk_1EB12A120, type metadata accessor for LemonadePeopleHomeView, &unk_1A5378E50);
    v2 = type metadata accessor for LemonadeSpecsProviderView(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB140AD0);
    }
  }
}

double PhotoStyleCollection.elements.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotoStyleCollection_elements;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void PhotoStyleCollection.selectedElement.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection, &protocol conformance descriptor for PhotoStyleCollection);
  v1 = v0;
  sub_1A5245714();
}

void sub_1A470896C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection, &protocol conformance descriptor for PhotoStyleCollection);
  v1 = v0;
  sub_1A5245714();
}

void sub_1A4708A2C(void **a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection, &protocol conformance descriptor for PhotoStyleCollection);
  v3 = v2;
  sub_1A5245714();
}

void sub_1A4708B00(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection, &protocol conformance descriptor for PhotoStyleCollection);
  v3 = v2;
  sub_1A5245724();
}

void sub_1A4708BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A470B344(0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = objc_allocWithZone(v6);
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection, &protocol conformance descriptor for PhotoStyleCollection);
  sub_1A5245754();
}

void PhotoStyleCollection.createMutator()()
{
  type metadata accessor for PhotoStyleCollection.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140B00, type metadata accessor for PhotoStyleCollection.Mutator, &protocol conformance descriptor for PhotoStyleCollection.Mutator);
  sub_1A52456D4();
}

void sub_1A4708EAC(uint64_t a1)
{
  swift_allocObject();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140B00, type metadata accessor for PhotoStyleCollection.Mutator, &protocol conformance descriptor for PhotoStyleCollection.Mutator);
  sub_1A52456D4();
}

void PhotoStyleCollection.Mutator.selectedIndex.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4708FD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4709054(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleCollection.Mutator.selectedIndex.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleCollection.Mutator.selectedIndex.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

uint64_t PhotoStyleCollection.Mutator.deinit()
{
  v1 = OBJC_IVAR____TtCC12PhotosUICore20PhotoStyleCollection7Mutator__selectedIndex;
  sub_1A470B400(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotoStyleCollection.Mutator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC12PhotosUICore20PhotoStyleCollection7Mutator__selectedIndex;
  sub_1A470B400(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A47092E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A470935C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A47093CC(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void PhotoStyleCollection.description.getter()
{
  v1 = v0;
  sub_1A524E404();

  MEMORY[0x1A5907B60](*&v1[OBJC_IVAR___PXPhotoStyleCollection_name], *&v1[OBJC_IVAR___PXPhotoStyleCollection_name + 8]);
  MEMORY[0x1A5907B60](539828256, 0xE400000000000000);
  v2 = OBJC_IVAR___PXPhotoStyleCollection_elements;
  swift_beginAccess();
  if (*&v1[v2] >> 62)
  {
    sub_1A524E2B4();
  }

  v3 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v3);

  MEMORY[0x1A5907B60](0x746E656D656C6520, 0xEC00000023282073);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection, &protocol conformance descriptor for PhotoStyleCollection);
  v4 = v1;
  sub_1A5245714();
}

id PhotoStyleCollection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotoStyleCollection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4709888(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR___PXPhotoStyleCollection_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47098A4()
{
  type metadata accessor for PhotoStyleCollection.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140B00, type metadata accessor for PhotoStyleCollection.Mutator, &protocol conformance descriptor for PhotoStyleCollection.Mutator);
  sub_1A52456D4();
}

void sub_1A4709984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A470C3D0(&qword_1EB140B50, type metadata accessor for PhotoStyleCollection, &protocol conformance descriptor for PhotoStyleCollection);

  sub_1A5245F44();
}

id sub_1A4709A08@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR___PXPhotoStyleCollection_observable);
  *a1 = v2;
  return v2;
}

void sub_1A4709A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection, &protocol conformance descriptor for PhotoStyleCollection);

  sub_1A5245C54();
}

uint64_t static PhotoStyleCollection.wantsUT6PreferredOrdering()()
{
  v0 = PLDeviceRegionCode();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1A524C674();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v8[0] = v2;
  v8[1] = v4;
  MEMORY[0x1EEE9AC00](v0);
  v7[2] = v8;
  v5 = sub_1A46E7664(sub_1A46E7788, v7, &unk_1F1720C08);
  sub_1A3C69C5C(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  swift_arrayDestroy();

  return v5 & 1;
}

void sub_1A4709C54()
{
  sub_1A470B344(0);
  MEMORY[0x1EEE9AC00](v0);
  sub_1A3C69C5C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52F9790;
  v1 = objc_opt_self();
  v2 = *MEMORY[0x1E69BE128];
  v3 = [v1 semanticStyleCastDisplayName_];

  if (v3)
  {
    sub_1A524C674();
  }

  *(swift_allocObject() + 16) = xmmword_1A52F9790;
  v4 = v2;
  v5 = [v1 semanticStyleCastDisplayName_];

  if (v5)
  {
    v6 = sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v6 = 0x6C616E696769724FLL;
    v8 = 0xE800000000000000;
  }

  type metadata accessor for PhotoStyleElement(0);
  v9 = v4;
  v10 = sub_1A40D35BC();
  sub_1A40D35C0(v10, v11, v6, v8, v9, 0.0, 0.0, 0.0);
}

uint64_t (*static Array<A>.originalCollection.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB1CFA70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static Array<A>.allSystemStylesAsCollections(customOrder:reversed:)(_BYTE *a1, char a2)
{
  sub_1A470B344(0);
  v34 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v39[0]) = *a1;
  v7 = sub_1A40D5844(v39);
  if (a2)
  {
    v7 = sub_1A470A544(v7, v8);
  }

  if (v7 >> 62)
  {
    v25 = v7;
    v9 = sub_1A524E2B4();
    v7 = v25;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_15:

    return MEMORY[0x1E69E7CC0];
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_5:
  v10 = v7;
  v39[4] = MEMORY[0x1E69E7CC0];
  result = sub_1A524E554();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v12 = objc_opt_self();
    v29 = v10 & 0xC000000000000001;
    v30 = v12;
    v27 = v5 + 8;
    v28 = v5 + 32;
    v26 = xmmword_1A52F9790;
    v31 = v9;
    v32 = v10;
    if (v29)
    {
      v18 = MEMORY[0x1A59097F0](0, v10);
    }

    else
    {
      v18 = *(v10 + 32);
    }

    v19 = v18;
    v20 = sub_1A40D611C();
    v21 = sub_1A524C674();
    v37 = v22;
    v38 = v21;

    v23 = sub_1A40D611C();
    v24 = [v30 semanticStyleCastDisplayName_];

    if (v24)
    {
      v13 = sub_1A524C674();
      v35 = v14;
      v36 = v13;
    }

    else
    {
      v35 = 0xE000000000000000;
      v36 = 0;
    }

    sub_1A3C69C5C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = v26;
    *(v15 + 32) = v19;
    v16 = objc_allocWithZone(type metadata accessor for PhotoStyleCollection(0));
    v39[0] = 0;
    v39[3] = 1;
    sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection, &protocol conformance descriptor for PhotoStyleCollection);
    v17 = v19;
    sub_1A5245754();
  }

  __break(1u);
  return result;
}

unint64_t sub_1A470A544(uint64_t a1, __n128 a2)
{
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v21 = a1;
    v22 = sub_1A524E2B4();
    if (v22)
    {
      v23 = v22;
      v2 = sub_1A40C9D70(v22, 0);
      sub_1A470AFE4(v2 + 32, v23, v21, v24);
      v26 = v25;

      if (v26 != v23)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v3 = *(v2 + 16);
        v4 = v3 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1A524E2B4();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v3 = a1;
    v4 = a1 / 2;
LABEL_6:
    if (v3 + 1 < 3)
    {
      return v2;
    }

    v6 = -v4;
    v7 = 4;
    while (1)
    {
      v8 = v3 - (v7 - 3);
      if (__OFSUB__(v3, v7 - 3))
      {
        break;
      }

      a1 = v7 - 4;
      if (v7 - 4 != v8)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1A59097F0](a2);
          v12 = MEMORY[0x1A59097F0](v3 - (v7 - 3), v2);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v9)
          {
            goto LABEL_32;
          }

          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          v10 = *(v2 + 8 * v8 + 32);
          v11 = *(v2 + 8 * v7);
          v12 = v10;
        }

        v13 = v12;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_1A3E2AE98(v2, v14);
          v15 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v2 & 0xFFFFFFFFFFFFFF8;
        v17 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v7);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v7) = v13;

        if ((v2 & 0x8000000000000000) != 0 || v15)
        {
          a1 = sub_1A3E2AE98(v2, v18);
          v2 = a1;
          v16 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v8 >= *(v16 + 16))
        {
          goto LABEL_34;
        }

        v19 = v16 + 8 * v8;
        v20 = *(v19 + 32);
        *(v19 + 32) = v11;
      }

      ++v7;
      if (v6 + v7 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t static Array<A>.allCreativeStylesAsCollections()()
{
  v0 = [objc_opt_self() allCreativeCasts];
  type metadata accessor for PISemanticStyleCast(0);
  v1 = sub_1A524CA34();

  v2 = *(v1 + 16);
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    result = sub_1A524E554();
    v4 = 0;
    while (v4 < *(v1 + 16))
    {
      v5 = v4 + 1;
      v7 = *(v1 + 8 * v4 + 32);
      v6 = v7;
      sub_1A470A88C(&v7);

      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      result = sub_1A524E524();
      v4 = v5;
      if (v2 == v5)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1A470A88C(void *a1)
{
  sub_1A470B344(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = *a1;
  v5 = [objc_opt_self() defaultValuesForCast_];
  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v6 = sub_1A524CA34();

  sub_1A524C674();
  v7 = [objc_opt_self() semanticStyleCastDisplayName_];
  if (v7)
  {
    v8 = v7;
    sub_1A524C674();
  }

  sub_1A3C69C5C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52F9790;
  v9 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1A59097F0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v10 = *(v6 + 32);
  }

  v11 = v10;
  [v10 doubleValue];
  v13 = v12;

  if (!v9)
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v14 = *(v6 + 40);
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = MEMORY[0x1A59097F0](1, v6);
LABEL_10:
  v15 = v14;
  [v14 doubleValue];
  v17 = v16;

  if (v9)
  {
    v18 = MEMORY[0x1A59097F0](2, v6);
    goto LABEL_14;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v18 = *(v6 + 48);
LABEL_14:
    v19 = v18;

    type metadata accessor for PhotoStyleElement(0);
    [v19 doubleValue];
    v21 = v20;

    v22 = sub_1A40D35BC();
    v24 = v23;
    v25 = sub_1A3D8D2BC();
    sub_1A40D35C0(v22, v24, v25, v26, v4, v13, v17, v21);
  }

LABEL_18:
  __break(1u);
}

void sub_1A470AD7C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A470ADFC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;

  return result;
}

uint64_t (*static Array<A>.sample.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB1CFA80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_1A470AEEC(unint64_t a1, void (*a2)(uint64_t, void, uint64_t), __n128 a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1A524E2B4();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v7 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v6);
    v9 = v7 + v6;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = sub_1A524E2B4();
  v8 = __OFADD__(v16, v6);
  v9 = v16 + v6;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(v9, 1);
  v10 = *v3;
  v11 = *v3 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v3 = v10;
    return;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1A470AFE4(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A470C468(0, &qword_1EB1400D8, type metadata accessor for PhotoStyleElement);
          sub_1A470C418(&qword_1EB1400E8, &qword_1EB1400D8, type metadata accessor for PhotoStyleElement);
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3D5C268(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PhotoStyleElement(0);
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

uint64_t sub_1A470B184(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A470C468(0, &qword_1EB140B58, type metadata accessor for PhotoStyleCollection);
          sub_1A470C418(&qword_1EB140B60, &qword_1EB140B58, type metadata accessor for PhotoStyleCollection);
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A414CAD4(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PhotoStyleCollection(0);
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

void sub_1A470B344(uint64_t a1)
{
  if (!qword_1EB140AF8)
  {
    type metadata accessor for PhotoStyleCollection(255);
    sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection, &protocol conformance descriptor for PhotoStyleCollection);
    sub_1A5245764();
  }
}

void sub_1A470B400(uint64_t a1)
{
  if (!qword_1EB140B08)
  {
    type metadata accessor for PhotoStyleCollection.Mutator(255);
    sub_1A470C3D0(&qword_1EB140B00, type metadata accessor for PhotoStyleCollection.Mutator, &protocol conformance descriptor for PhotoStyleCollection.Mutator);
    sub_1A52456C4();
  }
}

void sub_1A470B49C()
{
  sub_1A470B344(0);
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1A524C634();
  v2 = PELocalizedString();

  sub_1A524C674();
  sub_1A40D57A8();
}

void sub_1A470B754()
{
  sub_1A470B344(0);
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1A524C634();
  v2 = PELocalizedString();

  sub_1A524C674();
  sub_1A40D5AA0(v3, v4);
  v5 = objc_allocWithZone(type metadata accessor for PhotoStyleCollection(0));
  v6 = 0;
  v7 = 1;
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection, &protocol conformance descriptor for PhotoStyleCollection);
  sub_1A5245754();
}

void _sSa12PhotosUICoreAA20PhotoStyleCollectionCRszlE08standardD13AsCollectionsSayACGyFZ_0()
{
  sub_1A470B344(0);
  MEMORY[0x1EEE9AC00](v0);
  sub_1A3C69C5C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52F9790;
  v1 = objc_opt_self();
  v2 = *MEMORY[0x1E69BE130];
  v3 = [v1 semanticStyleCastDisplayName_];
  if (v3)
  {
    v4 = v3;
    sub_1A524C674();
  }

  *(swift_allocObject() + 16) = xmmword_1A52F9790;
  v5 = [v1 semanticStyleCastDisplayName_];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A524C674();
    v9 = v8;
  }

  else
  {
    v7 = 0x647261646E617453;
    v9 = 0xE800000000000000;
  }

  type metadata accessor for PhotoStyleElement(0);
  v10 = sub_1A40D35BC();
  sub_1A40D35C0(v10, v11, v7, v9, v2, 0.0, 0.0, 0.0);
}

unint64_t sub_1A470BF08()
{
  result = qword_1EB140B10;
  if (!qword_1EB140B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140B10);
  }

  return result;
}

unint64_t sub_1A470BF60()
{
  result = qword_1EB140B18;
  if (!qword_1EB140B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140B18);
  }

  return result;
}

unint64_t sub_1A470BFB8()
{
  result = qword_1EB140B20;
  if (!qword_1EB140B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140B20);
  }

  return result;
}

unint64_t sub_1A470C010()
{
  result = qword_1EB140B28;
  if (!qword_1EB140B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140B28);
  }

  return result;
}

unint64_t sub_1A470C068()
{
  result = qword_1EB140B30;
  if (!qword_1EB140B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140B30);
  }

  return result;
}

unint64_t sub_1A470C198()
{
  result = qword_1EB140B48;
  if (!qword_1EB140B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140B48);
  }

  return result;
}

void sub_1A470C204(uint64_t a1)
{
  sub_1A470B344(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A470C2DC(uint64_t a1)
{
  sub_1A470B400(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1A470C3D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A470C418(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A470C468(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A470C468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524CB74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A470C4C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1A52444C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C56994(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_1A5244FE4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  sub_1A5244484();
  isEscapingClosureAtFileLocation = (*(v14 + 88))(v18, v13);
  if (isEscapingClosureAtFileLocation == *MEMORY[0x1E69C1320])
  {
    v14 = objc_opt_self();
    v37 = sub_1A470DA84;
    v38 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1A3D35A90;
    v36 = &block_descriptor_260;
    a3 = _Block_copy(&aBlock);

    _Block_release(a3);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation == *MEMORY[0x1E69C1308])
  {
    v14 = objc_opt_self();
    v37 = sub_1A470DA80;
    v38 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1A3D35A90;
    v36 = &block_descriptor_3_7;
    a3 = _Block_copy(&aBlock);

    _Block_release(a3);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation != *MEMORY[0x1E69C1378])
  {
    (*(v14 + 8))(v18, v13);
    return 0;
  }

  v20 = sub_1A524CCB4();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v21;
  v22[5] = a2;
  v22[6] = a3;

  sub_1A3D4D930(0, 0, v12, &unk_1A535A648, v22);

LABEL_9:
  (*(v7 + 16))(v9, a1, v6);
  v23 = sub_1A5246F04();
  v24 = sub_1A524D224();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v25 = 136315138;
    sub_1A5244484();
    v26 = sub_1A524C714();
    v28 = v27;
    (*(v7 + 8))(v9, v6);
    sub_1A3C2EF94(v26, v28, &aBlock);
  }

  (*(v7 + 8))(v9, v6);
  if (sub_1A52455B4())
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v30 = [v29 description];

    sub_1A524C674();
    sub_1A52455C4();
  }

  return 1;
}

uint64_t sub_1A470CB18()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler____lazy_storage___tccStatusProvider;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler____lazy_storage___tccStatusProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler____lazy_storage___tccStatusProvider);
  }

  else
  {
    type metadata accessor for SystemTCCStatusProvider();
    v2 = SystemTCCStatusProvider.__allocating_init()();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1A470CB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_1A524E5E4();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A470CC4C, 0, 0);
}

uint64_t sub_1A470CC4C(uint64_t a1)
{
  sub_1A524EBB4();
  v2 = swift_task_alloc();
  *(v1 + 120) = v2;
  *v2 = v1;
  v2[1] = sub_1A470CD18;

  return sub_1A3DCFAB0(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A470CD18()
{
  v2 = *v1;

  v3 = v2[14];
  v4 = v2[13];
  v5 = v2[12];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1A470ECA4;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1A470CEB0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A470CEB0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = sub_1A470CB18();
    v0[17] = v2;
    v6 = (*(*v2 + 88) + **(*v2 + 88));
    v3 = swift_task_alloc();
    v0[18] = v3;
    *v3 = v0;
    v3[1] = sub_1A470D03C;

    return v6(v0 + 20);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A470D03C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A470D154, 0, 0);
}

uint64_t sub_1A470D154()
{
  v6 = v0;
  v4 = *(v0 + 160);
  v5 = 2;
  *(v0 + 161) = static TCCAuthorizationStatus.== infix(_:_:)(&v4, &v5);
  swift_weakInit();
  sub_1A524CC54();
  *(v0 + 152) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A470D224, v2, v1);
}

uint64_t sub_1A470D224()
{
  v1 = *(v0 + 161);

  if (v1 == 1)
  {
    (*(v0 + 80))(v2);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1A470D348();
    }
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1A470D2E0, 0, 0);
}

uint64_t sub_1A470D2E0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A470D348()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler_log;
  v6 = objc_opt_self();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  (*(v2 + 32))(v8 + v7, v4, v1);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1A470E420;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1A3D78DD0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D35A90;
  aBlock[3] = &block_descriptor_22_3;
  v10 = _Block_copy(aBlock);

  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }
}

void sub_1A470D57C(void *a1, uint64_t a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1A524C634();
  v8 = PXMemoryCreationLocalizedString(v7);

  if (!v8)
  {
    sub_1A524C674();
    v8 = sub_1A524C634();
  }

  [a1 setTitle_];

  v9 = sub_1A524C634();
  v10 = PXMemoryCreationLocalizedString(v9);

  if (!v10)
  {
    sub_1A524C674();
    v10 = sub_1A524C634();
  }

  [a1 setMessage_];

  v11 = sub_1A524C634();
  v12 = PXMemoryCreationLocalizedString(v11);

  if (!v12)
  {
    sub_1A524C674();
    v12 = sub_1A524C634();
  }

  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_1A470E490;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_28_4;
  v15 = _Block_copy(aBlock);

  [a1 addActionWithTitle:v12 style:0 action:v15];
  _Block_release(v15);

  v16 = sub_1A524C634();
  v17 = PXMemoryCreationLocalizedString(v16);

  if (!v17)
  {
    sub_1A524C674();
    v17 = sub_1A524C634();
  }

  [a1 addActionWithTitle:v17 style:0 action:0];
}

void sub_1A470D8CC(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = objc_opt_self();
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  aBlock[4] = sub_1A470E4F0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D6084C;
  aBlock[3] = &block_descriptor_34_5;
  v8 = _Block_copy(aBlock);

  [v5 navigateToDestination:13 completion:v8];
  _Block_release(v8);
}

void sub_1A470DA88(void *a1)
{
  sub_1A3C56994(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = aBlock - v10;
  v12 = sub_1A524C634();
  v13 = PXMemoryCreationLocalizedString(v12);

  if (!v13)
  {
    sub_1A524C674();
    v13 = sub_1A524C634();
  }

  [a1 setTitle_];

  v14 = sub_1A524C634();
  v15 = PXMemoryCreationLocalizedString(v14);

  if (!v15)
  {
    sub_1A524C674();
    v15 = sub_1A524C634();
  }

  [a1 setMessage_];

  sub_1A5240E34();
  v16 = &selRef_actionPerformerBottomPaddingForPresentingToast_;
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A470E6E8(v4, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v17 = *(v6 + 32);
    v17(v11, v4, v5);
    v18 = sub_1A524C634();
    v19 = PXMemoryCreationLocalizedString(v18);

    if (!v19)
    {
      sub_1A524C674();
      v19 = sub_1A524C634();
    }

    (*(v6 + 16))(v8, v11, v5);
    v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v21 = swift_allocObject();
    v17((v21 + v20), v8, v5);
    aBlock[4] = sub_1A470E7D4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_54_1;
    v22 = _Block_copy(aBlock);

    v16 = &selRef_actionPerformerBottomPaddingForPresentingToast_;
    [a1 addActionWithTitle:v19 style:0 action:v22];
    _Block_release(v22);

    (*(v6 + 8))(v11, v5);
  }

  v23 = sub_1A524C634();
  v24 = PXMemoryCreationLocalizedString(v23);

  if (!v24)
  {
    sub_1A524C674();
    v24 = sub_1A524C634();
  }

  [a1 v16[85]];
}

void sub_1A470DF04(void *a1)
{
  v2 = sub_1A524C634();
  v3 = PXMemoryCreationLocalizedString(v2);

  if (!v3)
  {
    sub_1A524C674();
    v3 = sub_1A524C634();
  }

  [a1 setTitle_];

  v4 = sub_1A524C634();
  v5 = PXMemoryCreationLocalizedString(v4);

  if (!v5)
  {
    sub_1A524C674();
    v5 = sub_1A524C634();
  }

  [a1 setMessage_];

  v6 = sub_1A524C634();
  v7 = PXMemoryCreationLocalizedString(v6);

  if (!v7)
  {
    sub_1A524C674();
    v7 = sub_1A524C634();
  }

  [a1 addActionWithTitle:v7 style:0 action:0];
}

uint64_t sub_1A470E090()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler_log;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A470E13C()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler_log;
  v2 = sub_1A3C4A780();
  v3 = sub_1A5246F24();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler____lazy_storage___tccStatusProvider) = 0;
  return v0;
}

uint64_t sub_1A470E1D0(uint64_t a1)
{
  sub_1A470E6A0(&qword_1EB140B68, type metadata accessor for OpenExternalURLOptionsKey, &unk_1A535A824);
  sub_1A470E6A0(&qword_1EB140BA0, type metadata accessor for OpenExternalURLOptionsKey, &unk_1A535A778);

  return sub_1A524E7E4();
}

uint64_t sub_1A470E28C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A470CB88(v5, v6, v7, v2, v3, v4);
}

uint64_t type metadata accessor for GenerativeStoryAppleMusicUnavailableHandler(uint64_t a1)
{
  result = qword_1EB1D00F0;
  if (!qword_1EB1D00F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A470E388(uint64_t a1)
{
  result = sub_1A5246F24();
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

void sub_1A470E420(void *a1)
{
  v3 = *(sub_1A5246F24() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1A470D57C(a1, v4);
}

void sub_1A470E490()
{
  v1 = *(sub_1A5246F24() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1A470D8CC(v2);
}

void sub_1A470E4F0(char a1, void *a2)
{
  sub_1A5246F24();
  if ((a1 & 1) == 0)
  {
    v4 = a2;
    oslog = sub_1A5246F04();
    v5 = sub_1A524D244();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v6 = 136315138;
      v7 = a2;
      sub_1A3C56994(0, &qword_1EB139220, sub_1A3DBD9A0);
      v8 = sub_1A524C714();
      sub_1A3C2EF94(v8, v9, &v11);
    }
  }
}

uint64_t sub_1A470E6A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A470E6E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56994(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_15Tm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

void sub_1A470E7D4()
{
  sub_1A5240E64();
  v2 = [objc_opt_self() px_sharedApplication];
  v0 = sub_1A5240D44();
  sub_1A470E918(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1A470E6A0(&qword_1EB140B68, type metadata accessor for OpenExternalURLOptionsKey, &unk_1A535A824);
  v1 = sub_1A524C3D4();

  [v2 openURL:v0 options:v1 completionHandler:0];
}

unint64_t sub_1A470E918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A470EA3C(0);
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A470EADC(v4, &v11);
      v5 = v11;
      result = sub_1A3C8BF74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A3C57128(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A470EA3C(uint64_t a1)
{
  if (!qword_1EB140B70)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_1A470E6A0(&qword_1EB140B68, type metadata accessor for OpenExternalURLOptionsKey, &unk_1A535A824);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140B70);
    }
  }
}

uint64_t sub_1A470EADC(uint64_t a1, uint64_t a2)
{
  sub_1A470EB40(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A470EB40(uint64_t a1)
{
  if (!qword_1EB140B78)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB140B78);
    }
  }
}

uint64_t sub_1A470ECA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  sub_1A470FAE0(0, &unk_1EB1276B0, MEMORY[0x1E6980E30]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v81 - v5;
  sub_1A470FFBC(0, &qword_1EB140BA8, MEMORY[0x1E697F948], v4);
  v96 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v81 - v8;
  sub_1A470F8D0(0, &qword_1EB140BD0, sub_1A470F894, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v92 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v81 - v11;
  v89 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1A5241F84();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5243834();
  v81 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A470FAE0(0, &unk_1EB129180, MEMORY[0x1E69C2060]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v81 - v18;
  v83 = sub_1A5243EC4();
  v82 = *(v83 - 8);
  v20 = MEMORY[0x1EEE9AC00](v83);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A470F894(0, v20);
  v90 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v85 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A470F858(0, v24);
  v95 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v91 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1[3];
  v29 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v28);
  if ((*(v29 + 48))(v28, v29))
  {
    v30 = v1[3];
    v31 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v30);
    *&v97 = (*(v31 + 40))(v30, v31);
    *(&v97 + 1) = v32;
    sub_1A3D5F9DC();
    v33 = sub_1A524A464();
    v35 = v34;
    v37 = v36;
    sub_1A524A174();
    v38 = *MEMORY[0x1E6980E28];
    v39 = sub_1A524A154();
    v40 = *(v39 - 8);
    (*(v40 + 104))(v6, v38, v39);
    (*(v40 + 56))(v6, 0, 1, v39);
    sub_1A524A1B4();
    sub_1A441183C(v6);
    v41 = sub_1A524A3C4();
    v43 = v42;
    LOBYTE(v39) = v44;

    sub_1A3E04DF4(v33, v35, v37 & 1);

    *&v97 = sub_1A524B434();
    v45 = sub_1A524A374();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    sub_1A3E04DF4(v41, v43, v39 & 1);

    v52 = sub_1A524B434();
    LOBYTE(v97) = v49 & 1;
    *v9 = v45;
    *(v9 + 1) = v47;
    v9[16] = v49 & 1;
    *(v9 + 3) = v51;
    *(v9 + 4) = 0x3FE4CCCCCCCCCCCDLL;
    *(v9 + 5) = v52;
    *(v9 + 6) = 0x402E000000000000;
    *(v9 + 7) = 0;
    *(v9 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1A470F8D0(0, &qword_1EB140BC8, sub_1A470FA88, MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    sub_1A470FB34(v53);
    sub_1A470FCE4();
    return sub_1A5249744();
  }

  else
  {
    v55 = v1[3];
    v56 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v55);
    v57 = (*(v56 + 32))(v55, v56);
    if (v57)
    {
      v58 = v57;
      v100 = 0u;
      v101 = 0u;
      v102 = 1;
      v59 = sub_1A52429A4();
      (*(*(v59 - 8) + 56))(v19, 1, 1, v59);
      v81[13](v16, *MEMORY[0x1E69C2678], v14);
      v81 = v58;
      sub_1A5243ED4();
      sub_1A524B404();
      sub_1A524B474();

      v60 = v84;
      sub_1A5241F64();
      v61 = *(v89 + 20);
      v62 = *MEMORY[0x1E697F468];
      v63 = sub_1A52494A4();
      v64 = v88;
      (*(*(v63 - 8) + 104))(&v88[v61], v62, v63);
      __asm { FMOV            V0.2D, #16.0 }

      *v64 = _Q0;
      sub_1A470FA40(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
      sub_1A470FA40(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
      v70 = v85;
      v71 = v83;
      sub_1A524A4E4();
      sub_1A470FD9C(v64);
      (*(v86 + 8))(v60, v87);
      v72 = (*(v82 + 8))(v22, v71);
      v73 = v2[5];
      v74.n128_f64[0] = (*(*v73 + 1248))(v72);
      (*(*v73 + 1296))(v74);
      sub_1A524BC74();
      sub_1A52481F4();
      v75 = (v70 + *(v90 + 36));
      v76 = v98;
      *v75 = v97;
      v75[1] = v76;
      v75[2] = v99;
      sub_1A470FDF8(v70, v93, sub_1A470F894);
      swift_storeEnumTagMultiPayload();
      sub_1A470FBB4(v77);
      v78 = v91;
      sub_1A5249744();

      sub_1A470FE60(v70, sub_1A470F894);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1A470FBB4(v79);
      v78 = v91;
      sub_1A5249744();
    }

    sub_1A470FDF8(v78, v9, sub_1A470F858);
    swift_storeEnumTagMultiPayload();
    sub_1A470F8D0(0, &qword_1EB140BC8, sub_1A470FA88, MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    sub_1A470FB34(v80);
    sub_1A470FCE4();
    sub_1A5249744();
    return sub_1A470FE60(v78, sub_1A470F858);
  }
}

void sub_1A470F8D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A470F93C(uint64_t a1)
{
  if (!qword_1EB140BC0)
  {
    sub_1A5243EC4();
    sub_1A5248A14();
    sub_1A470FA40(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A470FA40(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140BC0);
    }
  }
}

uint64_t sub_1A470FA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A470FA88()
{
  if (!qword_1EB124060)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124060);
    }
  }
}

void sub_1A470FAE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A470FB34(double a1)
{
  result = qword_1EB140BD8;
  if (!qword_1EB140BD8)
  {
    sub_1A470F858(255, a1);
    sub_1A470FBB4(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140BD8);
  }

  return result;
}

unint64_t sub_1A470FBB4(double a1)
{
  result = qword_1EB140BE0;
  if (!qword_1EB140BE0)
  {
    sub_1A470F894(255, a1);
    sub_1A5243EC4();
    sub_1A5248A14();
    sub_1A470FA40(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A470FA40(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140BE0);
  }

  return result;
}

unint64_t sub_1A470FCE4()
{
  result = qword_1EB140BE8;
  if (!qword_1EB140BE8)
  {
    sub_1A470F8D0(255, &qword_1EB140BC8, sub_1A470FA88, MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    sub_1A4234634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140BE8);
  }

  return result;
}

uint64_t sub_1A470FD9C(uint64_t a1)
{
  v2 = sub_1A5248A14();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A470FDF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A470FE60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A470FEC0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1A3C34460(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

unint64_t sub_1A470FF20(double a1)
{
  result = qword_1EB140BF0;
  if (!qword_1EB140BF0)
  {
    sub_1A470FFBC(255, &qword_1EB140BF8, MEMORY[0x1E697F960], a1);
    sub_1A470FB34(v2);
    sub_1A470FCE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140BF0);
  }

  return result;
}

void sub_1A470FFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A470F858(255, a4);
    v8 = v7;
    sub_1A470F8D0(255, &qword_1EB140BC8, sub_1A470FA88, MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

double sub_1A4710064(void *a1)
{
  v2 = v1;
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v1 + 288);
  v13 = v12(v9);
  if (v13)
  {
    v15 = v13;
    if (a1)
    {
      sub_1A3C52C70(0, &qword_1EB126C40, 0x1E6978840);
      v16 = a1;
      v17 = sub_1A524DBF4();

      if (v17)
      {
        return result;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return result;
  }

  v18 = sub_1A41CDD28();
  (*(v8 + 16))(v11, v18, v7);

  v19 = sub_1A5246F04();
  v20 = sub_1A524D264();
  if (os_log_type_enabled(v19, v20))
  {
    v30 = v6;
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    v22 = (v12)();
    if (v22)
    {
      v23 = v22;
      v24 = [v22 count];
    }

    else
    {
      v24 = 0;
    }

    *(v21 + 4) = v24;

    _os_log_impl(&dword_1A3C1C000, v19, v20, "ParallaxAssetViewModel: asset count changed to %ld", v21, 0xCu);
    MEMORY[0x1A590EEC0](v21, -1, -1);

    v6 = v30;
  }

  else
  {
  }

  (*(v8 + 8))(v11, v7);
  v25 = sub_1A524CCB4();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  sub_1A524CC54();

  v26 = sub_1A524CC44();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v2;
  sub_1A3D4D930(0, 0, v6, &unk_1A535AF90, v27);

  return result;
}

uint64_t sub_1A47103EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4710484, v6, v5);
}

uint64_t sub_1A4710484()
{

  v1.n128_f64[0] = sub_1A471AAB0();
  v2 = *(v0 + 8);

  return v2(v1);
}

void (*sub_1A47104E8(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1A4710534;
}

void sub_1A4710534(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v8 = *(v4 + 16);
  *(v4 + 16) = *a1;
  v5 = v3;
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    sub_1A4710064(v8);
  }

  else
  {
    sub_1A4710064(v8);
  }
}

uint64_t sub_1A47105B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t sub_1A471060C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 296);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A471066C()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  v1 = v0[2];
  v2 = v1;
  return v1;
}

void sub_1A47106D8(void *a1)
{
  v3 = v1[2];
  if (!v3)
  {
    if (!a1)
    {
      v10 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1296))(v8);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126C40, 0x1E6978840);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = v1[2];
LABEL_8:
  v1[2] = a1;
  v9 = v5;
  sub_1A4710064(v10);
}

void sub_1A4710870()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  v4 = v1;
  sub_1A4710064(v3);
}

uint64_t (*sub_1A47108BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A47104E8(v4);
  return sub_1A4710A0C;
}

uint64_t type metadata accessor for ParallaxAssetViewModel(uint64_t a1)
{
  result = qword_1EB169DC0;
  if (!qword_1EB169DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4710A64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4710B0C()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  swift_beginAccess();
  return v0[24];
}

void sub_1A4710B8C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[24] == v2)
  {
    v1[24] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1296))(v4);
  }
}

uint64_t (*sub_1A4710C88(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3F2894C(v4);
  return sub_1A4710DD8;
}

double sub_1A4710DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v6);
  KeyPath = swift_getKeyPath();
  (*(*v3 + 1288))(KeyPath);

  v9 = v3[4];
  if (a1)
  {
    if (v9)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_5:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v9)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1A4711210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[79] = a7;
  v7[78] = a6;
  v7[77] = a5;
  v7[76] = a4;
  sub_1A524CC54();
  v7[80] = sub_1A524CC44();
  v9 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47112B4, v9, v8);
}

uint64_t sub_1A47112B4()
{
  v27 = v0;
  v1 = v0[76];

  v3 = (*v1 + 1240);
  v4 = *v3;
  v5 = *(*v3)(v2);
  (*(v5 + 256))();

  memcpy(v0 + 2, v0 + 39, 0x123uLL);
  enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0 = get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v0 + 2);
  v7 = enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0;
  if (enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0 != 1)
  {
    enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0 = sub_1A471D1E4((v0 + 39), &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  }

  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[77];
  v11 = *v4(enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0);
  (*(v11 + 416))(v10, v9, v8);

  v13 = v4(v12);
  v14 = (*(*v13 + 232))(v13);

  v15 = [v14 count];

  if (v15 < 1)
  {
LABEL_8:
    if (v7 == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v17 = v0[76];
  if (*(v17 + 340) <= 1u && *(v17 + 340))
  {
  }

  else
  {
    v18 = sub_1A524EAB4();

    if ((v18 & 1) == 0)
    {
      v19 = v0[76];
      KeyPath = swift_getKeyPath();
      v21 = swift_task_alloc();
      *(v21 + 16) = v19;
      *(v21 + 24) = 1;
      (*(*v19 + 1296))(KeyPath, sub_1A471E56C, v21, MEMORY[0x1E69E7CA8] + 8);

      goto LABEL_8;
    }
  }

  v25 = *(v17 + 340);
  *(v17 + 340) = 1;
  v26[0] = v25;
  v16 = sub_1A4713A84(v26);
  if (v7 != 1)
  {
LABEL_9:
    v22 = v4(v16);
    (*(*v22 + 552))(v22);
  }

LABEL_10:
  v23 = v0[1];

  return v23();
}

BOOL sub_1A47116BC()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[4] != 0;
}

void sub_1A4711728()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A471179C(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1288))();

  *a2 = v3[4];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4711850(uint64_t a1)
{
  if (v1[4])
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1296))(v3);

    return result;
  }

  v1[4] = 0;

  return result;
}

uint64_t sub_1A4711998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4711A30, v6, v5);
}

uint64_t sub_1A4711A30()
{
  v1 = *(v0 + 16);

  v3 = (*(*v1 + 1240))(v2);
  v4 = (*(*v1 + 448))();
  (*(*v3 + 368))(v4 & 1);

  v5 = *(v0 + 8);

  return v5();
}

void (*sub_1A4711B40(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *(a1 + 8) = v5;
  *(a1 + 16) = *(v1 + 40);
  return sub_1A4711BF4;
}

void sub_1A4711BF4(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v4[40] = *(a1 + 16);
  if (v5 != ((*(*v4 + 448))() & 1))
  {
    if (a2)
    {
      v6 = &unk_1A535AF68;
    }

    else
    {
      v6 = &unk_1A535AF70;
    }

    v7 = *(a1 + 8);
    v8 = sub_1A524CCB4();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_1A524CC54();

    v9 = sub_1A524CC44();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v4;
    sub_1A3D4D930(0, 0, v7, v6, v10);
  }

  v12 = *(a1 + 8);

  free(v12);
}

uint64_t sub_1A4711D64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4711E0C()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[40];
}

double sub_1A4711E70(char a1)
{
  v2 = a1 & 1;
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-v5];
  v7 = v1[40];
  if (v7 == v2)
  {
    v1[40] = v2;
    v11 = v1;
    if (v7 != ((*(*v1 + 448))(v4) & 1))
    {
      v12 = sub_1A524CCB4();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
      sub_1A524CC54();

      v13 = sub_1A524CC44();
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E85E0];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = v11;
      sub_1A3D4D930(0, 0, v6, &unk_1A535A9C8, v14);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v16[-16] = v1;
    v16[-8] = v2;
    (*(*v1 + 1296))(v9);
  }

  return result;
}

double sub_1A47120B0(unsigned __int8 *a1, unsigned __int8 a2)
{
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = a1[40];
  a1[40] = a2;
  if (v8 != ((*(*a1 + 448))(v5) & 1))
  {
    v10 = sub_1A524CCB4();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1A524CC54();

    v11 = sub_1A524CC44();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = a1;
    sub_1A3D4D930(0, 0, v7, &unk_1A535AF78, v12);
  }

  return result;
}

uint64_t (*sub_1A471224C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4711B40(v4);
  return sub_1A471239C;
}

uint64_t sub_1A47123F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 496))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A47124A0()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  swift_beginAccess();
  return v0[41];
}

void sub_1A4712520(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[41] == v2)
  {
    v1[41] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1296))(v4);
  }
}

uint64_t (*sub_1A471261C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A47123A8(v4);
  return sub_1A471276C;
}

uint64_t sub_1A4712778()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = sub_1A41CDD28();
  (*(v2 + 16))(v4, v5, v1);

  v6 = sub_1A5246F04();
  v7 = sub_1A524D264();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    (*(*v0 + 544))(v20);
    memcpy(v22, v20, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v22) == 1)
    {
      memcpy(v19, v20, 0x123uLL);
      sub_1A471D1E4(v19, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    }

    else
    {
      memcpy(v19, v20, 0x123uLL);
      v10 = v20[0];
      sub_1A471D1E4(v19, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
      v11 = [v10 uuid];

      if (v11)
      {
        v12 = sub_1A524C674();
        v18 = v9;
        v13 = v12;
        v15 = v14;

        v16 = v13;
        goto LABEL_7;
      }
    }

    v15 = 0xE100000000000000;
    v16 = 45;
LABEL_7:
    sub_1A3C2EF94(v16, v15, &v21);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t (*sub_1A4712AA8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4712AFC;
}

uint64_t sub_1A4712AFC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A4712778();
  }

  return result;
}

uint64_t sub_1A4712BA4(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x123uLL);
  v4 = *a2;
  memcpy(v8, __src, 0x123uLL);
  v5 = *(*v4 + 552);
  sub_1A471CD60(__dst, v7, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  return v5(v8);
}

uint64_t sub_1A4712C88@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1288))();

  swift_beginAccess();
  memcpy(__dst, (v1 + 48), 0x123uLL);
  memcpy(a1, (v1 + 48), 0x123uLL);
  return sub_1A471CD60(__dst, &v4, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
}

void sub_1A4712D78(void *__src)
{
  memcpy(v9, __src, 0x123uLL);
  swift_beginAccess();
  memcpy(v10, (v1 + 48), 0x123uLL);
  sub_1A471CD60(v10, v17, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  memcpy(v17, v10, 0x123uLL);
  memcpy(&v17[296], v9, 0x123uLL);
  memcpy(v18, v10, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v18) != 1)
  {
    memcpy(v16, v17, 0x123uLL);
    memcpy(v14, v17, 0x123uLL);
    memcpy(v15, &v17[296], 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v15) != 1)
    {
      memcpy(v13, &v17[296], 0x123uLL);
      v7 = MEMORY[0x1E69E6720];
      sub_1A471CD60(v10, v12, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
      sub_1A471CD60(v9, v12, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v7, sub_1A3C397F8);
      sub_1A471CD60(v16, v12, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v7, sub_1A3C397F8);
      sub_1A4261090();
      v8 = sub_1A524C594();
      memcpy(v11, v13, 0x123uLL);
      sub_1A406BF14(v11);
      memcpy(v12, v14, 0x123uLL);
      sub_1A406BF14(v12);
      memcpy(v13, v17, 0x123uLL);
      sub_1A471D1E4(v13, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v7, sub_1A3C397F8);
      sub_1A471D1E4(v10, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v7, sub_1A3C397F8);
      if (v8)
      {
        goto LABEL_10;
      }

LABEL_8:
      KeyPath = swift_getKeyPath();
      v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v1 + 1296))(v6);
      sub_1A471D1E4(v9, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);

      return;
    }

    memcpy(v13, v14, 0x123uLL);
    v3 = MEMORY[0x1E69E6720];
    sub_1A471CD60(v10, v12, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    sub_1A471CD60(v9, v12, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v3, sub_1A3C397F8);
    sub_1A471CD60(v16, v12, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v3, sub_1A3C397F8);
    sub_1A406BF14(v13);
LABEL_7:
    memcpy(v15, v17, 0x24BuLL);
    sub_1A471E2F8(v15, sub_1A471E3EC);
    sub_1A471D1E4(v10, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    goto LABEL_8;
  }

  memcpy(v15, &v17[296], 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v15) != 1)
  {
    v4 = MEMORY[0x1E69E6720];
    sub_1A471CD60(v10, v16, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    sub_1A471CD60(v9, v16, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v4, sub_1A3C397F8);
    goto LABEL_7;
  }

  memcpy(v16, v17, 0x123uLL);
  v2 = MEMORY[0x1E69E6720];
  sub_1A471CD60(v10, v14, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  sub_1A471CD60(v9, v14, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v2, sub_1A3C397F8);
  sub_1A471D1E4(v16, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v2, sub_1A3C397F8);
  sub_1A471D1E4(v10, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v2, sub_1A3C397F8);
LABEL_10:
  memcpy(v17, (v1 + 48), 0x123uLL);
  memcpy((v1 + 48), v9, 0x123uLL);
  sub_1A471D1E4(v17, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  sub_1A4712778();
}

uint64_t (*sub_1A4713390(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4712AA8(v4);
  return sub_1A47134E0;
}

uint64_t sub_1A47134EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 592))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A471356C()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[339];
}

void sub_1A47135D0(char a1)
{
  if (v1[339] == (a1 & 1))
  {
    v1[339] = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1296))(v3);
  }
}

double sub_1A47136B8()
{
  (*(*v0 + 544))(v8);
  memcpy(v9, v8, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v9) == 1)
  {
    if (v0[339] == 1)
    {
      v0[339] = 1;
      return result;
    }

    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v0 + 1296))(v6);
    goto LABEL_11;
  }

  if (BYTE1(v9[36]) != 1 || ((*(*v0 + 848))(&v7), v7 != 2))
  {
    v2 = LOBYTE(v9[24]) ^ 1;
    if (v0[339] != ((LOBYTE(v9[24]) ^ 1) & 1))
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_1A471D1E4(v8, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    v0[339] = v2 & 1;
    return result;
  }

  v2 = 1;
  if (v0[339])
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = swift_getKeyPath();
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  (*(*v0 + 1296))(v4);
  sub_1A471D1E4(v8, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
LABEL_11:

  return result;
}

id sub_1A47139AC()
{
  (*(*v0 + 544))(__src);
  memcpy(__dst, __src, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(__dst) == 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = __src[0];
    v2 = __src[0];
  }

  memcpy(v4, __src, 0x123uLL);
  sub_1A471D1E4(v4, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  return v1;
}

uint64_t sub_1A4713A84(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*v2 + 656);
  v10(&v27, v6);
  result = sub_1A471C3DC(v27, v9);
  if ((result & 1) == 0)
  {
    v12 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v15 = 136315138;
      (v10)(&v25);
      v16 = "nowledgementButton";
      v17 = "processingNextAsset";
      v18 = 0xD000000000000020;
      v19 = "setUserInitiated";
      v20 = 0xD000000000000015;
      if (v25 != 3)
      {
        v20 = 0xD000000000000011;
        v19 = "failedProcessingAsset";
      }

      if (v25 != 2)
      {
        v18 = v20;
        v17 = v19;
      }

      v21 = 0xD000000000000013;
      if (v25)
      {
        v16 = "noAssetsToProcess";
      }

      else
      {
        v21 = 0xD000000000000011;
      }

      if (v25 <= 1u)
      {
        v22 = v21;
      }

      else
      {
        v22 = v18;
      }

      if (v25 <= 1u)
      {
        v23 = v16;
      }

      else
      {
        v23 = v17;
      }

      sub_1A3C2EF94(v22, v23 | 0x8000000000000000, &v26);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

unint64_t ParallaxAssetViewStatus.rawValue.getter()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000020;
  v4 = 0xD000000000000015;
  if (v2 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

void *sub_1A4713DD8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 656))(&v4);
  *a2 = v4;
  return result;
}

void sub_1A4713E74(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1288))();

  *a1 = v1[340];
}

double sub_1A4713EE8(unsigned __int8 *a1)
{
  v2 = *a1;
  if (sub_1A471C3DC(v1[340], *a1))
  {
    v3 = v1[340];
    v1[340] = v2;
    v7[0] = v3;
    sub_1A4713A84(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1296))(v6);
  }

  return result;
}

uint64_t (*sub_1A4713FEC(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1A5246F24();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  *(v5 + 40) = *(v1 + 341);
  return sub_1A47140F0;
}

void sub_1A47140F0(void **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v4[341];
  v4[341] = *(*a1 + 40);
  v6 = (*v4 + 704);
  v7 = *v6;
  v8 = v5 ^ (*v6)();
  if ((a2 & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = v3 + 4;
    v18 = v3[4];
    v12 = v3 + 2;
    v19 = v3[2];
    v14 = v3 + 1;
    v20 = v3[1];
    v21 = sub_1A41CDD28();
    (*(v19 + 16))(v18, v21, v20);

    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v7() & 1;

    _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: pauseFrequency changed to %{BOOL}d", v22, 8u);
    MEMORY[0x1A590EEC0](v22, -1, -1);
    goto LABEL_8;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = v3 + 3;
  v9 = v3[3];
  v12 = v3 + 2;
  v11 = v3[2];
  v14 = v3 + 1;
  v13 = v3[1];
  v15 = sub_1A41CDD28();
  (*(v11 + 16))(v9, v15, v13);

  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    goto LABEL_7;
  }

LABEL_4:

LABEL_8:

  (*(*v12 + 8))(*v10, *v14);
LABEL_9:
  v23 = v3[3];
  free(v3[4]);
  free(v23);

  free(v3);
}

uint64_t sub_1A471430C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 704))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A47143B4()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[341];
}

void sub_1A4714418(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[341];
  if (v9 == v3)
  {
    v2[341] = v3;
    v12 = (*v2 + 704);
    v13 = *v12;
    if (v9 != ((*v12)(v6) & 1))
    {
      v14 = sub_1A41CDD28();
      (*(v5 + 16))(v8, v14, v4);

      v15 = sub_1A5246F04();
      v16 = sub_1A524D264();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = v13() & 1;

        _os_log_impl(&dword_1A3C1C000, v15, v16, "ParallaxAssetViewModel: pauseFrequency changed to %{BOOL}d", v17, 8u);
        MEMORY[0x1A590EEC0](v17, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v18[-16] = v2;
    v18[-8] = v3;
    (*(*v2 + 1296))(v11);
  }
}

uint64_t sub_1A47146C0(unsigned __int8 *a1, unsigned __int8 a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[341];
  a1[341] = a2;
  v10 = *(*a1 + 704);
  result = v10(v6);
  if (v9 != (result & 1))
  {
    v12 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = (v10)() & 1;

      _os_log_impl(&dword_1A3C1C000, v13, v14, "ParallaxAssetViewModel: pauseFrequency changed to %{BOOL}d", v15, 8u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t (*sub_1A47148BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4713FEC(v4);
  return sub_1A4714A0C;
}

uint64_t (*sub_1A4714A18(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1A5246F24();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  *(v5 + 40) = *(v1 + 342);
  return sub_1A4714B1C;
}

void sub_1A4714B1C(void **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v4[342];
  v4[342] = *(*a1 + 40);
  v6 = (*v4 + 752);
  v7 = *v6;
  v8 = v5 ^ (*v6)();
  if ((a2 & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = v3 + 4;
    v18 = v3[4];
    v12 = v3 + 2;
    v19 = v3[2];
    v14 = v3 + 1;
    v20 = v3[1];
    v21 = sub_1A41CDD28();
    (*(v19 + 16))(v18, v21, v20);

    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v7() & 1;

    _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: shouldScaleImageContentWhenInactive changed to %{BOOL}d", v22, 8u);
    MEMORY[0x1A590EEC0](v22, -1, -1);
    goto LABEL_8;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = v3 + 3;
  v9 = v3[3];
  v12 = v3 + 2;
  v11 = v3[2];
  v14 = v3 + 1;
  v13 = v3[1];
  v15 = sub_1A41CDD28();
  (*(v11 + 16))(v9, v15, v13);

  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    goto LABEL_7;
  }

LABEL_4:

LABEL_8:

  (*(*v12 + 8))(*v10, *v14);
LABEL_9:
  v23 = v3[3];
  free(v3[4]);
  free(v23);

  free(v3);
}

uint64_t sub_1A4714D38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 752))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4714DE0()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[342];
}

void sub_1A4714E44(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[342];
  if (v9 == v3)
  {
    v2[342] = v3;
    v12 = (*v2 + 752);
    v13 = *v12;
    if (v9 != ((*v12)(v6) & 1))
    {
      v14 = sub_1A41CDD28();
      (*(v5 + 16))(v8, v14, v4);

      v15 = sub_1A5246F04();
      v16 = sub_1A524D264();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = v13() & 1;

        _os_log_impl(&dword_1A3C1C000, v15, v16, "ParallaxAssetViewModel: shouldScaleImageContentWhenInactive changed to %{BOOL}d", v17, 8u);
        MEMORY[0x1A590EEC0](v17, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v18[-16] = v2;
    v18[-8] = v3;
    (*(*v2 + 1296))(v11);
  }
}

uint64_t sub_1A47150EC(unsigned __int8 *a1, unsigned __int8 a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[342];
  a1[342] = a2;
  v10 = *(*a1 + 752);
  result = v10(v6);
  if (v9 != (result & 1))
  {
    v12 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = (v10)() & 1;

      _os_log_impl(&dword_1A3C1C000, v13, v14, "ParallaxAssetViewModel: shouldScaleImageContentWhenInactive changed to %{BOOL}d", v15, 8u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t (*sub_1A47152E8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4714A18(v4);
  return sub_1A4715438;
}

uint64_t (*sub_1A4715444(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1A5246F24();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  *(v5 + 40) = *(v1 + 343);
  return sub_1A4715548;
}

void sub_1A4715548(void **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v4[343];
  v4[343] = *(*a1 + 40);
  v6 = (*v4 + 800);
  v7 = *v6;
  v8 = v5 ^ (*v6)();
  if ((a2 & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = v3 + 4;
    v18 = v3[4];
    v12 = v3 + 2;
    v19 = v3[2];
    v14 = v3 + 1;
    v20 = v3[1];
    v21 = sub_1A41CDD28();
    (*(v19 + 16))(v18, v21, v20);

    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v7() & 1;

    _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: shouldScaleClockContentWhenInactive changed to %{BOOL}d", v22, 8u);
    MEMORY[0x1A590EEC0](v22, -1, -1);
    goto LABEL_8;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = v3 + 3;
  v9 = v3[3];
  v12 = v3 + 2;
  v11 = v3[2];
  v14 = v3 + 1;
  v13 = v3[1];
  v15 = sub_1A41CDD28();
  (*(v11 + 16))(v9, v15, v13);

  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    goto LABEL_7;
  }

LABEL_4:

LABEL_8:

  (*(*v12 + 8))(*v10, *v14);
LABEL_9:
  v23 = v3[3];
  free(v3[4]);
  free(v23);

  free(v3);
}

uint64_t sub_1A4715764@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 800))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A471580C()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[343];
}

void sub_1A4715870(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[343];
  if (v9 == v3)
  {
    v2[343] = v3;
    v12 = (*v2 + 800);
    v13 = *v12;
    if (v9 != ((*v12)(v6) & 1))
    {
      v14 = sub_1A41CDD28();
      (*(v5 + 16))(v8, v14, v4);

      v15 = sub_1A5246F04();
      v16 = sub_1A524D264();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = v13() & 1;

        _os_log_impl(&dword_1A3C1C000, v15, v16, "ParallaxAssetViewModel: shouldScaleClockContentWhenInactive changed to %{BOOL}d", v17, 8u);
        MEMORY[0x1A590EEC0](v17, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v18[-16] = v2;
    v18[-8] = v3;
    (*(*v2 + 1296))(v11);
  }
}

uint64_t sub_1A4715B18(unsigned __int8 *a1, unsigned __int8 a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[343];
  a1[343] = a2;
  v10 = *(*a1 + 800);
  result = v10(v6);
  if (v9 != (result & 1))
  {
    v12 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = (v10)() & 1;

      _os_log_impl(&dword_1A3C1C000, v13, v14, "ParallaxAssetViewModel: shouldScaleClockContentWhenInactive changed to %{BOOL}d", v15, 8u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t (*sub_1A4715D14(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4715444(v4);
  return sub_1A4715E64;
}

uint64_t ParallaxAssetViewModel.BacklightLuminance.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void *sub_1A4715EE4(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*v2 + 848);
  result = (v10)(&v24, v6);
  if (v24 != v9)
  {
    v12 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v15 = 136315138;
      v10(&v22);
      v16 = 0xE700000000000000;
      v17 = 0x64656375646572;
      if (v22 != 1)
      {
        v17 = 1819047270;
        v16 = 0xE400000000000000;
      }

      if (v22)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0x6669636570736E75;
      }

      if (v22)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0xEB00000000646569;
      }

      sub_1A3C2EF94(v18, v19, &v23);
    }

    (*(v5 + 8))(v8, v4);
    (*(*v2 + 808))(1);
    v20 = (*(*v2 + 760))(1);
    return (*(*v2 + 616))(v20);
  }

  return result;
}

uint64_t (*sub_1A4716210(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 344);
  return sub_1A471623C;
}

void *sub_1A471623C(_BYTE *a1, char a2)
{
  v2 = *(*a1 + 344);
  *(*a1 + 344) = a1[8];
  if (a2)
  {
    v5 = v2;
    v3 = &v5;
  }

  else
  {
    v6 = v2;
    v3 = &v6;
  }

  return sub_1A4715EE4(v3);
}

void *sub_1A471628C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 848))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A47162F0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 856))(&v4);
}

void sub_1A4716350(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1288))();

  *a1 = v1[344];
}

double sub_1A47163C4(unsigned __int8 *a1)
{
  if (v1[344] == *a1)
  {
    v5[0] = *a1;
    sub_1A4715EE4(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1296))(v4);
  }

  return result;
}

uint64_t (*sub_1A47164B4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4716210(v4);
  return sub_1A4716604;
}

void (*sub_1A4716610(uint64_t *a1))(double **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = sub_1A5246F24();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *v5 = *(v1 + 352);
  return sub_1A4716714;
}

void sub_1A4716714(double **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 1);
  v5 = v4[44];
  v4[44] = **a1;
  v6 = (*v4 + 896);
  v7 = *v6;
  v8 = (*v6)();
  if (a2)
  {
    if (v8 == v5)
    {
      goto LABEL_9;
    }

    v10 = (v3 + 4);
    v9 = *(v3 + 4);
    v12 = (v3 + 3);
    v11 = *(v3 + 3);
    v14 = (v3 + 2);
    v13 = *(v3 + 2);
    v15 = sub_1A41CDD28();
    (*(v11 + 16))(v9, v15, v13);

    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v8 == v5)
  {
    goto LABEL_9;
  }

  v10 = (v3 + 5);
  v18 = *(v3 + 5);
  v12 = (v3 + 3);
  v19 = *(v3 + 3);
  v14 = (v3 + 2);
  v20 = *(v3 + 2);
  v21 = sub_1A41CDD28();
  (*(v19 + 16))(v18, v21, v20);

  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();

  if (os_log_type_enabled(v16, v17))
  {
LABEL_7:
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v7();
    _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: backlightProgress changed to %f", v22, 0xCu);
    MEMORY[0x1A590EEC0](v22, -1, -1);
  }

LABEL_8:
  v23 = *v10;
  v24 = *v12;
  v25 = *v14;

  (*(v24 + 8))(v23, v25);
LABEL_9:
  v26 = *(v3 + 4);
  free(*(v3 + 5));
  free(v26);

  free(v3);
}

double sub_1A47169DC()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[44];
}

void sub_1A4716A40(double a1)
{
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1[44];
  if (v8 == a1)
  {
    v1[44] = a1;
    v9 = (*v1 + 896);
    v10 = *v9;
    if ((*v9)(v5) != v8)
    {
      v11 = sub_1A41CDD28();
      (*(v4 + 16))(v7, v11, v3);

      v12 = sub_1A5246F04();
      v13 = sub_1A524D264();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = v10();
        _os_log_impl(&dword_1A3C1C000, v12, v13, "ParallaxAssetViewModel: backlightProgress changed to %f", v14, 0xCu);
        MEMORY[0x1A590EEC0](v14, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v16.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v17[-16] = v1;
    *&v17[-8] = a1;
    (*(*v1 + 1296))(v16);
  }
}

void sub_1A4716CD8(double *a1, double a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[44];
  a1[44] = a2;
  v10 = *(*a1 + 896);
  if ((v10)(v6) != v9)
  {
    v11 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v11, v4);

    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v10();
      _os_log_impl(&dword_1A3C1C000, v12, v13, "ParallaxAssetViewModel: backlightProgress changed to %f", v14, 0xCu);
      MEMORY[0x1A590EEC0](v14, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t (*sub_1A4716EC4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4716610(v4);
  return sub_1A4717014;
}

uint64_t (*sub_1A4717020(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1A5246F24();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  *(v5 + 40) = *(v1 + 360);
  return sub_1A4717124;
}

void sub_1A4717124(void **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v4[360];
  v4[360] = *(*a1 + 40);
  v6 = (*v4 + 944);
  v7 = *v6;
  v8 = v5 ^ (*v6)();
  if ((a2 & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = v3 + 4;
    v18 = v3[4];
    v12 = v3 + 2;
    v19 = v3[2];
    v14 = v3 + 1;
    v20 = v3[1];
    v21 = sub_1A41CDD28();
    (*(v19 + 16))(v18, v21, v20);

    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_4;
    }

LABEL_7:
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v7() & 1;

    _os_log_impl(&dword_1A3C1C000, v16, v17, "ParallaxAssetViewModel: changed isUpdatingLayers to %{BOOL}d", v22, 8u);
    MEMORY[0x1A590EEC0](v22, -1, -1);
    goto LABEL_8;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = v3 + 3;
  v9 = v3[3];
  v12 = v3 + 2;
  v11 = v3[2];
  v14 = v3 + 1;
  v13 = v3[1];
  v15 = sub_1A41CDD28();
  (*(v11 + 16))(v9, v15, v13);

  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    goto LABEL_7;
  }

LABEL_4:

LABEL_8:

  (*(*v12 + 8))(*v10, *v14);
LABEL_9:
  v23 = v3[3];
  free(v3[4]);
  free(v23);

  free(v3);
}

uint64_t sub_1A4717340@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 944))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A47173E8()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return v0[360];
}

void sub_1A471744C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[360];
  if (v9 == v3)
  {
    v2[360] = v3;
    v12 = (*v2 + 944);
    v13 = *v12;
    if (v9 != ((*v12)(v6) & 1))
    {
      v14 = sub_1A41CDD28();
      (*(v5 + 16))(v8, v14, v4);

      v15 = sub_1A5246F04();
      v16 = sub_1A524D264();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = v13() & 1;

        _os_log_impl(&dword_1A3C1C000, v15, v16, "ParallaxAssetViewModel: changed isUpdatingLayers to %{BOOL}d", v17, 8u);
        MEMORY[0x1A590EEC0](v17, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v18[-16] = v2;
    v18[-8] = v3;
    (*(*v2 + 1296))(v11);
  }
}

uint64_t sub_1A47176F4(unsigned __int8 *a1, unsigned __int8 a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[360];
  a1[360] = a2;
  v10 = *(*a1 + 944);
  result = v10(v6);
  if (v9 != (result & 1))
  {
    v12 = sub_1A41CDD28();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = (v10)() & 1;

      _os_log_impl(&dword_1A3C1C000, v13, v14, "ParallaxAssetViewModel: changed isUpdatingLayers to %{BOOL}d", v15, 8u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t (*sub_1A47178F0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4717020(v4);
  return sub_1A4717A40;
}

void sub_1A4717A64(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a2)
  {
    v5 = a1;
    v6 = (*(*v3 + 992))(a3);
    if (!v7)
    {
      goto LABEL_15;
    }

    if (v6 == v5 && v7 == a2)
    {
    }

    else
    {
      v9 = sub_1A524EAB4();

      if ((v9 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  (*(*v3 + 992))(a1);
  if (!v10)
  {
LABEL_15:
    sub_1A524E6E4();
    __break(1u);
    return;
  }
}

void sub_1A4717BEC(void *a1)
{
  a1[2] = v1;
  v3 = *(v1 + 408);
  *a1 = *(v1 + 400);
  a1[1] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4717C3C(void *a1, char a2, __n128 a3)
{
  v4 = a1[1];
  v3 = a1[2];
  v6 = *(v3 + 400);
  v5 = *(v3 + 408);
  *(v3 + 400) = *a1;
  *(v3 + 408) = v4;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4717A64(v6, v5, a3);

  return result;
}

uint64_t sub_1A4717CB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 992))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A4717D78()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4717DEC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v7 = v3[50];
  v6 = v3[51];
  if (v6)
  {
    if (a2)
    {
      v8 = v7 == a1 && v6 == a2;
      if (v8 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    v11.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 1296))(v11);

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  v3[50] = a1;
  v3[51] = a2;
  sub_1A4717A64(v7, v6, a3);

  return result;
}

void sub_1A4717F48(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  sub_1A4717BEC(v4);
}

void sub_1A47180A4(uint64_t a1)
{
  v38 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v35 - v4;
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A406C37C(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E6968FB0];
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], v2);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  v20 = *(*v1 + 1040);
  v37 = v1;
  v20(v17);
  v21 = *(v9 + 56);
  sub_1A471CD60(v19, v11, &unk_1EB12B250, v12, v2, sub_1A3C569E8);
  sub_1A471CD60(v38, &v11[v21], &unk_1EB12B250, v12, v2, sub_1A3C569E8);
  v22 = *(v6 + 48);
  if (v22(v11, 1, v5) == 1)
  {
    sub_1A471D1E4(v19, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    if (v22(&v11[v21], 1, v5) == 1)
    {
      sub_1A471D1E4(v11, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
      return;
    }

    goto LABEL_6;
  }

  sub_1A471CD60(v11, v15, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
  if (v22(&v11[v21], 1, v5) == 1)
  {
    sub_1A471D1E4(v19, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_1A471E2F8(v11, sub_1A406C37C);
LABEL_7:
    v23 = sub_1A524CCB4();
    v24 = v36;
    (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
    sub_1A524CC54();
    v25 = v37;

    v26 = sub_1A524CC44();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E85E0];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v25;
    sub_1A3D4D930(0, 0, v24, &unk_1A535AF60, v27);

    return;
  }

  v29 = &v11[v21];
  v30 = v35;
  (*(v6 + 32))(v35, v29, v5);
  sub_1A471E148(&qword_1EB126050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v31 = sub_1A524C594();
  v32 = *(v6 + 8);
  v32(v30, v5);
  v33 = MEMORY[0x1E6968FB0];
  v34 = MEMORY[0x1E69E6720];
  sub_1A471D1E4(v19, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
  v32(v15, v5);
  sub_1A471D1E4(v11, &unk_1EB12B250, v33, v34, sub_1A3C569E8);
  if ((v31 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_1A47186F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4[3] = swift_task_alloc();
  sub_1A524CC54();
  v4[4] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A47187E4, v6, v5);
}

uint64_t sub_1A47187E4()
{
  v1 = v0[3];
  v2 = v0[2];

  v4 = (*(*v2 + 1240))(v3);
  (*(*v2 + 1040))();
  (*(*v4 + 392))(v1);

  v5 = v0[1];

  return v5();
}

void (*sub_1A471890C(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v7);
    v5[11] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__assetDirectoryURL;
  v5[12] = v8;
  v5[13] = v10;
  swift_beginAccess();
  sub_1A471CD60(v1 + v10, v9, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
  return sub_1A4718A94;
}

void sub_1A4718A94(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    v8 = MEMORY[0x1E6968FB0];
    v9 = MEMORY[0x1E69E6720];
    sub_1A471CD60(*(*a1 + 12), v6, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    sub_1A471CD60(v7 + v4, v5, &unk_1EB12B250, v8, v9, sub_1A3C569E8);
    swift_beginAccess();
    sub_1A4069480(v6, v7 + v4);
    swift_endAccess();
    sub_1A47180A4(v5);
    sub_1A471D1E4(v5, &unk_1EB12B250, v8, v9, sub_1A3C569E8);
  }

  else
  {
    sub_1A471CD60(v7 + v4, v6, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    swift_beginAccess();
    sub_1A4069480(v3, v7 + v4);
    swift_endAccess();
    sub_1A47180A4(v6);
  }

  v10 = MEMORY[0x1E6968FB0];
  v11 = MEMORY[0x1E69E6720];
  sub_1A471D1E4(v6, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
  sub_1A471D1E4(v3, &unk_1EB12B250, v10, v11, sub_1A3C569E8);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1A4718D18(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6968FB0];
  v5 = MEMORY[0x1E69E6720];
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_1A471CD60(a1, &v10 - v7, &unk_1EB12B250, v4, v5, sub_1A3C569E8);
  return (*(**a2 + 1048))(v8);
}

uint64_t sub_1A4718E38@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1288))();

  v3 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__assetDirectoryURL;
  swift_beginAccess();
  return sub_1A471CD60(v1 + v3, a1, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
}

uint64_t sub_1A4718F18(uint64_t a1)
{
  v3 = MEMORY[0x1E6968FB0];
  v4 = MEMORY[0x1E69E6720];
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  v11 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__assetDirectoryURL;
  swift_beginAccess();
  sub_1A471CD60(v1 + v11, v10, &unk_1EB12B250, v3, v4, sub_1A3C569E8);
  v12 = sub_1A471CDD4(v10, a1);
  sub_1A471D1E4(v10, &unk_1EB12B250, v3, v4, sub_1A3C569E8);
  if (v12)
  {
    KeyPath = swift_getKeyPath();
    v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v18[-16] = v1;
    *&v18[-8] = a1;
    (*(*v1 + 1296))(v14);
  }

  else
  {
    v15 = MEMORY[0x1E6968FB0];
    v16 = MEMORY[0x1E69E6720];
    sub_1A471CD60(a1, v10, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    sub_1A471CD60(v1 + v11, v7, &unk_1EB12B250, v15, v16, sub_1A3C569E8);
    swift_beginAccess();
    sub_1A4069480(v10, v1 + v11);
    swift_endAccess();
    sub_1A47180A4(v7);
    sub_1A471D1E4(v7, &unk_1EB12B250, v15, v16, sub_1A3C569E8);
    sub_1A471D1E4(v10, &unk_1EB12B250, v15, v16, sub_1A3C569E8);
  }

  return sub_1A471D1E4(a1, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
}

uint64_t sub_1A471923C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6968FB0];
  v5 = MEMORY[0x1E69E6720];
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10];
  sub_1A471CD60(a2, &v14[-v10], &unk_1EB12B250, v4, v5, sub_1A3C569E8);
  v12 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__assetDirectoryURL;
  swift_beginAccess();
  sub_1A471CD60(a1 + v12, v8, &unk_1EB12B250, v4, v5, sub_1A3C569E8);
  swift_beginAccess();
  sub_1A4069480(v11, a1 + v12);
  swift_endAccess();
  sub_1A47180A4(v8);
  sub_1A471D1E4(v8, &unk_1EB12B250, v4, v5, sub_1A3C569E8);
  return sub_1A471D1E4(v11, &unk_1EB12B250, v4, v5, sub_1A3C569E8);
}

uint64_t (*sub_1A47193E8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A471890C(v4);
  return sub_1A4719538;
}

uint64_t ParallaxAssetViewModel.__allocating_init(viewSize:isForPreview:maxPreloadedAssetCount:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = a1;
  v8 = swift_allocObject();
  ParallaxAssetViewModel.init(viewSize:isForPreview:maxPreloadedAssetCount:)(v5, a2, a3, a4);
  return v8;
}

uint64_t ParallaxAssetViewModel.init(viewSize:isForPreview:maxPreloadedAssetCount:)(char a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 41) = 0;
  sub_1A4069344(v12);
  memcpy((v4 + 48), v12, 0x123uLL);
  *(v4 + 339) = 1;
  *(v4 + 342) = 0;
  *(v4 + 344) = 0;
  *(v4 + 352) = 0x3FF0000000000000;
  *(v4 + 360) = 0;
  *(v4 + 400) = 0;
  *(v4 + 408) = 0;
  v9 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__assetDirectoryURL;
  v10 = sub_1A5240E64();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__initialShuffleStateDictionaryRepresentation) = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__skipSegmentation) = 0;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___assetsManager) = 0;
  sub_1A5241604();
  *(v4 + 368) = a3;
  *(v4 + 376) = a4;
  *(v4 + 384) = a1;
  *(v4 + 392) = a2;

  *(v4 + 16) = 0;

  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = 0;
  *(v4 + 341) = 0;
  return v4;
}

double sub_1A47196E8(uint64_t a1)
{
  swift_getKeyPath();
  (*(*v1 + 1296))();

  return result;
}

void sub_1A4719790(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__skipSegmentation;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1296))(v5);
  }
}

double sub_1A4719894(char a1, char a2)
{
  v3 = v2;
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A524CC54();

  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v3;
  *(v11 + 40) = a2;
  *(v11 + 41) = a1;
  sub_1A3D4D930(0, 0, v8, &unk_1A535AC08, v11);

  return result;
}

uint64_t sub_1A47199F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 65) = a6;
  *(v6 + 64) = a5;
  *(v6 + 16) = a4;
  v7 = sub_1A5246F24();
  *(v6 + 24) = v7;
  *(v6 + 32) = *(v7 - 8);
  *(v6 + 40) = swift_task_alloc();
  *(v6 + 48) = swift_task_alloc();
  sub_1A524CC54();
  *(v6 + 56) = sub_1A524CC44();
  v9 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4719AFC, v9, v8);
}

uint64_t sub_1A4719AFC()
{
  v41 = v0;
  v1 = *(v0 + 16);

  v3 = (*v1 + 1240);
  v4 = *v3;
  v5 = *(*v3)(v2);
  v6 = (*(v5 + 280))();

  if (v6)
  {
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 24);
    v11 = sub_1A41CDD28();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);
    v17 = *(v0 + 24);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "ParallaxAssetViewModel: Request for next asset skipped: Already processing a request.";
LABEL_12:
      _os_log_impl(&dword_1A3C1C000, v12, v13, v19, v18, 2u);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }
  }

  else
  {
    v20 = v4(v7);
    v21 = (*(*v20 + 232))(v20);

    v22 = [v21 count];

    if (v22 >= 1)
    {
      v23 = *(v0 + 16);
      if (*(v0 + 64))
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      v25 = sub_1A471C3DC(*(v23 + 340), v24);
      v26 = *(v0 + 16);
      if (v25)
      {
        v27 = *(v23 + 340);
        *(v23 + 340) = v24;
        v40[0] = v27;
        v28 = sub_1A4713A84(v40);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v35 = swift_task_alloc();
        *(v35 + 16) = v26;
        *(v35 + 24) = v24;
        (*(*v26 + 1296))(KeyPath, sub_1A471E56C, v35, MEMORY[0x1E69E7CA8] + 8);
      }

      v36 = *(v0 + 65);
      v37 = *v4(v28);
      (*(v37 + 424))(v36);

      goto LABEL_16;
    }

    v29 = *(v0 + 48);
    v30 = *(v0 + 24);
    v31 = *(v0 + 32);
    v32 = sub_1A41CDD28();
    (*(v31 + 16))(v29, v32, v30);
    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();
    v33 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 48);
    v17 = *(v0 + 24);
    v16 = *(v0 + 32);
    if (v33)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "ParallaxAssetViewModel: Request for next asset skipped: There are no assets.";
      goto LABEL_12;
    }
  }

  (*(v16 + 8))(v15, v17);
LABEL_16:

  v38 = *(v0 + 8);

  return v38();
}

double sub_1A4719ECC(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = sub_1A41CDD28();
  (*(v5 + 16))(v7, v9, v4);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v12 = 136315138;
    v13 = 0xE700000000000000;
    v14 = 0x64656375646572;
    if (v8 != 1)
    {
      v14 = 1819047270;
      v13 = 0xE400000000000000;
    }

    v19[3] = v8;
    if (v8)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x6669636570736E75;
    }

    if (v8)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0xEB00000000646569;
    }

    sub_1A3C2EF94(v15, v16, v20);
  }

  (*(v5 + 8))(v7, v4);
  LOBYTE(v20[0]) = v8;
  v17 = (*(*v2 + 856))(v20);
  MEMORY[0x1EEE9AC00](v17);
  *&v19[-4] = v2;
  LOBYTE(v19[-2]) = v8;
  sub_1A524BD24();
  sub_1A52483D4();

  return result;
}

uint64_t sub_1A471A20C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1120))();
  *a2 = result;
  return result;
}

void sub_1A471A2BC()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t (*sub_1A471A348(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A471A1AC(v4);
  return sub_1A471A498;
}

uint64_t sub_1A471A504@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1168))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A471A5AC()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  v1 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__skipSegmentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1A471A634(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel, &protocol conformance descriptor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A471A4A4(v4);
  return sub_1A471A784;
}

double sub_1A471A790()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  return result;
}

double sub_1A471A80C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1288))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___assetsManager);

  return result;
}

double sub_1A471A89C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 1296))(KeyPath, sub_1A471E584, v6, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t sub_1A471A94C()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  if (!*(v0 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___assetsManager))
  {
    sub_1A471B5F8();
  }

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___assetsManager);

  return v1;
}

double sub_1A471AAB0()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BEE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v64 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BFC4();
  v10 = *(v9 - 8);
  v67 = v9;
  v68 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();

  v18 = sub_1A471B4DC(v16);

  v69 = v17;
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = v1[340];
  v59 = v5;
  v60 = v4;
  v58 = v7;
  if (v19 <= 1)
  {
    v20 = "nowledgementButton";
    if (v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v19 == 2 || v19 == 3)
    {
      goto LABEL_13;
    }

    v20 = "failedProcessingAsset";
  }

  if ((v20 | 0x8000000000000000) == 0x80000001A53E7480)
  {

LABEL_14:
    v22 = v1[340];
    v1[340] = 0;
    LOBYTE(v73[0]) = v22;
    v23 = sub_1A4713A84(v73);
    goto LABEL_16;
  }

LABEL_13:
  v21 = sub_1A524EAB4();

  if (v21)
  {
    goto LABEL_14;
  }

  KeyPath = swift_getKeyPath();
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  *(&v55 - 2) = v1;
  *(&v55 - 8) = 0;
  (*(*v1 + 1296))(v25);

  v17 = v69;
LABEL_16:
  (*(*v1 + 544))(v72, v23);
  memcpy(v73, v72, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v73) == 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      sub_1A4069344(v71);
      memcpy(v70, v71, 0x123uLL);
      (*(*v27 + 552))(v70);
    }
  }

  else
  {

    sub_1A471D1E4(v72, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v56 = sub_1A524D474();
    sub_1A524BFA4();
    v55 = v15;
    sub_1A524C014();
    v28 = *(v68 + 8);
    v68 += 8;
    v57 = v28;
    v28(v12, v67);
    v29 = swift_allocObject();
    v29[2] = sub_1A471E04C;
    v29[3] = v16;
    v29[4] = sub_1A471E054;
    v29[5] = v17;
    v71[4] = sub_1A471E100;
    v71[5] = v29;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 1107296256;
    v71[2] = sub_1A3C2E0D0;
    v71[3] = &block_descriptor_261;
    v30 = _Block_copy(v71);

    v31 = v63;
    sub_1A524BF14();
    v70[0] = MEMORY[0x1E69E7CC0];
    sub_1A471E148(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C569E8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    v32 = v65;
    v33 = v60;
    sub_1A524E224();
    v35 = v55;
    v34 = v56;
    MEMORY[0x1A5908790](v55, v31, v32, v30);
    _Block_release(v30);

    (*(v59 + 8))(v32, v33);
    (*(v64 + 8))(v31, v58);
    v57(v35, v67);
  }

LABEL_20:

  v37 = (*v1 + 1240);
  v38 = *v37;
  v39 = (*v37)(v36);
  v40 = (*(*v39 + 232))(v39);

  v41 = [v40 count];

  v42 = v38();
  v43 = *(*v1 + 288);
  v44 = v43();
  if (!v44)
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  }

  (*(*v42 + 240))(v44);

  if (!v41)
  {
    v46 = (v43)(v45);
    if (v46)
    {
      v47 = v46;
      if ([v46 count] >= 1)
      {
        v48 = sub_1A41CDD28();
        v50 = v61;
        v49 = v62;
        (*(v61 + 16))(v66, v48, v62);
        v51 = sub_1A5246F04();
        v52 = sub_1A524D264();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_1A3C1C000, v51, v52, "ParallaxAssetViewModel: updateAssets: Request next asset since there are none loaded.", v53, 2u);
          MEMORY[0x1A590EEC0](v53, -1, -1);
        }

        (*(v50 + 8))(v66, v49);
        (*(*v1 + 1072))(0, 0);
      }
    }
  }

  return result;
}

BOOL sub_1A471B4DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v2 = (*(*Strong + 288))(Strong);

  if (!v2)
  {
    return 1;
  }

  swift_beginAccess();
  v3 = swift_weakLoadStrong();
  if (!v3)
  {
    return 1;
  }

  v4 = (*(*v3 + 288))(v3);

  if (!v4)
  {
    return 1;
  }

  v5 = [v4 count];

  return v5 == 0;
}

void sub_1A471B5F8()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A41CDD28();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1A5246F04();
  v8 = sub_1A524D264();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1A3C1C000, v7, v8, "ParallaxAssetViewModel: Creating assets manager", v9, 2u);
    MEMORY[0x1A590EEC0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  type metadata accessor for ParallaxAssetsManager(0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A471B944(const void *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v36, a1, 0x123uLL);
  memcpy(v37, a1, 0x123uLL);
  if ((get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v37) == 1 || !v37[1]) && ((*(*v2 + 1168))() & 1) == 0)
  {
    v11 = sub_1A41CDD28();
    (*(v5 + 16))(v7, v11, v4);

    v12 = sub_1A5246F04();
    v13 = sub_1A524D244();

    if (!os_log_type_enabled(v12, v13))
    {

      (*(v5 + 8))(v7, v4);
      if (v2[340] == 3)
      {
      }

      else
      {
        v28 = sub_1A524EAB4();

        if ((v28 & 1) == 0)
        {
          KeyPath = swift_getKeyPath();
          v31.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
          (*(*v2 + 1296))(v31);

          return;
        }
      }

      v29 = v2[340];
      v2[340] = 3;
      LOBYTE(v35[0]) = v29;
      sub_1A4713A84(v35);
      return;
    }

    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35[0] = v33;
    *v14 = 136315138;
    v15 = (*(*v2 + 624))();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 uuid];

      if (v17)
      {
        v32 = sub_1A524C674();
        v19 = v18;

        v15 = v32;
        goto LABEL_27;
      }

      v15 = 0;
    }

    v19 = 0xE000000000000000;
LABEL_27:
    sub_1A3C2EF94(v15, v19, v35);
  }

  memcpy(v35, v36, 0x123uLL);
  v8 = *(*v2 + 552);
  sub_1A471CD60(v36, &v34, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  v8(v35);
  v9 = v2[340];
  if (v9 <= 1)
  {
    if (v2[340])
    {
      goto LABEL_18;
    }

    v10 = "noAssetsToProcess";
  }

  else
  {
    if (v9 == 2 || v9 == 3)
    {
      goto LABEL_18;
    }

    v10 = "currentAssetReady";
  }

  if (((v10 - 32) | 0x8000000000000000) == 0x80000001A53E7510)
  {

    goto LABEL_19;
  }

LABEL_18:
  v20 = sub_1A524EAB4();

  if ((v20 & 1) == 0)
  {
    v23 = swift_getKeyPath();
    v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
    (*(*v2 + 1296))(v24);

    goto LABEL_21;
  }

LABEL_19:
  v21 = v2[340];
  v2[340] = 4;
  LOBYTE(v35[0]) = v21;
  v22 = sub_1A4713A84(v35);
LABEL_21:
  v25 = (*(*v2 + 624))(v22);
  if (v25 && (v26 = v25, v27 = [v25 uuid], v26, v27))
  {
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

uint64_t ParallaxAssetViewModel.deinit()
{

  memcpy(v4, (v0 + 48), 0x123uLL);
  sub_1A471D1E4(v4, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);

  sub_1A471D1E4(v0 + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__assetDirectoryURL, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);

  v1 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ParallaxAssetViewModel.__deallocating_deinit()
{
  ParallaxAssetViewModel.deinit();

  return swift_deallocClassInstance();
}

PhotosUICore::ParallaxAssetViewStatus_optional __swiftcall ParallaxAssetViewStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A471C3DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "nowledgementButton";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v3)
    {
      v4 = "noAssetsToProcess";
    }

    else
    {
      v4 = "nowledgementButton";
    }
  }

  else if (a1 == 2)
  {
    v4 = "processingNextAsset";
    v5 = 0xD000000000000020;
  }

  else if (a1 == 3)
  {
    v4 = "setUserInitiated";
    v5 = 0xD000000000000015;
  }

  else
  {
    v4 = "failedProcessingAsset";
    v5 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a2)
    {
      v2 = "noAssetsToProcess";
    }
  }

  else if (a2 == 2)
  {
    v2 = "processingNextAsset";
    v6 = 0xD000000000000020;
  }

  else
  {
    v2 = "setUserInitiated";
    if (a2 == 3)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a2 != 3)
    {
      v2 = "failedProcessingAsset";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A524EAB4();
  }

  return v7 & 1;
}

uint64_t sub_1A471C544()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A471C614(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A471C6D0(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A471C7A8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = *v1;
  v4 = "nowledgementButton";
  v5 = "processingNextAsset";
  v6 = 0xD000000000000020;
  v7 = "setUserInitiated";
  v8 = 0xD000000000000015;
  if (v3 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = "failedProcessingAsset";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000013;
    v4 = "noAssetsToProcess";
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v6;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t ParallaxAssetViewModel.BacklightLuminance.description.getter()
{
  v1 = 0x64656375646572;
  if (*v0 != 1)
  {
    v1 = 1819047270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1A471C894()
{
  v1 = 0x64656375646572;
  if (*v0 != 1)
  {
    v1 = 1819047270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1A471C8F0()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A4711210(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A471C9CC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4711998(v3, v4, v5, v2);
}

void sub_1A471CA60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 41) = v2;
}

uint64_t sub_1A471CAB4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  memcpy(__dst, (v2 + 48), 0x123uLL);
  memcpy((v2 + 48), v1, 0x123uLL);
  v3 = MEMORY[0x1E69E6720];
  sub_1A471CD60(v1, v5, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
  sub_1A471D1E4(__dst, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, v3, sub_1A3C397F8);
  return sub_1A4712778();
}

void *sub_1A471CC5C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 344);
  *(v1 + 344) = *(v0 + 24);
  v4 = v2;
  return sub_1A4715EE4(&v4);
}

void sub_1A471CD08()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 400) = v0[3];
  *(v1 + 408) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A471CD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A471CDD4(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6968FB0];
  v7 = MEMORY[0x1E69E6720];
  sub_1A3C569E8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  sub_1A406C37C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1A471CD60(a1, v13, &unk_1EB12B250, v6, v7, sub_1A3C569E8);
  sub_1A471CD60(v23, &v13[v15], &unk_1EB12B250, v6, v7, sub_1A3C569E8);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) != 1)
  {
    sub_1A471CD60(v13, v10, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
    if (v16(&v13[v15], 1, v3) != 1)
    {
      v18 = v22;
      (*(v4 + 32))(v22, &v13[v15], v3);
      sub_1A471E148(&qword_1EB126050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v19 = sub_1A524C594();
      v20 = *(v4 + 8);
      v20(v18, v3);
      v20(v10, v3);
      sub_1A471D1E4(v13, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
      v17 = v19 ^ 1;
      return v17 & 1;
    }

    (*(v4 + 8))(v10, v3);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v3) != 1)
  {
LABEL_6:
    sub_1A471E2F8(v13, sub_1A406C37C);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A471D1E4(v13, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C569E8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1A471D1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A471D270()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__initialShuffleStateDictionaryRepresentation;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A471D2DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel__skipSegmentation;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_1A471D338()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A47199F4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A471D3E4(__n128 a1)
{
  a1.n128_u64[0] = 1.0;
  if (*(v1 + 24) == 1)
  {
    a1.n128_f64[0] = 0.0;
  }

  return (*(**(v1 + 16) + 904))(a1);
}

unint64_t sub_1A471D46C()
{
  result = qword_1EB140C08;
  if (!qword_1EB140C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140C08);
  }

  return result;
}

unint64_t sub_1A471D4C4()
{
  result = qword_1EB140C10;
  if (!qword_1EB140C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140C10);
  }

  return result;
}

void sub_1A471D520(uint64_t a1)
{
  sub_1A3C569E8(319, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A5241614();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

BOOL sub_1A471E054()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A4069344(__src);
    memcpy(__dst, __src, 0x123uLL);
    (*(*Strong + 552))(__dst);
  }

  return Strong == 0;
}

uint64_t sub_1A471E100()
{
  v1 = *(v0 + 32);
  result = (*(v0 + 16))();
  if (result)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1A471E148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1A471E190()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      (*(*v2 + 256))(v3);
      sub_1A471B944(v3);

      memcpy(__dst, v3, 0x123uLL);
      sub_1A471D1E4(__dst, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720], sub_1A3C397F8);
    }

    else
    {
    }
  }

  return result;
}

void sub_1A471E2B4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___assetsManager) = *(v0 + 24);
}

uint64_t sub_1A471E2F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A471E358()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47186F0(v3, v4, v5, v2);
}

void sub_1A471E3EC(uint64_t a1)
{
  if (!qword_1EB140C18)
  {
    sub_1A3C397F8(255, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB140C18);
    }
  }
}

uint64_t sub_1A471E474()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 340);
  *(v1 + 340) = *(v0 + 24);
  v4 = v2;
  return sub_1A4713A84(&v4);
}

uint64_t sub_1A471E4C0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47103EC(v3, v4, v5, v2);
}

id sub_1A471E5FC(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_sourceGroup] = a1;
  *&v7[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_destinationGroups] = a2;
  *&v7[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_destinationIndex] = a3;
  *&v7[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_modifiedGroups] = MEMORY[0x1E69E7CC0];
  v8 = a1;
  v9 = a2;
  result = [v8 photoLibrary];
  if (result)
  {
    v11 = result;
    v13.receiver = v7;
    v13.super_class = v3;
    v12 = objc_msgSendSuper2(&v13, sel_initWithPhotoLibrary_, result);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A471E6E0(void (*a1)(), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = ObjectType;
  v14 = sub_1A471E858;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1A3C2E0D0;
  v13 = &block_descriptor_262;
  v8 = _Block_copy(&v10);

  v14 = a1;
  v15 = a2;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1A3D6084C;
  v13 = &block_descriptor_6_10;
  v9 = _Block_copy(&v10);

  [v2 performChanges:v8 completionHandler:v9];
  _Block_release(v9);
  _Block_release(v8);
}

void sub_1A471E858()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_destinationGroups) fetchedObjects];
    if (!v2)
    {
LABEL_7:

      return;
    }

    v4 = v2;
    sub_1A3FABA8C(0, v3);
    v5 = sub_1A524CA34();

    if (v5 >> 62)
    {
      if (!sub_1A524E2B4())
      {
        goto LABEL_6;
      }
    }

    else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = *sub_1A468096C();
    v7 = *&v1[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_sourceGroup];
    v8 = *&v1[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_destinationIndex];
    v9 = v7;
    v11 = sub_1A471EC6C(v5, v7, v6, v8, v10);

    *&v1[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_modifiedGroups] = v11;
    goto LABEL_6;
  }
}

void sub_1A471E9C4(void (*a1)(), uint64_t a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_1A471F1C8;
  v13 = v5;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3C2E0D0;
  v11 = &block_descriptor_10_12;
  v6 = _Block_copy(&v8);

  v12 = a1;
  v13 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3D6084C;
  v11 = &block_descriptor_13_8;
  v7 = _Block_copy(&v8);

  [v2 performChanges:v6 completionHandler:v7];
  _Block_release(v7);
  _Block_release(v6);
}

double sub_1A471EB4C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);

  return result;
}

unint64_t sub_1A471EC6C(unint64_t result, void *a2, char *a3, char *a4, __n128 a5)
{
  v6 = result;
  v60 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  v56 = v7;
  if (result >> 62)
  {
    goto LABEL_42;
  }

  v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    while (1)
    {
      if (v8 < 1)
      {
        __break(1u);
        return result;
      }

      v9 = 0;
      v57 = a3;
      v58 = v6 & 0xC000000000000001;
      v10 = __OFADD__(v56, 1);
      v55 = v10;
      v54 = MEMORY[0x1E69E7CC0];
      v11 = &selRef_layoutSnapshot;
      while (1)
      {
        v12 = v58 ? MEMORY[0x1A59097F0](v9, v6) : *(v6 + 8 * v9 + 32);
        v13 = v12;
        v14 = [v12 v11[211]];
        v15 = sub_1A524C674();
        v17 = v16;

        if (a2)
        {
          v18 = [a2 v11[211]];
          v19 = a2;
          v20 = v6;
          v21 = v8;
          v22 = v18;
          v23 = sub_1A524C674();
          v25 = v24;

          v8 = v21;
          v6 = v20;
          a2 = v19;
          v11 = &selRef_layoutSnapshot;
        }

        else
        {
          v23 = 0;
          v25 = 0xE000000000000000;
        }

        if (v15 != v23 || v17 != v25)
        {
          break;
        }

LABEL_12:
        if (v8 == ++v9)
        {
          goto LABEL_44;
        }
      }

      v27 = sub_1A524EAB4();

      if (v27)
      {
        break;
      }

      v28 = v55;
      if (v57 == v56)
      {
        v29 = v56 + 1;
      }

      else
      {
        v28 = 0;
        v29 = v57;
      }

      if (v28)
      {
        goto LABEL_41;
      }

      if ([v13 manualOrder] == v29)
      {
        goto LABEL_30;
      }

      v31 = [objc_opt_self() changeRequestForSocialGroup:v13 userAction:1];
      if (!v31)
      {
        v34 = sub_1A524D244();
        v35 = *sub_1A3CAA3FC();
        if (os_log_type_enabled(v35, v34))
        {
          v35;
          v36 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v36 = 136315138;
          v37 = [v13 localIdentifier];
          v38 = sub_1A524C674();
          v40 = v39;

          sub_1A3C2EF94(v38, v40, &v59);
        }

LABEL_30:

        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_40;
        }

LABEL_37:
        v57 = v30;
        v11 = &selRef_layoutSnapshot;
        goto LABEL_12;
      }

      v32 = v31;
      [v31 setOrder_];
      v33 = v13;
      MEMORY[0x1A5907D70]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();

      v54 = v60;
      v30 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        goto LABEL_37;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v41 = a3;
      result = sub_1A524E2B4();
      a3 = v41;
      v8 = result;
      if (!result)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_12;
  }

LABEL_43:
  v54 = MEMORY[0x1E69E7CC0];
LABEL_44:
  if (a2)
  {
    v42 = objc_opt_self();
    v43 = a2;
    v44 = [v42 changeRequestForSocialGroup:v43 userAction:1];
    if (v44)
    {
      v45 = v44;
      [v44 setOrder_];
    }

    else
    {
      v46 = sub_1A524D244();
      v47 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v47, v46))
      {
        v48 = v47;
        v49 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v49 = 136315138;
        v50 = [v43 localIdentifier];
        v51 = sub_1A524C674();
        v53 = v52;

        sub_1A3C2EF94(v51, v53, &v59);
      }
    }
  }

  return v54;
}

void sub_1A471F1C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v15 = OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_modifiedGroups;
    v2 = *(Strong + OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_modifiedGroups);
    if (v2 >> 62)
    {
      v3 = sub_1A524E2B4();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v3)
    {
      objc_opt_self();
      if (v3 >= 1)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      __break(1u);
    }

    else
    {
      v4 = OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_sourceGroup;
      v5 = [objc_opt_self() changeRequestForSocialGroup:*&v1[OBJC_IVAR____TtC12PhotosUICore24SocialGroupReorderAction_sourceGroup] userAction:1];
      if (v5)
      {
        v6 = v5;
        [v5 setOrder_];
      }

      else
      {
        v7 = sub_1A524D244();
        v8 = *sub_1A3CAA3FC();
        if (os_log_type_enabled(v8, v7))
        {
          v9 = v8;
          v10 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v10 = 136315138;
          v11 = [*&v1[v4] localIdentifier];
          v12 = sub_1A524C674();
          v14 = v13;

          sub_1A3C2EF94(v12, v14, &v16);
        }
      }

      *&v1[v15] = MEMORY[0x1E69E7CC0];
    }
  }
}

void sub_1A471F624()
{
  if (qword_1EB17AE30 != -1)
  {
    swift_once();
  }

  if (*(qword_1EB17AE38 + 24))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_getKeyPath();
  sub_1A471F944();

  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A471F700()
{
  type metadata accessor for LemonadeDragAndDropSupportedTypesAsyncLoader(0);
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  sub_1A5241604();
  v1 = [objc_opt_self() sharedScheduler];
  v3[4] = sub_1A472043C;
  v3[5] = v0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A3C2E0D0;
  v3[3] = &block_descriptor_263;
  v2 = _Block_copy(v3);

  [v1 scheduleTaskWithQoS:1 block:v2];
  _Block_release(v2);

  qword_1EB17AE38 = v0;
}

void sub_1A471F828()
{
  swift_getKeyPath();
  sub_1A471F944();
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A471F89C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A471F944();
  sub_1A52415D4();

  *a2 = *(v3 + 16);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A471F944()
{
  result = qword_1EB1772B0;
  if (!qword_1EB1772B0)
  {
    type metadata accessor for LemonadeDragAndDropSupportedTypesAsyncLoader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1772B0);
  }

  return result;
}

uint64_t type metadata accessor for LemonadeDragAndDropSupportedTypesAsyncLoader(uint64_t a1)
{
  result = qword_1EB177298;
  if (!qword_1EB177298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A471FB1C(uint64_t a1)
{
  sub_1A472050C(0, &unk_1ED741F20, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_1A5246D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = aBlock - v10;
  v12 = [objc_opt_self() supportedTypes];
  v13 = sub_1A524CA34();

  v14 = [objc_opt_self() representedType];
  sub_1A524C674();

  sub_1A5246D24();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A4720444(v4);
  }

  else
  {
    v15 = *(v6 + 32);
    v15(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1A4720018(0, *(v13 + 2) + 1, 1, v13);
    }

    v17 = *(v13 + 2);
    v16 = *(v13 + 3);
    if (v17 >= v16 >> 1)
    {
      v13 = sub_1A4720018((v16 > 1), v17 + 1, 1, v13);
    }

    (*(v6 + 8))(v11, v5);
    *(v13 + 2) = v17 + 1;
    v15(&v13[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17], v8, v5);
  }

  v18 = [objc_opt_self() sharedScheduler];
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v13;
  aBlock[4] = sub_1A47204BC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_19_6;
  v20 = _Block_copy(aBlock);

  [v18 dispatchGraduallyOnMainThreadWhenNotAnimating_];
  _Block_release(v20);
}

uint64_t sub_1A471FEBC()
{

  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_91C49F7F4AA82C77F10CD5A5EFF607EC44LemonadeDragAndDropSupportedTypesAsyncLoader___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A471FF70(uint64_t a1)
{
  result = sub_1A5241614();
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

void *sub_1A4720018(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A472050C(0, &qword_1EB1202D0, MEMORY[0x1E69E6F90]);
  v10 = *(sub_1A5246D14() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1A5246D14() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A4720200(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5246D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1A47203E4();
    v22 = sub_1A524C594();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A47203E4()
{
  result = qword_1EB124A40;
  if (!qword_1EB124A40)
  {
    sub_1A5246D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124A40);
  }

  return result;
}

uint64_t sub_1A4720444(uint64_t a1)
{
  sub_1A472050C(0, &unk_1ED741F20, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A47204BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v1 + 24) = v2;
  swift_bridgeObjectRetain_n();

  sub_1A471F9F8(v2);
}

void sub_1A472050C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5246D14();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A4720574@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  sub_1A4720940(0);
  v22 = v2;
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  sub_1A4720AB0(0);
  v21 = v5;
  sub_1A472468C(0, &qword_1EB140C50, sub_1A4720B0C, &qword_1EB140C60, sub_1A4720B0C);
  v20 = v6;
  v19 = sub_1A4720B7C(&qword_1EB140C68, sub_1A4720AB0, MEMORY[0x1E697FDF8]);
  sub_1A4720B0C(255, v7);
  v9 = v8;
  v10 = sub_1A4720B7C(&qword_1EB140C60, sub_1A4720B0C, MEMORY[0x1E697BEF0]);
  v26 = v9;
  v27 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524B0E4();
  v30 = *(v1 + 8);
  v31 = v30;
  v12 = MEMORY[0x1E69E6370];
  v13 = MEMORY[0x1E6981790];
  sub_1A47248F4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v18[3] = v28;
  *&v30 = *(v1 + 24);
  BYTE8(v30) = *(v1 + 32);
  v14 = swift_allocObject();
  v15 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v1 + 32);

  sub_1A47247B0(&v31, &v26, &qword_1EB1274B0, v12, v13, sub_1A47248F4);
  sub_1A47247B0(&v30, &v26, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0], sub_1A4720E50);
  type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(0);
  v26 = v21;
  v27 = v20;
  v28 = v19;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A4720ED4();
  v16 = v22;
  sub_1A524AFF4();

  return (*(v24 + 8))(v4, v16);
}

void sub_1A4720940(uint64_t a1)
{
  if (!qword_1EB140C40)
  {
    sub_1A4720AB0(255);
    sub_1A472468C(255, &qword_1EB140C50, sub_1A4720B0C, &qword_1EB140C60, sub_1A4720B0C);
    sub_1A4720B7C(&qword_1EB140C68, sub_1A4720AB0, MEMORY[0x1E697FDF8]);
    sub_1A4720B0C(255, v1);
    sub_1A4720B7C(&qword_1EB140C60, sub_1A4720B0C, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140C40);
    }
  }
}

void sub_1A4720AB0(uint64_t a1)
{
  if (!qword_1EB140C48)
  {
    sub_1A3E86968();
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB140C48);
    }
  }
}

void sub_1A4720B0C(uint64_t a1, double a2)
{
  if (!qword_1EB140C58)
  {
    sub_1A41278A0(255, a2);
    sub_1A4127958(v2);
    v3 = sub_1A5247F34();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB140C58);
    }
  }
}

uint64_t sub_1A4720B7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4720BC4(uint64_t a1)
{
  v2 = sub_1A52498B4();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A4720B0C(0, v3);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249894();
  v14 = a1;
  sub_1A41278A0(0, v9);
  sub_1A4127958(v10);
  sub_1A5247F24();
  v11 = sub_1A4720B7C(&qword_1EB140C60, sub_1A4720B0C, MEMORY[0x1E697BEF0]);
  MEMORY[0x1A5904CD0](v8, v5, v11);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A4720D6C@<X0>(uint64_t a1@<X8>)
{
  *a1 = (*(**(v1 + 16) + 136))();
  *(a1 + 8) = swift_getKeyPath();
  *(a1 + 16) = 0;
  *(a1 + 24) = swift_getKeyPath();
  *(a1 + 32) = 0;
  v3 = *(type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(0) + 28);
  *(a1 + v3) = swift_getKeyPath();
  sub_1A4720E50(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A4720E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A4720ED4()
{
  result = qword_1EB1D06D8[0];
  if (!qword_1EB1D06D8[0])
  {
    type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D06D8);
  }

  return result;
}

uint64_t sub_1A4720F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A524B694();
  result = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1A4720FD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v46 = a2;
  v3 = sub_1A5249B64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4724488(0);
  v8 = *(v7 - 1);
  v42 = v7;
  v43 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A472438C(0, v9);
  v13 = *(v12 - 8);
  v44 = v12;
  v45 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = [objc_opt_self() transientAssetCollectionWithAssetFetchResult:*a1 title:0];
  v18 = PXPhotosViewConfigurationForAssetCollectionWithExistingAssetsFetchResult(v17, v16, 0, 0, 1);
  [v18 setAllowedActions_];
  [v18 setAllowedBehaviors_];
  [v18 setNavBarStyle_];

  v19 = v18;
  v20 = sub_1A524A084();
  v48 = v19;
  LOBYTE(v49) = v20;
  sub_1A5249B54();
  sub_1A4724538(0, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
  v22 = v21;
  v23 = sub_1A472458C();
  sub_1A524AED4();
  (*(v4 + 8))(v6, v3);

  v24 = sub_1A524C634();
  v25 = PXMemoryCreationLocalizedString(v24);

  sub_1A524C674();
  sub_1A4720E50(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1A52F8E10;
  v27 = [v16 count];
  v28 = MEMORY[0x1E69E65A8];
  *(v26 + 56) = MEMORY[0x1E69E6530];
  *(v26 + 64) = v28;
  *(v26 + 32) = v27;
  v29 = sub_1A524C6C4();
  v31 = v30;

  v48 = v29;
  v49 = v31;
  v52 = v22;
  v53 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_1A3D5F9DC();
  v34 = MEMORY[0x1E69E6158];
  v35 = v42;
  sub_1A524ABB4();

  (*(v43 + 8))(v11, v35);
  v47 = v41;
  sub_1A472468C(0, &qword_1EB122320, sub_1A3F1E8D8, &qword_1EB124628, sub_1A3F1E8D8);
  v48 = v35;
  v49 = v34;
  v50 = OpaqueTypeConformance2;
  v51 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1A3F1E8D8(255);
  v37 = v36;
  v38 = sub_1A4720B7C(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
  v48 = v37;
  v49 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v44;
  sub_1A524B0E4();

  return (*(v45 + 8))(v15, v39);
}

uint64_t sub_1A472155C(uint64_t a1)
{
  v2 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3F1E8D8(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249814();
  v11 = a1;
  sub_1A3D6DF58(0);
  sub_1A4720B7C(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
  sub_1A5247F24();
  v8 = sub_1A4720B7C(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
  MEMORY[0x1A5904CD0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A472172C(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B44();
  sub_1A4724824(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1A472488C(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView);
  return MEMORY[0x1A5906A80](v7, sub_1A4724750, v9);
}

uint64_t sub_1A47218A8(uint64_t a1)
{
  v2 = sub_1A5249234();
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E697BF90];
  v6 = MEMORY[0x1E697DCB8];
  sub_1A4720E50(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = sub_1A5248284();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(0);
  sub_1A47247B0(a1 + *(v14 + 28), v9, &unk_1EB128A60, v5, v6, sub_1A4720E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  else
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v18 + 8))(v4, v19);
  }

  sub_1A5248274();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A4721B6C(double a1)
{
  sub_1A47241AC(0, a1);
  sub_1A472438C(255, v1);
  sub_1A472468C(255, &qword_1EB122320, sub_1A3F1E8D8, &qword_1EB124628, sub_1A3F1E8D8);
  sub_1A4724488(255);
  sub_1A4724538(255, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
  sub_1A472458C();
  swift_getOpaqueTypeConformance2();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeConformance2();
  sub_1A3F1E8D8(255);
  sub_1A4720B7C(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1A5248824();
}

id sub_1A4721D5C()
{
  v1 = *v0;
  v2 = objc_allocWithZone(PXPhotosUIViewController);

  return [v2 initWithConfiguration_];
}

uint64_t sub_1A4721DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A4725408();

  return MEMORY[0x1EEE2C5A8](a1, a2, v4);
}

uint64_t sub_1A4721DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4725408();

  return MEMORY[0x1EEE2C5B0](a1, a2, a3, v6);
}

uint64_t sub_1A4721E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47253B4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4721EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A47253B4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A4721F0C(uint64_t a1)
{
  sub_1A47253B4();
  sub_1A5249ED4();
  __break(1u);
}

id sub_1A4721F34()
{
  swift_getKeyPath();
  (*(*v0 + 224))();

  v1 = v0[2];

  return v1;
}

uint64_t sub_1A4721FA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

void sub_1A4722018(void *a1)
{
  v2 = v1;
  v4 = v1[2];
  sub_1A3C52C70(0, &qword_1EB126C40, 0x1E6978840);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[2];
    v2[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 232))(v9);
  }
}

uint64_t sub_1A47221A8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 224))();

  v3 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource;
  swift_beginAccess();
  return sub_1A4724824(v1 + v3, a1, sub_1A4722174);
}

uint64_t sub_1A4722250@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 224))();

  v4 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource;
  swift_beginAccess();
  return sub_1A4724824(v3 + v4, a2, sub_1A4722174);
}

uint64_t sub_1A47222FC(uint64_t a1)
{
  sub_1A4722174(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4724824(a1, v4, sub_1A4722174);
  return sub_1A472239C(v4);
}

uint64_t sub_1A472239C(uint64_t a1)
{
  sub_1A4722174(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource;
  swift_beginAccess();
  sub_1A4724824(v1 + v6, v5, sub_1A4722174);
  v7 = sub_1A4724944(v5, a1);
  sub_1A4723CD0(v5, sub_1A4722174);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 232))(v9);
  }

  else
  {
    sub_1A4724824(a1, v5, sub_1A4722174);
    swift_beginAccess();
    sub_1A4724C2C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1A4723CD0(a1, sub_1A4722174);
}

uint64_t sub_1A4722580(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  v3 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource;
  v4 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  sub_1A5241604();
  type metadata accessor for GenerativeStoryEventAmbiguityAssetFetcher(0);
  *(v2 + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel_assetFetcher) = sub_1A4397C1C(a1);
  return v2;
}

void sub_1A4722654(uint64_t a1)
{
  v2 = v1;
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = v8;
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4723CB0(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4722174(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v40 = a1;
  sub_1A4724824(a1, &v36 - v19, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  v36 = *(v7 + 56);
  v36(v20, 0, 1, v6);
  swift_getKeyPath();
  (*(*v2 + 224))();

  v21 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource;
  swift_beginAccess();
  v22 = *(v10 + 56);
  sub_1A4724824(v20, v12, sub_1A4722174);
  sub_1A4724824(v2 + v21, &v12[v22], sub_1A4722174);
  v38 = v7;
  v23 = *(v7 + 48);
  if (v23(v12, 1, v6) == 1)
  {
    sub_1A4723CD0(v20, sub_1A4722174);
    if (v23(&v12[v22], 1, v6) == 1)
    {
      sub_1A4723CD0(v12, sub_1A4722174);
      return;
    }

    goto LABEL_6;
  }

  sub_1A4724824(v12, v17, sub_1A4722174);
  if (v23(&v12[v22], 1, v6) == 1)
  {
    sub_1A4723CD0(v20, sub_1A4722174);
    sub_1A4723CD0(v17, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
LABEL_6:
    sub_1A4723CD0(v12, sub_1A4723CB0);
LABEL_7:
    v24 = v40;
    v25 = v37;
    sub_1A4724824(v40, v37, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
    v36(v25, 0, 1, v6);
    sub_1A472239C(v25);
    v26 = sub_1A524CCB4();
    v27 = v41;
    (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
    v28 = v42;
    sub_1A4724824(v24, v42, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
    sub_1A524CC54();

    v29 = sub_1A524CC44();
    v30 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v31 = (v39 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E85E0];
    *(v32 + 16) = v29;
    *(v32 + 24) = v33;
    sub_1A472488C(v28, v32 + v30, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
    *(v32 + v31) = v2;
    sub_1A3D4D930(0, 0, v27, &unk_1A535B120, v32);

    return;
  }

  v34 = v42;
  sub_1A472488C(&v12[v22], v42, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  v35 = sub_1A4723540(v17, v34);
  sub_1A4723CD0(v34, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  sub_1A4723CD0(v20, sub_1A4722174);
  sub_1A4723CD0(v17, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  sub_1A4723CD0(v12, sub_1A4722174);
  if ((v35 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_1A4722C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1A3E86C68(0);
  v5[4] = swift_task_alloc();
  v6 = sub_1A5240664();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0);
  v5[9] = swift_task_alloc();
  sub_1A524CC54();
  v5[10] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v5[11] = v8;
  v5[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A4722D74, v8, v7);
}

uint64_t sub_1A4722D74()
{
  v21 = v0;
  sub_1A4724824(v0[2], v0[9], type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[9];
  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    v8 = v0[6];
    v7 = v0[7];
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    sub_1A3E86D04(0);
    v13 = *(v12 + 48);
    (*(v8 + 32))(v7, v2, v9);
    sub_1A472488C(v2 + v13, v10, sub_1A3E86C68);
    v19 = (*(**(v11 + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel_assetFetcher) + 136) + **(**(v11 + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel_assetFetcher) + 136));
    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    v14[1] = sub_1A472301C;
    v15 = v0[7];
    v16 = v0[4];

    return v19(v15, v16);
  }

  v3 = *v2;
  v2 = *(v0[3] + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel_assetFetcher);
  v0[15] = v2;
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_1A3C51BF0(*(v3 + 16), 0);
    v6 = sub_1A3C423E8(&v20, v5 + 4, v4, v3);
    sub_1A3C42540(v20);
    if (v6 != v4)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v0[16] = v5;
  v18 = (*v2 + 128) & 0xFFFFFFFFFFFFLL | 0x69AE000000000000;
  v0[17] = *(*v2 + 128);
  v0[18] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1A4723220, v2, 0);
}

uint64_t sub_1A472301C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1A4723144, v4, v3);
}

uint64_t sub_1A4723144()
{
  v1 = v0[14];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  sub_1A4722018(v1);
  sub_1A4723CD0(v5, sub_1A3E86C68);
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A4723220()
{
  *(v0 + 152) = (*(v0 + 136))(*(v0 + 128));

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1A4723298, v1, v2);
}

uint64_t sub_1A4723298()
{
  v1 = *(v0 + 152);

  sub_1A4722018(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4723468()
{
  sub_1A4723CD0(v0 + OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource, sub_1A4722174);

  v1 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4723540(uint64_t a1, uint64_t a2)
{
  sub_1A3FCA804(0);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E86C68(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v53 - v11;
  v12 = sub_1A5240664();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v53 - v16;
  v17 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  sub_1A4724D5C(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = &v25[*(v26 + 56)];
  sub_1A4724824(a1, v25, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  sub_1A4724824(a2, v27, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A4724824(v25, v22, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
    sub_1A3E86D04(0);
    v31 = *(v30 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1A4723CD0(&v22[v31], sub_1A3E86C68);
      (*(v13 + 8))(v22, v12);
      goto LABEL_7;
    }

    v33 = v62;
    v54 = *(v13 + 32);
    v55 = v13 + 32;
    v54(v62, v27, v12);
    v34 = v61;
    sub_1A472488C(&v22[v31], v61, sub_1A3E86C68);
    v35 = v27 + v31;
    v36 = v60;
    sub_1A472488C(v35, v60, sub_1A3E86C68);
    v37 = MEMORY[0x1A58FB980](v22, v33);
    v38 = *(v13 + 8);
    v38(v22, v12);
    if (v37)
    {
      v39 = *(v58 + 48);
      v40 = v34;
      v41 = v34;
      v42 = v59;
      sub_1A4724824(v40, v59, sub_1A3E86C68);
      v43 = v42;
      sub_1A4724824(v36, v42 + v39, sub_1A3E86C68);
      v44 = *(v13 + 48);
      if (v44(v43, 1, v12) == 1)
      {
        sub_1A4723CD0(v36, sub_1A3E86C68);
        v45 = v59;
        sub_1A4723CD0(v41, sub_1A3E86C68);
        v38(v62, v12);
        if (v44(v45 + v39, 1, v12) == 1)
        {
          sub_1A4723CD0(v45, sub_1A3E86C68);
          v29 = 1;
          goto LABEL_17;
        }
      }

      else
      {
        v46 = v57;
        sub_1A4724824(v43, v57, sub_1A3E86C68);
        if (v44(v43 + v39, 1, v12) != 1)
        {
          v48 = (v43 + v39);
          v49 = v56;
          v54(v56, v48, v12);
          sub_1A4720B7C(&qword_1EB12FC58, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
          v50 = v46;
          v51 = v43;
          v52 = sub_1A524C594();
          v38(v49, v12);
          sub_1A4723CD0(v36, sub_1A3E86C68);
          sub_1A4723CD0(v61, sub_1A3E86C68);
          v38(v62, v12);
          v38(v50, v12);
          sub_1A4723CD0(v51, sub_1A3E86C68);
          v32 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource;
          if (v52)
          {
            v29 = 1;
            goto LABEL_18;
          }

          goto LABEL_16;
        }

        sub_1A4723CD0(v36, sub_1A3E86C68);
        v45 = v59;
        sub_1A4723CD0(v61, sub_1A3E86C68);
        v38(v62, v12);
        v38(v46, v12);
      }

      sub_1A4723CD0(v45, sub_1A3FCA804);
    }

    else
    {
      sub_1A4723CD0(v36, sub_1A3E86C68);
      sub_1A4723CD0(v34, sub_1A3E86C68);
      v38(v33, v12);
    }

LABEL_16:
    v29 = 0;
    goto LABEL_17;
  }

  sub_1A4724824(v25, v19, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
  v28 = *v19;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = sub_1A3C5A018(v28, *v27);

LABEL_17:
    v32 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource;
    goto LABEL_18;
  }

LABEL_7:
  v29 = 0;
  v32 = sub_1A4724D5C;
LABEL_18:
  sub_1A4723CD0(v25, v32);
  return v29 & 1;
}

uint64_t sub_1A4723CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4723D30()
{
  v2 = *(type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A4722C24(v5, v6, v7, v0 + v3, v4);
}

void sub_1A4723E84(uint64_t a1)
{
  sub_1A4722174(319);
  if (v1 <= 0x3F)
  {
    sub_1A5241614();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A4723F6C(uint64_t a1)
{
  sub_1A3E86D04(319);
  if (v1 <= 0x3F)
  {
    sub_1A4724538(319, &qword_1EB120B48, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1A4724034(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126C40, 0x1E6978840);
  if (v1 <= 0x3F)
  {
    sub_1A4720E50(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A4720E50(319, &qword_1EB1246A0, sub_1A3E7D368, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A4720E50(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A47241AC(uint64_t a1, double a2)
{
  if (!qword_1EB140C80)
  {
    sub_1A472438C(255, a2);
    sub_1A472468C(255, &qword_1EB122320, sub_1A3F1E8D8, &qword_1EB124628, sub_1A3F1E8D8);
    sub_1A4724488(255);
    sub_1A4724538(255, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
    sub_1A472458C();
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A3F1E8D8(255);
    sub_1A4720B7C(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140C80);
    }
  }
}

void sub_1A472438C(uint64_t a1, double a2)
{
  if (!qword_1EB140C88)
  {
    sub_1A4724488(255);
    sub_1A4724538(255, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
    sub_1A472458C();
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140C88);
    }
  }
}

void sub_1A4724488(uint64_t a1)
{
  if (!qword_1EB140C90)
  {
    sub_1A4724538(255, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
    sub_1A472458C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140C90);
    }
  }
}

void sub_1A4724538(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A472458C()
{
  result = qword_1EB140CA0;
  if (!qword_1EB140CA0)
  {
    sub_1A4724538(255, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
    sub_1A4724638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140CA0);
  }

  return result;
}

unint64_t sub_1A4724638()
{
  result = qword_1EB1D0910[0];
  if (!qword_1EB1D0910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D0910);
  }

  return result;
}

void sub_1A472468C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4720B7C(a4, a5, MEMORY[0x1E697BEF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A4724750()
{
  v1 = *(type metadata accessor for GenerativeStoryEventDisambiguationShowSelectedAssetsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A47218A8(v2);
}

uint64_t sub_1A47247B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A4724824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A472488C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A47248F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A4724944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4722174(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4723CB0(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1A4724824(a1, v13, sub_1A4722174);
  sub_1A4724824(a2, &v13[v15], sub_1A4722174);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1A4724824(v13, v10, sub_1A4722174);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1A472488C(&v13[v15], v7, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
      v18 = sub_1A4723540(v10, v7);
      sub_1A4723CD0(v7, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
      sub_1A4723CD0(v10, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
      sub_1A4723CD0(v13, sub_1A4722174);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1A4723CD0(v10, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A4723CD0(v13, sub_1A4723CB0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A4723CD0(v13, sub_1A4722174);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1A4724C2C(uint64_t a1, uint64_t a2)
{
  sub_1A4722174(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4724C90()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore57GenerativeStoryEventDisambiguationSelectedAssetsViewModel__previousDataSource;
  swift_beginAccess();
  sub_1A4724CF8(v1, v2 + v3);
  return swift_endAccess();
}

uint64_t sub_1A4724CF8(uint64_t a1, uint64_t a2)
{
  sub_1A4722174(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1A4724D7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4724DDC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1A524C634();
  v5 = PXMemoryCreationLocalizedString(v4);

  sub_1A524C674();
  sub_1A4720E50(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  v7 = *(**v3 + 136);
  v8 = v7();
  v9 = [v8 count];

  v10 = MEMORY[0x1E69E65A8];
  *(v6 + 56) = MEMORY[0x1E69E6530];
  *(v6 + 64) = v10;
  *(v6 + 32) = v9;
  v11 = sub_1A524C6C4();
  v13 = v12;

  v25[2] = v11;
  v25[3] = v13;
  v28 = *(v3 + 8);
  v26 = *(v3 + 24);
  v27 = *(v3 + 32);
  v14 = swift_allocObject();
  v15 = *(v3 + 32);
  v16 = *(v3 + 16);
  *(v14 + 16) = *v3;
  *(v14 + 32) = v16;
  *(v14 + 48) = v15;

  sub_1A47247B0(&v28, v25, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790], sub_1A47248F4);
  sub_1A47247B0(&v26, v25, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0], sub_1A4720E50);
  sub_1A3D5F9DC();
  v17 = sub_1A524B754();
  v18 = (v7)(v17);
  v19 = [v18 count];

  LOBYTE(v11) = v19 == 0;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  sub_1A41278A0(0, v22);
  v24 = (a1 + *(v23 + 36));
  *v24 = KeyPath;
  v24[1] = sub_1A3E07024;
  v24[2] = v21;
}

uint64_t objectdestroyTm_74()
{

  j__swift_release(*(v0 + 40));

  return swift_deallocObject();
}

void sub_1A472519C(uint64_t a1)
{
  if (!qword_1EB140CB8)
  {
    sub_1A5248464();
    sub_1A47241AC(255, v1);
    sub_1A472438C(255, v2);
    sub_1A472468C(255, &qword_1EB122320, sub_1A3F1E8D8, &qword_1EB124628, sub_1A3F1E8D8);
    sub_1A4724488(255);
    sub_1A4724538(255, &qword_1EB140C98, &type metadata for GenerativeStoryEventDisambiguationAssetsGridView, MEMORY[0x1E6980320], MEMORY[0x1E697E830]);
    sub_1A472458C();
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A3F1E8D8(255);
    sub_1A4720B7C(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v3 = sub_1A5248834();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB140CB8);
    }
  }
}