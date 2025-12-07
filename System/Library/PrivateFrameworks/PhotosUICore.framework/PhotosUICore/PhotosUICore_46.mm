void (*sub_1A41F70F4(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1A52425F4();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_desiredInlinePlayState;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1A41F724C;
}

void sub_1A41F724C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1A41F6EE4(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1A41F6EE4(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1A41F72F8()
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_onPlaybackFinished);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3D607F0(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A41F7354(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_onPlaybackFinished);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C784D4(v6, v7);
}

uint64_t sub_1A41F7414()
{

  sub_1A3C784D4(*(v0 + 24), *(v0 + 32));

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_desiredInlinePlayState;
  v2 = sub_1A52425F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A3C784D4(*(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_onPlaybackFinished), *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_onPlaybackFinished + 8));

  return swift_deallocClassInstance();
}

void (*sub_1A41F7524(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 232))();
  return sub_1A3E62A10;
}

void (*sub_1A41F75FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 256))();
  return sub_1A3E658B0;
}

uint64_t sub_1A41F769C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, uint64_t), uint64_t a5)
{
  v6 = v5;
  v28 = a2;
  v29 = a3;
  v10 = sub_1A52425F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 24) = 0;
  *(v6 + 56) = 0;
  *(v6 + 32) = 0;
  v14 = (v6 + OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_onPlaybackFinished);
  *v14 = 0;
  v14[1] = 0;
  *(v6 + 16) = a1;
  v30 = a4;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  v15 = *(*a1 + 224);

  if ((v15(v16) & 1) != 0 && (sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328), v17 = [swift_getObjCClassFromMetadata() sharedInstance], v18 = objc_msgSend(v17, sel_hideInlinePlayerOnFirstSegment), v17, v18))
  {
    v19 = *(v6 + 24);
    v20 = *(v6 + 32);
    v21 = v29;
    *(v6 + 24) = v28;
    *(v6 + 32) = v21;

    v22 = v19;
    v23 = v20;
  }

  else
  {
    (*(*a1 + 248))();
    v24 = sub_1A52425C4();
    (*(v11 + 8))(v13, v10);
    if (v24)
    {
      v30(0, 0, 256);
    }

    v22 = *(v6 + 24);
    v23 = *(v6 + 32);
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
  }

  sub_1A3C784D4(v22, v23);
  (*(v11 + 104))(v6 + OBJC_IVAR____TtC12PhotosUICore25LemonadeInlineStoryPlayer_desiredInlinePlayState, *MEMORY[0x1E69C1EF0], v10);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = *(*a1 + 280);

  v26(sub_1A41F80CC, v25);

  return v6;
}

uint64_t type metadata accessor for LemonadeInlineStoryPlayer(uint64_t a1)
{
  result = qword_1EB183200;
  if (!qword_1EB183200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A41F79C8(uint64_t a1)
{
  result = sub_1A52425F4();
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

uint64_t getEnumTagSinglePayload for LemonadeInlineStoryPlayer.KenBurnsEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LemonadeInlineStoryPlayer.KenBurnsEffect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1A41F7B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A41F7B4C(uint64_t a1)
{
  v3 = v2;
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v6 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 32);
  v10 = (v1 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1A3D60150;

  return sub_1A41F658C(a1, v14, v15, v9, v1 + v6, v11, v12, v13);
}

double sub_1A41F7CBC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 56);
    *(Strong + 56) = 0;
    if (v2 == 1)
    {
      sub_1A41F5890();
    }
  }

  return result;
}

void sub_1A41F7D20(void *a1)
{
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *(v1 + v7);
  v10 = *v8;
  v11 = v8[1];

  sub_1A41F69BC(a1, v1 + v5, v10, v11, v9);
}

uint64_t objectdestroy_40Tm()
{
  sub_1A3C56534(0, &qword_1EB124B60, type metadata accessor for PhotosCollectionPreviewPlayer, off_1E7721028);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A41F8034()
{
  v1 = *(v0 + 16);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 collectionPreviewTransition];

  return v1(0, 0, (v3 == 1) | ((v3 != 1) << 8));
}

void sub_1A41F80CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = (*(*Strong + 240))(Strong);
    v3 = v2;

    if (v1)
    {
      v1(v4);
      sub_1A3C784D4(v1, v3);
    }
  }
}

void sub_1A41F81AC(uint64_t a1)
{
  if (!qword_1EB129E78)
  {
    sub_1A3C6B678(255, &qword_1EB126620, sub_1A3DEFC9C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB129E78);
    }
  }
}

uint64_t sub_1A41F8248@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeWallpaperCell(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  v6 = MEMORY[0x1E697DCB8];
  sub_1A3C6B678(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = v4[6];
  *(a2 + v7) = swift_getKeyPath();
  sub_1A3C6B678(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v6);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v4[7]);
  sub_1A41F8178(0);
  sub_1A524B694();
  *v8 = v11;
  v8[1] = v12;
  v9 = a2 + v4[8];
  result = swift_getKeyPath();
  *v9 = result;
  v9[8] = 0;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for LemonadeWallpaperCell(uint64_t a1)
{
  result = qword_1EB187180;
  if (!qword_1EB187180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A41F83D8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneOrientation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A41F842C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for LemonadeWallpaperCell(0);
  v47 = *(v2 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5244084();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41F8850(0);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  (*(**v1 + 120))(v9);
  sub_1A41F99E0();
  PXDisplayCollectionDetailedCountsMake();
  v42 = v14;
  v43 = v13;
  sub_1A41F8C44(v1, &v50);
  v15 = v50;
  v16 = v52;
  v17 = v51;
  sub_1A41F8F70();
  v50 = v15;
  v51 = v17;
  v52 = v16;
  v53 = v18;
  LOWORD(v54) = 0;
  sub_1A41F9DF4(&qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E69C2948], v6);
  sub_1A41F88D4(0);
  v20 = v19;
  v21 = sub_1A41F8A1C();
  sub_1A524A784();
  (*(v38 + 8))(v6, v39);
  j__swift_release(v15);
  v54 = type metadata accessor for LemonadeWallpaperModel(0);
  v55 = sub_1A41FA69C(&qword_1EB125898, type metadata accessor for LemonadeWallpaperModel, &unk_1A530F678);
  v50 = v12;

  v48 = v20;
  v49 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v45;
  v23 = v40;
  sub_1A524A554();
  (*(v41 + 8))(v11, v23);
  __swift_destroy_boxed_opaque_existential_0(&v50);
  v24 = v44;
  sub_1A41FA00C(v1, v44);
  v25 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v26 = (v46 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_1A41FA070(v24, v27 + v25);
  v28 = (v27 + v26);
  v30 = v42;
  v29 = v43;
  *v28 = v43;
  v28[1] = v30;
  sub_1A41FA1E0(0);
  v32 = (v22 + *(v31 + 36));
  sub_1A41FA304(0);
  v34 = v33;
  swift_unknownObjectRetain();
  result = sub_1A524CC74();
  v36 = (v32 + *(v34 + 40));
  *v36 = v29;
  v36[1] = v30;
  *v32 = &unk_1A5325350;
  v32[1] = v27;
  return result;
}

void sub_1A41F8850(uint64_t a1)
{
  if (!qword_1EB127660)
  {
    sub_1A41F88D4(255);
    sub_1A41F8A1C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127660);
    }
  }
}

void sub_1A41F88D4(uint64_t a1)
{
  if (!qword_1EB1285E0)
  {
    sub_1A3C6B678(255, &qword_1EB127538, sub_1A41F8964, MEMORY[0x1E69815F8]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1285E0);
    }
  }
}

void sub_1A41F8964(uint64_t a1)
{
  if (!qword_1EB127D60)
  {
    sub_1A41F89C4();
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127D60);
    }
  }
}

void sub_1A41F89C4()
{
  if (!qword_1EB128518)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128518);
    }
  }
}

unint64_t sub_1A41F8A1C()
{
  result = qword_1EB1285E8;
  if (!qword_1EB1285E8)
  {
    sub_1A41F88D4(255);
    sub_1A41F8A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1285E8);
  }

  return result;
}

unint64_t sub_1A41F8A9C()
{
  result = qword_1EB127540;
  if (!qword_1EB127540)
  {
    sub_1A3C6B678(255, &qword_1EB127538, sub_1A41F8964, MEMORY[0x1E69815F8]);
    sub_1A41F8B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127540);
  }

  return result;
}

unint64_t sub_1A41F8B44()
{
  result = qword_1EB127D68;
  if (!qword_1EB127D68)
  {
    sub_1A41F8964(255);
    sub_1A41F8BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127D68);
  }

  return result;
}

unint64_t sub_1A41F8BC4()
{
  result = qword_1EB128520;
  if (!qword_1EB128520)
  {
    sub_1A41F89C4();
    sub_1A3D41ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128520);
  }

  return result;
}

void sub_1A41F8C44(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5243454();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a1 + *(type metadata accessor for LemonadeWallpaperCell(0) + 28));
  v13 = v12[1];
  v30 = *v12;
  v31 = v13;
  sub_1A3C6B678(0, &unk_1EB1274C0, sub_1A41F8178, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v14 = v27;
  if (v27 && (v15 = v4, v16 = v5, v17 = v28, v18 = v29, v26 = v29, v19 = v14, v20 = v16, v21 = v15, sub_1A41FA6E4(v19, v17, v18), v18))
  {
    (*(v9 + 104))(v11, *MEMORY[0x1E69C24B0], v8);
    v22 = v26;
    sub_1A524B534();
    (*(v20 + 104))(v7, *MEMORY[0x1E6981630], v21);
    v23 = sub_1A524B5C4();

    (*(v20 + 8))(v7, v21);
    v27 = v23;
    LOWORD(v28) = 1;
    sub_1A41F89C4();
    sub_1A41F8BC4();

    sub_1A5249744();
  }

  else
  {
    v27 = sub_1A43F253C();
    LOWORD(v28) = 256;
    sub_1A41F89C4();
    sub_1A41F8BC4();
    sub_1A5249744();
  }

  v24 = BYTE8(v30);
  v25 = BYTE9(v30);
  *a2 = v30;
  *(a2 + 8) = v24;
  *(a2 + 9) = v25;
}

