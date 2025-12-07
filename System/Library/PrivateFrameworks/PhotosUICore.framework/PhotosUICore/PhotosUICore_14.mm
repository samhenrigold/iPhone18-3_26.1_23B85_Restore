void sub_1A3DD6E84()
{
  v1 = v0;
  sub_1A3DD8450(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void sub_1A3DD6FE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A3CAB9BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A3DD6834(v14, a3 & 1);
      v9 = sub_1A3CAB9BC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1A3DD6D34();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_1A3DD7134(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A3DD6A98(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A3DD6E84();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  *(v21[7] + 8 * v11) = a1;
}

void (*sub_1A3DD72B0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1A3DD766C(v7);
  v7[9] = sub_1A3DD73D0(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1A3DD735C;
}

void sub_1A3DD735C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1A3DD73D0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1A3C5DCA4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1A3DD6E84();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1A3DD6A98(v18, a4 & 1);
    v13 = sub_1A3C5DCA4(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1A3DD7528;
}

void sub_1A3DD7528(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
LABEL_9:
      *(v6[7] + 8 * v5) = v3;
      goto LABEL_14;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_1A3C651B8(*(v13 + 48) + 16 * v12);
      sub_1A3D74B38(v12, v13, v14);
    }

LABEL_14:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = v2[4];
  v6 = *v2[3];
  if (v4)
  {
    goto LABEL_9;
  }

  v16 = v2[1];
  v15 = v2[2];
  v6[(v5 >> 6) + 8] |= 1 << v5;
  v17 = (v6[6] + 16 * v5);
  *v17 = v16;
  v17[1] = v15;
  *(v6[7] + 8 * v5) = v3;
  v18 = v6[2];
  v11 = __OFADD__(v18, 1);
  v4 = v18 + 1;
  if (!v11)
  {
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t (*sub_1A3DD766C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1A3DD7694;
}

uint64_t sub_1A3DD76A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3D3EE34();
    sub_1A524E3D4();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1A3DD77FC()
{
  result = qword_1EB126AE0;
  if (!qword_1EB126AE0)
  {
    sub_1A3C52C70(255, &qword_1EB126AF0, 0x1E695D630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126AE0);
  }

  return result;
}

uint64_t sub_1A3DD7E78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A3DD7EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore22SocialGroupCropManagerC0cdeF5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A3DD7F28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3DD7F7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1A3DD7FD8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1A3DD8450(uint64_t a1)
{
  if (!qword_1EB120438)
  {
    sub_1A3DDBD94(255, &qword_1EB120CC0, &type metadata for SocialGroupCropFetchResult, MEMORY[0x1E69E62F8]);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120438);
    }
  }
}

void sub_1A3DD84DC(uint64_t a1)
{
  if (!qword_1EB120418)
  {
    type metadata accessor for SocialGroupCropFetchRequest();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120418);
    }
  }
}

uint64_t sub_1A3DD8544()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  sub_1A3DD6FE8(v3, v1, isUniquelyReferenced_nonNull_native);
  *(v2 + 32) = v6;
  return swift_endAccess();
}

void sub_1A3DD85E0(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = v2[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[6];
  if ((sub_1A433B95C() & 1) == 0)
  {
    if (a1)
    {
      swift_beginAccess();
      v9 = *(v5 + 80);
      *(v5 + 80) = a1;
      v10 = a1;

      v8(v10);
    }

    else
    {
      v11 = sub_1A524D244();
      if (qword_1EB169908 != -1)
      {
        swift_once();
      }

      if (os_log_type_enabled(qword_1EB169910, v11))
      {
        v12 = swift_slowAlloc();
        v17[0] = swift_slowAlloc();
        *v12 = 136315138;
        v13 = [v6 localIdentifier];
        v14 = sub_1A524C674();
        v16 = v15;

        sub_1A3C2EF94(v14, v16, v17);
      }

      v17[0] = 1;
      memset(&v17[1], 0, 24);
      v18 = 1;
      v7(v17);
    }
  }
}

void sub_1A3DD87C4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = [v2 photoLibrary];
  if (v3)
  {
    v4 = v3;
    v13 = [v3 librarySpecificFetchOptions];

    [v13 setFetchLimit_];
    v5 = [objc_opt_self() fetchKeyAssetForSocialGroup:v2 createIfNeeded:1 options:v13];
    v6 = [v5 firstObject];
    if (!v6)
    {
      v7 = sub_1A524D244();
      if (qword_1EB169908 != -1)
      {
        swift_once();
      }

      if (os_log_type_enabled(qword_1EB169910, v7))
      {
        v8 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v8 = 136315138;
        v9 = [v2 localIdentifier];
        v10 = sub_1A524C674();
        v12 = v11;

        sub_1A3C2EF94(v10, v12, &v14);
      }
    }

    v1(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A3DD89FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1A3DD8A70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3DD8AD4(void *a1)
{
  v2 = v1;
  v4 = v1[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ((sub_1A433B95C() & 1) == 0)
    {
      if ([a1 count] < 2)
      {
        v31 = sub_1A524D244();
        if (qword_1EB169908 != -1)
        {
          swift_once();
        }

        if (os_log_type_enabled(qword_1EB169910, v31))
        {
          v32 = a1;
          v33 = swift_slowAlloc();
          *&aBlock = swift_slowAlloc();
          *v33 = 136315394;
          v34 = [v5 localIdentifier];
          v35 = sub_1A524C674();
          v37 = v36;

          sub_1A3C2EF94(v35, v37, &aBlock);
        }

        aBlock = 0u;
        v44 = 0u;
        LOBYTE(v45) = 1;
        v6(&aBlock);
      }

      else
      {
        swift_beginAccess();
        v10 = *(v4 + 88);
        *(v4 + 88) = a1;

        v11 = *v9;
        v12 = a1;
        v13 = *(v4 + 32);
        v14 = *(v4 + 40);
        v15 = *(v4 + 16);
        v16 = [v15 localIdentifier];
        v17 = sub_1A524C674();
        v19 = v18;

        swift_beginAccess();
        v20 = *(v4 + 80);
        if (v20)
        {
          v40 = v11;
          v41 = v17;
          v21 = v6;
          v42 = v7;
          v22 = objc_allocWithZone(MEMORY[0x1E6978868]);
          v23 = v20;
          v24 = [v22 init];
          [v24 setDeliveryMode_];
          [v24 setSynchronous_];
          [v24 setNetworkAccessAllowed_];
          [v24 setAllowSecondaryDegradedImage_];
          [v24 setResizeMode_];
          [v24 setLoadingMode_];
          if (qword_1EB169928 != -1)
          {
            swift_once();
          }

          [v24 setResultHandlerQueue_];
          v25 = [objc_opt_self() defaultManager];
          v26 = swift_allocObject();
          swift_weakInit();
          v27 = swift_allocObject();
          v27[2] = v26;
          v27[3] = v4;
          v27[4] = v21;
          v27[5] = v42;
          v27[6] = v41;
          v27[7] = v19;
          v27[8] = v40;
          v45 = sub_1A3DD98F8;
          v46 = v27;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v44 = sub_1A3DD5B38;
          *(&v44 + 1) = &block_descriptor_101;
          v28 = _Block_copy(&aBlock);
          v29 = v24;

          v30 = [v25 requestImageForAsset:v23 targetSize:1 contentMode:v29 options:v28 resultHandler:{v13, v14}];

          _Block_release(v28);
          swift_beginAccess();
          *(v4 + 72) = v30;
          *(v4 + 76) = 0;
        }

        else
        {
          v38 = sub_1A524D244();
          if (qword_1EB169908 != -1)
          {
            swift_once();
          }

          if (os_log_type_enabled(qword_1EB169910, v38))
          {
            v39 = swift_slowAlloc();
            *&aBlock = swift_slowAlloc();
            *v39 = 136315138;
            sub_1A3C2EF94(v17, v19, &aBlock);
          }

          v47[0] = 1;
          memset(&v47[1], 0, 24);
          v48 = 1;
          v6(v47);
        }
      }
    }
  }
}

void sub_1A3DD9124()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v4 = &selRef_owner;
  v5 = [v2 photoLibrary];
  if (!v5)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v6 = v5;
  v50 = v3;
  v51 = v1;
  v7 = &selRef_layoutSnapshot;
  v52 = [v5 librarySpecificFetchOptions];

  v8 = objc_opt_self();
  v9 = &selRef_presentedKenBurnsAnimationCurrentRect;
  v10 = [v8 px_defaultDetectionTypes];
  if (!v10)
  {
    sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
    sub_1A524CA34();
    v10 = sub_1A524CA14();
  }

  v11 = &selRef_setGainMapValue_;
  [v52 setIncludedDetectionTypes_];

  v12 = [objc_opt_self() fetchPersonsInSocialGroup:v2 option:v52];
  v13 = [v12 fetchedObjects];
  if (v13)
  {
    v14 = v13;
    sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
    v15 = sub_1A524CA34();

    if (v15 >> 62)
    {
LABEL_23:
      v16 = sub_1A524E2B4();
      if (v16)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_7:
        v54 = v16;
        v49 = v12;
        v17 = [v2 *(v4 + 3256)];
        if (!v17)
        {
LABEL_37:
          __break(1u);
          return;
        }

        v18 = v17;
        v19 = [v17 v7[70]];

        [v19 setIncludeTorsoAndFaceDetectionData_];
        v20 = [v8 v9[328]];
        if (!v20)
        {
          sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
          sub_1A524CA34();
          v20 = sub_1A524CA14();
        }

        [v19 v11[302]];

        sub_1A3DDBD94(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1A52F9790;
        v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v9 = sub_1A524C634();
        v7 = [v22 initWithKey:v9 ascending:1];

        *(v21 + 32) = v7;
        sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
        v23 = sub_1A524CA14();

        v48 = v19;
        [v19 setSortDescriptors_];

        v58 = MEMORY[0x1E69E7CC0];
        v56 = v15 & 0xC000000000000001;
        v55 = v15 & 0xFFFFFFFFFFFFFF8;
        v4 = 4;
        v11 = MEMORY[0x1E69E6158];
        v53 = v15;
        while (1)
        {
          v12 = (v4 - 4);
          if (v56)
          {
            v24 = MEMORY[0x1A59097F0](v4 - 4, v15);
          }

          else
          {
            if (v12 >= *(v55 + 16))
            {
              goto LABEL_22;
            }

            v24 = *(v15 + 8 * v4);
          }

          v7 = v24;
          v9 = (v4 - 3);
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          sub_1A3DD8A70(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_1A52FC9F0;
          *(v25 + 56) = v11;
          v26 = sub_1A3D710E8();
          *(v25 + 64) = v26;
          *(v25 + 32) = 0xD000000000000018;
          *(v25 + 40) = 0x80000001A53B7B60;
          v27 = v7;
          v28 = [(SEL *)v7 uuid];
          if (!v28)
          {
            break;
          }

          v29 = v28;
          v7 = sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
          v30 = sub_1A524C674();
          v2 = v31;

          *(v25 + 96) = v11;
          *(v25 + 104) = v26;
          *(v25 + 72) = v30;
          *(v25 + 80) = v2;
          sub_1A524D134();
          MEMORY[0x1A5907D70]();
          v8 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();

          ++v4;
          v15 = v53;
          v11 = MEMORY[0x1E69E6158];
          if (v9 == v54)
          {

            v32 = objc_allocWithZone(MEMORY[0x1E696AB28]);
            v33 = sub_1A524CA14();

            v34 = [v32 initWithType:2 subpredicates:v33];

            [v48 setInternalPredicate_];
            v57 = [objc_opt_self() fetchFacesInAsset:v50 options:v48];
            v51();

            v35 = v57;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_35;
      }
    }
  }

  v36 = sub_1A524D254();
  if (qword_1EB169908 != -1)
  {
    swift_once();
  }

  if (os_log_type_enabled(qword_1EB169910, v36))
  {
    v37 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v37 = 136315138;
    v38 = [v2 localIdentifier];
    v39 = sub_1A524C674();
    v41 = v40;

    sub_1A3C2EF94(v39, v41, &v58);
  }

  v42 = [v2 *(v4 + 3256)];
  if (!v42)
  {
    goto LABEL_36;
  }

  v43 = v42;
  v44 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v45 = sub_1A524CA14();
  v46 = [v44 initWithObjects:v45 photoLibrary:v43 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v47 = v46;
  v51();

  v35 = v52;
LABEL_31:
}

void sub_1A3DD98F8(void *a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[6];
  v8 = v2[7];
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v9 = MEMORY[0x1E69E7CA0];
  if (!a2)
  {
    goto LABEL_9;
  }

  v77 = sub_1A524C674();
  v78 = v10;
  sub_1A524E384();
  if (!*(a2 + 16) || (v11 = sub_1A3D5C0BC(v81), (v12 & 1) == 0))
  {
    sub_1A3D5FAFC(v81);
LABEL_9:
    v79 = 0u;
    v80 = 0u;
    goto LABEL_10;
  }

  sub_1A3C2F0BC(*(a2 + 56) + 32 * v11, &v79);
  sub_1A3D5FAFC(v81);
  if (*(&v80 + 1))
  {
    if (swift_dynamicCast())
    {
      v13 = v81[0];
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_1A433B95C() | v13;
    v9 = MEMORY[0x1E69E7CA0];
    goto LABEL_11;
  }

LABEL_10:
  sub_1A3DDB284(&v79, &qword_1EB126130, v9 + 8);
  v14 = sub_1A433B95C();
  if (!a2)
  {
LABEL_21:
    v79 = 0u;
    v80 = 0u;
LABEL_22:
    sub_1A3DDB284(&v79, &qword_1EB126130, v9 + 8);
    if (v14)
    {
      goto LABEL_55;
    }

    goto LABEL_23;
  }

LABEL_11:
  v77 = sub_1A524C674();
  v78 = v15;
  sub_1A524E384();
  if (!*(a2 + 16) || (v16 = sub_1A3D5C0BC(v81), (v17 & 1) == 0))
  {
    sub_1A3D5FAFC(v81);
    goto LABEL_21;
  }

  sub_1A3C2F0BC(*(a2 + 56) + 32 * v16, &v79);
  sub_1A3D5FAFC(v81);
  if (!*(&v80 + 1))
  {
    goto LABEL_22;
  }

  sub_1A3C52C70(0, &qword_1EB12C740, 0x1E696ABC0);
  v18 = swift_dynamicCast();
  v19 = *&v81[0];
  if (*&v81[0])
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (v14)
  {
    if (v20)
    {
      goto LABEL_58;
    }

LABEL_55:

    return;
  }

  if (v20)
  {
LABEL_58:
    v58 = sub_1A524D244();
    if (qword_1EB169908 != -1)
    {
      swift_once();
    }

    if (os_log_type_enabled(qword_1EB169910, v58))
    {
      v59 = swift_slowAlloc();
      swift_slowAlloc();
      *&v81[0] = swift_slowAlloc();
      *v59 = 136315394;
      sub_1A3C2EF94(v7, v8, v81);
    }

    if (v14)
    {
    }

    else
    {
      v81[0] = v19;
      v81[1] = 0uLL;
      LOBYTE(v82) = 1;
      v64 = v19;
      v6(v81);
    }

    goto LABEL_55;
  }

LABEL_23:
  v21 = *(v5 + 16);
  v22 = [(SEL *)v21 localIdentifier];
  v23 = sub_1A524C674();
  v25 = v24;

  if (!a1)
  {
LABEL_49:
    v56 = sub_1A524D244();
    if (qword_1EB169908 != -1)
    {
      swift_once();
    }

    if (os_log_type_enabled(qword_1EB169910, v56))
    {
      v57 = swift_slowAlloc();
      *&v81[0] = swift_slowAlloc();
      *v57 = 136315138;
      sub_1A3C2EF94(v23, v25, v81);
    }

    goto LABEL_54;
  }

  v75 = v23;
  v26 = a1;
  v27 = [v26 CGImage];
  if (!v27)
  {
LABEL_48:

    v23 = v75;
    goto LABEL_49;
  }

  v28 = v27;
  v74 = v25;
  swift_beginAccess();
  v29 = *(v5 + 80);
  if (!v29)
  {

    v25 = v74;
    goto LABEL_48;
  }

  v73 = v26;
  swift_beginAccess();
  v30 = *(v5 + 88);
  if (!v30)
  {
    v60 = v28;
    v61 = v29;
    v62 = sub_1A524D244();
    if (qword_1EB169908 != -1)
    {
      swift_once();
    }

    if (os_log_type_enabled(qword_1EB169910, v62))
    {
      v63 = swift_slowAlloc();
      *&v81[0] = swift_slowAlloc();
      *v63 = 136315138;
      sub_1A3C2EF94(v75, v74, v81);
    }

LABEL_54:
    goto LABEL_55;
  }

  v31 = v29;
  v32 = v30;
  CGImageGetWidth(v28);
  CGImageGetHeight(v28);
  v33 = [v31 localIdentifier];
  sub_1A524C674();

  v34 = [v32 fetchedObjects];
  if (!v34)
  {
    goto LABEL_75;
  }

  v35 = v34;
  sub_1A3C52C70(0, &unk_1EB120620, 0x1E69787C8);
  v36 = sub_1A524CA34();

  if (!(v36 >> 62))
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

  v37 = sub_1A524E2B4();
  if (!v37)
  {
LABEL_74:

LABEL_75:
    v65 = sub_1A524D254();
    if (qword_1EB169908 != -1)
    {
      swift_once();
    }

    if (os_log_type_enabled(qword_1EB169910, v65))
    {
      v66 = swift_slowAlloc();
      *&v81[0] = swift_slowAlloc();
      *v66 = 136315394;
      sub_1A3C2EF94(v75, v74, v81);
    }

    sub_1A524D9B4();
  }

LABEL_30:
  v38 = (v36 & 0xC000000000000001);
  if ((v36 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1A59097F0](0, v36);
    goto LABEL_33;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v36 + 32);
LABEL_33:
    v72 = v39;
    [v39 px_cropRectWithCropFactor_];
    x = v83.origin.x;
    y = v83.origin.y;
    width = v83.size.width;
    height = v83.size.height;
    MinX = CGRectGetMinX(v83);
    v84.origin.x = x;
    v84.origin.y = y;
    v84.size.width = width;
    v84.size.height = height;
    MinY = CGRectGetMinY(v84);
    v85.origin.x = x;
    v85.origin.y = y;
    v85.size.width = width;
    v85.size.height = height;
    MaxX = CGRectGetMaxX(v85);
    v86.origin.x = x;
    v86.origin.y = y;
    v86.size.width = width;
    v86.size.height = height;
    MaxY = CGRectGetMaxY(v86);
    if (v37 >= 1)
    {
      v48 = MaxY;
      v49 = 0;
      while (1)
      {
        if (v38)
        {
          v50 = MEMORY[0x1A59097F0](v49, v36);
        }

        else
        {
          v50 = *(v36 + 8 * v49 + 32);
        }

        v51 = v50;
        [v50 px:7.19999981 cropRectWithCropFactor:?];
        v52 = v87.origin.x;
        v53 = v87.origin.y;
        v54 = v87.size.width;
        v55 = v87.size.height;
        if (CGRectGetMinX(v87) < MinX)
        {
          v88.origin.x = v52;
          v88.origin.y = v53;
          v88.size.width = v54;
          v88.size.height = v55;
          MinX = CGRectGetMinX(v88);
        }

        v89.origin.x = v52;
        v89.origin.y = v53;
        v89.size.width = v54;
        v89.size.height = v55;
        if (CGRectGetMinY(v89) < MinY)
        {
          v90.origin.x = v52;
          v90.origin.y = v53;
          v90.size.width = v54;
          v90.size.height = v55;
          MinY = CGRectGetMinY(v90);
        }

        v91.origin.x = v52;
        v91.origin.y = v53;
        v91.size.width = v54;
        v91.size.height = v55;
        if (MaxX < CGRectGetMaxX(v91))
        {
          v92.origin.x = v52;
          v92.origin.y = v53;
          v92.size.width = v54;
          v92.size.height = v55;
          MaxX = CGRectGetMaxX(v92);
        }

        v93.origin.x = v52;
        v93.origin.y = v53;
        v93.size.width = v54;
        v93.size.height = v55;
        if (v48 < CGRectGetMaxY(v93))
        {
          v94.origin.x = v52;
          v94.origin.y = v53;
          v94.size.width = v54;
          v94.size.height = v55;
          v48 = CGRectGetMaxY(v94);
        }

        ++v49;

        if (v37 == v49)
        {

          PXSizeGetAspectRatio();
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  swift_once();
  if (os_log_type_enabled(qword_1EB169910, v5))
  {
    v67 = swift_slowAlloc();
    *&v81[0] = swift_slowAlloc();
    *v67 = 136315138;
    v68 = [v38 v21[211]];
    v69 = sub_1A524C674();
    v71 = v70;

    sub_1A3C2EF94(v69, v71, v81);
  }

  sub_1A3C58F20(&v76, &unk_1EB12C730, sub_1A3DDB2F4, MEMORY[0x1E69E6720], sub_1A3DD8A70);
}

uint64_t sub_1A3DDB284(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A3DDBD94(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A3DDB2F4(uint64_t a1)
{
  if (!qword_1EB12C738)
  {
    sub_1A3C52C70(255, &qword_1EB126630, 0x1E69DCAB8);
    type metadata accessor for CGRect(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12C738);
    }
  }
}

uint64_t objectdestroy_29Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A3DDB47C()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 64);
  swift_beginAccess();
  v3 = sub_1A3CAB9BC(v2);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v1 + 32);
    *(v1 + 32) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A3DD6D34();
    }

    sub_1A3CB1208(v5, v7, v8);
    *(v1 + 32) = v7;
  }

  return swift_endAccess();
}

uint64_t sub_1A3DDB528()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 88);
  v62 = *(v0 + 72);
  v63 = v5;
  v6 = *(v0 + 120);
  v64 = *(v0 + 104);
  v65 = v6;
  v7 = *(v0 + 56);
  v60 = *(v0 + 40);
  v61 = v7;
  swift_beginAccess();
  if (!*(*(v2 + 16) + 16) || (sub_1A3C5DCA4(v3, v4), (v8 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = swift_endAccess();
  v10 = *(v0 + 40);
  if (v10)
  {
    v11 = *(v0 + 96);
    v56 = *(v0 + 80);
    v57 = v11;
    v58 = *(v0 + 112);
    v12 = *(v0 + 64);
    v54 = *(v0 + 48);
    v13 = *(v0 + 128);
    v53 = v10;
    v59 = v13;
    v55 = v12;
    if ((*(v0 + 184) & 1) == 0 || *(v0 + 168) > *(&v55 + 1) && *(v0 + 176) > *&v56)
    {
      swift_beginAccess();
      if (*(*(v2 + 16) + 16))
      {
        v49 = v62;
        v50 = v63;
        v51 = v64;
        v52 = v65;
        v47 = v60;
        v48 = v61;
        sub_1A3DDB3CC(&v47, &v46);
        sub_1A3C5DCA4(v3, v4);
        if (v14)
        {
          swift_endAccess();
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      else
      {
        v49 = v62;
        v50 = v63;
        v51 = v64;
        v52 = v65;
        v47 = v60;
        v48 = v61;
        sub_1A3DDB3CC(&v47, &v46);
      }

      swift_endAccess();
      v27 = sub_1A524D264();
      if (qword_1EB169908 != -1)
      {
        swift_once();
      }

      if (os_log_type_enabled(qword_1EB169910, v27))
      {
        v28 = *(v1 + 232);
        v29 = swift_slowAlloc();
        *&v47 = swift_slowAlloc();
        *v29 = 136315138;
        v30 = [v28 localIdentifier];
        v31 = sub_1A524C674();
        v33 = v32;

        sub_1A3C2EF94(v31, v33, &v47);
      }

      swift_beginAccess();
      v35 = sub_1A3DD60F8(&v46, v3, v4);
      v36 = *v34;
      if (*v34)
      {
        v37 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v37 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = sub_1A3DD6558(0, *(v36 + 2) + 1, 1, v36);
          *v37 = v36;
        }

        v40 = *(v36 + 2);
        v39 = *(v36 + 3);
        if (v40 >= v39 >> 1)
        {
          v36 = sub_1A3DD6558((v39 > 1), v40 + 1, 1, v36);
          *v37 = v36;
        }

        *(v36 + 2) = v40 + 1;
        v41 = &v36[96 * v40];
        v42 = *(v1 + 152);
        *(v41 + 2) = *(v1 + 136);
        *(v41 + 3) = v42;
        v43 = *(v1 + 168);
        v44 = *(v1 + 184);
        v45 = *(v1 + 216);
        *(v41 + 6) = *(v1 + 200);
        *(v41 + 7) = v45;
        *(v41 + 4) = v43;
        *(v41 + 5) = v44;
        sub_1A3DDB3CC(v1 + 136, &v47);
        (v35)(&v46, 0);
      }

      else
      {
        (v35)(&v46, 0);
      }

      swift_endAccess();
      return sub_1A3DDB284(v1 + 40, &unk_1EB12C6B0, &type metadata for SocialGroupCropFetchResult);
    }
  }

  else
  {
    swift_beginAccess();
    v16 = sub_1A3DD60F8(&v47, v3, v4);
    v17 = *v15;
    if (*v15)
    {
      v18 = v15;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v17;
      if ((v19 & 1) == 0)
      {
        v17 = sub_1A3DD6558(0, *(v17 + 2) + 1, 1, v17);
        *v18 = v17;
      }

      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        v17 = sub_1A3DD6558((v20 > 1), v21 + 1, 1, v17);
        *v18 = v17;
      }

      *(v17 + 2) = v21 + 1;
      v22 = &v17[96 * v21];
      v23 = *(v1 + 152);
      *(v22 + 2) = *(v1 + 136);
      *(v22 + 3) = v23;
      v24 = *(v1 + 168);
      v25 = *(v1 + 184);
      v26 = *(v1 + 216);
      *(v22 + 6) = *(v1 + 200);
      *(v22 + 7) = v26;
      *(v22 + 4) = v24;
      *(v22 + 5) = v25;
      sub_1A3DDB3CC(v1 + 136, &v53);
      (v16)(&v47, 0);
    }

    else
    {
      (v16)(&v47, 0);
    }

    return swift_endAccess();
  }

  return result;
}

unint64_t sub_1A3DDBB6C()
{
  result = qword_1EB125668;
  if (!qword_1EB125668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125668);
  }

  return result;
}

void sub_1A3DDBBC0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  swift_beginAccess();
  if (*(*(v2 + 16) + 16))
  {
    sub_1A3C5DCA4(v4, v3);
    if (v5)
    {
      swift_endAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  swift_endAccess();
}

double sub_1A3DDBD50()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];

  return result;
}

void sub_1A3DDBD94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double testWithAlbumCellStyle(_:action:)(char *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = sub_1A44E6630();
  v5 = *v4;
  v6 = *(**v4 + 160);

  v6(v12, v7);
  v8 = v12[0];
  LOBYTE(v12[0]) = v3;
  (*(*v5 + 168))(v12);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v8;
  v12[4] = sub_1A3DDBFC0;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1A3C2E0D0;
  v12[3] = &block_descriptor_19;
  v10 = _Block_copy(v12);

  PXPPTInstallTestCompletionHandler(v10);
  _Block_release(v10);
  a2();

  return result;
}

uint64_t sub_1A3DDBFC0()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return (*(*v1 + 168))(&v3);
}

void sub_1A3DDC070()
{
  sub_1A3DDD634(0, &qword_1EB12C748, MEMORY[0x1E69E6158], off_1E7721240);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB169548);
  __swift_project_value_buffer(v1, qword_1EB169548);
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1A52465B4();
}

void sub_1A3DDC154(unsigned int a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = (a1 >> 8) & 1;
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [ObjCClassFromMetadata sharedInstance];
  [v8 setIsMemoryCreationImageAnimationEnabled_];

  v9 = [ObjCClassFromMetadata sharedInstance];
  [v9 setIsMemoryCreationTextAnimationEnabled_];

  v10 = [ObjCClassFromMetadata sharedInstance];
  [v10 setPromptEntryViewType_];

  v11 = [ObjCClassFromMetadata sharedInstance];
  [v11 setForceShowPlaybackInTests_];
}

uint64_t sub_1A3DDC2A0(void *a1)
{
  v1[2] = a1;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_1A3DDC3F0;
  v5.n128_u64[0] = 4.0;

  return v7(v5);
}

uint64_t sub_1A3DDC3F0()
{
  v2 = *v1;
  v2[6] = v0;

  v4 = sub_1A524CBC4();
  v2[7] = v4;
  v2[8] = v3;
  if (v0)
  {
    v5 = sub_1A3DDC834;
  }

  else
  {
    v5 = sub_1A3DDC550;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3DDC550()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = v1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1A3DDC6B4;

  return (v6)(4, 0, &unk_1A52FECD8, v2);
}

uint64_t sub_1A3DDC6B4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A3DDC898;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A3DDC7D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DDC7D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDC834()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDC898()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDC908()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A3DDC2A0(v2);
}

uint64_t sub_1A3DDC99C(uint64_t a1)
{
  v1[2] = a1;
  sub_1A3DE1808(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  v1[3] = swift_task_alloc();
  v2 = sub_1A5240E64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1A524CC54();
  v1[7] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3DDCAD8, v4, v3);
}

uint64_t sub_1A3DDCAD8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_1A5240E34();
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    v6 = sub_1A3C6E9EC();
    v7 = sub_1A3C5A374();
    v8 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_1A3DDCC90;
    v10 = v0[6];

    return (v11)(v10, v6, v7 & 1);
  }

  return result;
}

uint64_t sub_1A3DDCC90(uint64_t a1)
{
  v3 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    (*(v3[5] + 8))(v3[6], v3[4]);
    v4 = v3[8];
    v5 = v3[9];

    return MEMORY[0x1EEE6DFA0](sub_1A3DDD2E8, v4, v5);
  }

  else
  {
    v6 = v3[2];
    (*(v3[5] + 8))(v3[6], v3[4]);
    v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xA0);
    v11 = (*MEMORY[0x1E69E7D40] & *v6) + 160;
    v3[13] = v7;
    v3[14] = v11 & 0xFFFFFFFFFFFFLL | 0xA51D000000000000;
    v12 = (v7 + *v7);
    v8 = swift_task_alloc();
    v3[15] = v8;
    *v8 = v3;
    v8[1] = sub_1A3DDCEDC;
    v9.n128_u64[0] = 2.0;

    return v12(v9);
  }
}

