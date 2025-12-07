void sub_1A3D4B520(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__publishProgressController;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__publishProgressController);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x708))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &unk_1EB12B5E0, off_1E771CF80);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

void sub_1A3D4B6BC()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x700))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D4B74C(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x700))(KeyPath);

  v5 = *(v3 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID);
  a2[1] = v5;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3D4B83C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID);
  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    v13 = a2;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x708))(v10);
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

id sub_1A3D4B9A8()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x700))();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer);

  return v1;
}

id sub_1A3D4BA34@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x700))(KeyPath);

  v5 = *(v3 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer);
  *a2 = v5;

  return v5;
}

void sub_1A3D4BB0C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer;
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer);
  sub_1A3C52C70(0, &qword_1EB12B5D8, 0x1E697B678);
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x708))(v10);
  }
}

void *sub_1A3D4BE10()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x178);
  v3 = (v2)();
  if (!v3 || (v3, KeyPath = swift_getKeyPath(), (*((*v1 & *v0) + 0x700))(KeyPath), v5 = , *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID + 8)))
  {
    v2 = *((*v1 & *v0) + 0x250);
    v6 = (v2)();
    if (v6 >> 62)
    {
LABEL_40:
      v7 = sub_1A524E2B4();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 <= 0)
    {
      v9 = (*((*v1 & *v0) + 0x280))(v8);
      v10 = v9 >> 62 ? sub_1A524E2B4() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v10 < 1)
      {
        v27 = (*((*v1 & *v0) + 0x208))(v8);
        if (v27 >> 62)
        {
          v0 = sub_1A524E2B4();
        }

        else
        {
          v0 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

LABEL_35:

        return v0;
      }
    }

    v11 = (v2)(v8);
    if (v11 >> 62)
    {
      v2 = v11;
      v12 = sub_1A524E2B4();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = (*((*v1 & *v0) + 0x280))(v13);
    if (v14 >> 62)
    {
      v15 = sub_1A524E2B4();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = __OFADD__(v12, v15);
    v0 = (v12 + v15);
    if (!v16)
    {
      return v0;
    }

    __break(1u);
  }

  result = (v2)(v5);
  if (result)
  {
    v18 = result;
    v19 = [result inputItems];

    v20 = sub_1A524CA34();
    v21 = sub_1A3D4C284(v20);

    if (v21 >> 62)
    {
      v1 = sub_1A524E2B4();
    }

    else
    {
      v1 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = 0;
    v0 = 0;
    while (v1 != v2)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1A59097F0](v2, v21);
      }

      else
      {
        if (v2 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v22 = *(v21 + 8 * v2 + 32);
      }

      v23 = v22;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = [v22 attachments];
      if (!result)
      {
        __break(1u);
        goto LABEL_47;
      }

      v24 = result;
      sub_1A3C52C70(0, &qword_1EB120AD0, 0x1E696ACA0);
      v25 = sub_1A524CA34();

      if (v25 >> 62)
      {
        v26 = sub_1A524E2B4();
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v2;
      v16 = __OFADD__(v0, v26);
      v0 = (v0 + v26);
      if (v16)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_35;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1A3D4C284(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v4 = a1 + 32;
    do
    {
      sub_1A3C2F0BC(v4, &v5);
      sub_1A3C52C70(0, &unk_1EB12B5F0, 0x1E696ABE0);
      swift_dynamicCast();
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

void sub_1A3D4C37C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))();
  if (v2 && (v2, KeyPath = swift_getKeyPath(), (*((*v1 & *v0) + 0x700))(KeyPath), , !*(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID + 8)))
  {

    sub_1A3D4E7F0();
  }

  else
  {
    v4 = (*((*v1 & *v0) + 0x250))();
    if (v4 >> 62)
    {
      v5 = sub_1A524E2B4();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5 <= 0 && ((v7 = (*((*v1 & *v0) + 0x280))(v6), v7 >> 62) ? (v8 = sub_1A524E2B4()) : (v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v8 < 1))
    {

      sub_1A3D57B48();
    }

    else
    {

      sub_1A3D5470C();
    }
  }
}

void sub_1A3D4C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a4;
  v10[3] = a5;
  v10[1] = a3;
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3C56D80();
  (*(v6 + 16))(v8, v9, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D4C940(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(void, void, __n128), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a3;
  v43 = a4;
  v11 = sub_1A5246F24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - v16;
  if (!a1)
  {
    v43 = a6;
    v30 = sub_1A3C56D80();
    (*(v12 + 16))(v14, v30, v11);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v18 = a1;
  v19 = sub_1A3C56D80();
  (*(v12 + 16))(v17, v19, v11);
  v20 = v18;
  v21 = sub_1A5246F04();
  v22 = sub_1A524D264();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v23 = 136446210;
    v24 = [v20 uuid];
    v41 = v11;
    v25 = v24;
    v26 = sub_1A524C674();
    v39[3] = v22;
    v27 = v26;
    v29 = v28;

    sub_1A3C2EF94(v27, v29, aBlock);
  }

  v31 = (*(v12 + 8))(v17, v11);
  v32 = v42;
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x208))(v31);
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v33 = sub_1A524CA14();

  v34 = swift_allocObject();
  v34[2] = v32;
  v34[3] = v20;
  v35 = v43;
  v34[4] = v43;
  v34[5] = a5;
  v34[6] = a6;
  aBlock[4] = sub_1A3D60844;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D59380;
  aBlock[3] = &block_descriptor_202;
  v36 = _Block_copy(aBlock);
  v37 = v20;
  v38 = v32;
  swift_unknownObjectRetain();
  sub_1A3C66EE8(a5, a6);

  PXSharedAlbumsValidateSharedAlbumAddAssets(v37, v33, v35, v36);
  _Block_release(v36);
}

void sub_1A3D4CED8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1D8))();
  v9 = v8;
  v26 = MEMORY[0x1E69E7CC0];
  if (v8 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v22 = a1;
    v23 = a2;
    v11 = 0;
    v24 = a3;
    a2 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1A59097F0](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      a1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 uuid];
      v15 = sub_1A524C674();
      v17 = v16;

      if (v15 == (*((*MEMORY[0x1E69E7D40] & *v4) + 0x370))() && v17 == v18)
      {
      }

      else
      {
        a3 = sub_1A524EAB4();

        if ((a3 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      sub_1A524E514();
      a3 = *(v26 + 16);
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
LABEL_6:
      ++v11;
      if (a1 == i)
      {
        v20 = v26;
        a2 = v23;
        a3 = v24;
        a1 = v22;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_23:

  if ((v20 & 0x8000000000000000) == 0 && (v20 & 0x4000000000000000) == 0)
  {
    if (*(v20 + 16))
    {
      goto LABEL_26;
    }

LABEL_34:

    __break(1u);
    goto LABEL_35;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_34;
  }

LABEL_26:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1A59097F0](0, v20);
    goto LABEL_29;
  }

  if (!*(v20 + 16))
  {
LABEL_35:
    __break(1u);
    return;
  }

  v21 = *(v20 + 32);
LABEL_29:
  v25 = v21;

  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x668))(v25, a1, a2, a3);
}

void sub_1A3D4D1F4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x178))();
  if ((!v10 || (v10, KeyPath = swift_getKeyPath(), (*((*v9 & *v4) + 0x700))(KeyPath), v12 = , *(v4 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID + 8))) && ((v13 = (*((*v9 & *v4) + 0x250))(), v13 >> 62) ? (v14 = sub_1A524E2B4()) : (v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10)), (v12 = , v14 <= 0) && ((v15 = (*((*v9 & *v4) + 0x280))(v12), v15 >> 62) ? (v16 = sub_1A524E2B4()) : (v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)), v12 = , v16 < 1)))
  {
    (*((*v9 & *v4) + 0x208))(v12);
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v17 = sub_1A524CA14();

    v22 = swift_allocObject();
    v22[2] = v4;
    v22[3] = a1;
    v22[4] = a2;
    v22[5] = a3;
    v22[6] = a4;
    v28 = sub_1A3D5DD84;
    v29 = v22;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1A3D59380;
    v27 = &block_descriptor_58;
    v19 = _Block_copy(&v24);
    v23 = v4;
    v21 = a1;
    sub_1A3C66EE8(a3, a4);
    swift_unknownObjectRetain();
  }

  else
  {
    (*((*v9 & *v4) + 0x250))(v12);
    sub_1A3C52C70(0, &qword_1EB12B540, 0x1E69BE820);
    v17 = sub_1A524CA14();

    v18 = swift_allocObject();
    v18[2] = v4;
    v18[3] = a1;
    v18[4] = a3;
    v18[5] = a4;
    v28 = sub_1A3D5DD88;
    v29 = v18;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1A3D59380;
    v27 = &block_descriptor_64;
    v19 = _Block_copy(&v24);
    v20 = v4;
    v21 = a1;
    sub_1A3C66EE8(a3, a4);
  }

  PXSharedAlbumsValidateSharedAlbumAddAssets(v21, v17, a2, v19);
  _Block_release(v19);
}

uint64_t sub_1A3D4D618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_1A3D4D6DC;

  return MEMORY[0x1EEE68118](a5, a6, a7);
}

uint64_t sub_1A3D4D6DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1A3D4D8A0;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1A3D4D804;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A3D4D804()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  v2(v3, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3D4D8A0()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3D4D930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1A3C68AC0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  sub_1A3D600D0(a3, v25 - v11, &qword_1EB12B270, v9);
  v13 = sub_1A524CCB4();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_1A3C68644(v12, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1A524CCA4();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A524CBC4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A524C744() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1A3C68644(a3, &qword_1EB12B270, MEMORY[0x1E69E85F0]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A3C68644(a3, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t *sub_1A3D4DC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v99 = *MEMORY[0x1E69E9840];
  v93 = sub_1A5246F24();
  v95 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v85 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v82 - v5;
  v92 = sub_1A5240CB4();
  v6 = *(v92 - 1);
  MEMORY[0x1EEE9AC00](v92);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1A5240E64();
  v96 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v82 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v82 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v82 - v18;
  v20 = sub_1A52411C4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v91) = sub_1A5240D24();
  sub_1A52411B4();
  v24 = sub_1A5241164();
  v26 = v25;
  (*(v21 + 8))(v23, v20);
  v97 = v24;
  v98 = v26;
  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  v88 = a1;
  v27 = sub_1A5240CC4();
  MEMORY[0x1A5907B60](v27);

  v28 = v97;
  v29 = v98;
  v30 = NSTemporaryDirectory();
  sub_1A524C674();

  sub_1A5240D14();
  v31 = v96;

  v32 = *(v6 + 104);
  v33 = MEMORY[0x1E6968F58];
  v97 = v28;
  v98 = v29;
  v34 = v92;
  v35 = v93;
  if ((v91 & 1) == 0)
  {
    v33 = MEMORY[0x1E6968F68];
  }

  v32(v8, *v33, v92);
  sub_1A3D5F9DC();
  sub_1A5240E44();
  v36 = v8;
  v37 = v86;
  (*(v6 + 8))(v36, v34);
  v38 = v16;
  v39 = v87;
  v92 = v31[1];
  (v92)(v38, v87);
  v40 = v95;

  v91 = objc_opt_self();
  v41 = [v91 defaultManager];
  sub_1A5240E14();
  v42 = sub_1A524C634();

  v43 = [v41 fileExistsAtPath_];

  v44 = v94;
  v90 = v19;
  v82 = v31 + 1;
  if (v43)
  {
    v45 = [v91 defaultManager];
    v46 = sub_1A5240D44();
    v97 = 0;
    v47 = [v45 removeItemAtURL:v46 error:&v97];

    v48 = v97;
    if (!v47)
    {
      v57 = v35;
      v58 = v88;
      goto LABEL_13;
    }

    v49 = v97;
    v44 = v94;
  }

  v50 = sub_1A3C56D80();
  (*(v40 + 16))(v44, v50, v35);
  (v31)[2](v37, v19, v39);
  v51 = sub_1A5246F04();
  v52 = sub_1A524D264();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v53 = 136446210;
    sub_1A3D5FE04(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v54 = sub_1A524EA44();
    v56 = v55;
    (v92)(v37, v39);
    sub_1A3C2EF94(v54, v56, &v97);
  }

  (v92)(v37, v39);
  v57 = v35;
  (*(v40 + 8))(v44, v35);
  v58 = v88;
  v59 = [v91 defaultManager];
  v60 = sub_1A5240D44();
  v19 = v90;
  v61 = sub_1A5240D44();
  v97 = 0;
  v62 = [v59 copyItemAtURL:v60 toURL:v61 error:&v97];

  v48 = v97;
  v31 = v96;
  if (v62)
  {
    v94 = v97;
    v63 = v89;
    (*(v96 + 4))(v89, v19, v39);
    (v31[7])(v63, 0, 1, v39);
    v64 = v94;

    return v64;
  }

LABEL_13:
  v94 = v48;
  v66 = v48;
  v67 = sub_1A5240B84();

  swift_willThrow();
  v68 = sub_1A3C56D80();
  v69 = v85;
  (*(v40 + 16))(v85, v68, v57);
  v70 = v31[2];
  v71 = v83;
  v70(v83, v58, v39);
  v72 = v84;
  v70(v84, v19, v39);
  v73 = v67;
  v74 = sub_1A5246F04();
  v75 = sub_1A524D244();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = v71;
    v77 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v97 = v96;
    *v77 = 136315650;
    sub_1A3D5FE04(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    LODWORD(v91) = v75;
    v78 = sub_1A524EA44();
    v80 = v79;
    (v92)(v76, v39);
    sub_1A3C2EF94(v78, v80, &v97);
  }

  v81 = v92;
  (v92)(v72, v39);
  v81(v71, v39);
  (*(v40 + 8))(v69, v93);
  v81(v19, v39);
  return (v31[7])(v89, 1, 1, v39);
}

void sub_1A3D4E7F0()
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BEF4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel_hasPreparedExtensionSources] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel_hasPreparedExtensionSources] = 1;
    v13 = swift_allocObject();
    v21 = v2;
    v14 = v13;
    swift_unknownObjectWeakInit();
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v20 = v5;
    (*(v10 + 104))(v12, *MEMORY[0x1E69E7F88], v9);
    v19 = v6;
    v15 = sub_1A524D4C4();
    (*(v10 + 8))(v12, v9);
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    *(v16 + 24) = v14;
    aBlock[4] = sub_1A3D5FF10;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_209;
    v17 = _Block_copy(aBlock);
    v18 = v0;

    sub_1A524BF14();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1A3D5FE04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v8, v4, v17);
    _Block_release(v17);

    (*(v21 + 8))(v4, v1);
    (*(v19 + 8))(v8, v20);
  }
}