void sub_1A41F8F70()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5242D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadeWallpaperCell(0);
  sub_1A41F9DF4(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v8);
  v10 = (*(v6 + 88))(v8, v5);
  if (v10 == *MEMORY[0x1E69C2200])
  {
LABEL_2:
    v11 = MobileGestalt_get_current_device();
    if (v11)
    {
      v12 = v11;
      MobileGestalt_get_mainScreenWidth();

      v13 = MobileGestalt_get_current_device();
      if (v13)
      {
        v14 = v13;
        MobileGestalt_get_mainScreenHeight();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v10 != *MEMORY[0x1E69C21F8])
  {
    if (v10 != *MEMORY[0x1E69C21F0] && v10 != *MEMORY[0x1E69C21E8] && v10 != *MEMORY[0x1E69C2208] && v10 != *MEMORY[0x1E69C2210] && v10 != *MEMORY[0x1E69C21E0])
    {
      v27 = MobileGestalt_get_current_device();
      if (v27)
      {
        v28 = v27;
        MobileGestalt_get_mainScreenWidth();

        v29 = MobileGestalt_get_current_device();
        if (v29)
        {
          v30 = v29;
          MobileGestalt_get_mainScreenHeight();

          (*(v6 + 8))(v8, v5);
          return;
        }

        goto LABEL_37;
      }

      goto LABEL_34;
    }

    goto LABEL_2;
  }

  v15 = v0 + *(v9 + 32);
  v16 = *v15;
  if ((*(v15 + 8) & 1) == 0)
  {

    v17 = sub_1A524D254();
    v18 = sub_1A524A014();
    sub_1A5246DF4(v17, &dword_1A3C1C000, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v16, 0);
    (*(v2 + 8))(v4, v1);
    v16 = v31[1];
  }

  v19 = MobileGestalt_get_current_device();
  v20 = v19;
  if (v16 == 2)
  {
    if (!v19)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    MobileGestalt_get_mainScreenWidth();

    v21 = MobileGestalt_get_current_device();
    if (!v21)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_11:
    v22 = v21;
    MobileGestalt_get_mainScreenHeight();

    return;
  }

  if (!v19)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  MobileGestalt_get_mainScreenWidth();

  v21 = MobileGestalt_get_current_device();
  if (v21)
  {
    goto LABEL_11;
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_1A41F93D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  sub_1A524CC54();
  v3[30] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[31] = v5;
  v3[32] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A41F946C, v5, v4);
}

uint64_t sub_1A41F946C()
{
  v1 = *(v0 + 216);
  v2 = (v1 + *(type metadata accessor for LemonadeWallpaperCell(0) + 28));
  v3 = *v2;
  *(v0 + 264) = *v2;
  v4 = v2[1];
  *(v0 + 272) = v4;
  v5 = v2[2];
  *(v0 + 280) = v5;
  v6 = v2[3];
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v26 = v7;
  *(v0 + 16) = v7;
  *(v0 + 288) = v6;
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v24 = v7;
  *(v0 + 32) = v7;
  sub_1A3C6B678(0, &unk_1EB1274C0, sub_1A41F8178, MEMORY[0x1E6981790]);
  *(v0 + 296) = v8;
  sub_1A524B6A4();
  v9 = *(v0 + 112);
  if (v9 && (sub_1A41FA6E4(v9, *(v0 + 120), *(v0 + 128)), *(v0 + 80) = v26, *(v0 + 96) = v24, sub_1A524B6A4(), (v10 = *(v0 + 160)) != 0) && (v12 = *(v0 + 168), v11 = *(v0 + 176), v14 = *(v0 + 224), v13 = *(v0 + 232), v15 = swift_unknownObjectRetain(), sub_1A41FA6E4(v15, v12, v11), *(v0 + 184) = v10, *(v0 + 192) = v12, *(v0 + 200) = v14, *(v0 + 208) = v13, sub_1A41FA360(), LOBYTE(v11) = sub_1A524C594(), swift_unknownObjectRelease(), (v11 & 1) != 0))
  {

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = sub_1A3C5C9EC();
    v19 = *v18;
    *(v0 + 304) = *v18;
    v20 = *((*MEMORY[0x1E69E7D40] & *v19) + 0xD8);
    v19;
    v25 = (v20 + *v20);
    v21 = swift_task_alloc();
    *(v0 + 312) = v21;
    *v21 = v0;
    v21[1] = sub_1A41F9730;
    v23 = *(v0 + 224);
    v22 = *(v0 + 232);

    return v25(v23, v22);
  }
}

uint64_t sub_1A41F9730(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = v4[38];
  if (v1)
  {

    v7 = v5[31];
    v8 = v5[32];
    v9 = sub_1A41F9934;
  }

  else
  {

    v5[40] = a1;
    v7 = v5[31];
    v8 = v5[32];
    v9 = sub_1A41F987C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1A41F987C()
{
  v1 = *(v0 + 320);

  if (sub_1A524CDC4())
  {
  }

  else
  {
    *(v0 + 136) = *(v0 + 224);
    v2 = *(v0 + 232);
    v3 = *(v0 + 280);
    *(v0 + 48) = *(v0 + 264);
    *(v0 + 64) = v3;
    *(v0 + 144) = v2;
    *(v0 + 152) = v1;
    swift_unknownObjectRetain();
    sub_1A524B6B4();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A41F9934()
{

  if ((sub_1A524CDC4() & 1) == 0)
  {
    *(v0 + 136) = *(v0 + 224);
    v1 = *(v0 + 232);
    v2 = *(v0 + 280);
    *(v0 + 48) = *(v0 + 264);
    *(v0 + 64) = v2;
    *(v0 + 144) = v1;
    *(v0 + 152) = 0;
    swift_unknownObjectRetain();
    sub_1A524B6B4();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A41F99E0()
{
  v1 = sub_1A5249234();
  v25 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69C2218];
  sub_1A3C6B678(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = sub_1A5242D14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LemonadeWallpaperCell(0);
  v24 = v0;
  sub_1A41FA724(v0 + *(v23 + 24), v7, &qword_1EB128AA0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    v12 = v25;
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    v12 = v25;
    (*(v25 + 8))(v3, v1);
  }

  v15 = v3;
  v16 = (*(v9 + 88))(v11, v8);
  if (v16 == *MEMORY[0x1E69C2200])
  {
    return 1;
  }

  v18 = v16;
  if (v16 == *MEMORY[0x1E69C21F8])
  {
    v19 = v24 + *(v23 + 32);
    result = *v19;
    if ((*(v19 + 8) & 1) == 0)
    {
      v20 = *v19;

      v21 = sub_1A524D254();
      v22 = sub_1A524A014();
      sub_1A5246DF4(v21, &dword_1A3C1C000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v20, 0);
      (*(v12 + 8))(v15, v1);
      return v26;
    }
  }

  else
  {
    result = 1;
    if (v18 != *MEMORY[0x1E69C21F0] && v18 != *MEMORY[0x1E69C21E8] && v18 != *MEMORY[0x1E69C2208] && v18 != *MEMORY[0x1E69C2210] && v18 != *MEMORY[0x1E69C21E0])
    {
      (*(v9 + 8))(v11, v8);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1A41F9DF4@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B678(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A41FA724(v8, &v21 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1A41FA00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeWallpaperCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41FA070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeWallpaperCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41FA0D4()
{
  v2 = *(type metadata accessor for LemonadeWallpaperCell(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A41F93D0(v0 + v3, v5, v6);
}

void sub_1A41FA1E0(uint64_t a1)
{
  if (!qword_1EB123FE8)
  {
    sub_1A41FA248(255);
    sub_1A41FA304(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123FE8);
    }
  }
}

void sub_1A41FA248(uint64_t a1)
{
  if (!qword_1EB121FF8)
  {
    sub_1A41F8850(255);
    sub_1A41F88D4(255);
    sub_1A41F8A1C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FF8);
    }
  }
}

void sub_1A41FA304(uint64_t a1)
{
  if (!qword_1EB127FF8)
  {
    sub_1A41FA360();
    v1 = sub_1A52494D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127FF8);
    }
  }
}

unint64_t sub_1A41FA360()
{
  result = qword_1EB129E68;
  if (!qword_1EB129E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129E68);
  }

  return result;
}

void sub_1A41FA3F8(uint64_t a1)
{
  type metadata accessor for LemonadeWallpaperModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A3C6B678(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A3C6B678(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A3C6B678(319, &unk_1EB1274C0, sub_1A41F8178, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1A3C6B678(319, &qword_1EB124698, type metadata accessor for PXUserInterfaceOrientation, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1A41FA584()
{
  result = qword_1EB123FF0;
  if (!qword_1EB123FF0)
  {
    sub_1A41FA1E0(255);
    sub_1A41F8850(255);
    sub_1A41F88D4(255);
    sub_1A41F8A1C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A41FA69C(&qword_1EB128000, sub_1A41FA304, MEMORY[0x1E697C520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123FF0);
  }

  return result;
}

uint64_t sub_1A41FA69C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A41FA6E4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A41FA724(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C6B678(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A41FA7E8(uint64_t a1, void *a2)
{
  *(v2 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_dataSource) = 0;
  *(v2 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_isInSelectMode) = 0;
  *(v2 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_selectionSnapshot) = 0;
  v3 = (v2 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_viewModelObservation);
  *v3 = 0;
  v3[1] = 0;
  v4 = v2 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_updateFlags;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  v5 = v2 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_postUpdateFlags;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v2 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_contentMediaVersion) = 0;
  type metadata accessor for ConcretePhotosDynamicHeaderInsets(0);
  sub_1A40224C4();
}

void *sub_1A41FAD04()
{
  v1 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*sub_1A41FAD5C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_1A41FADE4;
}

uint64_t sub_1A41FADEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

id sub_1A41FAEAC()
{
  v1 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_spec;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A41FAF00(void *a1)
{
  v3 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_spec;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v8 = 1;
  v6 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_updateFlags;
  swift_beginAccess();
  v7 = sub_1A41FCE40();
  PXGLayout.invalidate<A>(updateFlags:with:)(v1 + v6, &v8, &type metadata for PhotosDynamicHeaderLayout.InvalidatableEntities, v7);
}

uint64_t (*sub_1A41FAFB4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_1A41FB03C;
}

uint64_t sub_1A41FB044@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41FB0FC()
{
  v1 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_isInSelectMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41FB140(char a1)
{
  v3 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_isInSelectMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v6 = 2;
  v4 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_updateFlags;
  swift_beginAccess();
  v5 = sub_1A41FCE40();
  PXGLayout.invalidate<A>(updateFlags:with:)(v1 + v4, &v6, &type metadata for PhotosDynamicHeaderLayout.InvalidatableEntities, v5);
}

uint64_t (*sub_1A41FB1D8(uint64_t *a1))(uint64_t, uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_1A41FFBD8;
}

uint64_t sub_1A41FB260@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41FB2C4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x110);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A41FB334()
{
  v1 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_selectionSnapshot;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A41FB38C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  v9 = 2;
  v7 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_updateFlags;
  swift_beginAccess();
  v8 = sub_1A41FCE40();
  PXGLayout.invalidate<A>(updateFlags:with:)(v2 + v7, &v9, &type metadata for PhotosDynamicHeaderLayout.InvalidatableEntities, v8);
}

uint64_t (*sub_1A41FB434(uint64_t *a1))(uint64_t, uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_1A41FFBD8;
}

void sub_1A41FB4BC(void *a1, char a2, uint64_t a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v5[4];
    v5[3] = a3;
    v7 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_updateFlags;
    swift_beginAccess();
    v8 = sub_1A41FCE40();
    PXGLayout.invalidate<A>(updateFlags:with:)(v6 + v7, (v5 + 3), &type metadata for PhotosDynamicHeaderLayout.InvalidatableEntities, v8);
  }

  free(v5);
}

void *sub_1A41FB55C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_1A41FB85C(void *a1, uint64_t a2, const char **a3, void (*a4)(char *))
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for PhotosDynamicHeaderLayout(a1, a2);
  v6 = *a3;
  v7 = v10.receiver;
  objc_msgSendSuper2(&v10, v6);
  v8 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_updateFlags;
  swift_beginAccess();
  a4(&v7[v8]);
  swift_endAccess();
  v9 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_postUpdateFlags;
  swift_beginAccess();
  a4(&v7[v9]);
  swift_endAccess();
}

void sub_1A41FB930(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for PhotosDynamicHeaderLayout(a1, a2);
  objc_msgSendSuper2(&v6, sel_referenceSizeDidChange);
  v5 = 1;
  v3 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_postUpdateFlags;
  swift_beginAccess();
  v4 = sub_1A41FCE94();
  PXGLayout.invalidate<A>(updateFlags:with:)(v2 + v3, &v5, &type metadata for PhotosDynamicHeaderLayout.PostInvalidatableEntities, v4);
}

void sub_1A41FBB14(void *a1, uint64_t a2, const char **a3)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for PhotosDynamicHeaderLayout(a1, a2);
  v4 = *a3;
  v5 = v9.receiver;
  objc_msgSendSuper2(&v9, v4);
  v8 = 1;
  v6 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_postUpdateFlags;
  swift_beginAccess();
  v7 = sub_1A41FCE94();
  PXGLayout.invalidate<A>(updateFlags:with:)(v5 + v6, &v8, &type metadata for PhotosDynamicHeaderLayout.PostInvalidatableEntities, v7);
}

id sub_1A41FBBF4(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___PXPhotosDynamicHeaderLayout_context];
  if (v2[OBJC_IVAR___PXPhotosDynamicHeaderLayout_context + 8])
  {
    v4 = [objc_opt_self() px_sharedApplication];
    v5 = [v4 px_firstKeyWindow];

    if (v5)
    {
      [v5 safeAreaInsets];
    }

    v8 = *v3;
    type metadata accessor for PhotosDynamicTitleOverlayController(0, v6);
    v9 = v8;
    sub_1A524D554();
  }

  [v2 referenceSize];

  return [v2 setContentSize_];
}

uint64_t sub_1A41FBD8C()
{
  if ([v0 localNumberOfSprites] != 2)
  {
    [v0 applySpriteChangeDetails:0 countAfterChanges:2 initialState:0 modifyState:0];
  }

  v3[4] = sub_1A41FBE9C;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A41FBEA8;
  v3[3] = &block_descriptor_122;
  v1 = _Block_copy(v3);

  [v0 modifySpritesInRange:0x200000000 state:v1];
  _Block_release(v1);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_1A41FBEE0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___PXPhotosDynamicHeaderLayout_context];
  LOBYTE(aBlock) = v0[OBJC_IVAR___PXPhotosDynamicHeaderLayout_context + 8];
  LOBYTE(v28) = 0;
  sub_1A41ABE60();
  if (sub_1A524C594())
  {
    return;
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 dynamicHeaderDebugOverlay];

  if (v4)
  {
    return;
  }

  v21 = *&v1[OBJC_IVAR___PXPhotosDynamicHeaderLayout_blurLayout];
  [v21 viewSizeDidChange];
  v5 = [v1 sublayoutDataStore];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = swift_allocObject();
    v9 = sub_1A41FF4A0;
    *(v8 + 16) = sub_1A41FF4A0;
    *(v8 + 24) = v7;
    v25 = sub_1A3D9C3A0;
    v26 = v8;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v23 = sub_1A3D9B774;
    v24 = &block_descriptor_102_1;
    v10 = _Block_copy(&aBlock);
    v11 = v1;

    [v6 enumerateSublayoutsUsingBlock_];

    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v9 = 0;
  v7 = 0;
LABEL_7:
  v12 = [v1 sublayoutDataStore];
  if (!v12)
  {
LABEL_10:
    v16 = 0;
    v14 = 0;
    goto LABEL_11;
  }

  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = swift_allocObject();
  v16 = sub_1A41FF3E8;
  *(v15 + 16) = sub_1A41FF3E8;
  *(v15 + 24) = v14;
  v25 = sub_1A41FF478;
  v26 = v15;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v23 = sub_1A41FC31C;
  v24 = &block_descriptor_93_1;
  v17 = _Block_copy(&aBlock);
  v18 = v1;

  [v13 enumerateSublayoutGeometriesUsingBlock_];

  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  if (v2[8] > 1u)
  {
    if (v2[8] == 2)
    {
      [v21 setAlpha_];
    }

    else
    {
      [v21 setAlpha_];
    }
  }

  else if (v2[8])
  {
    [v1 visibleRect];
    MinY = CGRectGetMinY(v29);
    [v1 safeAreaInsets];
    v27 = (MinY + v20) * 0.25;
    aBlock = xmmword_1A5303A10;
    sub_1A3EF6938();
    sub_1A524C524();
  }

  sub_1A3C33378(v9, v7);
  sub_1A3C33378(v16, v14);
}

void sub_1A41FC354()
{
  PXGLayout.referenceBounds.getter();
  [v0 visibleRect];
  sub_1A524DA04();
}

id PhotosDynamicHeaderLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

CGSize __swiftcall PhotosDynamicHeaderLayout.singleViewLayout(_:desiredSizeForReferenceSize:)(PXGSingleViewLayout *_, CGSize desiredSizeForReferenceSize)
{
  width = desiredSizeForReferenceSize.width;
  [v2 contentSize];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

unint64_t sub_1A41FCE40()
{
  result = qword_1EB12ABC8;
  if (!qword_1EB12ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ABC8);
  }

  return result;
}

unint64_t sub_1A41FCE94()
{
  result = qword_1EB12AB90;
  if (!qword_1EB12AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AB90);
  }

  return result;
}

void sub_1A41FCEE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((a2 & 0x400000000000) != 0)
    {
      v7 = 1;
      v5 = OBJC_IVAR___PXPhotosDynamicHeaderLayout_updateFlags;
      swift_beginAccess();
      v6 = sub_1A41FCE40();
      PXGLayout.invalidate<A>(updateFlags:with:)(v4 + v5, &v7, &type metadata for PhotosDynamicHeaderLayout.InvalidatableEntities, v6);
    }
  }
}

void sub_1A41FCFE0(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PhotosDynamicHeaderBlurView(a1, a2);
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v3 = *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2927PhotosDynamicHeaderBlurView_blurView];
  [v2 bounds];
  [v3 setFrame_];
  v4 = [v2 traitCollection];
  [v4 displayScale];

  [v2 bounds];
  sub_1A524D9C4();
}

void sub_1A41FD21C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_boundsIndicator] = 0;
  *&v6[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_mainContentIndicator] = 0;
  *&v6[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_safeAreaIndicator] = 0;
  *&v6[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_floatingAreaIndicator] = 0;
  v11 = &v6[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_insets];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = &v6[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_insetsObservation];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v6[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_userData] = 0;
  v13 = &v6[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_clippingRect];
  v14 = type metadata accessor for PhotosDynamicHeaderLayoutDebugOverlayView(a5, a6);
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v19.receiver = v6;
  v19.super_class = v14;
  v15 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 redColor];
  sub_1A5245E44();
}

void sub_1A41FD578(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_insets);
  swift_beginAccess();
  v4 = v3[3];
  if (v4)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    *(&v25 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v24);
    sub_1A524E424();
    (*(v6 + 8))(v9, v4);
    v10 = *(&v25 + 1);
    v11 = AssociatedConformanceWitness;
    v12 = __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
    *(&v28 + 1) = v10;
    v29 = *(v11 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
    __swift_destroy_boxed_opaque_existential_0(&v24);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
  }

  sub_1A41FF1D8(a1, v22);
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(v22, v23);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v19);
    sub_1A524E424();
    v14 = AssociatedTypeWitness;
    v15 = v21;
    v16 = __swift_project_boxed_opaque_existential_1(v19, AssociatedTypeWitness);
    *(&v25 + 1) = v14;
    AssociatedConformanceWitness = *(v15 + 8);
    v17 = __swift_allocate_boxed_opaque_existential_1(&v24);
    (*(*(v14 - 8) + 16))(v17, v16, v14);
    __swift_destroy_boxed_opaque_existential_0(v19);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    sub_1A3EA8D18(v22, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets);
    v24 = 0u;
    v25 = 0u;
    AssociatedConformanceWitness = 0;
  }

  sub_1A5246794();
}

void sub_1A41FD9B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68.receiver = v2;
  v68.super_class = type metadata accessor for PhotosDynamicHeaderLayoutDebugOverlayView(a1, a2);
  objc_msgSendSuper2(&v68, sel_layoutSubviews);
  v4 = *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_boundsIndicator];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = *MEMORY[0x1E69DDCE0];
  v6 = *(MEMORY[0x1E69DDCE0] + 8);
  v7 = v4;
  [v3 bounds];
  [v7 setFrame_];
  [v7 setHidden_];

  v12 = *&v3[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_mainContentIndicator];
  if (!v12)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v13 = OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_insets;
  swift_beginAccess();
  sub_1A41FF1D8(&v3[v13], v65);
  v14 = v66;
  if (v66)
  {
    v15 = v67;
    v16 = __swift_project_boxed_opaque_existential_1(v65, v66);
    v17 = *(v14 - 8);
    v18 = MEMORY[0x1EEE9AC00](v16);
    v20 = &v64[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v17 + 16))(v20, v18);
    v21 = v12;
    sub_1A3EA8D18(v65, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets);
    v22 = (*(v15 + 24))(v14, v15);
    v24 = v23;
    (*(v17 + 8))(v20, v14);
    [v3 bounds];
    [v21 setFrame_];
  }

  else
  {
    v29 = v12;
    sub_1A3EA8D18(v65, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets);
  }

  [v12 setHidden_];

  v30 = *&v3[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_safeAreaIndicator];
  if (!v30)
  {
    goto LABEL_17;
  }

  sub_1A41FF1D8(&v3[v13], v65);
  v31 = v66;
  if (v66)
  {
    v32 = v67;
    v33 = __swift_project_boxed_opaque_existential_1(v65, v66);
    v34 = *(v31 - 8);
    v35 = MEMORY[0x1EEE9AC00](v33);
    v37 = &v64[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v34 + 16))(v37, v35);
    v38 = v30;
    sub_1A3EA8D18(v65, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets);
    v39 = (*(v32 + 48))(v31, v32);
    v41 = v40;
    (*(v34 + 8))(v37, v31);
    [v3 bounds];
    [v38 setFrame_];
  }

  else
  {
    v46 = v30;
    sub_1A3EA8D18(v65, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets);
  }

  [v30 setHidden_];

  v47 = *&v3[OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_floatingAreaIndicator];
  if (!v47)
  {
    goto LABEL_18;
  }

  sub_1A41FF1D8(&v3[v13], v65);
  v48 = v66;
  if (v66)
  {
    v49 = v67;
    v50 = __swift_project_boxed_opaque_existential_1(v65, v66);
    v51 = *(v48 - 8);
    v52 = MEMORY[0x1EEE9AC00](v50);
    v54 = &v64[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v51 + 16))(v54, v52);
    v55 = v47;
    sub_1A3EA8D18(v65, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets);
    v56 = (*(v49 + 32))(v48, v49);
    v58 = v57;
    (*(v51 + 8))(v54, v48);
    [v3 bounds];
    [v55 setFrame_];
  }

  else
  {
    v63 = v47;
    sub_1A3EA8D18(v65, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets);
  }

  [v47 setHidden_];
}

void sub_1A41FE0BC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_userData) && (type metadata accessor for PhotosDynamicHeaderLayoutDebugOverlayView.UserData(a1, a2), (v3 = swift_dynamicCastClass()) != 0))
  {
    sub_1A3C341C8(v3 + OBJC_IVAR____TtCC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView8UserData_insets, v6);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
  }

  v4 = OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_insets;
  swift_beginAccess();
  sub_1A41FF1D8(v2 + v4, v5);
  swift_beginAccess();
  sub_1A41FF254(v6, v2 + v4);
  swift_endAccess();
  sub_1A41FD578(v5);
}

id sub_1A41FE274(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A41FE360(uint64_t a1, double a2, double a3)
{
  v5.n128_u64[1] = *(sub_1A43ACA40() + 1);
  v5.n128_f64[0] = a3;
  PhotosDynamicHeaderSpec.headerHeight(for:)(a2, v5);
}

PXPhotosDynamicHeaderLayoutUtilities __swiftcall PXPhotosDynamicHeaderLayoutUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

BOOL sub_1A41FE4F4(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1A41FE524@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1A41FE550@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

void sub_1A41FE610(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_1A41FE65C(a1);

  *a2 = v3;
}

uint64_t sub_1A41FE65C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1A41FE694(_OWORD *a1, uint64_t a2)
{
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v15 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = *(off_1E7722048 + 4);
  v4 = *(off_1E7722048 + 5);
  a1[4] = v5;
  a1[5] = v4;
  v7 = *(off_1E7722048 + 2);
  v6 = *(off_1E7722048 + 3);
  a1[2] = v7;
  a1[3] = v6;
  v9 = *(off_1E7722048 + 8);
  v8 = *(off_1E7722048 + 9);
  a1[8] = v9;
  a1[9] = v8;
  v11 = *(off_1E7722048 + 6);
  v10 = *(off_1E7722048 + 7);
  a1[6] = v11;
  a1[7] = v10;
  v12 = *off_1E7722048;
  v13 = *(off_1E7722048 + 1);
  *a1 = *off_1E7722048;
  a1[1] = v13;
  *a2 = 2561;
  a1[16] = v11;
  a1[17] = v10;
  a1[18] = v9;
  a1[19] = v8;
  a1[12] = v7;
  a1[13] = v6;
  a1[14] = v5;
  a1[15] = v4;
  a1[10] = v12;
  a1[11] = v13;
  if ([v15 dynamicHeaderDebugOverlay] == 1)
  {
    v14 = 10;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 41) = v14;
  *(a2 + 40) = 1;
}

uint64_t sub_1A41FE778(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return type metadata accessor for PhotosDynamicHeaderView(0, a2);
  }

  if (a1 == 1)
  {
    return type metadata accessor for PhotosDynamicHeaderLayoutDebugOverlayView(a1, a2);
  }

  sub_1A524E404();

  v3 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v3);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A41FE85C(int a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = *(v1 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_insets);
      v22[3] = type metadata accessor for ConcretePhotosDynamicHeaderInsets(0);
      v23 = sub_1A41FF3A0(&qword_1EB12AE28, type metadata accessor for ConcretePhotosDynamicHeaderInsets, &unk_1A5312AE8);
      v22[0] = v10;
      v12 = type metadata accessor for PhotosDynamicHeaderLayoutDebugOverlayView.UserData(v23, v11);
      v13 = objc_allocWithZone(v12);
      sub_1A3C341C8(v22, v13 + OBJC_IVAR____TtCC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView8UserData_insets);
      v24.receiver = v13;
      v24.super_class = v12;

      v9 = objc_msgSendSuper2(&v24, sel_init);
      __swift_destroy_boxed_opaque_existential_0(v22);
      return v9;
    }

    sub_1A524E404();

    v22[0] = 0xD000000000000011;
    v22[1] = 0x80000001A53CCB70;
    LODWORD(v17) = a1;
    v16 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v16);
  }

  else
  {
    v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
    if (v2)
    {
      v4 = v2;
      type metadata accessor for PhotosDynamicHeaderView.UserData(0, v3);
      v5 = *(v1 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_context + 8);
      v20 = *(v1 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_context);
      v21 = v5;
      v6 = *(v1 + OBJC_IVAR___PXPhotosDynamicHeaderLayout_insets);
      v18 = type metadata accessor for ConcretePhotosDynamicHeaderInsets(0);
      v19 = sub_1A41FF3A0(&qword_1EB12AE28, type metadata accessor for ConcretePhotosDynamicHeaderInsets, &unk_1A5312AE8);
      *&v17 = v6;
      v7 = v20;
      v8 = v4;

      sub_1A419C2F0(&v20, v8, &v17, v22);
      v9 = sub_1A419C76C(v22);

      return v9;
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A41FEB14(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A41FFB64(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41FEB70()
{
  result = qword_1EB12ABF0;
  if (!qword_1EB12ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ABF0);
  }

  return result;
}

unint64_t sub_1A41FEBC8()
{
  result = qword_1EB12ABE8;
  if (!qword_1EB12ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ABE8);
  }

  return result;
}

unint64_t sub_1A41FEC20()
{
  result = qword_1EB12AC00;
  if (!qword_1EB12AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AC00);
  }

  return result;
}

unint64_t sub_1A41FEC78()
{
  result = qword_1EB12ABD8;
  if (!qword_1EB12ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ABD8);
  }

  return result;
}

unint64_t sub_1A41FECD0()
{
  result = qword_1EB12ABB0;
  if (!qword_1EB12ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ABB0);
  }

  return result;
}

unint64_t sub_1A41FED28()
{
  result = qword_1EB12ABA8;
  if (!qword_1EB12ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ABA8);
  }

  return result;
}

unint64_t sub_1A41FED80()
{
  result = qword_1EB12ABC0;
  if (!qword_1EB12ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ABC0);
  }

  return result;
}

unint64_t sub_1A41FEDD8()
{
  result = qword_1EB12AB98;
  if (!qword_1EB12AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AB98);
  }

  return result;
}

unint64_t sub_1A41FEE30()
{
  result = qword_1EB135250;
  if (!qword_1EB135250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135250);
  }

  return result;
}