uint64_t sub_1A3DDCEDC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1A3DDD368;
  }

  else
  {
    v5 = sub_1A3DDD018;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3DDD018()
{
  v1 = *(v0 + 104);
  [*(v0 + 88) dismissViewControllerAnimated:1 completion:0];
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1A3DDD120;
  v3.n128_u64[0] = 2.0;

  return v5(v3);
}

uint64_t sub_1A3DDD120()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1A3DDD3F0;
  }

  else
  {
    v5 = sub_1A3DDD25C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3DDD25C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDD2E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDD368()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDD3F0()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1A3DDD498(void *a1)
{
  *&v9 = 0x6F69746172657469;
  *(&v9 + 1) = 0xEA0000000000736ELL;
  v2 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_1A3C35B00(v11);
    goto LABEL_8;
  }

  sub_1A3C52C70(0, &unk_1EB1265F0, 0x1E696AEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v3 = 1;
    goto LABEL_9;
  }

  v3 = [v8 integerValue];

LABEL_9:
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v6 = v1;
  v5(&unk_1A52FEC38, v4);

  return result;
}

void sub_1A3DDD634(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3DDD684(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1A524CC54();
  v2[7] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3DDD71C, v4, v3);
}

uint64_t sub_1A3DDD71C()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = sub_1A3DE0E84();
  *(v0 + 24) = v2;
  *(v0 + 32) = v3 & 1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1A3DDD894;
  v7 = *(v0 + 48);

  return (v9)(v7, 0, &unk_1A52FECC8, v4);
}

uint64_t sub_1A3DDD894()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A3DDDA50;
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    *(v2 + 112) = *(v2 + 16);
    *(v2 + 114) = v7;
    *(v2 + 104) = v6;

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A3DDD9C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DDD9C8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 114);
  v3 = *(v0 + 112);

  sub_1A3DDC154(v3 & 0x1010101, v1, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A3DDDA50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDDAC0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A3DDD684(v2, v3);
}

uint64_t sub_1A3DDDB58()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DDDC30;

  return sub_1A3DDFB24(257, 0, 0, 0x724379726F6D654DLL, 0xEE006E6F69746165);
}

uint64_t sub_1A3DDDC30()
{
  *(*v1 + 40) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A3DDDDF0;
  }

  else
  {
    v4 = sub_1A3DDDD8C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A3DDDD8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDDDF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDDEDC(uint64_t a1)
{
  v1[5] = a1;
  sub_1A524CC54();
  v1[6] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A3DDDF74, v3, v2);
}

uint64_t sub_1A3DDDF74()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = sub_1A3DE0E84();
  *(v0 + 24) = v2;
  *(v0 + 32) = v3 & 1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1A3DDE0EC;

  return (v8)(0, 1, &unk_1A52FECB8, v4);
}

uint64_t sub_1A3DDE0EC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A3DDE2A8;
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    *(v2 + 104) = *(v2 + 16);
    *(v2 + 106) = v7;
    *(v2 + 96) = v6;

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A3DDE220;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DDE220()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 106);
  v3 = *(v0 + 104);

  sub_1A3DDC154(v3 & 0x1010101, v1, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A3DDE2A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDE318()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A3DDDEDC(v2);
}

uint64_t sub_1A3DDE3AC(void *a1)
{
  v1[2] = a1;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_1A3DDE4FC;
  v5.n128_u64[0] = 30.0;

  return v7(v5);
}

uint64_t sub_1A3DDE4FC()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF060, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 56) = v5;
    *v5 = v2;
    v5[1] = sub_1A3DDE6A4;

    return sub_1A3DDFB24(257, 0, 0, 0x755270756D726157, 0xE90000000000006ELL);
  }
}

uint64_t sub_1A3DDE6A4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF0C4, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 72) = v5;
    *v5 = v2;
    v5[1] = sub_1A3DDE84C;

    return sub_1A3DDFB24(257, 0, 0, 0x5272616C75676552, 0xEA00000000006E75);
  }
}

uint64_t sub_1A3DDE84C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF128, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 88) = v5;
    *v5 = v2;
    v5[1] = sub_1A3DDE9E8;

    return sub_1A3DDFB24(0, 2, 0, 1230335822, 0xE400000000000000);
  }
}

uint64_t sub_1A3DDE9E8()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF18C, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 104) = v5;
    *v5 = v2;
    v5[1] = sub_1A3DDEB9C;

    return sub_1A3DDFB24(1, 2, 0, 0xD000000000000013, 0x80000001A53B7BF0);
  }
}

uint64_t sub_1A3DDEB9C()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF1F0, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 120) = v5;
    *v5 = v2;
    v5[1] = sub_1A3DDED50;

    return sub_1A3DDFB24(256, 2, 0, 0xD000000000000012, 0x80000001A53B7C10);
  }
}

uint64_t sub_1A3DDED50()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF254, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 136) = v5;
    *v5 = v2;
    v5[1] = sub_1A3DDEF04;

    return sub_1A3DDFB24(0, 0, 0, 0xD000000000000013, 0x80000001A53B7C30);
  }
}

uint64_t sub_1A3DDEF04()
{
  *(*v1 + 144) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A3DDF2B8;
  }

  else
  {
    v4 = sub_1A3DE1864;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A3DDF060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF0C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF128()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF18C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF1F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF254()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF2B8()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1A3DDF35C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = v2;
  v5(a2, v4);

  return result;
}

uint64_t sub_1A3DDF3F8(uint64_t a1)
{
  v1[2] = a1;
  sub_1A524CC54();
  v1[3] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A3DDF490, v3, v2);
}

uint64_t sub_1A3DDF490()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1A3DDF5F4;

  return (v6)(0x7FFFFFFFFFFFFFFFLL, 0, &unk_1A52FECA8, v2);
}

uint64_t sub_1A3DDF5F4()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1A3DDF710;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1A3DE1868;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DDF710()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DDF780()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A3DDF3F8(v2);
}

uint64_t sub_1A3DDF814()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DDF8E8;

  return sub_1A3DDFB24(257, 0, 1, 0x6574696E69666E49, 0xEC00000074736554);
}

uint64_t sub_1A3DDF8E8()
{
  *(*v1 + 40) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A3DE1860;
  }

  else
  {
    v4 = sub_1A3DE1868;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

void sub_1A3DDFA64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v8 = a1;
  v7(a4, v6);
}

uint64_t sub_1A3DDFB24(__int16 a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = v5;
  *(v6 + 290) = a3;
  *(v6 + 80) = a2;
  *(v6 + 88) = a4;
  *(v6 + 288) = a1;
  sub_1A3DE1808(0, &qword_1EB124C88, MEMORY[0x1E69C1030]);
  *(v6 + 112) = swift_task_alloc();
  sub_1A3DDD634(0, &qword_1EB12C748, MEMORY[0x1E69E6158], off_1E7721240);
  *(v6 + 120) = v7;
  *(v6 + 128) = *(v7 - 8);
  *(v6 + 136) = swift_task_alloc();
  v8 = sub_1A5240E64();
  *(v6 + 144) = v8;
  *(v6 + 152) = *(v8 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = sub_1A524CC54();
  *(v6 + 176) = sub_1A524CC44();
  v10 = sub_1A524CBC4();
  *(v6 + 184) = v10;
  *(v6 + 192) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A3DDFCF0, v10, v9);
}

uint64_t sub_1A3DDFCF0()
{
  v1 = *(v0 + 104);
  sub_1A3DDC154(*(v0 + 288) & 0x101, *(v0 + 80), *(v0 + 290));
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_1A3DDFE30;
  v4.n128_u64[0] = 5.0;

  return v6(v4);
}

uint64_t sub_1A3DDFE30()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1A3DE0A7C;
  }

  else
  {
    v5 = sub_1A3DDFF6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1A3DDFF6C()
{
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 104)) + 0xA8))(*(v0 + 88), *(v0 + 96));
  if (qword_1EB169540 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = __swift_project_value_buffer(v3, qword_1EB169548);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  sub_1A5246594();
}

uint64_t sub_1A3DE0348(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = *(v3 + 184);
    v5 = *(v3 + 192);
    v6 = sub_1A3DE0B08;
  }

  else
  {
    v7 = *(v3 + 290);
    *(v3 + 232) = sub_1A524CC44();
    v8 = sub_1A524CBC4();
    v5 = v9;
    *(v3 + 240) = v8;
    *(v3 + 248) = v9;
    if (v7 == 1)
    {
      v10 = sub_1A3DE04C4;
    }

    else
    {
      v10 = sub_1A3DE0710;
    }

    v6 = v10;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A3DE04C4()
{
  v1 = sub_1A3F62788();
  v2 = *v1;
  *(v0 + 256) = *v1;
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_1A3DE056C;

  return sub_1A3DE0F98(v3);
}

uint64_t sub_1A3DE056C()
{
  v1 = *v0;
  v2 = *(*v0 + 256);

  v3 = *(v1 + 248);
  v4 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1A3DE06AC, v4, v3);
}

uint64_t sub_1A3DE06AC()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1A3DE185C, v1, v2);
}

uint64_t sub_1A3DE0710()
{
  v1 = sub_1A4504054();
  v2 = *v1;
  *(v0 + 272) = *v1;
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 280) = v4;
  *v4 = v0;
  v4[1] = sub_1A3DE07B8;

  return sub_1A3DE0F98(v3);
}

uint64_t sub_1A3DE07B8()
{
  v1 = *v0;
  v2 = *(*v0 + 272);

  v3 = *(v1 + 248);
  v4 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1A3DE08F8, v4, v3);
}

uint64_t sub_1A3DE08F8()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1A3DE095C, v1, v2);
}

uint64_t sub_1A3DE095C()
{
  v1 = v0[6];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[13];
  v7 = v0[11];
  v6 = v0[12];

  [v1 dismissViewControllerAnimated:1 completion:0];

  (*(v3 + 8))(v2, v4);
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xB0))(v7, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A3DE0A7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DE0B08()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];

  (*(v2 + 8))(v1, v3);
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0xB0))(v6, v5);

  v7 = v0[1];

  return v7();
}

id sub_1A3DE0C00(uint64_t a1)
{
  v3 = type metadata accessor for PhotosPPTTestRunner(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_1A3DE0CA0(a1, v5);
  v7 = sub_1A3FA4E54(v5);
  sub_1A3DE0D04(a1);
  return v7;
}

uint64_t sub_1A3DE0CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPPTTestRunner(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3DE0D04(uint64_t a1)
{
  v2 = type metadata accessor for PhotosPPTTestRunner(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A3DE0D60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeStoryPPTTests(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GenerativeStoryPPTTests(uint64_t a1)
{
  result = qword_1EB169530;
  if (!qword_1EB169530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3DE0E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3DE1808(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3DE0E84()
{
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata sharedInstance];
  v2 = [v1 isMemoryCreationImageAnimationEnabled];

  v3 = [ObjCClassFromMetadata sharedInstance];
  v4 = [v3 isMemoryCreationTextAnimationEnabled];

  v5 = [ObjCClassFromMetadata sharedInstance];
  [v5 promptEntryViewType];

  v6 = [ObjCClassFromMetadata sharedInstance];
  [v6 forceShowPlaybackInTests];

  if (v4)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  return v7 | v2;
}

uint64_t sub_1A3DE0F98(uint64_t a1)
{
  v1[3] = a1;
  sub_1A3DE1808(0, &qword_1EB12C750, MEMORY[0x1E6968160]);
  v1[4] = swift_task_alloc();
  v2 = sub_1A524D694();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = sub_1A524CC54();
  v1[9] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3DE10D8, v4, v3);
}

uint64_t sub_1A3DE10D8(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  sub_1A524D6A4();

  sub_1A524D684();
  v2[12] = sub_1A524CC44();
  v4 = sub_1A3DE1560();
  v5 = swift_task_alloc();
  v2[13] = v5;
  *v5 = v2;
  v5[1] = sub_1A3DE11E0;
  v6 = v2[4];
  v7 = v2[5];

  return MEMORY[0x1EEE6D8C8](v6, v7, v4);
}

uint64_t sub_1A3DE11E0()
{
  v2 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A524CBC4();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A3DE14E0;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A524CBC4();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A3DE1378;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1A3DE1378()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1A3DE13DC, v1, v2);
}

uint64_t sub_1A3DE13DC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);
  v5 = sub_1A5240564();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) != 1)
  {
    sub_1A3DE0E28(v0[4], &qword_1EB12C750, MEMORY[0x1E6968160]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A3DE14E0()
{
  *(v0 + 16) = *(v0 + 112);
  sub_1A3DBD9A0();
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

unint64_t sub_1A3DE1560()
{
  result = qword_1EB12C758;
  if (!qword_1EB12C758)
  {
    sub_1A524D694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C758);
  }

  return result;
}

uint64_t sub_1A3DE15B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A3DDF814();
}

uint64_t sub_1A3DE164C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A3DDE3AC(v2);
}

uint64_t sub_1A3DE16E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A3DDDB58();
}

uint64_t sub_1A3DE1774()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A3DDC99C(v2);
}

