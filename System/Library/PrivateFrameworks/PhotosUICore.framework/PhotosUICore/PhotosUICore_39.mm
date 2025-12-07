unint64_t sub_1A410F394()
{
  result = qword_1EB132810;
  if (!qword_1EB132810)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB132810);
  }

  return result;
}

void PXDisplayAssetCollection.photosCollectionTitleInfo.getter(uint64_t *a2@<X8>)
{
  v3 = v2;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    sub_1A5244D04();
    v28[3] = sub_1A410F6A0(0, v7);
    v28[0] = v6;
    swift_unknownObjectRetain_n();
    v8 = sub_1A5244E84();
    __swift_destroy_boxed_opaque_existential_0(v28);
    if (v8)
    {
      swift_unknownObjectRetain();
      v9 = [v6 localizedSmartDescription];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1A524C674();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      v25 = [v6 localizedDateDescription];
      swift_unknownObjectRelease();
      if (v25)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v17 = [v6 dateDescription];
      if (v17)
      {
        v18 = v17;
        v11 = sub_1A524C674();
        v13 = v19;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      v26 = [v3 localizedSubtitle];
      if (v26)
      {
        v25 = v26;
LABEL_18:
        v22 = sub_1A524C674();
        v24 = v27;

        swift_unknownObjectRelease();
        goto LABEL_21;
      }
    }

    swift_unknownObjectRelease();
LABEL_20:
    v22 = 0;
    v24 = 0;
    goto LABEL_21;
  }

  v14 = [v2 localizedTitle];
  if (v14)
  {
    v15 = v14;
    v11 = sub_1A524C674();
    v13 = v16;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v20 = [v3 localizedSubtitle];
  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = v20;
  v22 = sub_1A524C674();
  v24 = v23;

LABEL_21:
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v24;
}

unint64_t sub_1A410F6A0(uint64_t a1, uint64_t a2)
{
  result = qword_1EB126AA0;
  if (!qword_1EB126AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126AA0);
  }

  return result;
}

id sub_1A410F7B0(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v5 = a1[1];
  if (v5 != 1)
  {
    v7 = &v3[OBJC_IVAR____TtC12PhotosUICore27PXPhotosCollectionTitleInfo_title];
    *v7 = *a1;
    *(v7 + 1) = v5;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = &v3[OBJC_IVAR____TtC12PhotosUICore27PXPhotosCollectionTitleInfo_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC12PhotosUICore27PXPhotosCollectionTitleInfo_subtitle];
  *v8 = 0;
  *(v8 + 1) = 0;
  v10.receiver = v3;
  v10.super_class = v1;
  return objc_msgSendSuper2(&v10, sel_init, v4);
}

double sub_1A410F87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

id sub_1A410F918(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXPhotosCollectionTitleInfo(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A410F9B0(uint64_t a1)
{
  v1 = sub_1A410FFDC(a1);

  return v1;
}

void sub_1A410F9D8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  sub_1A524C674();
  sub_1A524C634();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1A4110388;
  *(v9 + 24) = v8;
  v10[4] = sub_1A3D7B4F8;
  v10[5] = v9;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3D35A90;
  v10[3] = &block_descriptor_13_2;
  _Block_copy(v10);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A410FB94(uint64_t a1)
{
  v2 = a1;
  v3 = (a1 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v6 = v3[4];
    v5 = v3[5];
    v16 = v1;
    v8 = v3[2];
    v7 = v3[3];
    v9 = *v3;
    v15 = *MEMORY[0x1E69BE0C8];
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v4;
    v10[4] = v8;
    v10[5] = v7;
    v10[6] = v6;
    v10[7] = v5;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1A41102B4;
    *(v11 + 24) = v10;
    aBlock[4] = sub_1A3D78DD0;
    v18 = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D35A90;
    aBlock[3] = &block_descriptor_102;
    v12 = _Block_copy(aBlock);
    v2 = v18;
    sub_1A40D3140(v9, v4, v8);
    sub_1A40D3140(v9, v4, v8);
    v13 = v15;

    [v16 modifyAdjustmentWithKey:v13 modificationBlock:v12];

    _Block_release(v12);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    sub_1A40D31F4(v9, v4, v8);
    if ((v13 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v14 = v2 + OBJC_IVAR___PXPhotoStyleElement_legacyFilter;
  swift_beginAccess();
  if (*(v14 + 8))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A524E6E4();
  __break(1u);
}

void sub_1A410FE68(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(a2 + 24);
    v7 = a1;
    [v5 setTone_];
    [v5 setColor_];
    [v5 setCast_];
    [v5 setIntensity_];
    [v5 setEnabled_];
  }
}

uint64_t sub_1A410FF60()
{
  swift_getObjectType();
  [v0 copyWithZone_];
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v2;
}

void *sub_1A410FFDC(uint64_t a1)
{
  isEscapingClosureAtFileLocation = a1;
  v3 = (a1 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v6 = v3[4];
    v5 = v3[5];
    v8 = v3[2];
    v7 = v3[3];
    v9 = *v3;
    v16 = *MEMORY[0x1E69BE0C8];
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v4;
    v10[4] = v8;
    v10[5] = v7;
    v10[6] = v6;
    v10[7] = v5;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1A4110608;
    *(v11 + 24) = v10;
    aBlock[4] = sub_1A3D7B4F8;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D35A90;
    aBlock[3] = &block_descriptor_24_0;
    v12 = _Block_copy(aBlock);
    sub_1A40D3140(v9, v4, v8);
    sub_1A40D3140(v9, v4, v8);
    v13 = v16;

    [v1 modifyAdjustmentWithKey:v13 modificationBlock:v12];

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    sub_1A40D31F4(v9, v4, v8);
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v1;
    }

    __break(1u);
  }

  v14 = isEscapingClosureAtFileLocation + OBJC_IVAR___PXPhotoStyleElement_legacyFilter;
  swift_beginAccess();
  if (*(v14 + 8))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

unint64_t sub_1A41102BC(uint64_t a1, uint64_t a2)
{
  result = sub_1A41102E4(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A41102E4(uint64_t a1, uint64_t a2)
{
  result = qword_1EB132828;
  if (!qword_1EB132828)
  {
    sub_1A411033C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132828);
  }

  return result;
}

unint64_t sub_1A411033C(uint64_t a1, uint64_t a2)
{
  result = qword_1EB132830;
  if (!qword_1EB132830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB132830);
  }

  return result;
}

void sub_1A4110388(void *a1, uint64_t a2)
{
  v4 = *(v2 + 40);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v8 = a1;
    v7 = sub_1A524C634();

    [v6 setKind_];

    [v6 setIntensity_];
    [v6 setEnabled_];
  }
}

uint64_t objectdestroyTm_25()
{

  return swift_deallocObject();
}

uint64_t sub_1A4110614(void *a1)
{
  v2 = sub_1A5249A84();
  v3 = v2 - 8;
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x140);
  v8(v4);
  v9 = *((*v7 & *a1) + 0x108);
  v9();
  v9();
  v10 = *(v3 + 28);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1A52494A4();
  (*(*(v12 - 8) + 104))(&v6[v10], v11, v12);
  v13 = sub_1A52497C4();
  *v6 = v14;
  *(v6 + 1) = v15;
  *(v6 + 2) = v16;
  *(v6 + 3) = v17;
  v18 = (v8)(v13);
  sub_1A4110810(v18, v19);
  return sub_1A4112ADC(v6, MEMORY[0x1E697FF20]);
}

uint64_t sub_1A4110810(uint64_t a1, double a2)
{
  sub_1A41127C4(0, a2);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411280C(0, &qword_1EB132848, sub_1A4112890, sub_1A41127C4, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  sub_1A4112890(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 5)
  {
    sub_1A524BBB4();
    sub_1A411294C(v2, v14, MEMORY[0x1E697FF20]);
    *&v14[*(v12 + 56)] = 256;
    sub_1A411294C(v14, v10, sub_1A4112890);
    swift_storeEnumTagMultiPayload();
    sub_1A4112A94(&qword_1EB132860, sub_1A4112890, MEMORY[0x1E697DB78]);
    sub_1A41129B4(v15);
    sub_1A5249744();
    v16 = v14;
    v17 = sub_1A4112890;
  }

  else
  {
    v18 = [objc_opt_self() quaternarySystemFillColor];
    v19 = sub_1A524B284();
    KeyPath = swift_getKeyPath();
    sub_1A411294C(v2, v7, MEMORY[0x1E697FF20]);
    v21 = &v7[*(v5 + 36)];
    *v21 = KeyPath;
    v21[1] = v19;
    sub_1A411294C(v7, v10, sub_1A41127C4);
    swift_storeEnumTagMultiPayload();
    sub_1A4112A94(&qword_1EB132860, sub_1A4112890, MEMORY[0x1E697DB78]);
    sub_1A41129B4(v22);
    sub_1A5249744();
    v16 = v7;
    v17 = sub_1A41127C4;
  }

  return sub_1A4112ADC(v16, v17);
}

uint64_t sub_1A4110C78(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A4110CD8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPhotosDetailsWidget_widgetDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

void *sub_1A4110D70()
{
  v1 = OBJC_IVAR___PXPhotosDetailsWidget__context;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A4110DBC(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosDetailsWidget__context;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A4110EF8()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1A4110FA4(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v8 = a1;
  v5 = v4(a1);
  v6 = (*((*v3 & *v1) + 0xD8))(v5);
  if (v6)
  {
    v7 = v6;
    if (!(*((*v3 & *v1) + 0x90))())
    {
      __break(1u);
      return;
    }

    (*((*v3 & *v7) + 0xF8))();
  }
}

uint64_t (*sub_1A41110CC(uint64_t (**a1)()))()
{
  a1[1] = v1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v4 = (((*MEMORY[0x1E69E7D40] & *v1) + 144) & 0xFFFFFFFFFFFFLL | 0xCDB2000000000000);
  a1[2] = v3;
  a1[3] = v4;
  result = v3();
  if (result)
  {
    *a1 = result;
    return sub_1A4111158;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A4111158(uint64_t a1, char a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  v8 = *a1;
  v15 = v8;
  if (a2)
  {
    v9 = v8;
    v10 = v7(v5);
    v11 = (*((*v6 & *v4) + 0xD8))(v10);
    if (!v11)
    {
LABEL_8:

      goto LABEL_9;
    }

    v12 = v11;
    if ((*(a1 + 16))())
    {
      (*((*v6 & *v12) + 0xF8))();

      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v13 = v7(v5);
  v14 = (*((*v6 & *v4) + 0xD8))(v13);
  if (v14)
  {
    v9 = v14;
    if ((*(a1 + 16))())
    {
      (*((*v6 & *v9) + 0xF8))();
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_9:
}

void *sub_1A4111304()
{
  v1 = OBJC_IVAR___PXPhotosDetailsWidget__viewModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A4111350(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosDetailsWidget__viewModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1A411143C(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  v10 = a1;
  v5 = v4(a1);
  v6 = (*((*v3 & *v1) + 0xC0))(v5);
  if (v6)
  {
    v7 = *((*v3 & *v6) + 0xA8);
    v8 = v6;
    v9 = swift_unknownObjectRetain();
    v7(v9, &off_1F16F7C90);
  }
}

void (*sub_1A4111540(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
  v3 = ((*MEMORY[0x1E69E7D40] & *v1) + 192) & 0xFFFFFFFFFFFFLL | 0x8031000000000000;
  a1[2] = v2;
  a1[3] = v3;
  *a1 = v2();
  return sub_1A41115C4;
}

void sub_1A41115C4(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & **(a1 + 8)) + 0xC8);
  v7 = *a1;
  v8 = *(a1 + 16);
  v19 = v7;
  if (a2)
  {
    v9 = v7;
    v10 = v6(v4);
    v11 = v8(v10);
    if (v11)
    {
      v12 = *((*v5 & *v11) + 0xA8);
      v13 = v11;
      v14 = swift_unknownObjectRetain();
      v12(v14, &off_1F16F7C90);
    }
  }

  else
  {
    v15 = v6(v4);
    v16 = v8(v15);
    if (!v16)
    {
      goto LABEL_7;
    }

    v9 = v16;
    v17 = *((*v5 & *v16) + 0xA8);
    v18 = swift_unknownObjectRetain();
    v17(v18, &off_1F16F7C90);
  }

LABEL_7:
}

void *sub_1A4111724()
{
  v1 = OBJC_IVAR___PXPhotosDetailsWidget__spec;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A4111770(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosDetailsWidget__spec;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A41118AC()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0))();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1A4111958(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF8);
  v8 = a1;
  v5 = v4(a1);
  v6 = (*((*v3 & *v1) + 0xD8))(v5);
  if (v6)
  {
    v7 = v6;
    if (!(*((*v3 & *v1) + 0xF0))())
    {
      __break(1u);
      return;
    }

    (*((*v3 & *v7) + 0xC8))();
  }
}

uint64_t (*sub_1A4111A80(uint64_t (**a1)()))()
{
  a1[1] = v1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF0);
  v4 = (((*MEMORY[0x1E69E7D40] & *v1) + 240) & 0xFFFFFFFFFFFFLL | 0x520E000000000000);
  a1[2] = v3;
  a1[3] = v4;
  result = v3();
  if (result)
  {
    *a1 = result;
    return sub_1A4111B0C;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A4111B0C(uint64_t a1, char a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xF8);
  v8 = *a1;
  v15 = v8;
  if (a2)
  {
    v9 = v8;
    v10 = v7(v5);
    v11 = (*((*v6 & *v4) + 0xD8))(v10);
    if (!v11)
    {
LABEL_8:

      goto LABEL_9;
    }

    v12 = v11;
    if ((*(a1 + 16))())
    {
      (*((*v6 & *v12) + 0xC8))();

      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v13 = v7(v5);
  v14 = (*((*v6 & *v4) + 0xD8))(v13);
  if (v14)
  {
    v9 = v14;
    if ((*(a1 + 16))())
    {
      (*((*v6 & *v9) + 0xC8))();
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_9:
}

void *sub_1A4111D28()
{
  v1 = OBJC_IVAR___PXPhotosDetailsWidget____lazy_storage___contentHostedViewController;
  v2 = *(v0 + OBJC_IVAR___PXPhotosDetailsWidget____lazy_storage___contentHostedViewController);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = MEMORY[0x1E69E7D40];
    v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
    v6 = [v5 firstAsset];

    if (v6)
    {
      v3 = (*((*v4 & *v0) + 0x120))(v6);
    }

    else
    {
      v3 = 0;
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v3;
    v8 = v3;
    sub_1A3C327F4(v7);
  }

  sub_1A3C327E4(v2);
  return v3;
}

void sub_1A4111E8C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PXPhotosDetailsWidget____lazy_storage___contentHostedViewController);
  *(v1 + OBJC_IVAR___PXPhotosDetailsWidget____lazy_storage___contentHostedViewController) = a1;
  sub_1A3C327F4(v2);
}

void *sub_1A4111EA4()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    v7[4] = sub_1A4112B94;
    v7[5] = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1A3C2E0D0;
    v7[3] = &block_descriptor_103;
    v4 = _Block_copy(v7);
    swift_unknownObjectRetain();
    v5 = v0;

    v6 = [objc_opt_self() defaultAnimationOptions];
    [v2 widget:v5 animateChanges:v4 withAnimationOptions:v6];

    _Block_release(v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1A4111FF8(double a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x128))();
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    v7 = [v4 view];

    if (v7)
    {
      v8 = [v7 sizeThatFits_];
      v10 = v9;
      v11 = (*((*v3 & *v1) + 0x108))(v8);
      [v11 contentGuideInsets];
      v13 = v12;
      v15 = v14;

      return v15 + v10 + v13;
    }
  }

  return v5;
}

double sub_1A411216C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v2 = [v1 contentSizeCategory];

  [objc_opt_self() dynamicTextScaleFactorForCategory_];
  return v3 * 362.0;
}

id sub_1A4112398()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (v3)
    {
      return v3;
    }
  }

  v5 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  return [v5 initWithFrame_];
}

void sub_1A411245C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
  if (v2)
  {
    v3 = v2;
    (*((*v1 & *v2) + 0x148))();
  }
}

BOOL sub_1A41125D8()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v2 = [v1 userInterfaceIdiom];

  return v2 == 5;
}

id sub_1A41126D8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosDetailsWidget(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A411280C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A4112890(uint64_t a1)
{
  if (!qword_1EB132850)
  {
    sub_1A5249A84();
    sub_1A524BBF4();
    sub_1A4112A94(&qword_1EB132858, MEMORY[0x1E697FF20], MEMORY[0x1E697FF18]);
    v1 = sub_1A5247D54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132850);
    }
  }
}

uint64_t sub_1A411294C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A41129B4(double a1)
{
  result = qword_1EB132868;
  if (!qword_1EB132868)
  {
    sub_1A41127C4(255, a1);
    sub_1A4112A94(&unk_1EB132870, MEMORY[0x1E697FF20], MEMORY[0x1E697FF10]);
    sub_1A4112A94(&qword_1EB127800, sub_1A3D6D248, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132868);
  }

  return result;
}

uint64_t sub_1A4112A94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4112ADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4112B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB1328A0)
  {
    v4 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController(0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB1328A0);
    }
  }
}

unint64_t sub_1A4112BE8()
{
  result = qword_1EB132918;
  if (!qword_1EB132918)
  {
    sub_1A411280C(255, &unk_1EB132920, sub_1A4112890, sub_1A41127C4, MEMORY[0x1E697F960]);
    sub_1A4112A94(&qword_1EB132860, sub_1A4112890, MEMORY[0x1E697DB78]);
    sub_1A41129B4(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132918);
  }

  return result;
}

void sub_1A4112CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  sub_1A4113C78(0, &qword_1EB128BD8, MEMORY[0x1E69DC2E8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1A524DE34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = sub_1A4112FF0(a1);
  if (a4)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for PhotosViewRoundedAccessoryButton(v17, v18);
  (*(v11 + 16))(v13, v16, v10);
  sub_1A400C1D8(0, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v22;
  *(v20 + 24) = a6;

  sub_1A524DC64();
  sub_1A524DE44();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4112FF0(uint64_t a1)
{
  v1 = sub_1A5247354();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1A524C634();
  v9 = PXPhotosViewControllerRoundedButtonConfiguration(v8);

  sub_1A524DDA4();
  sub_1A5247344();
  v10 = objc_opt_self();
  v11 = [v10 tertiarySystemFillColor];
  sub_1A5247334();
  v12 = [objc_opt_self() effectWithStyle_];
  sub_1A5247324();
  (*(v2 + 16))(v4, v7, v1);
  sub_1A524DC94();
  v13 = [v10 whiteColor];
  sub_1A524DD74();
  return (*(v2 + 8))(v7, v1);
}

id sub_1A41131E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1A524DE34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524C674();
  sub_1A4112FF0(v7);

  v8 = sub_1A524DD54();
  (*(v4 + 8))(v6, v3);

  return v8;
}

uint64_t sub_1A41132DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A52408C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB980]];
  sub_1A4114188();
  return sub_1A52408D4();
}

void *sub_1A4113394(void *result, void (*a2)(uint64_t))
{
  if (a2)
  {
    if ([result sender])
    {
      sub_1A524E0B4();
      swift_unknownObjectRelease();
      sub_1A3C57128(&v4, v5);
    }

    else
    {
      memset(v5, 0, sizeof(v5));
    }

    sub_1A3C4881C(0, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    if (swift_dynamicCast())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }

    a2(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroyTm_26()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

double sub_1A4113524(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PXPhotosViewRoundedAccessoryButton_symbolName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_1A411362C()
{
  v1 = v0 + OBJC_IVAR___PXPhotosViewRoundedAccessoryButton_menuOffset;
  swift_beginAccess();
  return *v1;
}

void sub_1A41136CC(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___PXPhotosViewRoundedAccessoryButton_menuOffset);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1A4113858(double a1, double a2)
{
  v5 = sub_1A524DDB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4113C78(0, &qword_1EB126580, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_1A524DE34();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524DE54();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v16 = sub_1A4113CCC(v11);
LABEL_5:
    v19 = type metadata accessor for PhotosViewRoundedAccessoryButton(v16, v17);
    v27.receiver = v2;
    v27.super_class = v19;
    return objc_msgSendSuper2(&v27, sel_sizeThatFits_, a1, a2);
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_1A524DDF4();
  if (v18)
  {

    v16 = (*(v13 + 8))(v15, v12);
    goto LABEL_5;
  }

  sub_1A524DCB4();
  v21 = (*(v6 + 88))(v8, v5);
  if (v21 == *MEMORY[0x1E69DC550])
  {
    v23 = [v2 traitCollection];
    v24 = [v23 preferredContentSizeCategory];

    LOBYTE(v23) = sub_1A524D734();
    if ((v23 & 1) == 0)
    {
      PXVisionScaledFloat();
    }

    return (*(v13 + 8))(v15, v12);
  }

  if (v21 == *MEMORY[0x1E69DC560] || v21 == *MEMORY[0x1E69DC568])
  {
    return (*(v13 + 8))(v15, v12);
  }

  if (v21 == *MEMORY[0x1E69DC558])
  {
    v25 = type metadata accessor for PhotosViewRoundedAccessoryButton(v21, v22);
    v26.receiver = v2;
    v26.super_class = v25;
    objc_msgSendSuper2(&v26, sel_sizeThatFits_, a1, a2);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A4113C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1A4113CCC(uint64_t a1)
{
  sub_1A4113C78(0, &qword_1EB126580, MEMORY[0x1E69DC598]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4113D98(uint64_t a1, uint64_t a2)
{
  v11.receiver = v2;
  v11.super_class = type metadata accessor for PhotosViewRoundedAccessoryButton(a1, a2);
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v3 = [v2 imageView];
  if (v3)
  {
    v4 = v3;
    v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))();
    v7 = 0.0;
    if (v6)
    {
      if (v5 == 0xD000000000000012 && 0x80000001A53C8330 == v6)
      {
      }

      else
      {
        v9 = sub_1A524EAB4();

        if ((v9 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v7 = 1.5;
    }

LABEL_11:
    v10 = v4;
    [v10 frame];
    v13 = CGRectOffset(v12, v7, 0.0);
    [v10 setFrame_];
  }
}

void sub_1A4113F4C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, const char **a6, SEL *a7)
{
  v17.receiver = a1;
  v17.super_class = type metadata accessor for PhotosViewRoundedAccessoryButton(a1, a2);
  v12 = *a6;
  v13 = a3;
  v14 = a4;
  swift_unknownObjectRetain();
  v15 = v17.receiver;
  objc_msgSendSuper2(&v17, v12, v13, v14, a5);
  v16 = [v15 menu];
  [v16 *a7];

  swift_unknownObjectRelease();
}

id sub_1A4114140(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosViewRoundedAccessoryButton(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1A4114188()
{
  result = qword_1EB13FA80;
  if (!qword_1EB13FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FA80);
  }

  return result;
}

PXBookmarkUtilities __swiftcall PXBookmarkUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A4114470(void *a1)
{
  v2 = type metadata accessor for LemonadeBookmark(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *PHPhotoLibrary.lemonadeBookmarksManager.getter();
  v7 = (*(v6 + 352))();
  v16 = MEMORY[0x1E69E7CC0];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A3C9D464(v9, v5);
      v12 = sub_1A3F9EAF8(a1);
      v13 = sub_1A3CA2CF8(v5);
      if (v12)
      {
        MEMORY[0x1A5907D70](v13);
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v11 = v16;
      }

      v9 += v10;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

id sub_1A4114654(void *a1)
{
  sub_1A3CA09D8(0, &qword_1EB12A538, type metadata accessor for LemonadeBookmark);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for LemonadeBookmark(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 photoLibrary];
  if (result)
  {
    v11 = result;
    PHPhotoLibrary.lemonadeBookmarksManager.getter();

    v12 = a1;
    v13 = sub_1A3F9E42C();
    sub_1A3F9E50C(v13, v14, v12, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_1A3CA0A80(v4, &qword_1EB12A538, type metadata accessor for LemonadeBookmark);
      v15 = 0;
    }

    else
    {
      sub_1A3C5921C(v4, v9);
      v15 = sub_1A42E0DD8(v9);

      sub_1A3CA2CF8(v9);
    }

    return (v15 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4114848@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1A3C4C034(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23[-v5];
  v7 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a2 = 0x6974736567677573;
  a2[1] = 0xEB00000000736E6FLL;
  a2[2] = a1;
  v10 = a2 + *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
  *v10 = a1;
  v10[8] = 3;
  v11 = *(type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0) + 24);
  v12 = a1;
  v13 = sub_1A3C47918();
  v15 = v14;
  v16 = sub_1A3C52D68();
  v18 = v17;
  v20 = v19;
  v21 = sub_1A3C4ED50(v16);
  v23[8] = 1;
  *v9 = xmmword_1A531BE60;
  v9[16] = 1;
  *(v9 + 3) = 0;
  v9[32] = 1;
  *(v9 + 5) = v13;
  *(v9 + 6) = v15;
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  *(v9 + 9) = v16;
  *(v9 + 10) = v18;
  v9[88] = v20;
  v9[89] = v21;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v6);
  return sub_1A3C52D78(v9, 0, v6, &v10[v11]);
}

uint64_t sub_1A4114A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4114A94()
{
  v1 = sub_1A5243834();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4C034(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v25 - v4;
  v5 = sub_1A5243EC4();
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4116904(0, &qword_1EB12B8D0, MEMORY[0x1E697F948]);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  sub_1A3C4C034(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v33 = type metadata accessor for MapSnapshotView(0);
  v25[1] = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  sub_1A5242E34();
  v12 = *(v34 + 16);

  v32 = v12;
  v13 = [v12 transientIdentifier];
  if (!v13)
  {
    sub_1A524C674();
    goto LABEL_7;
  }

  v25[0] = v0;
  v14 = v13;
  v15 = sub_1A524C674();
  v17 = v16;

  v18 = sub_1A524C674();
  if (!v17)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v15 == v18 && v17 == v19)
  {

    goto LABEL_10;
  }

  v24 = sub_1A524EAB4();

  if (v24)
  {
LABEL_10:
    type metadata accessor for MapDataProvider(0, v20);
    static MapDataProvider.sharedProvider(for:)(*v25[0]);
  }

LABEL_8:
  sub_1A5242E54();
  v34 = 0u;
  v35 = 0u;
  v36 = 1;
  v21 = sub_1A52429A4();
  (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
  (*(v27 + 104))(v29, *MEMORY[0x1E69C2678], v28);
  sub_1A5243ED4();
  v22 = v30;
  (*(v30 + 16))(v10, v7, v5);
  swift_storeEnumTagMultiPayload();
  sub_1A4117138(&qword_1EB12A5F8, type metadata accessor for MapSnapshotView, &unk_1A531F5A0);
  sub_1A4117138(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
  sub_1A5249744();

  return (*(v22 + 8))(v7, v5);
}

uint64_t sub_1A411517C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524C634();
  v5 = PXLemonadeLocalizedString(v4);

  v6 = sub_1A524C674();
  v8 = v7;

  v9 = sub_1A524C634();
  v10 = PXLemonadeLocalizedString(v9);

  v11 = sub_1A524C674();
  v13 = v12;

  v14 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  LOBYTE(v10) = sub_1A3C5A374();
  v15 = sub_1A3C5A374();
  v16 = sub_1A3C5A374();
  v17 = sub_1A3C5A374();
  v18 = sub_1A3C5A374();
  return sub_1A425463C(v14, v10 & 1, v15 & 1, v16 & 1, v17 & 1, v18 & 1, 0x6C69662E72617473, 0xE90000000000006CLL, a2, v6, v8, v11, v13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

void sub_1A4115348(void **a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = *a1;
  (*(v5 + 104))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C12A8], v4, v6);
  sub_1A4116614(v8, a2);
}

uint64_t sub_1A4115450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[0] = a3;
  v6 = sub_1A5243284();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16[1] = a1;

  sub_1A5242E44();
  sub_1A4114A2C(v3, v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_1A4116974(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  (*(v7 + 104))(v9, *MEMORY[0x1E69C23E0], v6);

  sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
  sub_1A40F43F4(0);
  sub_1A4116904(0, &qword_1EB12B7A8, MEMORY[0x1E697F960]);
  sub_1A4117138(&qword_1EB146DE0, sub_1A40F43F4, MEMORY[0x1E69C22B8]);
  sub_1A3D6ED8C();
  return sub_1A5242AA4();
}

uint64_t sub_1A411572C(__n128 a1)
{
  result = sub_1A5242E44();
  if (!v2)
  {
    return sub_1A3C38BD4(0xD000000000000027);
  }

  return result;
}

uint64_t sub_1A4115770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4116DE0(&qword_1EB125C60, &qword_1EB12A800, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A41157FC()
{
  v0 = type metadata accessor for LemonadeNavigationDestination(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1A3C4C034(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F8E10;
  sub_1A4116974(v3, v5 + v4, type metadata accessor for LemonadeNavigationDestination);
  return v5;
}

unint64_t sub_1A4115958(uint64_t a1)
{
  v2 = sub_1A4117138(&qword_1EB129BA0, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider, &unk_1A531BE74);

  return sub_1A42E6E80(a1, v2);
}

id sub_1A41159C4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v64 = a3;
  v6 = sub_1A5244EE4();
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC0];
  v65 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    v21 = v64;
    goto LABEL_66;
  }

  v62 = v7;
  v63 = a4;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x1C8);
  v14 = a2;
  if (v13() == 5)
  {
    v15 = 1113;
  }

  else
  {
    v15 = 1985;
  }

  v16 = *((*v12 & *v14) + 0x5E8);
  if (v16())
  {
    v15 = v16();
  }

  sub_1A411689C(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v17 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v18 = *((*v12 & *v14) + 0x640);
  if (v18(1, v15))
  {
    v19 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:203 options:v17];
    v20 = [v19 firstObject];

    v21 = v64;
    if (v20)
    {
      v22 = v20;
      MEMORY[0x1A5907D70]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v61 = v17;
        sub_1A524CA74();
        v17 = v61;
      }

      sub_1A524CAE4();

      v11 = v65;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    v21 = v64;
  }

  if (v18(16, v15))
  {
    v23 = sub_1A45A2BD0(v21, v63, v17);
    if (v23)
    {
      v24 = v23;
      MEMORY[0x1A5907D70]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v61 = v17;
        sub_1A524CA74();
        v17 = v61;
      }

      sub_1A524CAE4();

      v11 = v65;
    }
  }

  if (v18(32, v15))
  {
    v25 = sub_1A4331630(v21, v63, v17);
    if (v25)
    {
      v26 = v25;
      MEMORY[0x1A5907D70]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v61 = v17;
        sub_1A524CA74();
        v17 = v61;
      }

      sub_1A524CAE4();

      v11 = v65;
    }
  }

  if ((v18(64, v15) & 1) == 0)
  {
LABEL_33:
    v37 = &selRef_faceClusteringProperties;
    if (v18(8, v15))
    {
      v38 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:202 options:v17];
      v39 = [v38 firstObject];

      if (v39)
      {
        v40 = v39;
        MEMORY[0x1A5907D70]();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();

        v11 = v65;
      }
    }

    if (v18(1024, v15))
    {
      v41 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:1000000218 options:v17];
      v42 = [v41 firstObject];
      if (v42)
      {
        v43 = v42;
        MEMORY[0x1A5907D70]();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
          v37 = &selRef_faceClusteringProperties;
        }

        sub_1A524CAE4();

        v11 = v65;
      }

      else
      {
      }
    }

    if (v18(512, v15))
    {
      v44 = [v21 px_virtualCollections];
      v45 = [v44 recentlyEditedCollection];

      MEMORY[0x1A5907D70]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
        v37 = &selRef_faceClusteringProperties;
      }

      sub_1A524CAE4();
      v11 = v65;
    }

    if (v18(128, v15))
    {
      v46 = [v21 px_virtualCollections];
      v47 = [v46 recentlyViewedCollection];

      MEMORY[0x1A5907D70]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
        v37 = &selRef_faceClusteringProperties;
      }

      sub_1A524CAE4();
      v11 = v65;
    }

    if (v18(256, v15))
    {
      v48 = [v21 px_virtualCollections];
      v49 = [v48 recentlySharedCollection];

      MEMORY[0x1A5907D70]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
        v37 = &selRef_faceClusteringProperties;
      }

      sub_1A524CAE4();
      v11 = v65;
    }

    if (v18(2, v15))
    {
      v50 = [v21 px_virtualCollections];
      v51 = [v50 mapCollection];

      v52 = v51;
      MEMORY[0x1A5907D70]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();

      v11 = v65;
    }

    if ((v18(4, v15) & 1) != 0 && (v53 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:204 options:v17], v54 = objc_msgSend(v53, v37[486]), v53, v54))
    {
      v55 = v54;
      MEMORY[0x1A5907D70]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();

      v11 = v65;
    }

    else
    {
    }

LABEL_66:
    if (v11 >> 62)
    {
      if (sub_1A524E2B4() >= 1)
      {
        goto LABEL_68;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_68:
      sub_1A3EC9890(v11, v8);

      sub_1A524C674();
      v56 = objc_allocWithZone(MEMORY[0x1E69788E0]);
      v57 = sub_1A524CA14();

      v58 = sub_1A524C634();

      v59 = [v56 initWithObjects:v57 photoLibrary:v21 fetchType:v58 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

      return v59;
    }

    return 0;
  }

  [v17 setFetchLimit_];
  v61 = v17;
  result = [v17 photoLibrary];
  if (result)
  {
    (*(v62 + 104))(v10, *MEMORY[0x1E69C12B0], v6);
    sub_1A5244EF4();
    swift_allocObject();
    sub_1A5244ED4();
    sub_1A5244CA4();
    v28 = sub_1A5244C94();
    v29 = objc_opt_self();
    v30 = v28;
    v31 = [v21 librarySpecificFetchOptions];
    v32 = [v29 fetchKeyAssetForEachSuggestion:v30 options:v31];

    if (v32)
    {
      v33 = objc_opt_self();
      sub_1A3C38BD4(0xD000000000000028);
      v34 = sub_1A524C634();

      v35 = [v33 transientAssetCollectionWithAssetFetchResult:v32 title:v34 identifier:@"PXFeaturedPhotosVirtualCollection"];

      v36 = v35;
      MEMORY[0x1A5907D70]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();

      v21 = v64;
      v11 = v65;
    }

    else
    {
    }

    v17 = v61;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

void sub_1A4116614(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_1A524CA14();
  v6 = sub_1A524C634();
  v19 = [v4 transientCollectionListWithCollections:v5 title:v6 identifier:0 photoLibrary:a1];

  v7 = *(a2 + 40);
  v8 = *(a2 + 24);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 2;
  if (v7)
  {
    v9 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x258))(v8);
    v10 = v7;
  }

  else
  {
    v11 = v8;
    v10 = 0;
    v9 = 0;
  }

  sub_1A411689C(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
  sub_1A3C6C180(&v20);
  v28 = v20;
  v29 = v21;
  sub_1A3C6C18C(&v26);
  v24 = v26;
  v25 = v27;
  v12 = sub_1A3C30368();
  v13 = sub_1A3C5A374();
  v14 = sub_1A3C5A374();
  v15 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v28, 0, &unk_1F16F7D08, 0, 1, &v24, 1, &v30, v23, v12, v13 & 1, v14 & 1, v15 & 1, v9);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v16 = swift_allocObject();
  v16[2] = v7;
  v16[3] = a1;
  v16[4] = a2;
  v17 = v10;
  v18 = a1;

  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v19, v8, v31, v23, &v20, sub_1A4117180, v16);
}

void sub_1A411689C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4116904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MapSnapshotView(255);
    v7 = sub_1A5243EC4();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4116974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41169DC(uint64_t a1)
{
  result = sub_1A4117138(&unk_1EB129BA8, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider, &unk_1A531BEAC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4116A84(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A411689C(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4116C60(uint64_t a1)
{
  result = sub_1A4117138(&qword_1EB132940, type metadata accessor for LemonadeSuggestionsFeature, &unk_1A531BEE4);
  *(a1 + 8) = result;
  return result;
}

void sub_1A4116D08(uint64_t a1)
{
  if (!qword_1EB132950)
  {
    sub_1A40F43F4(255);
    sub_1A4116904(255, &qword_1EB12B7A8, MEMORY[0x1E697F960]);
    sub_1A4117138(&qword_1EB146DE0, sub_1A40F43F4, MEMORY[0x1E69C22B8]);
    sub_1A3D6ED8C();
    v1 = sub_1A5242A94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132950);
    }
  }
}

uint64_t sub_1A4116DE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A411689C(255, a2, &qword_1EB126AC0, 0x1E6978650, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_27()
{
  v1 = (type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[8];
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3D6D890(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v3 + 24), *(v3 + 32), *(v3 + 40));
    sub_1A3C47A98(0);
    v6 = *(v5 + 64);
    v7 = sub_1A5242C84();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    if (*(v3 + 40) >= 3uLL)
    {
    }

    if (*(v3 + 56) >= 3uLL)
    {
    }

    sub_1A3C4208C(*(v3 + 72), *(v3 + 80), *(v3 + 88));
  }

  v8 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
  v9 = sub_1A5241F84();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  return swift_deallocObject();
}

void sub_1A41170C8(uint64_t a1)
{
  if (!qword_1EB124D00)
  {
    sub_1A5243B94();
    sub_1A3C3637C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124D00);
    }
  }
}

uint64_t sub_1A4117138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4117198@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  sub_1A411FE24(v1 + *(v10 + 24), v9, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for PhotosDetailsSharedWithYouWidgetView(uint64_t a1)
{
  result = qword_1EB18F1A0;
  if (!qword_1EB18F1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A41173E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4117444@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1A53160F0;
  v4 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  result = swift_allocObject();
  *(result + 16) = a1;
  v8 = a2 + v4[8];
  *v8 = sub_1A403478C;
  *(v8 + 1) = result;
  v8[16] = 0;
  return result;
}

uint64_t sub_1A411752C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_1A524B284();
  *a3 = result;
  return result;
}

uint64_t sub_1A4117574@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v70 = a1;
  sub_1A4117F18(0, a2);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1E697F948];
  sub_1A411F874(0, &qword_1EB132A68, sub_1A4118B8C, sub_1A4117F18, MEMORY[0x1E697F948]);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v57 - v7;
  v8 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118B8C(0);
  v62 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A41195C4(0, v11);
  v69 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411F874(0, &qword_1EB132B30, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView, sub_1A41195C4, v5);
  v66 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v57 - v17;
  v67 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView(0);
  MEMORY[0x1EEE9AC00](v67);
  v60 = v2;
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0);
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel, &unk_1A533DFE8);
  v18 = sub_1A5247EB4();
  v19 = sub_1A418C934();

  if ((v19 & 1) == 0)
  {
    v20 = sub_1A5247EB4();
    v21 = sub_1A418C970();

    if ((v21 & 1) == 0)
    {
      sub_1A5247EB4();
      swift_beginAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v22 = sub_1A5247EB4();
  v23 = MEMORY[0x1E69E7D40];
  v24 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x140))();

  if (v24 == 5)
  {
    v25 = v60;
    sub_1A411960C(v60, v13);
    v26 = v58;
    sub_1A411FE24(v25, v58, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
    v27 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v28 = swift_allocObject();
    sub_1A411F7A4(v26, v28 + v27, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
    v29 = v63;
    v30 = (v13 + *(v62 + 36));
    *v30 = sub_1A411EB7C;
    v30[1] = v28;
    v30[2] = 0;
    v30[3] = 0;
    sub_1A411FBD4(v13, v29, sub_1A4118B8C);
    swift_storeEnumTagMultiPayload();
    sub_1A411E518();
    sub_1A411F620(&qword_1EB132B68, sub_1A4117F18, sub_1A411E990);
    v31 = v64;
    sub_1A5249744();
    v32 = sub_1A4118B8C;
  }

  else
  {
    v33 = sub_1A5249574();
    v13 = v59;
    *v59 = v33;
    v13[1] = 0;
    *(v13 + 16) = 0;
    sub_1A411E4B0(0);
    sub_1A411B9FC(v60, v13 + *(v34 + 44));
    v35 = sub_1A5247EB4();
    sub_1A411F874(0, &qword_1EB132960, sub_1A4117FBC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v37 = v13 + *(v36 + 36);
    sub_1A4110614(v35);

    v38 = sub_1A524BC74();
    v40 = v39;
    sub_1A3FA9268(0, v39);
    v42 = &v37[*(v41 + 36)];
    *v42 = v38;
    v42[1] = v40;
    v43 = sub_1A5247EB4();
    v44 = (*((*v23 & *v43) + 0xC0))();

    [v44 contentGuideInsets];
    EdgeInsets.init(_:)();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = sub_1A524A064();
    v54 = v13 + *(v65 + 36);
    *v54 = v53;
    *(v54 + 1) = v46;
    *(v54 + 2) = v48;
    *(v54 + 3) = v50;
    *(v54 + 4) = v52;
    v54[40] = 0;
    sub_1A411FBD4(v13, v63, sub_1A4117F18);
    swift_storeEnumTagMultiPayload();
    sub_1A411E518();
    sub_1A411F620(&qword_1EB132B68, sub_1A4117F18, sub_1A411E990);
    v31 = v64;
    sub_1A5249744();
    v32 = sub_1A4117F18;
  }

  sub_1A411FAE4(v13, v32);
  sub_1A411FBD4(v31, v68, sub_1A41195C4);
  swift_storeEnumTagMultiPayload();
  sub_1A411FDDC(&qword_1EB12F8D8, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView, &unk_1A530D9AC);
  sub_1A411EAB4(v55);
  sub_1A5249744();
  return sub_1A411FAE4(v31, sub_1A41195C4);
}

void sub_1A4117F18(uint64_t a1, double a2)
{
  if (!qword_1EB132958)
  {
    sub_1A411F874(255, &qword_1EB132960, sub_1A4117FBC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132958);
    }
  }
}

void sub_1A4117FBC(uint64_t a1)
{
  if (!qword_1EB132968)
  {
    sub_1A4118050(255);
    sub_1A411FDDC(&qword_1EB132A60, sub_1A4118050, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132968);
    }
  }
}

void sub_1A411808C(uint64_t a1)
{
  if (!qword_1EB132980)
  {
    sub_1A4118148(255);
    sub_1A411F620(&qword_1EB132A40, sub_1A4118148, sub_1A4118A5C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132980);
    }
  }
}

void sub_1A4118170(uint64_t a1)
{
  if (!qword_1EB132990)
  {
    sub_1A4118210(255);
    sub_1A411EE2C(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132990);
    }
  }
}

void sub_1A4118238(uint64_t a1, double a2)
{
  if (!qword_1EB1329A0)
  {
    sub_1A41182E0(255, a2);
    sub_1A411E5DC(&qword_1EB132A18, sub_1A41182E0, sub_1A41188F0, MEMORY[0x1E6982090]);
    v2 = sub_1A524B784();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1329A0);
    }
  }
}

void sub_1A41182E0(uint64_t a1, double a2)
{
  if (!qword_1EB1329A8)
  {
    sub_1A411F874(255, &qword_1EB1329B0, sub_1A411837C, sub_1A41184F8, MEMORY[0x1E697F960]);
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1329A8);
    }
  }
}

void sub_1A41183B0(uint64_t a1, double a2)
{
  if (!qword_1EB1329C0)
  {
    sub_1A411841C(255, a2);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1329C0);
    }
  }
}