uint64_t sub_1A41FF1D8(uint64_t a1, uint64_t a2)
{
  sub_1A3E792C4(0, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41FF254(uint64_t a1, uint64_t a2)
{
  sub_1A3E792C4(0, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1A41FF2D0()
{
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_boundsIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_mainContentIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_safeAreaIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_floatingAreaIndicator) = 0;
  v1 = v0 + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_insets;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_insetsObservation);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_userData) = 0;
  v3 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_D2105462B28C8B244908FEC7DAEF9E2941PhotosDynamicHeaderLayoutDebugOverlayView_clippingRect);
  *v3 = 0u;
  v3[1] = 0u;
  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A41FF3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A41FF3E8(uint64_t a1, void *a2, id *a3)
{
  v5 = *(v3 + 16);
  v6 = *a3;
  v11 = v6;
  if (v6)
  {
    [v6 contentSize];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  a2[4] = v7;
  a2[5] = v8;
  [v5 visibleRect];
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = 0xBFF0000000000000;
}

id sub_1A41FF4A0(uint64_t a1, void *a2)
{
  [*(v2 + 16) referenceSize];
  [a2 setReferenceSize_];

  return [a2 updateIfNeeded];
}

void sub_1A41FF4FC(void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  [a1 setAllowedGesturesKind_];
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1A5241684();
  }

  [a1 setTopDismissAreaHeight_];

  if (v4)
  {

    [a1 setHeaderFloatingThresholdOffset_];
  }
}

uint64_t sub_1A41FF5C0(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v11 = v1[11];
  v12 = v1[12];
  v13 = v1[13];
  v18 = v1[15];
  v19 = v1[14];
  v16 = v1[17];
  v17 = v1[16];
  v14 = *a1;
  (*(**a1 + 136))(v2, v3, v4, v5);
  (*(*v14 + 160))(v6, v7, v8, v9);
  (*(*v14 + 184))(v10, v11, v12, v13);
  return (*(*v14 + 208))(v19, v18, v17, v16);
}

float32x2_t sub_1A41FF6E8(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  v11 = *(v4 + 48);
  v12 = *(v4 + 49);
  v25.origin.x = v7;
  v25.origin.y = v8;
  v25.size.width = v9;
  v25.size.height = v10;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = v7;
  v26.origin.y = v8;
  v26.size.width = v9;
  v26.size.height = v10;
  MidY = CGRectGetMidY(v26);
  v27.origin.x = v7;
  v27.origin.y = v8;
  v27.size.width = v9;
  v27.size.height = v10;
  Width = CGRectGetWidth(v27);
  v28.origin.x = v7;
  v28.origin.y = v8;
  v28.size.width = v9;
  v28.size.height = v10;
  Height = CGRectGetHeight(v28);
  v16.f64[0] = Width;
  v16.f64[1] = Height;
  *a2 = MidX;
  *&a2[1] = MidY;
  a2[2] = 0;
  a2[3] = vcvt_f32_f64(v16);
  if (v12)
  {
    v17 = 32;
  }

  else
  {
    v17 = 0;
  }

  if (v11)
  {
    v17 = 0;
  }

  *(a4 + 34) = v17;
  ++*(a4 + 32);
  v29.origin.x = v7;
  v29.origin.y = v8;
  v29.size.width = v9;
  v29.size.height = v10;
  v18 = CGRectGetMidX(v29);
  v30.origin.x = v7;
  v30.origin.y = v8;
  v30.size.width = v9;
  v30.size.height = v10;
  v19 = CGRectGetMidY(v30);
  v31.origin.x = v7;
  v31.origin.y = v8;
  v31.size.width = v9;
  v31.size.height = v10;
  v24 = CGRectGetWidth(v31);
  v32.origin.x = v7;
  v32.origin.y = v8;
  v32.size.width = v9;
  v32.size.height = v10;
  v20 = CGRectGetHeight(v32);
  v21.f64[0] = v24;
  v21.f64[1] = v20;
  result = vcvt_f32_f64(v21);
  *&a2[4] = v18;
  *&a2[5] = v19;
  a2[6] = 0;
  a2[7] = result;
  ++*(a4 + 72);
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1A41FF908(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A41FF928(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
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

  *(result + 136) = v3;
  return result;
}

uint64_t sub_1A41FF99C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A41FF9BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

void sub_1A41FFB64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A41FFC00(double a1, uint64_t a2, uint64_t a3)
{
  sub_1A4023364(0, a1);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A402357C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a3;
  sub_1A40233E4(0);
  sub_1A402349C();
  sub_1A5249A64();
  v17[0] = sub_1A524B414();
  sub_1A5249A44();

  (*(v6 + 8))(v8, v5);
  sub_1A524A054();
  v17[3] = v10;
  v17[4] = sub_1A40237A0(&qword_1EB1306C8, sub_1A402357C, MEMORY[0x1E697C858]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_1A5249A54();
  (*(v11 + 8))(v13, v10);
  return MEMORY[0x1A5908670](v17);
}

id sub_1A41FFF50(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SharedLibraryParticipantAddTableViewCell(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A41FFF84(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXLocalizedSharedLibraryString(v2);

  sub_1A524C674();
  v4 = objc_opt_self();
  [v4 imageDiameter];
  [v4 imageInset];
  sub_1A5243484();
  KeyPath = swift_getKeyPath();
  v6 = sub_1A5247314();
  sub_1A40233E4(0);
  v8 = a1 + *(v7 + 36);
  *v8 = KeyPath;
  *(v8 + 8) = (v6 & 1) == 0;
}

id sub_1A4200094(uint64_t a1, uint64_t a2)
{
  if (PFOSVariantHasInternalUI())
  {
    v2 = objc_opt_self();
    v3 = [v2 standardUserDefaults];
    v4 = sub_1A524C634();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_1A524E0B4();
      swift_unknownObjectRelease();
      sub_1A3C57128(&v10, v11);
      sub_1A3C35B00(v11);
      v6 = [v2 standardUserDefaults];
      v7 = sub_1A524C634();
      v8 = [v6 integerForKey_];

      return v8;
    }

    memset(v11, 0, sizeof(v11));
    sub_1A3C35B00(v11);
  }

  return 0;
}

id sub_1A42001DC(uint64_t a1, uint64_t a2)
{
  if (PFOSVariantHasInternalUI())
  {
    v2 = objc_opt_self();
    v3 = [v2 standardUserDefaults];
    v4 = sub_1A524C634();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_1A524E0B4();
      swift_unknownObjectRelease();
      sub_1A3C57128(&v10, v11);
      sub_1A3C35B00(v11);
      v6 = [v2 standardUserDefaults];
      v7 = sub_1A524C634();
      v8 = [v6 integerForKey_];

      return v8;
    }

    memset(v11, 0, sizeof(v11));
    sub_1A3C35B00(v11);
  }

  return 0;
}

id sub_1A4200324(uint64_t a1, uint64_t a2)
{
  if (PFOSVariantHasInternalUI())
  {
    v2 = objc_opt_self();
    v3 = [v2 standardUserDefaults];
    v4 = sub_1A524C634();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_1A524E0B4();
      swift_unknownObjectRelease();
      sub_1A3C57128(&v10, v11);
      sub_1A3C35B00(v11);
      v6 = [v2 standardUserDefaults];
      v7 = sub_1A524C634();
      v8 = [v6 integerForKey_];

      return v8;
    }

    memset(v11, 0, sizeof(v11));
    sub_1A3C35B00(v11);
  }

  return 0;
}

uint64_t sub_1A420046C(uint64_t a1, uint64_t a2)
{
  if (PFOSVariantHasInternalUI())
  {
    v2 = objc_opt_self();
    v3 = [v2 standardUserDefaults];
    v4 = sub_1A524C634();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_1A524E0B4();
      swift_unknownObjectRelease();
      sub_1A3C57128(&v10, v11);
      sub_1A3C35B00(v11);
      v6 = [v2 standardUserDefaults];
      v7 = sub_1A524C634();
      v8 = [v6 BOOLForKey_];

      return v8;
    }

    memset(v11, 0, sizeof(v11));
    sub_1A3C35B00(v11);
  }

  return 2;
}

uint64_t sub_1A42005AC(uint64_t a1, uint64_t a2)
{
  if (PFOSVariantHasInternalUI())
  {
    v2 = objc_opt_self();
    v3 = [v2 standardUserDefaults];
    v4 = sub_1A524C634();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_1A524E0B4();
      swift_unknownObjectRelease();
      sub_1A3C57128(&v10, v11);
      sub_1A3C35B00(v11);
      v6 = [v2 standardUserDefaults];
      v7 = sub_1A524C634();
      v8 = [v6 BOOLForKey_];

      return v8;
    }

    memset(v11, 0, sizeof(v11));
    sub_1A3C35B00(v11);
  }

  return 2;
}

void sub_1A4200710(void *a1@<X8>)
{
  v3 = [*v1 px_opaqueIdentifier];

  *a1 = v3;
}

double sub_1A4200754(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_dynamicCastUnknownClass();
  if (v5)
  {
    v9 = v5;
    type metadata accessor for PhotoKitItem(0, AssociatedTypeWitness, v6, v7);
    v26 = 2;
    v10 = a1;
    sub_1A3C6C180(&v24);
    v22 = v24;
    v23 = v25;
    v11 = sub_1A42011B0();
    sub_1A3C6C18C(&v20);
    v18 = v20;
    v19 = v21;
    v12 = sub_1A3C5A374();
    v13 = sub_1A3C30368();
    v14 = sub_1A3C5A374();
    v15 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v22, 0, v11, 0, 1, &v18, v12 & 1, &v26, v17, v13, v14 & 1, 1, v15 & 1, 0);
    v16 = sub_1A3CA36F4(MEMORY[0x1E69E7CC0]);
    *&result = PhotoKitItem.__allocating_init(value:options:metadata:)(v9, v17, v16).n128_u64[0];
  }

  return result;
}

void sub_1A4200924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5246234();
}

void sub_1A4200A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5246234();
}

void sub_1A4200B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5246234();
}

void sub_1A4200C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5246234();
}

void sub_1A4200DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5246234();
}

void sub_1A4201094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5246234();
}

double sub_1A42011BC@<D0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v9 + 16))(&v11 - v8, a1, AssociatedTypeWitness, v7);
  sub_1A3E86DD4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A4201310(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v20[0] = a2;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v20[1] = a1;
  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  v15 = a1;
  v16 = swift_dynamicCast();
  v17 = *(v11 + 56);
  if (v16)
  {
    v17(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    v18 = (*(a3 + 200))(v14, v20[0], a3);
    (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    v17(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v10, v7);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1A42015EC@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 1, 1, AssociatedTypeWitness);
}

void sub_1A42016C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_checkMetadataState();
  sub_1A52462D4();
}

uint64_t sub_1A4201830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC54();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  return sub_1A4202BEC(sub_1A4202DA4, v10, "PhotosUICore/LemonadeItemViewProvider.swift", 43, 2, 299, v8);
}

void sub_1A42018B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *&v26 = a4;
  v27 = a5;
  swift_getAssociatedTypeWitness();
  v22 = a2;
  v23 = a3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v20 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v17[-v9];
  v10 = type metadata accessor for LemonadeBookmark(0) - 8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1A3CA0A2C(0, &qword_1EB125B40, sub_1A3FA099C);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A4202DD4(0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v18 = *(v13 - 8);
  v14 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v19 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v28 = &v17[-v16];
  swift_getAssociatedConformanceWitness();
  v25 = a1;
  sub_1A5246234();
}

double sub_1A42022F4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CA0A2C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1A524CCB4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1A3C58DE8(a3, v9, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  sub_1A524CC54();

  v14 = sub_1A524CC44();
  v15 = (*(v7 + 80) + 41) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  sub_1A3C580D4(v9, v16 + v15, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  sub_1A3D4D930(0, 0, v12, &unk_1A5325D80, v16);

  return result;
}

uint64_t sub_1A4202504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  sub_1A524CC54();
  *(v6 + 32) = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A42025A0, v8, v7);
}

uint64_t sub_1A42025A0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  sub_1A42E16DC(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

double sub_1A420261C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v25 - v11;
  sub_1A3CA0A2C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v16 = sub_1A524CCB4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, AssociatedTypeWitness);
  sub_1A524CC54();
  v17 = a2;
  v18 = sub_1A524CC44();
  v19 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 2) = v18;
  *(v20 + 3) = v21;
  v23 = v25;
  v22 = v26;
  *(v20 + 4) = a3;
  *(v20 + 5) = v23;
  *(v20 + 6) = v22;
  (*(v9 + 32))(&v20[v19], v12, AssociatedTypeWitness);
  *&v20[(v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = v17;
  sub_1A3D4D930(0, 0, v15, &unk_1A5325D68, v20);

  return result;
}

uint64_t sub_1A42028B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  sub_1A3CA0A2C(0, &qword_1EB12A538, type metadata accessor for LemonadeBookmark);
  v8[12] = swift_task_alloc();
  v9 = type metadata accessor for LemonadeBookmark(0);
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  sub_1A524CC54();
  v8[16] = sub_1A524CC44();
  v11 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A42029F8, v11, v10);
}

uint64_t sub_1A42029F8()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[7];

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[5] = AssociatedTypeWitness;
  v0[6] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, v5, AssociatedTypeWitness);
  v8 = sub_1A3FA19AC();
  sub_1A3F9DD48(v8, v9, v0 + 2, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1A3CA0ADC(v0[12], &qword_1EB12A538, type metadata accessor for LemonadeBookmark);
  }

  else
  {
    v10 = v0[15];
    sub_1A3C580D4(v0[12], v10, type metadata accessor for LemonadeBookmark);
    PHPhotoLibrary.lemonadeBookmarksManager.getter();
    sub_1A42E0F5C(v10);

    sub_1A3C58334(v10, type metadata accessor for LemonadeBookmark);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A4202BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    sub_1A3C75D98(v16);
    if (v7)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v16[0];
    v13 = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v15 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v15);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A4202DD4(uint64_t a1)
{
  if (!qword_1EB125B30)
  {
    type metadata accessor for LemonadeBookmark.CollectionIdentifier(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB125B30);
    }
  }
}

double sub_1A4202E3C()
{
  v1 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  return sub_1A42022F4(v2, v3, v4);
}

double sub_1A4202EA4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A420261C(v0 + v5, v6, v1, v2, v3);
}

uint64_t sub_1A4202FB8()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A3CA8098;

  return sub_1A42028B4(v8, v9, v10, v0 + v6, v7, v3, v2, v4);
}