void sub_1A3DE1808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1A3DE1874()
{
  v1 = v0;
  v2 = [v0 presentationEnvironment];
  if (v2)
  {
    v3 = v2;
    if (PLIsCloudPhotoLibraryEnabledForCurrentUser())
    {
      v4 = 0xD000000000000021;
    }

    else
    {
      v4 = 0xD000000000000029;
    }

    sub_1A3C38BD4(v4);
    v5 = sub_1A524C634();

    v6 = [objc_opt_self() alertControllerWithTitle:0 message:v5 preferredStyle:0];

    sub_1A3C38BD4(0xD00000000000002BLL);
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = v1;
    v9 = sub_1A524C634();

    v24 = sub_1A3DE1C48;
    v25 = v7;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1A3D7692C;
    v23 = &block_descriptor_20;
    v10 = _Block_copy(&v20);

    v11 = objc_opt_self();
    v12 = [v11 actionWithTitle:v9 style:2 handler:v10];
    _Block_release(v10);

    [v6 addAction_];
    sub_1A3C38BD4(0xD00000000000002BLL);
    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    v14 = v8;
    v15 = sub_1A524C634();

    v24 = sub_1A3DE1C60;
    v25 = v13;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1A3D7692C;
    v23 = &block_descriptor_6_1;
    v16 = _Block_copy(&v20);

    v17 = [v11 actionWithTitle:v15 style:1 handler:v16];
    _Block_release(v16);

    [v6 addAction_];
    [v3 presentViewController:v6 animated:1 completionHandler:0];
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = sub_1A524D244();
    v19 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Not performing the reject Social Group action because presentationEnvironment is nil", 84, 2, MEMORY[0x1E69E7CC0]);

    [v1 completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

void sub_1A3DE1CC0()
{
  v1 = v0;
  v2 = [v0 socialGroups];
  if (v2)
  {
    v3 = v2;
    if ([v2 count] == 1)
    {
      v4 = [v3 firstObject];
      if (v4)
      {
        v6 = v4;
        type metadata accessor for SocialGroupRejectGroupAction(0, v5);
        sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_1A52F9790;
        *(v7 + 32) = v6;
        v8 = v6;
        v9 = sub_1A3FAB308(v7);
        v10 = [v1 undoManager];
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15[4] = sub_1A3DE1F24;
        v15[5] = v11;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 1107296256;
        v15[2] = sub_1A3D6084C;
        v15[3] = &block_descriptor_12_0;
        v12 = _Block_copy(v15);

        [v9 executeWithUndoManager:v10 completionHandler:v12];
        _Block_release(v12);

        return;
      }
    }
  }

  v13 = sub_1A524D244();
  v14 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Failed to perform Social Group reject action because the initial state is invalid.", 82, 2, MEMORY[0x1E69E7CC0]);

  [v1 completeBackgroundTaskWithSuccess:0 error:0];
}

void sub_1A3DE1F24(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      a2 = sub_1A5240B74();
    }

    [v5 completeBackgroundTaskWithSuccess:a1 & 1 error:a2];
  }
}

BOOL sub_1A3DE21E4(void *a1, uint64_t a2)
{
  if ([objc_opt_self() destructiveActionsEnabled])
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3 && [a1 socialGroupVerifiedType] != -1;
}

id sub_1A3DE2278(void *a1, uint64_t a2)
{
  if ([objc_opt_self() destructiveActionsEnabled])
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && ([a1 respondsToSelector_] & 1) != 0)
  {
    result = [a1 socialGroups];
    if (!result)
    {
      return result;
    }

    v5 = result;
    if ([result count] == 1)
    {
      v6 = [v5 firstObject];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 socialGroupVerifiedType];

        return (v8 != -1);
      }
    }
  }

  return 0;
}

uint64_t sub_1A3DE238C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3DE2404()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  return v0[16];
}

void sub_1A3DE2468(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
    v4 = *(v1 + 96);

    [v4 signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 744))(v3);
  }
}

id (*sub_1A3DE2598(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3DE25EC;
}

uint64_t sub_1A3DE25F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3DE2694()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  return v0[17];
}

void sub_1A3DE2714(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
    [*(v1 + 96) signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 744))(v4);
  }
}

id sub_1A3DE2824()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 17) = v2;
  return [*(v1 + 96) signalChange_];
}

uint64_t (*sub_1A3DE288C(uint64_t *a1))()
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
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0, &protocol conformance descriptor for SharedLibraryStatusViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE2598(v4);
  return sub_1A3DE29C8;
}

id (*sub_1A3DE29D4(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3DE2A28;
}

id sub_1A3DE2A30(uint64_t a1, char a2, uint64_t a3)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(*(a1 + 24) + 96);

    return [v7 signalChange_];
  }

  return result;
}

uint64_t sub_1A3DE2A9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3DE2B44()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  return v0[18];
}

void sub_1A3DE2BC4(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 18) == v2)
  {
    *(v1 + 18) = v2;
    [*(v1 + 96) signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 744))(v4);
  }
}

id sub_1A3DE2CD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 18) = v2;
  return [*(v1 + 96) signalChange_];
}

uint64_t (*sub_1A3DE2D3C(uint64_t *a1))()
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
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0, &protocol conformance descriptor for SharedLibraryStatusViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE29D4(v4);
  return sub_1A3DE2E78;
}

uint64_t sub_1A3DE2ED4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3DE2F7C()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  return v0[19];
}

void sub_1A3DE2FFC(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[19] == v2)
  {
    v1[19] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 744))(v4);
  }
}

void sub_1A3DE30F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 19) = v2;
}

uint64_t (*sub_1A3DE314C(uint64_t *a1))()
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
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0, &protocol conformance descriptor for SharedLibraryStatusViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE2E84(v4);
  return sub_1A3DE3288;
}

uint64_t sub_1A3DE32E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3DE338C()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  return v0[20];
}

void sub_1A3DE340C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[20] == v2)
  {
    v1[20] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 744))(v4);
  }
}

void sub_1A3DE3508()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 20) = v2;
}

uint64_t (*sub_1A3DE355C(uint64_t *a1))()
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
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0, &protocol conformance descriptor for SharedLibraryStatusViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3294(v4);
  return sub_1A3DE3698;
}

uint64_t sub_1A3DE36F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A3DE37B8()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3DE3848(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[3] == a1 && v2[4] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[3] = a1;
    v2[4] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 744))(v8);
  }

  return result;
}

void sub_1A3DE397C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t (*sub_1A3DE39E4(uint64_t *a1))()
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
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0, &protocol conformance descriptor for SharedLibraryStatusViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4(v4);
  return sub_1A3DE3B20;
}

uint64_t sub_1A3DE3B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A3DE3C40()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3DE3CD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[5] == a1 && v2[6] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[5] = a1;
    v2[6] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 744))(v8);
  }

  return result;
}

void sub_1A3DE3E04()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t (*sub_1A3DE3E6C(uint64_t *a1))()
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
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0, &protocol conformance descriptor for SharedLibraryStatusViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C(v4);
  return sub_1A3DE3FA8;
}

uint64_t sub_1A3DE4004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A3DE40C8()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3DE4158(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[7] == a1 && v2[8] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[7] = a1;
    v2[8] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 744))(v8);
  }

  return result;
}

void sub_1A3DE428C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t (*sub_1A3DE42F4(uint64_t *a1))()
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
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0, &protocol conformance descriptor for SharedLibraryStatusViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3FB4(v4);
  return sub_1A3DE4430;
}

uint64_t sub_1A3DE448C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result;
  return result;
}

void sub_1A3DE453C(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[9];
  sub_1A3C52C70(0, &qword_1EB1206D0, off_1E771F918);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[9];
    v2[9] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 744))(v9);
  }
}

void sub_1A3DE4680()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 72);
  *(v2 + 72) = v1;
  v4 = v1;
}

uint64_t (*sub_1A3DE46DC(uint64_t *a1))()
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
  (*(*v1 + 736))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C62EAC(&qword_1EB1298D0, &protocol conformance descriptor for SharedLibraryStatusViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE443C(v4);
  return sub_1A3DE4818;
}

uint64_t sub_1A3DE4824()
{
  swift_getKeyPath();
  (*(*v0 + 736))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A3DE4890@<X0>(_OWORD **a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 736))();

  *a2 = v3[5];

  return swift_unknownObjectRetain();
}

double sub_1A3DE491C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v3;
  (*(*v4 + 744))(KeyPath, sub_1A3DE63FC, v7, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

double sub_1A3DE49D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = (*(*Strong + 584))(Strong);
    v3 = [v2 isInitialized];

    if (v3)
    {
      sub_1A3DE4C24();
      sub_1A3DE4D9C();
      sub_1A3DE4F14();
      sub_1A3DE5208();
      sub_1A3DE5374();
      sub_1A3DE4A90();
      sub_1A3DE550C();
      sub_1A3DE56A4();
    }
  }

  return result;
}

uint64_t sub_1A3DE4A90()
{
  v1 = (*(*v0 + 584))();
  v2 = [v1 exiting];

  if (v2)
  {
    [v2 isOwned];
    v5 = sub_1A524C634();
    v6 = PXLocalizedSharedLibraryString(v5);

    v7 = sub_1A524C674();
    v9 = v8;
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = sub_1A524C634();
    v6 = PXLocalizedSharedLibraryString(v3);

    v7 = sub_1A524C674();
    v9 = v4;
  }

  v10 = *(*v0 + 448);

  return v10(v7, v9);
}

void sub_1A3DE4C24()
{
  v1 = (*(*v0 + 584))();
  CanSetupSharedLibraryOrPreview = PXSharedLibraryCanSetupSharedLibraryOrPreview(v1);

  if (CanSetupSharedLibraryOrPreview != ((*(*v0 + 344))() & 1))
  {
    v3 = v0[12];
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = CanSetupSharedLibraryOrPreview;
    v7[4] = sub_1A3DE6334;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1A3DC72D4;
    v7[3] = &block_descriptor_91_0;
    v6 = _Block_copy(v7);

    [v3 performChanges_];
    _Block_release(v6);
  }
}

void sub_1A3DE4D9C()
{
  v1 = (*(*v0 + 584))();
  ShouldDisplaySettings = PXSharedLibraryShouldDisplaySettings(v1);

  if (ShouldDisplaySettings != ((*(*v0 + 392))() & 1))
  {
    v3 = v0[12];
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = ShouldDisplaySettings;
    v7[4] = sub_1A3DE62A4;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1A3DC72D4;
    v7[3] = &block_descriptor_84_1;
    v6 = _Block_copy(v7);

    [v3 performChanges_];
    _Block_release(v6);
  }
}

void sub_1A3DE4F14()
{
  v1 = (*v0 + 584);
  v2 = *v1;
  v3 = (*v1)();
  v4 = [v3 hasSharedLibrary];

  if (v4)
  {
    goto LABEL_4;
  }

  v6 = v2();
  v7 = [v6 exiting];

  if (v7)
  {
    v5 = swift_unknownObjectRelease();
LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_5:
  if (v8 != ((*(*v0 + 200))(v5) & 1))
  {
    v9 = v0[12];
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    v13[4] = sub_1A3DE6254;
    v13[5] = v11;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1A3DC72D4;
    v13[3] = &block_descriptor_76;
    v12 = _Block_copy(v13);

    [v9 performChanges_];
    _Block_release(v12);
  }
}

double sub_1A3DE50D0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + 16) == (a2 & 1))
    {
      *(Strong + 16) = a2 & 1;
      [*(Strong + 96) signalChange_];
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v5 + 744))(v7);
    }
  }

  return result;
}

void sub_1A3DE5208()
{
  v1 = (*(*v0 + 584))();
  v2 = [v1 hasPreview];

  if (v2 != ((*(*v0 + 248))() & 1))
  {
    v3 = v0[12];
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v7[4] = sub_1A3DE61C4;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1A3DC72D4;
    v7[3] = &block_descriptor_69;
    v6 = _Block_copy(v7);

    [v3 performChanges_];
    _Block_release(v6);
  }
}

void sub_1A3DE5374()
{
  v1 = (*(*v0 + 584))();
  v2 = [v1 exiting];

  if (v2)
  {
    v3 = swift_unknownObjectRelease();
  }

  if ((v2 != 0) != ((*(*v0 + 296))(v3) & 1))
  {
    v4 = v2 != 0;
    v5 = v0[12];
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v4;
    v9[4] = sub_1A3DE6134;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1A3DC72D4;
    v9[3] = &block_descriptor_21;
    v8 = _Block_copy(v9);

    [v5 performChanges_];
    _Block_release(v8);
  }
}

uint64_t sub_1A3DE550C()
{
  v1 = (*v0 + 584);
  v2 = *v1;
  v3 = (*v1)();
  v4 = [v3 photoLibrary];

  LODWORD(v3) = [v4 isCloudPhotoLibraryEnabled];
  if (v3)
  {
    v5 = v2();
    v6 = [v5 exiting];

    if (v6)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      result = (*(*v0 + 344))();
      if ((result & 1) == 0)
      {
        return result;
      }
    }
  }

  v8 = v2();
  v9 = PXSharedLibrarySettingsDescription(v8);

  v10 = sub_1A524C674();
  v12 = v11;

  v13 = *(*v0 + 496);

  return v13(v10, v12);
}

uint64_t sub_1A3DE56A4()
{
  v1 = (*v0 + 584);
  v2 = *v1;
  v3 = (*v1)();
  v4 = [v3 exiting];

  if (v4)
  {
    swift_unknownObjectRelease();
    v5 = *(*v0 + 544);

    return v5(0, 0xE000000000000000);
  }

  else
  {
    v7 = v2();
    v8 = [v7 hasSharedLibrary];

    if (v8)
    {
      v9 = 0xD00000000000002ALL;
    }

    else
    {
      v10 = v2();
      v11 = [v10 hasPreview];

      if (v11)
      {
        v9 = 0xD000000000000031;
      }

      else
      {
        v9 = 0xD000000000000029;
      }
    }

    v12 = sub_1A3C38BD4(v9);
    v13 = *(*v0 + 544);

    return v13(v12);
  }
}

uint64_t SharedLibraryStatusViewModel.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedLibraryStatusViewModel.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryStatusViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1A3DE59D8()
{
  result = qword_1EB12C760;
  if (!qword_1EB12C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C760);
  }

  return result;
}

unint64_t sub_1A3DE5A30()
{
  result = qword_1EB12C768;
  if (!qword_1EB12C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C768);
  }

  return result;
}

unint64_t sub_1A3DE5A88()
{
  result = qword_1EB12C770;
  if (!qword_1EB12C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C770);
  }

  return result;
}

unint64_t sub_1A3DE5AE0()
{
  result = qword_1EB12C778;
  if (!qword_1EB12C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C778);
  }

  return result;
}

unint64_t sub_1A3DE5B38()
{
  result = qword_1EB12C780;
  if (!qword_1EB12C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C780);
  }

  return result;
}

unint64_t sub_1A3DE5B90()
{
  result = qword_1EB126CB0;
  if (!qword_1EB126CB0)
  {
    sub_1A3C52C70(255, &qword_1EB126CA0, &off_1E77217D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126CB0);
  }

  return result;
}

unint64_t sub_1A3DE5BFC()
{
  result = qword_1EB12C788;
  if (!qword_1EB12C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C788);
  }

  return result;
}

void sub_1A3DE5C50(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SharedLibraryStatusViewModel(0);
  sub_1A3C62EAC(&qword_1EB1298D8, &protocol conformance descriptor for SharedLibraryStatusViewModel);

  sub_1A5245C54();
}

double sub_1A3DE6134()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 304))(v1);
  }

  return result;
}

double sub_1A3DE61C4()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 256))(v1);
  }

  return result;
}

id sub_1A3DE6260()
{
  v1 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 24);
  return [*(v1 + 96) signalChange_];
}

double sub_1A3DE62A4()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 400))(v1);
  }

  return result;
}

double sub_1A3DE6334()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 352))(v1);
  }

  return result;
}

void sub_1A3DE6414()
{
  v0 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A3DE714C(0);
  v2 = v1;
  __swift_allocate_value_buffer(v1, qword_1EB166B60);
  __swift_project_value_buffer(v2, qword_1EB166B60);
  sub_1A5241024();
  v3 = [objc_opt_self() standardUserDefaults];
  sub_1A52465B4();
}

void sub_1A3DE6508()
{
  sub_1A3DE6648();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB166B78 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_1EB166B80);
  swift_beginAccess();
  (*(v2 + 16))(v4, v5, v1);
  sub_1A5246594();
}

void sub_1A3DE6648()
{
  if (!qword_1EB124A78)
  {
    sub_1A52465C4();
  }
}

void sub_1A3DE6698()
{
  sub_1A3DE6648();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB166B80);
  __swift_project_value_buffer(v1, qword_1EB166B80);
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1A52465B4();
}

void sub_1A3DE673C()
{
  sub_1A3DE6648();
  v15[4] = v0;
  v15[1] = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v15[0] = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1A5246F24();
  v15[6] = *(v2 - 8);
  v15[7] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v15[5] = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v15[3] = v15 - v5;
  sub_1A3DE714C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v16);
  v15[2] = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1A52413D4();
  MEMORY[0x1EEE9AC00](v13);
  sub_1A5241394();
  if (qword_1EB166B58 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_1EB166B60);
  swift_beginAccess();
  (*(v8 + 16))(v10, v14, v7);
  sub_1A5246594();
}

void sub_1A3DE6DAC()
{
  sub_1A3DE714C(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB166B98 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_1EB166BA0);
  swift_beginAccess();
  (*(v2 + 16))(v4, v5, v1);
  sub_1A5246594();
}

void sub_1A3DE6EF8(uint64_t a1)
{
  v2 = sub_1A5241144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB166B98 != -1)
  {
    swift_once();
  }

  sub_1A3DE714C(0);
  __swift_project_value_buffer(v6, qword_1EB166BA0);
  (*(v3 + 16))(v5, a1, v2);
  swift_beginAccess();
  sub_1A52465A4();
}

void sub_1A3DE7058()
{
  v0 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A3DE714C(0);
  v2 = v1;
  __swift_allocate_value_buffer(v1, qword_1EB166BA0);
  __swift_project_value_buffer(v2, qword_1EB166BA0);
  sub_1A5241024();
  v3 = [objc_opt_self() standardUserDefaults];
  sub_1A52465B4();
}

void sub_1A3DE714C(uint64_t a1)
{
  if (!qword_1EB124A80)
  {
    sub_1A5241144();
    sub_1A52465C4();
  }
}

unint64_t sub_1A3DE71B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_10;
  }

  MEMORY[0x1A59097F0](result);
LABEL_5:
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    sub_1A5246014();
  }

LABEL_10:
  __break(1u);
  return result;
}

id FullscreenOverlayViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FullscreenOverlayViewControllerFactory.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FullscreenOverlayViewControllerFactory(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id FullscreenOverlayViewControllerFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FullscreenOverlayViewControllerFactory(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1A3DE7458(unint64_t result, __n128 a2)
{
  if (result)
  {
    if (result >> 62)
    {
      result = sub_1A524E2B4();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    sub_1A3DE76BC(0, &qword_1EB1298C8, sub_1A3DE7674, sub_1A3DE790C, type metadata accessor for TransparentHostingController);
    MEMORY[0x1EEE9AC00](v2);
    sub_1A3DE7674(0);
    sub_1A3DE790C();
    v3 = sub_1A3C30368();
    v4 = sub_1A3C5A374();
    sub_1A3D444C0(&v6);
    v5 = sub_1A48F6E88();
    return TransparentHostingController.__allocating_init(allowUserInteraction:canShowWhileLocked:hitTestConditions:safeAreaRegions:rootView:)(v3 & 1, v4 & 1, &v6, v5);
  }

  return result;
}

unint64_t sub_1A3DE7610()
{
  result = qword_1EB1206D8;
  if (!qword_1EB1206D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1206D8);
  }

  return result;
}

void sub_1A3DE76BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A3DE773C(uint64_t a1)
{
  if (!qword_1EB1272F8)
  {
    sub_1A3D868AC();
    sub_1A3DE77C8();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1272F8);
    }
  }
}

unint64_t sub_1A3DE77C8()
{
  result = qword_1EB126D30;
  if (!qword_1EB126D30)
  {
    sub_1A3D868AC();
    sub_1A3DE7848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126D30);
  }

  return result;
}

unint64_t sub_1A3DE7848()
{
  result = qword_1EB127048;
  if (!qword_1EB127048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127048);
  }

  return result;
}

unint64_t sub_1A3DE789C()
{
  result = qword_1EB127300;
  if (!qword_1EB127300)
  {
    sub_1A3DE773C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127300);
  }

  return result;
}

unint64_t sub_1A3DE790C()
{
  result = qword_1EB127370;
  if (!qword_1EB127370)
  {
    sub_1A3DE7674(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127370);
  }

  return result;
}

void sub_1A3DE7964(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = sub_1A524BC74();
  a2[1] = v5;
  if (!(v4 >> 62))
  {
    sub_1A3DE7A88(0);
    goto LABEL_3;
  }

  v6 = sub_1A524E2B4();
  sub_1A3DE7A88(0);
  if ((v6 & 0x8000000000000000) == 0)
  {
LABEL_3:
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v4;
    sub_1A3D868AC();
    sub_1A3DE77C8();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
}

void sub_1A3DE7A88(uint64_t a1)
{
  if (!qword_1EB128910)
  {
    sub_1A3DE773C(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128910);
    }
  }
}

void sub_1A3DE7AF8()
{
  sub_1A3DE7DAC(0, &qword_1EB128C18, type metadata accessor for CGSize, off_1E7721260);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - v4;
  v6 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__viewportSize;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_1A52467B4();
}

void sub_1A3DE7C38(double a1, double a2)
{
  swift_beginAccess();
  sub_1A3DE7DAC(0, &qword_1EB128C18, type metadata accessor for CGSize, off_1E7721260);
  sub_1A52467C4();
}

void sub_1A3DE7CCC(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A3DE7DAC(0, &qword_1EB128C18, type metadata accessor for CGSize, off_1E7721260);
  sub_1A52467A4();
}

void sub_1A3DE7DAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3DE7E44(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  sub_1A52467A4();
}

void sub_1A3DE7F2C(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  sub_1A52467A4();
}