void sub_1A411848C()
{
  if (!qword_1EB128990)
  {
    v0 = sub_1A5248094();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128990);
    }
  }
}

void sub_1A4118560(uint64_t a1)
{
  if (!qword_1EB1329E0)
  {
    sub_1A411EDD8(255, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
    sub_1A4118604(255, v1);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1329E0);
    }
  }
}

void sub_1A411864C(uint64_t a1, double a2)
{
  if (!qword_1EB1329F0)
  {
    sub_1A4118720(255, a2);
    sub_1A3EE1D04(255);
    sub_1A4118810(v2);
    sub_1A411FDDC(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1329F0);
    }
  }
}

void sub_1A4118768(uint64_t a1, double a2)
{
  if (!qword_1EB132A00)
  {
    sub_1A411F874(255, &qword_1EB1282C0, sub_1A3EE213C, sub_1A3D6D248, MEMORY[0x1E697E830]);
    sub_1A3F373F8();
    v2 = sub_1A524B764();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132A00);
    }
  }
}

unint64_t sub_1A4118810(double a1)
{
  result = qword_1EB132A08;
  if (!qword_1EB132A08)
  {
    sub_1A4118720(255, a1);
    sub_1A411FDDC(&qword_1EB132A10, sub_1A4118768, MEMORY[0x1E697D680]);
    sub_1A411FDDC(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132A08);
  }

  return result;
}

unint64_t sub_1A41188F0(double a1)
{
  result = qword_1EB132A20;
  if (!qword_1EB132A20)
  {
    sub_1A411F874(255, &qword_1EB1329B0, sub_1A411837C, sub_1A41184F8, MEMORY[0x1E697F960]);
    sub_1A411FDDC(&qword_1EB132A28, sub_1A411837C, MEMORY[0x1E6981F48]);
    sub_1A411E5DC(&qword_1EB132A30, sub_1A41184F8, sub_1A4118A28, MEMORY[0x1E6982090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132A20);
  }

  return result;
}

unint64_t sub_1A4118A5C()
{
  result = qword_1EB132A48;
  if (!qword_1EB132A48)
  {
    sub_1A4118170(255);
    sub_1A4118ADC();
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132A48);
  }

  return result;
}

unint64_t sub_1A4118ADC()
{
  result = qword_1EB132A50;
  if (!qword_1EB132A50)
  {
    sub_1A4118210(255);
    sub_1A411FDDC(&qword_1EB132A58, sub_1A4118238, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132A50);
  }

  return result;
}

void sub_1A4118BB4(uint64_t a1, double a2)
{
  if (!qword_1EB132A78)
  {
    sub_1A411F874(255, &qword_1EB132A80, sub_1A4118C50, sub_1A4118CDC, MEMORY[0x1E697F960]);
    v2 = sub_1A524B514();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132A78);
    }
  }
}