void sub_1A3D4EBF4(void *a1, uint64_t a2)
{
  v151 = a2;
  v124 = sub_1A524BEE4();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v121 = v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1A524BF64();
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v119 = v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1A524BFC4();
  v125 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v161 = v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v139 = v118 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v134 = v118 - v13;
  v14 = sub_1A5246F24();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v135 = v118 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v143 = v118 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v150 = v118 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v138 = v118 - v25;
  v27.n128_f64[0] = MEMORY[0x1EEE9AC00](v26);
  v29 = v118 - v28;
  v30 = *MEMORY[0x1E69E7D40] & *a1;
  v31 = *(v30 + 0x498);
  v158 = a1;
  v133 = v30 + 1176;
  v132 = v31;
  v31(1, v27);
  v32 = sub_1A3C56D80();
  v33 = v15;
  v34 = *(v15 + 16);
  v171 = v32;
  v179 = v14;
  v170 = v15 + 16;
  v169 = v34;
  (v34)(v29);
  v35 = sub_1A5246F04();
  v36 = sub_1A524D264();
  v37 = os_log_type_enabled(v35, v36);
  v167 = v17;
  if (v37)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1A3C1C000, v35, v36, "Computing media sources, previews and display media type", v38, 2u);
    v39 = v38;
    v17 = v167;
    MEMORY[0x1A590EEC0](v39, -1, -1);
  }

  v40 = *(v33 + 8);
  v172 = v33 + 8;
  v168 = v40;
  v40(v29, v179);
  sub_1A524BFA4();
  v41 = MEMORY[0x1E69E7CC0];
  v187 = MEMORY[0x1E69E7CC0];
  v42 = swift_allocObject();
  v174 = v42;
  *(v42 + 16) = v41;
  v118[1] = v42 + 16;
  v160 = swift_allocObject();
  *(v160 + 16) = v41;
  sub_1A5246CD4();
  v175 = sub_1A5246BF4();
  v176 = v43;
  v44 = *(v6 + 8);
  v44(v8, v5);
  sub_1A5246D04();
  v45 = sub_1A5246BF4();
  v144 = v46;
  v44(v8, v5);
  v47 = [objc_opt_self() livePhotoBundleType];
  sub_1A5246C44();

  v155 = sub_1A5246BF4();
  v156 = v48;
  v44(v8, v5);
  sub_1A5246CC4();
  v149 = sub_1A5246BF4();
  v154 = v49;
  v44(v8, v5);
  v50 = dispatch_group_create();
  v51 = (*((*MEMORY[0x1E69E7D40] & *v158) + 0x178))();
  if (!v51)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    sub_1A524E6E4();
    __break(1u);
    return;
  }

  v52 = v51;
  v53 = [v51 inputItems];

  v54 = sub_1A524CA34();
  v55 = sub_1A3D4C284(v54);

  v126 = v55;
  if (v55 >> 62)
  {
    goto LABEL_84;
  }

  v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v58 = v174;
  v157 = v50;
  v59 = 0;
  if (v57)
  {
    v146 = 0;
    v147 = 0;
    v153 = 0;
    v131 = v126 & 0xC000000000000001;
    v130 = v126 & 0xFFFFFFFFFFFFFF8;
    v129 = v126 + 32;
    v159 = &v183;
    v165 = (v125 + 8);
    v152 = MEMORY[0x1E69E7CC0];
    *&v56 = 134217984;
    v127 = v56;
    *&v56 = 136446466;
    v145 = v56;
    *&v56 = 136315138;
    v141 = v56;
    *&v56 = 136446210;
    v140 = v56;
    v142 = v45;
    v128 = v57;
    while (1)
    {
      if (v131)
      {
        v60 = MEMORY[0x1A59097F0](v59, v126);
        v61 = __OFADD__(v59, 1);
        v62 = v59 + 1;
        if (v61)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v59 >= *(v130 + 16))
        {
          goto LABEL_82;
        }

        v60 = *(v129 + 8 * v59);
        v61 = __OFADD__(v59, 1);
        v62 = v59 + 1;
        if (v61)
        {
          goto LABEL_81;
        }
      }

      v137 = v60;
      v63 = [v60 attachments];
      if (!v63)
      {
        break;
      }

      v64 = v63;
      sub_1A3C52C70(0, &qword_1EB120AD0, 0x1E696ACA0);
      v65 = sub_1A524CA34();

      if (v65 >> 62)
      {
        v66 = sub_1A524E2B4();
      }

      else
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v136 = v62;
      if (v66)
      {
        v67 = 0;
        v164 = v65 & 0xC000000000000001;
        v148 = v65 & 0xFFFFFFFFFFFFFF8;
        v163 = v65;
        v162 = v66;
        do
        {
          if (v164)
          {
            v68 = MEMORY[0x1A59097F0](v67, v65);
          }

          else
          {
            if (v67 >= *(v148 + 16))
            {
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              v57 = sub_1A524E2B4();
              goto LABEL_6;
            }

            v68 = *(v65 + 8 * v67 + 32);
          }

          v180 = v68;
          if (__OFADD__(v67, 1))
          {
            __break(1u);
            goto LABEL_74;
          }

          v69 = v17;
          v70 = v50;
          v177 = v67 + 1;
          v178 = [objc_allocWithZone(MEMORY[0x1E69BE820]) init];
          aBlock = 123;
          v182 = 0xE100000000000000;
          v71 = v180;
          v72 = [v180 registeredTypeIdentifiers];
          v73 = MEMORY[0x1E69E6158];
          v74 = sub_1A524CA34();

          v75 = MEMORY[0x1A5907DB0](v74, v73);
          v77 = v76;

          MEMORY[0x1A5907B60](v75, v77);

          MEMORY[0x1A5907B60](125, 0xE100000000000000);
          v78 = aBlock;
          v79 = v182;
          v80 = sub_1A524C634();
          LODWORD(v77) = [v71 hasItemConformingToTypeIdentifier_];

          v173 = v78;
          if (v77)
          {
            dispatch_group_enter(v70);
            v169(v150, v171, v179);
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v81 = sub_1A524C634();
          v82 = [v71 hasItemConformingToTypeIdentifier_];

          if (v82)
          {
            dispatch_group_enter(v70);
            v169(v143, v171, v179);
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v83 = sub_1A524C634();
          v84 = [v71 &:v83 OBJC:? LABEL:? PROTOCOL:? :? :?PXAssetCollectionActionPerformerDelegate + 7];

          if (v84)
          {
            dispatch_group_enter(v70);
            sub_1A524C634();
            v85 = swift_allocObject();
            v86 = v174;
            v85[2] = v178;
            v85[3] = v86;
            v87 = v173;
            v85[4] = v160;
            v85[5] = v87;
            v85[6] = v79;
            v85[7] = v70;
            v185 = sub_1A3D5FF4C;
            v186 = v85;
            aBlock = MEMORY[0x1E69E9820];
            v182 = 1107296256;
            v183 = sub_1A3D52710;
            v184 = &block_descriptor_227;
            _Block_copy(&aBlock);
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v92 = sub_1A524C634();
          v45 = [v71 &:v92 OBJC:? LABEL:? PROTOCOL:? :? :?PXAssetCollectionActionPerformerDelegate + 7];

          v50 = v70;
          v17 = v69;
          v93 = v178;
          if (v45)
          {
            dispatch_group_enter(v50);
            v169(v135, v171, v179);
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v88 = v161;
          sub_1A524BF74();
          sub_1A524D3C4();
          (*v165)(v88, v166);
          if (![v93 mediaType])
          {
            v169(v17, v171, v179);
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v89 = [v93 mediaType];
          if (v89 > 1)
          {
            if (v89 == 2)
            {

              v61 = __OFADD__(v153++, 1);
              if (v61)
              {
                goto LABEL_80;
              }
            }

            else
            {
              if (v89 != 3)
              {
                goto LABEL_87;
              }

              v61 = __OFADD__(v153++, 1);
              if (v61)
              {
                goto LABEL_77;
              }
            }
          }

          else if (v89)
          {
            if (v89 != 1)
            {
              goto LABEL_87;
            }

            v61 = __OFADD__(v147++, 1);
            if (v61)
            {
              goto LABEL_78;
            }
          }

          else
          {

            if (__OFADD__(v146, 1))
            {
              goto LABEL_79;
            }

            ++v146;
          }

          v90 = v93;
          MEMORY[0x1A5907D70]();
          v65 = v163;
          v91 = v177;
          if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v45 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1A524CA74();
          }

          sub_1A524CAE4();

          v152 = v187;
          ++v67;
        }

        while (v91 != v162);
      }

      sub_1A524BFA4();
      v94 = sub_1A524BF94();
      v95 = sub_1A524BF94();
      v96 = v94 - v95;
      if (v94 < v95)
      {
        goto LABEL_83;
      }

      v169(v138, v171, v179);
      v97 = sub_1A5246F04();
      v98 = sub_1A524D264();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = v96 / 1000000000.0;
        v100 = swift_slowAlloc();
        *v100 = v127;
        *(v100 + 4) = v99;
        _os_log_impl(&dword_1A3C1C000, v97, v98, "Shared Album action prepared extension sources in: %f seconds", v100, 0xCu);
        MEMORY[0x1A590EEC0](v100, -1, -1);
      }

      v168(v138, v179);
      v132(0);

      (*v165)(v139, v166);
      v59 = v136;
      if (v136 == v128)
      {
        v101 = v146 > 0;
        v103 = MEMORY[0x1E69E7CC0];
        v57 = v153;
        v59 = v147;
        v58 = v174;
        v102 = v152;
        goto LABEL_59;
      }
    }

    __break(1u);
    goto LABEL_86;
  }

  v101 = 0;
  v102 = MEMORY[0x1E69E7CC0];
  v103 = MEMORY[0x1E69E7CC0];
LABEL_59:

  v104 = v57 == v59 || v101;
  v105 = 1;
  if (v57 < 1)
  {
    v105 = 2;
  }

  if (v104)
  {
    v106 = 0;
  }

  else
  {
    v106 = v105;
  }

  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v107 = sub_1A524D474();
  v108 = swift_allocObject();
  v108[2] = v151;
  v108[3] = v102;
  v109 = v160;
  v108[4] = v58;
  v108[5] = v109;
  v108[6] = v106;
  v185 = sub_1A3D5FFE4;
  v186 = v108;
  aBlock = MEMORY[0x1E69E9820];
  v182 = 1107296256;
  v183 = sub_1A3C2E0D0;
  v184 = &block_descriptor_245;
  v110 = _Block_copy(&aBlock);

  v111 = v119;
  sub_1A524BF14();
  aBlock = v103;
  sub_1A3D5FE04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v112 = v121;
  v113 = v124;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v111, v112, v110);
  _Block_release(v110);

  (*(v123 + 8))(v112, v113);
  (*(v120 + 8))(v111, v122);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v115 = Strong;
    swift_getKeyPath();
    (*((*MEMORY[0x1E69E7D40] & *v115) + 0x700))();

    v116 = *(v115 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer);

    v117 = [v116 analysisPolicy];
    v50 = v157;
    if (v117 != 2)
    {
      (*(v125 + 8))(v134, v166);

      return;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_74:

    (*(v125 + 8))(v134, v166);
  }

  else
  {

    (*(v125 + 8))(v134, v166);
  }
}