uint64_t sub_1A4203130()
{
  v2 = *(type metadata accessor for LemonadeBookmark.CollectionIdentifier(0) - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A4202504(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_1A4203250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v5 = a1 - 8;
  v47 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = v6;
  v51 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5243934();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v17 = v5 + 24;
  v15 = *(v5 + 24);
  v16 = *(v17 + 8);
  (*(v16 + 40))(v15, v16, v12);
  v53 = v16;
  v45 = v15;
  swift_getAssociatedTypeWitness();
  v18 = sub_1A524CAF4();

  if (v18 >= 2)
  {
    sub_1A52438D4();
  }

  else if (v18 == 1)
  {
    sub_1A5243904();
  }

  else
  {
    sub_1A5243914();
  }

  sub_1A52438F4();
  v20 = v19;
  sub_1A52438F4();
  v22 = v21;
  sub_1A52438F4();
  v24 = v22 - v23;
  if (v24 < 0.0)
  {
    v24 = 0.0;
  }

  v25 = v24 * 0.5;
  (*(v8 + 16))(v10, v14, v7);
  v50 = v8;
  v26 = v47;
  v46 = v10;
  v42 = *(v47 + 16);
  v27 = v51;
  v42(v51, v3, a1);
  v48 = v14;
  v28 = *(v26 + 80);
  v41 = v3;
  v29 = a1;
  v40 = (v28 + 32) & ~v28;
  v43 = v40 + v49;
  v49 = v7;
  v30 = (v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v45;
  v33 = v53;
  *(v31 + 16) = v45;
  *(v31 + 24) = v33;
  v34 = *(v26 + 32);
  v35 = v31;
  v34(v31 + ((v28 + 32) & ~v28), v27, v29);
  v44 = v35;
  *(v35 + v30) = v20;
  *(v35 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v42(v27, v41, v29);
  v36 = swift_allocObject();
  v37 = v53;
  *(v36 + 16) = v32;
  *(v36 + 24) = v37;
  v34(v36 + v40, v27, v29);
  v54 = 1;
  sub_1A524B954();
  sub_1A4205464(0, &qword_1EB135530, sub_1A420541C, type metadata accessor for LemonadeSharedAlbumsAvatarView, MEMORY[0x1E697F960]);
  sub_1A5243544();
  sub_1A4205BA0();
  sub_1A4205878(&qword_1EB12EAA8, MEMORY[0x1E69C2510], MEMORY[0x1E69C2508]);
  sub_1A5242914();
  return (*(v50 + 8))(v48, v49);
}

uint64_t sub_1A4203700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v49 = a4;
  v50 = type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  MEMORY[0x1EEE9AC00](v50);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4205464(0, &qword_1EB135688, sub_1A420541C, type metadata accessor for LemonadeSharedAlbumsAvatarView, MEMORY[0x1E697F948]);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  sub_1A420541C(0);
  v48 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v52[0] = (*(a3 + 40))(a2, a3, v17);
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  swift_getWitnessTable();
  v20 = sub_1A524D094();

  if (v20)
  {
    v21 = (*(a3 + 80))(a2, a3);
    v23 = type metadata accessor for LemonadeSharedAlbumsActivityNotificationCell(0, a2, a3, v22);
    sub_1A4204A94(v23, v52);
    sub_1A493BE50(v21, v52, v12, a5);
    sub_1A42073D4(v12, v15, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    swift_storeEnumTagMultiPayload();
    sub_1A4205C94();
    sub_1A4205878(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
    sub_1A5249744();
    v24 = type metadata accessor for LemonadeSharedAlbumsAvatarView;
    v25 = v12;
  }

  else
  {
    *v19 = sub_1A524BC54();
    v19[1] = v26;
    sub_1A420749C(0, &qword_1EB135690, sub_1A420557C, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
    sub_1A4203CC8(a1, a2, a3, v19 + *(v27 + 44), a5, a6);
    v28 = sub_1A524BC34();
    v45 = v29;
    v46 = v28;
    v30 = v19 + *(v48 + 36);
    (*(a3 + 104))(v52, a2, a3);
    sub_1A3DF76B0(v52);
    v31 = *(v52 + 1);
    v32 = (*(a3 + 80))(a2, a3);
    v34 = type metadata accessor for LemonadeSharedAlbumsActivityNotificationCell(0, a2, a3, v33);
    sub_1A4204A94(v34, v51);
    sub_1A493BE50(v32, v51, v30, v31);
    sub_1A4205A68(0, &qword_1EB1355C0, type metadata accessor for LemonadeSharedAlbumsAvatarView, MEMORY[0x1E697E278]);
    __asm { FMOV            V0.2D, #4.0 }

    *(v30 + *(v35 + 36)) = _Q0;
    sub_1A42059E0(0);
    v42 = (v30 + *(v41 + 36));
    v43 = v45;
    *v42 = v46;
    v42[1] = v43;
    sub_1A42073D4(v19, v15, sub_1A420541C);
    swift_storeEnumTagMultiPayload();
    sub_1A4205C94();
    sub_1A4205878(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
    sub_1A5249744();
    v24 = sub_1A420541C;
    v25 = v19;
  }

  return sub_1A420743C(v25, v24);
}

uint64_t sub_1A4203C04@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for LemonadeSharedAlbumsActivityNotificationCell(0, v4, v5, a1) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v8);
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A4203700(v2 + v7, v4, v5, a2, v9, v10);
}

uint64_t sub_1A4203CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v73 = a4;
  v79 = sub_1A5243834();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42075B8(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v77 = &v71 - v14;
  sub_1A42058C0(0, v13);
  v82 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v71 - v19;
  sub_1A42058F0(0, &qword_1EB135560, &qword_1EB135568, &qword_1EB135570, sub_1A420563C);
  v76 = v21;
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v71 - v24);
  sub_1A42055B8(0, v23);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v81 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v80 = &v71 - v30;
  v31 = *(a3 + 40);
  v84 = a1;
  v75 = v31;
  (v31)(a2, a3, v29);
  v85 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = sub_1A524CAF4();

  __asm { FMOV            V0.2D, #8.0 }

  v83 = _Q0;
  if (v32 < 2)
  {
    v54 = v80;
    (*(v22 + 56))(v80, 1, 1, v76);
    v45 = *MEMORY[0x1E697F468];
    v55 = a3;
  }

  else
  {
    *v25 = sub_1A524BC74();
    v25[1] = v38;
    sub_1A420749C(0, &qword_1EB135698, sub_1A42056D0, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
    sub_1A42045B0(v85, a3, v25 + *(v39 + 44));
    v72 = a3;
    sub_1A4205464(0, &qword_1EB135570, sub_1A420563C, sub_1A3E42C88, MEMORY[0x1E697E830]);
    v41 = (v25 + *(v40 + 36));
    v42 = v11;
    v43 = v17;
    v44 = *(sub_1A5248A14() + 20);
    v45 = *MEMORY[0x1E697F468];
    v46 = sub_1A52494A4();
    v47 = v41 + v44;
    v17 = v43;
    v11 = v42;
    (*(*(v46 - 8) + 104))(v47, v45, v46);
    *v41 = v83;
    sub_1A3E42C88(0);
    *(v41 + *(v48 + 36)) = 256;
    sub_1A524BC74();
    sub_1A52481F4();
    sub_1A4205954(0, &qword_1EB135568, &qword_1EB135570, sub_1A420563C);
    v50 = (v25 + *(v49 + 36));
    v51 = v87;
    *v50 = v86;
    v50[1] = v51;
    v50[2] = v88;
    v52 = v76;
    v53 = (v25 + *(v76 + 36));
    *v53 = 0.0;
    v53[1] = a6 + -4.0;
    v54 = v80;
    sub_1A420761C(v25, v80);
    (*(v22 + 56))(v54, 0, 1, v52);
    v55 = v72;
  }

  v75(v85, v55);
  sub_1A524CB94();

  v92 = 0u;
  v93 = 0u;
  v94 = 1;
  v56 = sub_1A52429A4();
  (*(*(v56 - 8) + 56))(v77, 1, 1, v56);
  (*(v78 + 104))(v11, *MEMORY[0x1E69C2678], v79);
  sub_1A5243ED4();
  v57 = MEMORY[0x1E69C2928];
  sub_1A4205464(0, &qword_1EB141900, MEMORY[0x1E69C2928], sub_1A3E42C88, MEMORY[0x1E697E830]);
  v59 = &v20[*(v58 + 36)];
  v60 = *(sub_1A5248A14() + 20);
  v61 = sub_1A52494A4();
  (*(*(v61 - 8) + 104))(&v59[v60], v45, v61);
  *v59 = v83;
  sub_1A3E42C88(0);
  *&v59[*(v62 + 36)] = 256;
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A4205954(0, &qword_1EB1355A8, &qword_1EB141900, v57);
  v64 = &v20[*(v63 + 36)];
  v65 = v90;
  *v64 = v89;
  *(v64 + 1) = v65;
  *(v64 + 2) = v91;
  v66 = &v20[*(v82 + 36)];
  *v66 = 0;
  *(v66 + 1) = a6;
  v67 = v81;
  sub_1A42073D4(v54, v81, sub_1A42055B8);
  sub_1A42073D4(v20, v17, sub_1A42058C0);
  v68 = v73;
  sub_1A42073D4(v67, v73, sub_1A42055B8);
  sub_1A4205768(0, &qword_1EB135550, sub_1A42055B8, sub_1A42058C0);
  sub_1A42073D4(v17, v68 + *(v69 + 48), sub_1A42058C0);
  sub_1A420743C(v20, sub_1A42058C0);
  sub_1A420743C(v54, sub_1A42055B8);
  sub_1A420743C(v17, sub_1A42058C0);
  return sub_1A420743C(v67, sub_1A42055B8);
}

uint64_t sub_1A42045B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v44 = a3;
  sub_1A42057E4(0);
  v42 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v41 = sub_1A5243834();
  v10 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42075B8(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_1A5243EC4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  (*(a2 + 40))(a1, a2, v20);
  swift_getAssociatedTypeWitness();
  sub_1A524CB94();

  v45 = 0u;
  v46 = 0u;
  v47 = 1;
  v23 = sub_1A52429A4();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  (*(v10 + 104))(v12, *MEMORY[0x1E69C2678], v41);
  sub_1A5243ED4();
  v24 = *(sub_1A5248A14() + 20);
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_1A52494A4();
  (*(*(v26 - 8) + 104))(&v9[v24], v25, v26);
  __asm { FMOV            V0.2D, #8.0 }

  *v9 = _Q0;
  sub_1A524B404();
  v32 = sub_1A524B474();

  *&v9[*(v42 + 44)] = v32;
  v33 = *(v17 + 16);
  v34 = v40;
  v33(v40, v22, v16);
  v35 = v43;
  sub_1A42073D4(v9, v43, sub_1A42057E4);
  v36 = v44;
  v33(v44, v34, v16);
  sub_1A4205768(0, &qword_1EB135588, MEMORY[0x1E69C2928], sub_1A42057E4);
  sub_1A42073D4(v35, v36 + *(v37 + 48), sub_1A42057E4);
  sub_1A420743C(v9, sub_1A42057E4);
  v38 = *(v17 + 8);
  v38(v22, v16);
  sub_1A420743C(v35, sub_1A42057E4);
  return (v38)(v34, v16);
}

void sub_1A4204A94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A493B664();
  sub_1A4207508(v4, a2);
  *(a2 + 2) = 0;
  (*(*(a1 + 24) + 40))(*(a1 + 16), *(a1 + 24));
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  swift_getWitnessTable();
  v5 = sub_1A524D094();

  if ((v5 & 1) == 0)
  {
    *a2 = 1;
    *(a2 + 32) = 0x3FF0000000000000;
    __swift_destroy_boxed_opaque_existential_0((a2 + 40));
    sub_1A4207564(0, &qword_1EB127A38, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E69809C0]);
    *(a2 + 64) = v6;
    *(a2 + 72) = sub_1A3D6F4F8();
    *(a2 + 40) = 2;
  }
}

uint64_t sub_1A4204BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5243C24();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1A5243C14();
  sub_1A3C38BD4(0xD000000000000031);
  v10 = type metadata accessor for LemonadeSharedAlbumsActivityNotificationCell(0, a2, a3, v9);
  sub_1A4204DE0(v10, v7);
  (*(a3 + 56))(a2, a3);
  (*(a3 + 32))(a2, a3);
  return sub_1A5243554();
}

uint64_t sub_1A4204D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for LemonadeSharedAlbumsActivityNotificationCell(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1A4204BD4(v8, v5, v6);
}

uint64_t sub_1A4204DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = sub_1A5240734();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A52408C4();
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v39 = sub_1A52407E4();
  v46 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v32 - v11;
  v12 = [objc_opt_self() px:*MEMORY[0x1E69DDCF8] defaultFontForTextStyle:2 withSymbolicTraits:?];
  (*(*(a1 + 24) + 48))(*(a1 + 16));
  sub_1A42075B8(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v44 = xmmword_1A52F8E10;
  *(inited + 16) = xmmword_1A52F8E10;
  v14 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v15 = objc_opt_self();
  v36 = v15;
  v37 = v14;
  v16 = [v15 labelColor];
  v35 = sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);
  *(inited + 64) = v35;
  *(inited + 40) = v16;
  sub_1A3C8BCC0(inited);
  swift_setDeallocating();
  sub_1A420743C(inited + 32, sub_1A3C8BC40);
  sub_1A52408E4();
  v17 = swift_initStackObject();
  *(v17 + 16) = v44;
  v18 = *MEMORY[0x1E69DB648];
  *(v17 + 32) = *MEMORY[0x1E69DB648];
  *(v17 + 64) = sub_1A3C52C70(0, &qword_1EB120610, 0x1E69DB878);
  *(v17 + 40) = v12;
  v19 = v18;
  v34 = v12;
  sub_1A3C8BCC0(v17);
  swift_setDeallocating();
  sub_1A420743C(v17 + 32, sub_1A3C8BC40);
  sub_1A52408E4();
  sub_1A4205878(&qword_1EB12B0D8, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v20 = v39;
  v21 = v38;
  sub_1A5240BE4();
  v22 = *(v47 + 8);
  v47 += 8;
  v23 = v45;
  v22(v5, v45);
  v22(v8, v23);
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v21, v20);
  v25 = swift_initStackObject();
  *(v25 + 16) = v44;
  *(v25 + 32) = v37;
  v26 = [v36 labelColor];
  *(v25 + 64) = v35;
  *(v25 + 40) = v26;
  sub_1A3C8BCC0(v25);
  swift_setDeallocating();
  sub_1A420743C(v25 + 32, sub_1A3C8BC40);
  sub_1A52408E4();
  v27 = v41;
  v28 = v40;
  v29 = v42;
  (*(v41 + 104))(v40, *MEMORY[0x1E69686E8], v42);
  v30 = v33;
  sub_1A5240BD4();

  (*(v27 + 8))(v28, v29);
  v22(v8, v45);
  return (v24)(v30, v20);
}

void sub_1A4205464(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A42054E8(uint64_t a1)
{
  if (!qword_1EB135540)
  {
    sub_1A420557C(255);
    sub_1A4205878(&qword_1EB1355B0, sub_1A420557C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135540);
    }
  }
}

void sub_1A42055B8(uint64_t a1, double a2)
{
  if (!qword_1EB135558)
  {
    sub_1A42058F0(255, &qword_1EB135560, &qword_1EB135568, &qword_1EB135570, sub_1A420563C);
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB135558);
    }
  }
}

void sub_1A420563C(uint64_t a1)
{
  if (!qword_1EB135578)
  {
    sub_1A42056D0(255);
    sub_1A4205878(&qword_1EB135598, sub_1A42056D0, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135578);
    }
  }
}

void sub_1A420570C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4205768(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4205768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A42057E4(uint64_t a1)
{
  if (!qword_1EB135590)
  {
    sub_1A5248A14();
    sub_1A4207564(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135590);
    }
  }
}

uint64_t sub_1A4205878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A42058F0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4205954(255, a3, a4, a5);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4205954(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4205464(255, a3, a4, sub_1A3E42C88, MEMORY[0x1E697E830]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A42059E0(uint64_t a1)
{
  if (!qword_1EB1355B8)
  {
    sub_1A4205A68(255, &qword_1EB1355C0, type metadata accessor for LemonadeSharedAlbumsAvatarView, MEMORY[0x1E697E278]);
    sub_1A4205ACC();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1355B8);
    }
  }
}

void sub_1A4205A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4205ACC()
{
  result = qword_1EB1456E0;
  if (!qword_1EB1456E0)
  {
    sub_1A4205A68(255, &qword_1EB1355C0, type metadata accessor for LemonadeSharedAlbumsAvatarView, MEMORY[0x1E697E278]);
    sub_1A4205878(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1456E0);
  }

  return result;
}

unint64_t sub_1A4205BA0()
{
  result = qword_1EB1355C8;
  if (!qword_1EB1355C8)
  {
    sub_1A4205464(255, &qword_1EB135530, sub_1A420541C, type metadata accessor for LemonadeSharedAlbumsAvatarView, MEMORY[0x1E697F960]);
    sub_1A4205C94();
    sub_1A4205878(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1355C8);
  }

  return result;
}

unint64_t sub_1A4205C94()
{
  result = qword_1EB1355D0;
  if (!qword_1EB1355D0)
  {
    sub_1A420541C(255);
    sub_1A4205878(&qword_1EB1355D8, sub_1A42054E8, MEMORY[0x1E6981880]);
    sub_1A4205878(&qword_1EB1355E0, sub_1A42059E0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1355D0);
  }

  return result;
}

void sub_1A4205D78(uint64_t a1@<X8>)
{
  v25[4] = a1;
  sub_1A420665C(0);
  v25[6] = *(v1 - 8);
  v25[7] = v1;
  MEMORY[0x1EEE9AC00](v1);
  v25[5] = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v25[2] = v25 - v4;
  sub_1A42065A0(0);
  MEMORY[0x1EEE9AC00](v5);
  v25[3] = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v25[10] = v25 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v25[8] = v25 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v12 = type metadata accessor for ShareParticipantImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LemonadeMockSharedAlbumActivityModel(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v25 - v23);
  sub_1A5240714();
  sub_1A5241104();
  [objc_allocWithZone(MEMORY[0x1E6978630]) init];
  sub_1A422CD04(v14);
  sub_1A422CDA8(0, v20, v17, 0x796C696D6146, 0xE600000000000000, 0, 0, v24, 1, v14);
}

void sub_1A420652C(uint64_t a1, double a2)
{
  if (!qword_1EB1355F8)
  {
    sub_1A42065A0(255);
    sub_1A420665C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1355F8);
    }
  }
}

void sub_1A42065C8(uint64_t a1, double a2)
{
  if (!qword_1EB135608)
  {
    v3 = type metadata accessor for LemonadeMockSharedAlbumActivityModel(255);
    v4 = sub_1A4205878(&qword_1EB135610, type metadata accessor for LemonadeMockSharedAlbumActivityModel, &unk_1A532728C);
    v6 = type metadata accessor for LemonadeSharedAlbumsActivityNotificationCell(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB135608);
    }
  }
}

void sub_1A420665C(uint64_t a1)
{
  if (!qword_1EB135618)
  {
    sub_1A41ECD6C(255);
    sub_1A4205A68(255, &qword_1EB135620, sub_1A4206748, MEMORY[0x1E697E048]);
    sub_1A4205878(&qword_1EB134EF0, sub_1A41ECD6C, MEMORY[0x1E69E6338]);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135618);
    }
  }
}

void sub_1A4206748(uint64_t a1)
{
  if (!qword_1EB135628)
  {
    v2 = type metadata accessor for SharedAlbumsActivityEntryItem(255);
    v3 = sub_1A4205878(&unk_1EB129830, type metadata accessor for SharedAlbumsActivityEntryItem, &unk_1A5327230);
    v5 = type metadata accessor for LemonadeSharedAlbumsActivityNotificationCell(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB135628);
    }
  }
}

void sub_1A42067DC(uint64_t a1, double a2)
{
  if (!qword_1EB135638)
  {
    sub_1A42064F8(255, a2);
    sub_1A4205878(&qword_1EB135640, sub_1A42064F8, MEMORY[0x1E6981F48]);
    v2 = sub_1A524B894();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB135638);
    }
  }
}

double sub_1A4206870@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1A524BC74();
  sub_1A52481F4();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  result = *&v9;
  *(a2 + 40) = v9;
  return result;
}

uint64_t sub_1A42068F4()
{
  result = sub_1A4206914();
  qword_1EB1EBC40 = result;
  return result;
}

uint64_t sub_1A4206914()
{
  v0 = sub_1A5241144();
  v44 = *(v0 - 8);
  v45 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v48 = v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1A52411C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v41 - v7;
  v9 = [objc_opt_self() sharedPhotoLibrary];
  v42 = [objc_allocWithZone(PXSharedAlbumsActivityEntryAvatarConfiguration) init];
  v10 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v11 = sub_1A524C634();
  v12 = [v10 initWithDisplayName:v11 email:0];

  v13 = MEMORY[0x1E69E6F90];
  sub_1A3C69ACC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v47 = xmmword_1A52F9790;
  *(inited + 16) = xmmword_1A52F9790;
  v46 = v9;
  sub_1A52411B4();
  v14 = sub_1A5241164();
  v15 = (v3 + 8);
  v16 = *(v3 + 8);
  v41[1] = v15;
  v41[2] = v14;
  v16(v8, v2);
  sub_1A5241104();
  v17 = swift_allocObject();
  *(v17 + 16) = v47;
  *(v17 + 32) = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v47;
  v19 = v42;
  *(v18 + 32) = v42;
  sub_1A3C69ACC(0, &qword_1EB12B260, MEMORY[0x1E69E6158], v13);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A52F8E10;
  v41[0] = v12;
  v42 = v19;
  sub_1A52411B4();
  v21 = sub_1A5241164();
  v23 = v22;
  v16(v5, v2);
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  *&v47 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v24 = sub_1A524C634();

  v25 = v46;
  v26 = sub_1A5241074();
  sub_1A3C52C70(0, &qword_1EB12CD78, off_1E771F6C8);
  v27 = sub_1A524CA14();

  sub_1A3C52C70(0, &unk_1EB12CD80, off_1E771F6C0);
  v28 = sub_1A524CA14();

  v29 = sub_1A524C634();
  v30 = sub_1A524C634();
  v31 = sub_1A524CA14();

  v32 = sub_1A524CA14();
  LOBYTE(v40) = 1;
  v33 = [v47 initWithPhotoLibrary:v25 uuid:v24 date:v26 type:0 isFromMe:0 contributors:v27 avatarConfigurations:v28 albumGUID:v29 albumName:v30 cloudOwnerIsAllowlisted:v40 message:0 keyAssetUUIDs:v31 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v32 underlyingObject:0];

  (*(v44 + 8))(v48, v45);
  v34 = inited;
  *(inited + 32) = v33;
  v49 = MEMORY[0x1E69E7CC0];
  result = sub_1A524E554();
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x1A59097F0](0, v34);
    goto LABEL_4;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v34 + 32);
LABEL_4:
    v37 = v36;

    type metadata accessor for SharedAlbumsActivityEntryItem(0);
    v38 = sub_1A3C5A374();
    v39 = sub_1A3C5A374();
    sub_1A4705FE8(v37, v38, 0, v39 & 1);
    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();

    return v49;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A4206EE8()
{
  result = qword_1EB135648;
  if (!qword_1EB135648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135648);
  }

  return result;
}

void sub_1A4206F58(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  sub_1A420749C(0, &qword_1EB1355E8, sub_1A42064F8, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A4205D78(a1 + *(v3 + 44));
}

uint64_t sub_1A420701C(uint64_t a1)
{
  v2 = sub_1A42072AC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4207068(uint64_t a1)
{
  v2 = sub_1A42072AC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A42070C4(uint64_t a1)
{
  if (!qword_1EB135658)
  {
    sub_1A4205464(255, &qword_1EB135530, sub_1A420541C, type metadata accessor for LemonadeSharedAlbumsAvatarView, MEMORY[0x1E697F960]);
    sub_1A5243544();
    sub_1A4205BA0();
    sub_1A4205878(&qword_1EB12EAA8, MEMORY[0x1E69C2510], MEMORY[0x1E69C2508]);
    v1 = sub_1A5242904();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135658);
    }
  }
}

unint64_t sub_1A42071D8()
{
  result = qword_1EB135660;
  if (!qword_1EB135660)
  {
    sub_1A4205A68(255, &qword_1EB135630, sub_1A42067DC, MEMORY[0x1E697E5E0]);
    sub_1A4205878(&qword_1EB135668, sub_1A42067DC, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135660);
  }

  return result;
}

unint64_t sub_1A42072AC()
{
  result = qword_1EB135670;
  if (!qword_1EB135670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135670);
  }

  return result;
}

unint64_t sub_1A4207300()
{
  result = qword_1EB135678;
  if (!qword_1EB135678)
  {
    sub_1A4205A68(255, &qword_1EB135620, sub_1A4206748, MEMORY[0x1E697E048]);
    sub_1A4205878(&qword_1EB135680, sub_1A4206748, &unk_1A5325D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135678);
  }

  return result;
}

uint64_t sub_1A42073D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A420743C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A420749C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4207564(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A42075B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A420761C(uint64_t a1, uint64_t a2)
{
  sub_1A42058F0(0, &qword_1EB135560, &qword_1EB135568, &qword_1EB135570, sub_1A420563C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1A42076AC@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *(a4 + 24) = a2[1];
  result = a2[2];
  v6 = a2[3];
  *(a4 + 40) = result;
  *(a4 + 56) = v6;
  v7 = *(a2 + 65);
  *(a4 + 72) = *(a2 + 64);
  *(a4 + 8) = v4;
  *(a4 + 73) = v7;
  *(a4 + 80) = a1;
  *(a4 + 88) = v7 & 1;
  *a4 = a3;
  return result;
}

uint64_t sub_1A4207700@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char a11)
{
  v11 = *a10;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v11;
  *(a9 + 65) = a11;
  return result;
}

void sub_1A4207734(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v5 = a2;
  sub_1A5246554();
}

uint64_t sub_1A4207C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A5246544();
  }

  __break(1u);
  return result;
}

void sub_1A4207D30(uint64_t a2@<X1>, char *a3@<X8>)
{
  v27 = a3;
  sub_1A4208D68(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v23 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](v7);
  v17[1] = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v20 = *(*(a2 + 24) + 8);
  v17[0] = type metadata accessor for LemonadeFeedContents(0, v10, v20, v11);
  v25 = *(v17[0] - 8);
  MEMORY[0x1EEE9AC00](v17[0]);
  v19 = v17 - v12;
  sub_1A4208DC0();
  v13 = sub_1A5248804();
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v22 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v24 = v17 - v16;
  v18 = *(v3 + 24);
  sub_1A5242D94();
  sub_1A5246094();
}