void sub_1A3DE8008(uint64_t *a1)
{
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  v8 = *a1;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1A52467B4();
}

void sub_1A3DE8158(void *a1, double a2, double a3, double a4, double a5)
{
  swift_beginAccess();
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  sub_1A52467C4();
}

void sub_1A3DE81EC(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  sub_1A52467A4();
}

void sub_1A3DE82D4(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A3C4890C(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  sub_1A52467A4();
}

void sub_1A3DE83A4(uint64_t *a1)
{
  sub_1A3C4890C(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  v8 = *a1;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1A52467B4();
}

void sub_1A3DE84E4(char a1, void *a2)
{
  swift_beginAccess();
  sub_1A3C4890C(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  sub_1A52467C4();
}

void sub_1A3DE8568(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A3C4890C(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  sub_1A52467A4();
}

void sub_1A3DE862C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  swift_endAccess();

  free(v1);
}

uint64_t sub_1A3DE8738@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  sub_1A3DE7DAC(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v44 = &v41 - v2;
  v3 = sub_1A5247E04();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DE8C4C(0, v7);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - v16;
  sub_1A3DEB188(0, &unk_1EB127F90, MEMORY[0x1E697F948], v15);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  sub_1A3C7E8B0(0, v21);
  v22 = [swift_getObjCClassFromMetadata() sharedInstance];
  v23 = [v22 dynamicHeaderDebugOverlay];

  if (v23 == 3)
  {
    v24 = *(v47 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController_model);
    v50 = type metadata accessor for DynamicHeaderGeometryModel(0);
    v51 = &off_1F16E1BA0;
    *&v49 = v24;

    PhotosDynamicHeaderLegibilityDebugOverlay.init(geometryModel:)(&v49, &v52);
    sub_1A3DEAD00(&v52, v20);
    swift_storeEnumTagMultiPayload();
    sub_1A3DEAB18();
    sub_1A3DEAB6C(v25);
    sub_1A5249744();
    return sub_1A3DEAD5C(&v52);
  }

  else
  {
    v43 = v11;
    v27 = v47;
    v28 = *(v47 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController_model);
    v53 = type metadata accessor for DynamicHeaderGeometryModel(0);
    v54 = &off_1F16E1BA0;
    *&v52 = v28;

    PhotosDynamicHeaderLegibilityOverlay.init(geometryModel:)(&v52, v9);
    KeyPath = swift_getKeyPath();
    v29 = [objc_opt_self() sharedInstance];
    v30 = [v29 forceDarkDetailsView];

    if (v30)
    {
      v31 = v45;
      v32 = v46;
      (*(v45 + 104))(v5, *MEMORY[0x1E697DBA8], v46);
      v33 = v43;
    }

    else
    {
      v34 = v27 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__colorScheme;
      v35 = v44;
      sub_1A3DEB2CC(v34, v44, &qword_1EB128A30, MEMORY[0x1E697DCC0]);
      sub_1A3DEA79C(v5);
      sub_1A3DEA9C0(v35);
      v33 = v43;
      v31 = v45;
      v32 = v46;
    }

    v36 = &v13[*(v33 + 36)];
    sub_1A3DE7DAC(0, &qword_1EB127890, MEMORY[0x1E697DBD0], MEMORY[0x1E6980A08]);
    (*(v31 + 32))(v36 + *(v37 + 28), v5, v32);
    *v36 = KeyPath;
    sub_1A3DEAA4C(v9, v13, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
    sub_1A3DEAA4C(v13, v17, sub_1A3DE8C4C);
    sub_1A3DEAAB4(v17, v20, v38);
    swift_storeEnumTagMultiPayload();
    sub_1A3DEAB18();
    sub_1A3DEAB6C(v39);
    sub_1A5249744();
    return sub_1A3DEACA4(v17, v40);
  }
}

void sub_1A3DE8C4C(uint64_t a1, double a2)
{
  if (!qword_1EB128890)
  {
    type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(255);
    sub_1A3DE7DAC(255, &qword_1EB127890, MEMORY[0x1E697DBD0], MEMORY[0x1E6980A08]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB128890);
    }
  }
}

uint64_t sub_1A3DE8D08(uint64_t a1)
{
  v2 = sub_1A5247E04();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A5248F24();
}

void sub_1A3DE8E08()
{
  sub_1A3C4890C(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  v14[1] = *(v1 - 8);
  v14[2] = v1;
  MEMORY[0x1EEE9AC00](v1);
  v14[0] = v14 - v2;
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3DE7DAC(0, &qword_1EB128C18, type metadata accessor for CGSize, off_1E7721260);
  MEMORY[0x1EEE9AC00](v4);
  v5 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__colorScheme;
  *(v0 + v5) = swift_getKeyPath();
  sub_1A3DE7DAC(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController_model;
  type metadata accessor for DynamicHeaderGeometryModel(0);
  v7 = swift_allocObject();
  v8 = *MEMORY[0x1E69DDCE0];
  v9 = *(MEMORY[0x1E69DDCE0] + 8);
  v10 = *(MEMORY[0x1E69DDCE0] + 16);
  v11 = *(MEMORY[0x1E69DDCE0] + 24);
  *(v7 + 16) = *MEMORY[0x1E69DDCE0];
  *(v7 + 24) = v9;
  *(v7 + 32) = v10;
  *(v7 + 40) = v11;
  *(v7 + 48) = v8;
  *(v7 + 56) = v9;
  *(v7 + 64) = v10;
  *(v7 + 72) = v11;
  *(v7 + 80) = v8;
  *(v7 + 88) = v9;
  *(v7 + 96) = v10;
  *(v7 + 104) = v11;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 257;
  v12 = sub_1A43ACA40();
  v13 = *(v12 + 2);
  *(v7 + 136) = *v12;
  *(v7 + 152) = v13;
  sub_1A5241604();
  *(v0 + v6) = v7;
  v14[3] = v7;
  swift_getKeyPath();
  sub_1A3DEADB0(&qword_1EB126710, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);

  sub_1A52467D4();
}

__n128 sub_1A3DE938C@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = v3[7];
  *a2 = result;
  return result;
}

__n128 sub_1A3DE942C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_1A3DE94A4(double *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a2.n128_f64[0] = *a1;
  a3.n128_f64[0] = a1[1];
  a4.n128_f64[0] = a1[2];
  a5.n128_f64[0] = a1[3];
  sub_1A3DE99EC(a2, a3, a4, a5);
}

__n128 sub_1A3DE94D0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = *(v3 + 48);
  v5 = *(v3 + 64);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_1A3DE9548(double *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a2.n128_f64[0] = *a1;
  a3.n128_f64[0] = a1[1];
  a4.n128_f64[0] = a1[2];
  a5.n128_f64[0] = a1[3];
  sub_1A3DE9B78(a2, a3, a4, a5);
}

__n128 sub_1A3DE9574@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = *(v3 + 80);
  v5 = *(v3 + 96);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_1A3DE95EC(double *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a2.n128_f64[0] = *a1;
  a3.n128_f64[0] = a1[1];
  a4.n128_f64[0] = a1[2];
  a5.n128_f64[0] = a1[3];
  sub_1A3DE9D04(a2, a3, a4, a5);
}

void sub_1A3DE9618(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  *a2 = *(v3 + 128);
}

void sub_1A3DE96B8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  *a2 = *(v3 + 129);
}

uint64_t sub_1A3DE9758()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__viewportSize;
  sub_1A3DE7DAC(0, &qword_1EB128C18, type metadata accessor for CGSize, off_1E7721260);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__mainContentInsets;
  sub_1A3DE7DAC(0, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
  v5 = v4;
  v6 = *(*(v4 - 8) + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__floatingInsets, v5);
  v6(v0 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__maximumFloatingAreaInsets, v5);
  v7 = OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__wantsBlur;
  sub_1A3C4890C(0, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
  v9 = v8;
  v10 = *(*(v8 - 8) + 8);
  v10(v0 + v7, v8);
  v10(v0 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__wantsTitleLegibilityGradient, v9);
  sub_1A3DEA9C0(v0 + OBJC_IVAR____TtC12PhotosUICore36PhotosDynamicHeaderOverlayController__colorScheme);

  return swift_deallocClassInstance();
}

double sub_1A3DE9978()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v0 + 16);
}

void sub_1A3DE99EC(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *&v5.f64[0] = a1.n128_u64[0];
  *&v5.f64[1] = a2.n128_u64[0];
  *&v6.f64[0] = a3.n128_u64[0];
  *&v6.f64[1] = a4.n128_u64[0];
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 16), v5), vceqq_f64(*(v4 + 32), v6)))))
  {
    *(v4 + 16) = a1.n128_u64[0];
    *(v4 + 24) = a2.n128_u64[0];
    *(v4 + 32) = a3.n128_u64[0];
    *(v4 + 40) = a4.n128_u64[0];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DEB1F0();
    sub_1A52415C4();
  }
}

double sub_1A3DE9B04()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v0 + 48);
}

void sub_1A3DE9B78(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *&v5.f64[0] = a1.n128_u64[0];
  *&v5.f64[1] = a2.n128_u64[0];
  *&v6.f64[0] = a3.n128_u64[0];
  *&v6.f64[1] = a4.n128_u64[0];
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 48), v5), vceqq_f64(*(v4 + 64), v6)))))
  {
    *(v4 + 48) = a1.n128_u64[0];
    *(v4 + 56) = a2.n128_u64[0];
    *(v4 + 64) = a3.n128_u64[0];
    *(v4 + 72) = a4.n128_u64[0];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DEB1F0();
    sub_1A52415C4();
  }
}

double sub_1A3DE9C90()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v0 + 80);
}

void sub_1A3DE9D04(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *&v5.f64[0] = a1.n128_u64[0];
  *&v5.f64[1] = a2.n128_u64[0];
  *&v6.f64[0] = a3.n128_u64[0];
  *&v6.f64[1] = a4.n128_u64[0];
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 80), v5), vceqq_f64(*(v4 + 96), v6)))))
  {
    *(v4 + 80) = a1.n128_u64[0];
    *(v4 + 88) = a2.n128_u64[0];
    *(v4 + 96) = a3.n128_u64[0];
    *(v4 + 104) = a4.n128_u64[0];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DEB1F0();
    sub_1A52415C4();
  }
}

double sub_1A3DE9E1C()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v0 + 112);
}

void sub_1A3DE9E8C(double a1, double a2)
{
  if (*(v2 + 112) == a1 && *(v2 + 120) == a2)
  {
    *(v2 + 112) = a1;
    *(v2 + 120) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DEB1F0();
    sub_1A52415C4();
  }
}

uint64_t sub_1A3DE9F7C()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v0 + 128);
}

void sub_1A3DE9FEC(char a1)
{
  if (*(v1 + 128) == (a1 & 1))
  {
    *(v1 + 128) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DEB1F0();
    sub_1A52415C4();
  }
}

uint64_t sub_1A3DEA0CC()
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v0 + 129);
}

void sub_1A3DEA13C(char a1)
{
  if (*(v1 + 129) == (a1 & 1))
  {
    *(v1 + 129) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DEB1F0();
    sub_1A52415C4();
  }
}

double sub_1A3DEA21C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = *(v1 + 152);
  *a1 = *(v1 + 136);
  *(a1 + 16) = result;
  return result;
}

double sub_1A3DEA29C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = *(v3 + 152);
  *a2 = *(v3 + 136);
  *(a2 + 16) = result;
  return result;
}

void sub_1A3DEA31C(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415C4();
}

uint64_t sub_1A3DEA3D4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_5C50824EE1B9DC3BA10A85442AFF3CEE26DynamicHeaderGeometryModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1A3DEA470()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v1 + 16);
}

double sub_1A3DEA4E4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v1 + 48);
}

double sub_1A3DEA558()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v1 + 80);
}

double sub_1A3DEA5CC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v1 + 112);
}

uint64_t sub_1A3DEA63C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v1 + 128);
}

uint64_t sub_1A3DEA6AC()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  return *(v1 + 129);
}

double sub_1A3DEA71C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1A3DEB1F0();
  sub_1A52415D4();

  result = *(v3 + 152);
  *a1 = *(v3 + 136);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A3DEA79C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697DCB8];
  sub_1A3DE7DAC(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1A3DEB2CC(v2, &v16 - v10, &qword_1EB128A70, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5247E04();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A3DEA9C0(uint64_t a1)
{
  sub_1A3DE7DAC(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3DEAA4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3DEAAB4(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A3DE8C4C(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A3DEAB18()
{
  result = qword_1EB12A980;
  if (!qword_1EB12A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A980);
  }

  return result;
}

unint64_t sub_1A3DEAB6C(double a1)
{
  result = qword_1EB128898;
  if (!qword_1EB128898)
  {
    sub_1A3DE8C4C(255, a1);
    sub_1A3DEADB0(&qword_1EB12A9F0, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay, &protocol conformance descriptor for PhotosDynamicHeaderLegibilityOverlay);
    sub_1A3DEAC1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128898);
  }

  return result;
}

unint64_t sub_1A3DEAC1C()
{
  result = qword_1EB127898;
  if (!qword_1EB127898)
  {
    sub_1A3DE7DAC(255, &qword_1EB127890, MEMORY[0x1E697DBD0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127898);
  }

  return result;
}

uint64_t sub_1A3DEACA4(uint64_t a1, double a2)
{
  sub_1A3DE8C4C(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3DEADB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A3DEAE20(uint64_t a1)
{
  sub_1A3DE7DAC(319, &qword_1EB128C18, type metadata accessor for CGSize, off_1E7721260);
  if (v1 <= 0x3F)
  {
    sub_1A3DE7DAC(319, &qword_1EB128C28, type metadata accessor for UIEdgeInsets, off_1E7721260);
    if (v2 <= 0x3F)
    {
      sub_1A3C4890C(319, &qword_1EB128C30, MEMORY[0x1E69E6370], off_1E7721260);
      if (v3 <= 0x3F)
      {
        sub_1A3DE7DAC(319, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1A3DEB02C(uint64_t a1)
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

unint64_t sub_1A3DEB0EC(double a1)
{
  result = qword_1EB127EA0;
  if (!qword_1EB127EA0)
  {
    sub_1A3DEB188(255, &qword_1EB127E98, MEMORY[0x1E697F960], a1);
    sub_1A3DEAB18();
    sub_1A3DEAB6C(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127EA0);
  }

  return result;
}

void sub_1A3DEB188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A3DE8C4C(255, a4);
    v8 = a3(a1, &type metadata for PhotosDynamicHeaderLegibilityDebugOverlay, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A3DEB1F0()
{
  result = qword_1EB182208;
  if (!qword_1EB182208)
  {
    type metadata accessor for DynamicHeaderGeometryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB182208);
  }

  return result;
}

double sub_1A3DEB248()
{
  v1 = *(v0 + 16);
  result = *(v0 + 40);
  *(v1 + 136) = *(v0 + 24);
  *(v1 + 152) = result;
  return result;
}

__n128 sub_1A3DEB280()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 112) = result;
  return result;
}

__n128 sub_1A3DEB290()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 80) = result;
  *(v1 + 96) = v3;
  return result;
}

__n128 sub_1A3DEB2A4()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 48) = result;
  *(v1 + 64) = v3;
  return result;
}

__n128 sub_1A3DEB2B8()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 16) = result;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1A3DEB2CC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A3DE7DAC(0, a3, MEMORY[0x1E697DBD0], a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3DEB34C()
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
  __swift_allocate_value_buffer(v6, qword_1EB1EB860);
  __swift_project_value_buffer(v6, qword_1EB1EB860);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A3DEB538()
{
  result = qword_1EB12C7F8;
  if (!qword_1EB12C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C7F8);
  }

  return result;
}

void sub_1A3DEB58C(uint64_t a1)
{
  if (!qword_1EB12C808)
  {
    sub_1A3DEB5EC(255);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C808);
    }
  }
}

void sub_1A3DEB5EC(uint64_t a1)
{
  if (!qword_1EB12C810)
  {
    sub_1A3C37060(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1A3DEB674();
    v1 = sub_1A5240044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C810);
    }
  }
}

unint64_t sub_1A3DEB674()
{
  result = qword_1EB12C818;
  if (!qword_1EB12C818)
  {
    sub_1A3C37060(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1A3DEB710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C818);
  }

  return result;
}

unint64_t sub_1A3DEB710()
{
  result = qword_1EB120E48;
  if (!qword_1EB120E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120E48);
  }

  return result;
}

uint64_t sub_1A3DEB764(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3DEB7FC, v4, v3);
}

uint64_t sub_1A3DEB7FC()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1A3DEB538();
  *v1 = v0;
  v1[1] = sub_1A3DEB8E8;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A52FF550);
}

uint64_t sub_1A3DEB8E8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1A3DEBA60;
  }

  else
  {
    v5 = sub_1A3DEB9FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DEB9FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DEBA60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DEBAC4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_1A3DEDEC0(0, &qword_1EB12C820, MEMORY[0x1E695A340]);
  v2[8] = swift_task_alloc();
  v3 = sub_1A5240164();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_1A5240E64();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_1A524CC54();
  v2[15] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v2[16] = v6;
  v2[17] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A3DEBC5C, v6, v5);
}

uint64_t sub_1A3DEBC5C()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  sub_1A523FF44();
  v0[4] = v6;
  v7 = v0[2];
  v8 = v0[3];
  sub_1A3DEB538();
  sub_1A523FCD4();
  sub_1A5240154();
  (*(v2 + 8))(v3, v4);
  sub_1A3DEC1C4(v7, v8, v5, v1);
  v9 = v0[7];
  sub_1A3DEC858(v0[8], &qword_1EB12C820, MEMORY[0x1E695A340]);

  v0[5] = v9;
  v10 = AppIntent.px_intentName.getter(&type metadata for OpenMemoryCreationViewIntent);
  v12 = v11;
  v0[18] = v11;
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_1A3DEBEA0;
  v14 = v0[14];

  return sub_1A3DED504(v14, v10, v12);
}

uint64_t sub_1A3DEBEA0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1A3DEC080;
  }

  else
  {
    v5 = sub_1A3DEBFC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DEBFC4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];

  sub_1A523FDD4();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3DEC080()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3DEC128(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return sub_1A3DEBAC4(a1, v1);
}

uint64_t sub_1A3DEC1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a1;
  v49 = a2;
  v47 = a4;
  sub_1A3DEDEC0(0, &qword_1EB124C88, MEMORY[0x1E69C1030]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = sub_1A5240E64();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  sub_1A3DEDEC0(0, &qword_1EB12C820, MEMORY[0x1E695A340]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - v26;
  sub_1A3DEC7D8(a3, &v44 - v26);
  v28 = sub_1A5240144();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
LABEL_2:
    v30 = *MEMORY[0x1E69C1010];
    v31 = sub_1A5244854();
    v32 = *(v31 - 8);
    (*(v32 + 104))(v7, v30, v31);
    (*(v32 + 56))(v7, 0, 1, v31);
    v33 = v50;
    sub_1A5244F04();
    sub_1A3DEC858(v7, &qword_1EB124C88, MEMORY[0x1E69C1030]);
    if (v33)
    {
      return sub_1A3DEC858(v27, &qword_1EB12C820, MEMORY[0x1E695A340]);
    }

LABEL_3:
    (*(v45 + 32))(v47, v16, v46);
    return sub_1A3DEC858(v27, &qword_1EB12C820, MEMORY[0x1E695A340]);
  }

  sub_1A3DEC7D8(v27, v24);
  v35 = (*(v29 + 88))(v24, v28);
  if (v35 != *MEMORY[0x1E695A310])
  {
    if (v35 == *MEMORY[0x1E695A330])
    {
      v40 = *MEMORY[0x1E69C1020];
      v41 = sub_1A5244854();
      v42 = *(v41 - 8);
      (*(v42 + 104))(v10, v40, v41);
      (*(v42 + 56))(v10, 0, 1, v41);
      v16 = v44;
      v43 = v50;
      sub_1A5244F04();
      sub_1A3DEC858(v10, &qword_1EB124C88, MEMORY[0x1E69C1030]);
      if (v43)
      {
        return sub_1A3DEC858(v27, &qword_1EB12C820, MEMORY[0x1E695A340]);
      }

      goto LABEL_3;
    }

    if (v35 != *MEMORY[0x1E695A328])
    {
      (*(v29 + 8))(v24, v28);
      goto LABEL_2;
    }
  }

  sub_1A3DEC858(v27, &qword_1EB12C820, MEMORY[0x1E695A340]);
  v36 = *MEMORY[0x1E69C0FF8];
  v37 = sub_1A5244854();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v13, v36, v37);
  (*(v38 + 56))(v13, 0, 1, v37);
  v39 = v50;
  sub_1A5244F04();
  result = sub_1A3DEC858(v13, &qword_1EB124C88, MEMORY[0x1E69C1030]);
  if (!v39)
  {
    return (*(v45 + 32))(v47, v21, v46);
  }

  return result;
}