void sub_1A3D50A10(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, NSObject *a10)
{
  v78 = a7;
  v79 = a8;
  v81 = a5;
  v82 = a6;
  v80 = a4;
  v83 = a2;
  v86 = a10;
  v11 = sub_1A5246F24();
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v71 - v15;
  v17 = MEMORY[0x1E6968FB0];
  sub_1A3C68AC0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v84 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v71 - v21;
  v23 = sub_1A5240E64();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v77 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v85 = v71 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v71 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v71 - v31;
  v34 = v33;
  sub_1A3D600D0(a1, v22, &unk_1EB12B250, v17);
  v35 = *(v34 + 48);
  if (v35(v22, 1, v23) == 1)
  {
    sub_1A3C68644(v22, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    v36 = sub_1A3C56D80();
    (*(v87 + 16))(v13, v36, v88);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v83 = v35;
  v37 = *(v34 + 32);
  v79 = v34 + 32;
  v76 = v37;
  v37(v32, v22, v23);
  v38 = sub_1A3C56D80();
  (*(v87 + 16))(v16, v38, v88);
  v39 = *(v34 + 16);
  v74 = v34 + 16;
  v73 = v39;
  v39(v29, v32, v23);
  v40 = sub_1A5246F04();
  v41 = sub_1A524D264();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v71[1] = v42;
    v72 = swift_slowAlloc();
    v89[0] = v72;
    *v42 = 136446210;
    sub_1A3D5FE04(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v43 = sub_1A524EA44();
    v75 = v32;
    v44 = v23;
    v45 = v34;
    v47 = v46;
    (*(v45 + 8))(v29, v44);
    sub_1A3C2EF94(v43, v47, v89);
  }

  v48 = v29;
  v49 = *(v34 + 8);
  v49(v48, v23);
  (*(v87 + 8))(v16, v88);
  v50 = v84;
  sub_1A3D4DC78(v32, v84);
  if (v83(v50, 1, v23) == 1)
  {
    v49(v32, v23);
    sub_1A3C68644(v50, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v76(v85, v50, v23);
    v51 = sub_1A5240D44();
    v52 = v80;
    [v80 setMediaURL_];

    [v52 setMediaType_];
    v53 = sub_1A5240D44();
    v54 = [objc_opt_self() collectionShareAssetSourceWithFileURL:v53 resourceType:2];

    v55 = v81;
    swift_beginAccess();
    v56 = v54;
    MEMORY[0x1A5907D70]();
    if (*((*(v55 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v55 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    swift_endAccess();
    v57 = v82;
    swift_beginAccess();
    v58 = *(v57 + 16);
    if (v58 >> 62)
    {
      v59 = sub_1A524E2B4();
    }

    else
    {
      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v59 >= *sub_1A45A9D98())
    {
      v60 = v56;
    }

    else
    {
      v75 = v32;
      v60 = dispatch_semaphore_create(0);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v62 = Strong;
        v63 = v85;
        v87 = sub_1A5240E14();
        v88 = v49;
        v84 = v64;
        v65 = v77;
        v73(v77, v63, v23);
        v66 = (*(v34 + 80) + 24) & ~*(v34 + 80);
        v67 = (v24 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
        v68 = swift_allocObject();
        *(v68 + 16) = v82;
        v69 = v65;
        v49 = v88;
        v76((v68 + v66), v69, v23);
        *(v68 + v67) = v60;

        v70 = v60;
        sub_1A3D5DFDC(v87, v84, v68);
      }

      sub_1A524D704();

      v32 = v75;
    }

    v49(v85, v23);
    v49(v32, v23);
  }

  dispatch_group_leave(v86);
}

uint64_t sub_1A3D513B4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5246F24();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v17 = a1;
    MEMORY[0x1A5907D70]();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    swift_endAccess();
  }

  else
  {
    v18 = sub_1A3C56D80();
    (*(v14 + 16))(v16, v18, v13);
    (*(v10 + 16))(v12, a4, v9);
    v19 = a2;
    v20 = sub_1A5246F04();
    v21 = sub_1A524D244();

    if (os_log_type_enabled(v20, v21))
    {
      v29 = v21;
      v30 = v20;
      v22 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v22 = 136315394;
      v23 = sub_1A5240E14();
      v25 = v24;
      (*(v10 + 8))(v12, v9);
      sub_1A3C2EF94(v23, v25, v32);
    }

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
  }

  return sub_1A524D714();
}

uint64_t sub_1A3D5176C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1A3C68AC0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1A5240DE4();
    v10 = sub_1A5240E64();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1A5240E64();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_1A3C68644(v8, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
}

void sub_1A3D518F0(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, dispatch_group_t group)
{
  v77 = a8;
  v70 = a5;
  v71 = a7;
  v72 = a4;
  v73 = a6;
  v75 = a2;
  v78 = sub_1A5246F24();
  v10 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  v16 = MEMORY[0x1E6968FB0];
  sub_1A3C68AC0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v76 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v22 = sub_1A5240E64();
  MEMORY[0x1EEE9AC00](v22);
  v74 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v66 - v28;
  v30 = a1;
  v32 = v31;
  v34 = v33;
  sub_1A3D600D0(v30, v21, &unk_1EB12B250, v16);
  v35 = v32[6];
  if (v35(v21, 1, v34) == 1)
  {
    sub_1A3C68644(v21, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    v36 = sub_1A3C56D80();
    (*(v10 + 16))(v12, v36, v78);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v75 = v35;
  v68 = v32[4];
  v69 = v32 + 4;
  v68(v29, v21, v34);
  v37 = sub_1A3C56D80();
  (*(v10 + 16))(v15, v37, v78);
  v38 = v32[2];
  v77 = v29;
  v38(v26, v29, v34);
  v39 = sub_1A5246F04();
  v40 = sub_1A524D264();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v71 = v32;
    v42 = v41;
    v66 = v41;
    v67 = swift_slowAlloc();
    v79[0] = v67;
    *v42 = 136446210;
    sub_1A3D5FE04(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v43 = sub_1A524EA44();
    v44 = v34;
    v46 = v45;
    (*(v71 + 8))(v26, v44);
    sub_1A3C2EF94(v43, v46, v79);
  }

  v47 = v32[1];
  v47(v26, v34);
  (*(v10 + 8))(v15, v78);
  v48 = v76;
  v49 = v77;
  sub_1A3D4DC78(v77, v76);
  if (v75(v48, 1, v34) == 1)
  {
    v47(v49, v34);
    sub_1A3C68644(v48, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
LABEL_21:
    dispatch_group_leave(group);
    return;
  }

  v50 = v74;
  v68(v74, v48, v34);
  v51 = objc_allocWithZone(MEMORY[0x1E69C0918]);
  v52 = sub_1A5240D44();
  v53 = [v51 initWithBundleAtURL_];

  v55 = v72;
  v54 = v73;
  if (v53)
  {
    v78 = v47;
    [v72 setVideoComplement_];
    [v55 setMediaType_];
    v56 = [objc_opt_self() collectionShareAssetSourceWithVideoComplementBundle_];
    v57 = v70;
    swift_beginAccess();
    v58 = v56;
    MEMORY[0x1A5907D70]();
    if (*((*(v57 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v57 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
      v50 = v74;
    }

    sub_1A524CAE4();
    swift_endAccess();

    v47 = v78;
  }

  swift_beginAccess();
  v59 = *(v54 + 16);
  if (v59 >> 62)
  {
    v60 = sub_1A524E2B4();
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v60 >= *sub_1A45A9D98())
  {
LABEL_20:
    v47(v50, v34);
    v47(v49, v34);
    goto LABEL_21;
  }

  v61 = [v55 videoComplement];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 imagePath];

    if (v63)
    {
      v64 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

      if (v64)
      {
        swift_beginAccess();
        v65 = v64;
        MEMORY[0x1A5907D70]();
        if (*((*(v54 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v54 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
          v50 = v74;
        }

        sub_1A524CAE4();
        swift_endAccess();
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A3D52244(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8)
{
  v30 = a6;
  v31 = a8;
  v12 = sub_1A5246F24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) == 0))
  {
    v29 = sub_1A3C56D80();
    (*(v13 + 16))(v15, v29, v12);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v17 = v16;
  swift_unknownObjectRetain();
  v18 = [v17 videoComplement];
  [a3 setVideoComplement_];

  [a3 setMediaType_];
  v19 = [v17 videoComplement];
  v20 = [objc_opt_self() collectionShareAssetSourceWithVideoComplementBundle_];

  swift_beginAccess();
  v21 = v20;
  MEMORY[0x1A5907D70]();
  if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A524CA74();
  }

  sub_1A524CAE4();
  swift_endAccess();
  swift_beginAccess();
  v22 = *(a5 + 16);
  if (v22 >> 62)
  {
    v23 = sub_1A524E2B4();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23 >= *sub_1A45A9D98())
  {
    goto LABEL_15;
  }

  v24 = [a3 videoComplement];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 imagePath];

    if (v26)
    {
      v27 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

      if (v27)
      {
        swift_beginAccess();
        v28 = v27;
        MEMORY[0x1A5907D70]();
        if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        swift_endAccess();
        swift_unknownObjectRelease();

        goto LABEL_16;
      }

LABEL_15:
      swift_unknownObjectRelease();

LABEL_16:
      dispatch_group_leave(v31);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A3D52710(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_1A3D52790(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9)
{
  v107 = a7;
  v108 = a4;
  v110 = a5;
  v111 = a9;
  v109 = sub_1A5246F24();
  v11 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v13 = v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v97 - v15;
  sub_1A3C68AC0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v97 - v21;
  v23 = sub_1A5240E64();
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v97 - v25;
  v32 = MEMORY[0x1EEE9AC00](v27);
  if (!a1)
  {
    (*(v30 + 56))(v22, 1, 1, v32);
    goto LABEL_15;
  }

  v105 = v30;
  v106 = a3;
  v102 = v31;
  v103 = v97 - v29;
  v104 = v28;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = v33;
    swift_unknownObjectRetain();
    v35 = UIImageJPEGRepresentation(v34, 0.899999976);
    v36 = v110;
    if (v35)
    {
      v37 = v35;
      v38 = sub_1A5240EA4();
      v40 = v39;

      v41 = sub_1A5240E84();
      v42 = v106;
      [v106 setMediaData_];

      [v42 setMediaType_];
      sub_1A3D602A8(v38, v40);
      v43 = sub_1A5240E84();
      v44 = [objc_opt_self() collectionShareAssetSourceWithData:v43 resourceType:1];

      sub_1A3C59280(v38, v40);
      v45 = v108;
      swift_beginAccess();
      v46 = v44;
      MEMORY[0x1A5907D70]();
      if (*((*(v45 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v45 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      swift_endAccess();
      sub_1A3C59280(v38, v40);
    }

    swift_beginAccess();
    v47 = *(v36 + 16);
    if (v47 >> 62)
    {
      v48 = sub_1A524E2B4();
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v48 < *sub_1A45A9D98())
    {
      swift_beginAccess();
      v49 = swift_unknownObjectRetain();
      MEMORY[0x1A5907D70](v49);
      if (*((*(v36 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v36 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      swift_endAccess();
    }

    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v112 = a1;
  sub_1A3D60244();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v52 = v113[0];
    v51 = v113[1];
    v53 = sub_1A5240E84();
    v54 = v106;
    [v106 setMediaData_];

    [v54 setMediaType_];
    sub_1A3D602A8(v52, v51);
    v55 = sub_1A5240E84();
    v56 = [objc_opt_self() collectionShareAssetSourceWithData:v55 resourceType:1];

    sub_1A3C59280(v52, v51);
    v57 = v108;
    swift_beginAccess();
    v58 = v56;
    MEMORY[0x1A5907D70]();
    if (*((*(v57 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v57 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    swift_endAccess();
    v59 = v110;
    swift_beginAccess();
    v60 = *(v59 + 16);
    if (v60 >> 62)
    {
      v61 = sub_1A524E2B4();
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v61 < *sub_1A45A9D98() && (v62 = objc_allocWithZone(MEMORY[0x1E69DCAB8]), sub_1A3D602A8(v52, v51), v63 = sub_1A5240E84(), v64 = [v62 initWithData_], v63, sub_1A3C59280(v52, v51), v64))
    {
      swift_beginAccess();
      v65 = v64;
      MEMORY[0x1A5907D70]();
      if (*((*(v59 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v59 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      swift_endAccess();
      sub_1A3C59280(v52, v51);
    }

    else
    {
      sub_1A3C59280(v52, v51);
    }

    goto LABEL_29;
  }

  v113[0] = a1;
  swift_unknownObjectRetain();
  v66 = v104;
  v67 = swift_dynamicCast();
  v68 = v105;
  (*(v105 + 56))(v22, v67 ^ 1u, 1, v66);
  v100 = *(v68 + 48);
  v101 = v68 + 48;
  if (v100(v22, 1, v66) == 1)
  {
LABEL_15:
    sub_1A3C68644(v22, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    v50 = sub_1A3C56D80();
    (*(v11 + 16))(v13, v50, v109);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v69 = *(v68 + 32);
  v70 = v103;
  v107 = v68 + 32;
  v99 = v69;
  v69(v103, v22, v66);
  v71 = sub_1A3C56D80();
  v72 = v109;
  (*(v11 + 16))(v16, v71, v109);
  (*(v68 + 16))(v26, v70, v66);
  v73 = sub_1A5246F04();
  v74 = sub_1A524D264();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v113[0] = v98;
    *v75 = 136446210;
    sub_1A3D5FE04(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v97[1] = v74;
    v76 = sub_1A524EA44();
    v78 = v77;
    (*(v68 + 8))(v26, v66);
    sub_1A3C2EF94(v76, v78, v113);
  }

  v79 = v26;
  v80 = *(v68 + 8);
  v80(v79, v66);
  (*(v11 + 8))(v16, v72);
  v81 = v103;
  sub_1A3D4DC78(v103, v19);
  v82 = v100(v19, 1, v66);
  v83 = v110;
  v84 = v108;
  if (v82 == 1)
  {
    v80(v81, v66);
    sub_1A3C68644(v19, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v99(v102, v19, v66);
    v85 = sub_1A5240D44();
    v86 = v106;
    [v106 setMediaURL_];

    [v86 setMediaType_];
    v87 = sub_1A5240D44();
    v88 = [objc_opt_self() collectionShareAssetSourceWithFileURL:v87 resourceType:1];

    swift_beginAccess();
    v89 = v88;
    MEMORY[0x1A5907D70]();
    if (*((*(v84 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v84 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    swift_endAccess();
    swift_beginAccess();
    v90 = *(v83 + 16);
    if (v90 >> 62)
    {
      v91 = sub_1A524E2B4();
    }

    else
    {
      v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v91 < *sub_1A45A9D98() && (sub_1A5240E14(), v92 = objc_allocWithZone(MEMORY[0x1E69DCAB8]), v93 = sub_1A524C634(), , v94 = [v92 initWithContentsOfFile_], v93, v94))
    {
      swift_beginAccess();
      v95 = v94;
      MEMORY[0x1A5907D70]();
      if (*((*(v83 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v83 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      swift_endAccess();
    }

    else
    {
      v95 = v89;
    }

    v96 = v104;
    v80(v102, v104);
    v80(v103, v96);
  }

LABEL_29:
  dispatch_group_leave(v111);
}

void sub_1A3D535DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A3C56D80();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_1A5246F04();
  v13 = sub_1A524D264();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = a2;
    v15 = a5;
    v16 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1A3C1C000, v12, v13, "Computed media sources, previews and display media type", v14, 2u);
    v17 = v16;
    a5 = v15;
    MEMORY[0x1A590EEC0](v17, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    (*((*v19 & *v20) + 0x3A8))(a5);
  }
}

uint64_t sub_1A3D53948(unint64_t a1)
{
  v3 = sub_1A5240E64();
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v42 = v33 - v6;
  v44 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  v48 = swift_allocObject();
  v45 = v1;
  swift_unknownObjectWeakInit();
  v34 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v41 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v12 = 0;
    v47 = a1 & 0xC000000000000001;
    v39 = v46 + 32;
    v38 = &v58;
    v37 = v46 + 16;
    v40 = v46 + 8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v13 = a1;
    }

    else
    {
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v33[1] = v13;
    v14 = MEMORY[0x1E69E7D40];
    v36 = i;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v47)
      {
        v15 = MEMORY[0x1A59097F0](v12, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v15 = *(a1 + 8 * v12 + 32);
      }

      v16 = v15;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v17 = [v15 fileURL];
      if (v17)
      {
        v54 = v16;
        v55 = v12;
        v49 = v12 + 1;
        v18 = v42;
        v19 = v17;
        sub_1A5240DE4();

        v20 = v46;
        v51 = *(v46 + 32);
        v51(v10, v18, v3);
        KeyPath = swift_getKeyPath();
        v22 = v45;
        (*((*v14 & *v45) + 0x700))(KeyPath);

        v53 = *(v22 + v41);
        v52 = sub_1A5240D44();
        v60 = PXDisplayCollectionDetailedCountsMake;
        v61 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v57 = 1107296256;
        v58 = sub_1A3D53FB8;
        v59 = &block_descriptor_162;
        v50 = _Block_copy(&aBlock);
        v23 = v43;
        (*(v20 + 16))(v43, v10, v3);
        v24 = *(v20 + 80);
        v25 = v3;
        v26 = (v24 + 40) & ~v24;
        v27 = swift_allocObject();
        v28 = v55;
        *(v27 + 2) = v48;
        *(v27 + 3) = v28;
        *(v27 + 4) = a1;
        v51(&v27[v26], v23, v25);
        v60 = sub_1A3D5F85C;
        v61 = v27;
        aBlock = MEMORY[0x1E69E9820];
        v57 = 1107296256;
        v58 = sub_1A3D60848;
        v59 = &block_descriptor_168;
        _Block_copy(&aBlock);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      if (v34)
      {
        v29 = sub_1A524E2B4();
      }

      else
      {
        v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v29, 1))
      {
        goto LABEL_27;
      }

      if (v12 == v29 - 1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v31 = Strong;
          LOBYTE(aBlock) = 1;
          (*((*v14 & *Strong) + 0x4F8))(&aBlock);
        }
      }

      if (v12 + 1 == i)
      {
      }

      ++v12;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }
}

uint64_t sub_1A3D53FB8(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

void sub_1A3D5400C(void *a1, void *a2, char *a3, uint64_t a4, unint64_t a5, char *a6)
{
  v45 = a6;
  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A5246F24();
  v15 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v44 = v12;
    v18 = v11;
    v19 = v15;
    v20 = a1;
    if (([v20 isContentPreviewable] & 1) == 0)
    {
      if ([objc_opt_self() isMainThread])
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v22 = v14;
        if (Strong)
        {
          v26 = Strong;
          v27 = [objc_allocWithZone(PXSensitivityInterventionManager) initWithCompactSCSensitivityAnalysis:objc_msgSend(v20 analysisMediaType:sel_compactAnalysis) interventionType:{0, 2}];
          (*((*MEMORY[0x1E69E7D40] & *v26) + 0x558))(v27);
        }
      }

      else
      {
        sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
        v28 = sub_1A524D474();
        MEMORY[0x1EEE9AC00](v28);
        *(&v43 - 2) = a3;
        *(&v43 - 1) = v20;
        sub_1A3D60754(0, &qword_1EB126120, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
        sub_1A524D484();

        v22 = v14;
      }

      swift_beginAccess();
      v29 = swift_unknownObjectWeakLoadStrong();
      if (v29)
      {
        v30 = v29;
        LOBYTE(v48) = 2;
        (*((*MEMORY[0x1E69E7D40] & *v29) + 0x4F8))(&v48);
      }

      v15 = v19;
      v11 = v18;
      v12 = v44;
      goto LABEL_17;
    }

    v15 = v19;
    v11 = v18;
    v12 = v44;
  }

  if (a5 >> 62)
  {
    v21 = sub_1A524E2B4();
  }

  else
  {
    v21 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v14;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
    return;
  }

  if (v21 - 1 == a4)
  {
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v47[0] = 1;
      (*((*MEMORY[0x1E69E7D40] & *v23) + 0x4F8))(v47);
    }
  }

LABEL_17:
  if (a2)
  {
    v31 = a2;
    v32 = sub_1A3C56D80();
    (*(v15 + 16))(v17, v32, v46);
    (*(v12 + 16))(v22, v45, v11);
    v33 = a2;
    v34 = sub_1A5246F04();
    v35 = sub_1A524D264();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v43 = a2;
      v37 = v11;
      v38 = v36;
      swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v15;
      v45 = v17;
      v48 = v39;
      *v38 = 136315394;
      sub_1A3D5FE04(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v40 = sub_1A524EA44();
      v42 = v41;
      (*(v12 + 8))(v22, v37);
      sub_1A3C2EF94(v40, v42, &v48);
    }

    (*(v12 + 8))(v22, v11);
    (*(v15 + 8))(v17, v46);
  }
}

void sub_1A3D54680(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1A3D5470C()
{
  v1 = sub_1A524BEE4();
  v19 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
  v12 = sub_1A524D4C4();
  (*(v8 + 8))(v10, v7);
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v11;
  aBlock[4] = sub_1A3D6033C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_270;
  v14 = _Block_copy(aBlock);
  v15 = v0;

  sub_1A524BF14();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1A3D5FE04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v14);
  _Block_release(v14);

  (*(v19 + 8))(v3, v1);
  (*(v17 + 8))(v6, v18);
}

uint64_t sub_1A3D54AE4(unint64_t a1, uint64_t a2)
{
  v234 = sub_1A524BEE4();
  v233 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v231 = &v218 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1A524BF64();
  v230 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v229 = &v218 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C68AC0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v218 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v228 = &v218 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v241 = &v218 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v252 = &v218 - v14;
  v15 = sub_1A5240E64();
  v237 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v223 = &v218 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v227 = &v218 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v225 = &v218 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v239 = (&v218 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v238 = &v218 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v251 = &v218 - v26;
  v221 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v240 = &v218 - v29;
  v30 = sub_1A5246F24();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v219 = &v218 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v220 = &v218 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v266 = &v218 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v224 = &v218 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v218 - v40;
  v42 = sub_1A3C56D80();
  v43 = v31;
  v44 = *(v31 + 16);
  v258 = v42;
  v257 = v31 + 16;
  v256 = v44;
  (v44)(v41);
  v45 = sub_1A5246F04();
  v46 = sub_1A524D264();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1A3C1C000, v45, v46, "Computing previews and display media type", v47, 2u);
    MEMORY[0x1A590EEC0](v47, -1, -1);
  }

  v48 = *(v43 + 8);
  v260 = v43 + 8;
  v259 = v48;
  v48(v41, v30);
  v49 = swift_allocObject();
  v246 = v49;
  *(v49 + 16) = MEMORY[0x1E69E7CC0];
  v262 = (v49 + 16);
  v50 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x250);
  v236 = (*MEMORY[0x1E69E7D40] & *a1) + 592;
  v235 = v50;
  v51 = v50();
  v52 = v51;
  if (v51 >> 62)
  {
    goto LABEL_182;
  }

  v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v226 = v8;
  v245 = v30;
  if (v53)
  {
    v222 = a1;
    v268 = v52 & 0xC000000000000001;
    v8 = v262;
    swift_beginAccess();
    swift_beginAccess();
    a1 = 0;
    v267 = 0;
    v265 = 0;
    v253 = 0;
    v255 = v52 & 0xFFFFFFFFFFFFFF8;
    v254 = (v237 + 8);
    v54 = &selRef_maxColumns;
    *&v55 = 138412290;
    v244 = v55;
    v263 = v52;
    v264 = v53;
    v243 = a2;
    v242 = v15;
    while (1)
    {
      if (v268)
      {
        v60 = MEMORY[0x1A59097F0](a1, v52);
      }

      else
      {
        if (a1 >= *(v255 + 16))
        {
          goto LABEL_175;
        }

        v60 = *(v52 + 8 * a1 + 32);
      }

      v61 = v60;
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        v53 = sub_1A524E2B4();
        goto LABEL_5;
      }

      v269 = a1 + 1;
      if ([v60 v54[80]] == 1)
      {
        if (*v8 >> 62)
        {
          v62 = sub_1A524E2B4();
        }

        else
        {
          v62 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v62 < *sub_1A45A9D98())
        {
          v63 = dispatch_semaphore_create(0);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v261 = v63;

            v65 = [v61 mediaURL];
            if (!v65)
            {
              goto LABEL_189;
            }

            v66 = v65;
            v67 = v61;
            v68 = v240;
            sub_1A5240DE4();

            sub_1A5240E14();
            v250 = *v254;
            v250(v68, v15);
            v69 = swift_allocObject();
            v69[2] = v246;
            v69[3] = v67;
            v70 = v261;
            v69[4] = v261;

            *&v248 = v67;
            v71 = v67;
            v72 = v70;
            sub_1A5240D14();

            v73 = objc_allocWithZone(MEMORY[0x1E6988168]);
            v74 = sub_1A5240D44();
            v75 = [v73 initWithURL:v74 options:0];

            v76 = objc_allocWithZone(MEMORY[0x1E6987E68]);
            v247 = v75;
            v77 = [v76 initWithAsset_];
            [v77 setAppliesPreferredTrackTransform_];
            v78 = sub_1A524DAD4();
            LODWORD(v67) = v79;
            *&v249 = v80;
            v81 = HIDWORD(v79);
            v82 = sub_1A524CCB4();
            v83 = *(v82 - 8);
            v84 = v252;
            (*(v83 + 56))(v252, 1, 1, v82);
            v85 = swift_allocObject();
            *(v85 + 16) = 0;
            *(v85 + 24) = 0;
            *(v85 + 32) = v77;
            *(v85 + 40) = v78;
            *(v85 + 48) = v67;
            *(v85 + 52) = v81;
            *(v85 + 56) = v249;
            *(v85 + 64) = sub_1A3D605C8;
            *(v85 + 72) = v69;
            v86 = v241;
            sub_1A3D600D0(v84, v241, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
            LODWORD(v67) = (*(v83 + 48))(v86, 1, v82);
            v87 = v77;
            *&v249 = v69;

            if (v67 == 1)
            {
              sub_1A3C68644(v86, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
            }

            else
            {
              sub_1A524CCA4();
              (*(v83 + 8))(v86, v82);
            }

            v101 = *(v85 + 16);
            swift_unknownObjectRetain();

            v30 = v245;
            v61 = v248;
            if (v101)
            {
              swift_getObjectType();
              v102 = sub_1A524CBC4();
              v104 = v103;
              swift_unknownObjectRelease();
            }

            else
            {
              v102 = 0;
              v104 = 0;
            }

            sub_1A3C68644(v252, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
            v105 = swift_allocObject();
            *(v105 + 16) = &unk_1A52F9478;
            *(v105 + 24) = v85;
            if (v104 | v102)
            {
              v271 = 0;
              v270 = 0;
              v272 = v102;
              v273 = v104;
            }

            a2 = v243;
            v8 = v262;
            v52 = v263;
            v63 = v261;
            swift_task_create();

            v15 = v242;
            v250(v251, v242);
            v53 = v264;
          }

          sub_1A524D704();
          goto LABEL_51;
        }
      }

      else if ([v61 v54[80]] == 3)
      {
        if (*v8 >> 62)
        {
          v88 = sub_1A524E2B4();
        }

        else
        {
          v88 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v88 < *sub_1A45A9D98())
        {
          v89 = [v61 videoComplement];
          if (!v89)
          {
            goto LABEL_191;
          }

          v90 = v89;
          v91 = [v89 imagePath];

          if (!v91)
          {
            goto LABEL_190;
          }

          v92 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

          if (v92)
          {
            swift_beginAccess();
            v63 = v92;
            MEMORY[0x1A5907D70]();
            if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1A524CA74();
              v53 = v264;
            }

            sub_1A524CAE4();
            swift_endAccess();
LABEL_51:
          }
        }
      }

      else if ([v61 v54[80]] == 2)
      {
        v93 = *v8 >> 62 ? sub_1A524E2B4() : *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v93 < *sub_1A45A9D98())
        {
          v94 = [v61 mediaURL];
          if (v94)
          {
            v95 = v94;
            sub_1A5240DE4();

            sub_1A5240E14();
            v96 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
            v97 = sub_1A524C634();

            v98 = v96;
            v53 = v264;
            v99 = [v98 initWithContentsOfFile_];

            v52 = v263;
            if (v99)
            {
              swift_beginAccess();
              v100 = v99;
              MEMORY[0x1A5907D70]();
              if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1A524CA74();
                v53 = v264;
              }

              sub_1A524CAE4();
              swift_endAccess();
            }

            (*v254)(v238, v15);
          }

          else
          {
            v111 = [v61 mediaData];
            if (v111)
            {
              v112 = v111;
              v113 = sub_1A5240EA4();
              v115 = v114;

              v116 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
              sub_1A3D602A8(v113, v115);
              v117 = sub_1A5240E84();
              v118 = [v116 initWithData_];

              sub_1A3C59280(v113, v115);
              if (v118)
              {
                swift_beginAccess();
                v119 = v118;
                MEMORY[0x1A5907D70]();
                if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1A524CA74();
                  v8 = v262;
                }

                sub_1A524CAE4();
                swift_endAccess();
                sub_1A3C59280(v113, v115);
              }

              else
              {
                sub_1A3C59280(v113, v115);
              }

              v52 = v263;
            }

            else
            {
              v256(v224, v258, v30);
              v120 = v61;
              v121 = sub_1A5246F04();
              v122 = sub_1A524D244();

              if (os_log_type_enabled(v121, v122))
              {
                v123 = swift_slowAlloc();
                v124 = swift_slowAlloc();
                *v123 = v244;
                *(v123 + 4) = v120;
                *v124 = v120;
                v125 = v120;
                _os_log_impl(&dword_1A3C1C000, v121, v122, "Invalid image: %@", v123, 0xCu);
                sub_1A3CB65E4(v124);
                v126 = v124;
                v8 = v262;
                MEMORY[0x1A590EEC0](v126, -1, -1);
                v127 = v123;
                v52 = v263;
                MEMORY[0x1A590EEC0](v127, -1, -1);
              }

              v259(v224, v30);
            }

            v53 = v264;
          }
        }
      }

      v54 = &selRef_maxColumns;
      if ([v61 mediaType])
      {
        v106 = [v61 mediaType];
        if (v106 > 1)
        {
          if (v106 == 2)
          {

            v110 = __OFADD__(v267++, 1);
            if (v110)
            {
              goto LABEL_179;
            }
          }

          else
          {
            if (v106 != 3)
            {
              goto LABEL_192;
            }

            v110 = __OFADD__(v267++, 1);
            if (v110)
            {
              goto LABEL_176;
            }
          }
        }

        else if (v106)
        {
          if (v106 != 1)
          {
            goto LABEL_192;
          }

          v110 = __OFADD__(v265++, 1);
          if (v110)
          {
            goto LABEL_178;
          }
        }

        else
        {

          if (__OFADD__(v253, 1))
          {
            goto LABEL_177;
          }

          ++v253;
        }
      }

      else
      {
        v256(v266, v258, v30);
        v107 = v61;
        v108 = sub_1A5246F04();
        v109 = sub_1A524D244();

        if (os_log_type_enabled(v108, v109))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *v56 = v244;
          *(v56 + 4) = v107;
          *v57 = v107;
          v58 = v107;
          _os_log_impl(&dword_1A3C1C000, v108, v109, "Invalid media source type: %@", v56, 0xCu);
          sub_1A3CB65E4(v57);
          MEMORY[0x1A590EEC0](v57, -1, -1);
          v59 = v56;
          v8 = v262;
          MEMORY[0x1A590EEC0](v59, -1, -1);
        }

        else
        {
          v58 = v108;
          v108 = v107;
        }

        v259(v266, v30);
        v52 = v263;
        v53 = v264;
        v54 = &selRef_maxColumns;
      }

      ++a1;
      if (v269 == v53)
      {

        LODWORD(v129) = v253 > 0;
        a1 = v222;
        goto LABEL_87;
      }
    }
  }

  v267 = 0;
  v265 = 0;
  LODWORD(v129) = 0;
  v8 = v262;
LABEL_87:
  v130 = (v235)(v128);
  if (v130 >> 62)
  {
    v217 = sub_1A524E2B4();

    if (v217)
    {
      goto LABEL_165;
    }
  }

  else
  {
    v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v131)
    {
LABEL_165:
      if (v267 == v265)
      {
        v206 = 1;
      }

      else
      {
        v206 = v129;
      }

      v207 = 1;
      if (v267 < 1)
      {
        v207 = 2;
      }

      if (v206)
      {
        v208 = 0;
      }

      else
      {
        v208 = v207;
      }

      sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
      v209 = sub_1A524D474();
      v210 = swift_allocObject();
      v211 = v246;
      v210[2] = a2;
      v210[3] = v211;
      v210[4] = v208;
      aBlock[4] = sub_1A3D60344;
      aBlock[5] = v210;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_277;
      v212 = _Block_copy(aBlock);

      v213 = v229;
      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A3D5FE04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v214 = v231;
      v215 = v234;
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v213, v214, v212);
      _Block_release(v212);

      (*(v233 + 8))(v214, v215);
      (*(v230 + 8))(v213, v232);
    }
  }

  v133 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x280);
  v134 = v133(v132);
  if (v134 >> 62)
  {
    goto LABEL_186;
  }

  v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_91:

  if (v135 < 1)
  {
    goto LABEL_165;
  }

  v137 = v133(v136);
  v52 = v137;
  LODWORD(v250) = v129;
  if (v137 >> 62)
  {
    v138 = sub_1A524E2B4();
  }

  else
  {
    v138 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v133 = v239;
  if (!v138)
  {
LABEL_164:

    LODWORD(v129) = v250;
    goto LABEL_165;
  }

  if (v138 >= 1)
  {
    v269 = v52 & 0xC000000000000001;
    swift_beginAccess();
    swift_beginAccess();
    v129 = 0;
    v263 = (v237 + 8);
    v253 = v237 + 16;
    v252 = v221 + 7;
    v251 = (v237 + 32);
    *&v139 = 136315138;
    v249 = v139;
    *&v139 = 138412290;
    v248 = v139;
    v264 = v52;
    v268 = v138;
    v243 = a2;
    v242 = v15;
    while (1)
    {
      if (v269)
      {
        v140 = MEMORY[0x1A59097F0](v129, v52);
      }

      else
      {
        v140 = *(v52 + 8 * v129 + 32);
      }

      a1 = v140;
      if ([v140 resourceType] == 2)
      {
        v110 = __OFADD__(v265++, 1);
        if (v110)
        {
          goto LABEL_180;
        }

        if (*v8 >> 62)
        {
          v141 = sub_1A524E2B4();
        }

        else
        {
          v141 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v141 < *sub_1A45A9D98())
        {
          v142 = dispatch_semaphore_create(0);
          v143 = [a1 fileURL];
          if (v143)
          {
            v266 = v142;
            v144 = v143;
            sub_1A5240DE4();

            v145 = swift_unknownObjectWeakLoadStrong();
            if (v145)
            {
              v255 = a1;

              sub_1A5240E14();
              v146 = v237;
              v147 = v225;
              (*(v237 + 16))(v225, v133, v15);
              v148 = (*(v146 + 80) + 24) & ~*(v146 + 80);
              v149 = (v252 + v148) & 0xFFFFFFFFFFFFFFF8;
              v150 = swift_allocObject();
              *(v150 + 16) = v246;
              (*(v146 + 32))(v150 + v148, v147, v15);
              v151 = v266;
              *(v150 + v149) = v266;

              v152 = v151;
              sub_1A5240D14();

              v153 = objc_allocWithZone(MEMORY[0x1E6988168]);
              v154 = sub_1A5240D44();
              v155 = [v153 initWithURL:v154 options:0];

              v156 = objc_allocWithZone(MEMORY[0x1E6987E68]);
              v254 = v155;
              v157 = [v156 initWithAsset_];
              [v157 setAppliesPreferredTrackTransform_];
              v158 = sub_1A524DAD4();
              LODWORD(v151) = v159;
              v261 = v160;
              v161 = HIDWORD(v159);
              v162 = sub_1A524CCB4();
              v163 = *(v162 - 8);
              v164 = v228;
              (*(v163 + 56))(v228, 1, 1, v162);
              v165 = swift_allocObject();
              *(v165 + 16) = 0;
              *(v165 + 24) = 0;
              *(v165 + 32) = v157;
              *(v165 + 40) = v158;
              *(v165 + 48) = v151;
              *(v165 + 52) = v161;
              v166 = v226;
              *(v165 + 56) = v261;
              *(v165 + 64) = sub_1A3D60428;
              *(v165 + 72) = v150;
              sub_1A3D600D0(v164, v166, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
              LODWORD(v158) = (*(v163 + 48))(v166, 1, v162);
              v167 = v157;
              v261 = v150;

              if (v158 == 1)
              {
                sub_1A3C68644(v166, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
              }

              else
              {
                sub_1A524CCA4();
                (*(v163 + 8))(v166, v162);
              }

              v182 = *(v165 + 16);
              swift_unknownObjectRetain();

              v30 = v245;
              v52 = v264;
              a1 = v255;
              if (v182)
              {
                swift_getObjectType();
                v183 = sub_1A524CBC4();
                v185 = v184;
                swift_unknownObjectRelease();
              }

              else
              {
                v183 = 0;
                v185 = 0;
              }

              v186 = v239;
              sub_1A3C68644(v228, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
              v187 = swift_allocObject();
              *(v187 + 16) = &unk_1A52F9468;
              *(v187 + 24) = v165;
              if (v185 | v183)
              {
                v275 = 0;
                v276 = v183;
                v274 = 0;
                v277 = v185;
              }

              a2 = v243;
              swift_task_create();

              v188 = *v263;
              v15 = v242;
              (*v263)(v227, v242);
              v188(v186, v15);
              v8 = v262;
            }

            else
            {
              (*v263)(v133, v15);
            }

            v142 = v266;
          }

          else
          {
            sub_1A524D714();
          }

          sub_1A524D704();

          goto LABEL_145;
        }
      }

      else if ([a1 sourceType] == 3)
      {
        v110 = __OFADD__(v267++, 1);
        if (v110)
        {
          goto LABEL_181;
        }

        if (*v8 >> 62)
        {
          v168 = sub_1A524E2B4();
        }

        else
        {
          v168 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v168 < *sub_1A45A9D98())
        {
          v169 = [a1 videoComplementBundle];
          if (v169)
          {
            v170 = v169;
            v171 = [v169 imagePath];

            if (v171)
            {
              sub_1A524C674();
              v172 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

              if (!v172)
              {
                v256(v220, v258, v30);
                _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
              }

              swift_beginAccess();
              v173 = v172;
              MEMORY[0x1A5907D70]();
              v52 = v264;
              if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1A524CA74();
              }

              sub_1A524CAE4();
              swift_endAccess();

              goto LABEL_146;
            }

LABEL_145:

LABEL_146:
            v133 = v239;
            goto LABEL_98;
          }
        }
      }

      else
      {
        if ([a1 resourceType] != 1)
        {

          goto LABEL_99;
        }

        v110 = __OFADD__(v267++, 1);
        if (v110)
        {
          __break(1u);
LABEL_186:
          v135 = sub_1A524E2B4();
          goto LABEL_91;
        }

        if (*v8 >> 62)
        {
          v174 = sub_1A524E2B4();
        }

        else
        {
          v174 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v174 < *sub_1A45A9D98())
        {
          v175 = [a1 fileURL];
          if (!v175)
          {
            v189 = [a1 data];
            if (!v189)
            {
              v256(v219, v258, v30);
              v198 = a1;
              v199 = sub_1A5246F04();
              v200 = sub_1A524D244();

              if (os_log_type_enabled(v199, v200))
              {
                v201 = swift_slowAlloc();
                v202 = swift_slowAlloc();
                *v201 = v248;
                *(v201 + 4) = v198;
                *v202 = v198;
                v203 = v198;
                _os_log_impl(&dword_1A3C1C000, v199, v200, "Invalid image: %@", v201, 0xCu);
                sub_1A3CB65E4(v202);
                v204 = v202;
                v30 = v245;
                MEMORY[0x1A590EEC0](v204, -1, -1);
                v205 = v201;
                v8 = v262;
                MEMORY[0x1A590EEC0](v205, -1, -1);
              }

              else
              {
                v203 = v199;
                v199 = v198;
              }

              v138 = v268;

              v259(v219, v30);
              v133 = v239;
              v52 = v264;
              goto LABEL_99;
            }

            v190 = v189;
            v191 = sub_1A5240EA4();
            v193 = v192;

            v194 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
            sub_1A3D602A8(v191, v193);
            v195 = sub_1A5240E84();
            v196 = [v194 initWithData_];

            sub_1A3C59280(v191, v193);
            if (v196)
            {
              swift_beginAccess();
              v197 = v196;
              MEMORY[0x1A5907D70]();
              if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v266 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1A524CA74();
              }

              sub_1A524CAE4();
              swift_endAccess();
              sub_1A3C59280(v191, v193);
            }

            else
            {
              sub_1A3C59280(v191, v193);
            }

            v133 = v239;
            goto LABEL_158;
          }

          v176 = v223;
          v177 = v175;
          sub_1A5240DE4();

          sub_1A5240E14();
          v178 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
          v179 = sub_1A524C634();

          v180 = [v178 initWithContentsOfFile_];

          if (!v180)
          {
            (*v263)(v176, v15);

            v133 = v239;
            v8 = v262;
LABEL_158:
            v52 = v264;
            goto LABEL_98;
          }

          v8 = v262;
          swift_beginAccess();
          v181 = v180;
          MEMORY[0x1A5907D70]();
          v52 = v264;
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();
          swift_endAccess();

          (*v263)(v223, v15);
          goto LABEL_146;
        }
      }

LABEL_98:
      v138 = v268;
LABEL_99:
      if (v138 == ++v129)
      {
        goto LABEL_164;
      }
    }
  }

  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A3D57078(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v44 = a4;
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v20 = a1;
    MEMORY[0x1A5907D70]();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    swift_endAccess();
    goto LABEL_9;
  }

  v39 = v12;
  v40 = v15;
  v41 = v9;
  v42 = v10;
  v43 = a5;
  v21 = v17;
  v22 = sub_1A3C56D80();
  (*(v21 + 16))(v19, v22, v16);
  v23 = v44;
  v24 = a2;
  v25 = sub_1A5246F04();
  v26 = sub_1A524D244();
  v44 = a2;

  if (!os_log_type_enabled(v25, v26))
  {

    (*(v21 + 8))(v19, v16);
LABEL_9:
    sub_1A524D714();
    return;
  }

  v37 = v26;
  v38 = v21;
  v27 = swift_slowAlloc();
  swift_slowAlloc();
  v36 = swift_slowAlloc();
  v45[0] = v36;
  *v27 = 136315394;
  v28 = [v23 mediaURL];

  if (v28)
  {
    v29 = v39;
    sub_1A5240DE4();

    v30 = v41;
    v31 = v42;
    v32 = v40;
    (*(v42 + 32))(v40, v29, v41);
    sub_1A3D5FE04(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v33 = sub_1A524EA44();
    v35 = v34;
    (*(v31 + 8))(v32, v30);
    sub_1A3C2EF94(v33, v35, v45);
  }

  __break(1u);
}

uint64_t sub_1A3D574F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5246F24();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v17 = a1;
    MEMORY[0x1A5907D70]();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    swift_endAccess();
  }

  else
  {
    v18 = sub_1A3C56D80();
    (*(v14 + 16))(v16, v18, v13);
    (*(v10 + 16))(v12, a4, v9);
    v19 = a2;
    v20 = sub_1A5246F04();
    v21 = sub_1A524D244();

    if (os_log_type_enabled(v20, v21))
    {
      v29 = v21;
      v30 = v20;
      v22 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v22 = 136315394;
      sub_1A3D5FE04(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v23 = sub_1A524EA44();
      v25 = v24;
      (*(v10 + 8))(v12, v9);
      sub_1A3C2EF94(v23, v25, v32);
    }

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
  }

  return sub_1A524D714();
}

void sub_1A3D578EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3C56D80();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_1A5246F04();
  v10 = sub_1A524D264();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "Computed previews and display media type", v11, 2u);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*((*v13 & *v14) + 0x3A8))(a3);
  }
}

uint64_t sub_1A3D57B48()
{
  v1 = sub_1A524BEE4();
  v18 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
  v11 = sub_1A524D4C4();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1A3D6061C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_309;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_1A524BF14();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1A3D5FE04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v13);
  _Block_release(v13);

  (*(v18 + 8))(v3, v1);
  (*(v4 + 8))(v6, v17);
}

id sub_1A3D57EEC(void *a1)
{
  v2 = sub_1A524BEE4();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38[3] = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1A524BF64();
  v38[2] = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38[1] = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3C56D80();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "Computing display media type", v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  v13 = (*(v6 + 8))(v8, v5);
  v14 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x208))(v13);
  v15 = v14;
  v16 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_26:
    v17 = sub_1A524E2B4();
  }

  else
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = a1;
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v19 = 0;
    a1 = (v15 & 0xC000000000000001);
    do
    {
      v20 = v19;
      while (1)
      {
        if (a1)
        {
          v21 = MEMORY[0x1A59097F0](v20, v15);
          v19 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v20 >= *(v16 + 16))
          {
            goto LABEL_25;
          }

          v21 = *(v15 + 8 * v20 + 32);
          v19 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        v22 = v21;
        v23 = [v22 uuid];
        if (v23)
        {
          break;
        }

        ++v20;
        if (v19 == v17)
        {
          goto LABEL_22;
        }
      }

      v24 = v23;
      v38[0] = sub_1A524C674();
      v26 = v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1A3D3D914(0, *(v18 + 2) + 1, 1, v18);
      }

      v28 = *(v18 + 2);
      v27 = *(v18 + 3);
      if (v28 >= v27 >> 1)
      {
        v18 = sub_1A3D3D914((v27 > 1), v28 + 1, 1, v18);
      }

      *(v18 + 2) = v28 + 1;
      v29 = &v18[16 * v28];
      *(v29 + 4) = v38[0];
      *(v29 + 5) = v26;
    }

    while (v19 != v17);
  }

LABEL_22:

  v31 = *((*((*MEMORY[0x1E69E7D40] & *v42) + 0x148))(v30) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

  v32 = *(v31 + 16);

  v33 = [v32 librarySpecificFetchOptions];
  v34 = objc_opt_self();
  v35 = sub_1A524CA14();
  v36 = [v34 fetchAssetsWithLocalIdentifiers:v35 options:v33];

  result = [v36 fetchedObjects];
  if (result)
  {

    PXMediaTypeForAssets();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3D585E0(void *a1, uint64_t a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3C56D80();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_1A5246F04();
  v10 = sub_1A524D264();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "Computed display media type", v11, 2u);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0x3A8))(a2);
}

uint64_t sub_1A3D58790(void *a1, void *a2, void *a3, void *a4, void (*a5)(void, void, __n128), uint64_t a6)
{
  v41 = a6;
  v42 = a5;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x4C8);
  v16(1, v12);
  if (a1)
  {
    v17 = *((*v15 & *a2) + 0x400);
    v18 = swift_unknownObjectRetain();
    if (!v17(v18))
    {
      v31 = PXSharedAlbumsDefaultAssetCreationOptionsForAssets(a1, 0, 1);
      sub_1A3C52C70(0, &qword_1EB12B618, 0x1E6978690);
      sub_1A524C3E4();
    }

    (*((*v15 & *a2) + 0x310))();
    v32 = sub_1A524C634();

    sub_1A3C52C70(0, &qword_1EB12B618, 0x1E6978690);
    v33 = sub_1A524C3D4();

    v34 = swift_allocObject();
    v34[2] = a2;
    v34[3] = a3;
    v35 = v41;
    v36 = v42;
    v34[4] = v42;
    v34[5] = v35;
    aBlock[4] = sub_1A3D5FE9C;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_194;
    v37 = _Block_copy(aBlock);
    v38 = a2;
    v39 = a3;
    sub_1A3C66EE8(v36, v35);

    v40 = PXSharedAlbumsPrepareAndPublishAssetsToSharedAlbum(v39, a1, v32, v33, a4, v37);
    _Block_release(v37);

    sub_1A3D59768(v40);
    return swift_unknownObjectRelease();
  }

  else
  {
    (v16)(0);
    v19 = sub_1A3C56D80();
    (*(v11 + 16))(v14, v19, v10);
    v20 = a3;
    v21 = sub_1A5246F04();
    v22 = sub_1A524D264();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v23 = 136446210;
      v24 = [v20 uuid];
      v25 = sub_1A524C674();
      v27 = v26;

      sub_1A3C2EF94(v25, v27, aBlock);
    }

    result = (*(v11 + 8))(v14, v10);
    v29 = v42;
    if (v42)
    {
      v30 = v41;

      v29(0, 0);
      return sub_1A3C33378(v29, v30);
    }
  }

  return result;
}

id sub_1A3D58C4C(int a1, void *a2, void *a3, void *a4, void (*a5)(void, id, __n128), uint64_t a6)
{
  v64 = a2;
  v65 = a5;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v59 - v15;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = v59 - v19;
  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x4C8))(0, v18);
  v63 = a1;
  if (a1)
  {
    v21 = sub_1A3C56D80();
    (*(v11 + 16))(v20, v21, v10);
    v22 = a4;
    v23 = sub_1A5246F04();
    v24 = sub_1A524D264();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v62 = a6;
      v66[0] = v26;
      *v25 = 136446210;
      v27 = [v22 uuid];
      v28 = sub_1A524C674();
      v61 = v10;
      v29 = v28;
      v31 = v30;

      sub_1A3C2EF94(v29, v31, v66);
    }

    (*(v11 + 8))(v20, v10);
  }

  else
  {
    v32 = sub_1A3C56D80();
    v61 = v11;
    v33 = *(v11 + 16);
    if (v64)
    {
      v62 = a6;
      v33(v16, v32, v10);
      v34 = a4;
      v35 = v64;
      v36 = v64;
      v37 = sub_1A5246F04();
      v38 = sub_1A524D244();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v59[1] = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v66[0] = v60;
        *v39 = 136446466;
        v40 = [v34 uuid];
        v41 = sub_1A524C674();
        v43 = v42;

        sub_1A3C2EF94(v41, v43, v66);
      }

      (*(v61 + 8))(v16, v10);
      a6 = v62;
    }

    else
    {
      v33(v13, v32, v10);
      v44 = a4;
      v45 = sub_1A5246F04();
      v46 = sub_1A524D264();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v62 = a6;
        v66[0] = v48;
        *v47 = 136446210;
        v49 = [v44 uuid];
        v50 = sub_1A524C674();
        v52 = v51;

        sub_1A3C2EF94(v50, v52, v66);
      }

      (*(v61 + 8))(v13, v10);
    }
  }

  swift_getKeyPath();
  v53 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x700))();

  v54 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__publishProgressController;
  result = *(a3 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__publishProgressController);
  if (!result || (result = [result hideAnimated:1 allowDelay:0], !*(a3 + v54)))
  {
    *(a3 + v54) = 0;
    if (!v65)
    {
      return result;
    }

    goto LABEL_17;
  }

  KeyPath = swift_getKeyPath();
  v57.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  v59[-2] = a3;
  v59[-1] = 0;
  (*((*v53 & *a3) + 0x708))(v57);

  if (v65)
  {
LABEL_17:

    v58 = v65;
    (v65)(v63 & 1, v64);
    return sub_1A3C33378(v58, a6);
  }

  return result;
}

uint64_t sub_1A3D59380(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A3D593E0(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524BF64();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v14 = sub_1A524D474();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  aBlock[4] = sub_1A3D5FDCC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_188;
  v16 = _Block_copy(aBlock);
  sub_1A3C66EE8(a3, a4);
  v17 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3D5FE04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v13, v10, v16);
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_1A3D596F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1A3D59768(uint64_t a1)
{
  v3 = [objc_allocWithZone(PXActivityProgressController) init];
  v4 = sub_1A524C634();
  v5 = PXLocalizedSharedAlbumsString(v4);

  if (!v5)
  {
    sub_1A524C674();
    v5 = sub_1A524C634();
  }

  [v3 setTitle_];

  [v3 setProgress_];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_1A3D5F804;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A3C2E0D0;
  v11[3] = &block_descriptor_154;
  v7 = _Block_copy(v11);

  [v3 setCancellationHandler_];
  _Block_release(v7);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x148))();
  v8 = sub_1A4654ADC();

  v9 = [v8 px_topmostPresentedViewController];

  [v3 setPresentingViewController_];
  [v3 showAnimated:1 allowDelay:0];
  v10 = v3;
  sub_1A3D4B520(v3);
}

void sub_1A3D599B0(void *a1)
{
  sub_1A3C38BD4(0xD000000000000031);
  sub_1A3C38BD4(0xD000000000000029);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2B0))();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v5 = sub_1A524E2B4();
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](v8, v3);
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = PXSharedAlbumsAddressForParticipant(v9);
      if (v11)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_23;
      }
    }

    v12 = v11;
    v28 = sub_1A524C674();
    v14 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A3D3D914(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_1A3D3D914((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    *(v17 + 4) = v28;
    *(v17 + 5) = v14;
  }

  while (v6 != v5);
LABEL_23:

  v18 = sub_1A3C4467C(v7);

  v19 = [objc_opt_self() maxSubscribersPerStream];
  v20 = *(v18 + 16);
  v21 = __OFSUB__(v19, v20);
  v22 = v19 - v20;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = v22 & ~(v22 >> 63);
    v24 = objc_opt_self();
    v25 = sub_1A524C634();

    v26 = sub_1A524C634();

    v27 = sub_1A524CF34();

    v30 = [v24 recipientPickerViewControllerWithTitle:v25 toLabel:v26 usedAddresses:v27 maxRecipients:v23 verificationType:0 delegate:v1];

    [a1 presentViewController:v30 animated:1 completionHandler:0];
  }
}

uint64_t sub_1A3D59CEC(int a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v49 = a1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = sub_1A3C56D80();
  v17 = *(v5 + 16);
  v50 = v16;
  v51 = v17;
  (v17)(v15);
  v18 = sub_1A5246F04();
  v19 = sub_1A524D264();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v4;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1A3C1C000, v18, v19, "Will dismiss Shared Album Action View", v21, 2u);
    v22 = v21;
    v4 = v20;
    MEMORY[0x1A590EEC0](v22, -1, -1);
  }

  v23 = *(v5 + 8);
  v24 = v23(v15, v4);
  v25 = MEMORY[0x1E69E7D40];
  v26 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x178))(v24);
  if (!v26)
  {
    goto LABEL_6;
  }

  v27 = v26;
  v46 = v4;
  swift_getKeyPath();
  (*((*v25 & *v3) + 0x700))();

  if (*(v3 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID + 8))
  {

    v4 = v46;
LABEL_6:
    v28 = (*((*v25 & *v3) + 0x460))();
    if (v28)
    {
      v30 = v28;
      v31 = v29;
      v28(v49 & 1, v48);
      v51(v9, v50, v4);
      v27 = sub_1A5246F04();
      v32 = sub_1A524D264();
      if (os_log_type_enabled(v27, v32))
      {
        v33 = v23;
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1A3C1C000, v27, v32, "Successfully dismissed Shared Album Action View (doneCallback)", v34, 2u);
        v35 = v34;
        v23 = v33;
        MEMORY[0x1A590EEC0](v35, -1, -1);
      }

      sub_1A3C33378(v30, v31);
    }

    else
    {
      v9 = v47;
      v51(v47, v50, v4);
      v27 = sub_1A5246F04();
      v36 = sub_1A524D264();
      if (os_log_type_enabled(v27, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1A3C1C000, v27, v36, "Failed to dismiss Shared Album Action View", v37, 2u);
        MEMORY[0x1A590EEC0](v37, -1, -1);
      }
    }

    v12 = v9;
    goto LABEL_19;
  }

  if (v49)
  {
    v38 = sub_1A524CA14();
    [v27 completeRequestReturningItems:v38 completionHandler:0];
  }

  else
  {
    v39 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    v38 = sub_1A5240B74();
    [v27 cancelRequestWithError:v38];
  }

  v4 = v46;

  v51(v12, v50, v4);
  v40 = sub_1A5246F04();
  v41 = sub_1A524D264();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = v23;
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1A3C1C000, v40, v41, "Successfully dismissed Shared Album Action View (activity)", v43, 2u);
    v44 = v43;
    v23 = v42;
    MEMORY[0x1A590EEC0](v44, -1, -1);
  }