uint64_t sub_1A420827C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A437CB08();
  *a1 = result;
  return result;
}

uint64_t sub_1A42082D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v5 = *(a2 + 16);
  v6 = sub_1A524DF24();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = *(*(*(a2 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1A524DF24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v28 = *(v3 + 80);
  sub_1A524CB74();
  swift_getWitnessTable();
  sub_1A524D074();
  v18 = *(v5 - 8);
  if ((*(v18 + 48))(v8, 1, v5) == 1)
  {
    (*(v23 + 8))(v8, v24);
    v19 = 1;
  }

  else
  {
    (*(v9 + 224))(v25, v5, v9);
    (*(v18 + 8))(v8, v5);
    v19 = 0;
  }

  (*(*(AssociatedTypeWitness - 8) + 56))(v14, v19, 1, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v20 = *(v12 + 16);
  v20(v17, v14, v11);
  v21 = *(v12 + 8);
  v21(v14, v11);
  v20(v26, v17, v11);
  return (v21)(v17, v11);
}

uint64_t sub_1A4208638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4208E10(0);
  v6 = v5;
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 72);
  if (v11 == 8)
  {
    v12 = *(v7 + 56);

    return v12(a2, 1, 1, v6, v8);
  }

  else
  {
    v20 = v7;
    type metadata accessor for LemonadeFeatureAvailabilityMonitor(0);
    v22 = v11;
    v14 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
    static LemonadeFeatureAvailabilityMonitor.sharedStatus(feature:for:)(&v22, v14);
    v16 = v15;

    v17 = v16;
    LOBYTE(v14) = sub_1A3C5A374();
    v18 = sub_1A3C5A374();
    v21 = 1;
    sub_1A4092D8C(v17, 0x100000000, 2, 0, 0, 0, 0, v14 & 1, v10, v18 & 1, 0, 0);
    LOBYTE(v14) = sub_1A524A064();

    v19 = &v10[*(v6 + 36)];
    *v19 = v14;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    v19[40] = 1;
    sub_1A4208E70(v10, a2);
    return (*(v20 + 56))(a2, 0, 1, v6);
  }
}

uint64_t sub_1A4208834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v18 = a5;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v8;
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1A524CAF4();
  if (result)
  {
    v11 = 0;
    v16 = *(v18 + 24);
    do
    {
      v12 = sub_1A524CAD4();
      sub_1A524CA64();
      if (v12)
      {
        result = (*(v7 + 16))(v9, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, a4);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1A524E474();
        if (v15 != 8)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        (*(v7 + 16))(v9, &v19, a4);
        result = swift_unknownObjectRelease();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      v16(a4, v18);
      sub_1A524C794();

      (*(v7 + 8))(v9, a4);
      result = sub_1A524CAF4();
      ++v11;
    }

    while (v13 != result);
  }

  return result;
}

uint64_t sub_1A4208B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524EC94();
  sub_1A4208834(v8, a1, 0, a3, a4);
  return sub_1A524ECE4();
}

uint64_t sub_1A4208B98(uint64_t a1, uint64_t a2)
{
  sub_1A524EC94();
  sub_1A4208834(v5, *v2, 0, *(a2 + 16), *(a2 + 24));
  return sub_1A524ECE4();
}

uint64_t sub_1A4208C38()
{
  v0 = sub_1A4208D1C();
  sub_1A3F3CBF0(v0, v1);
  return v0;
}

void sub_1A4208CBC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4208D68(uint64_t a1)
{
  if (!qword_1EB128FB0)
  {
    sub_1A52442E4();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128FB0);
    }
  }
}

void sub_1A4208DC0()
{
  if (!qword_1EB122118)
  {
    v0 = sub_1A5249F44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122118);
    }
  }
}

void sub_1A4208E10(uint64_t a1)
{
  if (!qword_1EB1356A0)
  {
    type metadata accessor for LemonadeFeatureAvailabilityProcessingView(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1356A0);
    }
  }
}

uint64_t sub_1A4208E70(uint64_t a1, uint64_t a2)
{
  sub_1A4208E10(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4208ED4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 24);
  v4 = v3(v1, v2);
  v6 = v5;
  if (v4 == v3(v1, v2) && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A524EAB4();
  }

  return v9 & 1;
}

uint64_t sub_1A420904C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4209120(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t sub_1A42091C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1A4209220(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1A4209268(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A42092D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A4209338(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A4209380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A42093D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A4209428()
{
  result = qword_1EB1356A8;
  if (!qword_1EB1356A8)
  {
    sub_1A4208E10(255);
    sub_1A42094D8(&qword_1EB129400, type metadata accessor for LemonadeFeatureAvailabilityProcessingView, &unk_1A5316D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1356A8);
  }

  return result;
}

uint64_t sub_1A42094D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A42096B8()
{
  v1 = v0;
  v2 = [v0 people];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 firstObject];

    if (v4)
    {
      v5 = [v4 localIdentifier];
      v6 = sub_1A524C674();
      v8 = v7;

      v9 = [v4 photoLibrary];
      if (v9)
      {
        v10 = v9;
LABEL_10:

        type metadata accessor for PeoplePromoteAsMagicInternalAction();
        v16 = v10;
        v17 = sub_1A4981D68(v6, v8, v16);
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22[4] = sub_1A420A03C;
        v22[5] = v18;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 1107296256;
        v22[2] = sub_1A3D6084C;
        v22[3] = &block_descriptor_124;
        v19 = _Block_copy(v22);

        [v17 executeWithUndoManager:0 completionHandler:v19];

        _Block_release(v19);
        return;
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }
  }

  v11 = [v1 socialGroups];
  if (v11)
  {
    v4 = v11;
    if ([v11 count] == 1)
    {
      v12 = [v4 firstObject];
      if (v12)
      {
        v13 = v12;
        v14 = [v13 localIdentifier];
        v6 = sub_1A524C674();
        v8 = v15;

        v10 = [v13 photoLibrary];
        if (v10)
        {

          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }
  }

  v20 = sub_1A524D244();
  v21 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v20, &dword_1A3C1C000, v21, "PeoplePromoteAsMagicInternalActionPerformer: failed to obtain an object.", 72, 2, MEMORY[0x1E69E7CC0]);

  [v1 completeBackgroundTaskWithSuccess:0 error:0];
}

double sub_1A420999C(char a1, void *a2, uint64_t a3)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A524CC54();

  v10 = a2;
  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a3;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  sub_1A3EA52F4(0, 0, v8, &unk_1A5326188, v12);

  return result;
}

uint64_t sub_1A4209AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = a6;
  *(v6 + 72) = a5;
  *(v6 + 40) = a1;
  sub_1A524CC54();
  *(v6 + 64) = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4209B78, v8, v7);
}

uint64_t sub_1A4209B78()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(v0 + 56))
    {
      v2 = sub_1A5240B74();
    }

    else
    {
      v2 = 0;
    }

    [Strong completeBackgroundTaskWithSuccess:*(v0 + 72) error:v2];
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

id sub_1A4209D9C(id result)
{
  if (result)
  {
    return [result px_internalFetchCanBeSetAsMagicItem];
  }

  return result;
}

id sub_1A4209E04(void *a1, uint64_t a2)
{
  sub_1A420A120(0, a2);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 canShowInternalUI];

  if (!v4 || [a1 count] != 1)
  {
    return 0;
  }

  result = [a1 firstObject];
  if (result)
  {
    v6 = result;
    v7 = [result px_isHuman];

    return v7;
  }

  return result;
}