uint64_t sub_1A3DEC7D8(uint64_t a1, uint64_t a2)
{
  sub_1A3DEDEC0(0, &qword_1EB12C820, MEMORY[0x1E695A340]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3DEC858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3DEDEC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3DEC8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D60150;

  return sub_1A3DED504(a1, a2, a3);
}

uint64_t sub_1A3DEC974()
{
  v0 = sub_1A5240334();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v28 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DEDEC0(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v22 - v3;
  sub_1A3DEDEC0(0, &qword_1EB12C828, MEMORY[0x1E695A7D8]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = &v22 - v5;
  sub_1A3DEDEC0(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
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
  sub_1A3DEB5EC(0);
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
  v19 = sub_1A524C5A4();
  v31 = 0;
  v32 = 0;
  (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
  v20 = sub_1A523FDB4();
  (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
  (*(v29 + 104))(v28, *MEMORY[0x1E695A500], v30);
  return sub_1A5240004();
}

uint64_t sub_1A3DECEC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1982A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1EB860);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A3DECF88(uint64_t a1, uint64_t a2)
{
  sub_1A3DEE0CC(0, &qword_1EB12C7F0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3DEE0CC(0, &qword_1EB12C800, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A3DEB58C(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A3DED144(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x1EEE6DFA0](sub_1A3DED1E4, v7, v6);
}

uint64_t sub_1A3DED1E4()
{
  v0[2] = v0[6];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DED2C4;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A52FF748);
}

uint64_t sub_1A3DED2C4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1A3DED43C;
  }

  else
  {
    v5 = sub_1A3DED3D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DED3D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DED43C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DED4A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3DEC974();
  *a1 = result;
  return result;
}

uint64_t sub_1A3DED4C8(uint64_t a1)
{
  v2 = sub_1A3DEB538();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A3DED504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1A5246F24();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_1A524CC54();
  v3[9] = sub_1A524CC44();
  v3[10] = type metadata accessor for PXAppDependencyManager();
  v5 = swift_task_alloc();
  v3[11] = v5;
  *v5 = v3;
  v5[1] = sub_1A3DED620;

  return sub_1A4896234();
}

uint64_t sub_1A3DED620(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  if (v1)
  {
    v7 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DEDD6C, v7, v6);
  }

  else
  {
    type metadata accessor for LemonadeMemoriesCreationAvailabilityManager(0);
    v8 = swift_task_alloc();
    v4[14] = v8;
    *v8 = v5;
    v8[1] = sub_1A3DED7C8;

    return static LemonadeMemoriesCreationAvailabilityManager.canProceedWithMemoryCreation(in:)(a1);
  }
}

uint64_t sub_1A3DED7C8(char a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1A524CBC4();
    v7 = v6;
    v8 = sub_1A3DEDDD8;
    v9 = v5;
    v10 = v7;
  }

  else
  {
    *(v4 + 160) = a1 & 1;
    v11 = sub_1A524CBC4();
    v10 = v12;
    *(v4 + 128) = v11;
    *(v4 + 136) = v12;
    v8 = sub_1A3DED95C;
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1A3DED95C()
{
  if (*(v0 + 160) != 1)
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);

    v7 = sub_1A3CB648C();
    (*(v5 + 16))(v4, v7, v6);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1A3DEDBB4;
  v2 = *(v0 + 16);

  return static PXAppDependencyManager.navigateToURLDestination(_:)(v2);
}

uint64_t sub_1A3DEDBB4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1A3DEDE4C;
  }

  else
  {
    v5 = sub_1A3DEDCF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3DEDCF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DEDD6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DEDDD8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A3DEDE4C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A3DEDEC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_1A3DEDF18()
{
  result = qword_1EB12C830;
  if (!qword_1EB12C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C830);
  }

  return result;
}

unint64_t sub_1A3DEDF70()
{
  result = qword_1EB12C838;
  if (!qword_1EB12C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C838);
  }

  return result;
}

unint64_t sub_1A3DEDFC8()
{
  result = qword_1EB12C840;
  if (!qword_1EB12C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C840);
  }

  return result;
}

unint64_t sub_1A3DEE058()
{
  result = qword_1EB12C848;
  if (!qword_1EB12C848)
  {
    sub_1A3DEE0CC(255, &qword_1EB12C850, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C848);
  }

  return result;
}

void sub_1A3DEE0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3DEB538();
    v7 = a3(a1, &type metadata for OpenMemoryCreationViewIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A3DEE130(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A3DEBAC4(a1, v1);
}

unint64_t sub_1A3DEE1CC()
{
  result = qword_1EB12C858;
  if (!qword_1EB12C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C858);
  }

  return result;
}

uint64_t static PeopleMergeActionPerformer.canMerge(people:)(void *a1)
{
  v2 = [a1 fetchedObjects];
  if (v2)
  {
    sub_1A3DEF040(0, v1);
    v3 = sub_1A524CA34();

    if (v3 >> 62)
    {
      if (sub_1A524E2B4() >= 2)
      {
        goto LABEL_4;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
LABEL_4:
      type metadata accessor for PeopleMergeUtilities(0, v4);
      LOBYTE(v2) = sub_1A3D76994(v3, v5);
LABEL_7:

      return v2 & 1;
    }

    LOBYTE(v2) = 0;
    goto LABEL_7;
  }

  return v2 & 1;
}

id static PeopleMergeActionPerformer.localizedTitle(for:)(void *a1)
{
  result = [a1 photoLibrary];
  if (result)
  {
    v2 = result;
    v3 = [result px_peoplePetsHomeVisibility];

    v4 = sub_1A524C634();
    v5 = PXLocalizedStringForPersonOrPetAndVisibility(0, v3, v4);

    v6 = sub_1A524C674();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PeopleMergeActionPerformer.performUserInteractionTask()()
{
  v0 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5246EF4();
}

id PeopleMergeActionPerformer.__allocating_init(__actionType:assetCollectionReference:parameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = objc_allocWithZone(v4);
  v7 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0, &unk_1A5377DC0);
  v8 = sub_1A524C3D4();

  v9 = [v6 initWithActionType:v7 assetCollectionReference:a3 parameters:v8];

  return v9;
}

id PeopleMergeActionPerformer.init(__actionType:assetCollectionReference:parameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0, &unk_1A5377DC0);
  v8 = sub_1A524C3D4();

  v11.receiver = v4;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithActionType_assetCollectionReference_parameters_, v7, a3, v8);

  return v9;
}

id PeopleMergeActionPerformer.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s12PhotosUICore26PeopleMergeActionPerformerC10canPerform2onSbSo13PHFetchResultCySo8PHPersonCG_tFZ_0(void *a1)
{
  v2 = [a1 fetchedObjects];
  if (v2)
  {
    sub_1A3DEF040(0, v1);
    v3 = sub_1A524CA34();

    if (v3 >> 62)
    {
      if (sub_1A524E2B4() >= 2)
      {
        goto LABEL_4;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
LABEL_4:
      type metadata accessor for PeopleMergeUtilities(0, v4);
      LOBYTE(v2) = sub_1A3D76994(v3, v5);
LABEL_7:

      return v2 & 1;
    }

    LOBYTE(v2) = 0;
    goto LABEL_7;
  }

  return v2 & 1;
}

unint64_t sub_1A3DEF040(uint64_t a1, uint64_t a2)
{
  result = qword_1EB1265C0;
  if (!qword_1EB1265C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1265C0);
  }

  return result;
}

void sub_1A3DEF08C(char a1)
{
  sub_1A5246F24();
  if ((a1 & 1) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

uint64_t sub_1A3DEF360@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for SharedLibraryOwnerImageConfiguration(0);
  v5 = *(v4 + 20);
  v6 = *MEMORY[0x1E697E7D0];
  v7 = sub_1A5248714();
  result = (*(*(v7 - 8) + 104))(&a2[v5], v6, v7);
  *&a2[*(v4 + 24)] = 0x3FF0000000000000;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for SharedLibraryOwnerImageConfiguration(uint64_t a1)
{
  result = qword_1EB1987C0;
  if (!qword_1EB1987C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3DEF448()
{
  v1 = [*v0 localIdentifier];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A3DEF4A0(id *a1, id *a2)
{
  v3 = [*a1 localIdentifier];
  v4 = sub_1A524C674();
  v6 = v5;

  v7 = [*a2 localIdentifier];
  v8 = sub_1A524C674();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A524EAB4();
  }

  return v12 & 1;
}

void sub_1A3DEF568(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

void sub_1A3DEF638(id *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = sub_1A5248714();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharedLibraryOwnerImageConfiguration(0);
  (*(v6 + 104))(v8, *MEMORY[0x1E697E7D8], v5);
  sub_1A5248704();
  (*(v6 + 8))(v8, v5);
  PXSizeScale();
}

unint64_t sub_1A3DEF8C4()
{
  result = qword_1EB12C888;
  if (!qword_1EB12C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C888);
  }

  return result;
}

uint64_t sub_1A3DEF988(uint64_t a1)
{
  result = sub_1A3DEFA14();
  if (v2 <= 0x3F)
  {
    result = sub_1A5248714();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A3DEFA14()
{
  result = qword_1EB12C900;
  if (!qword_1EB12C900)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12C900);
  }

  return result;
}

void sub_1A3DEFA88(void *a1, void *a2, id a3)
{
  v4 = *(v3 + 16);
  if (a1)
  {
    [a1 px_pixelSize];
    sub_1A524D9B4();
  }

  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v6 = sub_1A5242584();
    sub_1A3DEFC54(&qword_1EB143160, MEMORY[0x1E69C1EC0], MEMORY[0x1E69C1EC8]);
    v5 = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69C1EB0], v6);
    a3 = 0;
  }

  *&v9 = v5;
  v10 = 1;
  v8 = a3;
  v4(&v9);
}

uint64_t sub_1A3DEFC54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A3DEFC9C(uint64_t a1, uint64_t a2)
{
  result = qword_1EB126630;
  if (!qword_1EB126630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126630);
  }

  return result;
}

id sub_1A3DEFCE8(void *a1, char a2)
{
  v4 = [objc_allocWithZone(v2) initWithArrangedSubview:a1 isNotification:a2 & 1];

  return v4;
}

id sub_1A3DEFE38(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosSearchNavigationBarPalette(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A3DEFE6C(uint64_t a1, uint64_t a2)
{
  if (PFProcessIsLaunchedToExecuteTests())
  {
    return 1;
  }

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_1A524C634();
  v5 = [v3 BOOLForKey_];

  return v5;
}

id sub_1A3DEFF08(uint64_t a1, uint64_t a2)
{
  result = PFOSVariantHasInternalUI();
  if (result)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = sub_1A524C634();
    v5 = [v3 BOOLForKey_];

    return v5;
  }

  return result;
}

uint64_t sub_1A3DEFFAC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1987D8);
  v1 = __swift_project_value_buffer(v0, qword_1EB1987D8);
  v2 = sub_1A45318CC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1A3DF0038(uint64_t a1)
{
  if (!qword_1EB12C970)
  {
    sub_1A3C34400(255, &unk_1EB12C978, &protocol descriptor for LemonadeSharedAlbumsActivityOneUpBrowsingDelegate);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C970);
    }
  }
}

uint64_t sub_1A3DF00D8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1A59042D0]();
  *a1 = result;
  return result;
}

uint64_t sub_1A3DF0104@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell(0, a4, a5, a4);
  v10 = a6 + v9[14];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  swift_unknownObjectRetain();
  sub_1A524BAC4();
  *(a6 + v9[9]) = a2;
  sub_1A3E09888(a3, a6 + v9[10], sub_1A3DF0038);
  sub_1A3E09888(a3, v15, sub_1A3DF0038);
  v11 = a6 + v9[11];
  *(v11 + 40) = 0;
  *(v11 + 24) = 0u;
  *v11 = a2;
  *(v11 + 8) = 0u;
  swift_retain_n();
  sub_1A3DF02DC(v15, v11 + 8);
  sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
  v12 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = [v12 activityEntryFeedDrawDebugBackgrounds];

  *(a6 + v9[13]) = v13;
  sub_1A52434D4();
  sub_1A5247C74();
  swift_unknownObjectRelease();

  return sub_1A3E09958(a3, sub_1A3DF0038);
}

uint64_t sub_1A3DF02DC(uint64_t a1, uint64_t a2)
{
  sub_1A3DF0038(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3DF0340()
{
  sub_1A3E09AF8(0, &unk_1EB129000, MEMORY[0x1E69C28B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1A5243CC4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_1A52434C4();
}

uint64_t sub_1A3DF043C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v106 = a2;
  v3 = sub_1A52434D4();
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v103 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130[0] = sub_1A524B9A4();
  v5 = MEMORY[0x1E697E830];
  sub_1A3E055C8(255, &qword_1EB12C988, sub_1A3DF11FC, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v130[1] = v6;
  v107 = a1;
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v99 = *(v7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v10, v11);
  sub_1A5248804();
  v101 = v8;
  v102 = v7;
  type metadata accessor for SharedAlbumsAssetsCollageView(255, v8, v7, v12);
  sub_1A5249754();
  v13 = sub_1A524B514();
  v14 = sub_1A5248A14();
  WitnessTable = swift_getWitnessTable();
  v129 = MEMORY[0x1E697F568];
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v126 = v15;
  v127 = v16;
  v125 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = sub_1A3DF19A4(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  *&v114[0] = v13;
  *(&v114[0] + 1) = v14;
  *&v114[1] = v17;
  *(&v114[1] + 1) = v18;
  swift_getOpaqueTypeMetadata2();
  v19 = sub_1A5248804();
  v20 = sub_1A5242C04();
  *&v114[0] = v13;
  *(&v114[0] + 1) = v14;
  *&v114[1] = v17;
  *(&v114[1] + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = MEMORY[0x1E697E5D8];
  v123 = OpaqueTypeConformance2;
  v124 = MEMORY[0x1E697E5D8];
  v23 = swift_getWitnessTable();
  v24 = sub_1A3DF19A4(&qword_1EB129158, MEMORY[0x1E69C2160], MEMORY[0x1E69C2158]);
  *&v114[0] = v19;
  *(&v114[0] + 1) = v20;
  *&v114[1] = v23;
  *(&v114[1] + 1) = v24;
  swift_getOpaqueTypeMetadata2();
  v130[2] = sub_1A524DF24();
  sub_1A3E055C8(255, &qword_1EB12CA40, sub_1A3DF1B60, MEMORY[0x1E697E5E0], v5);
  v130[3] = v25;
  swift_getTupleTypeMetadata();
  v26 = sub_1A524BE24();
  v27 = swift_getWitnessTable();
  v84 = v26;
  v82 = v27;
  v28 = sub_1A524B894();
  v83 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v76 = v75 - v29;
  v30 = sub_1A5248804();
  v92 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v75 - v31;
  sub_1A3DF1F90(255);
  v33 = sub_1A5248804();
  v90 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v81 = v75 - v34;
  sub_1A3E09208(255, &unk_1EB12CAC8, &type metadata for SharedAlbumsAssetViewNavigationEnvironment, MEMORY[0x1E6980A08]);
  v35 = sub_1A5248804();
  v93 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v91 = v75 - v36;
  sub_1A3E09AF8(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
  v37 = sub_1A5248804();
  v97 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v96 = v75 - v38;
  v121 = swift_getWitnessTable();
  v122 = v22;
  v39 = swift_getWitnessTable();
  v40 = sub_1A3DF19A4(&qword_1EB12CAD8, sub_1A3DF1F90, MEMORY[0x1E697F940]);
  v79 = v39;
  v119 = v39;
  v120 = v40;
  v86 = v33;
  v41 = swift_getWitnessTable();
  v42 = sub_1A3DF2108();
  v78 = v41;
  v117 = v41;
  v118 = v42;
  v95 = v35;
  v43 = swift_getWitnessTable();
  v44 = sub_1A3DF2184();
  v80 = v43;
  v115 = v43;
  v116 = v44;
  v45 = swift_getWitnessTable();
  v98 = v37;
  v130[0] = v37;
  v85 = v45;
  v130[1] = v45;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v88 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v87 = v75 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v89 = v75 - v48;
  v49 = v100;
  v50 = *(v100 + *(v107 + 36));
  if (v50)
  {
    v77 = *(*(v50 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
    v51 = v77;
  }

  else
  {
    v77 = 0;
  }

  v52 = v101;
  v75[1] = sub_1A524BAE4();
  sub_1A524BAA4();
  *&v108 = v130[0];
  (*(v99 + 104))(v114, v52);
  swift_unknownObjectRelease();
  memcpy(v130, v114, 0x108uLL);
  v114[6] = *&v130[27];
  v114[7] = *&v130[29];
  v114[8] = *&v130[31];
  v114[2] = *&v130[19];
  v114[3] = *&v130[21];
  v114[4] = *&v130[23];
  v114[5] = *&v130[25];
  v114[0] = *&v130[15];
  v114[1] = *&v130[17];
  v53 = sub_1A5249584();
  MEMORY[0x1EEE9AC00](v53);
  v54 = v102;
  v75[-6] = v52;
  v75[-5] = v54;
  v75[-4] = v114;
  v75[-3] = v49;
  v75[-2] = v130;
  v55 = v76;
  sub_1A524B884();
  sub_1A524B0B4();
  v56 = (*(v83 + 8))(v55, v28);
  MEMORY[0x1EEE9AC00](v56);
  v75[-4] = v52;
  v75[-3] = v54;
  v75[-2] = v49;
  sub_1A524BC74();
  sub_1A3E09208(0, &qword_1EB12CAB0, MEMORY[0x1E697E3F0], MEMORY[0x1E69E6720]);
  sub_1A3DF2018();
  v57 = v81;
  sub_1A524A8C4();
  (*(v92 + 8))(v32, v30);
  swift_getKeyPath();
  v58 = v107;
  v59 = v91;
  v60 = v86;
  sub_1A524A964();

  (*(v90 + 8))(v57, v60);
  swift_getKeyPath();
  sub_1A3E09AF8(0, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
  v61 = v103;
  sub_1A5247C84();
  v63 = v95;
  v62 = v96;
  sub_1A524A964();

  (*(v104 + 8))(v61, v105);
  (*(v93 + 8))(v59, v63);
  if (!v77)
  {
    v64 = 0;
    v111 = 0;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    goto LABEL_8;
  }

  v64 = v77;
  sub_1A524BAA4();
  sub_1A3DF7704(v64, v112, v58, &v108);

  swift_unknownObjectRelease();
  if (!v108)
  {
LABEL_8:
    sub_1A3C2C408(&v108, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_9;
  }

  *(&v113 + 1) = &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer;
  v65 = swift_allocObject();
  *&v112 = v65;
  v66 = v109;
  *(v65 + 16) = v108;
  *(v65 + 32) = v66;
  *(v65 + 48) = v110;
  *(v65 + 64) = v111;
LABEL_9:
  v67 = v87;
  v68 = v98;
  sub_1A524A534();
  sub_1A3DF76B0(v130);

  (*(v97 + 8))(v62, v68);
  sub_1A3C2C408(&v112, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8);
  v70 = v88;
  v69 = v89;
  v71 = *(v88 + 16);
  v72 = OpaqueTypeMetadata2;
  v71(v89, v67, OpaqueTypeMetadata2);
  v73 = *(v70 + 8);
  v73(v67, v72);
  v71(v106, v69, v72);
  return (v73)(v69, v72);
}

void sub_1A3DF11FC(uint64_t a1)
{
  if (!qword_1EB12C990)
  {
    sub_1A3E09AF8(255, &qword_1EB12C998, sub_1A3DF1290, MEMORY[0x1E6981F40]);
    sub_1A3DF1AA8();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C990);
    }
  }
}

void sub_1A3DF1290(uint64_t a1)
{
  if (!qword_1EB12C9A0)
  {
    type metadata accessor for LemonadeSharedAlbumsAvatarView(255);
    sub_1A3DF1308(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB12C9A0);
    }
  }
}

void sub_1A3DF1308(uint64_t a1)
{
  if (!qword_1EB12C9A8)
  {
    sub_1A3E09AF8(255, &qword_1EB12C9B0, sub_1A3DF139C, MEMORY[0x1E6981F40]);
    sub_1A3DF1A20();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C9A8);
    }
  }
}

void sub_1A3DF139C(uint64_t a1)
{
  if (!qword_1EB12C9B8)
  {
    sub_1A3DF1428(255);
    sub_1A3DF15C8(255, &qword_1EB12C9D8, MEMORY[0x1E697F960]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12C9B8);
    }
  }
}

void sub_1A3DF1428(uint64_t a1)
{
  if (!qword_1EB12C9C0)
  {
    sub_1A3DF14C0(255);
    sub_1A3E09AF8(255, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C9C0);
    }
  }
}

void sub_1A3DF14C0(uint64_t a1)
{
  if (!qword_1EB1286C0)
  {
    sub_1A3DF154C(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1286C0);
    }
  }
}

void sub_1A3DF154C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3E09208(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3DF15C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3E04B34(255, &qword_1EB12C9E0, sub_1A3DF1668, sub_1A3DF19EC);
    v7 = v6;
    sub_1A3DF16B0(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3DF16B0(uint64_t a1)
{
  if (!qword_1EB12C9F0)
  {
    sub_1A3E09AF8(255, &qword_1EB12C9F8, sub_1A3DF1744, MEMORY[0x1E6981F40]);
    sub_1A3DF18E8();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C9F0);
    }
  }
}

void sub_1A3DF1778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A3DF17F4(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB12CA08)
  {
    sub_1A3DF1888(255, a2);
    sub_1A3DF154C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB12CA08);
    }
  }
}

void sub_1A3DF1888(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB124E50)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB124E50);
    }
  }
}

unint64_t sub_1A3DF18E8()
{
  result = qword_1EB12CA18;
  if (!qword_1EB12CA18)
  {
    sub_1A3E09AF8(255, &qword_1EB12C9F8, sub_1A3DF1744, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CA18);
  }

  return result;
}

uint64_t sub_1A3DF19A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A3DF1A20()
{
  result = qword_1EB12CA30;
  if (!qword_1EB12CA30)
  {
    sub_1A3E09AF8(255, &qword_1EB12C9B0, sub_1A3DF139C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CA30);
  }

  return result;
}

unint64_t sub_1A3DF1AA8()
{
  result = qword_1EB12CA38;
  if (!qword_1EB12CA38)
  {
    sub_1A3E09AF8(255, &qword_1EB12C998, sub_1A3DF1290, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CA38);
  }

  return result;
}

void sub_1A3DF1B60(uint64_t a1)
{
  if (!qword_1EB12CA48)
  {
    sub_1A3E09AF8(255, &qword_1EB12CA50, sub_1A3DF1BF4, MEMORY[0x1E6981F40]);
    sub_1A3DF1F08();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12CA48);
    }
  }
}

void sub_1A3DF1BF4(uint64_t a1)
{
  if (!qword_1EB12CA58)
  {
    sub_1A3DF1C9C(255);
    sub_1A3E09AF8(255, &qword_1EB12CA88, sub_1A3DF1E58, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB12CA58);
    }
  }
}