LABEL_19:
  return v23(v12, v4);
}

void sub_1A3D5A25C(void *a1, unint64_t a2)
{
  v4 = sub_1A5246F24();
  v9[2] = *(v4 - 8);
  v9[3] = v4;
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v9[1] = v9 - v6;
  v10 = MEMORY[0x1E69E7CC0];
  v7 = v2;
  sub_1A3D5E28C(a2, v7, &v10, v8);

  PXPresentationEnvironmentForSender();
}

void sub_1A3D5A7EC(void **a1, void *a2, void *a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - v12;
  v14 = *a1;
  v15 = [v14 invalidAddressString];
  if (v15)
  {
    v16 = v15;
    sub_1A524C674();

    if ((*((*MEMORY[0x1E69E7D40] & *a2) + 0x1A8))())
    {
      v17 = sub_1A3C56D80();
      (*(v7 + 16))(v13, v17, v6);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v24 = sub_1A3C56D80();
    (*(v7 + 16))(v9, v24, v6);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v18 = [v14 emailAddressString];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1A524C674();
    v22 = v21;

    sub_1A3D60754(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1A52F8E10;
    *(v23 + 32) = v20;
    *(v23 + 40) = v22;
  }

  else
  {
    v23 = 0;
  }

  v25 = [v14 phoneNumberString];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1A524C674();
    v29 = v28;

    sub_1A3D60754(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1A52F8E10;
    *(v30 + 32) = v27;
    *(v30 + 40) = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = [v14 firstName];
  if (v31)
  {
    v32 = v31;
    sub_1A524C674();
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = [v14 lastName];
  if (v35)
  {
    v36 = v35;
    sub_1A524C674();
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = [v14 localizedName];
  if (v39)
  {
    v40 = v39;
    sub_1A524C674();
    v42 = v41;

    if (v34)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v42 = 0;
    if (v34)
    {
LABEL_19:
      v43 = sub_1A524C634();

      if (v38)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  v43 = 0;
  if (v38)
  {
LABEL_20:
    v44 = sub_1A524C634();

    if (v42)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_26:
  v44 = 0;
  if (v42)
  {
LABEL_21:
    v45 = sub_1A524C634();

    if (v23)
    {
      goto LABEL_22;
    }

LABEL_28:
    v46 = 0;
    if (v30)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

LABEL_27:
  v45 = 0;
  if (!v23)
  {
    goto LABEL_28;
  }

LABEL_22:
  v46 = sub_1A524CA14();

  if (v30)
  {
LABEL_23:
    v47 = sub_1A524CA14();

    goto LABEL_30;
  }

LABEL_29:
  v47 = 0;
LABEL_30:
  LOWORD(v50) = 1;
  v48 = [objc_allocWithZone(PXSharedAlbumParticipant) initWithPersonID:0 firstName:v43 lastName:v44 fullName:v45 emails:v46 phones:v47 acceptanceStatus:v50];

  v51 = v48;
  MEMORY[0x1A5907D70]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A524CA74();
  }

  sub_1A524CAE4();
  v49 = v51;
}

uint64_t sub_1A3D5AF50(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v4);
    result = v5 + v4;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1A524E2B4();
  v6 = __OFADD__(v15, v4);
  result = v15 + v4;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(result, 1);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_1A3D5C2F0(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
  v12 = v11;

  if (v12 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v8;
    return result;
  }

  v13 = *(v9 + 16);
  v6 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v6)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

BOOL sub_1A3D5B0FC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))();
  if (v3 && (v4 = v3, sub_1A3D44D38(), v6 = v5, v4, v6))
  {

    return 1;
  }

  else
  {
    v8 = (*((*v2 & *v1) + 0x1A8))();
    if (v8)
    {

      return 1;
    }

    else
    {
      swift_getKeyPath();
      (*((*v2 & *v1) + 0x700))();

      return *(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID + 8) != 0;
    }
  }
}

id SharedAlbumActionViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharedAlbumActionViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedAlbumActionViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3D5B5F8(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1A524E554();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1A3C2F0BC(i, v5);
    sub_1A3C52C70(0, &unk_1EB12B5F0, 0x1E696ABE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1A3D5B724(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4, __n128 a5)
{
  v6 = a1;
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v8)
    {
      goto LABEL_29;
    }

    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v6 < 0)
    {
      v10 = v6;
    }

    if (v7)
    {
      v11 = v10;
    }

    v12 = a2 & 0xFFFFFFFFFFFFFF8;
    v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v12 = a2;
    }

    if (a2 >> 62)
    {
      v13 = v12;
    }

    if (v11 == v13)
    {
LABEL_29:
      v21 = 1;
      return v21 & 1;
    }

    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = sub_1A3C52C70(0, a3, a4);
    if (((a2 | v6) & 0xC000000000000001) != 0)
    {
      v14 = a2 & 0xC000000000000001;
      v15 = 4;
      while (1)
      {
        v16 = v15 - 4;
        v17 = v15 - 3;
        if (__OFADD__(v15 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1A59097F0](v15 - 4, v6);
          if (!v14)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v16 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v18 = *(v6 + 8 * v15);
          if (!v14)
          {
LABEL_24:
            if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v19 = *(a2 + 8 * v15);
            goto LABEL_26;
          }
        }

        v19 = MEMORY[0x1A59097F0](v15 - 4, a2);
LABEL_26:
        v20 = v19;
        v21 = sub_1A524DBF4();

        if (v21)
        {
          ++v15;
          if (v17 != v8)
          {
            continue;
          }
        }

        return v21 & 1;
      }
    }

    v22 = (v6 + 32);
    v23 = (a2 + 32);
    v24 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v8 - 1;
    while (1)
    {
      if (!v24)
      {
        goto LABEL_40;
      }

      if (!v25)
      {
        break;
      }

      v28 = *v22++;
      v27 = v28;
      v29 = *v23++;
      a2 = v27;
      v6 = v29;
      v21 = sub_1A524DBF4();

      v31 = v26-- != 0;
      if (v21)
      {
        --v25;
        --v24;
        if (v31)
        {
          continue;
        }
      }

      return v21 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v32 = a4;
    v33 = a3;
    v34 = sub_1A524E2B4();
    a3 = v33;
    a4 = v32;
    v8 = v34;
  }

  v35 = a4;
  v36 = a3;
  result = sub_1A524E2B4();
  a3 = v36;
  a4 = v35;
  if (v8 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v21 = 0;
  return v21 & 1;
}

void *sub_1A3D5BB08(void *result, int64_t a2, char a3, void *a4)
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

  sub_1A3C68AC0(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
  v10 = *(sub_1A523FBB4() - 8);
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
  v15 = *(sub_1A523FBB4() - 8);
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

void sub_1A3D5BF00(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = (v2 + *a1);
  swift_beginAccess();
  *v5 = v3;
  v5[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D5BF70()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__displayMediaType;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

void sub_1A3D5BFE8(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v3 + v4) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D5C050()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__perAssetCreationOptions;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A3D5C0BC(uint64_t a1)
{
  v2 = sub_1A524E354();

  return sub_1A3D5C100(a1, v2);
}

unint64_t sub_1A3D5C100(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A3D5FB50(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1A59096D0](v9, a1);
      sub_1A3D5FAFC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A3D5C1C8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
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

  sub_1A524E2B4();
LABEL_9:
  result = sub_1A524E494();
  *v2 = result;
  return result;
}

void (*sub_1A3D5C268(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1A3D5C2E8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3D5C2F0(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
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
          sub_1A3CB67E8(0, &qword_1EB13AE60, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E69E62F8]);
          sub_1A3D5FBAC();
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
        sub_1A3C52C70(0, &qword_1EB12C1B0, off_1E771F698);
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

void sub_1A3D5C498(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v2 = 1 << *(a1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    if ((v3 & *(a1 + 64)) != 0)
    {
LABEL_10:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v4 = 0;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5 >= ((v2 + 63) >> 6))
      {
        return;
      }

      ++v4;
      if (*(a1 + 64 + 8 * v5))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1A3D5C6A8(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = (v6 + *a1);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = v7;
  v9[1] = v8;
  a2(v7, v8);
  return a3(v10, v11);
}

void sub_1A3D5C780()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalysisState;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void sub_1A3D5C81C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_1A3D5C8A4(uint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19)
{
  v62 = a2;
  v63 = a8;
  v59 = a6;
  v60 = a7;
  v55 = a14;
  v57 = a12;
  v61 = a11;
  LODWORD(v54) = a15;
  v53[22] = a19;
  v53[23] = a18;
  v53[20] = a17;
  v53[21] = a16;
  v53[19] = a10;
  v58 = sub_1A5246F24();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v53[4] = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v53[2] = v53 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v53[1] = v53 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v53[3] = v53 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v53[6] = v53 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v53[9] = v53 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v53[10] = v53 - v36;
  v37 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__extensionContext;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__extensionContext) = 0;
  v38 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sharedAlbum;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sharedAlbum) = 0;
  v39 = (v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__albumName);
  v53[14] = v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__albumName;
  *v39 = 0;
  v39[1] = 0xE000000000000000;
  v40 = (v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__batchComment);
  v53[16] = v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__batchComment;
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__isCommentFocused) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__displayMediaType) = 0;
  v53[17] = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__perAssetCreationOptions;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__perAssetCreationOptions) = 0;
  v41 = (v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__updateCallback);
  v53[15] = v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__updateCallback;
  *v41 = 0;
  v41[1] = 0;
  v42 = (v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__doneCallback);
  v53[18] = v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__doneCallback;
  *v42 = 0;
  v42[1] = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalysisState) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__interventionAlreadyShown) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityInterventionManager) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__publishProgressController) = 0;
  v43 = (v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID);
  *v43 = 0;
  v43[1] = 0;
  v53[8] = v43;
  v44 = [objc_allocWithZone(MEMORY[0x1E697B678]) init];
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer) = v44;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel_hasPreparedExtensionSources) = 0;
  sub_1A5241604();
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__navigationContext) = a1;
  v45 = *(v19 + v37);

  v46 = v62;
  v53[11] = v62;

  *(v19 + v37) = v46;
  v47 = *(v19 + v38);
  v53[5] = a3;

  v53[7] = a3;
  *(v19 + v38) = a3;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sharedAlbums) = a4;
  v48 = MEMORY[0x1E69E7CC0];
  if (a5)
  {
    v49 = a5;
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__assets) = v49;
  v50 = v60;
  if (v59)
  {
    v51 = v59;
  }

  else
  {
    v51 = v48;
  }

  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__mediaSources) = v51;
  if (v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = v48;
  }

  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__collectionShareAssetSources) = v52;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__subscribers) = v48;
  v63 = a4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D5DD88()
{
  v1 = v0;
  v2 = v0[2];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x4C8))(1);
  v8 = *((*((*v6 & *v2) + 0x148))(v7) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

  v9 = *(v8 + 16);

  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v2;
  v20 = sub_1A3D5FC30;
  v21 = v10;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1A3C2E0D0;
  v19 = &block_descriptor_176;
  v11 = _Block_copy(&v16);
  v12 = v4;
  v13 = v2;

  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v5;
  v20 = sub_1A3D5FDC4;
  v21 = v14;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1A3D6084C;
  v19 = &block_descriptor_182;
  v15 = _Block_copy(&v16);
  sub_1A3C66EE8(v3, v5);

  [v9 performChanges:v11 completionHandler:v15];
  _Block_release(v15);
  _Block_release(v11);
}