id sub_1A4209EC0(id result)
{
  if (result)
  {
    v1 = result;
    if ([result respondsToSelector_])
    {
      v2 = [v1 socialGroups];
      if (v2)
      {
        v3 = v2;
        if ([v2 count] == 1)
        {
          v4 = [v3 firstObject];
          if (v4)
          {
            v5 = &selRef_px_internalFetchCanBeSetAsMagicItem;
LABEL_14:
            v9 = v4;
            v10 = [v4 *v5];

LABEL_17:
            return v10;
          }

          goto LABEL_16;
        }
      }
    }

    if (([v1 respondsToSelector_] & 1) == 0)
    {
      return 0;
    }

    result = [v1 people];
    if (!result)
    {
      return result;
    }

    v3 = result;
    sub_1A420A120(0, v6);
    v7 = [swift_getObjCClassFromMetadata() sharedInstance];
    v8 = [v7 canShowInternalUI];

    if (v8)
    {
      if ([v3 count] == 1)
      {
        v4 = [v3 firstObject];
        if (v4)
        {
          v5 = &selRef_px_isHuman;
          goto LABEL_14;
        }
      }
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1A420A068(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3D60150;

  return sub_1A4209AD8(a1, v7, v8, v4, v5, v6);
}

unint64_t sub_1A420A120(uint64_t a1, uint64_t a2)
{
  result = qword_1EB126BB0;
  if (!qword_1EB126BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126BB0);
  }

  return result;
}

uint64_t sub_1A420A16C()
{
  sub_1A420E96C(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A5240BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A5240BC4();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A5240384();
}

uint64_t sub_1A420A450()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A420E96C(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v188 = &v164 - v2;
  v173 = MEMORY[0x1E6968E10];
  sub_1A420E96C(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v179 = &v164 - v4;
  v192 = sub_1A5240BA4();
  v5 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v7 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1A5240BB4();
  v194 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v15 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = MEMORY[0x1E69E6F90];
  sub_1A420E96C(0, &qword_1EB135798, sub_1A420E904, MEMORY[0x1E69E6F90]);
  sub_1A420E904(0);
  v17 = v16;
  v18 = *(v16 - 8);
  v185 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v167 = v20;
  *(v20 + 16) = xmmword_1A5326190;
  v21 = (v20 + v19);
  v176 = *(v17 + 48);
  v190 = v17;
  *v21 = 0;
  v175 = 0xD000000000000013;
  sub_1A524C5B4();
  sub_1A5241244();
  v195 = *MEMORY[0x1E6968DF0];
  v22 = *(v5 + 104);
  v193 = v5 + 104;
  v191 = v22;
  v178 = v7;
  v23 = v192;
  (v22)(v7);
  v24 = v10;
  sub_1A5240BC4();
  v189 = *(v194 + 56);
  v194 += 56;
  v189(v179, 1, 1, v187);
  v182 = "DESTINATION_LIBRARY";
  v25 = v188;
  sub_1A5240224();
  v184 = sub_1A5240244();
  v26 = *(v184 - 8);
  v186 = *(v26 + 56);
  v181 = v26 + 56;
  v186(v25, 0, 1, v184);
  v196 = v21;
  sub_1A5240264();
  v27 = v185;
  v174 = *(v17 + 48);
  v21[v185] = 1;
  v176 = 0xD000000000000012;
  v183 = v13;
  sub_1A524C5B4();
  v180 = v24;
  sub_1A5241244();
  v28 = v178;
  v29 = v195;
  v30 = v191;
  v191(v178, v195, v23);
  sub_1A5240BC4();
  v31 = v187;
  v189(v179, 1, 1, v187);
  v32 = v188;
  sub_1A5240224();
  v186(v32, 0, 1, v184);
  sub_1A5240264();
  v174 = 2 * v27;
  v170 = &v196[2 * v27];
  v33 = v190;
  v171 = *(v190 + 48);
  *v170 = 2;
  sub_1A524C5B4();
  sub_1A5241244();
  v34 = v192;
  v30(v28, v29, v192);
  v35 = v15;
  sub_1A5240BC4();
  v36 = v179;
  v37 = v189;
  v189(v179, 1, 1, v31);
  v38 = v188;
  sub_1A5240224();
  v39 = v184;
  v186(v38, 0, 1, v184);
  v40 = v35;
  sub_1A5240264();
  v41 = v196;
  v170 = &v196[v174 + v185];
  v171 = *(v33 + 48);
  *v170 = 3;
  v174 = 0xD000000000000014;
  sub_1A524C5B4();
  sub_1A5241244();
  v191(v28, v195, v34);
  sub_1A5240BC4();
  v37(v36, 1, 1, v187);
  v42 = v188;
  sub_1A5240224();
  v43 = v186;
  v186(v42, 0, 1, v39);
  sub_1A5240264();
  v44 = v185;
  v171 = 4 * v185;
  v169 = &v41[4 * v185];
  v45 = v190;
  v170 = *(v190 + 48);
  *v169 = 4;
  sub_1A524C5B4();
  sub_1A5241244();
  v46 = v192;
  v191(v28, v195, v192);
  sub_1A5240BC4();
  v47 = v179;
  v189(v179, 1, 1, v187);
  v48 = v188;
  sub_1A5240224();
  v49 = v184;
  v43(v48, 0, 1, v184);
  v177 = v40;
  sub_1A5240264();
  v170 = &v196[v171 + v44];
  v171 = *(v45 + 48);
  *v170 = 5;
  sub_1A524C5B4();
  sub_1A5241244();
  v50 = v191;
  v191(v28, v195, v46);
  sub_1A5240BC4();
  v51 = v187;
  v189(v47, 1, 1, v187);
  sub_1A5240224();
  v52 = v49;
  v53 = v186;
  v186(v48, 0, 1, v52);
  sub_1A5240264();
  v170 = &v196[6 * v185];
  v54 = v190;
  v171 = *(v190 + 48);
  *v170 = 6;
  sub_1A524C5B4();
  sub_1A5241244();
  v50(v28, v195, v192);
  sub_1A5240BC4();
  v55 = v179;
  v56 = v189;
  v189(v179, 1, 1, v51);
  v57 = v188;
  sub_1A5240224();
  v53(v57, 0, 1, v184);
  sub_1A5240264();
  v169 = 8 * v185;
  v165 = &v196[7 * v185];
  v168 = *(v54 + 48);
  *v165 = 7;
  sub_1A524C5B4();
  sub_1A5241244();
  v58 = v195;
  v191(v28, v195, v192);
  sub_1A5240BC4();
  v59 = v194;
  v56(v55, 1, 1, v187);
  v60 = v188;
  sub_1A5240224();
  v186(v60, 0, 1, v184);
  sub_1A420E96C(0, &qword_1EB1357A8, v173, v172);
  v173 = v61;
  v171 = *(v59 + 16);
  v172 = *(v59 + 24);
  v170 = (v172 + 32) & ~v172;
  v62 = swift_allocObject();
  v166 = xmmword_1A52F8E10;
  *(v62 + 16) = xmmword_1A52F8E10;
  sub_1A524C5B4();
  sub_1A5241244();
  v63 = v58;
  v64 = v192;
  v191(v28, v58, v192);
  sub_1A5240BC4();
  v65 = v179;
  v66 = v188;
  sub_1A5240254();
  v165 = &v196[v169];
  v168 = *(v190 + 48);
  *v165 = 8;
  sub_1A524C5B4();
  sub_1A5241244();
  v67 = v178;
  v68 = v191;
  v191(v178, v63, v64);
  sub_1A5240BC4();
  v69 = v189;
  v189(v65, 1, 1, v187);
  sub_1A5240224();
  v70 = v66;
  v71 = v186;
  v186(v70, 0, 1, v184);
  sub_1A5240264();
  v168 = &v196[v169 + v185];
  v169 = *(v190 + 48);
  *v168 = 9;
  sub_1A524C5B4();
  sub_1A5241244();
  v68(v67, v195, v192);
  sub_1A5240BC4();
  v72 = v179;
  v73 = v187;
  v69(v179, 1, 1, v187);
  v74 = v188;
  sub_1A5240224();
  v71(v74, 0, 1, v184);
  sub_1A5240264();
  v75 = v196;
  v76 = v185;
  v165 = &v196[10 * v185];
  v168 = *(v190 + 48);
  *v165 = 10;
  v169 = 0xD000000000000015;
  sub_1A524C5B4();
  sub_1A5241244();
  v77 = v178;
  v68(v178, v195, v192);
  sub_1A5240BC4();
  v78 = v72;
  v79 = v73;
  v80 = v189;
  v189(v72, 1, 1, v79);
  v81 = v188;
  sub_1A5240224();
  v82 = v184;
  v186(v81, 0, 1, v184);
  sub_1A5240264();
  v165 = &v75[11 * v76];
  v168 = *(v190 + 48);
  *v165 = 11;
  sub_1A524C5B4();
  sub_1A5241244();
  v83 = v195;
  v84 = v191;
  v191(v77, v195, v192);
  sub_1A5240BC4();
  v80(v78, 1, 1, v187);
  v85 = v188;
  sub_1A5240224();
  v186(v85, 0, 1, v82);
  sub_1A5240264();
  v165 = &v196[12 * v185];
  v86 = v190;
  v168 = *(v190 + 48);
  *v165 = 12;
  sub_1A524C5B4();
  sub_1A5241244();
  v87 = v192;
  v84(v178, v83, v192);
  sub_1A5240BC4();
  v88 = v179;
  v189(v179, 1, 1, v187);
  v89 = v188;
  sub_1A5240224();
  v186(v89, 0, 1, v184);
  sub_1A5240264();
  v90 = v185;
  v168 = *(v86 + 48);
  v196[13 * v185] = 13;
  sub_1A524C5B4();
  sub_1A5241244();
  v191(v178, v195, v87);
  sub_1A5240BC4();
  v91 = v187;
  v189(v88, 1, 1, v187);
  sub_1A5240224();
  v92 = v184;
  v186(v89, 0, 1, v184);
  sub_1A5240264();
  v165 = &v196[14 * v90];
  v93 = v190;
  v168 = *(v190 + 48);
  *v165 = 14;
  sub_1A524C5B4();
  sub_1A5241244();
  v94 = v178;
  v191(v178, v195, v192);
  sub_1A5240BC4();
  v95 = v179;
  v96 = v189;
  v189(v179, 1, 1, v91);
  v97 = v188;
  sub_1A5240224();
  v186(v97, 0, 1, v92);
  sub_1A5240264();
  v168 = 16 * v185;
  v164 = &v196[15 * v185];
  v165 = *(v93 + 48);
  *v164 = 15;
  sub_1A524C5B4();
  sub_1A5241244();
  v98 = v94;
  v99 = v94;
  v100 = v191;
  v101 = v192;
  v191(v99, v195, v192);
  sub_1A5240BC4();
  v96(v95, 1, 1, v187);
  sub_1A5240224();
  v102 = v184;
  v103 = v186;
  v186(v97, 0, 1, v184);
  sub_1A5240264();
  v164 = &v196[v168];
  v165 = *(v190 + 48);
  *v164 = 16;
  sub_1A524C5B4();
  sub_1A5241244();
  v100(v98, v195, v101);
  sub_1A5240BC4();
  v104 = v179;
  v105 = v187;
  v189(v179, 1, 1, v187);
  v106 = v188;
  sub_1A5240224();
  v103(v106, 0, 1, v102);
  sub_1A5240264();
  v165 = &v196[v168 + v185];
  v168 = *(v190 + 48);
  *v165 = 17;
  sub_1A524C5B4();
  sub_1A5241244();
  v107 = v192;
  v191(v178, v195, v192);
  sub_1A5240BC4();
  v108 = v104;
  v189(v104, 1, 1, v105);
  sub_1A5240224();
  v109 = v186;
  v186(v106, 0, 1, v184);
  sub_1A5240264();
  v110 = v185;
  v168 = &v196[18 * v185];
  v169 = *(v190 + 48);
  *v168 = 18;
  sub_1A524C5B4();
  sub_1A5241244();
  v111 = v178;
  v191(v178, v195, v107);
  sub_1A5240BC4();
  v112 = v187;
  v189(v108, 1, 1, v187);
  v113 = v188;
  sub_1A5240224();
  v114 = v184;
  v109(v113, 0, 1, v184);
  sub_1A5240264();
  v169 = *(v190 + 48);
  v196[19 * v110] = 19;
  sub_1A524C5B4();
  sub_1A5241244();
  v115 = v195;
  v116 = v192;
  v191(v111, v195, v192);
  sub_1A5240BC4();
  v189(v179, 1, 1, v112);
  v117 = v188;
  sub_1A5240224();
  v186(v117, 0, 1, v114);
  sub_1A5240264();
  v169 = *(v190 + 48);
  v196[20 * v185] = 20;
  sub_1A524C5B4();
  sub_1A5241244();
  v191(v178, v115, v116);
  sub_1A5240BC4();
  v118 = v179;
  v119 = v187;
  v189(v179, 1, 1, v187);
  sub_1A5240224();
  v120 = v184;
  v121 = v186;
  v186(v117, 0, 1, v184);
  sub_1A5240264();
  v168 = &v196[21 * v185];
  v169 = *(v190 + 48);
  *v168 = 21;
  sub_1A524C5B4();
  sub_1A5241244();
  v122 = v178;
  v191(v178, v195, v192);
  sub_1A5240BC4();
  v189(v118, 1, 1, v119);
  sub_1A5240224();
  v121(v117, 0, 1, v120);
  v123 = v170;
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_1A52FC9F0;
  v165 = v124 + v123;
  sub_1A524C5B4();
  sub_1A5241244();
  v125 = v195;
  v126 = v192;
  v127 = v191;
  v191(v122, v195, v192);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v127(v122, v125, v126);
  v128 = v127;
  sub_1A5240BC4();
  v129 = v179;
  sub_1A5240254();
  v130 = v196;
  v131 = v185;
  v168 = &v196[22 * v185];
  v169 = *(v190 + 48);
  *v168 = 22;
  sub_1A524C5B4();
  sub_1A5241244();
  v128(v122, v125, v192);
  sub_1A5240BC4();
  v132 = v187;
  v133 = v189;
  v189(v129, 1, 1, v187);
  v134 = v188;
  sub_1A5240224();
  v186(v134, 0, 1, v184);
  sub_1A5240264();
  v168 = &v130[23 * v131];
  v169 = *(v190 + 48);
  *v168 = 23;
  sub_1A524C5B4();
  sub_1A5241244();
  v135 = v195;
  v191(v178, v195, v192);
  sub_1A5240BC4();
  v133(v129, 1, 1, v132);
  sub_1A5240224();
  v136 = v184;
  v186(v134, 0, 1, v184);
  sub_1A5240264();
  v168 = &v196[24 * v185];
  v137 = v190;
  v169 = *(v190 + 48);
  *v168 = 24;
  sub_1A524C5B4();
  sub_1A5241244();
  v138 = v192;
  v191(v178, v135, v192);
  sub_1A5240BC4();
  v139 = v179;
  v140 = v187;
  v189(v179, 1, 1, v187);
  v141 = v188;
  sub_1A5240224();
  v142 = v186;
  v186(v141, 0, 1, v136);
  v143 = v139;
  sub_1A5240264();
  v169 = &v196[25 * v185];
  v176 = *(v137 + 48);
  *v169 = 25;
  sub_1A524C5B4();
  sub_1A5241244();
  v144 = v178;
  v145 = v191;
  v191(v178, v195, v138);
  sub_1A5240BC4();
  v189(v143, 1, 1, v140);
  v146 = v188;
  sub_1A5240224();
  v142(v146, 0, 1, v184);
  *(swift_allocObject() + 16) = v166;
  sub_1A524C5B4();
  sub_1A5241244();
  v147 = v144;
  v148 = v195;
  v149 = v192;
  v145(v147, v195, v192);
  sub_1A5240BC4();
  v150 = v179;
  sub_1A5240254();
  v151 = v185;
  v173 = &v196[26 * v185];
  v176 = *(v190 + 48);
  *v173 = 26;
  sub_1A524C5B4();
  sub_1A5241244();
  v152 = v178;
  v145(v178, v148, v149);
  sub_1A5240BC4();
  v153 = v189;
  v189(v150, 1, 1, v187);
  v154 = v188;
  sub_1A5240224();
  v186(v154, 0, 1, v184);
  sub_1A5240264();
  v173 = &v196[27 * v151];
  v155 = v190;
  v176 = *(v190 + 48);
  *v173 = 27;
  sub_1A524C5B4();
  sub_1A5241244();
  v191(v152, v195, v192);
  sub_1A5240BC4();
  v153(v179, 1, 1, v187);
  sub_1A5240224();
  v156 = v184;
  v157 = v186;
  v186(v154, 0, 1, v184);
  sub_1A5240264();
  v176 = *(v155 + 48);
  v196[28 * v185] = 28;
  sub_1A524C5B4();
  sub_1A5241244();
  v158 = v178;
  v191(v178, v195, v192);
  sub_1A5240BC4();
  v159 = v179;
  v189(v179, 1, 1, v187);
  sub_1A5240224();
  v157(v154, 0, 1, v156);
  v160 = v159;
  sub_1A5240264();
  v161 = &v196[29 * v185];
  v185 = *(v190 + 48);
  *v161 = 29;
  sub_1A524C5B4();
  sub_1A5241244();
  v191(v158, v195, v192);
  sub_1A5240BC4();
  v189(v160, 1, 1, v187);
  sub_1A5240224();
  v186(v154, 0, 1, v184);
  sub_1A5240264();
  v162 = sub_1A420E088(v167);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EB1EBC48 = v162;
  return result;
}

unint64_t sub_1A420D290(char a1)
{
  result = 0x7972617262694CLL;
  switch(a1)
  {
    case 1:
      result = 0x656C706F6550;
      break;
    case 2:
      result = 0x7370697254;
      break;
    case 3:
      result = 0x736569726F6D654DLL;
      break;
    case 4:
      result = 0x73746E657645;
      break;
    case 5:
      result = 0x736D75626C41;
      break;
    case 6:
      result = 0x6465727574616546;
      break;
    case 7:
      result = 7364941;
      break;
    case 8:
      result = 0x6C41646572616853;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x657469726F766146;
      break;
    case 11:
      result = 0x736F65646956;
      break;
    case 12:
      result = 0x736569666C6553;
      break;
    case 13:
      result = 0x746F68506576694CLL;
      break;
    case 14:
      result = 0x7469617274726F50;
      break;
    case 15:
      result = 0x616D61726F6E6150;
      break;
    case 16:
      result = 0x6F4D6F6C53;
      break;
    case 17:
      result = 0x6974616D656E6943;
      break;
    case 18:
      result = 0x68736E6565726353;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x6C616974617053;
      break;
    case 21:
      result = 0x646574616D696E41;
      break;
    case 22:
      result = 5718354;
      break;
    case 23:
      result = 0x7365526F7250;
      break;
    case 24:
      result = 0x6E6564646948;
      break;
    case 25:
    case 26:
      result = 0x796C746E65636552;
      break;
    case 27:
      result = 0x7374726F706D49;
      break;
    case 28:
      result = 0x746163696C707544;
      break;
    case 29:
      result = 0x7365646F435251;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A420D580(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1A420D290(*a1);
  v5 = v4;
  if (v3 == sub_1A420D290(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();
  }

  return v8 & 1;
}

uint64_t sub_1A420D608()
{
  v1 = *v0;
  sub_1A524EC94();
  sub_1A420D290(v1);
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A420D66C(uint64_t a1)
{
  sub_1A420D290(*v1);
  sub_1A524C794();

  return result;
}

uint64_t sub_1A420D6C0(uint64_t a1)
{
  v2 = *v1;
  sub_1A524EC94();
  sub_1A420D290(v2);
  sub_1A524C794();

  return sub_1A524ECE4();
}

unint64_t sub_1A420D720@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A420E248(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1A420D750@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A420D290(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A420D780(uint64_t a1)
{
  v2 = sub_1A420E5AC();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

void sub_1A420D7CC()
{
  if (qword_1EB1B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A420D844(uint64_t a1)
{
  v2 = sub_1A420E508();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1A420D8A0(uint64_t a1)
{
  v1 = a1;
  sub_1A524EC94();
  sub_1A420D290(v1);
  sub_1A524C794();

  v2 = sub_1A524ECE4();

  return sub_1A420D928(v1, v2);
}

unint64_t sub_1A420D928(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x7972617262694CLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE600000000000000;
          v8 = 0x656C706F6550;
          break;
        case 2:
          v7 = 0xE500000000000000;
          v8 = 0x7370697254;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x736569726F6D654DLL;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x73746E657645;
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = 0x736D75626C41;
          break;
        case 6:
          v7 = 0xE800000000000000;
          v8 = 0x6465727574616546;
          break;
        case 7:
          v7 = 0xE300000000000000;
          v8 = 7364941;
          break;
        case 8:
          v8 = 0x6C41646572616853;
          v7 = 0xEC000000736D7562;
          break;
        case 9:
          v8 = 0xD000000000000014;
          v7 = 0x80000001A53CD020;
          break;
        case 0xA:
          v8 = 0x657469726F766146;
          goto LABEL_26;
        case 0xB:
          v7 = 0xE600000000000000;
          v8 = 0x736F65646956;
          break;
        case 0xC:
          v8 = 0x736569666C6553;
          break;
        case 0xD:
          v8 = 0x746F68506576694CLL;
          v7 = 0xEA0000000000736FLL;
          break;
        case 0xE:
          v7 = 0xE800000000000000;
          v8 = 0x7469617274726F50;
          break;
        case 0xF:
          v8 = 0x616D61726F6E6150;
LABEL_26:
          v7 = 0xE900000000000073;
          break;
        case 0x10:
          v7 = 0xE500000000000000;
          v8 = 0x6F4D6F6C53;
          break;
        case 0x11:
          v8 = 0x6974616D656E6943;
          v7 = 0xE900000000000063;
          break;
        case 0x12:
          v8 = 0x68736E6565726353;
          v7 = 0xEB0000000073746FLL;
          break;
        case 0x13:
          v8 = 0xD000000000000010;
          v7 = 0x80000001A53CD090;
          break;
        case 0x14:
          v8 = 0x6C616974617053;
          break;
        case 0x15:
          v7 = 0xE800000000000000;
          v8 = 0x646574616D696E41;
          break;
        case 0x16:
          v7 = 0xE300000000000000;
          v8 = 5718354;
          break;
        case 0x17:
          v7 = 0xE600000000000000;
          v8 = 0x7365526F7250;
          break;
        case 0x18:
          v7 = 0xE600000000000000;
          v8 = 0x6E6564646948;
          break;
        case 0x19:
          v7 = 0xEF646574656C6544;
          goto LABEL_34;
        case 0x1A:
          v7 = 0xED00006465766153;
LABEL_34:
          v8 = 0x796C746E65636552;
          break;
        case 0x1B:
          v8 = 0x7374726F706D49;
          break;
        case 0x1C:
          v8 = 0x746163696C707544;
          v7 = 0xEA00000000007365;
          break;
        case 0x1D:
          v8 = 0x7365646F435251;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x7972617262694CLL;
      switch(a1)
      {
        case 1:
          v9 = 0xE600000000000000;
          if (v8 == 0x656C706F6550)
          {
            goto LABEL_91;
          }

          goto LABEL_92;
        case 2:
          v9 = 0xE500000000000000;
          if (v8 != 0x7370697254)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 3:
          v9 = 0xE800000000000000;
          if (v8 != 0x736569726F6D654DLL)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 4:
          v9 = 0xE600000000000000;
          if (v8 != 0x73746E657645)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 5:
          v9 = 0xE600000000000000;
          if (v8 != 0x736D75626C41)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 6:
          v9 = 0xE800000000000000;
          v13 = 0x727574616546;
          goto LABEL_72;
        case 7:
          v9 = 0xE300000000000000;
          if (v8 != 7364941)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 8:
          v9 = 0xEC000000736D7562;
          if (v8 != 0x6C41646572616853)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 9:
          v9 = 0x80000001A53CD020;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 10:
          v12 = 0x657469726F766146;
          goto LABEL_77;
        case 11:
          v9 = 0xE600000000000000;
          if (v8 != 0x736F65646956)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 12:
          v11 = 0x6569666C6553;
          goto LABEL_48;
        case 13:
          v9 = 0xEA0000000000736FLL;
          if (v8 != 0x746F68506576694CLL)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 14:
          v9 = 0xE800000000000000;
          if (v8 != 0x7469617274726F50)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 15:
          v12 = 0x616D61726F6E6150;
LABEL_77:
          v9 = 0xE900000000000073;
          if (v8 != v12)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 16:
          v9 = 0xE500000000000000;
          if (v8 != 0x6F4D6F6C53)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 17:
          v9 = 0xE900000000000063;
          if (v8 != 0x6974616D656E6943)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 18:
          v9 = 0xEB0000000073746FLL;
          if (v8 != 0x68736E6565726353)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 19:
          v9 = 0x80000001A53CD090;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 20:
          if (v8 != 0x6C616974617053)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 21:
          v9 = 0xE800000000000000;
          v13 = 0x74616D696E41;
LABEL_72:
          if (v8 != (v13 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 22:
          v9 = 0xE300000000000000;
          if (v8 != 5718354)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 23:
          v9 = 0xE600000000000000;
          if (v8 != 0x7365526F7250)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 24:
          v9 = 0xE600000000000000;
          if (v8 != 0x6E6564646948)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 25:
          v9 = 0xEF646574656C6544;
          goto LABEL_96;
        case 26:
          v9 = 0xED00006465766153;
LABEL_96:
          if (v8 != 0x796C746E65636552)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 27:
          v11 = 0x74726F706D49;
LABEL_48:
          if (v8 != (v11 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 28:
          v9 = 0xEA00000000007365;
          if (v8 != 0x746163696C707544)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 29:
          v10 = 0x7365646F435251;
          goto LABEL_90;
        default:
LABEL_90:
          if (v8 != v10)
          {
            goto LABEL_92;
          }

LABEL_91:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_92:
          v14 = sub_1A524EAB4();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1A420E088(uint64_t a1)
{
  sub_1A420E904(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A420E9D0(0);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A420EA3C(v10, v6);
      v12 = *v6;
      result = sub_1A420D8A0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1A5240274();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1A420E248(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A524EB24();

  if (v2 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A420E2A0()
{
  result = qword_1EB135728;
  if (!qword_1EB135728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135728);
  }

  return result;
}

unint64_t sub_1A420E2F8()
{
  result = qword_1EB135730;
  if (!qword_1EB135730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135730);
  }

  return result;
}

unint64_t sub_1A420E350()
{
  result = qword_1EB135738;
  if (!qword_1EB135738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135738);
  }

  return result;
}

unint64_t sub_1A420E3A8()
{
  result = qword_1EB135740;
  if (!qword_1EB135740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135740);
  }

  return result;
}

unint64_t sub_1A420E400()
{
  result = qword_1EB135748;
  if (!qword_1EB135748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135748);
  }

  return result;
}

unint64_t sub_1A420E458()
{
  result = qword_1EB135750;
  if (!qword_1EB135750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135750);
  }

  return result;
}

unint64_t sub_1A420E4B0()
{
  result = qword_1EB135758;
  if (!qword_1EB135758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135758);
  }

  return result;
}

unint64_t sub_1A420E508()
{
  result = qword_1EB135760;
  if (!qword_1EB135760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135760);
  }

  return result;
}

unint64_t sub_1A420E5AC()
{
  result = qword_1EB135768;
  if (!qword_1EB135768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135768);
  }

  return result;
}

unint64_t sub_1A420E604()
{
  result = qword_1EB135770;
  if (!qword_1EB135770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135770);
  }

  return result;
}

unint64_t sub_1A420E65C()
{
  result = qword_1EB135778;
  if (!qword_1EB135778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135778);
  }

  return result;
}

unint64_t sub_1A420E6B4()
{
  result = qword_1EB135780;
  if (!qword_1EB135780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135780);
  }

  return result;
}

unint64_t sub_1A420E70C()
{
  result = qword_1EB135788;
  if (!qword_1EB135788)
  {
    sub_1A420E764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135788);
  }

  return result;
}

void sub_1A420E764()
{
  if (!qword_1EB135790)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135790);
    }
  }
}

uint64_t getEnumTagSinglePayload for DestinationAppEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DestinationAppEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1A420E904(uint64_t a1)
{
  if (!qword_1EB1357A0)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1357A0);
    }
  }
}

void sub_1A420E96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A420E9D0(uint64_t a1)
{
  if (!qword_1EB1357B0)
  {
    sub_1A5240274();
    sub_1A420E6B4();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1357B0);
    }
  }
}

uint64_t sub_1A420EA3C(uint64_t a1, uint64_t a2)
{
  sub_1A420E904(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A420EADC(void *a1)
{
  v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_state] = 0;
  v3 = &v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_viewControllerTransitionObservation];
  *v3 = 0;
  v3[1] = 0;
  v4 = swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_referenceView] = 0;
  v5 = &v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_initialGestureLocation];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureLocation];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureVelocity];
  *v7 = 0;
  v7[1] = 0;
  *&v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_initialItemPlacement] = 0;
  *&v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_swipeDownTracker] = 0;
  *&v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_releaseAnimationProgressAnimator] = 0;
  *&v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_releaseAnimationDismissalProgressAnimator] = 0;
  v8 = &v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_centerOffsetAnimatorObservation];
  *v8 = 0;
  v8[1] = 0;
  *&v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_centerOffsetAnimator] = 0;
  v9 = &v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_targetCenter];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = &v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_sourceSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_targetSize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_targetCancelled] = 0;
  *&v1[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_updater] = 0;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ViewControllerSwipeDownDismissalController(v4, v12);
  v13 = objc_msgSendSuper2(&v23, sel_init);
  v14 = objc_allocWithZone(off_1E7721940);
  v15 = v13;
  v16 = [v14 initWithTarget:v15 needsUpdateSelector:sel_setNeedsUpdate];
  v17 = OBJC_IVAR___PXViewControllerSwipeDownDismissalController_updater;
  v18 = *&v15[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_updater];
  *&v15[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_updater] = v16;
  v19 = v16;

  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v19 addUpdateSelector_];

  v20 = *&v15[v17];
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v20 addUpdateSelector_];
  v21 = *&v15[v17];
  if (v21)
  {
    [v21 addUpdateSelector_];
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    sub_1A420EFAC(Strong);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1A420ED4C(void *a1)
{
  result = [a1 state];
  if (result > 2)
  {
    if ((result - 3) >= 3)
    {
      goto LABEL_18;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      result = sub_1A420EEDC(v1, a1);
      v4 = *(v1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureLocation + 16);
      v5 = v1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_initialGestureLocation;
      *v5 = *(v1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureLocation);
      *(v5 + 16) = v4;
      *(v1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_state) = 1;
      return result;
    }

    if (result == 2)
    {

      return sub_1A420EEDC(v1, a1);
    }

LABEL_18:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  if (*(v1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_state) != 1)
  {
    return result;
  }

  v6 = v1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureLocation;
  v7 = *(v1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureLocation + 16);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  if (v7)
  {
    return result;
  }

  v8 = *(v1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_updater);
  if (!v8)
  {
    __break(1u);
    goto LABEL_18;
  }

  return [v8 setNeedsUpdateOf_];
}

id sub_1A420EEDC(uint64_t a1, id a2)
{
  v4 = OBJC_IVAR___PXViewControllerSwipeDownDismissalController_referenceView;
  [a2 locationInView_];
  sub_1A420F138(v5, v6, 0);
  result = [a2 velocityInView_];
  v9 = (a1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureVelocity);
  v10 = *(a1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureVelocity);
  v11 = *(a1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureVelocity + 8);
  *v9 = v12;
  v9[1] = v8;
  if (v10 != v12 || v11 != v8)
  {
    result = *(a1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_updater);
    if (result)
    {

      return [result setNeedsUpdateOf_];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1A420EFAC(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (Strong)
    {
      v5 = Strong;

      if (v5 == a1)
      {
        return;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A524D1A4();
  }

  v6 = (v2 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_viewControllerTransitionObservation);
  *v6 = 0;
  v6[1] = 0;
  swift_unknownObjectRelease();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 detailViewController];

    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = [v9 view];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v2 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_referenceView);
  *(v2 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_referenceView) = v10;
}

void *sub_1A420F138(void *result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureLocation;
  v5 = *(v3 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureLocation);
  v6 = *(v3 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureLocation + 8);
  v7 = *(v3 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureLocation + 16);
  *v4 = *&result;
  *(v4 + 8) = *&a2;
  *(v4 + 16) = a3 & 1;
  if (v7)
  {
    if (a3)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((a3 & 1) != 0 || (v5 == *&result ? (v8 = v6 == *&a2) : (v8 = 0), !v8))
  {
LABEL_11:
    result = *(v3 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_updater);
    if (*&result == 0.0)
    {
      __break(1u);
    }

    else
    {
      *&result = COERCE_DOUBLE([result setNeedsUpdateOf_]);
    }
  }

  return result;
}

uint64_t sub_1A420F1A8()
{
  v0 = sub_1A524BEE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v8 = sub_1A524D474();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1A4211548;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_120_2;
  v10 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29C54(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A3C29C54(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_1A420F4DC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = [Strong detailItemOriginalPlacement];

  v4 = *(v1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_initialItemPlacement);
  *(v1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_initialItemPlacement) = v3;
  if (!v4)
  {
    if (!v3)
    {
      return;
    }

    v8 = v3;
    goto LABEL_7;
  }

  if (!v3 || (sub_1A3C52C70(0, &qword_1EB135858, &off_1E7721610), v5 = v3, v10 = v4, v6 = sub_1A524DBF4(), v10, (v6 & 1) == 0))
  {
LABEL_7:
    v9 = *(v1 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_updater);
    if (!v9)
    {
      __break(1u);
      return;
    }

    [v9 setNeedsUpdateOf_];

    v7 = v4;
    goto LABEL_9;
  }

  v7 = v10;
LABEL_9:
}

void sub_1A420F654()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_referenceView);
    if (v2)
    {
      v18 = Strong;
      v3 = *(v0 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_initialItemPlacement);
      if (v3)
      {
        [v3 rectInCoordinateSpace:v2 velocity:0];
      }

      else
      {
        v4 = v2;
      }

      v5 = [v18 isVerticalOnly];
      v6 = OBJC_IVAR___PXViewControllerSwipeDownDismissalController_swipeDownTracker;
      v7 = *(v0 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_state);
      if (v3)
      {
        if (v7 == 1)
        {
          if (*(v0 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_initialGestureLocation + 16))
          {
            __break(1u);
            __break(1u);
            __break(1u);
          }

          else
          {
            v8 = *(v0 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_swipeDownTracker);
            if (v8)
            {
              if (*(v0 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureLocation + 16))
              {
                v11 = v8;
                v12 = v8;
                [v12 trackedCenter];
                [v12 trackedBounds];
                sub_1A524D9D4();
              }

              v15 = v8;
              v16 = v8;
              sub_1A524DB74();
            }

            v9 = [objc_allocWithZone(PXSwipeDownTracker) initWithOptions_];
            if (v9)
            {
              v10 = v9;
              sub_1A524D9E4();
            }
          }

          __break(1u);
          __break(1u);
          goto LABEL_26;
        }
      }

      else if (v7 == 1 && (*(v0 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_currentGestureLocation + 16) & 1) != 0)
      {
        *(v0 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_state) = 2;
        v13 = *(v0 + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_updater);
        if (!v13)
        {
LABEL_26:
          __break(1u);
          __break(1u);
          return;
        }

        v14 = v13;
        [v14 setNeedsUpdateOf_];
      }

      v17 = *(v0 + v6);
      *(v0 + v6) = 0;

      return;
    }
  }
}

void sub_1A4210178(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    [a1 rectInCoordinateSpace:a3 velocity:0];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    swift_beginAccess();
    *(a2 + 16) = v6;
    *(a2 + 24) = v8;
    *(a2 + 32) = v10;
    *(a2 + 40) = v12;
    *(a2 + 48) = 0;
    sub_1A524D9F4();
  }
}

void sub_1A42103C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_26;
  }

  v2 = Strong;
  v3 = OBJC_IVAR___PXViewControllerSwipeDownDismissalController_state;
  v4 = v0[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_state];
  if (!v0[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_state])
  {
    v7 = 0;
    v8 = 0uLL;
    v24 = 0u;
    v9 = 0;
    v10 = 1;
LABEL_7:
    v23 = v8;
    v26 = 1;
    v19 = swift_allocObject();
    *(v19 + 16) = v0;
    *(v19 + 40) = v23;
    *(v19 + 24) = v24;
    *(v19 + 56) = v26;
    *(v19 + 64) = v9;
    *(v19 + 72) = v2;
    *(v19 + 80) = v4;
    *(v19 + 88) = v10;
    *(v19 + 89) = v7;
    aBlock[4] = sub_1A4211348;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A421179C;
    aBlock[3] = &block_descriptor_125;
    v20 = _Block_copy(aBlock);
    v21 = v0;
    v22 = v2;

    [v22 performChanges_];

    _Block_release(v20);
    return;
  }

  if (v4 == 1)
  {
    v5 = *&v0[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_swipeDownTracker];
    if (v5)
    {
      v6 = v5;
      [v6 trackedCenter];
      [v6 trackedBounds];
      sub_1A524D9D4();
    }

    __break(1u);
    goto LABEL_20;
  }

  v11 = *&v0[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_releaseAnimationProgressAnimator];
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = *&v0[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_centerOffsetAnimator];
  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = *&v0[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_releaseAnimationDismissalProgressAnimator];
  if (!v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v0[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_sourceSize + 16])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v0[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_targetCenter + 16])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v0[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_targetSize + 16] & 1) == 0)
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
    [v14 presentationValue];
    v4 = v17;
    [v16 presentationValue];
    v9 = v18;
    if (([v14 isAnimating] & 1) != 0 || (objc_msgSend(v15, sel_isAnimating) & 1) != 0 || objc_msgSend(v16, sel_isAnimating))
    {
      [v15 presentationValue];
      sub_1A524DB64();
    }

    v10 = 0;
    v0[v3] = 0;
    v8 = 0uLL;
    v24 = 0u;
    v7 = 1;
    goto LABEL_7;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  sub_1A524E6E4();
  __break(1u);
}