void sub_1A3DF1C9C(uint64_t a1)
{
  if (!qword_1EB12CA60)
  {
    sub_1A3E09AF8(255, &qword_1EB12CA68, sub_1A3DF1D30, MEMORY[0x1E6981F40]);
    sub_1A3DF1DD0();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12CA60);
    }
  }
}

void sub_1A3DF1D30(uint64_t a1)
{
  if (!qword_1EB12CA70)
  {
    sub_1A3E09AF8(255, &qword_1EB12CA78, sub_1A3DF1428, MEMORY[0x1E69E6720]);
    sub_1A3DF1428(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12CA70);
    }
  }
}

unint64_t sub_1A3DF1DD0()
{
  result = qword_1EB12CA80;
  if (!qword_1EB12CA80)
  {
    sub_1A3E09AF8(255, &qword_1EB12CA68, sub_1A3DF1D30, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CA80);
  }

  return result;
}

void sub_1A3DF1E8C(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB12CA98)
  {
    sub_1A3DF1888(255, a2);
    swift_getOpaqueTypeConformance2();
    v2 = sub_1A524B764();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB12CA98);
    }
  }
}

unint64_t sub_1A3DF1F08()
{
  result = qword_1EB12CAA0;
  if (!qword_1EB12CAA0)
  {
    sub_1A3E09AF8(255, &qword_1EB12CA50, sub_1A3DF1BF4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CAA0);
  }

  return result;
}

void sub_1A3DF1F90(uint64_t a1)
{
  if (!qword_1EB12CAA8)
  {
    sub_1A3E09208(255, &qword_1EB12CAB0, MEMORY[0x1E697E3F0], MEMORY[0x1E69E6720]);
    sub_1A3DF2018();
    v1 = sub_1A5249724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12CAA8);
    }
  }
}

unint64_t sub_1A3DF2018()
{
  result = qword_1EB12CAB8;
  if (!qword_1EB12CAB8)
  {
    sub_1A3E09208(255, &qword_1EB12CAB0, MEMORY[0x1E697E3F0], MEMORY[0x1E69E6720]);
    sub_1A3DF20B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CAB8);
  }

  return result;
}

unint64_t sub_1A3DF20B4()
{
  result = qword_1EB1288F0;
  if (!qword_1EB1288F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1288F0);
  }

  return result;
}

unint64_t sub_1A3DF2108()
{
  result = qword_1EB12CAE0;
  if (!qword_1EB12CAE0)
  {
    sub_1A3E09208(255, &unk_1EB12CAC8, &type metadata for SharedAlbumsAssetViewNavigationEnvironment, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CAE0);
  }

  return result;
}

unint64_t sub_1A3DF2184()
{
  result = qword_1EB1279F8;
  if (!qword_1EB1279F8)
  {
    sub_1A3E09AF8(255, &qword_1EB1279F0, MEMORY[0x1E69C24E0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1279F8);
  }

  return result;
}

uint64_t sub_1A3DF220C@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v164 = a3;
  v170 = a2;
  v168 = a6;
  v180 = MEMORY[0x1E697E830];
  sub_1A3E055C8(0, &qword_1EB12CA40, sub_1A3DF1B60, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v165 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v167 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v166 = (&v133 - v12);
  v13 = sub_1A5242C04();
  v153 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v152 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v15);
  v149 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1A5241F84();
  v148 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v147 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = a5;
  v157 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v18, v19);
  sub_1A5248804();
  type metadata accessor for SharedAlbumsAssetsCollageView(255, a4, a5, v20);
  v21 = sub_1A5249754();
  v22 = sub_1A524B514();
  v145 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v144 = &v133 - v23;
  WitnessTable = swift_getWitnessTable();
  v200 = MEMORY[0x1E697F568];
  v24 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v197 = v24;
  v198 = v25;
  v143 = v21;
  v135 = swift_getWitnessTable();
  v196 = v135;
  v26 = swift_getWitnessTable();
  v27 = sub_1A3DF19A4(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v192 = v22;
  v193 = v15;
  v194 = v26;
  v195 = v27;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v141 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v137 = &v133 - v29;
  v139 = v30;
  v31 = sub_1A5248804();
  v142 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v138 = &v133 - v32;
  v146 = v22;
  v192 = v22;
  v193 = v15;
  v33 = v169;
  v151 = v15;
  v140 = v26;
  v194 = v26;
  v195 = v27;
  v136 = v27;
  v34 = v170;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v191[4] = OpaqueTypeConformance2;
  v191[5] = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  v36 = sub_1A3DF19A4(&qword_1EB129158, MEMORY[0x1E69C2160], MEMORY[0x1E69C2158]);
  v174 = v31;
  v192 = v31;
  v193 = v13;
  v172 = v13;
  v173 = v35;
  v194 = v35;
  v195 = v36;
  v171 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v156 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v133 - v41;
  v155 = v43;
  v162 = sub_1A524DF24();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v181 = &v133 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v179 = &v133 - v46;
  sub_1A3E055C8(0, &qword_1EB12C988, sub_1A3DF11FC, MEMORY[0x1E697E5E0], v180);
  v48 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v180 = (&v133 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v133 - v51;
  v178 = sub_1A524B9A4();
  v160 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v177 = &v133 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v175 = &v133 - v55;
  sub_1A524B994();
  v56 = sub_1A5249314();
  v57 = *(a1 + 4);
  *v52 = v56;
  *(v52 + 1) = v57;
  v154 = v57;
  v52[16] = 0;
  sub_1A3E09258(0);
  sub_1A3DF3474(v34, a1, a4, v33, &v52[*(v58 + 44)]);
  v163 = a1;
  sub_1A5247BD4();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = sub_1A524A064();
  v159 = v48;
  v68 = *(v48 + 36);
  v176 = v52;
  v69 = &v52[v68];
  *v69 = v67;
  *(v69 + 1) = v60;
  *(v69 + 2) = v62;
  *(v69 + 3) = v64;
  *(v69 + 4) = v66;
  v69[40] = 0;
  sub_1A524BAE4();
  sub_1A524BAA4();
  v70 = a4;
  v71 = (*(v157 + 40))(a4);
  swift_unknownObjectRelease();
  v72 = sub_1A524CAF4();
  if (v72 < 1)
  {
    v100 = v34;
    v99 = v33;
    v96 = v70;
    v102 = v156;
    v103 = v155;
    v101 = 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v72);
    v133 = a4;
    *(&v133 - 4) = a4;
    *(&v133 - 3) = v33;
    *(&v133 - 2) = v71;
    *(&v133 - 1) = v34;
    v73 = v144;
    sub_1A524B504();
    sub_1A524B404();
    sub_1A524B474();

    v74 = v147;
    sub_1A5241F64();
    v75 = v139;
    AssociatedTypeWitness = v42;
    v76 = *(v151 + 20);
    v77 = *MEMORY[0x1E697F468];
    v78 = sub_1A52494A4();
    v79 = v149;
    (*(*(v78 - 8) + 104))(&v149[v76], v77, v78);
    __asm { FMOV            V0.2D, #24.0 }

    *v79 = _Q0;
    v85 = v137;
    v86 = v146;
    sub_1A524A4E4();
    sub_1A3E09958(v79, MEMORY[0x1E697EAF0]);
    (*(v148 + 8))(v74, v150);
    (*(v145 + 8))(v73, v86);
    v87 = v138;
    sub_1A524B0C4();
    (*(v141 + 8))(v85, v75);
    v88 = v152;
    sub_1A5247DE4();
    v89 = v174;
    v90 = v172;
    sub_1A524A944();
    (*(v153 + 8))(v88, v90);
    (*(v142 + 8))(v87, v89);
    v157 = v71;
    v91 = v156;
    v92 = *(v156 + 16);
    v93 = AssociatedTypeWitness;
    v94 = v155;
    v92(AssociatedTypeWitness, v39, v155);
    v95 = v169;
    v96 = v133;
    v97 = *(v91 + 8);
    v97(v39, v94);
    v92(v39, v93, v94);
    v98 = v93;
    v99 = v95;
    v100 = v170;
    v97(v98, v94);
    (*(v91 + 32))(v181, v39, v94);
    v101 = 0;
    v102 = v91;
    v71 = v157;
    v103 = v94;
  }

  v104 = v181;
  (*(v102 + 56))(v181, v101, 1, v103);
  v105 = v161;
  AssociatedTypeWitness = *(v161 + 16);
  v106 = v179;
  v107 = v162;
  (AssociatedTypeWitness)(v179, v104, v162);
  v161 = *(v105 + 8);
  (v161)(v104, v107);
  v108 = sub_1A52492E4();
  v109 = v166;
  v110 = v154;
  *v166 = v108;
  *(v109 + 8) = v110;
  *(v109 + 16) = 0;
  sub_1A3E092F0(0);
  sub_1A3DF5340(v163, v100, v164, v71, v96, v99, v109 + *(v111 + 44));

  sub_1A5247BD4();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = sub_1A524A064();
  v121 = v165;
  v122 = v109 + *(v165 + 36);
  *v122 = v120;
  *(v122 + 8) = v113;
  *(v122 + 16) = v115;
  *(v122 + 24) = v117;
  *(v122 + 32) = v119;
  *(v122 + 40) = 0;
  v123 = v160;
  v124 = v177;
  v125 = v178;
  (*(v160 + 16))(v177, v175, v178);
  v192 = v124;
  v126 = v180;
  sub_1A3E09388(v176, v180, &qword_1EB12C988, sub_1A3DF11FC);
  v193 = v126;
  v127 = v181;
  (AssociatedTypeWitness)(v181, v106, v107);
  v194 = v127;
  v128 = v167;
  sub_1A3E09388(v109, v167, &qword_1EB12CA40, sub_1A3DF1B60);
  v195 = v128;
  v191[0] = v125;
  v191[1] = v159;
  v191[2] = v107;
  v191[3] = v121;
  v187 = sub_1A3DF19A4(&qword_1EB1214B8, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
  v188 = sub_1A3E09414(&qword_1EB12CE10, &qword_1EB12C988, sub_1A3DF11FC, sub_1A3E094B0);
  v183 = v174;
  v184 = v172;
  v185 = v173;
  v186 = v171;
  v182 = swift_getOpaqueTypeConformance2();
  v189 = swift_getWitnessTable();
  v190 = sub_1A3E09414(&qword_1EB12CE20, &qword_1EB12CA40, sub_1A3DF1B60, sub_1A3E094E4);
  sub_1A3DF4988(&v192, 4uLL, v191);
  sub_1A3E09518(v109, &qword_1EB12CA40, sub_1A3DF1B60);
  v129 = v161;
  (v161)(v179, v107);
  sub_1A3E09518(v176, &qword_1EB12C988, sub_1A3DF11FC);
  v130 = *(v123 + 8);
  v131 = v178;
  v130(v175, v178);
  sub_1A3E09518(v128, &qword_1EB12CA40, sub_1A3DF1B60);
  v129(v181, v107);
  sub_1A3E09518(v180, &qword_1EB12C988, sub_1A3DF11FC);
  return (v130)(v177, v131);
}

uint64_t sub_1A3DF3474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v36 = a5;
  sub_1A3DF1308(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  sub_1A524BAE4();
  sub_1A524BAA4();
  v39[33] = v40[0];
  v18 = *(a4 + 16);
  (*(v18 + 104))(v39, a3, v18);
  swift_unknownObjectRelease();
  memcpy(v40, v39, 0x108uLL);
  sub_1A3DF76B0(v40);
  v19 = *v40;
  sub_1A524BAA4();
  v38 = *&v37[0];
  v20 = (*(v18 + 80))(a3, v18);
  swift_unknownObjectRelease();
  sub_1A493BE2C(v37);
  sub_1A493BE50(v20, v37, v17, v19);
  v21 = sub_1A5249584();
  v22 = v34;
  v23 = *(v34 + 40);
  *v12 = v21;
  *(v12 + 1) = v23;
  v12[16] = 0;
  sub_1A3E097F0(0);
  sub_1A3DF37A0(a1, v22, a3, a4, &v12[*(v24 + 44)]);
  v25 = v33;
  sub_1A3E09888(v17, v33, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  v26 = v35;
  sub_1A3E098F0(v12, v35, sub_1A3DF1308);
  v27 = v36;
  sub_1A3E09888(v25, v36, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  sub_1A3DF1290(0);
  v29 = v28;
  sub_1A3E098F0(v26, v27 + *(v28 + 48), sub_1A3DF1308);
  v30 = v27 + *(v29 + 64);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_1A3E08CD8(v12, sub_1A3DF1308);
  sub_1A3E09958(v17, type metadata accessor for LemonadeSharedAlbumsAvatarView);
  sub_1A3E08CD8(v26, sub_1A3DF1308);
  return sub_1A3E09958(v25, type metadata accessor for LemonadeSharedAlbumsAvatarView);
}

uint64_t sub_1A3DF37A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v129 = a5;
  v130 = a2;
  v118 = a1;
  v7 = sub_1A5241FC4();
  v115 = *(v7 - 8);
  v116 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1A3E09AF8(0, &unk_1EB129020, MEMORY[0x1E69C27E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v113 = &v102 - v11;
  sub_1A3E09AF8(0, &unk_1EB129030, MEMORY[0x1E69C27A0], v9);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v112 = &v102 - v13;
  v119 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell(0, a3, a4, v14);
  v106 = *(v119 - 8);
  v104 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v105 = &v102 - v15;
  sub_1A3DF1668(0);
  v126 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v109 = (&v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3E04B34(0, &qword_1EB12C9E0, sub_1A3DF1668, sub_1A3DF19EC);
  v128 = v18;
  v111 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v102 - v19;
  sub_1A3DF15C8(0, &unk_1EB12CE48, MEMORY[0x1E697F948]);
  v122 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v124 = &v102 - v21;
  sub_1A3DF16B0(0);
  v123 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DF15C8(0, &qword_1EB12C9D8, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v127 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v125 = &v102 - v27;
  v117 = MEMORY[0x1E6980E30];
  sub_1A3E09AF8(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], v9);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v102 - v29;
  v31 = sub_1A524A274();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v35 - 8);
  sub_1A3DF1428(0);
  v120 = (v36 - 8);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v121 = &v102 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v102 - v39;
  v102 = sub_1A524BAE4();
  sub_1A524BAA4();
  v108 = a4;
  v41 = *(*(a4 + 16) + 48);
  v107 = a3;
  v41(a3);
  swift_unknownObjectRelease();
  v42 = sub_1A524A454();
  v44 = v43;
  v46 = v45;
  (*(v32 + 104))(v34, *MEMORY[0x1E6980EF0], v31);
  v47 = sub_1A524A154();
  (*(*(v47 - 8) + 56))(v30, 1, 1, v47);
  sub_1A524A194();
  sub_1A524A1C4();
  sub_1A3E005C0(v30, &unk_1EB1276B0, v117);
  (*(v32 + 8))(v34, v31);
  v48 = sub_1A524A3C4();
  v50 = v49;
  LOBYTE(v34) = v51;

  sub_1A3E04DF4(v42, v44, v46 & 1);

  v131 = sub_1A524B4A4();
  v52 = sub_1A524A374();
  v54 = v53;
  v56 = v55;
  v117 = v57;
  sub_1A3E04DF4(v48, v50, v34 & 1);

  v58 = *(v130 + 48);
  LOBYTE(v48) = *(v130 + 56);
  KeyPath = swift_getKeyPath();
  v60 = &v40[*(v120 + 11)];
  sub_1A3E09AF8(0, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
  v62 = *(v61 + 28);
  v63 = *MEMORY[0x1E6980FA8];
  v64 = sub_1A524A354();
  (*(*(v64 - 8) + 104))(v60 + v62, v63, v64);
  v65 = swift_getKeyPath();
  *v60 = v65;
  *v40 = v52;
  *(v40 + 1) = v54;
  v40[16] = v56 & 1;
  v66 = v118;
  *(v40 + 3) = v117;
  *(v40 + 4) = KeyPath;
  *(v40 + 5) = v58;
  v120 = v40;
  v40[48] = v48;
  v67 = v119;
  v68 = *(v66 + *(v119 + 36));
  if (v68)
  {
    v117 = &v102;
    v69 = MEMORY[0x1EEE9AC00](v65);
    v70 = v107;
    v71 = v108;
    *(&v102 - 4) = v107;
    *(&v102 - 3) = v71;
    v100 = v72;
    v101 = v130;
    v73 = v106;
    v74 = v105;
    (*(v106 + 16))(v105, v69);
    v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v76 = (v104 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    *(v77 + 16) = v70;
    *(v77 + 24) = v71;
    (*(v73 + 32))(v77 + v75, v74, v67);
    *(v77 + v76) = v68;
    v78 = sub_1A3DF1970();
    v130 = v78;
    v79 = swift_retain_n();
    v100 = v78;
    v80 = v109;
    sub_1A472916C(v79, sub_1A3E099B8, 0, 0, sub_1A3E09A40, v77, v123, v109, v100);
    v81 = sub_1A5243A44();
    v82 = v112;
    (*(*(v81 - 8) + 56))(v112, 1, 1, v81);
    v83 = sub_1A5243B34();
    v84 = v113;
    (*(*(v83 - 8) + 56))(v113, 1, 1, v83);
    v85 = sub_1A3DF19EC();
    v86 = v114;
    sub_1A5241FB4();
    v87 = v110;
    v88 = v126;
    sub_1A524A6A4();
    (*(v115 + 8))(v86, v116);
    sub_1A3E005C0(v84, &unk_1EB129020, MEMORY[0x1E69C27E0]);
    sub_1A3E005C0(v82, &unk_1EB129030, MEMORY[0x1E69C27A0]);
    sub_1A3E08CD8(v80, sub_1A3DF1668);
    v89 = v111;
    v90 = v128;
    (*(v111 + 16))(v124, v87, v128);
    swift_storeEnumTagMultiPayload();
    v131 = v88;
    v132 = v85;
    swift_getOpaqueTypeConformance2();
    v91 = v125;
    sub_1A5249744();

    (*(v89 + 8))(v87, v90);
  }

  else
  {
    sub_1A524BAA4();
    v92 = v103;
    sub_1A3DF4534(v131, v130, v67, v103);
    swift_unknownObjectRelease();
    sub_1A3E098F0(v92, v124, sub_1A3DF16B0);
    swift_storeEnumTagMultiPayload();
    v93 = sub_1A3DF19EC();
    v131 = v126;
    v132 = v93;
    swift_getOpaqueTypeConformance2();
    sub_1A3DF1970();
    v91 = v125;
    sub_1A5249744();
    sub_1A3E08CD8(v92, sub_1A3DF16B0);
  }

  v95 = v120;
  v94 = v121;
  sub_1A3E09888(v120, v121, sub_1A3DF1428);
  v96 = v127;
  sub_1A3CC2834(v91, v127);
  v97 = v129;
  sub_1A3E09888(v94, v129, sub_1A3DF1428);
  sub_1A3DF139C(0);
  sub_1A3CC2834(v96, v97 + *(v98 + 48));
  sub_1A3CC28B4(v91);
  sub_1A3E09958(v95, sub_1A3DF1428);
  sub_1A3CC28B4(v96);
  return sub_1A3E09958(v94, sub_1A3DF1428);
}

uint64_t sub_1A3DF4534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_1A5249314();
  *(a4 + 8) = 0x4010000000000000;
  *(a4 + 16) = 0;
  sub_1A3E09B5C(0);
  return sub_1A3DF78D4(a1, a2, *(a3 + 16), *(a3 + 24), a4 + *(v8 + 44));
}

uint64_t sub_1A3DF4598@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1A3E09AF8(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1A524BAE4();
  sub_1A524BAA4();
  (*(*(a3 + 16) + 128))(a1, a2);
  swift_unknownObjectRelease();
  v11 = type metadata accessor for LemonadeNavigationDestination(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v11) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v13(v10, 1, v11) != 1)
    {
      sub_1A3E005C0(v10, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination);
    }
  }

  else
  {
    sub_1A3E07240(v10, a4, type metadata accessor for LemonadeNavigationDestination);
  }

  return (*(v12 + 56))(a4, 0, 1, v11);
}

uint64_t sub_1A3DF4798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1A5249734();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1A5249744();
}

uint64_t sub_1A3DF4890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1A5249734();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1A5249744();
}

uint64_t sub_1A3DF4988(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1A524BE34();
}

uint64_t sub_1A3DF4B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a2;
  v57 = a5;
  v8 = type metadata accessor for SharedAlbumsAssetsCollageView(0, a3, a4, a4);
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v47 - v12;
  v48 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v14, v15);
  v52 = sub_1A5248804();
  v16 = sub_1A5249754();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v47 - v17;
  if (PXPreferencesIsVideoAutoplayEnabled())
  {
    v18 = a1;
    sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
    v19 = [swift_getObjCClassFromMetadata() sharedInstance];
    v20 = [v19 activityEntryFeedAutoplaysVideosInline];

    if (v20)
    {
      v21 = [objc_opt_self() px_accessibilityIsReduceMotionEnabled] ^ 1;
    }

    else
    {
      v21 = 0;
    }

    a1 = v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_1A524CAF4();
  v23 = MEMORY[0x1E697F568];
  if (v22 == 1 && (v61[0] = a1, sub_1A524CB74(), swift_getWitnessTable(), sub_1A524D074(), (v24 = v60[0]) != 0))
  {
    if ([v60[0] respondsToSelector_])
    {
      [v24 aspectRatio];
    }

    sub_1A524BAE4();
    swift_unknownObjectRetain();
    sub_1A524BAA4();
    v60[3] = a3;
    v60[4] = v48;
    sub_1A3DF5274(v24, v21, v60, v61);
    v25 = v53;
    WitnessTable = swift_getWitnessTable();
    sub_1A524A924();
    (*(*(v25 - 8) + 8))(v61, v25);
    v58 = WitnessTable;
    v59 = MEMORY[0x1E697F568];
    v27 = v52;
    v28 = swift_getWitnessTable();
    v29 = *(v27 - 8);
    v30 = *(v29 + 16);
    v30(v61, v60, v27);
    v31 = *(v29 + 8);
    v31(v60, v27);
    v30(v60, v61, v27);
    v32 = swift_getWitnessTable();
    v33 = v54;
    sub_1A3DF4798(v60, v27, v8, v28, v32);
    swift_unknownObjectRelease();
    v31(v60, v27);
    v31(v61, v27);
    v23 = MEMORY[0x1E697F568];
  }

  else
  {
    sub_1A524BAE4();
    sub_1A524BAA4();
    KeyPath = swift_getKeyPath();
    LOBYTE(v61[0]) = 0;
    sub_1A524BAC4();
    v10[*(v8 + 36)] = v21;
    v35 = &v10[*(v8 + 40)];
    *v35 = KeyPath;
    v35[48] = v61[0];
    v51 = swift_getWitnessTable();
    v37 = v49;
    v36 = v50;
    v38 = *(v50 + 16);
    v38(v49, v10, v8);
    v39 = *(v36 + 8);
    v39(v10, v8);
    v38(v10, v37, v8);
    v61[29] = swift_getWitnessTable();
    v61[30] = v23;
    v40 = v52;
    v41 = swift_getWitnessTable();
    v33 = v54;
    sub_1A3DF4890(v10, v40, v8, v41, v51);
    v39(v10, v8);
    v39(v37, v8);
  }

  v61[27] = swift_getWitnessTable();
  v61[28] = v23;
  v42 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v61[25] = v42;
  v61[26] = v43;
  v44 = v56;
  swift_getWitnessTable();
  v45 = v55;
  (*(v55 + 16))(v57, v33, v44);
  return (*(v45 + 8))(v33, v44);
}

__n128 sub_1A3DF5274@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 56) = sub_1A3DFFD50(0);
  *(a4 + 64) = v8;
  *(a4 + 72) = sub_1A3DFFD8C(0, 1);
  *(a4 + 80) = v9 & 1;
  *(a4 + 88) = v10;
  sub_1A524B694();
  *(a4 + 96) = v13;
  *(a4 + 104) = v14;
  *(a4 + 112) = swift_getKeyPath();
  *(a4 + 120) = 0;
  *(a4 + 128) = swift_getKeyPath();
  *(a4 + 176) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v12 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v12;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