uint64_t sub_1A3D5DFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  sub_1A3C68AC0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v24 = sub_1A5240E64();
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5240D14();
  v9 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v10 = sub_1A5240D44();
  v11 = [v9 initWithURL:v10 options:0];

  v12 = [objc_allocWithZone(MEMORY[0x1E6987E68]) initWithAsset_];
  [v12 setAppliesPreferredTrackTransform_];
  v13 = sub_1A524DAD4();
  v15 = v14;
  v17 = v16;
  v18 = HIDWORD(v14);
  v19 = sub_1A524CCB4();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v12;
  *(v20 + 40) = v13;
  *(v20 + 48) = v15;
  *(v20 + 52) = v18;
  *(v20 + 56) = v17;
  *(v20 + 64) = sub_1A3D5FFF4;
  *(v20 + 72) = v23;
  v21 = v12;

  sub_1A3D4D930(0, 0, v5, &unk_1A52F9448, v20);

  return (*(v6 + 8))(v8, v24);
}

void sub_1A3D5E28C(unint64_t a1, void *a2, void *a3, __n128 a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](v8, a1, a4);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = v9;
      sub_1A3D5A7EC(&v13, a2, a3);

      if (!v12)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id sub_1A3D5E384(id result)
{
  if (result)
  {
    return [*(v1 + 16) dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

unint64_t sub_1A3D5E3A8()
{
  result = qword_1EB12B558;
  if (!qword_1EB12B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B558);
  }

  return result;
}

uint64_t sub_1A3D5E404(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1A3D5F804()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong cancel];
  }
}

void sub_1A3D5F85C(void *a1, void *a2)
{
  v5 = *(sub_1A5240E64() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  sub_1A3D5400C(a1, a2, v6, v7, v8, v9);
}

void sub_1A3D5F8E4(BOOL *a1@<X8>)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = [objc_allocWithZone(PXSensitivityInterventionManager) initWithCompactSCSensitivityAnalysis:objc_msgSend(v3 analysisMediaType:sel_compactAnalysis) interventionType:{0, 2}];
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x558))(v5);
  }

  *a1 = Strong == 0;
}

unint64_t sub_1A3D5F9DC()
{
  result = qword_1EB127060;
  if (!qword_1EB127060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127060);
  }

  return result;
}

void sub_1A3D5FA30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__sensitivityAnalyzer) = v2;
  v4 = v2;
}

void sub_1A3D5FA70()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__selectedPostToAlbumUUID);
  *v2 = v0[3];
  v2[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3D5FABC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__publishProgressController);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumActionViewModel__publishProgressController) = v2;
  v4 = v2;
}

unint64_t sub_1A3D5FBAC()
{
  result = qword_1EB12B600;
  if (!qword_1EB12B600)
  {
    sub_1A3CB67E8(255, &qword_1EB13AE60, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B600);
  }

  return result;
}