void sub_1A42107DC(void *a1, char *a2, uint64_t *a3, void *a4, uint64_t a5, char a6, int a7, double a8)
{
  v73 = a7;
  v15 = sub_1A524BEE4();
  v71 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A524BF64();
  v69 = *(v18 - 8);
  v70 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *&a2[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_referenceView];
  v72 = a2[OBJC_IVAR___PXViewControllerSwipeDownDismissalController_targetCancelled];
  if (a3[4])
  {
    v22 = v21;
    goto LABEL_20;
  }

  if (v21)
  {
    v23 = *a3;
    v24 = a3[1];
    v25 = a3[2];
    v26 = a3[3];
    v27 = v21;
    v68 = [a4 summaryItemOriginalPlacement];
    v67 = [a4 detailItemOriginalPlacement];
    v28 = 1.0;
    if ((a6 & 1) == 0)
    {
      v29 = *&a5;
      v30 = 1.0 - *&a5;
      v31 = v72;
      if (!v72)
      {
        v30 = v29;
      }

      [a1 setFractionCompleted_];
      v32 = 0.0;
      if ((v31 & 1) == 0)
      {
        v33 = [a4 isVerticalOnly];
        v32 = -1.0;
        if (v33)
        {
          v32 = 0.0;
        }
      }

      v28 = v32 * v29 + 1.0;
    }

    v63 = v21;
    v34 = 1.0 - a8;
    v35 = v68;
    v66 = a1;
    v65 = v27;
    v64 = v15;
    if (v68)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = v23;
      *(v36 + 24) = v24;
      *(v36 + 32) = v25;
      *(v36 + 40) = v26;
      *(v36 + 48) = v27;
      __asm { FMOV            V0.2D, #1.0 }

      *(v36 + 56) = _Q0;
      v42 = v67;
      *(v36 + 72) = v35;
      *(v36 + 80) = v42;
      *(v36 + 88) = v34;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_1A42117A0;
      *(v43 + 24) = v36;
      v78 = sub_1A3D7B4F8;
      v79 = v43;
      aBlock = MEMORY[0x1E69E9820];
      v75 = 1107296256;
      v76 = sub_1A3D77CC4;
      v77 = &block_descriptor_98_1;
      v44 = _Block_copy(&aBlock);
      v45 = v27;
      v46 = v35;
      v47 = v42;

      v48 = [v46 copyWithConfiguration_];
      _Block_release(v44);
      LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

      if (v44)
      {
        __break(1u);
        goto LABEL_26;
      }

      a1 = v66;
      v27 = v65;
      v35 = v68;
      v15 = v64;
    }

    else
    {
      v48 = 0;
    }

    [a1 setSummaryItemPlacementOverride_];

    v49 = v67;
    if (!v67)
    {
      v56 = 0;
      goto LABEL_19;
    }

    v50 = swift_allocObject();
    *(v50 + 16) = v23;
    *(v50 + 24) = v24;
    *(v50 + 32) = v25;
    *(v50 + 40) = v26;
    *(v50 + 48) = v27;
    *(v50 + 56) = v28;
    *(v50 + 64) = v34;
    *(v50 + 72) = v35;
    *(v50 + 80) = v49;
    *(v50 + 88) = v34;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1A42113C8;
    *(v51 + 24) = v50;
    v78 = sub_1A3D78DD0;
    v79 = v51;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1A3D77CC4;
    v77 = &block_descriptor_87_2;
    v52 = _Block_copy(&aBlock);
    v53 = v27;
    v54 = v35;
    v55 = v49;

    v56 = [v55 copyWithConfiguration_];
    _Block_release(v52);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if ((v52 & 1) == 0)
    {
      a1 = v66;
      v49 = v67;
      v27 = v65;
      v35 = v68;
      v15 = v64;
LABEL_19:
      [a1 setDetailItemPlacementOverride_];

      v21 = v63;
      goto LABEL_20;
    }

LABEL_26:
    __break(1u);
    return;
  }

LABEL_20:
  if (v73)
  {
    v57 = &selRef_cancel;
    if (!v72)
    {
      v57 = &selRef_finish;
    }

    [a1 *v57];
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v58 = sub_1A524D474();
    v59 = swift_allocObject();
    *(v59 + 16) = a2;
    v78 = sub_1A4211364;
    v79 = v59;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1A3C2E0D0;
    v77 = &block_descriptor_78_0;
    v60 = _Block_copy(&aBlock);
    v61 = a2;

    sub_1A524BF14();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1A3C29C54(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C38394(0);
    sub_1A3C29C54(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v20, v17, v60);
    _Block_release(v60);

    (*(v71 + 8))(v17, v15);
    (*(v69 + 8))(v20, v70);
  }

  else
  {
  }
}

id sub_1A42111E0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ViewControllerSwipeDownDismissalController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1A42112F4()
{
  result = qword_1EB1B0A90[0];
  if (!qword_1EB1B0A90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B0A90);
  }

  return result;
}

void sub_1A4211364()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1A420EFAC(Strong);
}

uint64_t objectdestroy_80Tm()
{

  return swift_deallocObject();
}

id sub_1A4211430(void *a1)
{
  v2 = 1.0;
  if (*(v1 + 16))
  {
    v2 = 0.0;
  }

  return [a1 setValue_];
}

void sub_1A4211450(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PXNumberAnimatorChange(0);
  sub_1A3C29C54(&qword_1EB135850, type metadata accessor for PXNumberAnimatorChange, &unk_1A53266BC);
  sub_1A524EE54();
}

void sub_1A4211548()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_updater);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 updateIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1A42115CC(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR___PXViewControllerSwipeDownDismissalController_updater);
      if (v4)
      {
        [v4 setNeedsUpdateOf_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void _PhotosSearchHomeViewControllerHostedView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v44 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v44 - v9;
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  sub_1A4211EC0(0);
  v62 = *(v15 - 8);
  v63 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4212064(0);
  v61 = v17 - 8;
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v60 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 16);
  v70 = v4 + 16;
  v20(v14, v2, a1, v18);
  v67 = *(v4 + 80);
  v68 = v20;
  v69 = v11;
  v21 = (v67 + 32) & ~v67;
  v22 = swift_allocObject();
  v58 = v22;
  v47 = *(a1 + 16);
  v23 = *(a1 + 24);
  *(v22 + 16) = v47;
  *(v22 + 24) = v23;
  v24 = *(v4 + 32);
  v65 = v23;
  v66 = v4 + 32;
  v24(v22 + v21, v14, a1);
  v46 = v24;
  v25 = *(a1 + 36);
  v45 = a1;
  v51 = *(v2 + v25);
  v56 = sub_1A4212144();
  v26 = v71;
  (v20)(v71, v2, a1);
  v27 = swift_allocObject();
  v55 = v27;
  v28 = v47;
  v29 = v65;
  *(v27 + 16) = v47;
  *(v27 + 24) = v29;
  v30 = v21;
  v24(v27 + v21, v26, a1);
  v31 = v2;
  v32 = v2;
  v48 = v2;
  v33 = v68;
  v68(v26, v31, a1);
  v44 = v21;
  v34 = swift_allocObject();
  v54 = v34;
  v35 = v28;
  *(v34 + 16) = v28;
  *(v34 + 24) = v29;
  v36 = v34 + v30;
  v37 = v45;
  v38 = v46;
  v46(v36, v71, v45);
  v39 = v53;
  v33(v53, v32, v37);
  v40 = v44;
  v41 = swift_allocObject();
  v71 = v41;
  v42 = v65;
  *(v41 + 16) = v35;
  *(v41 + 24) = v42;
  v38(v41 + v40, v39, v37);
  sub_1A3C7A9FC(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  v52 = sub_1A3EA2A38();

  v53 = *(v37 + 40);
  v50 = (*(v42 + 40))(v35, v42);
  v49 = v43;
  sub_1A3FAE988();
}

void sub_1A4211EC0(uint64_t a1)
{
  if (!qword_1EB135888)
  {
    sub_1A4217284(255, &qword_1EB135890, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E69C2690]);
    type metadata accessor for LemonadeSuggestedSearchCollection(255);
    sub_1A4211FE0();
    sub_1A3C7AB78(&qword_1EB1358A0, type metadata accessor for LemonadeSuggestedSearchCollection, &unk_1A530DDB0);
    sub_1A3C7AB78(&qword_1EB1358A8, type metadata accessor for LemonadeSuggestedSearchCollection, &unk_1A530DDF0);
    v1 = sub_1A5242544();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB135888);
    }
  }
}

unint64_t sub_1A4211FE0()
{
  result = qword_1EB135898;
  if (!qword_1EB135898)
  {
    sub_1A4217284(255, &qword_1EB135890, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E69C2690]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135898);
  }

  return result;
}

double sub_1A421208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _PhotosSearchHomeViewControllerHostedView(0, *(v4 + 16), *(v4 + 24), a4);
  sub_1A3C7A9FC(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  LemonadeActiveSearchViewModel.isEditing.setter(0);

  return result;
}