void sub_1A4118C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1A4118D24(uint64_t a1, double a2)
{
  if (!qword_1EB132A98)
  {
    sub_1A4118E98(255, a2);
    sub_1A4118FDC(255, v2);
    sub_1A41190E8(255, v3);
    sub_1A5249764();
    sub_1A411F620(&qword_1EB132B10, sub_1A41190E8, sub_1A41194A0);
    sub_1A411FDDC(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132A98);
    }
  }
}

void sub_1A4118E98(uint64_t a1, double a2)
{
  if (!qword_1EB132AA0)
  {
    sub_1A4118FDC(255, a2);
    sub_1A41190E8(255, v2);
    sub_1A5249764();
    sub_1A411F620(&qword_1EB132B10, sub_1A41190E8, sub_1A41194A0);
    sub_1A411FDDC(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132AA0);
    }
  }
}

void sub_1A4118FDC(uint64_t a1, double a2)
{
  if (!qword_1EB132AA8)
  {
    sub_1A41190E8(255, a2);
    sub_1A5249764();
    sub_1A411F620(&qword_1EB132B10, sub_1A41190E8, sub_1A41194A0);
    sub_1A411FDDC(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132AA8);
    }
  }
}

void sub_1A41190E8(uint64_t a1, double a2)
{
  if (!qword_1EB132AB0)
  {
    sub_1A411F874(255, &qword_1EB132AB8, sub_1A411918C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132AB0);
    }
  }
}

void sub_1A411918C(uint64_t a1)
{
  if (!qword_1EB132AC0)
  {
    sub_1A4119220(255);
    sub_1A411FDDC(&qword_1EB132B08, sub_1A4119220, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132AC0);
    }
  }
}

void sub_1A411925C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A41192B8(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A41192B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A411935C(uint64_t a1)
{
  if (!qword_1EB132AE0)
  {
    sub_1A41193F0(255);
    sub_1A411FDDC(&qword_1EB132B00, sub_1A41193F0, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132AE0);
    }
  }
}

void sub_1A41193F0(uint64_t a1)
{
  if (!qword_1EB132AE8)
  {
    sub_1A411EC6C(255, &qword_1EB132AF0, sub_1A411946C, MEMORY[0x1E6981910]);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132AE8);
    }
  }
}

unint64_t sub_1A41194A0(double a1)
{
  result = qword_1EB132B18;
  if (!qword_1EB132B18)
  {
    sub_1A411F874(255, &qword_1EB132AB8, sub_1A411918C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    sub_1A411FDDC(&qword_1EB132B20, sub_1A411918C, MEMORY[0x1E6981880]);
    sub_1A411FDDC(&qword_1EB122308, sub_1A3EC447C, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B18);
  }

  return result;
}

uint64_t sub_1A411960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v136 = v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1A52407E4();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v135 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1A5249524();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v129 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1A5249D74();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  v118 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v121 = v9;
  v124 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1A5249764();
  v109 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v108 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1A52486A4();
  v103 = *(v104 - 8);
  v11 = MEMORY[0x1EEE9AC00](v104);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41190E8(0, v11);
  v110 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v106 = (v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4118FDC(0, v15);
  v114 = v17;
  v112 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v111 = v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118E98(0, v18);
  v117 = v20;
  v115 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v113 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118D24(0, v21);
  v123 = v23;
  v120 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v116 = v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118CDC(0, v24);
  v27 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v119 = v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v128 = v102 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v132 = v102 - v32;
  sub_1A411F874(0, &qword_1EB132BE0, sub_1A4118C50, sub_1A4118CDC, MEMORY[0x1E697F948]);
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v36 = v102 - v35;
  sub_1A4118C50(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v40 = v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v8;
  v41 = *(v8 + 32);
  v107 = a1;
  v42 = (a1 + v41);
  v43 = *v42;
  v44 = v42[1];
  v45 = *(v42 + 16);
  v46 = type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0);
  v47 = sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel, &unk_1A533DFE8);
  v140 = v44;
  v141 = v43;
  v139 = v45;
  v138 = v46;
  v137 = v47;
  v48 = sub_1A5247EB4();
  LOBYTE(v44) = sub_1A418C934();

  if ((v44 & 1) == 0)
  {
    v102[1] = v34;
    v102[2] = v38;
    v102[3] = v36;
    v102[4] = v27;
    v51 = sub_1A524BC74();
    v52 = v106;
    *v106 = v51;
    *(v52 + 8) = v53;
    sub_1A411F3C4(0);
    v55 = v107;
    sub_1A411A660(v107, v52 + *(v54 + 44));
    sub_1A411F874(0, &qword_1EB132AB8, sub_1A411918C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    v57 = (v52 + *(v56 + 36));
    v58 = *(sub_1A5248A14() + 20);
    v59 = *MEMORY[0x1E697F468];
    v60 = sub_1A52494A4();
    (*(*(v60 - 8) + 104))(&v57[v58], v59, v60);
    __asm { FMOV            V0.2D, #16.0 }

    *v57 = _Q0;
    sub_1A3EC447C(0);
    v57[*(v66 + 36)] = 0;
    sub_1A4117198(v13);
    v67 = v105;
    sub_1A4394B64(v13, v105, &off_1EE6D9F20);
    v68 = *(v103 + 8);
    v69 = v104;
    v68(v13, v104);
    sub_1A4117198(v13);
    v70 = sub_1A4394B64(v13, v67, &off_1EE6D9F20);
    (v68)(v13, v69, v70);
    sub_1A524BC74();
    sub_1A52481F4();
    v71 = v110;
    v72 = (v52 + *(v110 + 36));
    v73 = v148;
    *v72 = v147;
    v72[1] = v73;
    v72[2] = v149;
    v74 = v108;
    sub_1A5248B84();
    v75 = sub_1A411F620(&qword_1EB132B10, sub_1A41190E8, sub_1A41194A0);
    v76 = sub_1A411FDDC(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    v77 = v111;
    v78 = v122;
    sub_1A524A974();
    (*(v109 + 8))(v74, v78);
    sub_1A411FAE4(v52, sub_1A41190E8);
    v79 = v124;
    sub_1A411FE24(v55, v124, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
    v80 = (*(v118 + 80) + 16) & ~*(v118 + 80);
    v81 = swift_allocObject();
    sub_1A411F7A4(v79, v81 + v80, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
    v143 = v71;
    v144 = v78;
    v145 = v75;
    v146 = v76;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v83 = v113;
    v84 = v114;
    sub_1A524AA84();

    (*(v112 + 8))(v77, v84);
    v85 = v125;
    sub_1A5249D54();
    v143 = v84;
    v144 = OpaqueTypeConformance2;
    v86 = swift_getOpaqueTypeConformance2();
    v87 = v116;
    v88 = v117;
    sub_1A524ADB4();
    (*(v126 + 8))(v85, v127);
    (*(v115 + 8))(v83, v88);
    v89 = v129;
    sub_1A5249504();
    v143 = v88;
    v144 = v86;
    swift_getOpaqueTypeConformance2();
    v90 = v119;
    v91 = v123;
    sub_1A524AAF4();
    (*(v130 + 8))(v89, v131);
    (*(v120 + 8))(v87, v91);
    v92 = sub_1A5247EB4();
    v93 = v136;
    sub_1A418C748();

    v94 = v133;
    v95 = *(v133 + 48);
    v96 = v134;
    if (v95(v93, 1, v134) == 1)
    {
      sub_1A5240714();
      if (v95(v93, 1, v96) != 1)
      {
        sub_1A411FE8C(v93, sub_1A3F31320);
      }
    }

    else
    {
      (*(v94 + 32))(v135, v93, v96);
    }

    v97 = sub_1A524A454();
    v99 = v98;
    v101 = v100;
    sub_1A52487A4();
    sub_1A3E04DF4(v97, v99, v101 & 1);

    sub_1A411FAE4(v90, sub_1A4118CDC);
    sub_1A5247EB4();
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A524AAE4();
  sub_1A411FE24(v40, v36, sub_1A4118C50);
  swift_storeEnumTagMultiPayload();
  sub_1A411E710();
  sub_1A411E7C0(v49);
  sub_1A5249744();
  return sub_1A411FE8C(v40, sub_1A4118C50);
}

uint64_t sub_1A411A660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v60 = a2;
  v62 = sub_1A52486A4();
  v3 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v5 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EC3E2C(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v49[-v10];
  v11 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  v12 = (a1 + *(v11 + 32));
  v13 = *v12;
  v54 = v12[1];
  v55 = v13;
  v53 = *(v12 + 16);
  v52 = type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0);
  v51 = sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel, &unk_1A533DFE8);
  v14 = sub_1A5247EB4();
  sub_1A4110614(v14);

  sub_1A4117198(v5);
  sub_1A4394B64(v5, v11, &off_1EE6D9F20);
  v15 = *(v3 + 8);
  v16 = v62;
  v15(v5, v62);
  sub_1A4117198(v5);
  v17 = sub_1A4394B64(v5, v11, &off_1EE6D9F20);
  (v15)(v5, v16, v17);
  sub_1A524BC74();
  sub_1A52481F4();
  v18 = *(v7 + 44);
  v19 = v61;
  v20 = &v61[v18];
  v21 = v67;
  *v20 = v66;
  v20[1] = v21;
  v20[2] = v68;
  v22 = sub_1A5249574();
  LOBYTE(v70) = 0;
  sub_1A411ABD8(&v77);
  v23 = v78;
  v24 = v79;
  v62 = v80;
  v58 = v81;
  v59 = v77;
  v57 = v82;
  v56 = v83;
  LOBYTE(v15) = v70;
  v50 = v70;
  v25 = sub_1A5247EB4();
  v26 = (*((*MEMORY[0x1E69E7D40] & *v25) + 0xC0))();

  [v26 contentGuideInsets];
  EdgeInsets.init(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  LOBYTE(v5) = sub_1A524A064();
  v35 = v63;
  sub_1A411FBD4(v19, v63, sub_1A3EC3E2C);
  v36 = v60;
  sub_1A411FBD4(v35, v60, sub_1A3EC3E2C);
  sub_1A41192B8(0, &qword_1EB132AD0, sub_1A3EC3E2C, sub_1A4119334);
  v38 = (v36 + *(v37 + 48));
  *&v70 = v22;
  *(&v70 + 1) = 0x4028000000000000;
  LOBYTE(v71) = v15;
  *(&v71 + 1) = *v69;
  DWORD1(v71) = *&v69[3];
  v39 = v58;
  v40 = v59;
  *(&v71 + 1) = v59;
  *&v72 = v23;
  *(&v72 + 1) = v24;
  *&v73 = v62;
  v41 = v57;
  *(&v73 + 1) = v58;
  *&v74 = v57;
  LOBYTE(v36) = v56;
  BYTE8(v74) = v56;
  *(&v74 + 9) = *v65;
  HIDWORD(v74) = *&v65[3];
  LOBYTE(v75) = v5;
  DWORD1(v75) = *&v64[3];
  *(&v75 + 1) = *v64;
  *(&v75 + 1) = v28;
  *&v76[0] = v30;
  *(&v76[0] + 1) = v32;
  *&v76[1] = v34;
  BYTE8(v76[1]) = 0;
  v42 = v70;
  v43 = v71;
  v44 = v73;
  v38[2] = v72;
  v38[3] = v44;
  *v38 = v42;
  v38[1] = v43;
  v45 = v74;
  v46 = v75;
  v47 = v76[0];
  *(v38 + 105) = *(v76 + 9);
  v38[5] = v46;
  v38[6] = v47;
  v38[4] = v45;
  sub_1A411FE24(&v70, &v77, sub_1A4119334);
  sub_1A411FAE4(v61, sub_1A3EC3E2C);
  v77 = v22;
  v78 = 0x4028000000000000;
  LOBYTE(v79) = v50;
  *(&v79 + 1) = *v69;
  HIDWORD(v79) = *&v69[3];
  v80 = v40;
  v81 = v23;
  v82 = v24;
  v83 = v62;
  v84 = v39;
  v85 = v41;
  v86 = v36;
  *v87 = *v65;
  *&v87[3] = *&v65[3];
  v88 = v5;
  *&v89[3] = *&v64[3];
  *v89 = *v64;
  v90 = v28;
  v91 = v30;
  v92 = v32;
  v93 = v34;
  v94 = 0;
  sub_1A411FE8C(&v77, sub_1A4119334);
  return sub_1A411FAE4(v63, sub_1A3EC3E2C);
}

double sub_1A411ABD8@<D0>(uint64_t a2@<X8>)
{
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52407E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  sub_1A411AF10(&v22);
  v21 = v22;
  type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0);
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel, &unk_1A533DFE8);
  v13 = sub_1A5247EB4();
  sub_1A418CDB0(v5);

  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    v14 = sub_1A524A454();
    v16 = v15;
    v18 = v17;
    (*(v7 + 8))(v12, v6);
    swift_getKeyPath();
    sub_1A3E75E68(v14, v16, v18 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A411FE8C(v5, sub_1A3F31320);
  v19 = v21;

  sub_1A411F518(0, 0, 0, 0);
  sub_1A411F568(0, 0, 0, 0);
  *a2 = v19;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  sub_1A411F568(0, 0, 0, 0);

  return result;
}

void sub_1A411AF10(uint64_t *a1@<X8>)
{
  v31 = a1;
  v27 = sub_1A524B554();
  v1 = *(v27 - 8);
  v2 = MEMORY[0x1EEE9AC00](v27);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411F5B8(0, v2);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v26 - v8;
  type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0);
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel, &unk_1A533DFE8);
  v9 = sub_1A5247EB4();
  v10 = sub_1A418C6AC();

  if (v10)
  {
    v11 = sub_1A524B524();
  }

  else
  {
    v11 = sub_1A524B544();
  }

  v32 = v11;
  v12 = sub_1A5247EB4();
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x140))();

  if (v14 != 5)
  {
    v20 = v13;
    v21 = v27;
    (*(v1 + 104))(v4, *MEMORY[0x1E6981630], v27);
    v26 = sub_1A524B5C4();
    (*(v1 + 8))(v4, v21);
    if (qword_1EB1A9470 != -1)
    {
      swift_once();
    }

    v22 = qword_1EB1EBB88;
    KeyPath = swift_getKeyPath();

    v24 = sub_1A5247EB4();
    (*((*v20 & *v24) + 0x140))();

    v25 = sub_1A5247EB4();
    (*((*v20 & *v25) + 0x140))();

    sub_1A524BC74();
    sub_1A52481F4();
    v38 = 1;
    v33 = v26;
    LOWORD(v34) = 257;
    v35 = KeyPath;
    *&v36 = v22;
    v37 = 256;
    sub_1A5247EB4();
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v15 = sub_1A5247EB4();
  v16 = (*((*v13 & *v15) + 0x140))();

  if (v16 == 5)
  {
    v17 = 80.0;
  }

  else
  {
    v17 = 32.0;
  }

  v18 = sub_1A5247EB4();
  v19 = sub_1A418CB00();

  *&v33 = v32;
  *(&v33 + 1) = v17;
  v34 = v19;
  v35 = 0x4034000000000000;
  sub_1A411F750();
  *v31 = sub_1A524B8E4();
}

void sub_1A411B63C(uint64_t a1, uint64_t a2)
{
  v19 = objc_opt_self();
  v3 = sub_1A524C634();
  sub_1A3F37DA4(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v5;
  v20[3] = type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_1A411FE24(v2, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
  String.init(forType:)(v20);
  v7 = sub_1A524C634();

  *(inited + 48) = v7;
  *(inited + 56) = sub_1A524C674();
  *(inited + 64) = v8;
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0);
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel, &unk_1A533DFE8);
  v9 = sub_1A5247EB4();
  v10 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x88))();

  *(inited + 72) = v10;
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A411EC6C(0, &qword_1EB126F80, sub_1A3C7B6A4, MEMORY[0x1E69E6158]);
  swift_arrayDestroy();
  sub_1A3C7B6A4(0, v11);
  v12 = sub_1A524C3D4();

  [v19 sendEvent:v3 withPayload:v12];

  v13 = sub_1A5247EB4();
  LOBYTE(v10) = sub_1A418C970();

  if (v10)
  {
    v14 = sub_1A5247EB4();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_1A5247EB4();
      swift_beginAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v16 = sub_1A524D244();
    v17 = sub_1A475874C();
    swift_beginAccess();
    v18 = *v17;
    sub_1A5246DF4(v16, &dword_1A3C1C000, v18, "Syndication attribution widget: Cannot present transcript due to nil presenting view controller", 95, 2, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1A411B9FC@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v105 = a2;
  v2 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  v100 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v102 = v3;
  v104 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1A52486A4();
  v88 = *(v93 - 8);
  v4 = MEMORY[0x1EEE9AC00](v93);
  v87 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118238(0, v4);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v86 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118210(0);
  v91 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118170(0);
  v90 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118148(0);
  v96 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411808C(0);
  v103 = v14;
  v101 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v80 - v17;
  v85 = sub_1A524B9A4();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE16E8(0);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8D64(0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v80 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v106 = &v80 - v30;
  sub_1A524B994();
  v94 = v2;
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0);
  v83 = sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel, &unk_1A533DFE8);
  v31 = sub_1A5247EB4();
  v32 = (*((*MEMORY[0x1E69E7D40] & *v31) + 0x108))();

  v33 = (v32 & 1) == 0;
  v34 = v86;
  if (v33)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = 0.8;
  }

  (*(v84 + 32))(v22, v81, v85);
  *&v22[*(v20 + 44)] = v35;
  v36 = sub_1A524A094();
  v37 = v82;
  v38 = *v82;
  sub_1A5247BC4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_1A411F7A4(v22, v28, sub_1A3EE16E8);
  v47 = *(v24 + 44);
  v48 = v37;
  v49 = &v28[v47];
  *v49 = v36;
  *(v49 + 1) = v40;
  *(v49 + 2) = v42;
  *(v49 + 3) = v44;
  *(v49 + 4) = v46;
  v49[40] = 0;
  sub_1A411F7A4(v28, v106, sub_1A3FA8D64);
  *v34 = sub_1A5249314();
  *(v34 + 8) = 0x4028000000000000;
  *(v34 + 16) = 0;
  sub_1A411F80C(0, v50);
  sub_1A411C588(v37, v34 + *(v51 + 44));
  v52 = sub_1A5247EB4();
  v53 = (*((*MEMORY[0x1E69E7D40] & *v52) + 0x140))();

  if (v53 == 5)
  {
    v54 = v87;
    sub_1A4117198(v87);
    sub_1A4394B64(v54, v94, &off_1EE6D9F20);
    (*(v88 + 8))(v54, v93);
  }

  v55 = sub_1A5247EB4();
  v56 = (*((*MEMORY[0x1E69E7D40] & *v55) + 0x140))();

  if (v56 == 5)
  {
    v57 = v87;
    sub_1A4117198(v87);
    v58 = sub_1A4394B64(v57, v94, &off_1EE6D9F20);
    (*(v88 + 8))(v57, v93, v58);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v59 = v92;
  sub_1A411FCC4(v34, v92, sub_1A4118238);
  v60 = (v59 + *(v91 + 36));
  v61 = v108;
  *v60 = v107;
  v60[1] = v61;
  v60[2] = v109;
  v62 = v89;
  sub_1A411FCC4(v59, v89, sub_1A4118210);
  *(v62 + *(v90 + 36)) = 0;
  v63 = *(v48 + 8);
  LOBYTE(v59) = sub_1A524A064();
  v64 = v97;
  sub_1A411FCC4(v62, v97, sub_1A4118170);
  v65 = v64 + *(v96 + 36);
  *v65 = v59;
  *(v65 + 8) = v63;
  *(v65 + 16) = v38;
  *(v65 + 24) = v63;
  *(v65 + 32) = v38;
  *(v65 + 40) = 0;
  v66 = v104;
  sub_1A411FE24(v48, v104, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
  v67 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v68 = swift_allocObject();
  sub_1A411F7A4(v66, v68 + v67, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
  sub_1A411F620(&qword_1EB132A40, sub_1A4118148, sub_1A4118A5C);
  v69 = v98;
  sub_1A524AA84();

  sub_1A411FAE4(v64, sub_1A4118148);
  v70 = v106;
  v71 = v95;
  sub_1A411FE24(v106, v95, sub_1A3FA8D64);
  v72 = v101;
  v73 = *(v101 + 16);
  v74 = v99;
  v75 = v103;
  v73(v99, v69, v103);
  v76 = v105;
  sub_1A411FE24(v71, v105, sub_1A3FA8D64);
  sub_1A41192B8(0, &qword_1EB132978, sub_1A3FA8D64, sub_1A411808C);
  v73((v76 + *(v77 + 48)), v74, v75);
  v78 = *(v72 + 8);
  v78(v69, v75);
  sub_1A411FE8C(v70, sub_1A3FA8D64);
  v78(v74, v75);
  return sub_1A411FE8C(v71, sub_1A3FA8D64);
}

uint64_t sub_1A411C588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  sub_1A411852C(0);
  v113 = v3;
  v112 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v99 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE1D04(0);
  v97 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v108 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118768(0, v6);
  v106 = v8;
  v105 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118720(0, v9);
  v89 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v107 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411864C(0, v12);
  v95 = v14;
  v94 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v92 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4118604(0, v15);
  v93 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v86 - v22;
  v23 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  v24 = v23 - 8;
  v101 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v102 = v25;
  v103 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411EDD8(0, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v91 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v110 = &v86 - v29;
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v114 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v100 = &v86 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v86 - v35;
  v117 = sub_1A52407E4();
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v109 = &v86 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41184F8(0);
  v121 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v111 = &v86 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411F874(0, &qword_1EB132C10, sub_1A411837C, sub_1A41184F8, MEMORY[0x1E697F948]);
  v118 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v120 = &v86 - v41;
  sub_1A411837C(0);
  v119 = v42;
  MEMORY[0x1EEE9AC00](v42);
  sub_1A4118464(0);
  v44 = v43;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v86 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411841C(0, v45);
  MEMORY[0x1EEE9AC00](v48 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v50 = *(v24 + 40);
  v115 = a1;
  v51 = (a1 + v50);
  v52 = *v51;
  v53 = v51[1];
  v54 = *(v51 + 16);
  v55 = type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0);
  v56 = sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel, &unk_1A533DFE8);
  v124 = v53;
  v125 = v52;
  v123 = v54;
  v57 = v55;
  v58 = v56;
  v59 = sub_1A5247EB4();
  LOBYTE(v53) = sub_1A418C934();

  if (v53)
  {
    sub_1A5248074();
    sub_1A524BC74();
    sub_1A52481F4();
    v60 = &v47[*(v44 + 36)];
    v61 = v127[1];
    *v60 = v127[0];
    *(v60 + 1) = v61;
    *(v60 + 2) = v127[2];
    sub_1A5247EB4();
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v62 = sub_1A5247EB4();
  v63 = sub_1A418C970();

  if (v63)
  {
    v64 = sub_1A5247EB4();
    sub_1A418CDB0(v36);

    v65 = v116;
    v66 = v117;
    if ((*(v116 + 48))(v36, 1, v117) != 1)
    {
      v73 = v109;
      (*(v65 + 32))(v109, v36, v66);
      v74 = v115;
      sub_1A411AF10(v127);
      v126 = *&v127[0];
      v75 = v100;
      (*(v65 + 16))(v100, v73, v66);
      v76 = *(v65 + 56);
      v76(v75, 0, 1, v66);
      v76(v114, 1, 1, v66);
      v77 = sub_1A524C634();
      v78 = PXLocalizedSharedLibraryString(v77);

      v88 = sub_1A524C674();
      v87 = v79;

      v80 = v103;
      sub_1A411FE24(v74, v103, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
      v81 = (*(v101 + 80) + 16) & ~*(v101 + 80);
      v82 = swift_allocObject();
      sub_1A411F7A4(v80, v82 + v81, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
      sub_1A42F9768(&v126, v75, 0, 0, 0, v114, v88, v87, v110, sub_1A411FEEC, v82, 3, MEMORY[0x1E6981910], MEMORY[0x1E6981900]);
      sub_1A411FE24(v115, v80, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
      v83 = swift_allocObject();
      sub_1A411F7A4(v80, v83 + v81, type metadata accessor for PhotosDetailsSharedWithYouWidgetView);
      sub_1A411F874(0, &qword_1EB1282C0, sub_1A3EE213C, sub_1A3D6D248, MEMORY[0x1E697E830]);
      sub_1A3F373F8();
      sub_1A524B704();
      v114 = v57;
      v115 = v58;
      sub_1A5247EB4();
      swift_beginAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A411FE8C(v36, sub_1A3F31320);
    v67 = v122;
    v68 = v111;
    (*(v112 + 56))(v111, 1, 1, v113);
    sub_1A411FBD4(v68, v120, sub_1A41184F8);
    swift_storeEnumTagMultiPayload();
    sub_1A411FDDC(&qword_1EB132A28, sub_1A411837C, MEMORY[0x1E6981F48]);
    sub_1A411E5DC(&qword_1EB132A30, sub_1A41184F8, sub_1A4118A28, MEMORY[0x1E6982090]);
    sub_1A5249744();
    sub_1A411FAE4(v68, sub_1A41184F8);
    sub_1A411F874(0, &qword_1EB1329B0, sub_1A411837C, sub_1A41184F8, MEMORY[0x1E697F960]);
    return (*(*(v84 - 8) + 56))(v67, 0, 1, v84);
  }

  else
  {
    sub_1A411F874(0, &qword_1EB1329B0, sub_1A411837C, sub_1A41184F8, MEMORY[0x1E697F960]);
    v70 = *(*(v69 - 8) + 56);
    v71 = v69;
    v72 = v122;

    return v70(v72, 1, 1, v71);
  }
}

uint64_t sub_1A411DB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v38 = a2;
  v6 = sub_1A524B394();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524B554();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x1E6981630];
  v34 = *(v9 + 104);
  v34(v12, v13, v8, v10);
  v39 = sub_1A524B5C4();
  v33 = *(v9 + 8);
  v33(v12, v8);
  sub_1A524BC74();
  sub_1A52481F4();
  LOBYTE(v69) = 1;
  *&v68[3] = *&v68[27];
  *&v68[11] = *&v68[35];
  *&v68[19] = *&v68[43];
  if (v38)
  {
    (v34)(v12, v13, v8);

    v14 = sub_1A524B5C4();
    v33(v12, v8);
    sub_1A524BC74();
    sub_1A52481F4();
    LOBYTE(v69) = 1;
    *&v40[6] = *&v68[51];
    *&v40[22] = *&v68[59];
    *&v40[38] = *&v68[67];
    (*(v36 + 104))(v35, *MEMORY[0x1E69814C8], v37);
    v15 = sub_1A524B4C4();

    *(v64 + 2) = *v40;
    v63 = v14;
    LOWORD(v64[0]) = 257;
    *(&v64[1] + 2) = *&v40[16];
    *(&v64[2] + 2) = *&v40[32];
    *&v64[3] = *&v40[46];
    WORD4(v64[3]) = 256;
    __asm { FMOV            V0.2D, #-3.0 }

    v65 = _Q0;
    *&v66 = v15;
    *(&v66 + 1) = 0x4010000000000000;
    v67 = 0uLL;
    PXDisplayCollectionDetailedCountsMake();
    v73 = v64[3];
    v74 = v65;
    v75 = v66;
    v76 = v67;
    v69 = v63;
    v70 = v64[0];
    v71 = v64[1];
    v72 = v64[2];
  }

  else
  {
    sub_1A411F3AC(&v69);
  }

  v64[3] = v73;
  v65 = v74;
  v66 = v75;
  v67 = v76;
  v63 = v69;
  v64[0] = v70;
  v64[1] = v71;
  v64[2] = v72;
  v21 = v39;
  v60[0] = v39;
  v60[1] = 0;
  LOWORD(v61[0]) = 257;
  *(v61 + 2) = *v68;
  *&v61[3] = *&v68[23];
  *(&v61[2] + 2) = *&v68[16];
  *(&v61[1] + 2) = *&v68[8];
  WORD4(v61[3]) = 256;
  v48 = v39;
  v49 = v61[0];
  v50 = v61[1];
  v51[0] = v61[2];
  *(v51 + 10) = *(&v61[2] + 10);
  v62[2] = v71;
  v62[3] = v72;
  v62[0] = v69;
  v62[1] = v70;
  v62[6] = v75;
  v62[7] = v76;
  v62[4] = v73;
  v62[5] = v74;
  v54 = v71;
  v55 = v72;
  v52 = v69;
  v53 = v70;
  v58 = v75;
  v59 = v76;
  v56 = v73;
  v57 = v74;
  v22 = v39;
  v23 = v61[0];
  v24 = v51[0];
  a3[2] = v61[1];
  a3[3] = v24;
  *a3 = v22;
  a3[1] = v23;
  v25 = v51[1];
  v26 = v52;
  v27 = v54;
  a3[6] = v53;
  a3[7] = v27;
  a3[4] = v25;
  a3[5] = v26;
  v28 = v55;
  v29 = v56;
  v30 = v59;
  a3[11] = v58;
  a3[12] = v30;
  v31 = v57;
  a3[9] = v29;
  a3[10] = v31;
  a3[8] = v28;
  sub_1A411FE24(v60, v41, sub_1A411ED14);
  sub_1A411FE24(v62, v41, sub_1A411EE94);
  sub_1A411FE8C(&v63, sub_1A411EE94);
  v41[0] = v21;
  v41[1] = 0;
  v42 = 1;
  v43 = 1;
  v44 = *v68;
  v45 = *&v68[8];
  *v46 = *&v68[16];
  *&v46[14] = *&v68[23];
  v47 = 256;
  return sub_1A411FE8C(v41, sub_1A411ED14);
}

__n128 sub_1A411E0B4@<Q0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = v2[2];
  v7 = *(v2 + 3);
  v8 = sub_1A524BC34();
  v10 = v9;
  sub_1A411DB84(v4, v6, &v18, v5, v7);
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v31 = v18;
  v32 = v19;
  v44[10] = v28;
  v44[11] = v29;
  v44[12] = v30;
  v44[6] = v24;
  v44[7] = v25;
  v44[8] = v26;
  v44[9] = v27;
  v44[2] = v20;
  v44[3] = v21;
  v44[4] = v22;
  v44[5] = v23;
  v44[0] = v18;
  v44[1] = v19;
  sub_1A411FE24(&v31, &v17, sub_1A411ECD8);
  sub_1A411FE8C(v44, sub_1A411ECD8);
  *a2 = v8;
  *(a2 + 8) = v10;
  v11 = v42;
  *(a2 + 176) = v41;
  *(a2 + 192) = v11;
  *(a2 + 208) = v43;
  v12 = v38;
  *(a2 + 112) = v37;
  *(a2 + 128) = v12;
  v13 = v40;
  *(a2 + 144) = v39;
  *(a2 + 160) = v13;
  v14 = v34;
  *(a2 + 48) = v33;
  *(a2 + 64) = v14;
  v15 = v36;
  *(a2 + 80) = v35;
  *(a2 + 96) = v15;
  result = v32;
  *(a2 + 16) = v31;
  *(a2 + 32) = result;
  return result;
}

void sub_1A411E210(uint64_t *a1@<X8>)
{
  v2 = sub_1A524B544();
  sub_1A3EE213C(0);
  v4 = (a1 + *(v3 + 36));
  sub_1A3F32A14(0);
  v6 = *(v5 + 28);
  v7 = *MEMORY[0x1E69816E0];
  v8 = sub_1A524B5B4();
  (*(*(v8 - 8) + 104))(v4 + v6, v7, v8);
  *v4 = swift_getKeyPath();
  *a1 = v2;
  v9 = sub_1A524B3C4();
  KeyPath = swift_getKeyPath();
  sub_1A411F874(0, &qword_1EB1282C0, sub_1A3EE213C, sub_1A3D6D248, MEMORY[0x1E697E830]);
  v12 = (a1 + *(v11 + 36));
  *v12 = KeyPath;
  v12[1] = v9;
}

uint64_t sub_1A411E348@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  *a3 = xmmword_1A53160F0;
  v6 = a2[6];
  *(a3 + v6) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v7 = a2[7];
  *(a3 + v7) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  result = swift_allocObject();
  *(result + 16) = v5;
  v9 = a3 + a2[8];
  *v9 = sub_1A411FEF0;
  *(v9 + 1) = result;
  v9[16] = 0;
  return result;
}

uint64_t sub_1A411E414(uint64_t a1, double a2)
{
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0);
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel, &unk_1A533DFE8);

  return sub_1A5247EB4();
}

void sub_1A411E4B0(uint64_t a1)
{
  if (!qword_1EB132B38)
  {
    sub_1A4118050(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132B38);
    }
  }
}