void sub_1A3D5FC30(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = [objc_opt_self() changeRequestForCollectionShare_];
  if (v5)
  {
    v6 = MEMORY[0x1E69E7D40];
    v10 = v5;
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x280))();
    sub_1A3C52C70(0, &qword_1EB12B610, 0x1E6978778);
    v7 = sub_1A524CA14();

    (*((*v6 & *v3) + 0x310))(v8);
    v9 = sub_1A524C634();

    [v10 addNewAssetsToCollectionShareWithAssetSource:v7 withBatchCommentText:v9 outNewAssetIdentifiers:0];
  }
}

uint64_t sub_1A3D5FDCC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32), *(v0 + 40));
  }

  return result;
}

uint64_t sub_1A3D5FE04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_60Tm()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_54Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3D6000C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A3D4D618(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A3D600D0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C68AC0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3D60150()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1A3D60244()
{
  result = qword_1EB12E370;
  if (!qword_1EB12E370)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12E370);
  }

  return result;
}

double sub_1A3D602A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t objectdestroy_205Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_247Tm()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A3D60440(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v6 = *(sub_1A5240E64() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v3 + 16);

  return a3(a1, a2, v9, v3 + v7, v8);
}

uint64_t sub_1A3D60504()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A3D4D618(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_250Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3D6062C(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for PhotosDynamicHeaderSpec(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_1A3D60754(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3D6088C(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A5248DE4();
}

uint64_t sub_1A3D60954@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = sub_1A5242D14();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v57 - v6;
  v7 = MEMORY[0x1E69E6720];
  sub_1A3D61C18(0, &qword_1EB124D70, MEMORY[0x1E69C2540], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57 - v9;
  sub_1A3D6133C(0);
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5246E54();
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LemonadeVisionPeopleShelfCell(0);
  v65 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v66 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - v22;
  sub_1A3D61C18(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], v7);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v57 - v25;
  v27 = sub_1A3D61B44(&qword_1EB1254F0, type metadata accessor for LemonadeVisionPeopleShelfCell, &unk_1A52F9530);
  v64 = v15;
  MEMORY[0x1A5905890](v15, v27);
  v28 = sub_1A5246E94();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v26, 1, v28);
  v76 = v2;
  if (v30 == 1)
  {
    sub_1A3D615F8(v26);
  }

  else
  {
    sub_1A3D61A14(v2, v23);
    sub_1A3D61A14(v2, v19);
    sub_1A5246E44();
    v31 = sub_1A5246E84();
    v60 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v32 = swift_slowAlloc();
      v59 = v10;
      v33 = v32;
      v58 = swift_slowAlloc();
      v77 = v58;
      *v33 = 136446466;
      v34 = sub_1A5242934();
      v36 = v35;
      sub_1A3D61B8C(v23);
      sub_1A3C2EF94(v34, v36, &v77);
    }

    (*(v61 + 8))(v63, v62);
    sub_1A3D61B8C(v19);
    sub_1A3D61B8C(v23);
    (*(v29 + 8))(v26, v28);
  }

  sub_1A5242954();
  if ((*(v77 + 16) & 0x8000000000000000) != 0 || (*(v77 + 24) & 1) == 0)
  {

    v63 = 0xE000000000000000;
    v64 = 0;
  }

  else
  {
    v37 = sub_1A5244294();
    v63 = v38;
    v64 = v37;
  }

  sub_1A5242954();
  v39 = *(v77 + 16);

  sub_1A5242954();
  v40 = *(v77 + 16);

  if (v40 < 0)
  {
    if ((sub_1A3D61684(0, *((v40 & 0x7FFFFFFFFFFFFFFFLL) + 0x30)) & 1) == 0)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  else if ((sub_1A3D61684(0, *(v40 + 48)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v41 = PhotoKitItem.keyAsset.getter();

  if (v41)
  {

LABEL_17:
    LODWORD(v62) = 0;
    goto LABEL_18;
  }

  LODWORD(v62) = 1;
LABEL_18:
  v42 = 0xED00006C6C69662ELL;
  if (v39 >= 0)
  {
    v42 = 0xE000000000000000;
  }

  v61 = v42;
  v43 = sub_1A5243624();
  (*(*(v43 - 8) + 56))(v10, 1, 1, v43);

  v44 = v76;
  v45 = v68;
  sub_1A3D61808(v68);
  v47 = v69;
  v46 = v70;
  v48 = v71;
  (*(v70 + 104))(v69, *MEMORY[0x1E69C2210], v71);
  sub_1A5242D04();
  v49 = *(v46 + 8);
  v49(v47, v48);
  v49(v45, v48);
  sub_1A5242954();

  v50 = v44;
  v51 = v67;
  sub_1A3D61A14(v50, v67);
  v52 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v53 = swift_allocObject();
  sub_1A3D61A78(v51, v53 + v52);
  sub_1A3D61454(0);
  sub_1A3D61B44(&qword_1EB124E88, sub_1A3D61454, MEMORY[0x1E69C2010]);
  sub_1A3D61B44(&qword_1EB124E70, sub_1A3D61454, MEMORY[0x1E69C2038]);
  sub_1A3D61B44(&qword_1EB124E78, sub_1A3D61454, MEMORY[0x1E69C2018]);
  sub_1A3D61558();
  v54 = v72;
  sub_1A5242504();
  sub_1A3D61B44(&qword_1EB12B688, sub_1A3D6133C, MEMORY[0x1E69C1E70]);
  v55 = v74;
  sub_1A524A674();
  return (*(v73 + 8))(v54, v55);
}

void sub_1A3D6133C(uint64_t a1)
{
  if (!qword_1EB12B680)
  {
    sub_1A3D61454(255);
    sub_1A3D61B44(&qword_1EB124E88, sub_1A3D61454, MEMORY[0x1E69C2010]);
    sub_1A3D61B44(&qword_1EB124E70, sub_1A3D61454, MEMORY[0x1E69C2038]);
    sub_1A3D61B44(&qword_1EB124E78, sub_1A3D61454, MEMORY[0x1E69C2018]);
    sub_1A3D61558();
    v1 = sub_1A52424F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12B680);
    }
  }
}

void sub_1A3D61454(uint64_t a1)
{
  if (!qword_1EB129190)
  {
    type metadata accessor for PeopleUnifiedItem();
    sub_1A3D61B44(&unk_1EB12A440, type metadata accessor for PeopleUnifiedItem, &protocol conformance descriptor for PeopleUnifiedItem);
    sub_1A3D61B44(&qword_1EB12A420, type metadata accessor for PeopleUnifiedItem, &protocol conformance descriptor for PeopleUnifiedItem);
    sub_1A3D61B44(&qword_1EB12A450, type metadata accessor for PeopleUnifiedItem, &protocol conformance descriptor for PeopleUnifiedItem);
    v1 = sub_1A5242984();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB129190);
    }
  }
}

unint64_t sub_1A3D61558()
{
  result = qword_1EB125520;
  if (!qword_1EB125520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125520);
  }

  return result;
}

uint64_t type metadata accessor for LemonadeVisionPeopleShelfCell(uint64_t a1)
{
  result = qword_1EB164180;
  if (!qword_1EB164180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3D615F8(uint64_t a1)
{
  sub_1A3D61C18(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3D61684(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1A3C6C300(), v3 = sub_1A524C4A4(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    sub_1A3C6C358();
    do
    {
      v7 = sub_1A524C594();
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1A3D61770@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for LemonadeVisionPeopleShelfCell(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_1A3D61C18(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A3D61808@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D61C18(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1A3D61D44(v2, &v15 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5242D14();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A3D61A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeVisionPeopleShelfCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3D61A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeVisionPeopleShelfCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A3D61ADC(void *a1@<X8>)
{
  type metadata accessor for LemonadeVisionPeopleShelfCell(0);

  PXDisplayCollectionDetailedCountsMake();
  *a1 = v2;
}

uint64_t sub_1A3D61B44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3D61B8C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeVisionPeopleShelfCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3D61C18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3D61C90(uint64_t a1)
{
  sub_1A3D61454(319);
  if (v1 <= 0x3F)
  {
    sub_1A3D61C18(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A3D61D44(uint64_t a1, uint64_t a2)
{
  sub_1A3D61C18(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1A3D61DD8()
{
  sub_1A3D61F0C(v8);
  v0 = v9;
  if (v9)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v8, v9);
    v2 = *(v0 - 8);
    v3 = MEMORY[0x1EEE9AC00](v1);
    v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5, v3);
    v6 = sub_1A524EA94();
    (*(v2 + 8))(v5, v0);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1A3D61F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = sub_1A3D636A8(a1, a2, a3);
  (*(*(*(v4 + qword_1EB1EB800) - 8) + 8))(a3);
  return v9;
}

uint64_t sub_1A3D62018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, v6);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

void sub_1A3D6210C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeZoomPresentableDetailViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EB800), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EB800 + 8), a4);
  v22.receiver = v4;
  v22.super_class = v5;
  objc_msgSendSuper2(&v22, sel_viewWillLayoutSubviews);
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;

    v12 = [v4 view];
    if (v12)
    {
      v13 = v12;
      [v12 safeAreaInsets];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      type metadata accessor for LemonadeFeedSpec(0);
      sub_1A3D63DAC(&qword_1EB13C680, type metadata accessor for LemonadeFeedSpec, &protocol conformance descriptor for LemonadeFeedSpec);
      v23.top = v15;
      v23.left = v17;
      v23.bottom = v19;
      v23.right = v21;
      LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v11, v9), v23);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A3D622D0(void *a1)
{
  v4 = a1;
  sub_1A3D6210C(v4, v1, v2, v3);
}

void sub_1A3D62318(void *a1, uint64_t a2)
{
  sub_1A3D6247C(a1, a2);
  sub_1A52422C4();
  if (sub_1A52422B4())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EB1950F0 != -1)
    {
      swift_once();
    }

    v2 = sub_1A5246F24();
    __swift_project_value_buffer(v2, qword_1EB1950F8);
    oslog = sub_1A5246F04();
    v3 = sub_1A524D244();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, oslog, v3, "Action Manager isn't configured properly", v4, 2u);
      MEMORY[0x1A590EEC0](v4, -1, -1);
    }
  }
}

void *sub_1A3D6247C(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = v3;
      return v3;
    }

    v25 = v3;
    v5 = [v25 childViewControllers];
    sub_1A3D63AC0(0, v6);
    v7 = sub_1A524CA34();

    if (v7 >> 62)
    {
LABEL_26:
      v8 = sub_1A524E2B4();
      if (v8)
      {
LABEL_7:
        v9 = 0;
        v10 = MEMORY[0x1E69E7CC0];
        do
        {
          v11 = v9;
          while (1)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x1A59097F0](v11, v7);
            }

            else
            {
              if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v12 = *(v7 + 8 * v11 + 32);
            }

            v13 = v12;
            v9 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            swift_getObjectType();
            v14 = swift_conformsToProtocol2();
            if (v14)
            {
              if (v13)
              {
                break;
              }
            }

            ++v11;
            if (v9 == v8)
            {
              goto LABEL_28;
            }
          }

          v24 = v14;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v23 = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v10 = sub_1A3D6355C(0, v10[2] + 1, 1, v10);
          }

          v17 = v10[2];
          v16 = v10[3];
          v18 = v24;
          if (v17 >= v16 >> 1)
          {
            v10 = sub_1A3D6355C((v16 > 1), v17 + 1, 1, v10);
            v18 = v24;
          }

          v10[2] = v17 + 1;
          v19 = &v10[2 * v17];
          v19[4] = v13;
          v19[5] = v18;
          v2 = v23;
        }

        while (v9 != v8);
        goto LABEL_28;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_7;
      }
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_28:

    if (v10[2])
    {
      v3 = v10[4];
      swift_unknownObjectRetain();
    }

    else
    {

      v20 = [v25 presentingViewController];
      v3 = sub_1A3D6247C(v20, v21);
    }
  }

  return v3;
}

uint64_t sub_1A3D626F0()
{
  v1 = MEMORY[0x1E69E7D40];

  sub_1A3C2C3A8(v0 + *((*v1 & *v0) + qword_1EB1EB800 + 24), sub_1A3C35B84);
}

id sub_1A3D62800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LemonadeZoomPresentableDetailViewController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EB800), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EB800 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1A3D6287C(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  sub_1A3C2C3A8(a1 + *((*v2 & *a1) + qword_1EB1EB800 + 24), sub_1A3C35B84);
}

uint64_t sub_1A3D629AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for LemonadeFeedSpec(255);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v34[0] = v5;
  v34[1] = v6;
  v34[2] = &protocol witness table for LemonadeFeedSpec;
  v34[3] = v7;
  type metadata accessor for LemonadeSpecsProviderView(255, v34);
  sub_1A3D639BC(255);
  sub_1A5248804();
  sub_1A3D63A24(255);
  sub_1A5248804();
  sub_1A3D63B0C(255);
  v8 = sub_1A5248804();
  WitnessTable = swift_getWitnessTable();
  v10 = MEMORY[0x1E6980A18];
  v32 = WitnessTable;
  v33 = sub_1A3D63DAC(&qword_1EB127950, sub_1A3D639BC, MEMORY[0x1E6980A18]);
  v30 = swift_getWitnessTable();
  v31 = sub_1A3D63DAC(&qword_1EB1278C0, sub_1A3D63A24, v10);
  v28 = swift_getWitnessTable();
  v29 = sub_1A3D63DAC(&qword_1EB127A20, sub_1A3D63B0C, v10);
  v11 = swift_getWitnessTable();
  v13 = type metadata accessor for LemonadeNavigationContainer(0, v8, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24[-v18];
  v25 = v6;
  v26 = v7;
  v27 = v2;

  LemonadeNavigationContainer.init(navigationContext:content:)(v20, sub_1A3D63B40, v8, v11, v16);
  swift_getWitnessTable();
  v21 = *(v14 + 16);
  v21(v19, v16, v13);
  v22 = *(v14 + 8);
  v22(v16, v13);
  v21(a2, v19, v13);
  return (v22)(v19, v13);
}

void sub_1A3D62CCC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v22 = a3;
  v33 = a4;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v26 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadeFeedSpec(255);
  v36[0] = v9;
  v36[1] = a2;
  v36[2] = &protocol witness table for LemonadeFeedSpec;
  v36[3] = a3;
  v10 = type metadata accessor for LemonadeSpecsProviderView(0, v36);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  sub_1A3D639BC(255);
  v13 = sub_1A5248804();
  v29 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v21 - v14;
  sub_1A3D63A24(255);
  v28 = sub_1A5248804();
  v32 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v21 - v15;
  sub_1A3D63B0C(255);
  v23 = sub_1A5248804();
  v31 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v30 = &v21 - v18;
  v36[0] = a1[1];
  v19 = a1[3];

  v20 = v22;
  _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v35);
  LemonadeSpecsProviderView.init(model:presentationContext:content:)(v36, &v35, v19, v9, a2, &protocol witness table for LemonadeFeedSpec, v20, v12);
  swift_getKeyPath();
  v36[0] = *a1;

  swift_getWitnessTable();
  sub_1A524A964();

  (*(v24 + 8))(v12, v10);
  swift_getKeyPath();
  sub_1A3D63A8C(0);
  sub_1A4654ADC();
  sub_1A3D63DAC(&qword_1EB128E10, sub_1A3D63A8C, off_1E7721058);
  sub_1A52459A4();
}

uint64_t sub_1A3D6334C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.navigationContext.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A3D633C8(uint64_t a1)
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D63DF4(a1, v4, sub_1A3D63A58);
  return EnvironmentValues.containerViewControllerReference.setter(v4);
}

uint64_t sub_1A3D63464@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248C74();
  *a1 = result;
  return result;
}

void sub_1A3D634F8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1950F8);
  __swift_project_value_buffer(v0, qword_1EB1950F8);
  sub_1A5246EF4();
}

void *sub_1A3D6355C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A3D63CE8(0, &qword_1EB12B690, sub_1A3D63D4C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3D63D4C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1A3D636A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v24 = a1;
  v21 = *MEMORY[0x1E69E7D40] & *v3;
  v5 = *(v21 + qword_1EB1EB800);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 24);
  v23 = sub_1A3C35B84;
  sub_1A3D63DF4(v11, v3 + v10, sub_1A3C35B84);
  type metadata accessor for LemonadeFeedSpec(0);
  v12 = LemonadeFeedSpec.__allocating_init()();
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + qword_1EB1EB800 + 16)) = v12;
  sub_1A52422E4();
  swift_allocObject();

  v13 = sub_1A52422D4();
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + qword_1EB1EB800 + 32)) = v13;
  (*(v6 + 16))(v8, v22, v5);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = *(v21 + qword_1EB1EB800 + 8);
  (*(v6 + 32))(v15 + v14, v8, v5);
  v25[0] = a2;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = sub_1A3D63E5C;
  v25[4] = v15;
  swift_retain_n();

  v16 = PXSwiftUIHostingViewController.init(rootView:)(v25);
  v17 = sub_1A4654ADC();
  sub_1A3D62318(v17, v18);

  sub_1A3C2C3A8(v24, v23);
  return v16;
}

unint64_t sub_1A3D63AC0(uint64_t a1, uint64_t a2)
{
  result = qword_1EB126B10;
  if (!qword_1EB126B10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126B10);
  }

  return result;
}

uint64_t sub_1A3D63BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A3D63C40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A3D63C88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A3D63CE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A3D63D4C()
{
  result = qword_1EB12B698;
  if (!qword_1EB12B698)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12B698);
  }

  return result;
}

uint64_t sub_1A3D63DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3D63DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3D63EA4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = 0x3FF8000000000000;
  }

  else
  {
    v6 = 0x3FF5555555555555;
  }

  v7 = sub_1A3C47918();
  v9 = v8;
  v10 = sub_1A3C47918();
  v12 = v11;
  v13 = sub_1A3C52D68();
  v15 = v14;
  v17 = v16;
  v18 = sub_1A3C4ED50(v13);
  v23 = 0;
  *v5 = xmmword_1A52F9780;
  v5[16] = 1;
  *(v5 + 3) = v6;
  v5[32] = 0;
  *(v5 + 5) = v7;
  *(v5 + 6) = v9;
  *(v5 + 7) = v10;
  *(v5 + 8) = v12;
  *(v5 + 9) = v13;
  *(v5 + 10) = v15;
  v5[88] = v17;
  v5[89] = v18;
  swift_storeEnumTagMultiPayload();
  v19 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v5, 0, v19, v20 & 1, v22);
}

unint64_t sub_1A3D63FDC()
{
  result = sub_1A3D6C680(MEMORY[0x1E69E7CC0]);
  qword_1EB1689C8 = result;
  return result;
}