uint64_t sub_1A3DF5340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v64 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell(0, a5, a6, a4);
  v60 = *(v64 - 1);
  v58 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v54[-v14];
  sub_1A3DF1E8C(0, v15);
  v66 = *(v16 - 8);
  v67 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DF1E58(0);
  v69 = *(v18 - 8);
  v70 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v54[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3E09AF8(0, &qword_1EB12CA88, sub_1A3DF1E58, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v68 = &v54[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v54[-v23];
  sub_1A3DF1C9C(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v54[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v54[-v29];
  v31 = sub_1A5249584();
  v32 = *(a1 + 40);
  *v30 = v31;
  *(v30 + 1) = v32;
  v30[16] = 0;
  sub_1A3E0959C(0);
  v34 = &v30[*(v33 + 44)];
  v59 = a2;
  sub_1A3DF59F8(a2, a1, a3, a5, a6, v34);
  swift_getAssociatedTypeWitness();
  if (sub_1A524CAF4() < 1)
  {
    v49 = 1;
  }

  else
  {
    v62 = a7;
    v57 = a4;
    sub_1A524E614();
    v35 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
    v36 = sub_1A524CA14();

    v37 = [v35 initWithArray_];

    v38 = [objc_opt_self() toggledValueForAssets_];
    sub_1A3C52C70(0, &qword_1EB12CE38, off_1E771E340);
    if ([swift_getObjCClassFromMetadata() canPerformOnAllAssets_])
    {
      v39 = [objc_allocWithZone(PXLikeSharedAlbumAssetsAction) initWithAssets:v37 like:v38];
      if (v39)
      {
        v55 = v38;
        v40 = v60;
        v41 = *(v60 + 16);
        v56 = v39;
        v41(v63, v59, v64);
        v42 = (*(v40 + 80) + 48) & ~*(v40 + 80);
        v43 = (v58 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
        v44 = swift_allocObject();
        *(v44 + 16) = a5;
        *(v44 + 24) = a6;
        v45 = v55;
        *(v44 + 32) = v55;
        *(v44 + 40) = v57;
        v46 = (*(v40 + 32))(v44 + v42, v63, v64);
        v64 = v54;
        *(v44 + v43) = v56;
        MEMORY[0x1EEE9AC00](v46);
        v54[-16] = v45;
        sub_1A3DF1888(0, v47);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v48 = v65;
    (*(v66 + 56))(v65, 1, 1, v67);
    sub_1A3E09634(v48, v24, sub_1A3DF1E58);
    v49 = 0;
    a7 = v62;
  }

  (*(v69 + 56))(v24, v49, 1, v70);
  sub_1A3E09888(v30, v27, sub_1A3DF1C9C);
  v50 = v68;
  sub_1A3CC2310(v24, v68);
  sub_1A3E09888(v27, a7, sub_1A3DF1C9C);
  sub_1A3DF1BF4(0);
  v52 = a7 + *(v51 + 48);
  *v52 = 0;
  *(v52 + 8) = 1;
  sub_1A3CC2310(v50, a7 + *(v51 + 64));
  sub_1A3CC23A4(v24);
  sub_1A3E09958(v30, sub_1A3DF1C9C);
  sub_1A3CC23A4(v50);
  return sub_1A3E09958(v27, sub_1A3DF1C9C);
}

uint64_t sub_1A3DF59F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v125 = a3;
  v119 = a2;
  v127 = a6;
  v9 = sub_1A524A204();
  v133 = *(v9 - 8);
  v134 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v132 = v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1A3E09AF8(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v130 = v112 - v13;
  v131 = sub_1A524A274();
  v129 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v128 = v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DF1428(0);
  v136 = v15;
  v121 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v126 = v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v112 - v18;
  sub_1A3E09AF8(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], v11);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v112 - v21;
  v23 = sub_1A52407E4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v112 - v28;
  sub_1A3E09AF8(0, &qword_1EB12CA78, sub_1A3DF1428, v11);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v124 = v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v135 = v112 - v33;
  v120 = sub_1A524BAE4();
  v122 = a1;
  sub_1A524BAA4();
  v34 = *(a5 + 16);
  v35 = *(v34 + 72);
  v123 = a4;
  v35(a4, v34);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1A3E005C0(v22, &qword_1EB12B0D0, MEMORY[0x1E6968848]);
    swift_unknownObjectRelease();
    v36 = 1;
    v37 = v135;
  }

  else
  {
    v38 = *(v24 + 32);
    v118 = v29;
    v38(v29, v22, v23);
    swift_unknownObjectRelease();
    (*(v24 + 16))(v26, v29, v23);
    v117 = sub_1A524A454();
    v116 = v39;
    v41 = v40;
    v115 = v42;
    v44 = v128;
    v43 = v129;
    v45 = v131;
    (*(v129 + 104))(v128, *MEMORY[0x1E6980EF0], v131);
    v46 = sub_1A524A154();
    v47 = v130;
    (*(*(v46 - 8) + 56))(v130, 1, 1, v46);
    sub_1A524A194();
    sub_1A524A1C4();
    sub_1A3E005C0(v47, &unk_1EB1276B0, MEMORY[0x1E6980E30]);
    (*(v43 + 8))(v44, v45);
    v49 = v132;
    v48 = v133;
    v50 = v134;
    (*(v133 + 104))(v132, *MEMORY[0x1E6980EA8], v134);
    sub_1A524A234();

    (*(v48 + 8))(v49, v50);
    LOBYTE(v48) = v41;
    v51 = v117;
    v52 = v24;
    v53 = v116;
    v114 = v23;
    v54 = sub_1A524A3C4();
    v113 = v55;
    LOBYTE(v49) = v56;
    v112[1] = v57;

    sub_1A3E04DF4(v51, v53, v48 & 1);

    v137 = sub_1A524B4A4();
    v58 = v113;
    v117 = sub_1A524A374();
    v116 = v59;
    LOBYTE(v51) = v60;
    v62 = v61;
    sub_1A3E04DF4(v54, v58, v49 & 1);

    (*(v52 + 8))(v118, v114);
    v63 = *(v119 + 80);
    LOBYTE(v54) = *(v119 + 88);
    KeyPath = swift_getKeyPath();
    v65 = &v19[*(v136 + 36)];
    sub_1A3E09AF8(0, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
    v67 = *(v66 + 28);
    v68 = *MEMORY[0x1E6980FA8];
    v69 = sub_1A524A354();
    (*(*(v69 - 8) + 104))(v65 + v67, v68, v69);
    *v65 = swift_getKeyPath();
    v70 = v116;
    *v19 = v117;
    *(v19 + 1) = v70;
    v19[16] = v51 & 1;
    *(v19 + 3) = v62;
    *(v19 + 4) = KeyPath;
    *(v19 + 5) = v63;
    v19[48] = v54;
    v71 = v135;
    sub_1A3E07240(v19, v135, sub_1A3DF1428);
    v36 = 0;
    v37 = v71;
  }

  (*(v121 + 56))(v37, v36, 1, v136);
  sub_1A524BAA4();
  v139 = v137;
  v72 = (*(v34 + 56))(v123, v34);
  v74 = v73;
  swift_unknownObjectRelease();
  v137 = v72;
  v138 = v74;
  sub_1A3D5F9DC();
  v75 = sub_1A524A464();
  v77 = v76;
  v79 = v78;
  v80 = v128;
  v81 = v129;
  v82 = v131;
  (*(v129 + 104))(v128, *MEMORY[0x1E6980F30], v131);
  v83 = sub_1A524A154();
  v84 = v130;
  (*(*(v83 - 8) + 56))(v130, 1, 1, v83);
  sub_1A524A194();
  sub_1A524A1C4();
  sub_1A3E005C0(v84, &unk_1EB1276B0, MEMORY[0x1E6980E30]);
  (*(v81 + 8))(v80, v82);
  v86 = v132;
  v85 = v133;
  v87 = v134;
  (*(v133 + 104))(v132, *MEMORY[0x1E6980EA8], v134);
  sub_1A524A234();

  (*(v85 + 8))(v86, v87);
  v88 = sub_1A524A3C4();
  v90 = v89;
  LOBYTE(v86) = v91;

  sub_1A3E04DF4(v75, v77, v79 & 1);

  v137 = sub_1A524B4A4();
  v92 = sub_1A524A374();
  v94 = v93;
  v96 = v95;
  v134 = v97;
  sub_1A3E04DF4(v88, v90, v86 & 1);

  v98 = *(v125 + 16);
  LOBYTE(v90) = *(v125 + 24);
  v99 = swift_getKeyPath();
  v100 = &v19[*(v136 + 36)];
  sub_1A3E09AF8(0, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
  v102 = *(v101 + 28);
  v103 = *MEMORY[0x1E6980FA8];
  v104 = sub_1A524A354();
  (*(*(v104 - 8) + 104))(v100 + v102, v103, v104);
  *v100 = swift_getKeyPath();
  *v19 = v92;
  *(v19 + 1) = v94;
  v19[16] = v96 & 1;
  v105 = v135;
  *(v19 + 3) = v134;
  *(v19 + 4) = v99;
  *(v19 + 5) = v98;
  v19[48] = v90;
  v106 = MEMORY[0x1E69E6720];
  v107 = v124;
  sub_1A3E06D74(v105, v124, &qword_1EB12CA78, sub_1A3DF1428, MEMORY[0x1E69E6720], sub_1A3E09AF8);
  v108 = v126;
  sub_1A3E09888(v19, v126, sub_1A3DF1428);
  v109 = v127;
  sub_1A3E06D74(v107, v127, &qword_1EB12CA78, sub_1A3DF1428, v106, sub_1A3E09AF8);
  sub_1A3DF1D30(0);
  sub_1A3E09888(v108, v109 + *(v110 + 48), sub_1A3DF1428);
  sub_1A3E09958(v19, sub_1A3DF1428);
  sub_1A3E005C0(v105, &qword_1EB12CA78, sub_1A3DF1428);
  sub_1A3E09958(v108, sub_1A3DF1428);
  return sub_1A3E005C0(v107, &qword_1EB12CA78, sub_1A3DF1428);
}

void sub_1A3DF66E0(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v54 = a4;
  v56 = a1;
  v10 = sub_1A5249234();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v43 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a5;
  v13 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell(0, a5, a6, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v41 - v18;
  v20 = sub_1A5246F24();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A45318CC();
  v48 = v21;
  (*(v21 + 16))(v23, v24, v20);
  v25 = *(v14 + 16);
  v46 = v19;
  v49 = v25;
  v50 = v14 + 16;
  v25(v19, a3, v13);
  swift_bridgeObjectRetain_n();
  v47 = v23;
  v26 = sub_1A5246F04();
  v27 = sub_1A524D264();
  v28 = os_log_type_enabled(v26, v27);
  v52 = a6;
  v53 = a2;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v29 = 136315650;
    if (v56)
    {
      v30 = 1701538156;
    }

    else
    {
      v30 = 0x656B696C6E75;
    }

    v41[1] = v26;
    if (v56)
    {
      v31 = 0xE400000000000000;
    }

    else
    {
      v31 = 0xE600000000000000;
    }

    sub_1A3C2EF94(v30, v31, aBlock);
  }

  swift_bridgeObjectRelease_n();
  (*(v14 + 8))(v46, v13);
  (*(v48 + 8))(v47, v20);
  v32 = a3 + *(v13 + 56);
  v33 = *v32;
  if (*(v32 + 8) == 1)
  {
    v34 = v33;
  }

  else
  {

    v35 = sub_1A524D254();
    v36 = sub_1A524A014();
    sub_1A5246DF4(v35, &dword_1A3C1C000, v36, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v37 = v43;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v33, 0);
    (*(v44 + 8))(v37, v45);
  }

  v49(v16, a3, v13);
  v38 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v39 = swift_allocObject();
  v40 = v52;
  *(v39 + 16) = v55;
  *(v39 + 24) = v40;
  *(v39 + 32) = v56 & 1;
  *(v39 + 40) = v53;
  (*(v14 + 32))(v39 + v38, v16, v13);
  aBlock[4] = sub_1A3E0975C;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D6084C;
  aBlock[3] = &block_descriptor_135;
  _Block_copy(aBlock);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3DF6D84(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v9 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell(0, a5, a6, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - v11;
  v13 = sub_1A5246F24();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v20 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18[10] = a2;
    v16 = a1;
    v17 = sub_1A45318CC();
    (*(v14 + 16))(v20, v17, v13);
    (*(v10 + 16))(v12, a4, v9);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A3DF7210(char a1)
{
  v2 = sub_1A5242274();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5242264();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = 0x80000001A53B87F0;
  v12 = 0xD000000000000012;
  if (a1)
  {
    v12 = 0x7568742E646E6168;
    v11 = 0xED0000707573626DLL;
  }

  *v10 = v12;
  v10[1] = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69C1D38], v6, v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C1D48], v2);
  sub_1A5242B64();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v10, v6);
}

void *sub_1A3DF7418@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  result = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell(0, v4, v5, a1);
  if (*(v6 + *(result + 13)) == 1)
  {
    sub_1A3E09208(0, &qword_1EB1202A0, MEMORY[0x1E69815C0], MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52FC9F0;
    *(v8 + 32) = sub_1A524B3B4();
    *(v8 + 40) = sub_1A524B3C4();
    sub_1A524BE74();
    sub_1A524BE84();
    MEMORY[0x1A5906EC0](v8);
    result = sub_1A5248434();
    v9 = v12;
    v10 = v13;
    v11 = v14;
  }

  else
  {
    v9 = 0;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 24) = v11;
  return result;
}

void *EnvironmentValues.sharedAlbumsAssetViewNavigationEnvironment.getter()
{
  sub_1A3E00014();

  return sub_1A5249244();
}

uint64_t sub_1A3DF75AC(uint64_t a1)
{
  sub_1A3DF00A0(a1, v3);
  sub_1A3DF00A0(v3, &v2);
  sub_1A3E00014();
  sub_1A5249254();
  return sub_1A3E00068(v3);
}

uint64_t EnvironmentValues.sharedAlbumsAssetViewNavigationEnvironment.setter(uint64_t a1)
{
  sub_1A3DF00A0(a1, &v3);
  sub_1A3E00014();
  sub_1A5249254();
  return sub_1A3E00068(a1);
}

double sub_1A3DF7704@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A3E09AF8(0, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v14 = a2;
  v10 = (*(*(*(a3 + 24) + 16) + 120))(a1, *(a3 + 16), v9);
  if (v10)
  {
    v11 = [v10 localizedTitle];
    if (v11)
    {
      v12 = v11;
      sub_1A524C674();
    }

    sub_1A5245FB4();
  }

  *(a4 + 48) = 0;
  result = 0.0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

uint64_t sub_1A3DF78D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a2;
  v88 = a5;
  v87 = sub_1A5242274();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5242264();
  v81 = *(v9 - 8);
  v82 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v80 = (v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3DF17F4(0, v11);
  v84 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v79 = v72 - v15;
  v16 = sub_1A524A204();
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1E6980E30];
  sub_1A3E09AF8(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v72 - v20;
  v22 = sub_1A524A274();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DF1428(0);
  v76 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26 - 8);
  v77 = v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = v72 - v30;
  v91 = a1;
  v89 = (*(*(a4 + 16) + 88))(a3, v29);
  v90 = v32;
  sub_1A3D5F9DC();
  v33 = sub_1A524A464();
  v35 = v34;
  LOBYTE(a4) = v36;
  v72[1] = v37;
  (*(v23 + 104))(v25, *MEMORY[0x1E6980EF0], v22);
  v38 = sub_1A524A154();
  (*(*(v38 - 8) + 56))(v21, 1, 1, v38);
  sub_1A524A194();
  sub_1A524A1C4();
  sub_1A3E005C0(v21, &unk_1EB1276B0, v73);
  (*(v23 + 8))(v25, v22);
  v40 = v74;
  v39 = v75;
  (*(v74 + 104))(v18, *MEMORY[0x1E6980EA8], v75);
  sub_1A524A234();

  (*(v40 + 8))(v18, v39);
  v41 = sub_1A524A3C4();
  v43 = v42;
  LOBYTE(v21) = v44;

  sub_1A3E04DF4(v33, v35, a4 & 1);

  v89 = sub_1A524B374();
  v45 = sub_1A524A374();
  v47 = v46;
  LOBYTE(a4) = v48;
  v75 = v49;
  sub_1A3E04DF4(v41, v43, v21 & 1);

  v50 = *(v78 + 64);
  LOBYTE(v33) = *(v78 + 72);
  KeyPath = swift_getKeyPath();
  v52 = &v31[*(v76 + 44)];
  sub_1A3E09AF8(0, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
  v54 = *(v53 + 28);
  v55 = *MEMORY[0x1E6980FA8];
  v56 = sub_1A524A354();
  (*(*(v56 - 8) + 104))(v52 + v54, v55, v56);
  *v52 = swift_getKeyPath();
  *v31 = v45;
  *(v31 + 1) = v47;
  v31[16] = a4 & 1;
  *(v31 + 3) = v75;
  *(v31 + 4) = KeyPath;
  *(v31 + 5) = v50;
  v31[48] = v33;
  v58 = v80;
  v57 = v81;
  *v80 = 0x2E6E6F7276656863;
  v58[1] = 0xEF64726177726F66;
  v59 = v82;
  (*(v57 + 104))(v58, *MEMORY[0x1E69C1D38], v82);
  v60 = v85;
  v61 = v83;
  v62 = v87;
  (*(v85 + 104))(v83, *MEMORY[0x1E69C1D50], v87);
  v63 = v79;
  sub_1A5242B64();
  (*(v60 + 8))(v61, v62);
  (*(v57 + 8))(v58, v59);
  v64 = sub_1A524B4A4();
  v65 = swift_getKeyPath();
  v66 = (v63 + *(v84 + 44));
  *v66 = v65;
  v66[1] = v64;
  v67 = v77;
  sub_1A3E09888(v31, v77, sub_1A3DF1428);
  v68 = v86;
  sub_1A3E098F0(v63, v86, sub_1A3DF17F4);
  v69 = v88;
  sub_1A3E09888(v67, v88, sub_1A3DF1428);
  sub_1A3DF1744(0);
  sub_1A3E098F0(v68, v69 + *(v70 + 48), sub_1A3DF17F4);
  sub_1A3E08CD8(v63, sub_1A3DF17F4);
  sub_1A3E09958(v31, sub_1A3DF1428);
  sub_1A3E08CD8(v68, sub_1A3DF17F4);
  return sub_1A3E09958(v67, sub_1A3DF1428);
}

uint64_t sub_1A3DF8124@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1A3E06D74(v2 + *(a1 + 40), v14, &unk_1EB12CAE8, &type metadata for SharedAlbumsAssetViewNavigationEnvironment, MEMORY[0x1E697DCB8], sub_1A3E09208);
  if (v15 == 1)
  {
    v10 = v14[1];
    *a2 = v14[0];
    a2[1] = v10;
    a2[2] = v14[2];
  }

  else
  {
    v11 = sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4(v11, &dword_1A3C1C000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1A3DF82C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_1A524BAE4();
  sub_1A524BAA4();
  (*(*(*(a1 + 24) + 16) + 40))(v3, *(*(a1 + 24) + 16));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v5, v6);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A524B784();
  sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5249754();
  sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5248804();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  sub_1A3E000AC(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getWitnessTable();
  sub_1A5248414();
  sub_1A5249754();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B504();

  sub_1A524A064();
  v7 = sub_1A524B514();
  swift_getWitnessTable();
  v8 = MEMORY[0x1E697E610];
  v9 = MEMORY[0x1E697E608];
  sub_1A524A8D4();
  (*(*(v7 - 8) + 8))(v17, v7);
  sub_1A3E0479C(255, &qword_1EB12CB28, v8, v9, MEMORY[0x1E6980460]);
  v10 = sub_1A5248804();
  sub_1A3E004D4();
  swift_getWitnessTable();
  sub_1A524A924();
  (*(*(v10 - 8) + 8))(v18, v10);
  v11 = sub_1A5248804();
  swift_getWitnessTable();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(v18, v17, v11);
  v14 = *(v12 + 8);
  v14(v17, v11);
  v13(a2, v18, v11);
  return (v14)(v18, v11);
}

uint64_t sub_1A3DF8B40(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v232 = v6;
  v233 = v7;
  v8 = v1;
  v10 = v9;
  v11 = type metadata accessor for SharedAlbumsAssetsCollageView(0, v4, v2, v2);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v217 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1A524CAF4();
  if (v17 > 3)
  {
    if (v17 == 4)
    {
      sub_1A524CB94();
      v89 = v314;
      v229 = v314;
      sub_1A524CB94();
      v90 = v314;
      v228 = v314;
      sub_1A524CB94();
      v91 = v314;
      v227 = v314;
      v92 = sub_1A524CB94();
      v226 = v314;
      MEMORY[0x1EEE9AC00](v92);
      v217[-8] = v5;
      v217[-7] = v3;
      *&v217[-6] = v8;
      v93 = v232;
      v217[-5] = v89;
      v217[-4] = v93;
      v217[-3] = v90;
      v217[-2] = v91;
      v217[-1] = v94;
      sub_1A5249574();
      v97 = type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v95, v96);
      swift_getTupleTypeMetadata2();
      v231 = sub_1A524BE24();
      v98 = MEMORY[0x1E6981F48];
      WitnessTable = swift_getWitnessTable();
      v232 = sub_1A524B784();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B884();
      v99 = sub_1A524B894();
      v218 = MEMORY[0x1E6981870];
      v100 = swift_getWitnessTable();
      v220 = v100;
      v101 = *(v99 - 8);
      v102 = *(v101 + 16);
      v102(v286, &v314, v99);
      v103 = *(v101 + 8);
      v224 = (v101 + 8);
      v225 = v103;
      v103(&v314, v99);
      v102(&v285, v286, v99);
      swift_getTupleTypeMetadata3();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      v104 = sub_1A524B894();
      v219 = swift_getWitnessTable();
      v223 = v99;
      sub_1A3DF4798(&v285, v99, v104, v100, v219);
      sub_1A524B894();
      sub_1A5249754();
      v230 = v97;
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      v221 = v98;
      swift_getWitnessTable();
      sub_1A524B894();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      sub_1A5249754();
      v105 = sub_1A5249754();
      v106 = sub_1A5249754();
      v107 = swift_getWitnessTable();
      v108 = swift_getWitnessTable();
      v268 = v107;
      v269 = v108;
      v109 = swift_getWitnessTable();
      v110 = swift_getWitnessTable();
      v111 = swift_getWitnessTable();
      v266 = v110;
      v267 = v111;
      v112 = swift_getWitnessTable();
      v264 = v109;
      v265 = v112;
      v113 = swift_getWitnessTable();
      WitnessTable = v113;
      v262 = v220;
      v263 = v219;
      v114 = swift_getWitnessTable();
      sub_1A3DF4890(&v314, v105, v106, v113, v114);
      (*(*(v106 - 8) + 8))(&v314, v106);
      v115 = sub_1A5249754();
      v231 = sub_1A5248804();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B894();
      sub_1A5248804();
      sub_1A3E000AC(255);
      v232 = v116;
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B8B4();
      sub_1A524DF24();
      swift_getTupleTypeMetadata3();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B894();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      swift_getWitnessTable();
      sub_1A5248414();
      v117 = sub_1A5249754();
      v260 = WitnessTable;
      v261 = v114;
      v118 = swift_getWitnessTable();
      v258 = swift_getWitnessTable();
      v259 = MEMORY[0x1E6981E60];
      v119 = swift_getWitnessTable();
      sub_1A3DF4798(&v282, v115, v117, v118, v119);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(*(v115 - 8) + 8))(&v282, v115);
      v67 = v223;
      v68 = v225;
      v225(&v285, v223);
    }

    else
    {
      if (v17 != 5)
      {
        goto LABEL_10;
      }

      sub_1A524CB94();
      v34 = v314;
      v229 = v314;
      sub_1A524CB94();
      v35 = v314;
      v228 = v314;
      sub_1A524CB94();
      v36 = v314;
      v227 = v314;
      sub_1A524CB94();
      v37 = v314;
      v226 = v314;
      v38 = sub_1A524CB94();
      v224 = v217;
      v225 = v314;
      v223 = *&v8;
      MEMORY[0x1EEE9AC00](v38);
      v217[-10] = v5;
      v217[-9] = v3;
      *&v217[-8] = v8;
      v39 = v232;
      v217[-7] = v34;
      v217[-6] = v39;
      v217[-5] = v35;
      v217[-4] = v36;
      v217[-3] = v37;
      v217[-2] = v40;
      sub_1A5249574();
      v43 = type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v41, v42);
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      v44 = MEMORY[0x1E6981F48];
      v231 = swift_getWitnessTable();
      v45 = sub_1A524B784();
      v230 = v43;
      swift_getTupleTypeMetadata3();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B884();
      v46 = sub_1A524B894();
      v217[6] = MEMORY[0x1E6981870];
      v47 = swift_getWitnessTable();
      v219 = v47;
      v48 = *(v46 - 8);
      v49 = *(v48 + 16);
      v49(v286, &v314, v46);
      v50 = *(v48 + 8);
      v223 = v48 + 8;
      v224 = v50;
      (v50)(&v314, v46);
      v49(&v285, v286, v46);
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      v51 = sub_1A524B894();
      v218 = swift_getWitnessTable();
      WitnessTable = v46;
      sub_1A3DF4890(&v285, v51, v46, v218, v47);
      sub_1A524B894();
      v232 = v45;
      sub_1A5249754();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      v220 = v44;
      swift_getWitnessTable();
      sub_1A524B894();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      sub_1A5249754();
      v52 = sub_1A5249754();
      v53 = sub_1A5249754();
      v54 = swift_getWitnessTable();
      v221 = MEMORY[0x1E69817F8];
      v55 = swift_getWitnessTable();
      v280 = v54;
      v281 = v55;
      v56 = swift_getWitnessTable();
      v57 = swift_getWitnessTable();
      v58 = swift_getWitnessTable();
      v278 = v57;
      v279 = v58;
      v59 = swift_getWitnessTable();
      v276 = v56;
      v277 = v59;
      v60 = swift_getWitnessTable();
      v274 = v218;
      v275 = v219;
      v61 = swift_getWitnessTable();
      sub_1A3DF4890(&v314, v52, v53, v60, v61);
      (*(*(v53 - 8) + 8))(&v314, v53);
      v62 = sub_1A5249754();
      v231 = sub_1A5248804();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B894();
      sub_1A5248804();
      sub_1A3E000AC(255);
      v232 = v63;
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B8B4();
      sub_1A524DF24();
      swift_getTupleTypeMetadata3();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B894();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      swift_getWitnessTable();
      sub_1A5248414();
      v64 = sub_1A5249754();
      v272 = v60;
      v273 = v61;
      v65 = swift_getWitnessTable();
      v270 = swift_getWitnessTable();
      v271 = MEMORY[0x1E6981E60];
      v66 = swift_getWitnessTable();
      sub_1A3DF4798(&v282, v62, v64, v65, v66);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(*(v62 - 8) + 8))(&v282, v62);
      v67 = WitnessTable;
      v68 = v224;
      (v224)(&v285, WitnessTable);
    }

LABEL_17:
    v68(v286, v67);
    goto LABEL_28;
  }

  if (v17 == 2)
  {
    sub_1A524CB94();
    v85 = v314;
    sub_1A524CB94();
    v86 = v314;
    if ([v85 respondsToSelector_])
    {
      [v85 aspectRatio];
      v88 = v87 > 1.0;
    }

    else
    {
      v88 = 0;
    }

    v156 = [v86 respondsToSelector_];
    v228 = v86;
    v229 = v85;
    if ((v156 & 1) != 0 && ((v156 = [v86 aspectRatio], v157 > 1.0) ? (v158 = v88) : (v158 = 0), v158))
    {
      MEMORY[0x1EEE9AC00](v156);
      v217[-6] = v5;
      v217[-5] = v3;
      v159 = v232;
      v217[-4] = v85;
      v217[-3] = v159;
      v217[-2] = v86;
      sub_1A5249574();
      v162 = type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v160, v161);
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B884();
      v163 = sub_1A524B894();
      v164 = swift_getWitnessTable();
      v165 = *(v163 - 8);
      v166 = *(v165 + 16);
      v166(&v314, &v282, v163);
      v167 = *(v165 + 8);
      v167(&v282, v163);
      v166(&v282, &v314, v163);
      v168 = sub_1A524B784();
      v169 = swift_getWitnessTable();
      sub_1A3DF4798(&v282, v163, v168, v164, v169);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v156);
      v217[-6] = v5;
      v217[-5] = v3;
      v170 = v232;
      v217[-4] = v85;
      v217[-3] = v170;
      v217[-2] = v86;
      sub_1A5249314();
      v162 = type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v171, v172);
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B774();
      v163 = sub_1A524B784();
      v173 = swift_getWitnessTable();
      v174 = *(v163 - 8);
      v175 = *(v174 + 16);
      v175(&v314, &v282, v163);
      v167 = *(v174 + 8);
      v167(&v282, v163);
      v175(&v282, &v314, v163);
      v176 = sub_1A524B894();
      v177 = swift_getWitnessTable();
      sub_1A3DF4890(&v282, v176, v163, v177, v173);
    }

    v167(&v282, v163);
    v167(&v314, v163);
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    v178 = MEMORY[0x1E6981F48];
    swift_getWitnessTable();
    sub_1A524B894();
    v179 = sub_1A524B784();
    v180 = sub_1A5249754();
    v232 = MEMORY[0x1E6981870];
    v181 = swift_getWitnessTable();
    v225 = MEMORY[0x1E69817F8];
    v182 = swift_getWitnessTable();
    v244 = v181;
    v245 = v182;
    v224 = MEMORY[0x1E697F968];
    v231 = swift_getWitnessTable();
    v227 = *(v180 - 8);
    (*(v227 + 16))(&v285, v286, v180);
    v230 = v162;
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    v183 = v178;
    swift_getWitnessTable();
    sub_1A524B784();
    v184 = sub_1A5249754();
    v185 = swift_getWitnessTable();
    v186 = swift_getWitnessTable();
    v242 = v185;
    v243 = v186;
    v187 = swift_getWitnessTable();
    v226 = v180;
    v188 = v231;
    sub_1A3DF4798(&v285, v180, v184, v231, v187);
    v189 = sub_1A5249754();
    v223 = v179;
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    swift_getTupleTypeMetadata3();
    sub_1A524BE24();
    WitnessTable = v183;
    swift_getWitnessTable();
    sub_1A524B784();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    v190 = sub_1A5249754();
    v240 = v188;
    v241 = v187;
    v191 = swift_getWitnessTable();
    v192 = swift_getWitnessTable();
    v193 = swift_getWitnessTable();
    v238 = v192;
    v239 = v193;
    v194 = swift_getWitnessTable();
    sub_1A3DF4798(&v314, v189, v190, v191, v194);
    (*(*(v189 - 8) + 8))(&v314, v189);
    v195 = sub_1A5249754();
    v231 = sub_1A5248804();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    sub_1A5248804();
    sub_1A3E000AC(255);
    v232 = v196;
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B8B4();
    sub_1A524DF24();
    swift_getTupleTypeMetadata3();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B784();
    swift_getWitnessTable();
    sub_1A5248414();
    v197 = sub_1A5249754();
    v236 = v191;
    v237 = v194;
    v198 = swift_getWitnessTable();
    v234 = swift_getWitnessTable();
    v235 = MEMORY[0x1E6981E60];
    v199 = swift_getWitnessTable();
    sub_1A3DF4798(&v282, v195, v197, v198, v199);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(*(v195 - 8) + 8))(&v282, v195);
    v200 = v226;
    v201 = *(v227 + 8);
    v201(&v285, v226);
    v201(v286, v200);
    goto LABEL_28;
  }

  if (v17 == 3)
  {
    sub_1A524CB94();
    v20 = v314;
    sub_1A524CB94();
    v21 = v314;
    sub_1A524CB94();
    v22 = v314;
    v23 = [v20 respondsToSelector_];
    v229 = v22;
    v230 = v21;
    v228 = v20;
    if ((v23 & 1) != 0 && (v23 = [v20 aspectRatio], v24 > 1.0))
    {
      v231 = v217;
      MEMORY[0x1EEE9AC00](v23);
      v217[-8] = v5;
      v217[-7] = v3;
      v25 = v232;
      v217[-6] = v20;
      v217[-5] = v25;
      *&v217[-4] = v8;
      v217[-3] = v21;
      v217[-2] = v22;
      sub_1A5249574();
      type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v26, v27);
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B784();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B884();
      v28 = sub_1A524B894();
      v232 = swift_getWitnessTable();
      v29 = *(v28 - 8);
      v30 = *(v29 + 16);
      v30(&v314, &v282, v28);
      v31 = *(v29 + 8);
      v31(&v282, v28);
      v30(&v282, &v314, v28);
      sub_1A524B894();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      v32 = sub_1A524B784();
      v33 = swift_getWitnessTable();
      sub_1A3DF4798(&v282, v28, v32, v232, v33);
    }

    else
    {
      v231 = v217;
      MEMORY[0x1EEE9AC00](v23);
      v217[-8] = v5;
      v217[-7] = v3;
      v120 = v232;
      v217[-6] = v20;
      v217[-5] = v120;
      *&v217[-4] = v8;
      v217[-3] = v21;
      v217[-2] = v22;
      sub_1A5249314();
      type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v121, v122);
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B894();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      sub_1A524B774();
      v28 = sub_1A524B784();
      v232 = swift_getWitnessTable();
      v123 = *(v28 - 8);
      v124 = *(v123 + 16);
      v124(&v314, &v282, v28);
      v31 = *(v123 + 8);
      v31(&v282, v28);
      v124(&v282, &v314, v28);
      sub_1A524B784();
      swift_getTupleTypeMetadata2();
      sub_1A524BE24();
      swift_getWitnessTable();
      v125 = sub_1A524B894();
      v126 = swift_getWitnessTable();
      sub_1A3DF4890(&v282, v125, v28, v126, v232);
    }

    v31(&v282, v28);
    v31(&v314, v28);
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    v127 = MEMORY[0x1E6981F48];
    swift_getWitnessTable();
    v128 = sub_1A524B784();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    v224 = v127;
    swift_getWitnessTable();
    sub_1A524B894();
    sub_1A524B894();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B784();
    v129 = sub_1A5249754();
    v232 = MEMORY[0x1E6981870];
    v130 = swift_getWitnessTable();
    v225 = MEMORY[0x1E69817F8];
    v131 = swift_getWitnessTable();
    v256 = v130;
    v257 = v131;
    v223 = MEMORY[0x1E697F968];
    v132 = swift_getWitnessTable();
    v227 = *(v129 - 8);
    (*(v227 + 16))(&v285, v286, v129);
    v133 = sub_1A5249754();
    v134 = swift_getWitnessTable();
    v135 = swift_getWitnessTable();
    v254 = v134;
    v255 = v135;
    v136 = swift_getWitnessTable();
    v226 = v129;
    sub_1A3DF4890(&v285, v133, v129, v136, v132);
    v137 = sub_1A5249754();
    WitnessTable = v128;
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    swift_getTupleTypeMetadata3();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B784();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    v138 = sub_1A5249754();
    v252 = v136;
    v253 = v132;
    v139 = swift_getWitnessTable();
    v140 = swift_getWitnessTable();
    v141 = swift_getWitnessTable();
    v250 = v140;
    v251 = v141;
    v142 = swift_getWitnessTable();
    v143 = v139;
    sub_1A3DF4798(&v314, v137, v138, v139, v142);
    (*(*(v137 - 8) + 8))(&v314, v137);
    v144 = sub_1A5249754();
    v231 = sub_1A5248804();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    sub_1A5248804();
    sub_1A3E000AC(255);
    v232 = v145;
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B8B4();
    sub_1A524DF24();
    swift_getTupleTypeMetadata3();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B894();
    swift_getTupleTypeMetadata2();
    sub_1A524BE24();
    swift_getWitnessTable();
    sub_1A524B784();
    swift_getWitnessTable();
    sub_1A5248414();
    v146 = sub_1A5249754();
    v248 = v143;
    v249 = v142;
    v147 = swift_getWitnessTable();
    v246 = swift_getWitnessTable();
    v247 = MEMORY[0x1E6981E60];
    v148 = swift_getWitnessTable();
    sub_1A3DF4798(&v282, v144, v146, v147, v148);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(*(v144 - 8) + 8))(&v282, v144);
    v67 = v226;
    v68 = *(v227 + 8);
    v68(&v285, v226);
    goto LABEL_17;
  }