unint64_t sub_1A411E518()
{
  result = qword_1EB132B40;
  if (!qword_1EB132B40)
  {
    sub_1A4118B8C(255);
    sub_1A411E5DC(&qword_1EB132B48, sub_1A4118BB4, sub_1A411E64C, MEMORY[0x1E6981600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B40);
  }

  return result;
}

uint64_t sub_1A411E5DC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A411E64C(double a1)
{
  result = qword_1EB132B50;
  if (!qword_1EB132B50)
  {
    sub_1A411F874(255, &qword_1EB132A80, sub_1A4118C50, sub_1A4118CDC, MEMORY[0x1E697F960]);
    sub_1A411E710();
    sub_1A411E7C0(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B50);
  }

  return result;
}

unint64_t sub_1A411E710()
{
  result = qword_1EB132B58;
  if (!qword_1EB132B58)
  {
    sub_1A4118C50(255);
    sub_1A411FDDC(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B58);
  }

  return result;
}

unint64_t sub_1A411E7C0(double a1)
{
  result = qword_1EB132B60;
  if (!qword_1EB132B60)
  {
    sub_1A4118CDC(255, a1);
    sub_1A4118E98(255, v2);
    sub_1A4118FDC(255, v3);
    sub_1A41190E8(255, v4);
    sub_1A5249764();
    sub_1A411F620(&qword_1EB132B10, sub_1A41190E8, sub_1A41194A0);
    sub_1A411FDDC(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A411FDDC(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B60);
  }

  return result;
}

unint64_t sub_1A411E990(double a1)
{
  result = qword_1EB132B70;
  if (!qword_1EB132B70)
  {
    sub_1A411F874(255, &qword_1EB132960, sub_1A4117FBC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    sub_1A411FDDC(&qword_1EB132B78, sub_1A4117FBC, MEMORY[0x1E6981870]);
    sub_1A411FDDC(&qword_1EB12F910, sub_1A3FA9268, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B70);
  }

  return result;
}

unint64_t sub_1A411EAB4(double a1)
{
  result = qword_1EB132B80;
  if (!qword_1EB132B80)
  {
    sub_1A41195C4(255, a1);
    sub_1A411E518();
    sub_1A411F620(&qword_1EB132B68, sub_1A4117F18, sub_1A411E990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132B80);
  }

  return result;
}

double sub_1A411EB6C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

void sub_1A411EB7C()
{
  type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0);
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel, &unk_1A533DFE8);
  v0 = sub_1A5247EB4();
  sub_1A418CC88();
}

void sub_1A411EC6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A411ED34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A411EE2C(255, &qword_1EB1289E0, sub_1A3FA9580, MEMORY[0x1E69817E8], MEMORY[0x1E697DDA0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A411EDD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A411EE2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A411EE94(uint64_t a1)
{
  if (!qword_1EB132BA0)
  {
    sub_1A411EF38(255, &qword_1EB132BA8, sub_1A411EF10, MEMORY[0x1E697E288]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132BA0);
    }
  }
}

void sub_1A411EF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1A411EFB8(uint64_t a1)
{
  result = sub_1A411FDDC(&qword_1EB12C498, type metadata accessor for PhotosDetailsSharedWithYouWidgetView, &unk_1A531C03C);
  *(a1 + 8) = result;
  return result;
}

void sub_1A411F054(uint64_t a1)
{
  sub_1A41173E0(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A41173E0(319, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      sub_1A411F160(319, v2);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A411F160(uint64_t a1, double a2)
{
  if (!qword_1EB124660)
  {
    type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(255);
    sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel, &unk_1A533DFE8);
    v2 = sub_1A5247ED4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB124660);
    }
  }
}

unint64_t sub_1A411F224(double a1)
{
  result = qword_1EB132BB8;
  if (!qword_1EB132BB8)
  {
    sub_1A411F874(255, &qword_1EB132BC0, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView, sub_1A41195C4, MEMORY[0x1E697F960]);
    sub_1A411FDDC(&qword_1EB12F8D8, type metadata accessor for PhotosDetailsSavedFromAppsWidgetView, &unk_1A530D9AC);
    sub_1A411EAB4(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132BB8);
  }

  return result;
}

void sub_1A411F318(uint64_t a1)
{
  if (!qword_1EB132BD0)
  {
    sub_1A411ECD8(255);
    sub_1A411FDDC(&qword_1EB132BD8, sub_1A411ECD8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132BD0);
    }
  }
}

double sub_1A411F3AC(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_1A411F3C4(uint64_t a1)
{
  if (!qword_1EB132BE8)
  {
    sub_1A4119220(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132BE8);
    }
  }
}

void sub_1A411F42C()
{
  type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel(0);
  sub_1A411FDDC(&qword_1EB125E48, type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel, &unk_1A533DFE8);
  v0 = sub_1A5247EB4();
  v1 = sub_1A418C934();

  if ((v1 & 1) == 0)
  {
    sub_1A411B63C(v2, v3);
  }
}

void sub_1A411F518(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A3E75E68(a1, a2, a3 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

double sub_1A411F568(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A3E04DF4(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1A411F620(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A411F6A0(double a1)
{
  result = qword_1EB132BF8;
  if (!qword_1EB132BF8)
  {
    sub_1A411F5B8(255, a1);
    sub_1A3FA9DC0();
    sub_1A411FDDC(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132BF8);
  }

  return result;
}

unint64_t sub_1A411F750()
{
  result = qword_1EB132C00;
  if (!qword_1EB132C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132C00);
  }

  return result;
}

uint64_t sub_1A411F7A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A411F80C(uint64_t a1, double a2)
{
  if (!qword_1EB132C08)
  {
    sub_1A41182E0(255, a2);
    v2 = sub_1A52483B4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132C08);
    }
  }
}

void sub_1A411F874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t objectdestroy_4Tm_1()
{
  v1 = type metadata accessor for PhotosDetailsSharedWithYouWidgetView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[6];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[7];
  sub_1A3FA5378(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248334();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_1A411EB6C(*(v2 + v1[8]), *(v2 + v1[8] + 8), *(v2 + v1[8] + 16));

  return swift_deallocObject();
}

uint64_t sub_1A411FAE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A411FB44(uint64_t a1, uint64_t a2)
{
  sub_1A411EDD8(0, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A411FBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A411FC3C(uint64_t a1)
{
  sub_1A411EDD8(0, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A411FCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A411FD2C()
{
  result = qword_1EB141760;
  if (!qword_1EB141760)
  {
    sub_1A4118464(255);
    sub_1A411FDDC(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141760);
  }

  return result;
}

uint64_t sub_1A411FDDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A411FE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A411FE8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A411FF2C(uint64_t a1)
{
  sub_1A524EC94();
  v1 = sub_1A524C584();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A411FF88(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A411FF00(v3, *v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A411FFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A4120044(uint64_t a1)
{
  v2 = sub_1A52486A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697E718])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x1E697E6F0])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x1E697E6F8])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x1E697E6E8])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x1E697E708])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x1E697E720])
  {
    return 6;
  }

  if (v7 == *MEMORY[0x1E697E728])
  {
    return 7;
  }

  if (v7 == *MEMORY[0x1E697E6C0])
  {
    return 8;
  }

  if (v7 == *MEMORY[0x1E697E6C8])
  {
    return 9;
  }

  if (v7 == *MEMORY[0x1E697E6D0])
  {
    return 10;
  }

  if (v7 == *MEMORY[0x1E697E6D8])
  {
    return 11;
  }

  if (v7 != *MEMORY[0x1E697E6E0])
  {
    (*(v3 + 8))(v6, v2);
    return 4;
  }

  return 12;
}

uint64_t sub_1A412028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A52486A4();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 - 1) > 0xB)
  {
    v6 = MEMORY[0x1E697E6F8];
  }

  else
  {
    v6 = qword_1E772A218[a1 - 1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_1A412031C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A41203B4, v4, v3);
}

uint64_t sub_1A41203B4()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1A4120BE0();
  *v1 = v0;
  v1[1] = sub_1A3DEB8E8;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A531C268);
}

uint64_t sub_1A41204A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1A5240E64();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1A5246F24();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1A52401A4();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  sub_1A524CC54();
  v2[13] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v2[14] = v7;
  v2[15] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A412064C, v7, v6);
}

void sub_1A412064C()
{
  v8 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  sub_1A523FF44();
  sub_1A5240194();
  (*(v2 + 8))(v1, v3);
  v7 = sub_1A3CB648C();
  (*(v6 + 16))(v4, v7, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A412089C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1A4120A94;
  }

  else
  {
    v5 = sub_1A41209D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A41209D8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  sub_1A523FDD4();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A4120A94()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A4120B44(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return sub_1A41204A0(a1, v1);
}

unint64_t sub_1A4120BE0()
{
  result = qword_1EB132C18;
  if (!qword_1EB132C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132C18);
  }

  return result;
}

void sub_1A4120C34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1A4120C88(uint64_t a1)
{
  if (!qword_1EB132C20)
  {
    sub_1A52401A4();
    sub_1A412147C(&qword_1EB132C28, MEMORY[0x1E695A3A0], MEMORY[0x1E695A398]);
    v1 = sub_1A5240044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132C20);
    }
  }
}

uint64_t sub_1A4120D1C()
{
  v0 = sub_1A5240334();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  sub_1A4120C88(0);
  v10 = sub_1A5240BB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_1A523FDB4();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  (*(v1 + 104))(v3, *MEMORY[0x1E695A500], v0);
  return sub_1A523FFE4();
}

uint64_t sub_1A4120F44(uint64_t a1)
{
  v2 = sub_1A4121620();

  return MEMORY[0x1EEDB39C8](a1, v2);
}

uint64_t sub_1A4120F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A4121034, v7, v6);
}

uint64_t sub_1A4121034()
{
  v0[2] = v0[6];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DED2C4;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A531C3F0);
}

uint64_t sub_1A4121114@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5240334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  sub_1A4120C88(0);
  v12 = sub_1A5240BB4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = sub_1A523FDB4();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  result = sub_1A523FFE4();
  *a1 = result;
  return result;
}

uint64_t sub_1A4121348(uint64_t a1)
{
  v2 = sub_1A4120BE0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A4121388()
{
  result = qword_1EB132C30;
  if (!qword_1EB132C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132C30);
  }

  return result;
}

unint64_t sub_1A41213E0()
{
  result = qword_1EB132C38;
  if (!qword_1EB132C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132C38);
  }

  return result;
}

uint64_t sub_1A412147C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A4121518()
{
  result = qword_1EB132C40;
  if (!qword_1EB132C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132C40);
  }

  return result;
}

uint64_t sub_1A4121584(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A41204A0(a1, v1);
}

unint64_t sub_1A4121620()
{
  result = qword_1EB132C48;
  if (!qword_1EB132C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132C48);
  }

  return result;
}

unint64_t FetchResultSortOrder.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1A412168C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1A41216A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id sub_1A41218FC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXSharedCollectionAddToViewFactory(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A4121930(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696873696C627570;
  }

  else
  {
    v3 = 0x6E69726170657270;
  }

  if (v2)
  {
    v4 = 0xE900000000000067;
  }

  else
  {
    v4 = 0xEA0000000000676ELL;
  }

  if (*a2)
  {
    v5 = 0x696873696C627570;
  }

  else
  {
    v5 = 0x6E69726170657270;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000676ELL;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();
  }

  return v8 & 1;
}