uint64_t sub_1A3D64010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1A3D6CDE0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D71318(0, &qword_1EB122D40, sub_1A3D6CE98, sub_1A3D6CDE0, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1A3D6CE98(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v18 = a1;
    sub_1A3CA3A74(0, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
    sub_1A3CA397C(&qword_1EB1290D0, MEMORY[0x1E69C24A0]);
    sub_1A3CA397C(&qword_1EB124D98, MEMORY[0x1E69C2488]);

    sub_1A5242894();
    (*(v13 + 16))(v10, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6CF80(&unk_1EB124EA0, sub_1A3D6CE98, MEMORY[0x1E69C1FE0]);
    sub_1A3D6CF80(&qword_1EB128FF8, sub_1A3D6CDE0, MEMORY[0x1E69C28F8]);
    sub_1A5249744();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v18 = a1;
    sub_1A3CA3A74(0, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
    sub_1A3CA397C(&qword_1EB1290D0, MEMORY[0x1E69C24A0]);

    sub_1A5243E44();
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6CF80(&unk_1EB124EA0, sub_1A3D6CE98, MEMORY[0x1E69C1FE0]);
    sub_1A3D6CF80(&qword_1EB128FF8, sub_1A3D6CDE0, MEMORY[0x1E69C28F8]);
    sub_1A5249744();
    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1A3D644BC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = [v6 transientIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1A524C674();
    v11 = v10;

    v12 = sub_1A524C674();
    if (v11)
    {
      if (v9 == v12 && v11 == v13)
      {
      }

      else
      {
        v15 = sub_1A524EAB4();

        if ((v15 & 1) == 0)
        {
          if (MEMORY[0x1A590D320](v16))
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      sub_1A3C3798C(0, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItem);
      v21[3] = v19;
      v21[4] = sub_1A3CA38CC(&qword_1EB12B6A0, &qword_1EB12A800, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
      v21[0] = a1;

      sub_1A3D64748(v21, a2);
    }
  }

  else
  {
    sub_1A524C674();
  }

  if (MEMORY[0x1A590D320](v18))
  {
LABEL_9:
    v17 = *(a2 + 40);
    if (v17)
    {
      (*((*MEMORY[0x1E69E7D40] & *v17) + 0x2D0))(v6);
    }

    else
    {
      v20 = v6;
    }

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a3);
  }

LABEL_13:
  sub_1A3D6CD30(a2, 0);
}

void sub_1A3D64748(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  [v3 viewMode];
  type metadata accessor for MapDataProvider(0, v5);
  static MapDataProvider.sharedProvider(for:)(v4);
}

void sub_1A3D64870(void x0_0, void x1_0, uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A3D644BC(a1, a2, (&v7 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0)));
}

uint64_t sub_1A3D649D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
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

char *sub_1A3D64B88(unint64_t a1, unint64_t *a2, void *a3, __n128 a4)
{
  if (a1 >> 62)
  {
    v7 = sub_1A524E2B4();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1A3D3E490(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        MEMORY[0x1A59097F0](i, a1);
        sub_1A3C52C70(0, a2, a3);
        swift_dynamicCast();
        v18 = v8;
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1A3D3E490((v11 > 1), v12 + 1, 1);
          v8 = v18;
        }

        *(v8 + 16) = v12 + 1;
        sub_1A3C57128(v17, (v8 + 32 * v12 + 32));
      }
    }

    else
    {
      v13 = (a1 + 32);
      sub_1A3C52C70(0, a2, a3);
      do
      {
        v14 = *v13;
        swift_dynamicCast();
        v18 = v8;
        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1A3D3E490((v15 > 1), v16 + 1, 1);
          v8 = v18;
        }

        *(v8 + 16) = v16 + 1;
        sub_1A3C57128(v17, (v8 + 32 * v16 + 32));
        ++v13;
        --v7;
      }

      while (v7);
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3D64D74@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v55 = a3;
  v3 = sub_1A5243834();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C47B0C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v40 - v6;
  v51 = sub_1A5243EC4();
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697F948];
  sub_1A3D71318(0, &qword_1EB12B6B0, sub_1A3D6D084, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  sub_1A3D6D084(0);
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3D6D534(0);
  v54 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D71318(0, &qword_1EB12B6D8, type metadata accessor for MapSnapshotView, sub_1A3D6D534, v8);
  v52 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  sub_1A3C47B0C(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v53 = type metadata accessor for MapSnapshotView(0);
  MEMORY[0x1EEE9AC00](v53);
  sub_1A5243404();
  v21 = *(v56 + 16);

  v22 = [v21 transientIdentifier];

  if (!v22)
  {
    sub_1A524C674();
    goto LABEL_7;
  }

  v23 = sub_1A524C674();
  v25 = v24;

  v26 = sub_1A524C674();
  if (!v25)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v23 == v26 && v25 == v27)
  {

    goto LABEL_13;
  }

  v39 = sub_1A524EAB4();

  if (v39)
  {
LABEL_13:
    type metadata accessor for MapDataProvider(0, v28);
    static MapDataProvider.sharedProvider(for:)(v41);
  }

LABEL_8:
  sub_1A5243404();
  v29 = PhotoKitItem<>.isContentPrivacyEnabled.getter();

  if (v29)
  {
    *v14 = sub_1A524BC74();
    v14[1] = v31;
    sub_1A3D6D65C(0);
    sub_1A3D656E8(v14 + *(v32 + 44));
    sub_1A3D6D6C4(v14, v11, sub_1A3D6D084);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6CF80(&qword_1EB12B6E0, sub_1A3D6D084, MEMORY[0x1E6981880]);
    sub_1A3D6CF80(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    v33 = v49;
    sub_1A5249744();
    sub_1A3D6D72C(v14, sub_1A3D6D084);
  }

  else
  {
    PhotosObservableListCellModel.keyAsset.getter(v30);
    v56 = 0u;
    v57 = 0u;
    v58 = 1;
    v34 = sub_1A52429A4();
    (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
    (*(v43 + 104))(v45, *MEMORY[0x1E69C2678], v44);
    v35 = v46;
    sub_1A5243ED4();
    v36 = v47;
    v37 = v51;
    (*(v47 + 16))(v11, v35, v51);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6CF80(&qword_1EB12B6E0, sub_1A3D6D084, MEMORY[0x1E6981880]);
    sub_1A3D6CF80(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    v33 = v49;
    sub_1A5249744();
    (*(v36 + 8))(v35, v37);
  }

  sub_1A3D6D6C4(v33, v19, sub_1A3D6D534);
  swift_storeEnumTagMultiPayload();
  sub_1A3D6CF80(&qword_1EB12A5F8, type metadata accessor for MapSnapshotView, &unk_1A531F5A0);
  sub_1A3D6D57C();
  sub_1A5249744();
  return sub_1A3D6D72C(v33, sub_1A3D6D534);
}

void sub_1A3D656E8(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_1A5242234();
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v46 - v5;
  v6 = sub_1A5242274();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5242264();
  v46 = v10;
  v11 = *(v10 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3D6D1E8(0, v14);
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6D1A0(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DA14(0, &qword_1EB123950, sub_1A3D6D1A0, MEMORY[0x1E697EC00]);
  v50 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21 - 8);
  v49 = &v46 - v22;
  v23 = sub_1A52433F4();
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (v24)
  {
    v26 = v24;
  }

  *v13 = v25;
  v13[1] = v26;
  (*(v11 + 104))(v13, *MEMORY[0x1E69C1D40], v10);
  v27 = v9;
  (*(v7 + 104))(v9, *MEMORY[0x1E69C1D48], v6);
  sub_1A5242184();
  v28 = v53;
  sub_1A5242194();
  v29 = *(v54 + 8);
  v30 = v3;
  v31 = v55;
  v29(v30, v55);
  sub_1A5242B54();
  v29(v28, v31);
  (*(v7 + 8))(v27, v6);
  (*(v47 + 8))(v13, v46);
  v32 = sub_1A524B4A4();
  KeyPath = swift_getKeyPath();
  v34 = v48;
  (*(v51 + 32))(v48, v17, v52);
  v35 = (v34 + *(v19 + 44));
  *v35 = KeyPath;
  v35[1] = v32;
  sub_1A524BC74();
  sub_1A5248AD4();
  v36 = v49;
  sub_1A3CBD4D4(v34, v49);
  v37 = (v36 + *(v50 + 44));
  v38 = v62;
  v37[4] = v61;
  v37[5] = v38;
  v37[6] = v63;
  v39 = v58;
  *v37 = v57;
  v37[1] = v39;
  v40 = v60;
  v37[2] = v59;
  v37[3] = v40;
  v41 = sub_1A524B2F4();
  LOBYTE(v32) = sub_1A524A064();
  v42 = v36;
  v43 = v56;
  sub_1A3CBD538(v42, v56);
  sub_1A3D6D0E8(0);
  v45 = v43 + *(v44 + 36);
  *v45 = v41;
  *(v45 + 8) = v32;
}

uint64_t sub_1A3D65C58@<X0>(uint64_t a1@<X8>)
{
  if (shouldUseNewCollectionsLayout()())
  {

    return sub_1A42E8048(a1);
  }

  else
  {

    return sub_1A42E7E24(0, 1, 1, a1);
  }
}

double sub_1A3D65D0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = sub_1A42E6C64(a2, a3);
  *a4 = a1;
  a4[1] = v6;
  a4[2] = v7;
  v8 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(a4, 0, 1, v8);

  return result;
}

BOOL sub_1A3D65E00(uint64_t a1)
{
  sub_1A5243404();
  v1 = PhotoKitItem<>.isContentPrivacyEnabled.getter();

  return (v1 & 1) == 0;
}

uint64_t sub_1A3D65EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3CA38CC(&qword_1EB125C60, &qword_1EB12A800, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A3D65F3C(id *a1)
{
  v1 = *a1;
  if ([*a1 px_isUtilityCollection])
  {
    return 1;
  }

  else
  {
    return [v1 px_isMapVirtualCollection];
  }
}

uint64_t sub_1A3D65FB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *v3;
  v7 = *(v3 + 8);
  sub_1A524CC54();
  v10[2] = v6;
  v11 = v7;
  v12 = v5;
  v13 = a3;
  return sub_1A3D649D0(sub_1A3D7187C, v10, "PhotosUICore/LemonadeUtilitiesFeature.swift", 43, 2, 154, v8);
}

unint64_t sub_1A3D66060(uint64_t a1)
{
  v2 = sub_1A3C52114();

  return sub_1A42E6E80(a1, v2);
}

id sub_1A3D6609C(uint64_t a1)
{
  v1 = [*(a1 + 16) px_virtualCollections];
  v2 = [v1 utilitiesCollectionList];

  return v2;
}

void *sub_1A3D660F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 40);
  v4 = v2;
  v5 = v3;
  return v2;
}

uint64_t sub_1A3D66128@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  *a2 = v3;
  v4 = *(type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider(0) + 20);
  v5 = v3;
  v6 = sub_1A437C480();
  return sub_1A437C488(v6, a2 + v4);
}

uint64_t sub_1A3D66174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  if ((static LemonadePhotoLibraryContext.== infix(_:_:)(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return sub_1A524EAB4();
}

uint64_t sub_1A3D6622C()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext(0, v0);
  sub_1A3D6CF80(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A3D662DC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  sub_1A3D6CF80(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524C794();
}

uint64_t sub_1A3D66384(uint64_t a1)
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext(0, v1);
  sub_1A3D6CF80(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A3D66430(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  if ((static LemonadePhotoLibraryContext.== infix(_:_:)(v3, v6) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1A524EAB4();
}

void sub_1A3D664DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = a1;
  sub_1A3CA3A74(0, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
  sub_1A3CA397C(&qword_1EB1290D0, MEMORY[0x1E69C24A0]);

  v24 = a2;
  sub_1A5243E44();
  KeyPath = swift_getKeyPath();
  sub_1A3D6D7AC(0);
  v9 = (a2 + *(v8 + 36));
  sub_1A3D6D7F4(0);
  v22 = *(v10 + 28);
  v11 = v2;
  sub_1A3C5813C(v2, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);
  sub_1A524CC54();
  v12 = sub_1A524CC44();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1A3C58004(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);
  sub_1A3C5813C(v2, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);
  v16 = sub_1A524CC44();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = MEMORY[0x1E69E85E0];
  sub_1A3C58004(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v13, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);
  sub_1A524BB24();
  v18 = v22;
  sub_1A524B944();
  sub_1A3D6D85C(0);
  (*(*(v19 - 8) + 56))(v9 + v18, 0, 1, v19);
  *v9 = KeyPath;
  v20 = sub_1A3D6C8A0(*v11);
  LOBYTE(v13) = (*(*v20 + 144))(v20);

  sub_1A3D6DA14(0, &qword_1EB12B700, sub_1A3D6D7AC, MEMORY[0x1E69805C0]);
  *(v24 + *(v21 + 36)) = (v13 & 1) == 0;
}

uint64_t sub_1A3D66864(uint64_t a1)
{
  sub_1A3D6D828(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3C5813C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1A3D6D828);
  return sub_1A5249184();
}

uint64_t sub_1A3D66900(uint64_t a1, void **a2)
{
  v3 = sub_1A524BB24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A3D6C8A0(*a2);
  (*(v4 + 104))(v6, *MEMORY[0x1E697D708], v3);
  v8 = sub_1A524BB04();
  (*(v4 + 8))(v6, v3);
  (*(*v7 + 152))(v8 & 1);
}

void sub_1A3D66A40(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = [v5 transientIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A524C674();
    v10 = v9;

    v11 = sub_1A524C674();
    if (v10)
    {
      if (v8 == v11 && v10 == v12)
      {
      }

      else
      {
        v14 = sub_1A524EAB4();

        if ((v14 & 1) == 0)
        {
          if (MEMORY[0x1A590D320](v15))
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      v26 = 0;
      memset(v25, 0, sizeof(v25));
      sub_1A3D64748(v25, a2);
    }
  }

  else
  {
    sub_1A524C674();
  }

  if (MEMORY[0x1A590D320](v17))
  {
LABEL_9:
    v16 = *(a2 + 40);
    if (v16)
    {
      (*((*MEMORY[0x1E69E7D40] & *v16) + 0x2D0))(v5);
    }

    else
    {
      v24 = v5;
    }

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a3);
  }

LABEL_13:
  sub_1A4A49A88();
  *&v25[0] = v18;
  sub_1A3D6BDD4(&v27, 15);
  v19 = *&v25[0];
  v20 = *(a2 + 40);
  if (v20)
  {
    v21 = v20;
    v22 = sub_1A4A4A0D4();
    sub_1A3D6B090(v22);

    v19 = *&v25[0];
  }

  type metadata accessor for UtilityAlbumItemListManager(0);

  sub_1A4426BEC(v23, 0, v19);
}

uint64_t sub_1A3D66D10@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  sub_1A3D711A4(0, &qword_1EB12B708, sub_1A3D6DDB0, sub_1A3D6E940);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  sub_1A3D6E940(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A3D6DDB0(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249834();
  v27 = v2;
  sub_1A3D71318(0, &qword_1EB12B718, sub_1A3D6DE64, sub_1A3D6E100, MEMORY[0x1E697F960]);
  sub_1A3D6E5A4();
  sub_1A5247F24();
  sub_1A5249824();
  v25 = v2;
  v26 = v22;
  sub_1A3C36FC0(0, &qword_1EB12B780, &type metadata for LemonadeTransientCollectionSortingUtilities.ResetButton, MEMORY[0x1E69E6720]);
  sub_1A3D6E9D4();
  sub_1A5247F24();
  v17 = *(v23 + 48);
  (*(v14 + 16))(v5, v16, v13);
  (*(v8 + 16))(&v5[v17], v10, v7);
  v18 = v24;
  sub_1A52495D4();
  (*(v8 + 8))(v10, v7);
  (*(v14 + 8))(v16, v13);
  sub_1A3D6EB9C(0);
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_1A3D670D0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  sub_1A3D6FF74(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v64 - v4;
  sub_1A3D6E2C8(0);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6E1AC(0, &qword_1EB12B750, sub_1A3D6E2C8, sub_1A3D6E35C, sub_1A3D6E470);
  v77 = v7;
  v75 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v64 - v8;
  sub_1A3D6E100(0);
  v83 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D71318(0, &qword_1EB12B8D8, sub_1A3D6DE64, sub_1A3D6E100, MEMORY[0x1E697F948]);
  v81 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v64 - v12;
  v13 = type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider(0);
  v79 = *(v13 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DF58(0);
  v19 = v18;
  v65 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DF10(0);
  v69 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6E1AC(0, &qword_1EB12B728, sub_1A3D6DF10, sub_1A3D6DFEC, sub_1A3D6E020);
  v67 = v25;
  v66 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v64 - v26;
  sub_1A3D6DE64(0);
  v80 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v68 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A3D6C8A0(*a1);
  v31 = (*(*v30 + 144))(v30);

  if (v31)
  {
    sub_1A5247B44();
    sub_1A3C5813C(a1, &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);
    v32 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v33 = swift_allocObject();
    sub_1A3C58004(&v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);
    MEMORY[0x1A5906A80](v17, sub_1A3D718FC, v33);
    v85 = sub_1A3C38BD4(0xD00000000000001DLL);
    v86 = v34;
    sub_1A3D6CF80(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
    sub_1A3D5F9DC();
    sub_1A524AC94();

    (*(v65 + 8))(v21, v19);
    sub_1A3D6DFEC(0);
    v36 = v35;
    v37 = sub_1A3D6E020();
    v38 = sub_1A5243474();
    v39 = sub_1A3D6CF80(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    v40 = v69;
    v85 = v69;
    v86 = v38;
    v87 = v37;
    v88 = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1A524A4C4();
    sub_1A3C58274(v24, sub_1A3D6DF10);
    v85 = v40;
    v86 = v36;
    v87 = v37;
    v88 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v42 = v68;
    v43 = v67;
    sub_1A524AA94();
    (*(v66 + 8))(v27, v43);
    v44 = sub_1A3D6DE64;
    sub_1A3D6D6C4(v42, v82, sub_1A3D6DE64);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6E668();
    sub_1A3D6E7D4();
    sub_1A5249744();
    v45 = v42;
  }

  else
  {
    v85 = sub_1A3C38BD4(0xD000000000000019);
    v86 = v46;
    sub_1A3C5813C(a1, &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);
    v47 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v48 = swift_allocObject();
    sub_1A3C58004(&v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);
    sub_1A3D5F9DC();
    v49 = v70;
    sub_1A524B754();
    v85 = sub_1A3C38BD4(0xD000000000000019);
    v86 = v50;
    sub_1A3D6E520();
    v51 = v74;
    v52 = v72;
    sub_1A524AC94();

    (*(v71 + 8))(v49, v52);
    sub_1A3D6E35C(0);
    v54 = v53;
    v55 = sub_1A3D6E470();
    v56 = sub_1A5243474();
    v57 = sub_1A3D6CF80(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    v58 = v78;
    v85 = v78;
    v86 = v56;
    v87 = v55;
    v88 = v57;
    v59 = swift_getOpaqueTypeConformance2();
    v60 = v73;
    sub_1A524A4C4();
    sub_1A3C58274(v51, sub_1A3D6E2C8);
    v85 = v58;
    v86 = v54;
    v87 = v55;
    v88 = v59;
    swift_getOpaqueTypeConformance2();
    v62 = v76;
    v61 = v77;
    sub_1A524AA94();
    (*(v75 + 8))(v60, v61);
    v44 = sub_1A3D6E100;
    sub_1A3D6D6C4(v62, v82, sub_1A3D6E100);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6E668();
    sub_1A3D6E7D4();
    sub_1A5249744();
    v45 = v62;
  }

  return sub_1A3D6D72C(v45, v44);
}

uint64_t sub_1A3D67CBC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = sub_1A5243474();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  a2(0);
  a3();
  sub_1A3D6CF80(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
  sub_1A524A944();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A3D67E0C(uint64_t a1)
{
  sub_1A3CA3A74(0, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
  sub_1A3CA397C(&qword_1EB1290D0, MEMORY[0x1E69C24A0]);

  return sub_1A5243E44();
}

uint64_t sub_1A3D67EF0()
{
  v1 = sub_1A3D6C8A0(*v0);
  v2 = (*(*v1 + 144))(v1);

  return v2 & 1;
}

uint64_t sub_1A3D67F4C()
{
  sub_1A3D6CF80(&qword_1EB129ED0, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider, &unk_1A52F98B0);

  return sub_1A3C47918();
}

uint64_t sub_1A3D67FB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v39 = a2;
  sub_1A3D6EEB4(0, &qword_1EB12B7A0, sub_1A3D6EC24, sub_1A3D6ED8C, MEMORY[0x1E69C2098]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3D6EE6C(0);
  v43 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D71318(0, &qword_1EB12B7C0, sub_1A3D6EFA4, sub_1A3D6EE6C, MEMORY[0x1E697F948]);
  v40 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v42 = v36 - v12;
  v13 = sub_1A5243284();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6EFA4(0);
  v41 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v21 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x540);
    v37 = v18;
    v22 = a3;
    v21();
    v44 = a1;

    sub_1A52426E4();
    v36[1] = v23;
    v24 = swift_allocObject();
    v25 = v39;
    v24[2] = v39;
    v24[3] = a3;
    v24[4] = a1;
    (*(v14 + 104))(v16, *MEMORY[0x1E69C23E0], v13);
    v26 = v22;

    v27 = v25;
    sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
    sub_1A3CA3A74(0, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    sub_1A3D71318(0, &qword_1EB12B7D0, type metadata accessor for MapSnapshotView, sub_1A3D6D534, MEMORY[0x1E697F960]);
    sub_1A3D6ECFC();
    sub_1A3D6F0AC();
    sub_1A5242AA4();
    v28 = v37;
    v29 = v41;
    (*(v37 + 16))(v42, v20, v41);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6CF80(&qword_1EB12B7E0, sub_1A3D6EFA4, MEMORY[0x1E69C20C8]);
    sub_1A3D6CF80(&qword_1EB12B7E8, sub_1A3D6EE6C, MEMORY[0x1E69C20A8]);
    sub_1A5249744();

    return (*(v28 + 8))(v20, v29);
  }

  else
  {
    v44 = a1;
    sub_1A3CA3A74(0, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    v37 = v31;
    sub_1A3D6EC24(0);
    sub_1A3D6EC6C();
    sub_1A3D6ECFC();
    sub_1A3D6ED8C();

    sub_1A5242A24();
    v32 = swift_allocObject();
    v33 = v39;
    v32[2] = a1;
    v32[3] = v33;
    v32[4] = 0;

    v34 = v33;
    sub_1A5242A34();
    v35 = v43;
    (*(v8 + 16))(v42, v10, v43);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6CF80(&qword_1EB12B7E0, sub_1A3D6EFA4, MEMORY[0x1E69C20C8]);
    sub_1A3D6CF80(&qword_1EB12B7E8, sub_1A3D6EE6C, MEMORY[0x1E69C20A8]);
    sub_1A5249744();
    return (*(v8 + 8))(v10, v35);
  }
}

uint64_t sub_1A3D68730@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a1;
  v34 = a2;
  v2 = sub_1A5243834();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C47B0C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - v5;
  v33 = sub_1A5243EC4();
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D71318(0, &qword_1EB12B8D0, type metadata accessor for MapSnapshotView, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  sub_1A3C47B0C(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v32 = type metadata accessor for MapSnapshotView(0);
  v26[1] = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  sub_1A52426D4();
  v14 = *(v35 + 16);

  v15 = [v14 transientIdentifier];

  if (!v15)
  {
    sub_1A524C674();
    goto LABEL_7;
  }

  v16 = sub_1A524C674();
  v18 = v17;

  v19 = sub_1A524C674();
  if (!v18)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v16 == v19 && v18 == v20)
  {

    goto LABEL_10;
  }

  v25 = sub_1A524EAB4();

  if (v25)
  {
LABEL_10:
    type metadata accessor for MapDataProvider(0, v21);
    static MapDataProvider.sharedProvider(for:)(v27);
  }

LABEL_8:
  PhotosObservableAlbum.keyAsset.getter();
  v35 = 0u;
  v36 = 0u;
  v37 = 1;
  v22 = sub_1A52429A4();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  (*(v28 + 104))(v30, *MEMORY[0x1E69C2678], v29);
  sub_1A5243ED4();
  v23 = v33;
  (*(v7 + 16))(v12, v9, v33);
  swift_storeEnumTagMultiPayload();
  sub_1A3D6CF80(&qword_1EB12A5F8, type metadata accessor for MapSnapshotView, &unk_1A531F5A0);
  sub_1A3D6CF80(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
  sub_1A5249744();
  return (*(v7 + 8))(v9, v23);
}

uint64_t sub_1A3D68DF8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v54 = a3;
  v3 = sub_1A5243834();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C47B0C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v39 - v6;
  v50 = sub_1A5243EC4();
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697F948];
  sub_1A3D71318(0, &qword_1EB12B6B0, sub_1A3D6D084, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  sub_1A3D6D084(0);
  v49 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3D6D534(0);
  v53 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D71318(0, &qword_1EB12B6D8, type metadata accessor for MapSnapshotView, sub_1A3D6D534, v8);
  v51 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  sub_1A3C47B0C(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v52 = type metadata accessor for MapSnapshotView(0);
  MEMORY[0x1EEE9AC00](v52);
  sub_1A52426D4();
  v21 = *(v55 + 16);

  v22 = [v21 transientIdentifier];

  if (!v22)
  {
    sub_1A524C674();
    goto LABEL_7;
  }

  v23 = sub_1A524C674();
  v25 = v24;

  v26 = sub_1A524C674();
  if (!v25)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v23 == v26 && v25 == v27)
  {

    goto LABEL_13;
  }

  v38 = sub_1A524EAB4();

  if (v38)
  {
LABEL_13:
    type metadata accessor for MapDataProvider(0, v28);
    static MapDataProvider.sharedProvider(for:)(v40);
  }

LABEL_8:
  sub_1A52426D4();
  v29 = PhotoKitItem<>.isContentPrivacyEnabled.getter();

  if (v29)
  {
    *v14 = sub_1A524BC74();
    v14[1] = v30;
    sub_1A3D6D65C(0);
    sub_1A3D6976C(v14 + *(v31 + 44));
    sub_1A3D6D6C4(v14, v11, sub_1A3D6D084);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6CF80(&qword_1EB12B6E0, sub_1A3D6D084, MEMORY[0x1E6981880]);
    sub_1A3D6CF80(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    v32 = v48;
    sub_1A5249744();
    sub_1A3D6D72C(v14, sub_1A3D6D084);
  }

  else
  {
    PhotosObservableAlbum.keyAsset.getter();
    v55 = 0u;
    v56 = 0u;
    v57 = 1;
    v33 = sub_1A52429A4();
    (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
    (*(v42 + 104))(v44, *MEMORY[0x1E69C2678], v43);
    v34 = v45;
    sub_1A5243ED4();
    v35 = v46;
    v36 = v50;
    (*(v46 + 16))(v11, v34, v50);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6CF80(&qword_1EB12B6E0, sub_1A3D6D084, MEMORY[0x1E6981880]);
    sub_1A3D6CF80(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    v32 = v48;
    sub_1A5249744();
    (*(v35 + 8))(v34, v36);
  }

  sub_1A3D6D6C4(v32, v19, sub_1A3D6D534);
  swift_storeEnumTagMultiPayload();
  sub_1A3D6CF80(&qword_1EB12A5F8, type metadata accessor for MapSnapshotView, &unk_1A531F5A0);
  sub_1A3D6D57C();
  sub_1A5249744();
  return sub_1A3D6D72C(v32, sub_1A3D6D534);
}

void sub_1A3D6976C(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_1A5242234();
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v46 - v5;
  v6 = sub_1A5242274();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5242264();
  v46 = v10;
  v11 = *(v10 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3D6D1E8(0, v14);
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6D1A0(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DA14(0, &qword_1EB123950, sub_1A3D6D1A0, MEMORY[0x1E697EC00]);
  v50 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21 - 8);
  v49 = &v46 - v22;
  sub_1A3D71010();
  v23 = sub_1A5242714();
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (v24)
  {
    v26 = v24;
  }

  *v13 = v25;
  v13[1] = v26;
  (*(v11 + 104))(v13, *MEMORY[0x1E69C1D40], v10);
  v27 = v9;
  (*(v7 + 104))(v9, *MEMORY[0x1E69C1D48], v6);
  sub_1A5242184();
  v28 = v53;
  sub_1A5242194();
  v29 = *(v54 + 8);
  v30 = v3;
  v31 = v55;
  v29(v30, v55);
  sub_1A5242B54();
  v29(v28, v31);
  (*(v7 + 8))(v27, v6);
  (*(v47 + 8))(v13, v46);
  v32 = sub_1A524B4A4();
  KeyPath = swift_getKeyPath();
  v34 = v48;
  (*(v51 + 32))(v48, v17, v52);
  v35 = (v34 + *(v19 + 44));
  *v35 = KeyPath;
  v35[1] = v32;
  sub_1A524BC74();
  sub_1A5248AD4();
  v36 = v49;
  sub_1A3CBD4D4(v34, v49);
  v37 = (v36 + *(v50 + 44));
  v38 = v62;
  v37[4] = v61;
  v37[5] = v38;
  v37[6] = v63;
  v39 = v58;
  *v37 = v57;
  v37[1] = v39;
  v40 = v60;
  v37[2] = v59;
  v37[3] = v40;
  v41 = sub_1A524B2F4();
  LOBYTE(v32) = sub_1A524A064();
  v42 = v36;
  v43 = v56;
  sub_1A3CBD538(v42, v56);
  sub_1A3D6D0E8(0);
  v45 = v43 + *(v44 + 36);
  *v45 = v41;
  *(v45 + 8) = v32;
}

uint64_t sub_1A3D69CB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8))
  {
    v6 = sub_1A437C79C();
    return sub_1A3C5813C(v6, a1, type metadata accessor for LemonadeFeedBodyStyle);
  }

  else
  {
    v8 = sub_1A43A1D44();
    sub_1A3C5813C(v8, v5, type metadata accessor for LemonadeItemsLayoutSpec.Style);
    v9 = sub_1A3DC1AF8();
    return sub_1A437C3B8(v5, 5, v9, v10 & 1, a1);
  }
}

uint64_t sub_1A3D69DCC()
{
  sub_1A3D6FFF4();

  return sub_1A3C47918();
}

uint64_t sub_1A3D69E0C(uint64_t a1, uint64_t *a2)
{
  sub_1A3D6EC24(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D7113C(0, &qword_1EB12B8C8, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v10 - v7);
  if (sub_1A52426B4())
  {
    *v8 = sub_1A524B434();
    swift_storeEnumTagMultiPayload();
    sub_1A3D6ED8C();
    return sub_1A5249744();
  }

  else
  {
    sub_1A3D68730(*a2, v5);
    sub_1A3C5813C(v5, v8, sub_1A3D6EC24);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6ED8C();
    sub_1A5249744();
    return sub_1A3C58274(v5, sub_1A3D6EC24);
  }
}

uint64_t sub_1A3D6A054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[2] = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1A3D6EEB4(0, &qword_1EB12B7F0, sub_1A3D6F1D4, sub_1A3D6F1F4, MEMORY[0x1E69C2098]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10[3] = a1;
  sub_1A3CA3A74(0, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
  sub_1A3D6F1D4(0);
  sub_1A3D6EC6C();
  sub_1A3D6ECFC();
  sub_1A3D6F1F4();

  sub_1A5242A24();
  sub_1A3C5813C(v10[1], v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeUtilitiesFeature.MacFeedProvider);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_1A3C58004(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LemonadeUtilitiesFeature.MacFeedProvider);

  return sub_1A5242A34();
}

uint64_t sub_1A3D6A2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_1A47A9538(v3, 0, 0, 0, v5, 0, 0, a2);
  type metadata accessor for LemonadeNavigationDestination(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A3D6A38C()
{
  sub_1A3D6CF80(&qword_1EB12B860, type metadata accessor for LemonadeUtilitiesFeature.MacFeedProvider, &unk_1A52F9958);

  return sub_1A3C47918();
}

uint64_t sub_1A3D6A3F8(uint64_t a1)
{
  sub_1A3D71010();
  result = sub_1A5242714();
  if (!v2)
  {
    return 0x6C676E6174636572;
  }

  return result;
}

unint64_t sub_1A3D6A44C@<X0>(uint64_t a1@<X8>)
{
  v24 = sub_1A5243834();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C47B0C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1A5243EC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D71318(0, &qword_1EB12B8C0, sub_1A3D6F35C, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  if (sub_1A52426B4())
  {
    v15 = sub_1A5249A14();
    v16 = sub_1A524A064();
    *v14 = 1;
    *(v14 + 4) = 256;
    *(v14 + 3) = v15;
    v14[16] = v16;
    swift_storeEnumTagMultiPayload();
    sub_1A3D6F35C(0);
    sub_1A3D6F62C();
    sub_1A3D6CF80(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    return sub_1A5249744();
  }

  result = sub_1A5242704();
  if (result >> 62)
  {
    v20 = result;
    v21 = sub_1A524E2B4();
    result = v20;
    v23 = a1;
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = a1;
    if (!v18)
    {
LABEL_9:

      v25 = 0u;
      v26 = 0u;
      v27 = 1;
      v22 = sub_1A52429A4();
      (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
      (*(v2 + 104))(v4, *MEMORY[0x1E69C2678], v24);
      sub_1A5243ED4();
      (*(v9 + 16))(v14, v11, v8);
      swift_storeEnumTagMultiPayload();
      sub_1A3D6F35C(0);
      sub_1A3D6F62C();
      sub_1A3D6CF80(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
      sub_1A5249744();
      return (*(v9 + 8))(v11, v8);
    }
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
    goto LABEL_9;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(result + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_1A3D6A918(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, char a4@<W4>)
{
  v7 = *(a1 + 16);
  v8 = [v7 transientIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1A524C674();
    v12 = v11;

    v13 = sub_1A524C674();
    if (v12)
    {
      if (v10 == v13 && v12 == v14)
      {
      }

      else
      {
        v16 = sub_1A524EAB4();

        if ((v16 & 1) == 0)
        {
          if (MEMORY[0x1A590D320](v17))
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      v28 = 0;
      memset(v27, 0, sizeof(v27));
      sub_1A3D64748(v27, a2);
    }
  }

  else
  {
    sub_1A524C674();
  }

  if (MEMORY[0x1A590D320](v19))
  {
LABEL_9:
    v18 = *(a2 + 40);
    if (v18)
    {
      (*((*MEMORY[0x1E69E7D40] & *v18) + 0x2D0))(v7);
    }

    else
    {
      v26 = v7;
    }

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a3);
  }

LABEL_13:
  sub_1A4A49A88();
  *&v27[0] = v20;
  sub_1A3D6BDD4(&v29, 15);
  v21 = *&v27[0];
  v22 = *(a2 + 40);
  if (v22)
  {
    v23 = v22;
    v24 = sub_1A4A4A0D4();
    sub_1A3D6B090(v24);

    v21 = *&v27[0];
  }

  type metadata accessor for UtilityAlbumItemListManager(0);

  sub_1A4426BEC(v25, a4 & 1, v21);
}

uint64_t sub_1A3D6ABEC@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8))
  {
    v5 = 0x3FF8000000000000;
  }

  else
  {
    v5 = 0x3FF5555555555555;
  }

  v6 = sub_1A3C47918();
  v8 = v7;
  v9 = sub_1A3C47918();
  v11 = v10;
  v12 = sub_1A3C52D68();
  v14 = v13;
  v16 = v15;
  v17 = sub_1A3C4ED50(v12);
  v22 = 0;
  *v4 = xmmword_1A52F9780;
  v4[16] = 1;
  *(v4 + 3) = v5;
  v4[32] = 0;
  *(v4 + 5) = v6;
  *(v4 + 6) = v8;
  *(v4 + 7) = v9;
  *(v4 + 8) = v11;
  *(v4 + 9) = v12;
  *(v4 + 10) = v14;
  v4[88] = v16;
  v4[89] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v4, 0, v18, v19 & 1, v21);
}

void sub_1A3D6AD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1A4A49A88();
  v13 = v7;
  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1A4A4A0D4();
    sub_1A3D6B090(v10);

    v11 = v13;
  }

  else
  {
    v11 = v7;
  }

  type metadata accessor for UtilityAlbumItemListManager(0);

  sub_1A4426BEC(v12, a5 & 1, v11);
}

uint64_t sub_1A3D6ADB4(uint64_t a1)
{
  sub_1A3D6F278(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = a1;
  sub_1A3CA3A74(0, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
  sub_1A3D6F314(0);
  sub_1A3D6EC6C();
  sub_1A3D6ECFC();
  sub_1A3D6F57C();

  sub_1A5242A44();
  sub_1A3D6EEB4(0, &qword_1EB12B810, sub_1A3D6F314, sub_1A3D6F57C, MEMORY[0x1E69C20B0]);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  return sub_1A5242A54();
}

void sub_1A3D6AFD0()
{
  v0 = sub_1A524C634();
  PhotoKitItemListImplementation.numberOfItems.getter();
  PXLocalizedCountsDescription(v0);
}

uint64_t sub_1A3D6B054()
{
  sub_1A3D70404();

  return sub_1A3C47918();
}

uint64_t sub_1A3D6B090(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1A3D6BDD4(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

id sub_1A3D6B16C()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 utilitiesCollectionList];

  return v2;
}

void sub_1A3D6B1C4(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A3D6B1D0(uint64_t a1)
{
  sub_1A5240E64();
  v2 = MEMORY[0x1E6968FB0];
  sub_1A3D6CF80(&qword_1EB126058, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v3 = sub_1A524C4A4();
  return sub_1A3D6B9C8(a1, v3, MEMORY[0x1E6968FB0], &qword_1EB126050, v2, MEMORY[0x1E6968FC8]);
}

unint64_t sub_1A3D6B2A4(uint64_t a1)
{
  sub_1A5243B94();
  v2 = MEMORY[0x1E69C2818];
  sub_1A3D6CF80(&qword_1EB124D20, MEMORY[0x1E69C2818], MEMORY[0x1E69C2820]);
  v3 = sub_1A524C4A4();
  return sub_1A3D6B9C8(a1, v3, MEMORY[0x1E69C2818], &qword_1EB1398F0, v2, MEMORY[0x1E69C2828]);
}

uint64_t sub_1A3D6B378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1A3D71760(0);
  v39 = v4;
  result = sub_1A524E774();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1A3D6CF80(&qword_1EB126058, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      result = sub_1A524C4A4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1A3D6B744(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1A3D6B1D0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1A3D6BB68();
      goto LABEL_7;
    }

    sub_1A3D6B378(v17, a3 & 1);
    v22 = sub_1A3D6B1D0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1A3D6B910(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1A3D6B910(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1A5240E64();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1A3D6B9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1A3D6CF80(v24, v25, v26);
      v20 = sub_1A524C594();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

void sub_1A3D6BB68()
{
  v1 = v0;
  v31 = sub_1A5240E64();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D71760(0);
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;

        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }
}

uint64_t sub_1A3D6BDD4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A3D715CC();
  v6 = sub_1A524C4A4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1A3D71620();
    while ((sub_1A524C594() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A3D6C158(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A3D6BF0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A3D71674(0);
  result = sub_1A524E3B4();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1A3D715CC();
      result = sub_1A524C4A4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}