LABEL_10:
  if (v17 >= 6)
  {
    sub_1A524CB94();
    v228 = v314;
    sub_1A524CB94();
    v229 = v314;
    sub_1A524CB94();
    v227 = v314;
    sub_1A524CB94();
    v226 = v314;
    sub_1A524CB94();
    v225 = v314;
    sub_1A524CB94();
    v224 = v314;
    (*(v12 + 16))(v15, v232, v11);
    v220 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v232 = (v13 + v220 + 7) & 0xFFFFFFFFFFFFFFF8;
    v231 = ((v232 + 15) & 0xFFFFFFFFFFFFFFF8);
    v230 = (v231 + 15) & 0xFFFFFFFFFFFFFFF8;
    WitnessTable = (v230 + 15) & 0xFFFFFFFFFFFFFFF8;
    v221 = (WitnessTable + 15) & 0xFFFFFFFFFFFFFFF8;
    v149 = (v221 + 15) & 0xFFFFFFFFFFFFFFF8;
    v150 = swift_allocObject();
    *(v150 + 2) = v5;
    *(v150 + 3) = v3;
    v150[4] = v8;
    *(v150 + 5) = v228;
    (*(v12 + 32))(v150 + v220, v15, v11);
    v151 = v225;
    v223 = v150;
    v152 = v231;
    *(v150 + v232) = v226;
    *(v150 + v152) = v151;
    *(v150 + v230) = v229;
    v153 = v221;
    *(v150 + WitnessTable) = v227;
    *(v150 + v153) = v10;
    *(v150 + v149) = v224;
    type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v154, v155);
    v231 = sub_1A5248804();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for SharedAlbumsAssetView(255, AssociatedTypeWitness, v18, v19);
  v231 = sub_1A5248804();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  sub_1A3E000AC(255);
  v232 = v69;
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  v226 = MEMORY[0x1E69817F8];
  swift_getWitnessTable();
  v70 = sub_1A5248414();
  v225 = v70;
  v227 = swift_getWitnessTable();
  sub_1A3DF4890(v227, v70, MEMORY[0x1E6981E70], v227, MEMORY[0x1E6981E60]);
  v229 = v283;
  v230 = v282;
  LODWORD(v228) = v284;
  v286[0] = v282;
  v286[1] = v283;
  v287 = v284;
  sub_1A524B894();
  v221 = sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  WitnessTable = sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v223 = sub_1A524B784();
  v224 = sub_1A5249754();
  v218 = sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v219 = sub_1A524B894();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5249754();
  v220 = sub_1A5249754();
  v71 = sub_1A5249754();
  v72 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v298 = v72;
  v299 = v73;
  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  v296 = v75;
  v297 = v76;
  v77 = swift_getWitnessTable();
  v294 = v74;
  v295 = v77;
  v78 = swift_getWitnessTable();
  v79 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v292 = v79;
  v293 = v80;
  v81 = swift_getWitnessTable();
  v290 = v78;
  v291 = v81;
  v82 = v220;
  v83 = swift_getWitnessTable();
  v288 = v227;
  v289 = MEMORY[0x1E6981E60];
  v84 = swift_getWitnessTable();
  sub_1A3DF4890(v286, v82, v71, v83, v84);
  sub_1A3E0742C(v230, v229, v228);
LABEL_28:
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A524B784();
  v227 = sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v228 = sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v229 = sub_1A524B784();
  v230 = sub_1A5249754();
  v223 = sub_1A5249754();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v224 = sub_1A524B894();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v225 = sub_1A524B894();
  v226 = sub_1A5249754();
  sub_1A5249754();
  sub_1A5248804();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  sub_1A5248804();
  sub_1A3E000AC(255);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B8B4();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getWitnessTable();
  sub_1A5248414();
  sub_1A5249754();
  v202 = sub_1A5249754();
  v203 = swift_getWitnessTable();
  v204 = swift_getWitnessTable();
  v312 = v203;
  v313 = v204;
  v205 = swift_getWitnessTable();
  v206 = swift_getWitnessTable();
  v207 = swift_getWitnessTable();
  v310 = v206;
  v311 = v207;
  v208 = swift_getWitnessTable();
  v308 = v205;
  v309 = v208;
  v209 = swift_getWitnessTable();
  v210 = swift_getWitnessTable();
  v211 = swift_getWitnessTable();
  v306 = v210;
  v307 = v211;
  v212 = swift_getWitnessTable();
  v304 = v209;
  v305 = v212;
  v213 = swift_getWitnessTable();
  v302 = swift_getWitnessTable();
  v303 = MEMORY[0x1E6981E60];
  v214 = swift_getWitnessTable();
  v300 = v213;
  v301 = v214;
  swift_getWitnessTable();
  v215 = *(v202 - 8);
  (*(v215 + 16))(v233, &v314, v202);
  return (*(v215 + 8))(&v314, v202);
}