uint64_t sub_1A41219E0()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A4121A6C(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A4121AE4(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A4121B6C(char *a2@<X8>)
{
  v3 = sub_1A524E824();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1A4121BCC(uint64_t *a1@<X8>)
{
  v2 = 0x6E69726170657270;
  if (*v1)
  {
    v2 = 0x696873696C627570;
  }

  v3 = 0xE900000000000067;
  if (*v1)
  {
    v3 = 0xEA0000000000676ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1A4121C14(uint64_t *a2@<X8>)
{
  v20 = a2;
  v2 = sub_1A5247E04();
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A4126E98(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4126DE0(0);
  v15[2] = v7;
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  sub_1A4126DAC(0, v8);
  v15[1] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v19 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v18 = sub_1A524B3D4();
  v17 = sub_1A5248874();
  v16 = sub_1A524A064();
  *v6 = sub_1A5249574();
  *(v6 + 1) = 0x4034000000000000;
  v6[16] = 0;
  sub_1A4129BE8(0);
  sub_1A41220B8(&v6[*(v13 + 44)], v14);
}

void sub_1A41220B8(uint64_t a2@<X8>, __n128 q0_0@<Q0>)
{
  sub_1A4127004(0, q0_0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34[-v8];
  type metadata accessor for SharedCollectionActionProgressView(0);
  v10 = sub_1A524C634();
  v11 = PXLocalizedSharedCollectionsString(v10);

  v12 = sub_1A524C674();
  v14 = v13;

  v37 = v12;
  v38 = v14;
  sub_1A3D5F9DC();
  v15 = sub_1A524A464();
  v17 = v16;
  v19 = v18;
  sub_1A524A184();
  v20 = sub_1A524A344();
  v22 = v21;
  v35 = v23;
  v25 = v24;
  sub_1A3E04DF4(v15, v17, v19 & 1);

  sub_1A5248074();
  v26 = &v9[*(v5 + 44)];
  sub_1A3E74608(0);
  v28 = *(v27 + 28);
  v29 = *MEMORY[0x1E697DC10];
  v30 = sub_1A5247E14();
  (*(*(v30 - 8) + 104))(v26 + v28, v29, v30);
  *v26 = swift_getKeyPath();
  v31 = v36;
  sub_1A4127D3C(v9, v36, sub_1A4127004);
  *a2 = v20;
  *(a2 + 8) = v22;
  LOBYTE(v26) = v35 & 1;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v25;
  sub_1A4126F9C(0, v32);
  sub_1A4127D3C(v31, a2 + *(v33 + 48), sub_1A4127004);
  sub_1A3E75E68(v20, v22, v26);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t SharedCollectionAddToView.viewModel.getter()
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

void *sub_1A41224DC@<X0>(void *a2@<X8>)
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  *a2 = v4;
  return result;
}

uint64_t sub_1A4122574(void **a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v3 = v2;
  return sub_1A524B6B4();
}

uint64_t SharedCollectionAddToView.viewModel.setter(uint64_t a1)
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void (*SharedCollectionAddToView.viewModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + *(type metadata accessor for SharedCollectionAddToView(0) + 24);
  v7 = *v5;
  v6 = *(v5 + 8);
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v4[8] = v8;
  v9 = v7;

  sub_1A524B6A4();
  return sub_1A3D9CCC4;
}

uint64_t SharedCollectionAddToView.$viewModel.getter()
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return v1;
}

uint64_t SharedCollectionAddToView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SharedCollectionAddToView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A41270A0(0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4127A68(0, v6);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = sub_1A524BC74();
  v8[1] = v13;
  sub_1A4127CD4(0);
  sub_1A4122AD0(v1, (v8 + *(v14 + 44)), v15);
  sub_1A4127D3C(v1, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedCollectionAddToView);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_1A4127038(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for SharedCollectionAddToView);
  sub_1A4129538(&qword_1EB132D58, sub_1A41270A0, MEMORY[0x1E6981880]);
  sub_1A524AA84();

  sub_1A4129A1C(v8, sub_1A41270A0);
  v18 = sub_1A524BC74();
  v20 = v19;
  v21 = &v12[*(v10 + 36)];
  sub_1A4123B80(v1, v21);
  sub_1A4127BC4(0);
  v23 = (v21 + *(v22 + 36));
  *v23 = v18;
  v23[1] = v20;
  sub_1A4127F24(v24);
  sub_1A524AEF4();
  return sub_1A4129A1C(v12, sub_1A4127A68);
}

double sub_1A4122AD0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v93 = a2;
  sub_1A41278A0(0, a3);
  v92 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SharedCollectionAddToView(0);
  v84 = *(v6 - 8);
  v95 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v94 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DF58(0);
  v89 = v10;
  v91 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5249284();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41275F4(0);
  v17 = v16;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4127554(0, v18);
  v79 = v21;
  v80 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v71 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A412741C(0, v22);
  v83 = v24;
  v85 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v75 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4127204(0);
  v87 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26 - 8);
  v88 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v76 = &v70 - v29;
  v86 = sub_1A524B354();
  v82 = sub_1A5248874();
  v81 = sub_1A524A064();
  v96 = a1;
  sub_1A524A044();
  sub_1A41276C4(0);
  sub_1A4129538(&qword_1EB132D20, sub_1A41276C4, MEMORY[0x1E6981F48]);
  sub_1A5247D14();
  v30 = sub_1A524A054();
  sub_1A5247BC4();
  v31 = &v20[*(v17 + 36)];
  *v31 = v30;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v97 = sub_1A3C38BD4(0xD000000000000029);
  v98 = v36;
  (*(v13 + 104))(v15, *MEMORY[0x1E697C438], v12);
  v37 = sub_1A41277F0();
  v38 = sub_1A3D5F9DC();
  sub_1A524ACF4();
  (*(v13 + 8))(v15, v12);

  sub_1A4129CA0(v20, sub_1A41275F4);
  v39 = v77;
  sub_1A5247B34();
  v74 = type metadata accessor for SharedCollectionAddToView;
  v70 = a1;
  v40 = v94;
  sub_1A4127D3C(a1, v94, type metadata accessor for SharedCollectionAddToView);
  v84 = *(v84 + 80);
  v41 = (v84 + 16) & ~v84;
  v72 = v41;
  v42 = swift_allocObject();
  v73 = type metadata accessor for SharedCollectionAddToView;
  sub_1A4127038(v40, v42 + v41, type metadata accessor for SharedCollectionAddToView);
  v43 = v78;
  MEMORY[0x1A5906A80](v39, sub_1A4129810, v42);
  v44 = v90;
  sub_1A41237E4(v90);
  v97 = v17;
  v98 = MEMORY[0x1E69E6158];
  v99 = v37;
  v100 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_1A4129538(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
  v48 = sub_1A4127958(v47);
  v49 = v75;
  v50 = v43;
  v51 = v44;
  v52 = v79;
  v53 = v89;
  v54 = v92;
  v55 = v71;
  sub_1A524ACC4();
  sub_1A4129CA0(v51, sub_1A41278A0);
  (*(v91 + 8))(v50, v53);
  (*(v80 + 8))(v55, v52);
  v97 = v52;
  v98 = v53;
  v99 = v54;
  v100 = OpaqueTypeConformance2;
  v101 = v46;
  v102 = v48;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v76;
  v58 = v83;
  sub_1A425D400(0, v83, v56);
  (*(v85 + 8))(v49, v58);
  v59 = v94;
  sub_1A4127D3C(v70, v94, v74);
  v60 = v72;
  v61 = swift_allocObject();
  sub_1A4127038(v59, v61 + v60, v73);
  v62 = v88;
  v63 = (v57 + *(v87 + 44));
  *v63 = sub_1A4129918;
  v63[1] = v61;
  v63[2] = 0;
  v63[3] = 0;
  sub_1A3CDD988(v57, v62);
  v64 = v93;
  v65 = v82;
  *v93 = v86;
  v64[1] = v65;
  *(v64 + 16) = v81;
  v66 = v64;
  sub_1A4127168(0, v67);
  sub_1A3CDD988(v62, v66 + *(v68 + 48));

  sub_1A4129A1C(v57, sub_1A4127204);
  sub_1A4129A1C(v62, sub_1A4127204);

  return result;
}

uint64_t sub_1A41233E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  sub_1A412777C(0, a3);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v47 - v10);
  v12 = type metadata accessor for SharedCollectionPreviewsSection(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v47 - v16);
  v18 = (a1 + *(type metadata accessor for SharedCollectionAddToView(0) + 24));
  v20 = v18[1];
  v49 = *v18;
  v19 = v49;
  v50 = v20;
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A43270C0(v17);
  v49 = v19;
  v50 = v20;
  sub_1A524B6A4();
  v21 = v48;
  *v11 = swift_getKeyPath();
  sub_1A41294D4(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for CommentSection(0);
  v23 = (v11 + v22[5]);
  v48 = v21;
  type metadata accessor for SharedCollectionActionViewModel(0);
  sub_1A524B694();
  v24 = v50;
  *v23 = v49;
  v23[1] = v24;
  v25 = v11 + v22[6];
  *v25 = sub_1A5247C34() & 1;
  *(v25 + 1) = v26;
  v25[16] = v27 & 1;
  v28 = v22[7];
  *(v11 + v28) = [objc_opt_self() maxCharactersPerComment];
  v29 = sub_1A524B2E4();
  LOBYTE(v25) = sub_1A524A064();
  sub_1A41277B0(0);
  v31 = v11 + *(v30 + 36);
  *v31 = v29;
  v31[8] = v25;
  v32 = v11 + *(v6 + 44);
  v33 = *(sub_1A5248A14() + 20);
  v34 = *MEMORY[0x1E697F468];
  v35 = sub_1A52494A4();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #10.0 }

  *v32 = _Q0;
  sub_1A3E42C88(0);
  *&v32[*(v41 + 36)] = 256;
  sub_1A4127D3C(v17, v14, type metadata accessor for SharedCollectionPreviewsSection);
  sub_1A4127D3C(v11, v8, sub_1A412777C);
  sub_1A4127D3C(v14, a2, type metadata accessor for SharedCollectionPreviewsSection);
  sub_1A41276F8(0);
  v43 = v42;
  v44 = a2 + *(v42 + 48);
  *v44 = 0x4034000000000000;
  *(v44 + 8) = 0;
  sub_1A4127D3C(v8, a2 + *(v42 + 64), sub_1A412777C);
  v45 = a2 + *(v43 + 80);
  *v45 = 0x4034000000000000;
  *(v45 + 8) = 0;
  sub_1A4129CA0(v11, sub_1A412777C);
  sub_1A4129CA0(v17, type metadata accessor for SharedCollectionPreviewsSection);
  sub_1A4129CA0(v8, sub_1A412777C);
  return sub_1A4129CA0(v14, type metadata accessor for SharedCollectionPreviewsSection);
}

void sub_1A41237E4(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for SharedCollectionAddToView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A4128CC4(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  sub_1A4127D3C(v1, &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedCollectionAddToView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1A4127038(&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SharedCollectionAddToView);
  sub_1A524B704();
  v13 = (v1 + *(v3 + 32));
  v14 = *v13;
  v15 = v13[1];
  v31 = *v13;
  v32 = v15;
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v16 = sub_1A524B6A4();
  v17 = v30;
  v18 = MEMORY[0x1E69E7D40];
  v19 = (*((*MEMORY[0x1E69E7D40] & *v30) + 0x4C0))(v16);

  if (v19 < 1)
  {
    v22 = 1;
  }

  else
  {
    v31 = v14;
    v32 = v15;
    v20 = sub_1A524B6A4();
    v21 = v30;
    v22 = (*((*v18 & *v30) + 0x458))(v20);
  }

  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22 & 1;
  v25 = v29;
  v26 = (*(v8 + 32))(v29, v10, v7);
  sub_1A41278A0(0, v26);
  v28 = (v25 + *(v27 + 36));
  *v28 = KeyPath;
  v28[1] = sub_1A3E07024;
  v28[2] = v24;
}

uint64_t sub_1A4123B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SharedCollectionActionProgressView(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (a1 + *(type metadata accessor for SharedCollectionAddToView(0) + 24));
  v11 = *v9;
  v10 = v9[1];
  v19 = v11;
  v20 = v10;
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v12 = sub_1A524B6A4();
  v13 = v18;
  v14 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0x428))(v12);

  if (v14)
  {
    *v8 = swift_getKeyPath();
    sub_1A41294D4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    *(v8 + *(v5 + 20)) = 0;
    sub_1A4127038(v8, a2, type metadata accessor for SharedCollectionActionProgressView);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v6 + 56))(a2, v15, 1, v5);
}

uint64_t sub_1A4123D90()
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4124350(&qword_1EB128A80, sub_1A3D63A58, sub_1A3D63A58, v3);
  sub_1A3D63A8C(0);
  v5 = v4;
  v6 = *(*(v4 - 8) + 48);
  if (v6(v3, 1, v4) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A4129CA0(v3, sub_1A3D63A58);
  v7 = *(v0 + *(type metadata accessor for SharedCollectionAddToView(0) + 20));
  if (v7)
  {
    v8 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
    swift_beginAccess();
    if (v6((v7 + v8), 1, v5))
    {
      swift_endAccess();
      PXPresentationEnvironmentForSender();
    }

    sub_1A5245C94();
  }

  type metadata accessor for HostingViewControllerProvider(0);
  sub_1A4129538(&qword_1EB131170, type metadata accessor for HostingViewControllerProvider, &protocol conformance descriptor for HostingViewControllerProvider);
  result = sub_1A5248BA4();
  __break(1u);
  return result;
}

void *sub_1A4124050(uint64_t a1)
{
  v2 = type metadata accessor for SharedCollectionAddToView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = sub_1A4123D90();
  v7 = (a1 + *(v3 + 32));
  v9 = *v7;
  v8 = v7[1];
  v16[2] = v9;
  v16[3] = v8;
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if (v6)
  {
    v11 = v16[1];
    sub_1A4127D3C(a1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedCollectionAddToView);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    sub_1A4127038(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SharedCollectionAddToView);
    v14 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x4D8);
    v15 = swift_unknownObjectRetain();
    v14(v15, sub_1A4129ADC, v13);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A4124254(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXLemonadeLocalizedString(v2);

  sub_1A524C674();
  sub_1A3D5F9DC();
  v4 = sub_1A524A464();
  v6 = v5;
  v8 = v7;
  v9 = sub_1A524A3A4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1A3E04DF4(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
}

uint64_t sub_1A4124350@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41294D4(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A4129580(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A4127038(v16, a4, a3);
  }

  v18 = sub_1A524D254();
  v19 = sub_1A524A014();
  sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A412453C@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = sub_1A5249A94();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v72 = &v69[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DD0DCC(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69[-v9];
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v78 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v69[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v69[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v69[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69[-v23];
  v80 = v1;
  sub_1A4124350(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, &v69[-v23]);
  v25 = v3[13];
  v75 = *MEMORY[0x1E697FF38];
  v74 = v25;
  v25(v21);
  v73 = v3[7];
  v73(v21, 0, 1, v2);
  v76 = v6;
  v26 = *(v6 + 48);
  sub_1A3F188F8(v24, v10);
  sub_1A3F188F8(v21, &v10[v26]);
  v84 = v3;
  v27 = v3[6];
  if (v27(v10, 1, v2) == 1)
  {
    sub_1A4129CA0(v21, sub_1A3DC7D88);
    sub_1A4129CA0(v24, sub_1A3DC7D88);
    if (v27(&v10[v26], 1, v2) == 1)
    {
      sub_1A4129CA0(v10, sub_1A3DC7D88);
      v28 = 2;
LABEL_7:
      v82 = v28;
      v29 = v80;
      v30 = v83;
      goto LABEL_11;
    }

LABEL_6:
    sub_1A4129CA0(v10, sub_1A3DD0DCC);
    v28 = 5;
    goto LABEL_7;
  }

  sub_1A3F188F8(v10, v82);
  v71 = v27;
  if (v27(&v10[v26], 1, v2) == 1)
  {
    sub_1A4129CA0(v21, sub_1A3DC7D88);
    sub_1A4129CA0(v24, sub_1A3DC7D88);
    (v84[1])(v82, v2);
    v27 = v71;
    goto LABEL_6;
  }

  v31 = v72;
  (v84[4])(v72, &v10[v26], v2);
  sub_1A4129538(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v70 = sub_1A524C594();
  v32 = v84[1];
  v32(v31, v2);
  sub_1A4129CA0(v21, sub_1A3DC7D88);
  sub_1A4129CA0(v24, sub_1A3DC7D88);
  v32(v82, v2);
  sub_1A4129CA0(v10, sub_1A3DC7D88);
  v33 = 5;
  if (v70)
  {
    v33 = 2;
  }

  v82 = v33;
  v29 = v80;
  v30 = v83;
  v27 = v71;
LABEL_11:
  sub_1A4124350(&unk_1EB128A40, sub_1A3DC7D88, sub_1A3DC7D88, v30);
  v34 = v77;
  v74(v77, v75, v2);
  v73(v34, 0, 1, v2);
  v35 = *(v76 + 48);
  v36 = v79;
  sub_1A3F188F8(v30, v79);
  sub_1A3F188F8(v34, &v36[v35]);
  if (v27(v36, 1, v2) != 1)
  {
    sub_1A3F188F8(v36, v78);
    if (v27(&v36[v35], 1, v2) != 1)
    {
      v38 = v78;
      v39 = v84;
      v40 = v72;
      (v84[4])(v72, &v36[v35], v2);
      sub_1A4129538(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      sub_1A524C594();
      v41 = v39[1];
      v41(v40, v2);
      sub_1A4129CA0(v34, sub_1A3DC7D88);
      sub_1A4129CA0(v83, sub_1A3DC7D88);
      v41(v38, v2);
      v37 = sub_1A4129CA0(v36, sub_1A3DC7D88);
      goto LABEL_18;
    }

    sub_1A4129CA0(v34, sub_1A3DC7D88);
    sub_1A4129CA0(v30, sub_1A3DC7D88);
    (v84[1])(v78, v2);
    goto LABEL_16;
  }

  sub_1A4129CA0(v34, sub_1A3DC7D88);
  sub_1A4129CA0(v30, sub_1A3DC7D88);
  if (v27(&v36[v35], 1, v2) != 1)
  {
LABEL_16:
    v37 = sub_1A4129CA0(v36, sub_1A3DD0DCC);
    goto LABEL_18;
  }

  v37 = sub_1A4129CA0(v36, sub_1A3DC7D88);
LABEL_18:
  v42 = MEMORY[0x1EEE9AC00](v37);
  v43 = v82;
  *&v69[-32] = v29;
  *&v69[-24] = v43;
  *&v69[-16] = v44;
  sub_1A4128724(0, v42);
  sub_1A4128898(255, v45);
  v47 = v46;
  sub_1A41289E4(255, v48);
  v50 = v49;
  sub_1A4128AE4(255, v51);
  v53 = v52;
  sub_1A4128BB4(255, v54);
  v56 = v55;
  sub_1A4128C38(255, v57);
  v59 = v58;
  v61 = sub_1A4128D18(v60);
  v85 = v59;
  v86 = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = v56;
  v86 = MEMORY[0x1E69E6158];
  v87 = OpaqueTypeConformance2;
  v88 = MEMORY[0x1E69E6180];
  v63 = swift_getOpaqueTypeConformance2();
  v85 = v53;
  v86 = v63;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = MEMORY[0x1E69E6370];
  v85 = v50;
  v86 = MEMORY[0x1E69E6370];
  v66 = MEMORY[0x1E69E6388];
  v87 = v64;
  v88 = MEMORY[0x1E69E6388];
  v67 = swift_getOpaqueTypeConformance2();
  v85 = v47;
  v86 = v65;
  v87 = v67;
  v88 = v66;
  swift_getOpaqueTypeConformance2();
  return sub_1A524BA54();
}

uint64_t sub_1A4124E9C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a2;
  v88 = a3;
  v85 = a4;
  v5 = type metadata accessor for CommentSection(0);
  v86 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v93 = v7;
  v91 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128C38(0, v6);
  v9 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128BB4(0, v10);
  v75 = v13;
  v73 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v72 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128AE4(0, v14);
  v79 = v16;
  v77 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v74 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41289E4(0, v17);
  v81 = v19;
  v80 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v78 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4128898(0, v20);
  v83 = *(v22 - 8);
  v84 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v82 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1A3C38BD4(0xD00000000000002ALL);
  v102 = v24;
  v76 = v5;
  v25 = *(v5 + 20);
  v92 = a1;
  v26 = (a1 + v25);
  v28 = *v26;
  v27 = v26[1];
  v89 = v28;
  v90 = v27;
  v98 = v28;
  v99 = v27;
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v30 = v29;
  sub_1A524B6C4();
  v31 = v94;
  v32 = v95;
  v33 = v96;
  swift_getKeyPath();
  v98 = v31;
  v99 = v32;
  v100 = v33;
  sub_1A41294D4(0, &qword_1EB132E08, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  sub_1A3D5F9DC();
  v34 = v87;
  sub_1A524BE04();
  result = sub_1A524A064();
  v36 = &v12[*(v9 + 36)];
  *v36 = result;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  if (v88 < v34)
  {
    __break(1u);
  }

  else
  {
    v37 = sub_1A4128D18(0.0);
    v38 = v72;
    sub_1A524B1D4();
    sub_1A4129CA0(v12, sub_1A4128C38);
    v94 = v89;
    v95 = v90;
    v71[1] = v30;
    v39 = sub_1A524B6A4();
    v40 = v98;
    v41 = (*((*MEMORY[0x1E69E7D40] & *v98) + 0x2A8))(v39);
    v43 = v42;

    v94 = v41;
    v95 = v43;
    v71[0] = type metadata accessor for CommentSection;
    v44 = v91;
    v45 = v92;
    sub_1A4127D3C(v92, v91, type metadata accessor for CommentSection);
    v88 = *(v86 + 80);
    v46 = (v88 + 16) & ~v88;
    v86 = v46;
    v47 = swift_allocObject();
    v87 = type metadata accessor for CommentSection;
    sub_1A4127038(v44, v47 + v46, type metadata accessor for CommentSection);
    v98 = v9;
    v99 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v74;
    v50 = v75;
    sub_1A524B144();

    (*(v73 + 8))(v38, v50);
    v51 = (v45 + *(v76 + 24));
    LODWORD(v76) = *v51;
    v52 = *(v51 + 1);
    LOBYTE(v37) = v51[16];
    LOBYTE(v94) = v76;
    v95 = v52;
    LOBYTE(v96) = v37;
    sub_1A4128CC4(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
    sub_1A5247C24();
    v94 = v50;
    v95 = MEMORY[0x1E69E6158];
    v96 = OpaqueTypeConformance2;
    v97 = MEMORY[0x1E69E6180];
    v53 = swift_getOpaqueTypeConformance2();
    v54 = v78;
    v55 = v79;
    sub_1A524B074();

    (*(v77 + 8))(v49, v55);
    LOBYTE(v94) = v76;
    v95 = v52;
    LOBYTE(v96) = v37;
    sub_1A5247C04();
    v56 = v91;
    v57 = v71[0];
    sub_1A4127D3C(v92, v91, v71[0]);
    v58 = v86;
    v59 = swift_allocObject();
    sub_1A4127038(v56, v59 + v58, v87);
    v94 = v55;
    v95 = v53;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = MEMORY[0x1E69E6388];
    v62 = v82;
    v63 = v81;
    v64 = MEMORY[0x1E69E6370];
    sub_1A524B154();

    (*(v80 + 8))(v54, v63);
    v94 = v89;
    v95 = v90;
    v65 = sub_1A524B6A4();
    v66 = v98;
    v67 = (*((*MEMORY[0x1E69E7D40] & *v98) + 0x2D8))(v65);

    LOBYTE(v98) = v67 & 1;
    sub_1A4127D3C(v92, v56, v57);
    v68 = v86;
    v69 = swift_allocObject();
    sub_1A4127038(v56, v69 + v68, v87);
    v94 = v63;
    v95 = v64;
    v96 = v60;
    v97 = v61;
    swift_getOpaqueTypeConformance2();
    v70 = v84;
    sub_1A524B154();

    return (*(v83 + 8))(v62, v70);
  }

  return result;
}

uint64_t sub_1A41258B8(void *a1, uint64_t a2)
{
  v3 = sub_1A524BEE4();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A524BF64();
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CommentSection(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  result = sub_1A524C7A4();
  if (*(a2 + *(v10 + 36)) < result)
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v14 = sub_1A524D474();
    sub_1A4127D3C(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CommentSection);
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = swift_allocObject();
    sub_1A4127038(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for CommentSection);
    aBlock[4] = sub_1A41292F0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_104;
    v17 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A4129538(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C38394(0);
    sub_1A4129538(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v8, v5, v17);
    _Block_release(v17);

    (*(v19 + 8))(v5, v3);
    return (*(v6 + 8))(v8, v18);
  }

  return result;
}

void sub_1A4125C7C()
{
  sub_1A41294D4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v12 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v13 = sub_1A5240D44();
  v14 = [v12 initWithPhotoLibraryURL_];

  (*(v8 + 8))(v10, v7);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  type metadata accessor for LemonadePhotoLibraryContext(0, v16);
  v17 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v14, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v20);
  sub_1A3C799F0(v6, 0, 0, 0, v3, &v20, v17, 2);
  type metadata accessor for SharedCollectionActionViewModel(0);

  SharedCollectionActionViewModel.__allocating_init(navigationContext:extensionContext:sharedCollection:sharedCollections:assets:mediaSources:albumName:batchComment:perAssetCreationOptions:updateCallback:doneCallback:)(v18, 0, 0, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_1A4126078(uint64_t a1)
{
  v2 = sub_1A4129600();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A41260C4(uint64_t a1)
{
  v2 = sub_1A4129600();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A4126110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v27 = a2;
  v28 = type metadata accessor for SharedCollectionAddToView(0);
  MEMORY[0x1EEE9AC00](v28);
  sub_1A41294D4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v16 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v17 = sub_1A5240D44();
  v18 = [v16 initWithPhotoLibraryURL_];

  (*(v12 + 8))(v14, v11);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  type metadata accessor for LemonadePhotoLibraryContext(0, v20);
  v21 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v18, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v29);
  sub_1A3C799F0(v10, 0, 0, 0, v7, &v29, v21, 2);
  type metadata accessor for SharedCollectionActionViewModel(0);
  sub_1A4129C50(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A52F9790;
  *(v22 + 32) = a1;
  v23 = a1;

  sub_1A3C66EE8(v25, v26);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4126630(uint64_t a1, uint64_t a2)
{
  sub_1A41294D4(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A41266E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v27 = a2;
  v28 = type metadata accessor for SharedCollectionAddToView(0);
  MEMORY[0x1EEE9AC00](v28);
  sub_1A41294D4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v16 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v17 = sub_1A5240D44();
  v18 = [v16 initWithPhotoLibraryURL_];

  (*(v12 + 8))(v14, v11);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  type metadata accessor for LemonadePhotoLibraryContext(0, v20);
  v21 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v18, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v29);
  sub_1A3C799F0(v10, 0, 0, 0, v7, &v29, v21, 2);
  type metadata accessor for SharedCollectionActionViewModel(0);
  sub_1A4129C50(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A52F9790;
  *(v22 + 32) = a1;
  v23 = a1;

  sub_1A3C66EE8(v25, v26);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4126CB0(uint64_t a1, double a2)
{
  if (!qword_1EB132C68)
  {
    sub_1A4126D20(255, a2);
    sub_1A4126DAC(255, v2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB132C68);
    }
  }
}

void sub_1A4126D20(uint64_t a1, double a2)
{
  if (!qword_1EB132C70)
  {
    sub_1A4128CC4(255, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132C70);
    }
  }
}

void sub_1A4126E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4128CC4(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4126ED4(uint64_t a1)
{
  if (!qword_1EB132C90)
  {
    sub_1A4126F68(255);
    sub_1A4129538(&qword_1EB132CB0, sub_1A4126F68, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132C90);
    }
  }
}

void sub_1A4126F9C(uint64_t a1, __n128 a2)
{
  if (!qword_1EB132CA0)
  {
    sub_1A4127004(255, a2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB132CA0);
    }
  }
}

uint64_t sub_1A4127038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A41270A0(uint64_t a1)
{
  if (!qword_1EB132CB8)
  {
    sub_1A4127134(255);
    sub_1A4129538(&qword_1EB132D40, sub_1A4127134, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132CB8);
    }
  }
}

void sub_1A4127168(uint64_t a1, double a2)
{
  if (!qword_1EB132CC8)
  {
    sub_1A4128CC4(255, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A4127204(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB132CC8);
    }
  }
}

void sub_1A4127240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A41272AC(uint64_t a1, double a2)
{
  if (!qword_1EB132CD8)
  {
    sub_1A412741C(255, a2);
    sub_1A4127554(255, v2);
    sub_1A3D6DF58(255);
    sub_1A41278A0(255, v3);
    sub_1A41275F4(255);
    sub_1A41277F0();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A4129538(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
    sub_1A4127958(v4);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132CD8);
    }
  }
}

void sub_1A412741C(uint64_t a1, double a2)
{
  if (!qword_1EB132CE0)
  {
    sub_1A4127554(255, a2);
    sub_1A3D6DF58(255);
    sub_1A41278A0(255, v2);
    sub_1A41275F4(255);
    sub_1A41277F0();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A4129538(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
    sub_1A4127958(v3);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132CE0);
    }
  }
}

void sub_1A4127554(uint64_t a1, double a2)
{
  if (!qword_1EB132CE8)
  {
    sub_1A41275F4(255);
    sub_1A41277F0();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132CE8);
    }
  }
}

void sub_1A4127630(uint64_t a1)
{
  if (!qword_1EB132CF8)
  {
    sub_1A41276C4(255);
    sub_1A4129538(&qword_1EB132D20, sub_1A41276C4, MEMORY[0x1E6981F48]);
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132CF8);
    }
  }
}

void sub_1A41276F8(uint64_t a1)
{
  if (!qword_1EB132D08)
  {
    type metadata accessor for SharedCollectionPreviewsSection(255);
    sub_1A412777C(255, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB132D08);
    }
  }
}

unint64_t sub_1A41277F0()
{
  result = qword_1EB132D28;
  if (!qword_1EB132D28)
  {
    sub_1A41275F4(255);
    sub_1A4129538(&qword_1EB132D30, sub_1A4127630, MEMORY[0x1E697BE60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132D28);
  }

  return result;
}

void sub_1A41278A0(uint64_t a1, double a2)
{
  if (!qword_1EB132D38)
  {
    sub_1A4128CC4(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A4129C50(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132D38);
    }
  }
}

unint64_t sub_1A4127958(double a1)
{
  result = qword_1EB141EE0;
  if (!qword_1EB141EE0)
  {
    sub_1A41278A0(255, a1);
    sub_1A4127A10(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E697D670], MEMORY[0x1E697D680], v2);
    sub_1A3E72758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141EE0);
  }

  return result;
}

uint64_t sub_1A4127A10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4, double a5)
{
  result = *a1;
  if (!result)
  {
    sub_1A4128CC4(255, a2, MEMORY[0x1E6981148], MEMORY[0x1E6981138], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4127A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4127B10(uint64_t a1)
{
  if (!qword_1EB132D50)
  {
    sub_1A41270A0(255);
    sub_1A4129538(&qword_1EB132D58, sub_1A41270A0, MEMORY[0x1E6981880]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132D50);
    }
  }
}

void sub_1A4127BC4(uint64_t a1)
{
  if (!qword_1EB132D60)
  {
    sub_1A4127C6C(255);
    sub_1A4128500(&qword_1EB132D70, sub_1A4127C6C, sub_1A4127CA0, MEMORY[0x1E6982090]);
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132D60);
    }
  }
}

void sub_1A4127CD4(uint64_t a1)
{
  if (!qword_1EB132D80)
  {
    sub_1A4127134(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132D80);
    }
  }
}

uint64_t sub_1A4127D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4127DA4()
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2D8))(v0);

  if (v2)
  {
    sub_1A524B6A4();
    (*((*v1 & *v3) + 0x2E0))(0);
  }
}

unint64_t sub_1A4127F24(__n128 a1)
{
  result = qword_1EB132D88;
  if (!qword_1EB132D88)
  {
    sub_1A4127A68(255, a1);
    sub_1A41270A0(255);
    sub_1A4129538(&qword_1EB132D58, sub_1A41270A0, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    sub_1A4129538(&qword_1EB132D90, sub_1A4127BC4, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132D88);
  }

  return result;
}

unint64_t sub_1A4128038()
{
  result = qword_1EB132D98;
  if (!qword_1EB132D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132D98);
  }

  return result;
}

unint64_t sub_1A41280C8()
{
  result = qword_1EB132DA0;
  if (!qword_1EB132DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132DA0);
  }

  return result;
}

void sub_1A4128170(uint64_t a1)
{
  sub_1A41294D4(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A412823C(uint64_t a1)
{
  sub_1A41294D4(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A4128338(319);
    if (v2 <= 0x3F)
    {
      sub_1A41294D4(319, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4128338(uint64_t a1)
{
  if (!qword_1EB132DA8)
  {
    type metadata accessor for HostingViewControllerProvider(255);
    sub_1A4129538(&qword_1EB131170, type metadata accessor for HostingViewControllerProvider, &protocol conformance descriptor for HostingViewControllerProvider);
    v1 = sub_1A5248BC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132DA8);
    }
  }
}

unint64_t sub_1A41283DC()
{
  result = qword_1EB132DB0;
  if (!qword_1EB132DB0)
  {
    sub_1A4127A9C(255, &qword_1EB132C50, sub_1A4126C48, sub_1A400F5B4);
    sub_1A4128500(&qword_1EB132DB8, sub_1A4126C48, sub_1A4128570, MEMORY[0x1E6981600]);
    sub_1A4129538(&qword_1EB127C68, sub_1A400F5B4, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132DB0);
  }

  return result;
}

uint64_t sub_1A4128500(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A41285CC(uint64_t a1)
{
  sub_1A41294D4(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A41294D4(319, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A4128CC4(319, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4128724(uint64_t a1, double a2)
{
  if (!qword_1EB132DD0)
  {
    sub_1A4128898(255, a2);
    sub_1A41289E4(255, v2);
    sub_1A4128AE4(255, v3);
    sub_1A4128BB4(255, v4);
    sub_1A4128C38(255, v5);
    sub_1A4128D18(v6);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132DD0);
    }
  }
}

void sub_1A4128898(uint64_t a1, double a2)
{
  if (!qword_1EB132DD8)
  {
    sub_1A41289E4(255, a2);
    sub_1A4128AE4(255, v2);
    sub_1A4128BB4(255, v3);
    sub_1A4128C38(255, v4);
    sub_1A4128D18(v5);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132DD8);
    }
  }
}

void sub_1A41289E4(uint64_t a1, double a2)
{
  if (!qword_1EB132DE0)
  {
    sub_1A4128AE4(255, a2);
    sub_1A4128BB4(255, v2);
    sub_1A4128C38(255, v3);
    sub_1A4128D18(v4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132DE0);
    }
  }
}

void sub_1A4128AE4(uint64_t a1, double a2)
{
  if (!qword_1EB132DE8)
  {
    sub_1A4128BB4(255, a2);
    sub_1A4128C38(255, v2);
    sub_1A4128D18(v3);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132DE8);
    }
  }
}

void sub_1A4128BB4(uint64_t a1, double a2)
{
  if (!qword_1EB132DF0)
  {
    sub_1A4128C38(255, a2);
    sub_1A4128D18(v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB132DF0);
    }
  }
}

void sub_1A4128C38(uint64_t a1, double a2)
{
  if (!qword_1EB132DF8)
  {
    sub_1A4128CC4(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132DF8);
    }
  }
}

void sub_1A4128CC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A4128D18(double a1)
{
  result = qword_1EB132E00;
  if (!qword_1EB132E00)
  {
    sub_1A4128C38(255, a1);
    sub_1A4127A10(&qword_1EB141610, &unk_1EB143960, MEMORY[0x1E697D7D0], MEMORY[0x1E697D7E0], v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E00);
  }

  return result;
}

uint64_t sub_1A4128DD0(uint64_t a1, void *a2)
{
  v4 = *(type metadata accessor for CommentSection(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1A41258B8(a2, v5);
}

void sub_1A4128E40()
{
  type metadata accessor for CommentSection(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A4128CC4(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  sub_1A5247C04();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2E0))(v0);
}

uint64_t sub_1A4128FB8()
{
  type metadata accessor for CommentSection(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2D8))(v0);

  sub_1A4128CC4(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  return sub_1A5247C14();
}

uint64_t objectdestroy_42Tm_0()
{
  v1 = type metadata accessor for CommentSection(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A41294D4(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5249A94();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v0 + v2, 1, v3))
    {
      (*(v4 + 8))(v0 + v2, v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A41292F0()
{
  v1 = (type metadata accessor for CommentSection(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v3 = sub_1A524B6A4();
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0x2A8))(v3);
  v7 = v6;

  v8 = sub_1A3DD1E84(*(v2 + v1[9]), v5, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x1A5907AC0](v8, v10, v12, v14);
  v17 = v16;

  (*((*v4 & *v18) + 0x2B0))(v15, v17);
}

void sub_1A41294D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4129538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4129580(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A41294D4(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A4129600()
{
  result = qword_1EB132E10;
  if (!qword_1EB132E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E10);
  }

  return result;
}

uint64_t objectdestroyTm_28()
{
  v1 = type metadata accessor for SharedCollectionAddToView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A41294D4(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v4 = v3;
    v5 = *(v3 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v3))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A4129810()
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x550))(0);
}

void sub_1A4129918()
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x4C8))(v0);
}

uint64_t sub_1A4129A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1A4129A7C()
{
  v1 = *(type metadata accessor for SharedCollectionAddToView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A4124050(v2);
}

void sub_1A4129ADC(uint64_t a1)
{
  type metadata accessor for SharedCollectionAddToView(0);
  sub_1A41294D4(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x550))(a1);
}

void sub_1A4129BE8(uint64_t a1)
{
  if (!qword_1EB132E18)
  {
    sub_1A4126F68(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132E18);
    }
  }
}

void sub_1A4129C50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4129CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A4129D00(double a1)
{
  result = qword_1EB132E20;
  if (!qword_1EB132E20)
  {
    sub_1A4129EA4(255, a1);
    sub_1A4128898(255, v2);
    sub_1A41289E4(255, v3);
    sub_1A4128AE4(255, v4);
    sub_1A4128BB4(255, v5);
    sub_1A4128C38(255, v6);
    sub_1A4128D18(v7);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E20);
  }

  return result;
}