void *sub_1A4212144()
{
  sub_1A4217C40(0);
  v1 = *(v0 - 8);
  v24 = v0;
  v25 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FAF454();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_17:

    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A524E2B4();
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_3:
  v28 = MEMORY[0x1E69E7CC0];
  result = sub_1A4215B00(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v28;
    v19 = v25 + 32;
    v20 = v5 & 0xC000000000000001;
    v22 = v5;
    v23 = v3;
    v21 = v6;
    do
    {
      if (v20)
      {
        v10 = MEMORY[0x1A59097F0](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = sub_1A3FAE220();
      v26 = v12;
      v13 = sub_1A3FAE1D8(v11);
      if ((v14 & 1) == 0)
      {
        v27 = v13;
        sub_1A3DA24EC();
        sub_1A524E054();
      }

      v27 = v10;

      sub_1A3FADF58();
      v15 = sub_1A3FAE428();
      if (v15)
      {
      }

      sub_1A4217284(0, &qword_1EB135890, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E69C2690]);
      type metadata accessor for LemonadeSuggestedSearchCollection(0);
      sub_1A4211FE0();
      v16 = v23;
      sub_1A5243704();
      v28 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1A4215B00((v17 > 1), v18 + 1, 1);
        v9 = v28;
      }

      ++v8;
      *(v9 + 16) = v18 + 1;
      (*(v25 + 32))(v9 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v18, v16, v24);
      v5 = v22;
    }

    while (v21 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

void sub_1A4212450()
{
  v0 = sub_1A5242054();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A3CB2058();
  if (v3)
  {
    v4 = v3;
    sub_1A3C7A9FC(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
    sub_1A524BAA4();
    v9[3] = sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
    v9[4] = &protocol witness table for PHAssetCollection;
    v9[0] = v4;
    v5 = v4;
    LemonadeActiveSearchViewModel.container.setter(v9);
  }

  else
  {
    v6 = sub_1A3FAE428();
    if (!v6)
    {
      return;
    }

    v7 = v6;
    sub_1A3C7A9FC(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
    sub_1A524BAA4();
    v5 = v7;
    LemonadeActiveSearchViewModel.searchText.setter(v5);
  }

  sub_1A524BAA4();
  sub_1A5242034();
  sub_1A3C9C5D4(v2);
}

void sub_1A4212604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _PhotosSearchHomeViewControllerHostedView(0, *(v4 + 16), *(v4 + 24), a4);

  sub_1A4212450();
}

double sub_1A42126E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _PhotosSearchHomeViewControllerHostedView(0, *(v4 + 16), *(v4 + 24), a4);
  if (a1)
  {
    sub_1A3C7A9FC(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
    sub_1A524BAA4();
    LemonadeActiveSearchViewModel.isEditing.setter(0);
  }

  return result;
}

uint64_t sub_1A42127A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1A4215B20(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1A3DA1FC8(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A4215B20((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for PhotosSearchSuggestion;
      v10 = sub_1A4217B88();
      *&v8 = swift_allocObject();
      sub_1A3DA1FC8(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_1A3C34460(&v8, v2 + 40 * v6 + 32);
      sub_1A3EA7630(v11);
      v4 += 144;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double sub_1A42128CC(void *a1)
{
  v2 = sub_1A5242054();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedSession];
  [v5 reportInitialSuggestionSelected];

  sub_1A3C7A9FC(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  LemonadeActiveSearchViewModel.isEditing.setter(0);

  sub_1A524BAA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1A5243464();
  LemonadeActiveSearchViewModel.searchText.setter(v6);

  sub_1A524BAA4();
  sub_1A5242034();
  sub_1A3C9C5D4(v4);

  return result;
}

uint64_t objectdestroyTm_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for _PhotosSearchHomeViewControllerHostedView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  sub_1A3C7A9FC(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  (*(*(v8 - 8) + 8))(v7, v8);

  (*(*(v5 - 8) + 8))(v7 + v6[12], v5);

  return swift_deallocObject();
}

double sub_1A4212BB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _PhotosSearchHomeViewControllerHostedView(0, *(v4 + 16), *(v4 + 24), a4);

  return sub_1A42128CC(a1);
}

uint64_t sub_1A4212C24(uint64_t a1, uint64_t a2)
{
  sub_1A4212064(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1A4212D2C()
{
  sub_1A3C7A9FC(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19[-v2 - 8];
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PhotosSearchHomeController + 72);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5);
  }

  else
  {
    type metadata accessor for PhotosSearchResultsCoordinator(0);
    v7 = v0;
    LemonadeActiveSearchViewModel.searchResults.getter(v3);
    LemonadeActiveSearchViewModel.container.getter(v19);
    v8 = *v4 & *v0;
    v9 = *(v0 + *(v8 + class metadata base offset for PhotosSearchHomeController + 40));
    v10 = *(*(v0 + *(v8 + class metadata base offset for PhotosSearchHomeController + 24)) + 80);
    v11 = sub_1A4212F6C();
    v12 = (v7 + *((*v4 & *v7) + class metadata base offset for PhotosSearchHomeController + 56));
    v13 = *v12;
    v14 = v12[1];

    v15 = v10;
    sub_1A3C66EE8(v13, v14);
    v16 = v7;
    v6 = sub_1A465F844(v3, v19, v9, v15, v11, v13, v14, v7, &off_1F16FE9D0);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1A4212F6C()
{
  sub_1A4217284(0, &qword_1EB125F08, &type metadata for PhotosSearchBarPosition.SystemBar, &protocol witness table for PhotosSearchBarPosition.SystemBar, type metadata accessor for PhotosSearchBarCoordinator);
  result = swift_dynamicCastClass();
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

uint64_t sub_1A4213024(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = sub_1A4215E9C(a1, a2, a3, a4, a5, a6, a7);
  sub_1A3C33378(a6, a7);

  return v16;
}

Swift::Void __swiftcall PhotosSearchHomeController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  sub_1A3C7A9FC(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = *(v4 + class metadata base offset for PhotosSearchHomeController);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v26.receiver = v1;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_viewDidLoad, v11);
  PXPreferencesEnsureDefaultEnhancedVisualSearch();
  (*(**(v1 + *((*v3 & *v1) + class metadata base offset for PhotosSearchHomeController + 32)) + 352))();
  LOBYTE(v3) = (*(*(v4 + class metadata base offset for PhotosSearchHomeController + 8) + 56))(v8);
  (*(v9 + 8))(v13, v8);
  if (v3)
  {
    v14 = [v1 navigationItem];
    sub_1A42135A0(v7);
    sub_1A524D344();

    v15 = [v1 navigationItem];
    type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();
    v16 = sub_1A4212D2C()[6];

    v17 = v1;
    sub_1A47F04D8(v16, v17);
    v19 = v18;
    [v15 setTitleView_];

    v20 = [v17 navigationItem];
    [v20 setStyle_];
  }

  else
  {
    v21 = [v1 view];
    if (!v21)
    {
      goto LABEL_8;
    }

    v22 = v21;
    v20 = [objc_opt_self() clearColor];
    [v22 setBackgroundColor_];
  }

  v23 = [v1 view];
  if (v23)
  {
    v24 = v23;
    v28 = v1;
    v25 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:sub_1A524EA94() action:sel_handleTapGesture];
    swift_unknownObjectRelease();
    [v24 addGestureRecognizer_];

    v29 = v1;
    v27 = v1;
    sub_1A52415B4();
    v29 = v1;
    v27 = v1;
    sub_1A52415B4();
    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

uint64_t sub_1A42135A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A52407E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A3C38BD4(0xD000000000000013);
  sub_1A52408B4();
  sub_1A52407F4();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  sub_1A52406B4();
  sub_1A3C7AB78(&qword_1EB13FA70, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
  v7 = sub_1A52406F4();
  sub_1A42172D8(0);
  sub_1A4114188();
  sub_1A5240C34();
  v7(v10, 0);

  (*(v4 + 32))(a1, v6, v3);
  return (*(v4 + 56))(a1, 0, 1, v3);
}

void sub_1A4213840(void *a1)
{
  v1 = a1;
  PhotosSearchHomeController.viewDidLoad()();
}

Swift::Void __swiftcall PhotosSearchHomeController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v2 = v1;
  v27.receiver = v2;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewIsAppearing_, a1);
  v4 = sub_1A4212F6C();
  if (v4)
  {
    v5 = v4;
    (*(*v4 + 352))(v26);
    v6 = v26[0];

    if (v6)
    {
      PhotosSearchBarCoordinator<>.barButtonItems.getter(&protocol witness table for PhotosSearchBarPosition.SystemBar);
      sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
      v7 = sub_1A524CA14();

      [v2 setToolbarItems_];

      v8 = [v2 navigationItem];
      [v8 _setToolbarAvoidsKeyboard_];

LABEL_16:

      goto LABEL_17;
    }

    v9 = [v2 navigationItem];
    v10 = PhotosSearchBarCoordinator<>.barButtonItems.getter(&protocol witness table for PhotosSearchBarPosition.SystemBar);
    v11 = v10;
    if (v10 >> 62)
    {
      v12 = sub_1A524E2B4();
      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_6:
        v24 = v9;
        v25 = v5;
        v26[18] = MEMORY[0x1E69E7CC0];
        sub_1A524E554();
        if (v12 < 0)
        {
          __break(1u);
          return;
        }

        v13 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1A59097F0](v13, v11);
          }

          else
          {
            v14 = *(v11 + 8 * v13 + 32);
          }

          v15 = v14;
          ++v13;
          sub_1A3C69B1C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_1A52F9790;
          *(v16 + 32) = v15;
          v17 = objc_allocWithZone(MEMORY[0x1E69DC720]);
          sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
          v18 = v15;
          v19 = sub_1A524CA14();

          [v17 initWithBarButtonItems:v19 representativeItem:0];

          sub_1A524E514();
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
        }

        while (v12 != v13);

        v9 = v24;
        goto LABEL_15;
      }
    }

LABEL_15:
    sub_1A3C52C70(0, &unk_1EB12FF68, 0x1E69DC720);
    v20 = sub_1A524CA14();

    [v9 setTrailingItemGroups_];

    goto LABEL_16;
  }

LABEL_17:
  v21 = MEMORY[0x1E69E7D40];
  (*(**(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for PhotosSearchHomeController + 32)) + 176))([v2 navigationController]);
  LemonadeActiveSearchViewModel.isEditing.setter(1);
  sub_1A3C9CE08(1);
  if (!LemonadeActiveSearchViewModel.isScopedSearch.getter())
  {
    LemonadeSuggestedSearchQueryFetcher.boostBackgroundTasks()();
    v22 = [objc_opt_self() sharedSession];
    sub_1A3FAE988();
  }

  v23 = *(*(v2 + *((*v21 & *v2) + class metadata base offset for PhotosSearchHomeController + 24)) + 80);
  sub_1A4A553A4(v23);
}

void sub_1A4213E78(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  PhotosSearchHomeController.viewIsAppearing(_:)(a3);
}

Swift::Void __swiftcall PhotosSearchHomeController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  LemonadeSuggestedSearchQueryFetcher.resetInitialSuggestions()();
}

void sub_1A4213F60(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  PhotosSearchHomeController.viewDidDisappear(_:)(a3);
}

uint64_t sub_1A4213FB4(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v4 + class metadata base offset for PhotosSearchHomeController);
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - v8;
  (*(**(v1 + *(v10 + 32)) + 352))(v7);
  v11 = (*(*(v4 + class metadata base offset for PhotosSearchHomeController + 8) + 56))(v5);
  result = (*(v6 + 8))(v9, v5);
  if ((v11 & 1) == 0)
  {
    return (*(v2 + *((*v3 & *v2) + class metadata base offset for PhotosSearchHomeController + 48)))(result);
  }

  return result;
}

void sub_1A4214174(void *a1)
{
  v1 = a1;
  sub_1A4213FB4(v1);
}

uint64_t PhotosSearchHomeController.navigate(to:options:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3FBB594;

  return sub_1A4216330(a1);
}

double sub_1A42142BC(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  sub_1A3C7A9FC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A5326940;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A5326950;
  v16[5] = v15;
  v17 = a3;
  v18 = a1;
  sub_1A403AC74(0, 0, v11, &unk_1A5326960, v16);

  return result;
}

uint64_t sub_1A421446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  sub_1A524CC54();
  v4[5] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4214508, v6, v5);
}

uint64_t sub_1A4214508()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1A42145E0;
  v7 = v0[2];

  return sub_1A4216330(v7);
}

uint64_t sub_1A42145E0(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 48);
  if (v3)
  {
    v11 = sub_1A5240B74();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 48), a1, 0);
  }

  _Block_release(*(v6 + 48));
  v12 = *(v9 + 8);

  return v12();
}

double sub_1A4214880()
{
  v1 = MEMORY[0x1E69E7D40];

  sub_1A3C33378(*(v0 + *((*v1 & *v0) + class metadata base offset for PhotosSearchHomeController + 56)), *(v0 + *((*v1 & *v0) + class metadata base offset for PhotosSearchHomeController + 56) + 8));

  return result;
}

id PhotosSearchHomeController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1A4214ABC(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  sub_1A3C33378(*(a1 + *((*v2 & *a1) + class metadata base offset for PhotosSearchHomeController + 56)), *(a1 + *((*v2 & *a1) + class metadata base offset for PhotosSearchHomeController + 56) + 8));

  return result;
}

void sub_1A4214CC4(uint64_t a1)
{
  if (sub_1A4214D94())
  {
    v3 = [v1 navigationController];
    if (v3)
    {
      v4 = v3;
    }

    v5 = [v1 navigationController];
    if (v5)
    {
      v6 = v5;
      [v5 pushViewController:a1 animated:0];
    }
  }
}

BOOL sub_1A4214D94()
{
  sub_1A3C7A9FC(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = LemonadeActiveSearchViewModel.searchText.getter();
  v4 = [v3 string];

  v5 = sub_1A524C674();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  LemonadeActiveSearchViewModel.searchResults.getter(v2);
  v9 = type metadata accessor for PhotosSearchResults(0);
  v10 = (*(*(v9 - 8) + 48))(v2, 1, v9) != 1;
  sub_1A3C33180(v2, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  return v10;
}

uint64_t sub_1A4214F4C()
{
  active = LemonadeActiveSearchViewModel.isEditing.getter();
  LemonadeActiveSearchViewModel.isEditing.setter(0);
  return active & 1;
}

void sub_1A4214FC4(uint64_t a1, unint64_t a2)
{
  sub_1A3C7A9FC(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  sub_1A4217204(a1, &v8 - v5, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  v7 = type metadata accessor for PhotosSearchResults(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1A3C33180(v6, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  }

  else
  {
    sub_1A3DA6000(a2);
    sub_1A4216670(v6);
  }

  LemonadeSuggestedSearchQueryFetcher.updateRecentSearches()();
}

void sub_1A421520C()
{
  v1 = v0;
  v2 = sub_1A4212D2C();
  v3 = (*(*v2 + 464))();

  v4 = [v3 traitCollection];
  v5 = [v3 view];
  if (v5)
  {
    v6 = v5;
    [v5 frame];
    Width = CGRectGetWidth(v10);
    [v6 frame];
    Height = CGRectGetHeight(v11);
    if ([v4 horizontalSizeClass] == 1 || objc_msgSend(v4, sel_verticalSizeClass) == 1)
    {

      if (Height >= Width)
      {
        v9 = 9;
      }

      else
      {
        v9 = 5;
      }
    }

    else
    {

      v9 = 10;
    }

    *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for PhotosSearchHomeController + 64)) = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A42153AC(uint64_t a1)
{
  sub_1A3C7A9FC(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7[-v3 - 8];
  LemonadeActiveSearchViewModel.searchResults.getter(&v7[-v3 - 8]);
  (*(*a1 + 104))(v4);
  LemonadeActiveSearchViewModel.container.getter(v7);
  return (*(*a1 + 128))(v7);
}

uint64_t sub_1A4215508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a1;
  v4[12] = a4;
  sub_1A524CC54();
  v4[13] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A42155A0, v6, v5);
}

uint64_t sub_1A42155A0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    *(v0 + 32) = Strong;
    *(v0 + 80) = Strong;
    sub_1A52415B4();
  }

  **(v0 + 88) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

double sub_1A4215680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A3C7A9FC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1A524CCB4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v14 = sub_1A524CC44();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = v12;

  sub_1A3EA52F4(0, 0, v10, a5, v15);

  return result;
}

uint64_t sub_1A4215830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a1;
  v4[12] = a4;
  sub_1A524CC54();
  v4[13] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A42158C8, v6, v5);
}

uint64_t sub_1A42158C8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    *(v0 + 32) = Strong;
    *(v0 + 80) = Strong;
    sub_1A52415B4();
  }

  **(v0 + 88) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A42159A8()
{
  v0 = sub_1A5243284();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FAE220();
  sub_1A3FADC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E69C23E0], v0);
  sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
  return sub_1A5243874();
}

void *sub_1A4215B00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A4215B40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A4215B20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A4215D3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A4215B40(void *result, int64_t a2, char a3, void *a4)
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

  sub_1A3C7A9FC(0, &qword_1EB135910, sub_1A4217C40, MEMORY[0x1E69E6F90]);
  sub_1A4217C40(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_1A4217C40(0);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

void *sub_1A4215D3C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1A3C7A9FC(0, &qword_1EB1358F8, sub_1A4217BDC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A4217BDC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A4215E9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v33 = a7;
  v30 = a4;
  v31 = a6;
  v13 = MEMORY[0x1E69E7D40];
  v14 = ((*MEMORY[0x1E69E7D40] & *v7) + class metadata base offset for PhotosSearchHomeController);
  v35 = *v14;
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v30 - v15;
  v34 = v14[1];
  v18 = type metadata accessor for _PhotosSearchHomeViewControllerHostedView(0, v16, v34, v17);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v30 - v19;
  *(v8 + v14[8]) = 9;
  *(v8 + *((*v13 & *v8) + class metadata base offset for PhotosSearchHomeController + 72)) = 0;
  *(v8 + *((*v13 & *v8) + class metadata base offset for PhotosSearchHomeController + 16)) = a1;
  *(v8 + *((*v13 & *v8) + class metadata base offset for PhotosSearchHomeController + 24)) = a2;
  type metadata accessor for LemonadeSearchIndexingStatus(0);
  v21 = *(a2 + 80);

  *(v8 + *((*v13 & *v8) + class metadata base offset for PhotosSearchHomeController + 40)) = sub_1A4371C04(v21);
  *(v8 + *((*v13 & *v8) + class metadata base offset for PhotosSearchHomeController + 32)) = a3;
  v22 = (v8 + *((*v13 & *v8) + class metadata base offset for PhotosSearchHomeController + 48));
  v23 = v31;
  *v22 = v30;
  v22[1] = a5;
  v24 = (v8 + *((*v13 & *v8) + class metadata base offset for PhotosSearchHomeController + 56));
  v25 = v33;
  *v24 = v23;
  v24[1] = v25;
  v26 = *(*a3 + 352);

  v27 = sub_1A3C66EE8(v23, v25);
  v28 = v32;
  v26(v27);
  sub_1A3C7AA60(a2, v28, v35, v34, v20);
  return PXPinnedTitleHostingController.init(rootView:)(v20);
}

void sub_1A421624C()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for PhotosSearchHomeController + 64)) = 9;
  *(v0 + *((*v1 & *v0) + class metadata base offset for PhotosSearchHomeController + 72)) = 0;
  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A4216330(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1A524CC54();
  v2[4] = sub_1A524CC44();
  v4 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A42163C8, v4, v3);
}

uint64_t sub_1A42163C8()
{
  v1 = *(v0 + 16);

  if (![v1 additionalAttributes])
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_6:
    LemonadeActiveSearchViewModel.isEditing.setter(1);
    goto LABEL_8;
  }

  v3 = v2;
  LemonadeActiveSearchViewModel.isEditing.setter(0);
  v4 = [v3 searchTerms];
  v5 = sub_1A524CA34();

  if (*(v5 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = [v3 searchText];
  sub_1A524C674();

  v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v8 = sub_1A524C634();

  v9 = [v7 initWithString_];

  LemonadeActiveSearchViewModel.searchText.setter(v9);
  swift_unknownObjectRelease();
LABEL_8:
  v10 = *(v0 + 8);

  return v10(1);
}

uint64_t sub_1A4216670(uint64_t a1)
{
  v2 = type metadata accessor for PhotosSearchResults(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4216710(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  sub_1A3C7A9FC(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 64);
  v11 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v8 == v13)
      {
        v22 = *(v7 + 48);

        return v22(a1, v8, v6);
      }

      else
      {
        v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 8) & ~v11);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v9 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_1A42169C0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_1A3C7A9FC(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v9 + 64);
  v13 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) + *(v11 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 >= 4)
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v16)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
LABEL_14:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

LABEL_51:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v10 == v15)
  {
    v23 = *(v9 + 56);

    v23(a1, a2, v10, v8);
  }

  else
  {
    v24 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v14 & 0x80000000) != 0)
    {
      v26 = *(v11 + 56);

      v26((v24 + v13 + 8) & ~v13, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v25 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v25 = (a2 - 1);
      }

      *v24 = v25;
    }
  }
}

uint64_t sub_1A4216D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A4216D48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A4216DA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1A4216E48()
{
  result = qword_1EB1358B8;
  if (!qword_1EB1358B8)
  {
    sub_1A4216EEC(255, &qword_1EB1358C0, sub_1A4212064, &type metadata for PhotosSearchHomeViewAnalyticsModifier);
    sub_1A4216F50();
    sub_1A4217000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1358B8);
  }

  return result;
}

void sub_1A4216EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4216F50()
{
  result = qword_1EB1358C8;
  if (!qword_1EB1358C8)
  {
    sub_1A4212064(255);
    sub_1A3C7AB78(&qword_1EB1358D0, sub_1A4211EC0, MEMORY[0x1E69C1E90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1358C8);
  }

  return result;
}

unint64_t sub_1A4217000()
{
  result = qword_1EB1B0DA0[0];
  if (!qword_1EB1B0DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B0DA0);
  }

  return result;
}

void sub_1A4217080(uint64_t a1)
{
  if (!qword_1EB1358D8)
  {
    sub_1A42170E8(255);
    type metadata accessor for LemonadeAnalyticsViewTimeTracker(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1358D8);
    }
  }
}

void sub_1A42170E8(uint64_t a1)
{
  if (!qword_1EB1358E0)
  {
    sub_1A4217000();
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1358E0);
    }
  }
}

uint64_t sub_1A4217144()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A421446C(v2, v3, v5, v4);
}

uint64_t sub_1A4217204(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C7A9FC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A4217284(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A42172D8(uint64_t a1)
{
  if (!qword_1EB1358E8)
  {
    sub_1A52406B4();
    sub_1A3C7AB78(&qword_1EB13FA70, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
    v1 = sub_1A5240C44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1358E8);
    }
  }
}

void sub_1A421736C()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  v3 = sub_1A4214D94();
  v4 = [v1 navigationController];
  v5 = [v4 topViewController];

  if (v5)
  {

    if (v3 == (v5 != v1))
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  if (sub_1A4214D94())
  {
    v6 = sub_1A4212F6C();
    if (v6)
    {
      (*(*v6 + 200))(0);
    }

    v7 = [v1 navigationController];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1A4212D2C();
      v10 = (*(*v9 + 464))();

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v13 = v2 + class metadata base offset for PhotosSearchHomeController;
      v12[2] = *(v2 + class metadata base offset for PhotosSearchHomeController);
      v12[3] = *(v13 + 8);
      v12[4] = v11;
      aBlock[4] = sub_1A42177F4;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_126;
      v14 = _Block_copy(aBlock);

      [v8 px:v10 pushViewController:0 animated:v14 completion:?];
      _Block_release(v14);
    }
  }

  else
  {
    v15 = [v1 navigationController];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 popToRootViewControllerAnimated_];
    }
  }
}

double (*sub_1A421764C())()
{
  v1 = *MEMORY[0x1E69E7D40] & **(v0 + 16);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  v4 = v1 + class metadata base offset for PhotosSearchHomeController;
  v3[2] = *(v1 + class metadata base offset for PhotosSearchHomeController);
  v3[3] = *(v4 + 8);
  v3[4] = v2;
  return sub_1A4217718;
}

uint64_t sub_1A4217754(uint64_t a1)
{
  v4 = *(v1 + 48);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A4215830(a1, v5, v6, v4);
}

uint64_t sub_1A42177F4()
{
  v1 = *(v0 + 32);
  sub_1A524CC54();
  v3[1] = *(v0 + 16);
  v4 = v1;
  return sub_1A3C67884(sub_1A4217874, v3, "PhotosUICore/PhotosSearchHomeController.swift", 45, 2u, 284);
}

double sub_1A4217874()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1A4212F6C();

    if (v3)
    {
      (*(*v3 + 200))(2);
    }
  }

  return result;
}

double sub_1A4217914()
{
  v1 = *(v0 + 16);
  v2 = sub_1A4212D2C();
  v4[2] = v1;
  (*(*v2 + 544))(sub_1A4217B80, v4);

  return result;
}

double (*sub_1A4217998())()
{
  v1 = *MEMORY[0x1E69E7D40] & **(v0 + 16);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  v4 = v1 + class metadata base offset for PhotosSearchHomeController;
  v3[2] = *(v1 + class metadata base offset for PhotosSearchHomeController);
  v3[3] = *(v4 + 8);
  v3[4] = v2;
  return sub_1A4217A64;
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}