void sub_1A4129EA4(uint64_t a1, double a2)
{
  if (!qword_1EB132E28)
  {
    sub_1A4128724(255, a2);
    v2 = sub_1A524BA74();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB132E28);
    }
  }
}

id sub_1A4129F64(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s14AssociatedDataCMa_2(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1A4129FCC(uint64_t a1, uint64_t a2)
{
  result = qword_1EB126A30;
  if (!qword_1EB126A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126A30);
  }

  return result;
}

uint64_t sub_1A412A018()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1EBB90);
  __swift_project_value_buffer(v6, qword_1EB1EBB90);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A412A204()
{
  result = qword_1EB132E48;
  if (!qword_1EB132E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E48);
  }

  return result;
}

void sub_1A412A258(uint64_t a1)
{
  if (!qword_1EB132E58)
  {
    sub_1A412B768(255, &qword_1EB132E60, sub_1A4104288, &type metadata for MemoryEntity, MEMORY[0x1E695A1A0]);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132E58);
    }
  }
}

uint64_t sub_1A412A2F0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A412A388, v4, v3);
}

uint64_t sub_1A412A388()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1A412A204();
  *v1 = v0;
  v1[1] = sub_1A3DEB8E8;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A531C9A0);
}

uint64_t sub_1A412A474(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1A5240E64();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1A524CC54();
  v2[9] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A412A568, v5, v4);
}

uint64_t sub_1A412A568()
{
  v1 = v0[8];
  sub_1A523FF44();
  v2 = v0[2];

  sub_1A412A92C(v2, v1);

  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1A412A628;
  v4 = v0[8];

  return sub_1A489B910(v4);
}

uint64_t sub_1A412A628()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1A412A800;
  }

  else
  {
    v5 = sub_1A412A764;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A412A764()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  sub_1A523FDD4();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A412A800()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A412A890(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return sub_1A412A474(a1, v1);
}

uint64_t sub_1A412A92C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3DB7B48(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1A524E404();

  v7 = [a1 localIdentifier];
  v8 = sub_1A524C674();
  v10 = v9;

  MEMORY[0x1A5907B60](v8, v10);

  sub_1A5240E34();

  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v6, 1, v11);
  if (result != 1)
  {
    return (*(v12 + 32))(a2, v6, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A412AAD4()
{
  v0 = sub_1A5240334();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v28 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB7B48(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v22 - v5;
  sub_1A3DB7B48(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = &v22 - v7;
  v8 = sub_1A5240BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v23 = sub_1A5240BB4();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  sub_1A412B768(0, &qword_1EB132E60, sub_1A4104288, &type metadata for MemoryEntity, MEMORY[0x1E695A1A0]);
  v24 = v15;
  sub_1A524C5B4();
  sub_1A5241244();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v9 + 104);
  v17(v11, v16, v8);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v17(v11, v16, v8);
  v18 = v25;
  sub_1A5240BC4();
  (*(v14 + 56))(v18, 0, 1, v23);
  v19 = sub_1A523FDB4();
  v31 = 0;
  v32 = 0;
  v20 = *(*(v19 - 8) + 56);
  v20(v26, 1, 1, v19);
  v20(v27, 1, 1, v19);
  (*(v29 + 104))(v28, *MEMORY[0x1E695A500], v30);
  sub_1A4105350();
  return sub_1A523FFB4();
}

void (*sub_1A412B048(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A412B0BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1A9F90 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1EBB90);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A412B17C(uint64_t a1, uint64_t a2)
{
  sub_1A412B768(0, &qword_1EB132E40, sub_1A412A204, &type metadata for OpenMemoryIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A412B768(0, &qword_1EB132E50, sub_1A412A204, &type metadata for OpenMemoryIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A412A258(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A412B364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A412B404, v7, v6);
}

uint64_t sub_1A412B404()
{
  v0[2] = v0[6];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DED2C4;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A531CB48);
}

uint64_t sub_1A412B4E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A412AAD4();
  *a1 = result;
  return result;
}

uint64_t sub_1A412B50C(uint64_t a1)
{
  v2 = sub_1A412A204();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A412B54C()
{
  result = qword_1EB132E68;
  if (!qword_1EB132E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E68);
  }

  return result;
}

unint64_t sub_1A412B5A4()
{
  result = qword_1EB132E70;
  if (!qword_1EB132E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E70);
  }

  return result;
}

unint64_t sub_1A412B600()
{
  result = qword_1EB132E78;
  if (!qword_1EB132E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E78);
  }

  return result;
}

unint64_t sub_1A412B658()
{
  result = qword_1EB132E80;
  if (!qword_1EB132E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E80);
  }

  return result;
}

unint64_t sub_1A412B6D8()
{
  result = qword_1EB132E88;
  if (!qword_1EB132E88)
  {
    sub_1A412B768(255, &qword_1EB132E90, sub_1A412A204, &type metadata for OpenMemoryIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E88);
  }

  return result;
}

void sub_1A412B768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A412B7D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A412A474(a1, v1);
}

id DataSectionItemListManager.observable.getter()
{
  v0 = sub_1A3F636E4();

  return v0;
}

uint64_t DataSectionItemListManager.itemList.getter@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1A412B9E4(KeyPath);

  v4 = *(*v1 + 104);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v4, AssociatedTypeWitness);
}

double DataSectionItemListManager.changeDetailsRepository.getter()
{
  sub_1A412C6F0();

  return result;
}

uint64_t sub_1A412BBE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v12 - v8;
  v12[1] = *(a1 + *(v2 + 112));
  (*(v3 + 32))(v4, v3, v7);
  v10 = sub_1A412C648(v9);
  return (*(v6 + 8))(v9, AssociatedTypeWitness, v10);
}

uint64_t sub_1A412BD44(uint64_t a1, uint64_t a2)
{
  v11 = *(*v2 + 80);
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1A412BA84(KeyPath, sub_1A412CE04, &v7, MEMORY[0x1E69E7CA8] + 8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A412BE30@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A412CE5C();
  a1[1] = v2;

  return swift_unknownObjectRetain();
}

uint64_t sub_1A412BE6C(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_1A412BD44(v2, v1);
}

id *DataSectionItemListManager.deinit()
{
  v1 = *(*v0 + 13);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  swift_unknownObjectRelease();
  v3 = *(*v0 + 17);
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DataSectionItemListManager.__deallocating_deinit()
{
  DataSectionItemListManager.deinit();

  return swift_deallocClassInstance();
}

double sub_1A412C058()
{
  sub_1A412C6F0();

  return result;
}

void sub_1A412C080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  sub_1A5245C54();
}

uint64_t DataSectionItemListProtocol<>.item(at:)(uint64_t a1)
{
  [v4 objectAtIndex_];
  sub_1A4036910();
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t DataSectionItemListProtocol<>.itemIdentifiers.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v12[8] = 0;
    v12[9] = result;
    MEMORY[0x1EEE9AC00](result);
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = v3;
    sub_1A3D868AC();
    v8 = v7;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = sub_1A412CA00();
    return sub_1A3F3DF4C(sub_1A412C9D0, v12, v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  }

  return result;
}

void sub_1A412C2F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1A59016D0](*a1, a3, v6, v8);
  swift_getAssociatedConformanceWitness();
  sub_1A5246224();
}

uint64_t DataSectionItemListProtocol<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return MEMORY[0x1A59016D0](a1, a2, *(a3 + 8));
}

{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_1A524D104();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v12 = v3;
  (*(v8 + 16))(&v11 - v7, a1, v6);
  v9 = v3;
  return sub_1A524EC54();
}

uint64_t DataSectionItemListProtocol<>.index(after:)(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

double sub_1A412C648(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1A412BA84(KeyPath, sub_1A412CEF0, &v5, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

void sub_1A412C70C(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  *(v1 + 16) = [objc_allocWithZone(off_1E77217D8) init];
  sub_1A5246194();
}

unint64_t sub_1A412CA00()
{
  result = qword_1EB132E98;
  if (!qword_1EB132E98)
  {
    sub_1A3D868AC();
    sub_1A3DE7848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132E98);
  }

  return result;
}

uint64_t sub_1A412CB60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A412CBA8(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1A412CCF4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v4 = *(Strong + 16);
      aBlock[4] = sub_1A412CEE8;
      aBlock[5] = Strong;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3DC72D4;
      aBlock[3] = &block_descriptor_105;
      v5 = _Block_copy(aBlock);
      v6 = v4;

      [v6 performChanges_];

      _Block_release(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_1A412CE04()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 128)) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A412CE5C()
{
  KeyPath = swift_getKeyPath();
  sub_1A412B9E4(KeyPath);

  return *(v0 + *(*v0 + 128));
}

uint64_t sub_1A412CEF0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(*v2 + 104);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v2 + v3, v1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView(uint64_t a1)
{
  result = qword_1EB1AA5D0;
  if (!qword_1EB1AA5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A412D028@<X0>(void *a2@<X8>)
{
  *a2 = 0x4040000000000000;
  v3 = type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView(0);
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_1A412F844(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v5 = (a2 + *(v3 + 24));
  type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel(0);
  sub_1A412F5FC(&qword_1EB136640, type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v5 = result;
  v5[1] = v7;
  return result;
}

void sub_1A412D148(uint64_t a1)
{
  sub_1A3EE1618(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE15DC(0);
  MEMORY[0x1EEE9AC00](v6);
  *v5 = sub_1A5249584();
  *(v5 + 1) = 0x4028000000000000;
  v5[16] = 0;
  sub_1A412F7D8(0, &qword_1EB1244B0, sub_1A3EE16AC, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A412D834(a1, &v5[*(v7 + 44)]);
}

void sub_1A412D478(uint64_t a1)
{
  if (!qword_1EB132EA0)
  {
    sub_1A412D4E0(255);
    sub_1A412D698(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132EA0);
    }
  }
}

void sub_1A412D4E0(uint64_t a1)
{
  if (!qword_1EB132EA8)
  {
    sub_1A412D5D8(255, &qword_1EB123548, sub_1A3EE15DC, MEMORY[0x1E697E5E0]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132EA8);
    }
  }
}

void sub_1A412D55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A412D5D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1A412D63C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A412D698(uint64_t a1)
{
  if (!qword_1EB128008)
  {
    sub_1A412D63C(255, &qword_1EB1267C8, &unk_1EB1267D0, off_1E771F078, sub_1A3C52C70);
    sub_1A412D728();
    v1 = sub_1A52494B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128008);
    }
  }
}

unint64_t sub_1A412D728()
{
  result = qword_1EB1267C0;
  if (!qword_1EB1267C0)
  {
    sub_1A412D63C(255, &qword_1EB1267C8, &unk_1EB1267D0, off_1E771F078, sub_1A3C52C70);
    sub_1A412D7CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1267C0);
  }

  return result;
}

unint64_t sub_1A412D7CC()
{
  result = qword_1EB1267B8;
  if (!qword_1EB1267B8)
  {
    sub_1A3C52C70(255, &unk_1EB1267D0, off_1E771F078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1267B8);
  }

  return result;
}

void sub_1A412D834(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[8] = a2;
  sub_1A3EE179C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A3EE1760(0);
  v28[1] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28[4] = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE1724(0);
  v28[3] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v28[7] = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[2] = v28 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v28[6] = v28 - v11;
  v12 = sub_1A524B9A4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE16E8(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v28[5] = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v28 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v28 - v23;
  sub_1A524B994();
  v25 = type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView(0);
  v26 = *((*MEMORY[0x1E69E7D40] & **(a1 + *(v25 + 24) + 8)) + 0x138);
  v28[0] = (*MEMORY[0x1E69E7D40] & **(a1 + *(v25 + 24) + 8)) + 312;
  if (v26(v25))
  {
    v27 = 0.8;
  }

  else
  {
    v27 = 0.0;
  }

  (*(v13 + 32))(v21, v15, v12);
  *&v21[*(v17 + 44)] = v27;
  sub_1A412F644(v21, v24);
  sub_1A412DE84();
}

void sub_1A412DE84()
{
  sub_1A3EE16E8(0);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3EE18A8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  *v7 = sub_1A5249314();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_1A412F7D8(0, &qword_1EB124550, sub_1A3EE193C, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A412E0E8(&v7[*(v8 + 44)]);
}

void sub_1A412E0E8(uint64_t a2@<X8>)
{
  v20[5] = a2;
  sub_1A3EE20B8(0, &qword_1EB1282C0, sub_1A3EE213C);
  v3 = *(v2 - 8);
  v20[2] = v2;
  v20[3] = v3;
  MEMORY[0x1EEE9AC00](v2);
  v20[0] = v20 - v4;
  sub_1A412D63C(0, &qword_1EB1282B8, &qword_1EB1282C0, sub_1A3EE213C, sub_1A3EE20B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v20[4] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v20[1] = v20 - v8;
  v9 = MEMORY[0x1E69E6720];
  sub_1A412F844(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_1A412F844(0, &qword_1EB121598, sub_1A3EE1A7C, v9);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (v20 - v13);
  sub_1A3EE19E8(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  *v14 = sub_1A524BC74();
  v14[1] = v17;
  sub_1A412F7D8(0, &qword_1EB124438, sub_1A3EE1B10, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  sub_1A412E93C(v14 + *(v18 + 44));
  sub_1A3EE1A7C(0);
  (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  sub_1A412E758();
}

void sub_1A412E758()
{
  v0 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView(0);
  sub_1A4944D18();
  PXCappedFontWithTextStyle();
}

uint64_t sub_1A412E93C@<X0>(char *a2@<X8>)
{
  v68 = a2;
  sub_1A3EE4C14(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE1D04(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE1BA8(0);
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView(0);
  sub_1A4944D34();
  v13 = sub_1A524B574();
  v14 = sub_1A524A0E4();
  KeyPath = swift_getKeyPath();
  sub_1A524BC74();
  sub_1A52481F4();
  if (qword_1EB1AA4B8 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB1EBBB0;
  v17 = swift_getKeyPath();
  *&v80 = v13;
  *(&v80 + 1) = KeyPath;
  *(v81 + 8) = v92;
  *(&v81[1] + 8) = v93;
  *(&v81[2] + 8) = v94;
  *&v81[0] = v14;
  *(&v81[3] + 1) = v17;
  v82 = v16;
  v18 = *MEMORY[0x1E697E6E8];
  v19 = sub_1A52486A4();
  (*(*(v19 - 8) + 104))(v7, v18, v19);
  sub_1A412F5FC(&unk_1EB1288C0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);

  if (sub_1A524C594())
  {
    sub_1A3EE20B8(0, &qword_1EB1281C0, sub_1A3EC1864);
    sub_1A3EE1DE0();
    sub_1A412F5FC(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    sub_1A524AB84();
    sub_1A412F778(v7, sub_1A3EE1D04);
    v95[2] = v81[1];
    v95[3] = v81[2];
    v95[4] = v81[3];
    v96 = v82;
    v95[0] = v80;
    v95[1] = v81[0];
    sub_1A3EE4F74(v95);
    v20 = *sub_1A4758698();
    sub_1A524B5D4();
    v21 = *MEMORY[0x1E6981698];
    v22 = sub_1A524B594();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v4, v21, v22);
    (*(v23 + 56))(v4, 0, 1, v22);
    v67 = sub_1A524B564();

    sub_1A412F778(v4, sub_1A3EE4C14);
    if (qword_1EB1AA4B0 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v24 = qword_1EB1EBBA8;
  v65 = swift_getKeyPath();
  v66 = v24;

  v25 = sub_1A524A094();
  v26 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v25)
  {
    v26 = sub_1A524A0A4();
  }

  sub_1A5247BC4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v87 = 0;
  v35 = sub_1A524A074();
  v36 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v35)
  {
    v36 = sub_1A524A0A4();
  }

  sub_1A5247BC4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v89 = 0;
  v45 = v69;
  v46 = *(v69 + 16);
  v47 = v71;
  v48 = v12;
  v49 = v12;
  v50 = v70;
  v46(v71, v49, v70);
  v51 = v68;
  v46(v68, v47, v50);
  sub_1A412D55C(0, &qword_1EB1275B8, sub_1A3EE1BA8, sub_1A3EE1F24);
  v53 = &v51[*(v52 + 48)];
  v55 = v66;
  v54 = v67;
  v56 = v65;
  *&v72 = v67;
  *(&v72 + 1) = v65;
  *&v73 = v66;
  BYTE8(v73) = v26;
  LODWORD(v68) = v26;
  *(&v73 + 9) = *v88;
  HIDWORD(v73) = *&v88[3];
  *&v74 = v28;
  *(&v74 + 1) = v30;
  *&v75 = v32;
  *(&v75 + 1) = v34;
  LOBYTE(v76) = 0;
  *(&v76 + 1) = *v91;
  DWORD1(v76) = *&v91[3];
  BYTE8(v76) = v36;
  HIDWORD(v76) = *&v90[3];
  *(&v76 + 9) = *v90;
  *&v77 = v38;
  *(&v77 + 1) = v40;
  *&v78 = v42;
  *(&v78 + 1) = v44;
  v79 = 0;
  v57 = v76;
  v58 = v77;
  v59 = v78;
  v53[112] = 0;
  *(v53 + 5) = v58;
  *(v53 + 6) = v59;
  v60 = v72;
  v61 = v73;
  v62 = v74;
  *(v53 + 3) = v75;
  *(v53 + 4) = v57;
  *(v53 + 1) = v61;
  *(v53 + 2) = v62;
  *v53 = v60;
  sub_1A412F710(&v72, &v80, sub_1A3EE1F24);
  v63 = *(v45 + 8);
  v63(v48, v50);
  *&v80 = v54;
  *(&v80 + 1) = v56;
  *&v81[0] = v55;
  BYTE8(v81[0]) = v68;
  *(v81 + 9) = *v88;
  HIDWORD(v81[0]) = *&v88[3];
  *&v81[1] = v28;
  *(&v81[1] + 1) = v30;
  *&v81[2] = v32;
  *(&v81[2] + 1) = v34;
  LOBYTE(v81[3]) = 0;
  *(&v81[3] + 1) = *v91;
  DWORD1(v81[3]) = *&v91[3];
  BYTE8(v81[3]) = v36;
  HIDWORD(v81[3]) = *&v90[3];
  *(&v81[3] + 9) = *v90;
  v82 = v38;
  v83 = v40;
  v84 = v42;
  v85 = v44;
  v86 = 0;
  sub_1A412F778(&v80, sub_1A3EE1F24);
  return (v63)(v71, v50);
}

uint64_t sub_1A412F0D8@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0x4040000000000000;
  v5 = *(a2 + 20);
  *(a3 + v5) = swift_getKeyPath();
  sub_1A412F844(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = (a3 + *(a2 + 24));
  type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel(0);
  sub_1A412F5FC(&qword_1EB136640, type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v6 = result;
  v6[1] = v8;
  return result;
}

uint64_t sub_1A412F1C8(uint64_t a1)
{
  result = sub_1A412F5FC(&qword_1EB132EB0, type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView, &unk_1A531CDEC);
  *(a1 + 8) = result;
  return result;
}

void sub_1A412F2C8(uint64_t a1)
{
  sub_1A412F844(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A412F38C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A412F38C(uint64_t a1)
{
  if (!qword_1EB132EB8)
  {
    type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel(255);
    sub_1A412F5FC(&qword_1EB136640, type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel, &unk_1A533DFE8);
    v1 = sub_1A52484C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB132EB8);
    }
  }
}

unint64_t sub_1A412F430()
{
  result = qword_1EB132EC0;
  if (!qword_1EB132EC0)
  {
    sub_1A412D478(255);
    sub_1A412F4E0();
    sub_1A412F5FC(&qword_1EB128010, sub_1A412D698, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132EC0);
  }

  return result;
}

unint64_t sub_1A412F4E0()
{
  result = qword_1EB132EC8;
  if (!qword_1EB132EC8)
  {
    sub_1A412D4E0(255);
    sub_1A412F558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB132EC8);
  }

  return result;
}

unint64_t sub_1A412F558()
{
  result = qword_1EB123550;
  if (!qword_1EB123550)
  {
    sub_1A412D5D8(255, &qword_1EB123548, sub_1A3EE15DC, MEMORY[0x1E697E5E0]);
    sub_1A3EE4B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123550);
  }

  return result;
}

uint64_t sub_1A412F5FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A412F644(uint64_t a1, uint64_t a2)
{
  sub_1A3EE16E8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A412F6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A412F710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A412F778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A412F7D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
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

void sub_1A412F844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A412F8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A412F910(uint64_t a1, uint64_t a2)
{
  sub_1A412D63C(0, &qword_1EB1282B8, &qword_1EB1282C0, sub_1A3EE213C, sub_1A3EE20B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A412F9AC(uint64_t a1)
{
  sub_1A412D63C(0, &qword_1EB1282B8, &qword_1EB1282C0, sub_1A3EE213C, sub_1A3EE20B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A412FA40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LemonadeMapConfiguration.init(photoLibrary:representedItem:collectionConfiguration:libraryFilterViewMode:boundingRegion:centerCoordinate:wantsDismissButton:enableGridView:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14)
{
  v14 = *(a2 + 16);
  *(a9 + 8) = *a2;
  v15 = *a3;
  v16 = *(a3 + 8);
  *a9 = result;
  *(a9 + 24) = v14;
  *(a9 + 40) = *(a2 + 32);
  *(a9 + 48) = v15;
  *(a9 + 56) = v16;
  *(a9 + 64) = a4;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13;
  *(a9 + 104) = a5;
  *(a9 + 112) = a6;
  *(a9 + 120) = a7 & 1;
  *(a9 + 121) = a8;
  *(a9 + 122) = a14;
  return result;
}

uint64_t LemonadeMapConfiguration.hash(into:)(uint64_t a1)
{
  sub_1A524DC04();
  MEMORY[0x1A590A010](*(v1 + 64));
  v2 = *(v1 + 72);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1A590A040](*&v2);
  v3 = *(v1 + 80);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1A590A040](*&v3);
  v4 = *(v1 + 88);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1A590A040](*&v4);
  v5 = *(v1 + 96);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x1A590A040](*&v5);
}

uint64_t LemonadeMapConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  LemonadeMapConfiguration.hash(into:)(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A412FBE0()
{
  sub_1A524EC94();
  LemonadeMapConfiguration.hash(into:)(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A412FC24(uint64_t a1)
{
  sub_1A524EC94();
  LemonadeMapConfiguration.hash(into:)(v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A412FC64@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  sub_1A3C4B7E8(0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650);
  sub_1A524B694();
  *(a2 + 16) = v10;
  sub_1A3C4B7E8(0, &qword_1EB1206A0, &qword_1EB1206A8, off_1E771F310);
  sub_1A524B694();
  *(a2 + 32) = v10;
  sub_1A3C4B7E8(0, &qword_1EB1208F0, &qword_1EB1208F8, off_1E771E338);
  sub_1A524B694();
  *(a2 + 48) = v10;
  sub_1A3C4B7E8(0, &qword_1EB120630, &qword_1EB120638, off_1E771F398);
  sub_1A524B694();
  *(a2 + 64) = v10;
  sub_1A524B694();
  *(a2 + 80) = v10;
  sub_1A524B694();
  *(a2 + 96) = v10;
  sub_1A4134F34(0, v4, v5);
  sub_1A524B694();
  *(a2 + 112) = v10;
  sub_1A524B694();
  *(a2 + 128) = v10;
  *(a2 + 136) = *(&v10 + 1);
  sub_1A524B694();
  *(a2 + 144) = v10;
  *(a2 + 152) = *(&v10 + 1);
  sub_1A3EED680(a1, a2 + 160);
  v6 = *a1;
  *(a2 + 288) = *a1;
  v7 = a1[8];
  v8 = v6;
  result = sub_1A3EED784(a1);
  *(a2 + 296) = v7;
  return result;
}

void *sub_1A412FE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeMapView(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41350C8(0);
  v8 = v7;
  v80 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v79 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4135028(0, v9);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v65 - v16;
  v81[0] = *(a1 + 32);
  sub_1A4138FF8(0, &qword_1EB121B90, &qword_1EB1206A0, &qword_1EB1206A8, off_1E771F310);
  sub_1A524B6A4();
  v17 = *&v84[0];
  if (!*&v84[0])
  {
    goto LABEL_8;
  }

  v76 = v8;
  v81[0] = *(a1 + 48);
  sub_1A4138FF8(0, &qword_1EB121BD8, &qword_1EB1208F0, &qword_1EB1208F8, off_1E771E338);
  sub_1A524B6A4();
  v18 = *&v84[0];
  if (!*&v84[0])
  {
LABEL_7:

LABEL_8:
    v64 = 1;
    return (*(v13 + 56))(a2, v64, 1, v12);
  }

  v75 = v12;
  v81[0] = *(a1 + 112);
  sub_1A4134F68(0, &qword_1EB121C60, 255, sub_1A4134F34, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v19 = *&v84[0];
  if (!*&v84[0])
  {

    v17 = v18;
    v12 = v75;
    goto LABEL_7;
  }

  v67 = v4;
  v68 = v13;
  v20 = *(a1 + 232);
  v21 = *(a1 + 240);
  v22 = *(a1 + 248);
  v23 = *(a1 + 256);
  v25 = *(a1 + 264);
  v24 = *(a1 + 272);
  v71 = a2;
  v72 = v25;
  v74 = v24;
  LODWORD(v73) = *(a1 + 280);
  v26 = *(a1 + 281);
  v27 = *(a1 + 136);
  LODWORD(v66) = *(a1 + 128);
  LOBYTE(v81[0]) = v66;
  v65 = v27;
  *(&v81[0] + 1) = v27;
  sub_1A3CA6BB4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v29 = v28;
  v30 = v18;
  v69 = v29;
  sub_1A524B6A4();
  v31 = v84[0];
  v32 = *(a1 + 288);
  v33 = v19;
  v34 = v17;
  v70 = v33;
  v35 = v72;
  v36 = v74;
  v37 = v73;
  v73 = v34;
  v74 = v30;
  LODWORD(v72) = v26;
  sub_1A45CC8E4(v35, v36, v37, v30, v26, v31, v32, v34, v84, v20, v21, v22, v23, v33);
  v81[0] = *(a1 + 96);
  sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650);
  result = sub_1A524B6A4();
  v39 = v82;
  if (v82)
  {
    v40 = *(a1 + 282);
    LOBYTE(v81[0]) = v66;
    *(&v81[0] + 1) = v65;
    sub_1A524B6A4();
    v41 = v82;
    v43 = *(a1 + 152);
    LOBYTE(v82) = *(a1 + 144);
    v42 = v82;
    v83 = v43;
    sub_1A524B6C4();
    v66 = *(&v81[0] + 1);
    v44 = *&v81[0];
    LODWORD(v65) = LOBYTE(v81[1]);
    v45 = v84[3];
    *(v6 + 2) = v84[2];
    *(v6 + 3) = v45;
    v46 = v84[5];
    *(v6 + 4) = v84[4];
    *(v6 + 5) = v46;
    v47 = v84[1];
    *v6 = v84[0];
    *(v6 + 1) = v47;
    *(v6 + 12) = v39;
    v6[104] = v40;
    v6[105] = v72;
    v6[106] = v41;
    v48 = v67;
    v49 = v67[9];
    *&v6[v49] = swift_getKeyPath();
    sub_1A4137EE8(0);
    swift_storeEnumTagMultiPayload();
    v50 = &v6[v48[10]];
    *v50 = swift_getKeyPath();
    v50[8] = 0;
    v51 = v48[11];
    *&v6[v51] = swift_getKeyPath();
    sub_1A4134F68(0, &qword_1EB124898, 255, MEMORY[0x1E697CC88], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    v52 = &v6[v48[12]];
    *v52 = swift_getKeyPath();
    v52[8] = 0;
    v53 = &v6[v48[13]];
    v82 = 0;
    sub_1A4138BB0(v84, v81);
    sub_1A524B694();
    v54 = *(&v81[0] + 1);
    *v53 = *&v81[0];
    *(v53 + 1) = v54;
    v55 = &v6[v48[14]];
    LOBYTE(v82) = 0;
    sub_1A524B694();
    v56 = *(&v81[0] + 1);
    *v55 = v81[0];
    *(v55 + 1) = v56;
    v57 = &v6[v48[15]];
    v58 = v66;
    *v57 = v44;
    *(v57 + 1) = v58;
    v57[16] = v65;
    LOBYTE(v81[0]) = v42;
    *(&v81[0] + 1) = v43;
    sub_1A524B6A4();
    sub_1A4135258(a1, v81);
    v59 = swift_allocObject();
    memcpy((v59 + 16), v81, 0x130uLL);
    sub_1A41351AC();
    v60 = v79;
    sub_1A524B154();

    sub_1A4138C0C(v84);

    sub_1A4137E18(v6, type metadata accessor for LemonadeMapView);
    v61 = v78;
    (*(v80 + 32))(v78, v60, v76);
    v12 = v75;
    v61[*(v75 + 36)] = 0;
    v62 = v61;
    v63 = v77;
    sub_1A4139790(v62, v77, sub_1A4135028);
    a2 = v71;
    sub_1A4139790(v63, v71, sub_1A4135028);
    v64 = 0;
    v13 = v68;
    return (*(v13 + 56))(a2, v64, 1, v12);
  }

  __break(1u);
  return result;
}

double sub_1A41305C8(int a1)
{
  v2 = v1;
  v24 = a1;
  v26 = sub_1A524BEE4();
  v29 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v32[0] = *(v1 + 32);
  v11 = v32[0];
  v32[1] = v12;
  sub_1A4138FF8(0, &qword_1EB121B90, &qword_1EB1206A0, &qword_1EB1206A8, off_1E771F310);
  sub_1A524B6A4();
  v13 = v31[0];
  [v31[0] preloadMap];

  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F90], v7);
  v23 = sub_1A524D4C4();
  (*(v8 + 8))(v10, v7);
  v14 = swift_allocObject();
  v32[0] = v11;
  v32[1] = v12;
  sub_1A524B6A4();
  v15 = v31[0];
  swift_unknownObjectWeakInit();

  sub_1A4135258(v2, v32);
  v16 = swift_allocObject();
  memcpy((v16 + 16), v32, 0x130uLL);
  *(v16 + 320) = v14;
  *(v16 + 328) = v24;
  v31[4] = sub_1A4139054;
  v31[5] = v16;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1107296256;
  v31[2] = sub_1A3C2E0D0;
  v31[3] = &block_descriptor_106;
  v17 = _Block_copy(v31);

  sub_1A524BF14();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1A3C9AD6C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A3C9AD6C(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  v19 = v25;
  v18 = v26;
  sub_1A524E224();
  v20 = v23;
  MEMORY[0x1A5908800](0, v6, v19, v17);
  _Block_release(v17);

  (*(v29 + 8))(v19, v18);
  (*(v27 + 8))(v6, v28);

  return result;
}

void sub_1A4130A48()
{
  v1 = v0;
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  *&v71 = v6;
  *(&v71 + 1) = v7;
  sub_1A4138FF8(0, &qword_1EB121B90, &qword_1EB1206A0, &qword_1EB1206A8, off_1E771F310);
  sub_1A524B6A4();
  v8 = v67;
  if (v67)
  {
LABEL_16:

    return;
  }

  v62 = v5;
  v63 = v3;
  v64 = v2;
  v9 = *(v0 + 288);
  v10 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  v11 = [objc_allocWithZone(PXLibraryFilterState) initWithSharedLibraryStatusProvider_];

  v71 = *(v0 + 48);
  *&v67 = v11;
  sub_1A4138FF8(0, &qword_1EB121BD8, &qword_1EB1208F0, &qword_1EB1208F8, off_1E771E338);
  v12 = v11;
  v13 = sub_1A524B6B4();
  PHPhotoLibrary.fetcher.getter(v13, v14);
  sub_1A4147DF0(&v71);
  v67 = v71;
  v68 = v72;
  v69 = v73;
  v70 = v74;
  v15 = PhotoKitFetcher.fetchPlacesAlbum(for:)(&v67);

  v16 = v70;

  v17 = [v15 firstObject];
  v65 = v12;
  if (!v17)
  {
    v45 = [objc_opt_self() px_deprecated_appPhotoLibrary];
    if (v45)
    {
      v47 = v45;
      PHPhotoLibrary.fetcher.getter(v45, v46);
      sub_1A4147DF0(&v71);
      v67 = v71;
      v68 = v72;
      v69 = v73;
      v70 = v74;
      v48 = PhotoKitFetcher.fetchPlacesAlbum(for:)(&v67);

      v49 = v70;

      v50 = [v48 firstObject];
      if (v50)
      {
        v51 = *(v1 + 16);
        v60 = *(v1 + 24);
        v61 = v51;
        *&v71 = v51;
        *(&v71 + 1) = v60;
        *&v67 = v50;
        sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650);
        v52 = v50;
        sub_1A524B6B4();
        v53 = objc_allocWithZone(PXPlacesMapFetchResultController);
        v54 = [v53 initWithLibraryFilterState:v65 photoLibrary:v47];
        *&v71 = v6;
        *(&v71 + 1) = v7;
        *&v67 = v54;

        v55 = v6;
        sub_1A524B6B4();

        goto LABEL_4;
      }
    }

    if (qword_1EB15AEF0 != -1)
    {
      swift_once();
    }

    v56 = sub_1A5246F24();
    __swift_project_value_buffer(v56, qword_1EB1EAD58);
    v57 = sub_1A5246F04();
    v58 = sub_1A524D244();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *&v71 = swift_slowAlloc();
      *v59 = 136315138;
      sub_1A3C2EF94(0xD000000000000041, 0x80000001A53C8B30, &v71);
    }

    return;
  }

  v18 = *(v1 + 16);
  v60 = *(v1 + 24);
  v61 = v18;
  *&v71 = v18;
  *(&v71 + 1) = v60;
  *&v67 = v17;
  sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650);
  v19 = v17;
  sub_1A524B6B4();
  v20 = [objc_allocWithZone(PXPlacesMapFetchResultController) initWithLibraryFilterState:v12 photoLibrary:v9];
  *&v71 = v6;
  *(&v71 + 1) = v7;
  *&v67 = v20;

  v21 = v6;
  sub_1A524B6B4();

LABEL_4:
  v22 = [objc_allocWithZone(PXPlacesMapThumbnailLocationCurator) init];
  v24 = *(v1 + 64);
  v23 = *(v1 + 72);
  *&v71 = v24;
  *(&v71 + 1) = v23;
  *&v67 = v22;
  sub_1A4138FF8(0, &qword_1EB121B88, &qword_1EB120630, &qword_1EB120638, off_1E771F398);
  sub_1A524B6B4();
  *&v71 = v6;
  *(&v71 + 1) = v7;
  sub_1A524B6A4();
  v25 = v67;
  if (v67)
  {
    *&v71 = v24;
    *(&v71 + 1) = v23;
    sub_1A524B6A4();
    v26 = v67;
    [v25 setThumbnailLocationCurator_];

    v27 = *v1;
    v28 = *(v1 + 8);

    if ((v28 & 1) == 0)
    {
      v31 = sub_1A524D254();
      v32 = sub_1A524A014();
      sub_1A5246DF4(v31, &dword_1A3C1C000, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v33 = v62;
      sub_1A5249224();
      swift_getAtKeyPath();
      j__swift_release(v27);
      v29 = (*(v63 + 8))(v33, v64);
      v27 = v71;
    }

    if (v27)
    {
      v34 = type metadata accessor for PhotosViewControllerPresentationDelegate(v29, v30);
      v35 = objc_allocWithZone(v34);
      *&v35[OBJC_IVAR____TtC12PhotosUICoreP33_128B04DDBCBA4CE932CB50ACF858600440PhotosViewControllerPresentationDelegate_navigationContext] = v27;
      v66.receiver = v35;
      v66.super_class = v34;

      v36 = objc_msgSendSuper2(&v66, sel_init);
      v38 = *(v1 + 120);
      *&v71 = *(v1 + 112);
      v37 = v71;
      *(&v71 + 1) = v38;
      *&v67 = v36;
      sub_1A4134F68(0, &qword_1EB121C60, 255, sub_1A4134F34, MEMORY[0x1E6981790]);
      v39 = v37;

      sub_1A524B6B4();
    }

    v40 = *(v1 + 208);
    if (v40)
    {
      v41 = *(v1 + 216);
      v71 = *(v1 + 80);
      *&v67 = v40;
      sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650);
      v42 = v40;
      sub_1A524B6B4();
      v71 = *(v1 + 96);
      *&v67 = v40;
      sub_1A524B6B4();
      v43 = *(v1 + 128);
      v44 = *(v1 + 136);
      LOBYTE(v71) = v43;
      *(&v71 + 1) = v44;
      LOBYTE(v67) = v41 & 1;
      sub_1A3CA6BB4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

      sub_1A524B6B4();
    }

    else
    {
      v71 = *(v1 + 80);
      *&v67 = 0;
      sub_1A4138FF8(0, &qword_1EB121BC0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650);
      sub_1A524B6B4();
      *&v71 = v61;
      *(&v71 + 1) = v60;
      sub_1A524B6A4();
      v71 = *(v1 + 96);
      sub_1A524B6B4();
      v43 = *(v1 + 128);
      v44 = *(v1 + 136);
      LOBYTE(v71) = v43;
      *(&v71 + 1) = v44;
      LOBYTE(v67) = 0;
      sub_1A3CA6BB4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      sub_1A524B6B4();
    }

    LOBYTE(v71) = v43;
    *(&v71 + 1) = v44;
    sub_1A3CA6BB4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    sub_1A41305C8(v67);
    v8 = v65;
    goto LABEL_16;
  }

  __break(1u);
}

void sub_1A4131374(char a1, uint64_t a2)
{
  v4 = sub_1A524BEE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v12 = sub_1A524D474();
    aBlock[4] = sub_1A4139410;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_84_2;
    v13 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C9AD6C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C38394(0);
    sub_1A3C9AD6C(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v11, v7, v13);
    _Block_release(v13);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

void sub_1A4131650(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A4137DAC(0, &qword_1EB124458, sub_1A4134FF0, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A412FE74(v2, a1 + *(v4 + 44));
  sub_1A4135258(v2, v8);
  v5 = swift_allocObject();
  memcpy((v5 + 16), v8, 0x130uLL);
  sub_1A4136200(0, &qword_1EB123A48, sub_1A41352B4, MEMORY[0x1E69805D8]);
  v7 = (a1 + *(v6 + 36));
  *v7 = sub_1A41399A8;
  v7[1] = v5;
  v7[2] = 0;
  v7[3] = 0;
}

void sub_1A4131754(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for LemonadeMapView(0);
  v55 = *(v3 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1A5249284();
  v5 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41360BC(0);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A41367D4(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1E697D448];
  sub_1A4136B78(0, &qword_1EB132FD8, sub_1A41367D4, sub_1A4136808, MEMORY[0x1E697D448]);
  v16 = v15;
  v49 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - v18;
  sub_1A41368E8(0, v17);
  v21 = *(v20 - 8);
  v50 = v20;
  v51 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = sub_1A524BC74();
  v10[1] = v24;
  sub_1A4137DAC(0, &qword_1EB133068, sub_1A4136150, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  sub_1A4131E54(v2, v10 + *(v25 + 44));
  v57 = sub_1A3C38BD4(0xD000000000000017);
  v58 = v26;
  sub_1A3C9AD6C(&unk_1EB132FE8, sub_1A41360BC, MEMORY[0x1E6981880]);
  sub_1A3D5F9DC();
  sub_1A524AC94();

  sub_1A4137E18(v10, sub_1A41360BC);
  v27 = v48;
  (*(v5 + 104))(v7, *MEMORY[0x1E697C438], v48);
  v28 = sub_1A4136808();
  sub_1A524AF34();
  (*(v5 + 8))(v7, v27);
  sub_1A4137E18(v14, sub_1A41367D4);
  v29 = v45;
  v56 = v45;
  sub_1A4136A2C(0);
  v31 = v30;
  v57 = v12;
  v58 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_1A3C9AD6C(&qword_1EB133060, sub_1A4136A2C, MEMORY[0x1E697C5E0]);
  sub_1A524B0E4();
  (*(v49 + 8))(v19, v16);
  sub_1A4134F68(0, &qword_1EB126218, 255, MEMORY[0x1E697C290], MEMORY[0x1E69E6F90]);
  sub_1A5248AB4();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1A52F8E10;
  sub_1A5248AA4();
  v57 = v16;
  v58 = v31;
  v59 = OpaqueTypeConformance2;
  v60 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v53;
  v37 = v50;
  MEMORY[0x1A5905FC0](2, v34, v50, v35);

  (*(v51 + 8))(v23, v37);
  v38 = v52;
  sub_1A4137E80(v29, v52, type metadata accessor for LemonadeMapView);
  v39 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v40 = swift_allocObject();
  sub_1A413895C(v38, v40 + v39, type metadata accessor for LemonadeMapView);
  sub_1A4137FDC(0, v41);
  v43 = (v36 + *(v42 + 36));
  *v43 = sub_1A413375C;
  v43[1] = 0;
  v43[2] = sub_1A4137F20;
  v43[3] = v40;
}

uint64_t sub_1A4131E54@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_1A4136374(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  sub_1A41361D8(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v51 - v13);
  *v14 = sub_1A524BC74();
  v14[1] = v15;
  sub_1A4137DAC(0, &qword_1EB124440, sub_1A41362F8, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  v17 = (v14 + *(v16 + 44));
  v18 = a1[3];
  v65 = a1[2];
  v66 = v18;
  v19 = a1[5];
  v67 = a1[4];
  v68 = v19;
  v20 = a1[1];
  v63 = *a1;
  v64 = v20;
  sub_1A4138BB0(&v63, &v76);
  *v8 = sub_1A5249574();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_1A4137DAC(0, &qword_1EB1244A8, sub_1A4136408, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A41326A0(a1, &v8[*(v21 + 44)]);
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v57 = v63;
  v58 = v64;
  sub_1A4137E80(v8, v5, sub_1A4136374);
  v22 = v60;
  v69[2] = v59;
  v69[3] = v60;
  v23 = v61;
  v24 = v62;
  v69[4] = v61;
  v69[5] = v62;
  v25 = v57;
  v26 = v58;
  v69[0] = v57;
  v69[1] = v58;
  v17[2] = v59;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  *v17 = v25;
  v17[1] = v26;
  sub_1A4136608(0, &qword_1EB1257E0, sub_1A4136374, &type metadata for PlacesMapFetchResultView);
  sub_1A4137E80(v5, v17 + *(v27 + 48), sub_1A4136374);
  sub_1A4138BB0(v69, &v76);
  sub_1A4137E18(v8, sub_1A4136374);
  sub_1A4137E18(v5, sub_1A4136374);
  v70[2] = v59;
  v70[3] = v60;
  v70[4] = v61;
  v70[5] = v62;
  v70[0] = v57;
  v70[1] = v58;
  sub_1A4138C0C(v70);
  v28 = sub_1A5248874();
  v29 = sub_1A524A064();
  v30 = v14 + *(v10 + 44);
  *v30 = v28;
  v30[8] = v29;
  v52 = sub_1A5249314();
  v56 = 1;
  v31 = sub_1A5249574();
  v86 = 1;
  sub_1A47C23F0([a1[5].n128_u64[0] mapView], a1[5].n128_u64[0], &v76);
  v32 = v76;
  v33 = v77;
  v34 = *v78;
  v35 = *&v78[8];
  LOBYTE(a1) = sub_1A524A064();
  sub_1A5247BC4();
  *v72 = v32;
  *&v72[8] = v33;
  *&v72[16] = v34;
  *&v72[24] = v35;
  v72[32] = a1;
  *&v72[40] = v36;
  *&v72[48] = v37;
  *&v72[56] = v38;
  *&v72[64] = v39;
  v72[72] = 0;
  *(&v75[2] + 9) = *&v72[57];
  v75[1] = *&v72[32];
  v75[2] = *&v72[48];
  v74 = *v72;
  v75[0] = *&v72[16];
  LOBYTE(v92[0]) = 1;
  v76 = v32;
  v77 = v33;
  *v78 = v34;
  *&v78[8] = v35;
  v78[16] = a1;
  *(v79 + 7) = v36;
  *(v79 + 15) = v37;
  *(&v79[1] + 7) = v38;
  *(&v79[1] + 15) = v39;
  BYTE7(v79[2]) = 0;
  sub_1A4138C60(v72, v71);
  sub_1A4138CF0(&v76);
  v89 = v75[1];
  v90 = v75[2];
  v91[0] = v75[3];
  v88 = v75[0];
  v87 = v74;
  *&v91[1] = 0;
  BYTE8(v91[1]) = 1;
  v92[3] = v75[2];
  v92[4] = v75[3];
  v92[1] = v75[0];
  v92[2] = v75[1];
  v92[0] = v74;
  v93 = 0;
  v94 = 1;
  sub_1A4137E80(&v87, &v76, sub_1A4136708);
  sub_1A4137E18(v92, sub_1A4136708);
  *&v71[39] = v89;
  *&v71[55] = v90;
  *&v71[71] = v91[0];
  *&v71[80] = *(v91 + 9);
  *&v71[7] = v87;
  *&v71[23] = v88;
  v74 = v31;
  LOBYTE(v75[0]) = v86;
  *(v75 + 1) = *v71;
  *(&v75[1] + 1) = *&v71[16];
  *(&v75[5] + 1) = *(v91 + 9);
  *(&v75[4] + 1) = *&v71[64];
  *(&v75[3] + 1) = *&v71[48];
  *(&v75[2] + 1) = *&v71[32];
  *&v85[55] = v75[2];
  *&v85[39] = v75[1];
  *&v85[23] = v75[0];
  *&v85[7] = v31;
  *&v85[103] = v75[5];
  *&v85[87] = v75[4];
  *&v85[71] = v75[3];
  v79[0] = *&v71[16];
  *&v78[1] = *v71;
  v86 = 1;
  v85[119] = BYTE8(v91[1]);
  v76 = v31;
  v77 = 0;
  v78[0] = v75[0];
  v81 = *(v91 + 9);
  v80 = *&v71[64];
  v79[2] = *&v71[48];
  v79[1] = *&v71[32];
  sub_1A4137E80(&v74, v72, sub_1A4136674);
  sub_1A4137E18(&v76, sub_1A4136674);
  *&v71[73] = *&v85[64];
  *&v71[89] = *&v85[80];
  *&v71[105] = *&v85[96];
  *&v71[9] = *v85;
  *&v71[25] = *&v85[16];
  *&v71[41] = *&v85[32];
  *&v71[57] = *&v85[48];
  *&v72[73] = *&v85[64];
  *&v72[89] = *&v85[80];
  *&v72[105] = *&v85[96];
  *&v72[9] = *v85;
  *&v72[25] = *&v85[16];
  *&v72[41] = *&v85[32];
  *&v71[121] = *&v85[112];
  *v71 = 0;
  v71[8] = 1;
  *v72 = 0;
  v72[8] = 1;
  v73 = *&v85[112];
  *&v72[57] = *&v85[48];
  sub_1A4137E80(v71, &v76, sub_1A413658C);
  sub_1A4137E18(v72, sub_1A413658C);
  *&v55[87] = *&v71[80];
  *&v55[103] = *&v71[96];
  *&v55[119] = *&v71[112];
  *&v55[23] = *&v71[16];
  *&v55[39] = *&v71[32];
  *&v55[55] = *&v71[48];
  *&v55[71] = *&v71[64];
  v55[135] = v71[128];
  *&v55[7] = *v71;
  LOBYTE(v31) = v56;
  v40 = v53;
  sub_1A4137E80(v14, v53, sub_1A41361D8);
  v41 = v54;
  sub_1A4137E80(v40, v54, sub_1A41361D8);
  sub_1A4136AB4(0, &unk_1EB132F70, sub_1A41361D8, sub_1A41364F8);
  v43 = *(v42 + 48);
  *(&v75[5] + 1) = *&v55[80];
  *(&v75[6] + 1) = *&v55[96];
  *(&v75[7] + 1) = *&v55[112];
  *(&v75[1] + 1) = *&v55[16];
  *(&v75[2] + 1) = *&v55[32];
  *(&v75[3] + 1) = *&v55[48];
  v44 = (v41 + v43);
  v45 = v52;
  v74 = v52;
  LOBYTE(v75[0]) = v31;
  *(&v75[8] + 1) = *&v55[128];
  *(&v75[4] + 1) = *&v55[64];
  *(v75 + 1) = *v55;
  v46 = v75[6];
  v44[6] = v75[5];
  v44[7] = v46;
  v44[8] = v75[7];
  *(v44 + 137) = *(&v75[7] + 9);
  v47 = v75[2];
  v44[2] = v75[1];
  v44[3] = v47;
  v48 = v75[4];
  v44[4] = v75[3];
  v44[5] = v48;
  v49 = v75[0];
  *v44 = v74;
  v44[1] = v49;
  sub_1A4137E80(&v74, &v76, sub_1A41364F8);
  sub_1A4137E18(v14, sub_1A41361D8);
  v81 = *&v55[80];
  v82 = *&v55[96];
  v83 = *&v55[112];
  v79[0] = *&v55[16];
  v79[1] = *&v55[32];
  v79[2] = *&v55[48];
  v80 = *&v55[64];
  v76 = v45;
  v77 = 0;
  v78[0] = v31;
  v84 = *&v55[128];
  *&v78[1] = *v55;
  sub_1A4137E18(&v76, sub_1A41364F8);
  return sub_1A4137E18(v40, sub_1A41361D8);
}

uint64_t sub_1A41326A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A41364A8(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  sub_1A413286C(&v19 - v9);
  v11 = (a1 + *(type metadata accessor for LemonadeMapView(0) + 52));
  v12 = *v11;
  v13 = v11[1];
  *&v20 = v12;
  *(&v20 + 1) = v13;
  sub_1A3CA6BB4(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A524BC74();
  sub_1A52481F4();
  v14 = &v10[*(v5 + 44)];
  v15 = v21;
  *v14 = v20;
  *(v14 + 1) = v15;
  *(v14 + 2) = v22;
  sub_1A4137E80(v10, v7, sub_1A41364A8);
  sub_1A4137E80(v7, a2, sub_1A41364A8);
  sub_1A4136440(0);
  v17 = a2 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_1A4137E18(v10, sub_1A41364A8);
  return sub_1A4137E18(v7, sub_1A41364A8);
}

void sub_1A413286C(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_1A5243664();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1A5243654();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5243674();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v10 enableNavigationBarBlur];
  [v10 navigationBarBlurRadius];
  [v10 navigationBarBlurDistanceToBaseline];
  [v10 navigationBarTintCurve];
  [v10 navigationBarTintOpacity];
  (*(v6 + 104))(v8, *MEMORY[0x1E69C2570], v5);
  sub_1A4138D78(0);
  v12 = *(v11 + 48);
  *v4 = sub_1A524B404();
  v13 = *MEMORY[0x1E6981DF0];
  v14 = sub_1A524BD64();
  (*(*(v14 - 8) + 104))(v4 + v12, v13, v14);
  (*(v2 + 104))(v4, *MEMORY[0x1E69C2588], v1);
  sub_1A5243644();
  v15 = v18;
  sub_1A5243084();

  sub_1A41364D0(0);
  *(v15 + *(v16 + 36)) = 0;
}

uint64_t sub_1A4132B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_1A4136AB4(0, &qword_1EB133008, sub_1A4136B30, sub_1A4136D6C);
  v52 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - v5;
  sub_1A4136DA4(0, v4);
  v8 = v7;
  v57 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A52498B4();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1A4136F6C(0, v11);
  v13 = v12;
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4136EB8(0, &qword_1EB133038, sub_1A4136F6C, &qword_1EB133058, sub_1A4136F6C);
  v53 = v16;
  v49 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  sub_1A4136D6C(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v56 = &v46 - v24;
  sub_1A4136B30(0, v23);
  v55 = v25;
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A413328C(v28);
  if (*(a1 + 106) == 1)
  {
    v29 = sub_1A5249894();
    v46 = &v46;
    MEMORY[0x1EEE9AC00](v29);
    v47 = v8;
    v48 = v18;
    *(&v46 - 2) = a1;
    sub_1A413700C(0);
    sub_1A3C9AD6C(&qword_1EB133050, sub_1A413700C, MEMORY[0x1E69817F8]);
    sub_1A5247F24();
    v30 = sub_1A3C9AD6C(&qword_1EB133058, sub_1A4136F6C, MEMORY[0x1E697BEF0]);
    v31 = v48;
    MEMORY[0x1A5904CD0](v15, v13, v30);
    (*(v50 + 8))(v15, v13);
    v58 = v13;
    v59 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = v51;
    v34 = v31;
    v35 = v53;
    MEMORY[0x1A5904CD0](v34, v53, OpaqueTypeConformance2);
    v36 = v57;
    v37 = v47;
    (*(v57 + 16))(v21, v33, v47);
    (*(v36 + 56))(v21, 0, 1, v37);
    v58 = v35;
    v59 = OpaqueTypeConformance2;
    v38 = swift_getOpaqueTypeConformance2();
    v39 = v56;
    MEMORY[0x1A5904D00](v21, v37, v38);
    sub_1A4138AE8(v21, sub_1A4136D6C);
    (*(v36 + 8))(v33, v37);
    (*(v49 + 8))(v48, v35);
  }

  else
  {
    (*(v57 + 56))(v21, 1, 1, v8);
    v40 = sub_1A3C9AD6C(&qword_1EB133058, sub_1A4136F6C, MEMORY[0x1E697BEF0]);
    v58 = v13;
    v59 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v58 = v53;
    v59 = v41;
    v42 = swift_getOpaqueTypeConformance2();
    v39 = v56;
    MEMORY[0x1A5904D00](v21, v8, v42);
    sub_1A4138AE8(v21, sub_1A4136D6C);
  }

  v43 = *(v52 + 48);
  v44 = v55;
  (*(v26 + 16))(v6, v28, v55);
  sub_1A3CDDFD8(v39, &v6[v43]);
  sub_1A52495D4();
  sub_1A4138AE8(v39, sub_1A4136D6C);
  return (*(v26 + 8))(v28, v44);
}

uint64_t sub_1A413328C@<X0>(uint64_t a1@<X8>)
{
  sub_1A4136EB8(0, &qword_1EB122320, sub_1A3F1E8D8, &qword_1EB124628, sub_1A3F1E8D8);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v30 - v7;
  v9 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A3F1E8D8(0);
  v11 = v10;
  v31 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4136C04(0, v12);
  v32 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v30 - v20;
  if (*(v2 + 105) == 1)
  {
    v22 = sub_1A5249824();
    v30[0] = v30;
    MEMORY[0x1EEE9AC00](v22);
    v30[1] = a1;
    v30[-2] = v2;
    sub_1A3D6DF58(0);
    sub_1A3C9AD6C(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
    sub_1A5247F24();
    v23 = sub_1A3C9AD6C(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
    MEMORY[0x1A5904CD0](v14, v11, v23);
    (*(v6 + 16))(v17, v8, v5);
    (*(v6 + 56))(v17, 0, 1, v5);
    v33 = v11;
    v34 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v17, v5, OpaqueTypeConformance2);
    sub_1A4138AE8(v17, sub_1A4136C04);
    (*(v6 + 8))(v8, v5);
    (*(v31 + 8))(v14, v11);
  }

  else
  {
    (*(v6 + 56))(v17, 1, 1, v5, v19);
    v26 = sub_1A3C9AD6C(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
    v33 = v11;
    v34 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v17, v5, v27);
    sub_1A4138AE8(v17, sub_1A4136C04);
  }

  v28 = sub_1A4136C94(v25);
  MEMORY[0x1A5904CD0](v21, v32, v28);
  return sub_1A4138AE8(v21, sub_1A4136C04);
}

uint64_t sub_1A4133788(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeMapView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B24();
  sub_1A4137E80(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMapView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1A413895C(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for LemonadeMapView);
  return MEMORY[0x1A5906A80](v7, sub_1A4138B50, v9);
}

uint64_t sub_1A4133904(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4137EE8(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeMapView(0);
  sub_1A4137E80(a1 + *(v13 + 36), v8, sub_1A4137EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}