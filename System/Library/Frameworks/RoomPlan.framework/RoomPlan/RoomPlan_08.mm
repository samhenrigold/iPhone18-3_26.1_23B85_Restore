uint64_t sub_23A945E44(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v8 = a4;
    v11 = a3;
    v9 = a2;
    v10 = a1;
    v12 = *v7;
    v13 = *v7 >> 62;
    if (!v13)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_23AA0D7F4();
  if (result < v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v9, v10))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10 - v9;
  if (__OFSUB__(0, v9 - v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v16 = sub_23AA0D7F4();
  }

  else
  {
    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (!v17)
  {
    v11(result, 1);
    return sub_23A9462F8(v10, v9, 0, v8, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_23A945FC8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 16 * result);
  if (!v6)
  {
    goto LABEL_13;
  }

  v9 = *(v7 + 16);
  v10 = __OFSUB__(v9, a2);
  v11 = v9 - a2;
  if (v10)
  {
    goto LABEL_21;
  }

  result = v8 + 16 * a3;
  v12 = (v7 + 32 + 16 * a2);
  if (result != v12 || result >= v12 + 16 * v11)
  {
    v14 = a3;
    v15 = a4;
    result = memmove(result, v12, 16 * v11);
    a3 = v14;
    a4 = v15;
  }

  v16 = *(v7 + 16);
  v10 = __OFADD__(v16, v6);
  v17 = v16 + v6;
  if (v10)
  {
    goto LABEL_22;
  }

  *(v7 + 16) = v17;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = 16 * a3;

  return memcpy(v8, (a4 + 32), v18);
}

unint64_t sub_23A9460BC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_23A938E7C(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_23A945FC8(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_23A946190(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_23A946238(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_23A9462F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(a4);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_23AA0D7F4();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_23AA0D7F4();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23A9463FC(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0x400E000000000000;
  type metadata accessor for FrameTextureCache();
  v4 = swift_allocObject();
  sub_23A944390();
  v5 = MEMORY[0x277D84F98];
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = 998445679;
  *(v2 + 48) = 5;
  *(v2 + 128) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  *(v2 + 120) = a1;
  swift_beginAccess();
  swift_unknownObjectRetain();
  CVMetalTextureCacheCreate(0, 0, a1, 0, (v2 + 128));
  swift_endAccess();
  v6 = [objc_allocWithZone(MEMORY[0x277CD7528]) initWithDevice:a1 kernelDiameter:5];
  *(v2 + 56) = v6;
  LODWORD(v7) = 998445679;
  [v6 setEpsilon_];
  *(v2 + 64) = [objc_allocWithZone(MEMORY[0x277CD74E0]) initWithDevice_];
  return v2;
}

CVPixelBufferPoolRef sub_23A94652C(__CVBuffer *a1)
{
  poolOut[1] = *MEMORY[0x277D85DE8];
  poolOut[0] = 0;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF840, &qword_23AA14A48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA12950;
  *(inited + 32) = sub_23AA0D134();
  v6 = MEMORY[0x277D84CC0];
  *(inited + 40) = v7;
  *(inited + 72) = v6;
  *(inited + 48) = PixelFormatType;
  v8 = sub_23AA0D134();
  v9 = MEMORY[0x277D83B88];
  *(inited + 80) = v8;
  *(inited + 88) = v10;
  *(inited + 120) = v9;
  *(inited + 96) = Width;
  *(inited + 128) = sub_23AA0D134();
  *(inited + 136) = v11;
  *(inited + 168) = v9;
  *(inited + 144) = Height;
  *(inited + 176) = sub_23AA0D134();
  *(inited + 184) = v12;
  v13 = extraColumnsOnLeft;
  *(inited + 216) = v9;
  *(inited + 192) = v13;
  *(inited + 224) = sub_23AA0D134();
  *(inited + 232) = v14;
  v15 = extraColumnsOnRight;
  *(inited + 264) = v9;
  *(inited + 240) = v15;
  *(inited + 272) = sub_23AA0D134();
  *(inited + 280) = v16;
  v17 = extraRowsOnTop;
  *(inited + 312) = v9;
  *(inited + 288) = v17;
  *(inited + 320) = sub_23AA0D134();
  *(inited + 328) = v18;
  v19 = extraRowsOnBottom;
  *(inited + 360) = v9;
  *(inited + 336) = v19;
  *(inited + 368) = sub_23AA0D134();
  *(inited + 376) = v20;
  v21 = sub_23A9DCB74(MEMORY[0x277D84F90]);
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF848, &unk_23AA14A50);
  *(inited + 384) = v21;
  sub_23A9DCC9C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF850, &qword_23AA1B2D0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF858, &qword_23AA14A60);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23AA10FC0;
  *(v22 + 32) = sub_23AA0D134();
  *(v22 + 40) = v23;
  *(v22 + 48) = 10;
  sub_23A9DCDCC(v22);
  swift_setDeallocating();
  sub_23A946944(v22 + 32);
  v24 = *MEMORY[0x277CBECE8];
  v25 = sub_23AA0D024();

  v26 = sub_23AA0D024();

  CVPixelBufferPoolCreate(v24, v25, v26, poolOut);

  return poolOut[0];
}

char *sub_23A946858(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_23A9468FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A946944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF860, &qword_23AA14A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A9469AC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_23A946A58(float32x2_t **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23A977E34(v2);
  }

  v3 = v2[2];
  v4[0] = v2 + 4;
  v4[1] = v3;
  sub_23A947468(v4);
  *a1 = v2;
}

uint64_t sub_23A946AC4(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vceq_f32(v6, v7);
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --*&v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_23A946B38(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s32(vceqq_f32(v6, v7));
    if (((v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return (v8.i8[0] & v8.i8[2]) & v8.i8[4] & 1;
}

uint64_t sub_23A946BB8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A946C14(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A946C70(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A946CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 40)
  {
    result = sub_23A910674(v3, v10);
    if (!v2)
    {
      break;
    }

    sub_23A910674(i, v9);
    sub_23A9106D0();
    v6 = sub_23AA0D054();
    v7 = sub_23AA0D054();
    sub_23A910724(v9);
    sub_23A910724(v10);
    result = v6 == v7;
    v8 = v6 != v7 || v2-- == 1;
    v3 += 40;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

char *sub_23A946DC8(float32x2_t *a1, char a2, float a3, double a4, int32x2_t a5)
{
  *a5.i32 = a3;
  v7 = v5[5];
  v8 = a1[5];
  v9 = v7[2];
  if (*&v9 == *(*&v8 + 16))
  {
    if (v9)
    {
      v10 = v7 == v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
LABEL_9:
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
        result = swift_allocObject();
        *(result + 1) = xmmword_23AA11C10;
        v15 = a1[3];
        *(result + 4) = a1[2];
        *(result + 5) = v15;
        return result;
      }

      return MEMORY[0x277D84F90];
    }

    v11 = v7 + 4;
    v12 = (*&v8 + 32);
    while (1)
    {
      v13 = vceq_f32(*v11, *v12);
      if ((v13.i32[0] & v13.i32[1] & 1) == 0)
      {
        break;
      }

      ++v12;
      ++v11;
      if (!--*&v9)
      {
        goto LABEL_9;
      }
    }
  }

  v17 = v5[2];
  v16 = v5[3];
  v18 = vsub_f32(v16, v17);
  v20 = a1[2];
  v19 = a1[3];
  v21 = vsub_f32(v19, v20);
  v51 = a5;
  v22 = _simd_orient_vf2(v18, v21);
  v23 = vsub_f32(v20, v17);
  v24 = _simd_orient_vf2(v23, v18);
  v25 = fabsf(v24);
  if (fabsf(v22) < *v51.i32 && v25 < *v51.i32)
  {
    v27 = vcgt_f32(vdup_lane_s32(v51, 0), vabs_f32(v23));
    if (v27.i32[0] & v27.i32[1] & 1) != 0 || (sub_23A8ED98C(v5, *v51.i32, v20))
    {
      v28 = sub_23A938A28(0, 1, 1, MEMORY[0x277D84F90]);
      v29 = *(v28 + 2);
      v30 = *(v28 + 3);
      v31 = v29 + 1;
      if (v29 >= v30 >> 1)
      {
        v49 = *(v28 + 2);
        v28 = sub_23A938A28((v30 > 1), v31, 1, v28);
        v29 = v49;
      }
    }

    else
    {
      if ((sub_23A8ED98C(a1, *v51.i32, v17) & 1) == 0)
      {
        v28 = MEMORY[0x277D84F90];
        v32 = *v51.i32;
LABEL_23:
        v33 = vsub_f32(v19, v16);
        v34 = fabsf(v33.f32[1]);
        if (fabsf(v33.f32[0]) < v32 && v34 < v32)
        {
          v47 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_23A938A28(0, *(v47 + 2) + 1, 1, v47);
          }

          result = v47;
          v38 = *(v47 + 2);
          v37 = *(v47 + 3);
        }

        else
        {
          v36 = v28;
          if ((sub_23A8ED98C(v5, v32, v19) & 1) == 0)
          {
            if ((sub_23A8ED98C(a1, *v51.i32, v16) & 1) == 0)
            {
              return v36;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = sub_23A938A28(0, *(v36 + 2) + 1, 1, v36);
            }

            result = v36;
            v45 = *(v36 + 2);
            v44 = *(v36 + 3);
            if (v45 >= v44 >> 1)
            {
              result = sub_23A938A28((v44 > 1), v45 + 1, 1, v36);
            }

            *(result + 2) = v45 + 1;
            *&result[8 * v45 + 32] = v16;
            return result;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_23A938A28(0, *(v36 + 2) + 1, 1, v36);
          }

          result = v36;
          v38 = *(v36 + 2);
          v37 = *(v36 + 3);
        }

        if (v38 >= v37 >> 1)
        {
          result = sub_23A938A28((v37 > 1), v38 + 1, 1, result);
        }

        *(result + 2) = v38 + 1;
        *&result[8 * v38 + 32] = v19;
        return result;
      }

      v28 = sub_23A938A28(0, 1, 1, MEMORY[0x277D84F90]);
      v29 = *(v28 + 2);
      v46 = *(v28 + 3);
      v31 = v29 + 1;
      if (v29 >= v46 >> 1)
      {
        v50 = *(v28 + 2);
        v28 = sub_23A938A28((v46 > 1), v31, 1, v28);
        v29 = v50;
      }

      v20 = v17;
    }

    v32 = *v51.i32;
    *(v28 + 2) = v31;
    *&v28[8 * v29 + 32] = v20;
    goto LABEL_23;
  }

  if (v22 == 0.0 && v24 != 0.0)
  {
    return MEMORY[0x277D84F90];
  }

  v39 = v24;
  v40 = _simd_orient_vf2(v23, v21) / v22;
  result = MEMORY[0x277D84F90];
  if (v40 >= 0.0 && v40 <= 1.0 && (v39 / v22) >= 0.0 && (v39 / v22) <= 1.0)
  {
    v52 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
    result = swift_allocObject();
    *(result + 1) = xmmword_23AA10FC0;
    if (v52 == 0.0 || v52 == 1.0)
    {
      v48 = vadd_f32(v17, vmul_n_f32(v18, v52));
    }

    else
    {
      v48 = vadd_f32(v20, vmul_n_f32(v21, v39 / v22));
    }

    *(result + 4) = v48;
  }

  return result;
}

uint64_t sub_23A947224(double a1, double a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v5 = vceq_f32(*&a1, *&a2);
  *(v2 + 32) = v5.i8[0] & v5.i8[4] & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23AA11C10;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v8 = v6;

  sub_23A946A58(&v8);

  *(v2 + 40) = v8;
  return v2;
}

uint64_t sub_23A947308()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A947364()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23A947DEC(v3, *(v1 + 40));
  return sub_23AA0DD54();
}

uint64_t sub_23A9473B8()
{
  sub_23AA0DD14();
  sub_23A947DEC(v2, *(*v0 + 40));
  return sub_23AA0DD54();
}

unint64_t sub_23A947414()
{
  result = qword_27DFAF868;
  if (!qword_27DFAF868)
  {
    type metadata accessor for CDTEdge();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF868);
  }

  return result;
}

void sub_23A947468(float32x2_t **a1)
{
  v2 = a1[1];
  v3 = sub_23AA0DBA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
        v6 = sub_23AA0D324();
        v6[2] = v5;
      }

      v17[0] = v6 + 4;
      v17[1] = v5;
      sub_23A9475D0(v17, v18, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v2 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (v2 >= 2)
  {
    v7 = *a1;
    v8 = -1;
    v9 = 1;
    v10 = *a1;
    do
    {
      v11 = *(v7 + 8 * v9);
      v12 = v8;
      v13 = v10;
      do
      {
        v14 = *v13;
        v15 = vcgt_f32(*v13, v11);
        if (fabsf(vsub_f32(v11, *v13).f32[0]) >= 0.00000011921)
        {
          if ((v15.i8[0] & 1) == 0)
          {
            break;
          }
        }

        else if ((v15.i8[4] & 1) == 0)
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_23;
        }

        *v13 = v11;
        v13[1] = v14;
        --v13;
      }

      while (!__CFADD__(v12++, 1));
      ++v9;
      v10 += 8;
      --v8;
    }

    while (v9 != v2);
  }
}

void sub_23A9475D0(float32x2_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v89 = v10;
      v81 = *(v10 + 2);
      if (v81 >= 2)
      {
        while (*a3)
        {
          v82 = *&v10[16 * v81];
          v83 = *&v10[16 * v81 + 24];
          sub_23A947BA4((*a3 + 8 * v82), (*a3 + 8 * *&v10[16 * v81 + 16]), (*a3 + 8 * v83), v5);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v83 < v82)
          {
            goto LABEL_118;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_23A977E20(v10);
          }

          if (v81 - 2 >= *(v10 + 2))
          {
            goto LABEL_119;
          }

          v84 = &v10[16 * v81];
          *v84 = v82;
          *(v84 + 1) = v83;
          v89 = v10;
          sub_23A977D94(v81 - 1);
          v10 = v89;
          v81 = *(v89 + 2);
          if (v81 <= 1)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_129;
      }

LABEL_103:

      return;
    }

LABEL_125:
    v10 = sub_23A977E20(v10);
    goto LABEL_95;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
LABEL_4:
  v11 = v9++;
  if (v9 < v7)
  {
    v12 = *(*a3 + 8 * v9);
    v13 = 8 * v11;
    v14 = (*a3 + 8 * v11);
    v16 = *v14;
    v15 = v14 + 2;
    v88 = vcgt_f32(v16, v12);
    v17 = *(&v88 | (4 * (fabsf(vsub_f32(v12, v16).f32[0]) < 0.00000011921)));
    v18 = v11 + 2;
    if (v7 > v11 + 2)
    {
      v18 = v7;
    }

    v19 = v18 - v11 - 2;
    while (v19)
    {
      v20 = *v15++;
      v21 = fabsf(vsub_f32(v20, v12).f32[0]);
      v87 = vcgt_f32(v12, v20);
      --v19;
      ++v9;
      v12 = v20;
      if ((v17 & 1) != (*(&v87 | (4 * (v21 < 0.00000011921))) & 1))
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }
    }

    v9 = v18;
    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    if (v9 < v11)
    {
      goto LABEL_122;
    }

    if (v11 < v9)
    {
      v22 = 8 * v9 - 8;
      v23 = v9;
      v24 = v11;
      do
      {
        if (v24 != --v23)
        {
          v26 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v25 = *(v26 + v13);
          *(v26 + v13) = *(v26 + v22);
          *(v26 + v22) = v25;
        }

        ++v24;
        v22 -= 8;
        v13 += 8;
      }

      while (v24 < v23);
      v7 = a3[1];
    }
  }

LABEL_22:
  if (v9 >= v7)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_121;
  }

  if (v9 - v11 >= v8)
  {
    goto LABEL_42;
  }

  if (__OFADD__(v11, v8))
  {
    goto LABEL_123;
  }

  if (v11 + v8 < v7)
  {
    v7 = v11 + v8;
  }

  if (v7 < v11)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  if (v9 == v7)
  {
    goto LABEL_42;
  }

  v27 = *a3;
  v28 = *a3 + 8 * v9 - 8;
  v29 = v11 - v9;
LABEL_32:
  v30 = *(v27 + 8 * v9);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    v33 = *v32;
    v34 = vcgt_f32(*v32, v30);
    if (fabsf(vsub_f32(v30, *v32).f32[0]) >= 0.00000011921)
    {
      if ((v34.i8[0] & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((v34.i8[4] & 1) == 0)
    {
      goto LABEL_31;
    }

    if (!v27)
    {
      break;
    }

    *v32 = v30;
    v32[1] = v33;
    --v32;
    if (__CFADD__(v31++, 1))
    {
LABEL_31:
      ++v9;
      v28 += 8;
      --v29;
      if (v9 != v7)
      {
        goto LABEL_32;
      }

      v9 = v7;
LABEL_42:
      if (v9 < v11)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_23A938B2C(0, *(v10 + 2) + 1, 1, v10);
      }

      v5 = *(v10 + 2);
      v36 = *(v10 + 3);
      v37 = v5 + 1;
      if (v5 >= v36 >> 1)
      {
        v10 = sub_23A938B2C((v36 > 1), v5 + 1, 1, v10);
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v5];
      *(v38 + 4) = v11;
      *(v38 + 5) = v9;
      v39 = *a1;
      if (!*a1)
      {
        goto LABEL_130;
      }

      if (v5)
      {
        while (1)
        {
          v40 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v41 = *(v10 + 4);
            v42 = *(v10 + 5);
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_62:
            if (v44)
            {
              goto LABEL_109;
            }

            v57 = &v10[16 * v37];
            v59 = *v57;
            v58 = *(v57 + 1);
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_112;
            }

            v63 = &v10[16 * v40 + 32];
            v65 = *v63;
            v64 = *(v63 + 1);
            v51 = __OFSUB__(v64, v65);
            v66 = v64 - v65;
            if (v51)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v61, v66))
            {
              goto LABEL_116;
            }

            if (v61 + v66 >= v43)
            {
              if (v43 < v66)
              {
                v40 = v37 - 2;
              }

              goto LABEL_83;
            }

            goto LABEL_76;
          }

          v67 = &v10[16 * v37];
          v69 = *v67;
          v68 = *(v67 + 1);
          v51 = __OFSUB__(v68, v69);
          v61 = v68 - v69;
          v62 = v51;
LABEL_76:
          if (v62)
          {
            goto LABEL_111;
          }

          v70 = &v10[16 * v40];
          v72 = *(v70 + 4);
          v71 = *(v70 + 5);
          v51 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v51)
          {
            goto LABEL_114;
          }

          if (v73 < v61)
          {
            goto LABEL_3;
          }

LABEL_83:
          v5 = v40 - 1;
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_127;
          }

          v78 = *&v10[16 * v5 + 32];
          v79 = *&v10[16 * v40 + 40];
          sub_23A947BA4((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v40 + 32]), (*a3 + 8 * v79), v39);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v79 < v78)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_23A977E20(v10);
          }

          if (v5 >= *(v10 + 2))
          {
            goto LABEL_106;
          }

          v80 = &v10[16 * v5];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          v89 = v10;
          sub_23A977D94(v40);
          v10 = v89;
          v37 = *(v89 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v45 = &v10[16 * v37 + 32];
        v46 = *(v45 - 64);
        v47 = *(v45 - 56);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_107;
        }

        v50 = *(v45 - 48);
        v49 = *(v45 - 40);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_108;
        }

        v52 = &v10[16 * v37];
        v54 = *v52;
        v53 = *(v52 + 1);
        v51 = __OFSUB__(v53, v54);
        v55 = v53 - v54;
        if (v51)
        {
          goto LABEL_110;
        }

        v51 = __OFADD__(v43, v55);
        v56 = v43 + v55;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v56 >= v48)
        {
          v74 = &v10[16 * v40 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v51 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v51)
          {
            goto LABEL_117;
          }

          if (v43 < v77)
          {
            v40 = v37 - 2;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

LABEL_3:
      v7 = a3[1];
      v8 = a4;
      if (v9 >= v7)
      {
        goto LABEL_93;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

uint64_t sub_23A947BA4(float32x2_t *__src, float32x2_t *__dst, float32x2_t *a3, float32x2_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_27:
      v18 = v6 - 1;
      --v5;
      v19 = v14;
      do
      {
        v20 = *(v19 - 8);
        v19 -= 8;
        v21 = v20;
        v22 = vcgt_f32(*v18, v20);
        if (fabsf(vsub_f32(v20, *v18).f32[0]) >= 0.00000011921)
        {
          if (v22.i8[0])
          {
LABEL_35:
            if (&v5[1] != v6)
            {
              *v5 = *v18;
            }

            if (v14 <= v4 || (--v6, v18 <= v7))
            {
              v6 = v18;
              goto LABEL_42;
            }

            goto LABEL_27;
          }
        }

        else if (v22.i8[4])
        {
          goto LABEL_35;
        }

        if (&v5[1] != v14)
        {
          *v5 = v21;
        }

        --v5;
        v14 = v19;
      }

      while (v19 > v4);
      v14 = v19;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      do
      {
        v15 = *v6;
        v16 = vcgt_f32(*v4, *v6);
        if (fabsf(vsub_f32(*v6, *v4).f32[0]) >= 0.00000011921)
        {
          if ((v16.i8[0] & 1) == 0)
          {
LABEL_13:
            v15 = *v4;
            v17 = v7 == v4++;
            if (v17)
            {
              goto LABEL_15;
            }

LABEL_14:
            *v7 = v15;
            goto LABEL_15;
          }
        }

        else if ((v16.i8[4] & 1) == 0)
        {
          goto LABEL_13;
        }

        v17 = v7 == v6++;
        if (!v17)
        {
          goto LABEL_14;
        }

LABEL_15:
        ++v7;
      }

      while (v4 < v14 && v6 < v5);
    }

    v6 = v7;
  }

LABEL_42:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v23 >> 3));
  }

  return 1;
}

uint64_t sub_23A947DEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x23EE907C0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 8;
      sub_23AA0DD44();
      result = sub_23AA0DD44();
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_23A947ED8(uint64_t *a2@<X8>)
{
  v3 = sub_23A8CA1F0();

  *a2 = v3;
}

double sub_23A947F18(char a1)
{
  v3 = sub_23AA0CE84();
  result = MEMORY[0x28223BE20](v3);
  v5 = v1[5];
  if (a1)
  {
    if (v5 || v1[6] || v1[7] || v1[8] || v1[9])
    {
      return result;
    }

    v6 = v1;
    v7 = objc_opt_self();
    v8 = [v7 systemRedColor];
    type metadata accessor for DebugArrowEntity(0);
    swift_allocObject();
    v9 = sub_23A8EB620(v8);
    v10 = [v7 magentaColor];
    swift_allocObject();
    v11 = sub_23A8EB620(v10);
    v12 = [v7 systemGreenColor];
    swift_allocObject();
    v17 = sub_23A8EB620(v12);
    v13 = [v7 systemMintColor];
    swift_allocObject();
    v16 = sub_23A8EB620(v13);
    v14 = [v7 blueColor];
    swift_allocObject();
    v15 = sub_23A8EB620(v14);
    type metadata accessor for DollHouse(0);

    sub_23AA0C214();

    sub_23AA0C214();

    sub_23AA0C214();

    sub_23AA0C214();

    sub_23AA0C214();
    sub_23AA0CA94();

    sub_23AA0CA94();

    sub_23AA0CA94();

    sub_23AA0CA94();

    sub_23AA0CA94();

    v6[5] = v9;

    v6[6] = v11;

    v6[7] = v17;

    v6[8] = v16;

    v6[9] = v15;
  }

  else
  {
    if (!v5 || !v1[6] || !v1[7] || !v1[8] || !v1[9])
    {
      return result;
    }

    type metadata accessor for DollHouse(0);

    sub_23AA0C1F4();
    sub_23AA0C1F4();
    sub_23AA0C1F4();
    sub_23AA0C1F4();
    sub_23AA0C1F4();

    v1[5] = 0;

    v1[6] = 0;

    v1[7] = 0;

    v1[8] = 0;

    v1[9] = 0;
  }

  return result;
}

void sub_23A94857C()
{
  v1 = v0[4];
  if (v1)
  {
    if (v0[5])
    {
      if (v0[6])
      {
        if (v0[7])
        {
          if (v0[8])
          {
            v2 = v0[9];
            if (v2)
            {

              sub_23AA0C9D4();
              v4 = COERCE_DOUBLE(vzip1_s32(*v3.i8, *&vextq_s8(v3, v3, 8uLL)));
              v5 = vmulq_f32(v3, v3);
              v5.f32[0] = sqrtf(v5.f32[0] + v5.f32[2]);
              v6 = COERCE_DOUBLE(vdiv_f32(*&v4, vdup_lane_s32(*v5.f32, 0)));
              if (v5.f32[0] < 0.01)
              {
                v6 = v4;
              }

              v58 = *&v6;

              sub_23AA0CA94();

              sub_23AA0CA94();

              sub_23AA0CA94();

              sub_23AA0CA94();

              sub_23AA0CA94();

              type metadata accessor for DebugArrowEntity(0);
              v7 = sub_23AA0C2A4();
              v9 = v8;
              sub_23AA0DCD4();
              v61 = v10;
              sub_23AA0D4D4();
              v54 = v11;
              sub_23AA0D4C4();
              *v9 = v12;
              v9[1] = v54;
              v9[2] = v61;
              v7(v64, 0);
              v13 = sub_23AA0C2A4();
              v15 = v14;
              sub_23AA0DCD4();
              v57 = v16;
              sub_23AA0D4D4();
              v55 = v17;
              sub_23AA0D4C4();
              *v15 = v18;
              v15[1] = v55;
              v15[2] = v57;
              v13(v64, 0);
              v19 = sub_23AA0C2A4();
              v21 = v20;
              sub_23AA0DCD4();
              v56 = v22;
              sub_23AA0D4D4();
              v53 = v23;
              sub_23AA0D4C4();
              *v21 = v24;
              v21[1] = v53;
              v21[2] = v56;
              v19(v64, 0);
              v25 = sub_23AA0C2A4();
              v27 = v26;
              sub_23AA0DCD4();
              v62 = v28;
              sub_23AA0D4D4();
              v59 = v29;
              sub_23AA0D4C4();
              *v27 = v30;
              v27[1] = v59;
              v27[2] = v62;
              v25(v64, 0);
              __asm { FMOV            V1.4S, #1.0 }

              v36 = sub_23AA0C2A4();
              v38 = v37;
              sub_23AA0DCD4();
              v63 = v39;
              sub_23AA0D4D4();
              v60 = v40;
              sub_23AA0D4C4();
              *v38 = v41;
              v38[1] = v60;
              v38[2] = v63;
              v36(v64, 0);
              v42 = v1[6];
              v43 = vaddv_f32(vmul_f32(v58, v42));
              v44 = vaddv_f32(vmul_f32(v58, vsub_f32(0, v42)));
              v45 = v1[8];
              v46 = vaddv_f32(vmul_f32(v58, v45));
              if (vaddv_f32(vmul_f32(v58, vsub_f32(0, v45))) > 0.4)
              {
                if (v43 <= 0.4)
                {
                  if (v44 <= 0.4)
                  {
                    if (v46 <= 0.4)
                    {
                      v47 = objc_opt_self();
                      v48 = &selRef_systemMintColor;
                      goto LABEL_30;
                    }
                  }

                  else if (v46 <= 0.4)
                  {
                    v47 = objc_opt_self();
                    v48 = &selRef_systemBrownColor;
                    goto LABEL_30;
                  }
                }

                else if (v44 <= 0.4 && v46 <= 0.4)
                {
                  v47 = objc_opt_self();
                  v48 = &selRef_systemOrangeColor;
LABEL_30:
                  v50 = [v47 *v48];
                  v51 = *(v2 + qword_27DFC05E8);
                  *(v2 + qword_27DFC05E8) = v50;
                  v52 = v50;
                  sub_23A8EB30C(v51);

                  return;
                }

LABEL_29:
                v47 = objc_opt_self();
                v48 = &selRef_blackColor;
                goto LABEL_30;
              }

              if (v43 <= 0.4)
              {
                if (v44 <= 0.4)
                {
                  if (v46 > 0.4)
                  {
                    v47 = objc_opt_self();
                    v48 = &selRef_systemGreenColor;
                    goto LABEL_30;
                  }

                  goto LABEL_29;
                }

                v47 = objc_opt_self();
                v48 = &selRef_magentaColor;
                v49 = &selRef_systemPurpleColor;
              }

              else
              {
                if (v44 > 0.4)
                {
                  goto LABEL_29;
                }

                v47 = objc_opt_self();
                v48 = &selRef_systemRedColor;
                v49 = &selRef_systemYellowColor;
              }

              if (v46 > 0.4)
              {
                v48 = v49;
              }

              goto LABEL_30;
            }
          }
        }
      }
    }
  }
}

void sub_23A948D08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23AA0C0E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8C0, &qword_23AA14E48);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_23AA11C20;
    v10 = *(v8 + 48);
    *(v9 + 32) = v10;
    *(v9 + 48) = xmmword_23AA14B20;
    *(v9 + 64) = vsub_f32(0, *&v10);
    *(v9 + 80) = xmmword_23AA14B30;
    v11 = *(v8 + 64);
    *(v9 + 96) = v11;
    *(v9 + 112) = xmmword_23AA14B40;
    *(v9 + 128) = vsub_f32(0, *&v11);
    *(v9 + 144) = xmmword_23AA14B50;
    v60 = sub_23A9DC708(v9);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v12 = *(a1 + 64);
    v50 = a1 + 64;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v12;
    v49 = (v13 + 63) >> 6;
    v16 = v5 + 16;
    v48 = v5;
    v17 = (v5 + 8);
    v51 = v8;

    v18 = 0;
    v52 = xmmword_23AA10FC0;
    v57 = v7;
    v59 = v16;
    v58 = v17;
    while (v15)
    {
      v19 = v15;
LABEL_11:
      v15 = (v19 - 1) & v19;
      if (*(v60 + 16))
      {
        v21 = __clz(__rbit64(v19)) | (v18 << 6);
        v22 = *(*(a1 + 56) + 8 * v21);
        v23 = *(*(a1 + 48) + 8 * v21);
        v54 = v15;
        v24 = sub_23A9EDEEC(v23);
        v15 = v54;
        if (v25)
        {
          v26 = *(v22 + 16);
          if (v26)
          {
            v47 = a1;
            v53 = *(*(v60 + 56) + 16 * v24);
            v46 = v2;
            v27 = *(v2 + 24);
            v28 = v22 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
            v62 = *(v48 + 72);
            v61 = *(v48 + 16);
            v45[1] = v22;

            v56 = v27;
            do
            {
              v61(v7, v28, v4);
              v29 = sub_23A8C63CC();
              swift_beginAccess();
              v30 = *(v29 + 96);

              if (*(v30 + 16) && (v31 = sub_23A9EDD28(v7), (v32 & 1) != 0))
              {
                v33 = *(*(v30 + 56) + 8 * v31);

                v34 = qword_27DFC0628;
                swift_beginAccess();
                sub_23A8CA9D8(v33 + v34, &v64);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF010, qword_23AA14E50);
                type metadata accessor for SimpleScanMaterial(0);
                if (swift_dynamicCast())
                {
                  swift_beginAccess();
                  v35 = sub_23AA0CC84();
                  sub_23AA0CB94();
                  v35(v63, 0);
                  swift_endAccess();
                  v7 = v57;
                }

                type metadata accessor for WallEntity(0);
                sub_23A94E558(&qword_27DFAF8C8, type metadata accessor for WallEntity, &unk_23AA12800);
                v36 = sub_23AA0CAD4();
                v38 = v37;
                v39 = sub_23AA0C4A4();
                if ((*(*(v39 - 8) + 48))(v38, 1, v39))
                {

                  v36(v63, 0);
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
                  *(swift_allocObject() + 16) = v52;
                  swift_beginAccess();
                  sub_23A8CA9D8(v33 + v34, &v64);

                  v40 = v4;
                  v41 = v65;
                  v42 = v66;
                  __swift_project_boxed_opaque_existential_1(&v64, v65);
                  v43 = *(v42 + 8);
                  v55 = v36;
                  v44 = v42;
                  v4 = v40;
                  v7 = v57;
                  v43(v41, v44);
                  __swift_destroy_boxed_opaque_existential_1(&v64);
                  sub_23AA0C494();
                  v55(v63, 0);
                }

                v17 = v58;
              }

              else
              {
              }

              (*v17)(v7, v4);
              v28 += v62;
              --v26;
            }

            while (v26);

            a1 = v47;
            v2 = v46;
            v15 = v54;
          }
        }
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v49)
      {

        return;
      }

      v19 = *(v50 + 8 * v20);
      ++v18;
      if (v19)
      {
        v18 = v20;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23A9493CC()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v2 = [objc_opt_self() blueColor];
    v3 = *(v0 + 24);
    type metadata accessor for DebugEntityPools();
    v1 = swift_allocObject();
    v4 = MEMORY[0x277D84F98];
    *(v1 + 16) = 10;
    *(v1 + 24) = v4;
    *(v1 + 32) = xmmword_23AA14B60;
    *(v1 + 48) = v2;
    *(v1 + 56) = v3;
    *(v0 + 80) = v1;
  }

  return v1;
}

void sub_23A94948C(uint64_t a1)
{
  v53 = sub_23AA0C0E4();
  v3 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8B8, &qword_23AA14E38);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v42 = v1;
  v14 = sub_23A9493CC();

  sub_23A94DF34(v15, v14);

  v16 = *(a1 + 64);
  v51 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v43 = v3 + 16;
  v52 = (v3 + 32);
  v48 = v3;
  v49 = a1;
  v50 = (v3 + 8);
  v21 = v13;

  v22 = 0;
  v47 = v5;
  v44 = v13;
  v45 = v10;
  while (v19)
  {
    v23 = v22;
LABEL_16:
    v26 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = v26 | (v23 << 6);
    v29 = v48;
    v28 = v49;
    (*(v48 + 16))(v46, *(v49 + 48) + *(v48 + 72) * v27, v53);
    v30 = *(*(v28 + 56) + 8 * v27);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE888, &qword_23AA14E40);
    v32 = *(v31 + 48);
    v10 = v45;
    (*(v29 + 32))();
    *&v10[v32] = v30;
    (*(*(v31 - 8) + 56))(v10, 0, 1, v31);

    v5 = v47;
    v21 = v44;
LABEL_17:
    sub_23A930208(v10, v21, &qword_27DFAF8B8, &qword_23AA14E38);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE888, &qword_23AA14E40);
    if ((*(*(v33 - 8) + 48))(v21, 1, v33) == 1)
    {

      return;
    }

    v34 = *(v21 + *(v33 + 48));
    (*v52)(v5, v21, v53);
    if (qword_27DFAE368 != -1)
    {
      swift_once();
    }

    v35 = qword_27DFC04B0;
    swift_beginAccess();
    v36 = *(v35 + 24);
    if (*(v36 + 16))
    {

      v37 = sub_23A9EDD28(v5);
      if (v38)
      {
        v39 = *(*(v36 + 56) + 8 * v37);

        sub_23A949974(v39, v34);
      }

      else
      {
      }
    }

    (*v50)(v5, v53);
  }

  if (v20 <= v22 + 1)
  {
    v24 = v22 + 1;
  }

  else
  {
    v24 = v20;
  }

  v25 = v24 - 1;
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE888, &qword_23AA14E40);
      (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
      v19 = 0;
      v22 = v25;
      goto LABEL_17;
    }

    v19 = *(v51 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_23A949974(uint64_t a1, uint64_t a2)
{
  sub_23A9493CC();
  v3 = sub_23A8DFAEC(a2);

  if (v3 >> 62)
  {
    v4 = sub_23AA0D7F4();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
LABEL_29:
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EE90360](i, v3);
    }

    else
    {
    }

    sub_23AA0CA94();
  }

LABEL_10:

  v7 = sub_23A8DC460(v6);

  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    while (v9 < *(*(v17 + 80) + 16))
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EE90360](v9, v3);
      }

      else
      {
        if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }
      }

      v11 = sub_23A8DC460(v10);

      if (v9 >= *(v11 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v13 = sub_23A8DC460(v12);

      v15 = sub_23A8DC460(v14);

      v16 = *(v15 + 16);

      if (!v16)
      {
        goto LABEL_27;
      }

      if (++v9 % v16 >= *(v13 + 16))
      {
        goto LABEL_28;
      }

      sub_23AA0C164();
      sub_23AA0C234();

      sub_23AA0CA94();

      if (v8 == v9)
      {
        break;
      }
    }
  }
}

uint64_t sub_23A949DD0()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v2 = [objc_opt_self() redColor];
    v3 = *(v0 + 24);
    type metadata accessor for DebugEntityPools();
    v1 = swift_allocObject();
    v4 = MEMORY[0x277D84F98];
    *(v1 + 16) = 40;
    *(v1 + 24) = v4;
    *(v1 + 32) = xmmword_23AA14B90;
    *(v1 + 48) = v2;
    *(v1 + 56) = v3;
    *(v0 + 88) = v1;
  }

  return v1;
}

void sub_23A949E90(uint64_t a1)
{
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v209.i64[0] = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v182 = &v156 - v3;
  v4 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v208 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v184 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v205 = (&v156 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v8 - 8);
  v181 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v156 - v11;
  MEMORY[0x28223BE20](v13);
  v204 = &v156 - v14;
  MEMORY[0x28223BE20](v15);
  v211 = &v156 - v16;
  MEMORY[0x28223BE20](v17);
  v174 = &v156 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v156 - v20;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  MEMORY[0x28223BE20](v164);
  v163 = &v156 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v23 - 8);
  v160 = &v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v156 - v26;
  v28 = sub_23AA0C0E4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v157 = &v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v156 - v32;
  v159 = v1;
  v34 = sub_23A949DD0();

  sub_23A94DF34(v35, v34);

  v36 = v33;

  v37 = *(a1 + 64);
  v169 = a1 + 64;
  v38 = 1 << *(a1 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & v37;
  v168 = (v38 + 63) >> 6;
  v171 = (v29 + 16);
  v170 = (v29 + 8);
  v162 = (v29 + 56);
  v161 = (v29 + 48);
  v156 = (v29 + 32);
  v41 = v28;
  v208 += 6;
  v180 = (v209.i64[0] + 8);

  v42 = 0;
  v203 = xmmword_23AA11AF0;
  v167 = a1;
  v186 = v12;
  v187 = v21;
  v173 = v27;
  v43 = v40;
  v166 = v28;
  v210 = v4;
  v158 = v36;
  while (1)
  {
    if (!v43)
    {
      do
      {
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        if (v44 >= v168)
        {

          return;
        }

        v43 = *(v169 + 8 * v44);
        ++v42;
      }

      while (!v43);
      v42 = v44;
    }

    v45 = *(v167 + 56);
    v172 = v42;
    v46 = *(v45 + ((v42 << 9) | (8 * __clz(__rbit64(v43)))));
    v47 = qword_27DFAE368;

    if (v47 != -1)
    {
      swift_once();
    }

    v43 &= v43 - 1;
    v48 = qword_27DFC04B0;
    v209.i64[0] = *v171;
    (v209.i64[0])(v36, v46 + qword_27DFC0620, v41);
    swift_beginAccess();
    v49 = v36;
    v50 = *(v48 + 24);
    if (!*(v50 + 16))
    {
      goto LABEL_6;
    }

    v51 = sub_23A9EDD28(v49);
    if ((v52 & 1) == 0)
    {

LABEL_6:

      (*v170)(v49, v41);
      v36 = v49;
      goto LABEL_7;
    }

    v165 = v43;
    v53 = *(*(v50 + 56) + 8 * v51);
    v54 = *v170;

    v55 = v49;
    v56 = v41;
    v199.i64[0] = v54;
    v54(v55, v41);

    v207 = v53;
    v57 = MEMORY[0x277D84F90];
    v58 = MEMORY[0x277D84F90];
    if (*(v53 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) == 2)
    {
      break;
    }

LABEL_38:
    v212 = v57;
    v201 = v58;
    if (v58 >> 62)
    {
      v80 = sub_23AA0D7F4();
    }

    else
    {
      v80 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v165;
    v41 = v56;
    v206 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
    swift_beginAccess();
    v185 = v46;
    if (v80)
    {
      v81 = 0;
      v82 = v201;
      v209.i64[0] = v201 & 0xC000000000000001;
      v202 = (v201 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v209.i64[0])
        {
          v83 = MEMORY[0x23EE90360](v81, v82);
          v84 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v81 >= v202[2])
          {
            goto LABEL_98;
          }

          v83 = *(v82 + 8 * v81 + 32);

          v84 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_97;
          }
        }

        sub_23A8D5194(v207 + v206, v21, &qword_27DFAEB38, &unk_23AA11B60);
        v85 = *v208;
        v86 = v210;
        if ((*v208)(v21, 1, v210) == 1)
        {

          sub_23A8D50D0(v21, &qword_27DFAEB38, &unk_23AA11B60);
          v46 = v185;
        }

        else
        {
          sub_23A8D50D0(v21, &qword_27DFAEB38, &unk_23AA11B60);
          v87 = v174;
          sub_23A8D5194(v83 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, v174, &qword_27DFAEB38, &unk_23AA11B60);
          if (v85(v87, 1, v86) == 1)
          {

            sub_23A8D50D0(v87, &qword_27DFAEB38, &unk_23AA11B60);
          }

          else
          {
            sub_23A8D50D0(v87, &qword_27DFAEB38, &unk_23AA11B60);
            sub_23AA0D944();
            sub_23AA0D974();
            v21 = v187;
            sub_23AA0D984();
            sub_23AA0D954();
          }

          v46 = v185;
          v82 = v201;
        }

        ++v81;
      }

      while (v84 != v80);
      v88 = v212;
      v12 = v186;
      v41 = v166;
      v43 = v165;
    }

    else
    {
      v88 = MEMORY[0x277D84F90];
    }

    if ((v88 & 0x8000000000000000) != 0 || (v88 & 0x4000000000000000) != 0)
    {
      v89 = sub_23AA0D7F4();
      if (v89)
      {
LABEL_60:
        v212 = MEMORY[0x277D84F90];
        sub_23AA0D964();
        if (v89 < 0)
        {
          goto LABEL_100;
        }

        v177 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
        v176 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
        v175 = v88 & 0xC000000000000001;
        v202 = objc_opt_self();
        swift_beginAccess();
        v90 = v88;
        v91 = 0;
        v179 = v90;
        v178 = v89;
        do
        {
          v132 = v208;
          v201 = v91;
          if (v175)
          {
            v133 = MEMORY[0x23EE90360](v91);
          }

          else
          {
            v133 = *(v90 + 8 * v91 + 32);
          }

          v134 = v210;
          v135 = v181;
          *v136.i64 = MEMORY[0x23EE8FF80](*(v133 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition), *(v133 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation), v203);
          v196 = v136;
          v197 = v137;
          v199 = v138;
          v198 = v139;
          v140 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
          swift_beginAccess();
          v141 = sub_23A8D5194(v133 + v140, v211, &qword_27DFAEB38, &unk_23AA11B60);
          v142 = *(v133 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions + 4);
          v143 = v207;
          *v213.columns[0].i64 = MEMORY[0x23EE8FF80](v141, *(v207 + v177), *(v207 + v176), v203);
          v214 = __invert_f4(v213);
          v192 = v214.columns[0];
          v193 = v214.columns[1];
          v194 = v214.columns[2];
          v195 = v214.columns[3];
          v144 = v143 + v206;
          v145 = v204;
          sub_23A8D5194(v144, v204, &qword_27DFAEB38, &unk_23AA11B60);
          sub_23A8D5194(v145, v12, &qword_27DFAEB38, &unk_23AA11B60);
          v146 = *v132;
          v147 = (*v132)(v12, 1, v134);
          v200 = v133;
          if (v147 == 1)
          {
            v148 = v202;
            v149 = [v202 degrees];
            sub_23A8D6C58(0, &qword_27DFAEB50, 0x277CCADA8);
            v150 = v205;
            sub_23AA0BC64();
            v151 = [v148 degrees];
            sub_23AA0BC64();
            *v150 = 0;
            *(v150 + 2) = 0;
            v134 = v210;
            if (v146(v12, 1, v210) != 1)
            {
              sub_23A8D50D0(v12, &qword_27DFAEB38, &unk_23AA11B60);
            }
          }

          else
          {
            sub_23A8D5130(v12, v205);
          }

          sub_23A8D5194(v211, v135, &qword_27DFAEB38, &unk_23AA11B60);
          if (v146(v135, 1, v134) == 1)
          {
            v152 = v202;
            v153 = [v202 degrees];
            sub_23A8D6C58(0, &qword_27DFAEB50, 0x277CCADA8);
            v92 = v184;
            sub_23AA0BC64();
            v154 = [v152 degrees];
            sub_23AA0BC64();
            *v92 = 0;
            *(v92 + 8) = 0;
            if (v146(v135, 1, v134) != 1)
            {
              sub_23A8D50D0(v135, &qword_27DFAEB38, &unk_23AA11B60);
            }
          }

          else
          {
            v92 = v184;
            sub_23A8D5130(v135, v184);
          }

          v93.i64[0] = *v92;
          v209 = v93;
          v94 = *(v92 + 8);
          v95 = v202;
          v96 = [v202 radians];
          v97 = v182;
          v98 = v183;
          sub_23AA0BC84();

          sub_23AA0BC74();
          v100 = v99;
          v101 = *v180;
          v102 = (*v180)(v97, v98);
          *&v100 = v100;
          v102.n128_f32[0] = v142 * -0.5;
          v191 = v102;
          *&v103 = v209.f32[0] + (v94 * cosf(*&v100));
          v190 = v103;
          v104 = v209.f32[1];
          *&v105 = v104 + (v94 * sinf(*&v100));
          v189 = v105;
          v106 = [v95 byte_278B655E4];
          sub_23AA0BC84();

          sub_23AA0BC74();
          v108 = v107;
          v109 = v101(v97, v98);
          *&v108 = v108;
          v109.n128_f32[0] = v142 * 0.5;
          v188 = v109;
          v110.f32[0] = v209.f32[0] + (v94 * cosf(*&v108));
          v209 = v110;
          v111 = sinf(*&v108);
          v112 = vaddq_f32(v198, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v196, *&v190), v197, v191.n128_f32[0]), v199, *&v189));
          v113 = vaddq_f32(v198, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v196, v209.f32[0]), v197, v188.n128_f32[0]), v199, v104 + (v94 * v111)));
          v209 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v192, v112.f32[0]), v193, *v112.f32, 1), v194, v112, 2), v195, v112, 3);
          v199 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v192, v113.f32[0]), v193, *v113.f32, 1), v194, v113, 2), v195, v113, 3);
          v114 = v205;
          LODWORD(v115) = HIDWORD(*v205);
          *&v108 = v199.f32[0] - COERCE_FLOAT(*v205);
          v116 = v199.f32[2] - v115;
          v117 = atan2f(v209.f32[2] - v115, v209.f32[0] - COERCE_FLOAT(*v205));
          v118 = atan2f(v116, *&v108);
          v119 = v117 + 6.2832;
          if (v117 >= 0.0)
          {
            v119 = v117;
          }

          else
          {
            v118 = v118 + 6.2832;
          }

          if (v119 < 6.2832)
          {
            v120 = v119;
          }

          else
          {
            v120 = v119 + -6.2832;
          }

          if (v119 >= 6.2832)
          {
            v118 = v118 + -6.2832;
          }

          if (v118 >= v120)
          {
            v121 = v118;
          }

          else
          {
            v121 = v118 + 6.2832;
          }

          v122 = [v95 radians];
          sub_23AA0BC84();

          sub_23AA0BC74();
          v124 = v123;
          v101(v97, v98);
          v125 = v124;
          if (v120 < v125)
          {
            v120 = v124;
          }

          v126 = [v95 radians];
          sub_23AA0BC84();

          sub_23AA0BC74();
          v128 = v127;
          sub_23A8D50D0(v204, &qword_27DFAEB38, &unk_23AA11B60);
          sub_23A8D50D0(v211, &qword_27DFAEB38, &unk_23AA11B60);
          v101(v97, v98);
          sub_23A94E4FC(v92);
          sub_23A94E4FC(v114);
          v129 = v128;
          if (v121 >= v129)
          {
            v130 = v128;
          }

          else
          {
            v130 = v121;
          }

          v91 = v201 + 1;
          type metadata accessor for CurvedElement();
          v131 = swift_allocObject();
          *(v131 + 16) = v120;
          *(v131 + 20) = v130;
          *(v131 + 24) = vzip2_s32(*v209.f32, *v199.f32);

          sub_23AA0D944();
          sub_23AA0D974();
          sub_23AA0D984();
          sub_23AA0D954();
          v12 = v186;
          v21 = v187;
          v90 = v179;
        }

        while (v178 != v91);

        v155 = v212;
        v41 = v166;
        v43 = v165;
        v46 = v185;
        goto LABEL_94;
      }
    }

    else
    {
      v89 = *(v88 + 16);
      if (v89)
      {
        goto LABEL_60;
      }
    }

    v155 = MEMORY[0x277D84F90];
LABEL_94:
    sub_23A94B5E8(v155, v46);

    v36 = v158;
LABEL_7:
    v42 = v172;
  }

  v59 = *(v48 + 24);
  v212 = MEMORY[0x277D84F90];
  v60 = (v59 + 64);
  v61 = 1 << *(v59 + 32);
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  else
  {
    v62 = -1;
  }

  v63 = v62 & *(v59 + 64);
  v201 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
  v64 = (v61 + 63) >> 6;
  v206 = v59;

  v65 = 0;
  v202 = v60;
  while (v63)
  {
LABEL_29:
    v67 = __clz(__rbit64(v63));
    v63 &= v63 - 1;
    v68 = *(*(v206 + 56) + ((v65 << 9) | (8 * v67)));
    v69 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
    v70 = v173;
    v71 = v166;
    (v209.i64[0])(v173, v207 + v201, v166);
    (*v162)(v70, 0, 1, v71);
    v72 = *(v164 + 48);
    v73 = v163;
    sub_23A8D5194(v68 + v69, v163, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D5194(v173, v73 + v72, &unk_27DFB0970, &qword_23AA14E00);
    v74 = *v161;
    if ((*v161)(v73, 1, v71) == 1)
    {

      sub_23A8D50D0(v173, &unk_27DFB0970, &qword_23AA14E00);
      if (v74(v73 + v72, 1, v71) != 1)
      {

LABEL_23:
        v60 = v202;
        sub_23A8D50D0(v73, &qword_27DFAEC28, &unk_23AA1AA40);
        continue;
      }

      sub_23A8D50D0(v73, &unk_27DFB0970, &qword_23AA14E00);
      v60 = v202;
LABEL_35:
      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      continue;
    }

    v200 = v68;
    v75 = v160;
    sub_23A8D5194(v73, v160, &unk_27DFB0970, &qword_23AA14E00);
    if (v74(v73 + v72, 1, v71) == 1)
    {
      sub_23A8D50D0(v173, &unk_27DFB0970, &qword_23AA14E00);
      (v199.i64[0])(v75, v71);
      goto LABEL_23;
    }

    v76 = v73 + v72;
    v77 = v157;
    (*v156)(v157, v76, v71);
    sub_23A94E558(&qword_27DFAE8C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);

    v78 = v75;
    v198.i32[0] = sub_23AA0D084();
    v79 = v199.i64[0];
    (v199.i64[0])(v77, v71);
    sub_23A8D50D0(v173, &unk_27DFB0970, &qword_23AA14E00);
    v79(v78, v71);
    sub_23A8D50D0(v73, &unk_27DFB0970, &qword_23AA14E00);
    v60 = v202;
    if (v198.i8[0])
    {
      goto LABEL_35;
    }
  }

  while (1)
  {
    v66 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v66 >= v64)
    {

      v58 = v212;
      v12 = v186;
      v21 = v187;
      v56 = v166;
      v57 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    v63 = v60[v66];
    ++v65;
    if (v63)
    {
      v65 = v66;
      goto LABEL_29;
    }
  }

LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

void sub_23A94B5E8(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v53 - v6);
  v8 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_23AA0C0E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A949DD0();
  v65 = sub_23A8DFAEC(a2);

  if (qword_27DFAE368 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v16 = qword_27DFC04B0;
    (*(v13 + 16))(v15, a2 + qword_27DFC0620, v12);
    swift_beginAccess();
    v17 = *(v16 + 24);
    if (!*(v17 + 16))
    {
      break;
    }

    v18 = sub_23A9EDD28(v15);
    if ((v19 & 1) == 0)
    {

      break;
    }

    v54 = v11;
    v20 = *(*(v17 + 56) + 8 * v18);
    v21 = *(v13 + 8);

    v21(v15, v12);

    v22 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
    swift_beginAccess();
    sub_23A8D5194(v20 + v22, v7, &qword_27DFAEB38, &unk_23AA11B60);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      sub_23A8D50D0(v7, &qword_27DFAEB38, &unk_23AA11B60);
      return;
    }

    v11 = v54;
    v23 = sub_23A8D5130(v7, v54);
    *v24.i64 = MEMORY[0x23EE8FF80](v23, *(v20 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition), *(v20 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation), xmmword_23AA11AF0);
    v68 = v25;
    v69 = v24;
    v66 = v27;
    v67 = v26;
    v28 = v55;
    v53 = v20;
    if (v55 >> 62)
    {
LABEL_48:
      v13 = v28 & 0xFFFFFFFFFFFFFF8;
      v58 = sub_23AA0D7F4();
    }

    else
    {
      v13 = v55 & 0xFFFFFFFFFFFFFF8;
      v58 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v57 = v28 & 0xC000000000000001;
    v56 = v28 + 32;
    a2 = v65 & 0xC000000000000001;
    v63 = v65 & 0xFFFFFFFFFFFFFF8;
    v15 = (v65 + 56);
    v9 = 3;
    while (1)
    {
      if (v58 == v12)
      {
LABEL_39:
        sub_23A94E4FC(v11);
        goto LABEL_40;
      }

      if (!v57)
      {
        break;
      }

      v7 = MEMORY[0x23EE90360](v12, v55);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_41;
      }

LABEL_17:
      v32.n128_u64[0] = *v11;
      v70 = v32;
      v33 = v11[2];
      v34 = v7[4];
      v32.n128_f32[0] = v7[6];
      v64 = v32;
      v35 = cosf(v34);
      v36 = sinf(v34);
      if (a2)
      {
        MEMORY[0x23EE90360](v9 - 3, v65);
      }

      else
      {
        if ((v9 - 3) >= *(v63 + 16))
        {
          goto LABEL_43;
        }
      }

      v37 = v70.n128_f32[1];
      v38 = vaddq_f32(v66, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v69, v70.n128_f32[0] + (v33 * v35)), v68, v64.n128_f32[0]), v67, v70.n128_f32[1] + (v33 * v36)));
      v38.i32[3] = v62.n128_i32[3];
      v64 = v38;
      v8 = sub_23AA0C164();
      sub_23AA0C294();

      sub_23AA0CA94();

      v28 = v9 - 2;
      if (v9 - 2 >= *(*(v3 + 88) + 16))
      {
        goto LABEL_38;
      }

      v40 = v7[5];
      v39.n128_f32[0] = v7[6];
      v62 = v39;
      v41 = cosf(v40);
      v42 = sinf(v40);
      if (a2)
      {
        MEMORY[0x23EE90360](v9 - 2, v65);
      }

      else
      {
        if (v28 >= *(v63 + 16))
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }
      }

      v43 = vaddq_f32(v66, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v69, v70.n128_f32[0] + (v33 * v41)), v68, v62.n128_f32[0]), v67, v37 + (v33 * v42)));
      v43.n128_u32[3] = v61.n128_u32[3];
      v62 = v43;
      sub_23AA0C294();

      sub_23AA0CA94();

      v28 = v9 - 1;
      if (v9 - 1 >= *(*(v3 + 88) + 16))
      {
        goto LABEL_38;
      }

      v45 = v7[4];
      v44.n128_f32[0] = v7[7];
      v61 = v44;
      v46 = cosf(v45);
      v47 = sinf(v45);
      if (a2)
      {
        v28 = MEMORY[0x23EE90360](v9 - 1, v65);
      }

      else
      {
        if (v28 >= *(v63 + 16))
        {
          goto LABEL_46;
        }

        v28 = *(v15 - 1);
      }

      v48 = vaddq_f32(v66, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v69, v70.n128_f32[0] + (v33 * v46)), v68, v61.n128_f32[0]), v67, v37 + (v33 * v47)));
      v48.i32[3] = v60.n128_i32[3];
      v61 = v48;
      sub_23AA0C294();

      sub_23AA0CA94();

      if (v9 >= *(*(v3 + 88) + 16))
      {
LABEL_38:
        sub_23A94E4FC(v11);

LABEL_40:

        return;
      }

      v50 = v7[5];
      v49.n128_f32[0] = v7[7];
      v60 = v49;
      v51 = cosf(v50);
      v52 = sinf(v50);
      if (a2)
      {
        MEMORY[0x23EE90360](v9, v65);
      }

      else
      {
        if (v9 >= *(v63 + 16))
        {
          goto LABEL_47;
        }
      }

      v29 = vaddq_f32(v66, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v69, v70.n128_f32[0] + (v33 * v51)), v68, v60.n128_f32[0]), v67, v37 + (v33 * v52)));
      v29.n128_u32[3] = v59.n128_u32[3];
      v70 = v29;
      sub_23AA0C294();

      sub_23AA0CA94();

      ++v12;
      v30 = v9 + 1;
      v31 = *(*(v3 + 88) + 16);
      v9 += 4;
      v15 += 32;
      v60 = v61;
      v61 = v62;
      v62 = v64;
      v59 = v70;
      if (v30 >= v31)
      {
        goto LABEL_39;
      }
    }

    if (v12 >= *(v13 + 16))
    {
      goto LABEL_42;
    }

    v7 = *(v56 + 8 * v12);

    if (!__OFADD__(v12, 1))
    {
      goto LABEL_17;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  (*(v13 + 8))(v15, v12);
}

uint64_t sub_23A94BEE4()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = [objc_opt_self() whiteColor];
    v3 = *(v0 + 24);
    type metadata accessor for DebugEntityPools();
    v1 = swift_allocObject();
    v4 = MEMORY[0x277D84F98];
    *(v1 + 16) = 20;
    *(v1 + 24) = v4;
    *(v1 + 32) = xmmword_23AA14BA0;
    *(v1 + 48) = v2;
    *(v1 + 56) = v3;
    *(v0 + 96) = v1;
  }

  return v1;
}

double sub_23A94BFA4(uint64_t a1)
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  MEMORY[0x28223BE20](v75);
  v84 = v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = v68 - v7;
  v8 = sub_23AA0C0E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v89 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v88 = v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF890, &qword_23AA14E08);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v19 = sub_23A94BEE4();

  sub_23A94DF34(v20, v19);

  if (qword_27DFAE368 != -1)
  {
    goto LABEL_56;
  }

LABEL_2:
  v21 = qword_27DFC04B0;
  swift_beginAccess();
  v91 = v21;

  sub_23A94D0B8(v22);
  v24 = v23;

  v68[1] = v1;
  v25 = *(v1 + 96);

  sub_23A94DF34(v24, v25);

  v1 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(a1 + 64);
  v70 = (v26 + 63) >> 6;
  v94 = (v9 + 16);
  v96 = (v9 + 32);
  v73 = (v9 + 56);
  v72 = (v9 + 48);
  v80 = v9;
  v93 = (v9 + 8);
  v81 = a1;

  v29 = 0;
  v90 = v8;
  v30 = v89;
  v85 = v18;
  v86 = v15;
  v87 = a1 + 64;
  if (!v28)
  {
LABEL_10:
    if (v70 <= v29 + 1)
    {
      v32 = v29 + 1;
    }

    else
    {
      v32 = v70;
    }

    v9 = v32 - 1;
    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v31 >= v70)
      {
        break;
      }

      v28 = *(v1 + 8 * v31);
      ++v29;
      if (v28)
      {
        v29 = v31;
        goto LABEL_18;
      }
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF898, &qword_23AA14E10);
    (*(*(v53 - 8) + 56))(v15, 1, 1, v53);
    v28 = 0;
    v29 = v9;
    goto LABEL_19;
  }

  while (1)
  {
    v31 = v29;
LABEL_18:
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = v33 | (v31 << 6);
    v35 = v81;
    v36 = v80;
    v37 = v88;
    (*(v80 + 16))(v88, *(v81 + 48) + *(v80 + 72) * v34, v8);
    v38 = *(*(v35 + 56) + 8 * v34);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF898, &qword_23AA14E10);
    v40 = *(v39 + 48);
    v41 = *(v36 + 32);
    v15 = v86;
    v41(v86, v37, v8);
    *&v15[v40] = v38;
    (*(*(v39 - 8) + 56))(v15, 0, 1, v39);

    v30 = v89;
    v18 = v85;
LABEL_19:
    sub_23A930208(v15, v18, &qword_27DFAF890, &qword_23AA14E08);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF898, &qword_23AA14E10);
    if ((*(*(v42 - 8) + 48))(v18, 1, v42) == 1)
    {
      break;
    }

    a1 = *(v18 + *(v42 + 48));
    v43 = *v96;
    (*v96)(v30, v18, v8);
    v44 = *(v91 + 24);
    if (!*(v44 + 16))
    {
      goto LABEL_8;
    }

    v45 = sub_23A9EDD28(v30);
    if (v46)
    {
      v71 = v43;
      v47 = *(*(v44 + 56) + 8 * v45);

      v92 = v47;
      v48 = MEMORY[0x277D84F90];
      if (*(v47 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) == 3)
      {
        v49 = *(v91 + 24);
        v97 = MEMORY[0x277D84F90];
        v9 = v49 + 64;
        v50 = 1 << *(v49 + 32);
        if (v50 < 64)
        {
          v51 = ~(-1 << v50);
        }

        else
        {
          v51 = -1;
        }

        v18 = v51 & *(v49 + 64);
        v77 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
        v1 = (v50 + 63) >> 6;
        v82 = v49;

        v52 = 0;
        v15 = v83;
        v78 = v9;
        v76 = v1;
        v79 = a1;
        while (2)
        {
          if (!v18)
          {
            while (1)
            {
              v54 = v52 + 1;
              if (__OFADD__(v52, 1))
              {
                break;
              }

              if (v54 >= v1)
              {

                v48 = v97;
                v30 = v89;
                v18 = v85;
                v15 = v86;
                goto LABEL_46;
              }

              v18 = *(v9 + 8 * v54);
              ++v52;
              if (v18)
              {
                v52 = v54;
                goto LABEL_36;
              }
            }

LABEL_55:
            __break(1u);
LABEL_56:
            swift_once();
            goto LABEL_2;
          }

LABEL_36:
          v55 = __clz(__rbit64(v18));
          v18 &= v18 - 1;
          v56 = *(*(v82 + 56) + ((v52 << 9) | (8 * v55)));
          v57 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
          v58 = v90;
          (*v94)(v15, v92 + v77, v90);
          (*v73)(v15, 0, 1, v58);
          v59 = *(v75 + 48);
          v95 = v56;
          v60 = v84;
          sub_23A8D5194(v56 + v57, v84, &unk_27DFB0970, &qword_23AA14E00);
          sub_23A8D5194(v15, v60 + v59, &unk_27DFB0970, &qword_23AA14E00);
          v61 = *v72;
          if ((*v72)(v60, 1, v58) == 1)
          {

            sub_23A8D50D0(v15, &unk_27DFB0970, &qword_23AA14E00);
            if (v61(v60 + v59, 1, v58) == 1)
            {
              sub_23A8D50D0(v60, &unk_27DFB0970, &qword_23AA14E00);
              a1 = v79;
              v9 = v78;
              goto LABEL_41;
            }

            v8 = v90;
            a1 = v79;
            v9 = v78;
            v15 = v83;
LABEL_29:
            sub_23A8D50D0(v84, &qword_27DFAEC28, &unk_23AA1AA40);
          }

          else
          {
            sub_23A8D5194(v60, v74, &unk_27DFB0970, &qword_23AA14E00);
            if (v61(v60 + v59, 1, v58) == 1)
            {
              v15 = v83;
              sub_23A8D50D0(v83, &unk_27DFB0970, &qword_23AA14E00);
              (*v93)(v74, v58);
              v8 = v58;
              a1 = v79;
              v9 = v78;
              goto LABEL_29;
            }

            v62 = v60 + v59;
            v63 = v88;
            v71(v88, v62, v58);
            sub_23A94E558(&qword_27DFAE8C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);

            v64 = v74;
            v69 = sub_23AA0D084();
            v65 = *v93;
            (*v93)(v63, v58);
            sub_23A8D50D0(v83, &unk_27DFB0970, &qword_23AA14E00);
            v65(v64, v58);
            sub_23A8D50D0(v60, &unk_27DFB0970, &qword_23AA14E00);
            a1 = v79;
            v9 = v78;
            if (v69)
            {
LABEL_41:
              sub_23AA0D944();
              sub_23AA0D974();
              sub_23AA0D984();
              sub_23AA0D954();
            }

            else
            {
            }

            v8 = v90;
            v15 = v83;
          }

          v1 = v76;
          continue;
        }
      }

LABEL_46:
      if (v48 >> 62)
      {
        v66 = sub_23AA0D7F4();
      }

      else
      {
        v66 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v66 > 0)
      {
        sub_23A94CAEC(v92, a1);

        goto LABEL_8;
      }

      (*v93)(v30, v8);

      v1 = v87;
      if (!v28)
      {
        goto LABEL_10;
      }
    }

    else
    {

LABEL_8:

      (*v93)(v30, v8);
      v1 = v87;
      if (!v28)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_23A94CAEC(uint64_t a1, uint64_t a2)
{
  sub_23A94BEE4();
  v4 = sub_23A8DFAEC(a2);

  if (v4 >> 62)
  {
    v5 = sub_23AA0D7F4();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
LABEL_24:
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EE90360](i, v4);
    }

    else
    {
    }

    sub_23AA0CA94();
  }

LABEL_10:
  v7 = sub_23A9C28D4();
  v8 = v7;
  v9 = *(v7 + 2);
  if (v9)
  {
    v10 = 0;
    v11 = v7 + 3;
    while (v10 < *(*(v2 + 96) + 16))
    {
      if (v10 >= *(v8 + 2))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EE90360](v10, v4);
      }

      else
      {
        if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }
      }

      ++v10;
      sub_23AA0C164();
      sub_23AA0C234();

      sub_23AA0CA94();

      v11 += 2;
      if (v9 == v10)
      {
        break;
      }
    }
  }
}

void *sub_23A94CE88()
{

  return v0;
}

uint64_t sub_23A94CEF0()
{
  sub_23A94CE88();

  return swift_deallocClassInstance();
}

unint64_t sub_23A94CF5C()
{
  result = qword_27DFAF870;
  if (!qword_27DFAF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF870);
  }

  return result;
}

unint64_t sub_23A94CFB4()
{
  result = qword_27DFAF878;
  if (!qword_27DFAF878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF878);
  }

  return result;
}

unint64_t sub_23A94D00C()
{
  result = qword_27DFAF880;
  if (!qword_27DFAF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF880);
  }

  return result;
}

unint64_t sub_23A94D064()
{
  result = qword_27DFAF888;
  if (!qword_27DFAF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF888);
  }

  return result;
}

void sub_23A94D0B8(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_23A94DB1C(v7, v4, v2);
      MEMORY[0x23EE91710](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_23A94D218(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_23A94D218(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v58[0] = a2;
  v59 = a1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  MEMORY[0x28223BE20](v77);
  v87 = v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v58 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8B0, &qword_23AA14E28);
  MEMORY[0x28223BE20](v68);
  v72 = v58 - v10;
  v11 = sub_23AA0C0E4();
  MEMORY[0x28223BE20](v11);
  v64 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v71 = v58 - v17;
  v60 = 0;
  v18 = 0;
  v19 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(a3 + 64);
  v61 = (v20 + 63) >> 6;
  v85 = v15 + 16;
  v75 = (v15 + 48);
  v76 = (v15 + 56);
  v63 = (v15 + 32);
  v67 = v15;
  v73 = (v15 + 8);
  v66 = a3 + 64;
  v62 = a3;
  v86 = v9;
  v74 = v14;
  while (1)
  {
    if (v22)
    {
      v69 = (v22 - 1) & v22;
      v70 = v18;
      v23 = __clz(__rbit64(v22)) | (v18 << 6);
      goto LABEL_12;
    }

    v24 = v18;
    do
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v25 >= v61)
      {
        sub_23A94DB94(v59, v58[0], v60, a3);
        return;
      }

      v26 = *(v19 + 8 * v25);
      ++v24;
    }

    while (!v26);
    v69 = (v26 - 1) & v26;
    v70 = v25;
    v23 = __clz(__rbit64(v26)) | (v25 << 6);
LABEL_12:
    v27 = *(v67 + 16);
    v28 = v71;
    v27(v71, *(a3 + 48) + *(v67 + 72) * v23, v11, v16);
    v29 = *(a3 + 56);
    v65 = v23;
    v30 = *(v29 + 8 * v23);
    v31 = v11;
    v32 = v72;
    v84 = v27;
    (v27)(v72, v28, v31);
    *(v32 + *(v68 + 48)) = v30;
    if (*(v30 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) == 3)
    {
      v33 = qword_27DFAE368;
      swift_retain_n();
      if (v33 != -1)
      {
        swift_once();
      }

      v34 = qword_27DFC04B0;
      swift_beginAccess();
      v35 = *(v34 + 24);
      v89 = MEMORY[0x277D84F90];
      v36 = v35 + 64;
      v37 = 1 << *(v35 + 32);
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v39 = v38 & *(v35 + 64);
      v80 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
      v40 = (v37 + 63) >> 6;
      v83 = v35;

      v41 = 0;
      v11 = v74;
      v81 = v36;
      v78 = v30;
      v79 = v40;
      while (2)
      {
        if (!v39)
        {
          while (1)
          {
            v42 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              __break(1u);
              goto LABEL_46;
            }

            if (v42 >= v40)
            {
              break;
            }

            v39 = *(v36 + 8 * v42);
            ++v41;
            if (v39)
            {
              v41 = v42;
              goto LABEL_27;
            }
          }

          v55 = v89;
          a3 = v62;
          if (!(v89 >> 62))
          {
            goto LABEL_37;
          }

LABEL_43:
          v56 = sub_23AA0D7F4();
          v11 = v74;
          goto LABEL_38;
        }

LABEL_27:
        v43 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v44 = *(*(v83 + 56) + ((v41 << 9) | (8 * v43)));
        v45 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
        v46 = v30 + v80;
        v47 = v86;
        v84(v86, v46, v11);
        (*v76)(v47, 0, 1, v11);
        v48 = v11;
        v49 = *(v77 + 48);
        v88 = v44;
        v50 = v87;
        sub_23A8D5194(v44 + v45, v87, &unk_27DFB0970, &qword_23AA14E00);
        sub_23A8D5194(v47, v50 + v49, &unk_27DFB0970, &qword_23AA14E00);
        v51 = *v75;
        if ((*v75)(v50, 1, v48) == 1)
        {

          sub_23A8D50D0(v47, &unk_27DFB0970, &qword_23AA14E00);
          if (v51(v50 + v49, 1, v48) == 1)
          {
            sub_23A8D50D0(v50, &unk_27DFB0970, &qword_23AA14E00);
            v30 = v78;
            goto LABEL_32;
          }

          v11 = v48;

LABEL_20:
          v30 = v78;
          sub_23A8D50D0(v87, &qword_27DFAEC28, &unk_23AA1AA40);
        }

        else
        {
          sub_23A8D5194(v50, v82, &unk_27DFB0970, &qword_23AA14E00);
          if (v51(v50 + v49, 1, v48) == 1)
          {
            sub_23A8D50D0(v86, &unk_27DFB0970, &qword_23AA14E00);
            (*v73)(v82, v48);
            v11 = v48;
            goto LABEL_20;
          }

          v52 = v64;
          (*v63)(v64, v50 + v49, v48);
          sub_23A94E558(&qword_27DFAE8C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);

          v53 = sub_23AA0D084();
          v54 = *v73;
          (*v73)(v52, v48);
          sub_23A8D50D0(v86, &unk_27DFB0970, &qword_23AA14E00);
          v54(v82, v48);
          sub_23A8D50D0(v50, &unk_27DFB0970, &qword_23AA14E00);
          v30 = v78;
          if (v53)
          {
LABEL_32:
            sub_23AA0D944();
            sub_23AA0D974();
            sub_23AA0D984();
            sub_23AA0D954();
          }

          else
          {
          }

          v11 = v74;
        }

        v36 = v81;
        v40 = v79;
        continue;
      }
    }

    swift_retain_n();
    v55 = MEMORY[0x277D84F90];
    v11 = v74;
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_43;
    }

LABEL_37:
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:

    sub_23A8D50D0(v72, &qword_27DFAF8B0, &qword_23AA14E28);

    (*v73)(v71, v11);
    v19 = v66;
    v18 = v70;
    v22 = v69;
    if (v56 >= 1)
    {
      *(v59 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
      if (__OFADD__(v60++, 1))
      {
        break;
      }
    }
  }

LABEL_47:
  __break(1u);
}

void *sub_23A94DB1C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_23A94D218(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_23A94DB94(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = sub_23AA0C0E4();
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = &v33 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF080, &qword_23AA14E30);
  result = sub_23AA0DA44();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_23A94E558(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v42 = v23;

    result = sub_23AA0D054();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_23A94DF34(uint64_t a1, uint64_t a2)
{
  v57 = sub_23AA0C0E4();
  v4 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8A0, &qword_23AA14E18);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  swift_beginAccess();
  v15 = *(a2 + 24);
  v16 = *(v15 + 64);
  v50 = v15 + 64;
  v51 = v4;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v44 = (v17 + 63) >> 6;
  v46 = v4 + 16;
  v56 = (v4 + 32);
  v52 = (v4 + 8);
  v49 = v15;

  v20 = 0;
  v53 = v14;
  v54 = v6;
  v47 = v11;
  v45 = a2;
  v55 = a1;
  v21 = v50;
  if (!v19)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v22 = v20;
LABEL_16:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v22 << 6);
      v27 = v49;
      v28 = v51;
      (*(v51 + 16))(v48, *(v49 + 48) + *(v51 + 72) * v26, v57);
      v29 = *(*(v27 + 56) + 8 * v26);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8A8, &qword_23AA14E20);
      v31 = *(v30 + 48);
      v11 = v47;
      (*(v28 + 32))();
      *&v11[v31] = v29;
      (*(*(v30 - 8) + 56))(v11, 0, 1, v30);

      v14 = v53;
      v6 = v54;
      a1 = v55;
LABEL_17:
      sub_23A930208(v11, v14, &qword_27DFAF8A0, &qword_23AA14E18);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8A8, &qword_23AA14E20);
      if ((*(*(v32 - 8) + 48))(v14, 1, v32) == 1)
      {

        return;
      }

      v33 = *&v14[*(v32 + 48)];
      (*v56)(v6, v14, v57);
      if (!*(a1 + 16))
      {
        break;
      }

      sub_23A9EDD28(v6);
      if ((v34 & 1) == 0)
      {
        break;
      }

      (*v52)(v6, v57);

      v21 = v50;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

    if (v33 >> 62)
    {
      v35 = sub_23AA0D7F4();
    }

    else
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v35)
    {
      if (v35 < 1)
      {
        goto LABEL_38;
      }

      v36 = 0;
      do
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          MEMORY[0x23EE90360](v36, v33);
        }

        else
        {
        }

        ++v36;
        sub_23AA0C164();
        sub_23AA0C204();
      }

      while (v35 != v36);
    }

    v37 = v45;
    swift_beginAccess();
    v6 = v54;
    v38 = sub_23A9EDD28(v54);
    a1 = v55;
    v14 = v53;
    if (v39)
    {
      v40 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v37 + 24);
      v58 = v42;
      *(v37 + 24) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23A90D874();
        v42 = v58;
      }

      (*(v51 + 8))(*(v42 + 48) + *(v51 + 72) * v40, v57);

      sub_23A90BA78(v40, v42);
      *(v37 + 24) = v42;
    }

    swift_endAccess();
    (*v52)(v6, v57);
    v21 = v50;
  }

  while (v19);
LABEL_8:
  if (v44 <= v20 + 1)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v44;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v44)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8A8, &qword_23AA14E20);
      (*(*(v43 - 8) + 56))(v11, 1, 1, v43);
      v19 = 0;
      v20 = v24;
      goto LABEL_17;
    }

    v19 = *(v21 + 8 * v22);
    ++v20;
    if (v19)
    {
      v20 = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_23A94E4FC(uint64_t a1)
{
  v2 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A94E558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ARViewCameraEntity(uint64_t a1)
{
  result = qword_27DFAF8D0;
  if (!qword_27DFAF8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

CGFloat sub_23A94E62C(void *a1, float32x4_t a2)
{
  v15 = a2;
  v3 = sub_23AA0C184();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C9D4();
  v17 = __invert_f4(v16);
  v15 = vaddq_f32(v17.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17.columns[0], v15.f32[0]), v17.columns[1], *v15.f32, 1), v17.columns[2], v15, 2));
  sub_23AA0C9A4();
  sub_23AA0C114();
  (*(v4 + 8))(v6, v3);
  RECustomMatrixCameraComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RECustomMatrixCameraComponentGetProjectionMatrix();
  v11 = vaddq_f32(v10, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, v15.f32[0]), v8, *v15.f32, 1), v9, v15, 2));
  v12 = ((v11.f32[0] / v11.f32[3]) + 1.0) * 0.5;
  [a1 bounds];
  v13 = CGRectGetWidth(v18) * v12;
  [a1 bounds];
  CGRectGetHeight(v19);
  return v13;
}

unint64_t sub_23A94E7E8()
{
  v0 = sub_23AA0C184();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C9A4();
  sub_23AA0C114();
  (*(v1 + 8))(v3, v0);
  RECameraViewDescriptorsComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RECameraViewDescriptorsComponentClearCameraViewDescriptors();
  RECameraViewDescriptorsComponentAddViewDescriptor();
  v4 = RECameraViewDescriptorsComponentCameraViewDescriptorCopySettingStruct();
  RERenderGraphDataStructAddFloat4();
  MEMORY[0x23EE90D30](v4, "disableTonemapping", 1);
  RECameraViewDescriptorsComponentCameraViewDescriptorSetSettingStruct();
  result = sub_23AA0C914();
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    RECameraViewDescriptorsComponentAddSpecifyCommandFromLayer();
    return RERelease();
  }

  return result;
}

uint64_t sub_23A94E9A8(__n128 a1)
{
  sub_23AA0CAC4();

  return swift_deallocClassInstance();
}

unint64_t sub_23A94E9F4()
{
  result = qword_27DFAF8E0;
  if (!qword_27DFAF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF8E0);
  }

  return result;
}

uint64_t sub_23A94EA48(int a1)
{
  if ((a1 & 0x66) == 0x64)
  {
    v1 = a1 | 2;
  }

  else
  {
    v1 = a1;
  }

  if ((~a1 & 0x62) == 0)
  {
    v1 |= 4u;
  }

  if ((~a1 & 0x46) == 0)
  {
    v1 |= 0x20u;
  }

  if ((~a1 & 0x26) == 0)
  {
    v1 |= 0x40u;
  }

  if (~a1 & 0x91 | v1 & 8)
  {
    v2 = v1 | ((~a1 & 0x98 | v1 & 1) == 0);
  }

  else
  {
    v2 = v1 | ((~a1 & 0x98 | v1 & 1) == 0) | 8;
  }

  if ((~a1 & 0x89) == 0)
  {
    v2 |= 0x10u;
  }

  if ((~a1 & 0x19) == 0)
  {
    v2 |= 0x80u;
  }

  if ((~a1 & 0xC8) == 0)
  {
    v2 |= 4u;
  }

  if ((~a1 & 0x31) == 0)
  {
    v2 |= 2u;
  }

  if ((~a1 & 0xC4) == 0)
  {
    v2 |= 8u;
  }

  if (~a1 & 0x8C | v2 & 0x40)
  {
    v3 = v2 | ((~a1 & 0x32 | v2 & 1) == 0);
  }

  else
  {
    v3 = v2 | ((~a1 & 0x32 | v2 & 1) == 0) | 0x40;
  }

  if ((~a1 & 0x13) == 0)
  {
    v3 |= 0x20u;
  }

  if ((~a1 & 0x4C) == 0)
  {
    v3 |= 0x80u;
  }

  if ((~a1 & 0x23) == 0)
  {
    v3 |= 0x10u;
  }

  if ((~a1 & 0xD0) == 0)
  {
    v3 |= 0x20u;
  }

  if ((~a1 & 0xB0) == 0)
  {
    v3 |= 0x40u;
  }

  if ((~a1 & 0xE0) == 0)
  {
    v3 |= 0x10u;
  }

  if ((~a1 & 0x70) == 0)
  {
    v3 |= 0x80u;
  }

  if ((~a1 & 0xD) == 0)
  {
    v3 |= 2u;
  }

  if ((~a1 & 0xB) == 0)
  {
    v3 |= 4u;
  }

  v4 = v3 | ((~a1 & 0xE | v3 & 1) == 0);
  if (v3 & 8 | ~a1 & 7)
  {
    return v4;
  }

  else
  {
    return v4 | 8;
  }
}

uint64_t sub_23A94EC08(int a1)
{
  if (a1 == 0xFF)
  {
    return 15;
  }

  v3 = (~a1 & 0x22) == 0;
  if ((~a1 & 0x11) == 0)
  {
    v3 = 1;
  }

  if ((~a1 & 0x44) != 0 && (a1 & 0x88) != 0x88)
  {
    if (v3)
    {
      result = 2;
LABEL_11:
      if ((~a1 & 0x60) != 0 && (a1 & 0x90) != 0x90)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    LODWORD(result) = 0;
    if ((~a1 & 0x60) != 0 && (a1 & 0x90) != 0x90)
    {
      result = 0;
      goto LABEL_20;
    }

LABEL_23:
    result = result | 8;
LABEL_24:
    v4 = (~a1 & 9) == 0 || (~a1 & 6) == 0;
    if (v4 && (result & 4) == 0)
    {
      return result | 4;
    }

    return result;
  }

  if (v3)
  {
    result = 3;
    goto LABEL_11;
  }

  result = 1;
  if ((~a1 & 0x60) == 0 || (a1 & 0x90) == 0x90)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((~a1 & 6) == 0 || (a1 & 9) == 9)
  {
    return result | 4;
  }

  return result;
}

void sub_23A94ED3C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_23AA0D9C4();

    if (v2)
    {
      type metadata accessor for ScanEntityDebugUtility();
      swift_dynamicCast();
    }
  }

  else if (*(a2 + 16))
  {
    sub_23A9EDC7C(a1);
    if (v3)
    {
    }
  }
}

void *sub_23A94EDF0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_23AA0D9C4();

    if (v3)
    {
      type metadata accessor for CVPixelBufferPool(0);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_23A9EE458(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

void *sub_23A94EEA8(uint64_t a1, void *a2)
{
  v5 = 10;
  *(v2 + 40) = 10;
  v11 = MEMORY[0x277D84F90];
  sub_23AA0C3F4();
  do
  {
    sub_23AA0C3A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23AA10FC0;
    *(v6 + 56) = sub_23AA0C444();
    *(v6 + 64) = MEMORY[0x277CDAC30];
    __swift_allocate_boxed_opaque_existential_1((v6 + 32));
    v7 = a2;
    sub_23AA0C434();
    sub_23AA0C164();
    swift_allocObject();
    sub_23AA0C154();
    sub_23AA0CAB4();
    sub_23AA0C214();
    sub_23AA0CA94();

    MEMORY[0x23EE8FD70](v8);
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23AA0D314();
    }

    sub_23AA0D334();

    --v5;
  }

  while (v5);
  result = v10;
  v10[2] = v11;
  v10[3] = a1;
  v10[4] = v7;
  return result;
}

uint64_t sub_23A94F07C(uint64_t a1)
{
  swift_beginAccess();
  v3 = MEMORY[0x277CDAC30];
  while (1)
  {
    v4 = *(v1 + 16);
    if (v4 >> 62)
    {
      break;
    }

    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
      goto LABEL_8;
    }

LABEL_4:
    v6 = *(v1 + 32);
    sub_23AA0C3F4();
    sub_23AA0C3A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_23AA10FC0;
    *(v7 + 56) = sub_23AA0C444();
    *(v7 + 64) = v3;
    __swift_allocate_boxed_opaque_existential_1((v7 + 32));
    v8 = v6;
    sub_23AA0C434();
    sub_23AA0C164();
    swift_allocObject();
    sub_23AA0C154();
    sub_23AA0CAB4();
    sub_23AA0C214();
    sub_23AA0CA94();
    swift_beginAccess();

    MEMORY[0x23EE8FD70](v9);
    if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23AA0D314();
    }

    sub_23AA0D334();
    swift_endAccess();
  }

  result = sub_23AA0D7F4();
  if (result <= a1)
  {
    goto LABEL_4;
  }

LABEL_8:
  v10 = *(v1 + 16);
  if ((v10 & 0xC000000000000001) != 0)
  {

    v11 = MEMORY[0x23EE90360](a1, v10);

    return v11;
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v11 = *(v10 + 8 * a1 + 32);

      return v11;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23A94F2E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A94F354()
{
  if (dword_27DFC06F8)
  {
    type metadata accessor for ScanEntityDebugUtilityManager();
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x277D84F98];
    *(result + 24) = 1;
  }

  else
  {
    result = 0;
  }

  qword_27DFC0700 = result;
  return result;
}

void sub_23A94F3AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23AA0C0E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v3 + 16);

  sub_23A94ED3C(a1, v10);
  v12 = v11;

  if (v12)
  {
    goto LABEL_13;
  }

  (*(v7 + 16))(v9, a2, v6);

  v14 = sub_23A950504(v13, v9);
  v15 = *(v3 + 24);
  v16 = *(v14 + 16);
  *(v14 + 16) = v15;
  if (v15 != v16)
  {
    sub_23AA0CA94();
    if (*(v14 + 24))
    {

      sub_23AA0CA94();
    }
  }

  swift_beginAccess();
  v17 = *(v3 + 16);
  if ((v17 & 0xC000000000000001) == 0)
  {

    goto LABEL_12;
  }

  if (v17 < 0)
  {
    v18 = *(v3 + 16);
  }

  else
  {
    v18 = v17 & 0xFFFFFFFFFFFFFF8;
  }

  v19 = sub_23AA0D7F4();
  if (!__OFADD__(v19, 1))
  {
    *(v3 + 16) = sub_23A905BDC(v18, v19 + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v3 + 16);
    sub_23A9D991C(v14, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v22;
    swift_endAccess();
LABEL_13:

    return;
  }

  __break(1u);
}

uint64_t sub_23A94F5B8()
{

  return swift_deallocClassInstance();
}

void *sub_23A94F614()
{
  if (*(v0 + 24))
  {
    sub_23AA0C164();

    sub_23AA0C204();
  }

  return v0;
}

uint64_t sub_23A94F6C0()
{
  sub_23A94F614();

  return swift_deallocClassInstance();
}

uint64_t sub_23A94F714(uint64_t a1, uint64_t a2, int8x16_t a3)
{
  v4 = v3;
  sub_23AA0C3F4();
  v5 = objc_opt_self();
  [v5 systemFontSize];
  v6 = [v5 systemFontOfSize_];
  sub_23AA0C3C4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23AA10FC0;
  v8 = objc_opt_self();

  v9 = [v8 whiteColor];
  v10 = sub_23AA0C444();
  v11 = MEMORY[0x277CDAC30];
  *(v7 + 56) = v10;
  *(v7 + 64) = v11;
  __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  sub_23AA0C434();
  sub_23AA0C164();
  swift_allocObject();
  v12 = sub_23AA0C154();
  *&v13 = *a3.i32 + (*(v4 + 64) * -0.5);
  v14 = vadd_f32(vext_s8(*a3.i8, *&vextq_s8(a3, a3, 8uLL), 4uLL), 0x3C23D70A00000000);
  DWORD1(v13) = v14.i32[0];
  *(&v13 + 1) = v14.u32[1];
  v25 = v13;
  v15 = sub_23AA0C2A4();
  *(v16 + 32) = v25;
  v15(v27, 0);
  v17 = *(v4 + 64);
  sub_23AA0C3E4();
  sub_23AA0C144();
  *v19.i32 = v17 / v18;
  v20 = vdupq_lane_s32(v19, 0);
  v20.i32[3] = 0;
  v26 = v20;
  v21 = sub_23AA0C2A4();
  *v22 = v26;
  v21(v27, 0);
  type metadata accessor for ScanEntity(0);
  sub_23AA0C214();

  return v12;
}

void *sub_23A94F9A0()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = objc_opt_self();

    v4 = [v3 systemYellowColor];
    type metadata accessor for LinePool();
    swift_allocObject();
    v1 = sub_23A94EEA8(v2, v4);
    *(v0 + 72) = v1;
  }

  return v1;
}

void *sub_23A94FA5C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = objc_opt_self();

    v4 = [v3 redColor];
    type metadata accessor for LinePool();
    swift_allocObject();
    v1 = sub_23A94EEA8(v2, v4);
    *(v0 + 80) = v1;
  }

  return v1;
}

void *sub_23A94FB18()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = objc_opt_self();

    v4 = [v3 greenColor];
    type metadata accessor for LinePool();
    swift_allocObject();
    v1 = sub_23A94EEA8(v2, v4);
    *(v0 + 88) = v1;
  }

  return v1;
}

void *sub_23A94FBD4()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = objc_opt_self();

    v4 = [v3 cyanColor];
    type metadata accessor for LinePool();
    swift_allocObject();
    v1 = sub_23A94EEA8(v2, v4);
    *(v0 + 96) = v1;
  }

  return v1;
}

void sub_23A94FC90(uint64_t a1)
{
  v3 = type metadata accessor for LineAnimation(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA12120;
  *(inited + 32) = sub_23A94F9A0();
  v34 = inited + 32;
  *(inited + 40) = sub_23A94FA5C();
  *(inited + 48) = sub_23A94FBD4();
  v35 = v1;
  *(inited + 56) = sub_23A94FB18();
  v37 = MEMORY[0x277D84F90];
  sub_23A975EC4(0, 4, 0);
  v8 = v37;
  v36 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) == 0 && *((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v32 = v4;
  v33 = a1;
  for (i = 0; i != 4; ++i)
  {
    if (v36)
    {
      v10 = MEMORY[0x23EE90360](i, inited);
    }

    else
    {
      v10 = *(v34 + 8 * i);
    }

    swift_beginAccess();
    v11 = *(v10 + 16);
    if (v11 >> 62)
    {
      v12 = sub_23AA0D7F4();
      if (!v12)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    if (v12 < 1)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    for (j = 0; j != v12; ++j)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EE90360](j, v11);
      }

      else
      {
      }

      sub_23AA0CA94();
    }

LABEL_18:
    v37 = v8;
    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      sub_23A975EC4((v14 > 1), v15 + 1, 1);
      v8 = v37;
    }

    *(v8 + 16) = v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF8E8, &qword_23AA15030);
  v17 = swift_initStackObject();
  v17[1] = xmmword_23AA11C20;
  v17[2] = 0u;
  v18 = v17 + 2;
  v17[3] = 0u;
  v19 = *(v33 + 16);
  if (v19)
  {
    v20 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v21 = *(v32 + 72);
    do
    {
      sub_23A9400FC(v20, v6);
      if (*v6 == 1)
      {
        if (v6[104] > 1u)
        {
          if (v6[104] == 2)
          {
            v22 = v35[12];

            v23 = 2;
          }

          else
          {
            v22 = v35[9];

            v23 = 0;
          }
        }

        else if (v6[104])
        {
          v22 = v35[10];

          v23 = 1;
        }

        else
        {
          v22 = v35[11];

          v23 = 3;
        }

        v24 = *(v17 + 2);
        if (v23 >= v24)
        {
          goto LABEL_38;
        }

        v37 = *(v18 + v23);

        sub_23A9500E8(v6, v25, v26, v27, v28, v29, v22, &v37);

        v30 = qword_23AA15038[v6[104]];
        v31 = v37;

        sub_23A940160(v6);
        if (v30 >= v24)
        {
          goto LABEL_39;
        }

        *(v18 + v30) = v31;
      }

      else
      {
        sub_23A940160(v6);
      }

      v20 += v21;
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_23A9500E8(uint64_t result, double a2, __n128 a3, double a4, double a5, __n128 a6, uint64_t a7, uint64_t *a8)
{
  v8 = *(result + 112);
  v9 = v8[1].i64[0];
  if (v9)
  {
    v10 = v9 - 1;
    if (v9 != 1)
    {
      v12 = v8 + 3;
      v13 = 0;
      do
      {
        v14 = vsubq_f32(*v12, v12[-1]);
        v14.f32[2] = COERCE_FLOAT(v12->i64[1]) - COERCE_FLOAT(v12[-1].i64[1]);
        v15 = vmulq_f32(v14, v14);
        if (sqrtf(v15.f32[2] + vaddv_f32(*v15.f32)) != 0.0)
        {
          v19 = a6.n128_u32[3];
          v17 = v13;
          v18 = a3.n128_u32[3];
          v16 = *a8;
          sub_23A94F07C(*a8);
          sub_23AA0C164();
          sub_23AA0C234();

          sub_23AA0CA94();

          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_10;
          }

          *a8 = v16 + 1;
          v13 = v17;
          a3.n128_u32[3] = v18;
          a6.n128_u32[3] = v19;
        }

        ++v12;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_23A95038C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_23AA0D1F4();
  if (a2)
  {
    a1 = 15;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_23A950448(uint64_t a1)
{
  *(v1 + 16) = 1;
  *(v1 + 24) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 1056964608;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 40) = a1;
  sub_23AA0CAB4();
  swift_allocObject();

  *(v1 + 32) = sub_23AA0C1A4();
  type metadata accessor for ScanEntity(0);

  sub_23AA0C214();

  return v1;
}

uint64_t sub_23A950504(uint64_t a1, uint64_t a2)
{
  v3 = sub_23AA0C074();
  v6 = sub_23A95038C(6uLL, v3, v4, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x23EE8FC60](v6, v8, v10, v12);
  v15 = v14;

  type metadata accessor for ScanEntityDebugUtility();
  swift_allocObject();

  v17 = sub_23A950448(v16);

  *(v17 + 48) = v13;
  *(v17 + 56) = v15;

  *(v17 + 64) = 1056964608;
  v18 = sub_23A94F714(v13, v15, 0);

  v19 = sub_23AA0C0E4();
  (*(*(v19 - 8) + 8))(a2, v19);
  *(v17 + 24) = v18;

  return v17;
}

id sub_23A950668()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v0 setCornerRadius_];
  [v0 setCornerCurve_];
  [v0 setCompositingFilter_];
  v1 = [objc_opt_self() blackColor];
  v2 = [v1 CGColor];

  [v0 setBackgroundColor_];
  return v0;
}

id sub_23A95074C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v0 setBorderWidth_];
  [v0 setCornerRadius_];
  [v0 setCornerCurve_];
  v1 = objc_opt_self();
  v2 = [v1 whiteColor];
  v3 = [v2 CGColor];

  [v0 setBorderColor_];
  v4 = [v1 whiteColor];
  v5 = [v4 CGColor];

  [v0 setBackgroundColor_];
  return v0;
}

id sub_23A95087C()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  *(v0 + 64) = v2 == 1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_23AA0D104();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4 withConfiguration:0];

  return v6;
}

void sub_23A9509B0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0x3FF0000000000000;
  *(v0 + 32) = sub_23A950668();
  v1 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v1 setCornerRadius_];
  [v1 setMasksToBounds_];
  [v1 setCornerCurve_];
  *(v0 + 40) = v1;
  v2 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v2 setAllowsEdgeAntialiasing_];
  v3 = [objc_opt_self() whiteColor];
  v4 = [v3 CGColor];

  [v2 setBackgroundColor_];
  CGAffineTransformMakeRotation(&v20, 1.09955743);
  [v2 setAffineTransform_];
  *(v0 + 48) = v2;
  *(v0 + 56) = sub_23A95074C();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  sub_23A951D24(&v20);
  v5 = v22;
  *(v0 + 216) = v23;
  v6 = v25;
  *(v0 + 232) = v24;
  *(v0 + 248) = v6;
  v7 = *&v20.a;
  *(v0 + 152) = *&v20.c;
  v8 = v21;
  *(v0 + 168) = *&v20.tx;
  *(v0 + 184) = v8;
  *(v0 + 200) = v5;
  *(v0 + 264) = v26;
  *(v0 + 136) = v7;
  *(v0 + 268) = 0;
  *(v0 + 272) = 1;
  *(v0 + 280) = 0x4052000000000000;
  [*(v0 + 40) addSublayer_];
  v9 = sub_23A95087C();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v12 = *(v0 + 16);
    *(v0 + 16) = v11;
    v13 = v11;

    if (v13)
    {
      v14 = [v10 CGImage];
      [v13 setContents_];

      v15 = *(v0 + 16);
      if (v15)
      {
        [v15 setAllowsEdgeAntialiasing_];
        if (*(v0 + 16))
        {
          [*(v0 + 56) setMask_];
          [v10 size];
          v17 = v16;
          [v10 size];
          v19 = v18;

          *(v0 + 24) = v17 / v19;
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_23A950C78()
{
  if (*(v0 + 104))
  {
    __break(1u);
    goto LABEL_13;
  }

  [*(v0 + 32) setBounds_];
  if (*(v0 + 104))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [*(v0 + 56) setBounds_];
  v1 = *(v0 + 16);
  if (!v1)
  {
    return;
  }

  if (*(v0 + 104))
  {
    goto LABEL_14;
  }

  [v1 setBounds_];
  v2 = *(v0 + 16);
  if (!v2)
  {
    return;
  }

  if (*(v0 + 104))
  {
    goto LABEL_15;
  }

  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v8 = v2;
  v10.origin.x = v6;
  v10.origin.y = v5;
  v10.size.width = v4;
  v10.size.height = v3;
  MidX = CGRectGetMidX(v10);
  if (*(v0 + 104))
  {
LABEL_16:
    __break(1u);
    return;
  }

  [v8 setPosition_];
}

uint64_t sub_23A950DAC()
{

  return swift_deallocClassInstance();
}

void sub_23A950E28(void *a1, float a2)
{
  [a1 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v11 / 500.0;
  if (!*(v2 + 64))
  {
    v13 = 1.0;
  }

  v122 = v13;
  v14 = cosf(a2);
  v172.origin.x = v6;
  v172.origin.y = v8;
  v172.size.width = v10;
  v172.size.height = v12;
  Width = CGRectGetWidth(v172);
  v173.origin.x = v6;
  v173.origin.y = v8;
  v173.size.width = v10;
  v173.size.height = v12;
  Height = CGRectGetHeight(v173);
  v174.origin.x = v6;
  v174.origin.y = v8;
  v174.size.width = v10;
  v174.size.height = v12;
  v16 = CGRectGetHeight(v174);
  v17 = objc_opt_self();
  [v17 setDisableActions_];
  v18 = *(v2 + 24) * 72.0;
  v19 = vdupq_lane_s64(0x4052000000000000, 0);
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  v19.f64[0] = v18;
  *(v2 + 88) = vmulq_n_f64(v19, v122);
  *(v2 + 104) = 0;
  sub_23A950C78();
  v175.origin.x = v6;
  v175.origin.y = v8;
  v175.size.width = v10;
  v175.size.height = v12;
  MidX = CGRectGetMidX(v175);
  v176.origin.x = v6;
  v176.origin.y = v8;
  v176.size.width = v10;
  v176.size.height = v12;
  MidY = CGRectGetMidY(v176);
  *(v2 + 112) = MidX;
  *(v2 + 120) = MidY;
  *(v2 + 128) = 0;
  v22 = *(v2 + 32);
  [v22 setPosition_];
  if (*(v2 + 128))
  {
    __break(1u);
    goto LABEL_27;
  }

  v23 = *(v2 + 56);
  [v23 setPosition_];
  v24 = *(MEMORY[0x277CD9DE8] + 48);
  v163 = *(MEMORY[0x277CD9DE8] + 32);
  v164 = v24;
  v165 = *(MEMORY[0x277CD9DE8] + 64);
  *&v166 = *(MEMORY[0x277CD9DE8] + 80);
  v25 = *(MEMORY[0x277CD9DE8] + 16);
  v161 = *MEMORY[0x277CD9DE8];
  v162 = v25;
  *(&v166 + 1) = -1.0 / (v12 * 0.615763547);
  v26 = *(MEMORY[0x277CD9DE8] + 112);
  v167 = *(MEMORY[0x277CD9DE8] + 96);
  v168 = v26;
  sub_23A951D00(&v161);
  v27 = v166;
  *(v2 + 216) = v166;
  v28 = v167;
  *(v2 + 232) = v167;
  v29 = v168;
  *(v2 + 248) = v168;
  v30 = v162;
  *(v2 + 152) = v162;
  v31 = v163;
  *(v2 + 168) = v163;
  v32 = v164;
  *(v2 + 184) = v164;
  v33 = v165;
  *(v2 + 200) = v165;
  v34 = v161;
  *(v2 + 136) = v161;
  *&v170.m41 = v28;
  *&v170.m43 = v29;
  *&v170.m21 = v31;
  *&v170.m23 = v32;
  *&v170.m33 = v27;
  *&v170.m31 = v33;
  *(v2 + 264) = v169;
  v171 = v169;
  *&v170.m13 = v30;
  *&v170.m11 = v34;
  if (sub_23A951D08(&v170) == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v159 = v170;
  [v22 setTransform_];
  v35 = *(v2 + 216);
  v36 = *(v2 + 248);
  *&v159.m41 = *(v2 + 232);
  *&v159.m43 = v36;
  v160 = *(v2 + 264);
  v37 = *(v2 + 152);
  v38 = *(v2 + 184);
  *&v159.m21 = *(v2 + 168);
  *&v159.m23 = v38;
  v39 = *(v2 + 200);
  *&v159.m33 = v35;
  *&v159.m31 = v39;
  v40 = *(v2 + 136);
  *&v159.m13 = v37;
  *&v159.m11 = v40;
  if (sub_23A951D08(&v159) == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v157 = v159;
  [v23 setTransform_];
  v41 = *(v2 + 216);
  v42 = *(v2 + 248);
  *&v157.m41 = *(v2 + 232);
  *&v157.m43 = v42;
  v158 = *(v2 + 264);
  v43 = *(v2 + 152);
  v44 = *(v2 + 184);
  *&v157.m21 = *(v2 + 168);
  *&v157.m23 = v44;
  v45 = *(v2 + 200);
  *&v157.m33 = v41;
  *&v157.m31 = v45;
  v46 = *(v2 + 136);
  *&v157.m13 = v43;
  *&v157.m11 = v46;
  if (sub_23A951D08(&v157) == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v155 = v157;
  CATransform3DScale(&v152, &v155, 0.85, 0.85, 1.0);
  v153 = v152;
  sub_23A951D00(&v153);
  v47 = *&v153.m33;
  *(v2 + 216) = *&v153.m33;
  v48 = *&v153.m41;
  *(v2 + 232) = *&v153.m41;
  v49 = *&v153.m43;
  *(v2 + 248) = *&v153.m43;
  v50 = *&v153.m13;
  *(v2 + 152) = *&v153.m13;
  v51 = *&v153.m21;
  *(v2 + 168) = *&v153.m21;
  v52 = *&v153.m23;
  *(v2 + 184) = *&v153.m23;
  v53 = *&v153.m31;
  *(v2 + 200) = *&v153.m31;
  v54 = *&v153.m11;
  *(v2 + 136) = *&v153.m11;
  *&v155.m41 = v48;
  *&v155.m43 = v49;
  *&v155.m21 = v51;
  *&v155.m23 = v52;
  *&v155.m33 = v47;
  *&v155.m31 = v53;
  *(v2 + 264) = v154;
  v156 = v154;
  *&v155.m13 = v50;
  *&v155.m11 = v54;
  if (sub_23A951D08(&v155) == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v150 = v155;
  [v22 setTransform_];
  v55 = *(v2 + 216);
  v56 = *(v2 + 248);
  *&v150.m41 = *(v2 + 232);
  *&v150.m43 = v56;
  v151 = *(v2 + 264);
  v57 = *(v2 + 152);
  v58 = *(v2 + 184);
  *&v150.m21 = *(v2 + 168);
  *&v150.m23 = v58;
  v59 = *(v2 + 200);
  *&v150.m33 = v55;
  *&v150.m31 = v59;
  v60 = *(v2 + 136);
  *&v150.m13 = v57;
  *&v150.m11 = v60;
  if (sub_23A951D08(&v150) == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v148 = v150;
  [v23 setTransform_];
  v61 = *(v2 + 216);
  v62 = *(v2 + 248);
  *&v148.m41 = *(v2 + 232);
  *&v148.m43 = v62;
  v149 = *(v2 + 264);
  v63 = *(v2 + 152);
  v64 = *(v2 + 184);
  *&v148.m21 = *(v2 + 168);
  *&v148.m23 = v64;
  v65 = *(v2 + 200);
  *&v148.m33 = v61;
  *&v148.m31 = v65;
  v66 = *(v2 + 136);
  *&v148.m13 = v63;
  *&v148.m11 = v66;
  if (sub_23A951D08(&v148) == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v67 = v14;
  v146 = v148;
  CATransform3DRotate(&v144, &v146, v67 * 3.14159265 * -0.08, 0.0, 1.0, 0.0);
  sub_23A951D00(&v144);
  *(v2 + 216) = *&v144.m33;
  *(v2 + 232) = *&v144.m41;
  *(v2 + 248) = *&v144.m43;
  *(v2 + 264) = v145;
  *(v2 + 152) = *&v144.m13;
  *(v2 + 168) = *&v144.m21;
  *(v2 + 184) = *&v144.m23;
  *(v2 + 200) = *&v144.m31;
  *(v2 + 136) = *&v144.m11;
  v146 = v144;
  v147 = v145;
  if (sub_23A951D08(&v146) == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v142 = v146;
  [v22 setTransform_];
  v68 = *(v2 + 216);
  v69 = *(v2 + 248);
  *&v142.m41 = *(v2 + 232);
  *&v142.m43 = v69;
  v143 = *(v2 + 264);
  v70 = *(v2 + 152);
  v71 = *(v2 + 184);
  *&v142.m21 = *(v2 + 168);
  *&v142.m23 = v71;
  v72 = *(v2 + 200);
  *&v142.m33 = v68;
  *&v142.m31 = v72;
  v73 = *(v2 + 136);
  *&v142.m13 = v70;
  *&v142.m11 = v73;
  if (sub_23A951D08(&v142) == 1)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v140 = v142;
  [v23 setTransform_];
  v74 = *(v2 + 216);
  v75 = *(v2 + 248);
  *&v140.m41 = *(v2 + 232);
  *&v140.m43 = v75;
  v141 = *(v2 + 264);
  v76 = *(v2 + 152);
  v77 = *(v2 + 184);
  *&v140.m21 = *(v2 + 168);
  *&v140.m23 = v77;
  v78 = *(v2 + 200);
  *&v140.m33 = v74;
  *&v140.m31 = v78;
  v79 = *(v2 + 136);
  *&v140.m13 = v76;
  *&v140.m11 = v79;
  if (sub_23A951D08(&v140) == 1)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v138 = v140;
  CATransform3DRotate(&v136, &v138, v67 * 3.14159265 * 0.08, 1.0, 0.0, 0.0);
  sub_23A951D00(&v136);
  v80 = *&v136.m31;
  *(v2 + 216) = *&v136.m33;
  v81 = *&v136.m33;
  *(v2 + 232) = *&v136.m41;
  v82 = *&v136.m41;
  *(v2 + 248) = *&v136.m43;
  v83 = *&v136.m11;
  *(v2 + 152) = *&v136.m13;
  v84 = *&v136.m13;
  *(v2 + 168) = *&v136.m21;
  v85 = *&v136.m21;
  *(v2 + 184) = *&v136.m23;
  v86 = *&v136.m23;
  *(v2 + 200) = *&v136.m31;
  *(v2 + 136) = *&v136.m11;
  *&v138.m41 = v82;
  *&v138.m43 = *&v136.m43;
  *&v138.m21 = v85;
  *&v138.m23 = v86;
  *&v138.m33 = v81;
  *&v138.m31 = v80;
  *(v2 + 264) = v137;
  v139 = v137;
  *&v138.m13 = v84;
  *&v138.m11 = v83;
  if (sub_23A951D08(&v138) == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v134 = v138;
  [v22 setTransform_];
  v87 = *(v2 + 216);
  v88 = *(v2 + 248);
  *&v134.m41 = *(v2 + 232);
  *&v134.m43 = v88;
  v135 = *(v2 + 264);
  v89 = *(v2 + 152);
  v90 = *(v2 + 184);
  *&v134.m21 = *(v2 + 168);
  *&v134.m23 = v90;
  *&v134.m31 = *(v2 + 200);
  *&v134.m33 = v87;
  *&v134.m11 = *(v2 + 136);
  *&v134.m13 = v89;
  if (sub_23A951D08(&v134) == 1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v132 = v134;
  [v23 setTransform_];
  v91 = *(v2 + 216);
  v92 = *(v2 + 248);
  *&v132.m41 = *(v2 + 232);
  *&v132.m43 = v92;
  v133 = *(v2 + 264);
  v93 = *(v2 + 152);
  v94 = *(v2 + 184);
  *&v132.m21 = *(v2 + 168);
  *&v132.m23 = v94;
  *&v132.m31 = *(v2 + 200);
  *&v132.m33 = v91;
  *&v132.m11 = *(v2 + 136);
  *&v132.m13 = v93;
  if (sub_23A951D08(&v132) == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v130 = v132;
  CATransform3DTranslate(&v128, &v130, Width * 0.15, Height * 0.175 * v67 + v16 * -0.125, 1.0);
  sub_23A951D00(&v128);
  v95 = *&v128.m31;
  *(v2 + 216) = *&v128.m33;
  v96 = *&v128.m33;
  *(v2 + 232) = *&v128.m41;
  v97 = *&v128.m41;
  *(v2 + 248) = *&v128.m43;
  v98 = *&v128.m11;
  *(v2 + 152) = *&v128.m13;
  v99 = *&v128.m13;
  *(v2 + 168) = *&v128.m21;
  v100 = *&v128.m21;
  *(v2 + 184) = *&v128.m23;
  v101 = *&v128.m23;
  *(v2 + 200) = *&v128.m31;
  *(v2 + 136) = *&v128.m11;
  *&v130.m41 = v97;
  *&v130.m43 = *&v128.m43;
  *&v130.m21 = v100;
  *&v130.m23 = v101;
  *&v130.m31 = v95;
  *&v130.m33 = v96;
  *(v2 + 264) = v129;
  v131 = v129;
  *&v130.m11 = v98;
  *&v130.m13 = v99;
  if (sub_23A951D08(&v130) == 1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v126 = v130;
  [v22 setTransform_];
  v102 = *(v2 + 216);
  v103 = *(v2 + 248);
  *&v126.m41 = *(v2 + 232);
  *&v126.m43 = v103;
  v127 = *(v2 + 264);
  v104 = *(v2 + 152);
  v105 = *(v2 + 184);
  *&v126.m21 = *(v2 + 168);
  *&v126.m23 = v105;
  *&v126.m31 = *(v2 + 200);
  *&v126.m33 = v102;
  *&v126.m11 = *(v2 + 136);
  *&v126.m13 = v104;
  if (sub_23A951D08(&v126) == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v124 = v126;
  [v23 setTransform_];
  *(v2 + 268) = 1065353216;
  *(v2 + 272) = 0;
  LODWORD(v106) = 1.0;
  [v22 setOpacity_];
  if (*(v2 + 272))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  LODWORD(v107) = *(v2 + 268);
  [v23 setOpacity_];
  v108 = *(v2 + 16);
  if (v108)
  {
    v109 = v108;
    [a1 contentsScale];
    [v109 setContentsScale_];
  }

  if (*(v2 + 104))
  {
    goto LABEL_42;
  }

  v110 = *(v2 + 40);
  [v110 setBounds_];
  if (*(v2 + 272))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  LODWORD(v111) = *(v2 + 268);
  [v110 setOpacity_];
  v112 = *(v2 + 216);
  v113 = *(v2 + 248);
  *&v124.m41 = *(v2 + 232);
  *&v124.m43 = v113;
  v125 = *(v2 + 264);
  v114 = *(v2 + 152);
  v115 = *(v2 + 184);
  *&v124.m21 = *(v2 + 168);
  *&v124.m23 = v115;
  *&v124.m31 = *(v2 + 200);
  *&v124.m33 = v112;
  *&v124.m11 = *(v2 + 136);
  *&v124.m13 = v114;
  if (sub_23A951D08(&v124) == 1)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v123 = v124;
  [v110 setTransform_];
  if ((*(v2 + 128) & 1) == 0)
  {
    [v110 setPosition_];
    v116 = *(v2 + 48);
    LODWORD(v117) = 1053609165;
    [v116 setOpacity_];
    [v110 bounds];
    v118 = CGRectGetWidth(v177) * 7.0;
    [v110 bounds];
    v119 = CGRectGetHeight(v178);
    [v116 setBounds_];
    [v110 bounds];
    v120 = CGRectGetMidX(v179) + 5.0;
    [v110 bounds];
    [v116 setPosition_];
    [v17 setDisableActions_];
    return;
  }

LABEL_45:
  __break(1u);
}

uint64_t sub_23A951D08(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_23A951D24(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

void *sub_23A951D44(void *result, void *a2, id a3)
{
  v4 = OBJC_IVAR____TtC8RoomPlan10TmpTexture_wasUpdated;
  if ((*(v3 + OBJC_IVAR____TtC8RoomPlan10TmpTexture_wasUpdated) & 1) == 0)
  {
    v5 = result;
    v6 = [result width];
    v7 = [v5 height];
    v8 = [v5 pixelFormat];
    v9 = OBJC_IVAR____TtC8RoomPlan10TmpTexture_texture;
    swift_beginAccess();
    v10 = *(v3 + v9);
    if (v10 && [*(v3 + v9) width] == v6 && objc_msgSend(v10, sel_height) == v7 && objc_msgSend(v10, sel_pixelFormat) == v8)
    {
      v11 = [v10 usage] == a3 || v6 == 0;
    }

    else
    {
      v11 = v6 == 0;
    }

    if (!v11 && v7 != 0)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
      [v13 setPixelFormat_];
      [v13 setWidth_];
      [v13 setHeight_];
      [v13 setUsage_];
      v14 = [a2 newTextureWithDescriptor_];

      *(v3 + v9) = v14;
      swift_unknownObjectRelease();
    }

    result = swift_endAccess();
    *(v3 + v4) = 1;
  }

  return result;
}

id sub_23A951F5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TmpTexture();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23A951FC4()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
LABEL_5:
    swift_unknownObjectRetain();
    return v1;
  }

  result = [*(v0 + 16) newBufferWithLength:64 options:0];
  if (result)
  {
    v1 = result;
    *(v0 + 32) = result;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_23A95203C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
LABEL_5:
    swift_unknownObjectRetain();
    return v1;
  }

  result = [*(v0 + 16) newBufferWithLength:48 options:0];
  if (result)
  {
    v1 = result;
    *(v0 + 40) = result;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_23A9520B4(int a1, id a2, void *a3)
{
  v4 = [a2 device];
  v5 = [a3 width];
  v6 = [a3 height];
  v7 = [a3 pixelFormat];
  v8 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v8 setPixelFormat_];
  [v8 setWidth_];
  [v8 setHeight_];
  [v8 setUsage_];
  v9 = [v4 newTextureWithDescriptor_];
  swift_unknownObjectRelease();

  if (v9)
  {
    return v9;
  }

  result = sub_23AA0D9E4();
  __break(1u);
  return result;
}

uint64_t sub_23A952224(uint64_t a1)
{
  v2 = v1;
  v43[3] = *MEMORY[0x277D85DE8];
  v4 = sub_23AA0CE84();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v39 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for TmpTexture();
  *(v2 + 80) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 88) = [objc_allocWithZone(v11) init];
  *(v2 + 96) = [objc_allocWithZone(v11) init];
  *(v2 + 104) = sub_23A9520B4;
  *(v2 + 112) = 0;
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  *(v2 + 16) = sub_23A93BFA4();
  v12 = sub_23A93C058();
  *(v2 + 24) = a1;

  v13 = sub_23AA0D104();
  v14 = [v12 newFunctionWithName_];

  if (v14)
  {
    v15 = *(v2 + 16);
    v43[0] = 0;
    v16 = [v15 newComputePipelineStateWithFunction:v14 error:v43];
    v17 = v43[0];
    if (!v16)
    {
      goto LABEL_20;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_23A8D4E5C();
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v18 = sub_23AA0CE54();
    v19 = sub_23AA0D494();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = v4;
      v21 = v20;
      *v20 = 0;
      _os_log_impl(&dword_23A8B4000, v18, v19, "Cannot create occlusion stage", v20, 2u);
      v4 = v39;
      MEMORY[0x23EE91710](v21, -1, -1);
    }

    (*(v42 + 8))(v10, v4);
    v16 = 0;
  }

  *(v2 + 56) = v16;
  swift_unknownObjectRelease();
  v22 = sub_23AA0D104();
  v23 = [v12 newFunctionWithName_];

  if (v23)
  {
    v24 = *(v2 + 16);
    v43[0] = 0;
    v25 = [v24 newComputePipelineStateWithFunction:v23 error:v43];
    v17 = v43[0];
    if (!v25)
    {
      goto LABEL_20;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_23A8D4E5C();
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v26 = sub_23AA0CE54();
    v27 = sub_23AA0D494();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23A8B4000, v26, v27, "Cannot create compositing stage", v28, 2u);
      MEMORY[0x23EE91710](v28, -1, -1);
    }

    (*(v42 + 8))(v41, v4);
    v25 = 0;
  }

  *(v2 + 64) = v25;
  swift_unknownObjectRelease();
  v29 = sub_23AA0D104();
  v30 = [v12 newFunctionWithName_];

  if (!v30)
  {
    sub_23A8D4E5C();
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v34 = sub_23AA0CE54();
    v35 = sub_23AA0D494();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_23A8B4000, v34, v35, "Cannot create occlusion/compositing stage", v36, 2u);
      MEMORY[0x23EE91710](v36, -1, -1);
    }

    (*(v42 + 8))(v40, v4);
    v32 = 0;
    goto LABEL_26;
  }

  v31 = *(v2 + 16);
  v43[0] = 0;
  v32 = [v31 newComputePipelineStateWithFunction:v30 error:v43];
  v17 = v43[0];
  if (v32)
  {
    swift_unknownObjectRelease();
LABEL_26:
    *(v2 + 72) = v32;
    swift_unknownObjectRelease();
    v37 = *(v2 + 16);
    swift_beginAccess();
    swift_unknownObjectRetain();
    CVMetalTextureCacheCreate(0, 0, v37, 0, (v2 + 80));
    swift_endAccess();

    swift_unknownObjectRelease();
    goto LABEL_27;
  }

LABEL_20:
  v33 = v17;
  sub_23AA0BE74();

  swift_willThrow();
  swift_unknownObjectRelease();

LABEL_27:
  swift_unknownObjectRelease();
  return v2;
}

__n128 sub_23A952978(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v18 = a1.n128_f64[0];
  v19 = a2.n128_f64[0];
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v4 = off_27DFB17B0;
  swift_beginAccess();
  v5 = v4[30];
  swift_beginAccess();
  v6 = v4[29];
  swift_beginAccess();
  v7 = *(v4 + 34);
  swift_beginAccess();
  v8 = v4[28];
  swift_beginAccess();
  v9 = v4[27];
  swift_beginAccess();
  v10 = *(v4 + 104);
  v11 = sub_23A98DF14(v18, v19, a3, a4);
  v13.n128_f32[0] = v11 * v12;
  v13.n128_f32[1] = v12 - v11;
  v13.n128_u64[1] = LODWORD(v11);
  v22 = v13;
  v14 = sub_23A95203C();
  v15 = [v14 contents];
  v16 = v14;
  result = v22;
  *v15 = v22;
  v15[4] = v8;
  v15[5] = v9;
  *(v15 + 24) = v7;
  *(v15 + 25) = v10;
  v15[7] = v6;
  v15[8] = v5;
  return result;
}

uint64_t sub_23A952AEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = v7(v8, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

id *sub_23A952B84()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_23A952BFC()
{
  sub_23A952B84();

  return swift_deallocClassInstance();
}

void sub_23A952C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if (a2)
  {

    if (a3)
    {
LABEL_3:
      if (a4)
      {
        return;
      }

LABEL_39:
      v15 = *(v6 + 2);
      if (!v15)
      {
LABEL_43:
        v16 = *(v6 + 2);
LABEL_48:
        if (!__OFADD__(v15, v16 - v15))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v16 > *(v6 + 3) >> 1)
          {
            if (v15 <= v16)
            {
              v18 = v16;
            }

            else
            {
              v18 = v15;
            }

            sub_23A939D50(isUniquelyReferenced_nonNull_native, v18, 1, v6);
          }

          sub_23A946858(v16, v15, 0);
          return;
        }

        goto LABEL_95;
      }

      v16 = 0;
      while (v6[v16 + 32] != 3)
      {
        if (v15 == ++v16)
        {
          goto LABEL_43;
        }
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_104;
      }

      if (v16 + 1 == v15)
      {
LABEL_46:
        if (v15 < v16)
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        if (v16 < 0)
        {
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          return;
        }

        goto LABEL_48;
      }

      v27 = (v16 + 33);
      while ((v27 - 32) < v15)
      {
        v29 = v27[v6];
        if (v29 != 3)
        {
          if (v27 - 32 != v16)
          {
            if (v16 >= v15)
            {
              goto LABEL_92;
            }

            v30 = v6[v16 + 32];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_23A975D14(v6);
            }

            v6[v16 + 32] = v29;
            v27[v6] = v30;
            v15 = *(v6 + 2);
          }

          ++v16;
        }

        v28 = v27 - 31;
        ++v27;
        if (v28 == v15)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_89;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = 0;
      while (*(a1 + v8 + 32))
      {
        if (v7 == ++v8)
        {
          goto LABEL_9;
        }
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_102;
      }

      if (v8 + 1 != v7)
      {
        v19 = (v8 + 33);
        while ((v19 - 32) < v7)
        {
          v21 = v19[v6];
          if (v21)
          {
            if (v19 - 32 != v8)
            {
              if (v8 >= v7)
              {
                goto LABEL_90;
              }

              v22 = v6[v8 + 32];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_23A975D14(v6);
              }

              v6[v8 + 32] = v21;
              v19[v6] = v22;
              v7 = *(v6 + 2);
            }

            ++v8;
          }

          v20 = v19 - 31;
          ++v19;
          if (v20 == v7)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_88;
      }

LABEL_12:
      if (v7 < v8)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      if (v8 < 0)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    else
    {
LABEL_9:

      v8 = v7;
    }

    if (__OFADD__(v7, v8 - v7))
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v9 = swift_isUniquelyReferenced_nonNull_native();
    if (!v9 || v8 > *(v6 + 3) >> 1)
    {
      if (v7 <= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v7;
      }

      v6 = sub_23A939D50(v9, v10, 1, v6);
    }

    sub_23A946858(v8, v7, 0);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v6 + 2);
  if (!v11)
  {
LABEL_26:
    v12 = *(v6 + 2);
    goto LABEL_31;
  }

  v12 = 0;
  while (v6[v12 + 32] != 2)
  {
    if (v11 == ++v12)
    {
      goto LABEL_26;
    }
  }

  if (__OFADD__(v12, 1))
  {
    goto LABEL_103;
  }

  if (v12 + 1 != v11)
  {
    v23 = (v12 + 33);
    while ((v23 - 32) < v11)
    {
      v25 = v23[v6];
      if (v25 != 2)
      {
        if (v23 - 32 != v12)
        {
          if (v12 >= v11)
          {
            goto LABEL_91;
          }

          v26 = v6[v12 + 32];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_23A975D14(v6);
          }

          v6[v12 + 32] = v25;
          v23[v6] = v26;
          v11 = *(v6 + 2);
        }

        ++v12;
      }

      v24 = v23 - 31;
      ++v23;
      if (v24 == v11)
      {
        goto LABEL_29;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_29:
  if (v11 < v12)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v12 < 0)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

LABEL_31:
  if (__OFADD__(v11, v12 - v11))
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v13 = swift_isUniquelyReferenced_nonNull_native();
  if (!v13 || v12 > *(v6 + 3) >> 1)
  {
    if (v11 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v11;
    }

    v6 = sub_23A939D50(v13, v14, 1, v6);
  }

  sub_23A946858(v12, v11, 0);
  if (!a4)
  {
    goto LABEL_39;
  }
}

uint64_t sub_23A953064()
{
  v1 = v0;
  v137[1] = *MEMORY[0x277D85DE8];
  if (qword_27DFAE518 != -1)
  {
LABEL_85:
    swift_once();
  }

  v2 = off_27DFB17B0;
  v3 = *(sub_23A9FF620() + 2);

  if (!v3)
  {
    v101 = [sub_23AA0C8C4() blitCommandEncoder];
    result = swift_unknownObjectRelease();
    if (v101)
    {
      swift_unknownObjectRetain();
      v103 = sub_23AA0C8D4();
      [v101 copyFromTexture:v103 toTexture:sub_23AA0C8F4()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      [v101 endEncoding];

      return swift_unknownObjectRelease();
    }

    return result;
  }

  v4 = sub_23A9FF620();
  v5 = v1;
  v6 = v1[7];
  v7 = v1[8];
  v8 = v5[9];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_23A952C54(v4, v6, v7, v8);
  v122 = v9;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5[11][OBJC_IVAR____TtC8RoomPlan10TmpTexture_wasUpdated] = 0;
  v5[12][OBJC_IVAR____TtC8RoomPlan10TmpTexture_wasUpdated] = 0;
  v136 = 0;
  v137[0] = 0;
  v135 = 0;
  v134 = 0.0;
  v10 = *(MEMORY[0x277D860B0] + 16);
  v11 = *(MEMORY[0x277D860B0] + 32);
  v131 = *MEMORY[0x277D860B0];
  v132 = v10;
  v133 = v11;
  v111 = v5;
  v12 = *(*(v5[3] + 3) + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &v135;
  v14[4] = v137;
  v14[5] = &v136;
  v14[6] = &v134;
  v14[7] = &v131;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_23A954348;
  *(v15 + 24) = v14;
  v129 = sub_23A916670;
  v130 = v15;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v127 = sub_23AA08C40;
  v128 = &block_descriptor_2;
  v16 = _Block_copy(&aBlock);

  dispatch_sync(v12, v16);
  _Block_release(v16);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else if (qword_27DFAE498 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  v17 = qword_27DFC07E8;
  if (*(qword_27DFC07E8 + 32) == 1)
  {
    v18 = v134;
    if (v134 > 0.0)
    {
      v19 = *(qword_27DFC07E8 + 40);
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = v18;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_23A9543C8;
      *(v21 + 24) = v20;
      v129 = sub_23A9166DC;
      v130 = v21;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v127 = sub_23AA08C40;
      v128 = &block_descriptor_60;
      v22 = _Block_copy(&aBlock);

      dispatch_sync(v19, v22);
      _Block_release(v22);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_92;
      }
    }
  }

  swift_beginAccess();
  if ((v2[34] & 1) == 0)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v136 = 0;
    v137[0] = 0;
  }

  swift_beginAccess();
  if (v2[33] == 1)
  {
    v24 = v137[0];
    if (v137[0])
    {
      v25 = v135;
      if (v135)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v26 = sub_23AA0C8C4();
        swift_unknownObjectRetain();
        v27 = sub_23A944A1C(v26, v25, v24);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        v137[0] = v27;
      }
    }
  }

  v123 = v131;
  v120 = v132;
  v118 = v133;
  swift_beginAccess();
  v28 = *(v2 + 31);
  v29 = v5;
  v30 = sub_23A951FC4();
  v31 = [v30 contents];
  v32 = v30;
  *v31 = v123;
  v31[1] = v120;
  v31[2] = v118;
  *(v31 + 12) = v28;
  sub_23AA0C8B4();
  sub_23A952978(v33, v34, v35, v36);
  if (!*(v122 + 16))
  {

    v104 = 0;
LABEL_75:
    v105 = [sub_23AA0C8C4() blitCommandEncoder];
    swift_unknownObjectRelease();
    if (v104)
    {
      v106 = v104;
      if (!v105)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v106 = sub_23AA0C8D4();
      if (!v105)
      {
        goto LABEL_78;
      }
    }

    v107 = v106;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    [v105 copyFromTexture:v107 toTexture:sub_23AA0C8F4()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [swift_unknownObjectRetain() endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    goto LABEL_78;
  }

  v109 = (v2 + 132);
  v37 = *(v122 + 16);
  swift_beginAccess();
  v38 = 0;
  v39 = 0;
  v108 = v37;
  v119 = v37 - 1;
  while (1)
  {
    v41 = v136;
    v40 = v137[0];
    v43 = v29[11];
    v42 = v29[12];
    if (*(v122 + v39 + 32) > 1u)
    {
      v47 = v135;
      if (*(v122 + v39 + 32) == 2)
      {
        v48 = v29[11];
        v49 = v43;
        v50 = v42;
        v51 = v42;
        if (v38)
        {
          v52 = v38;
        }

        else
        {
          v52 = sub_23AA0C8D4();
        }

        swift_unknownObjectRetain();
        v70 = sub_23AA0C8F4();
        v71 = [sub_23AA0C8C4() computeCommandEncoder];
        swift_unknownObjectRelease();
        if (v71)
        {
          v72 = v29;
          v1 = v29[8];
          if (v1)
          {
            swift_unknownObjectRetain();
            [v71 setComputePipelineState_];
            [v71 setBuffer:sub_23A951FC4() offset:0 atIndex:0];
            swift_unknownObjectRelease();
            [v71 setTexture:v52 atIndex:0];
            [v71 setTexture:v47 atIndex:1];
            [v71 setTexture:v70 atIndex:2];
            v73 = [sub_23AA0C8D4() width];
            swift_unknownObjectRelease();
            v74 = [sub_23AA0C8D4() height];
            swift_unknownObjectRelease();
            v75 = [v1 threadExecutionWidth];
            v76 = [v1 maxTotalThreadsPerThreadgroup];
            if (!v75)
            {
              goto LABEL_83;
            }

            if (v76 == 0x8000000000000000 && v75 == -1)
            {
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
            }

            MTLSizeMake(v75, v76 / v75, &aBlock);
            v77 = v127;
            v78 = aBlock;
            *&aBlock = v73;
            *(&aBlock + 1) = v74;
            v127 = 1;
            v124 = v78;
            v125 = v77;
            [v71 dispatchThreads:&aBlock threadsPerThreadgroup:&v124];
            [v71 endEncoding];

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v29 = v111;
          }

          else
          {

            swift_unknownObjectRelease();
            v29 = v72;
          }
        }

        else
        {
        }

        swift_unknownObjectRelease();
        v38 = v70;
        goto LABEL_62;
      }

      v115 = v29[11];
      v116 = v39;
      v113 = v29[12];
      v56 = v43;
      v57 = v42;
      if (v38)
      {
        v58 = v38;
      }

      else
      {
        v58 = sub_23AA0C8D4();
      }

      swift_unknownObjectRetain();
      v121 = sub_23AA0C8F4();
      v92 = [sub_23AA0C8C4() computeCommandEncoder];
      swift_unknownObjectRelease();
      if (v92)
      {
        v93 = v29[9];
        if (v93)
        {
          swift_unknownObjectRetain();
          [v92 setComputePipelineState_];
          [v92 setBuffer:sub_23A951FC4() offset:0 atIndex:0];
          swift_unknownObjectRelease();
          [v92 setBuffer:sub_23A95203C() offset:0 atIndex:1];
          swift_unknownObjectRelease();
          v1 = &selRef_initWithDevice_;
          [v92 setTexture:v58 atIndex:0];
          [v92 setTexture:sub_23AA0C8E4() atIndex:1];
          swift_unknownObjectRelease();
          [v92 setTexture:v47 atIndex:2];
          [v92 setTexture:v40 atIndex:3];
          [v92 setTexture:v41 atIndex:4];
          [v92 setTexture:v121 atIndex:5];
          v94 = [sub_23AA0C8D4() width];
          swift_unknownObjectRelease();
          v95 = [sub_23AA0C8D4() height];
          swift_unknownObjectRelease();
          v96 = [v93 threadExecutionWidth];
          v97 = [v93 maxTotalThreadsPerThreadgroup];
          if (!v96)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          if (v97 == 0x8000000000000000 && v96 == -1)
          {
            goto LABEL_89;
          }

          MTLSizeMake(v96, v97 / v96, &aBlock);
          v98 = v127;
          v99 = aBlock;
          *&aBlock = v94;
          *(&aBlock + 1) = v95;
          v127 = 1;
          v124 = v99;
          v125 = v98;
          [v92 dispatchThreads:&aBlock threadsPerThreadgroup:&v124];
          [v92 endEncoding];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v29 = v111;
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
      v39 = v116;
      goto LABEL_61;
    }

    if (!*(v122 + v39 + 32))
    {
      v112 = v29[12];
      v44 = v43;
      v45 = v42;
      if (v38)
      {
        v46 = v38;
      }

      else
      {
        v46 = sub_23AA0C8D4();
      }

      swift_unknownObjectRetain();
      v59 = sub_23AA0C8F4();
      v60 = sub_23AA0C904();
      sub_23A951D44(v59, v60, 3);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v61 = OBJC_IVAR____TtC8RoomPlan10TmpTexture_texture;
      swift_beginAccess();
      if (!*&v43[v61])
      {
        goto LABEL_94;
      }

      v121 = *&v43[v61];
      swift_unknownObjectRetain();
      v62 = [sub_23AA0C8C4() computeCommandEncoder];
      swift_unknownObjectRelease();
      v29 = v111;
      if (v62)
      {
        v110 = v46;
        v63 = v111[7];
        if (v63)
        {
          swift_unknownObjectRetain();
          [v62 setComputePipelineState_];
          [v62 setBuffer:sub_23A951FC4() offset:0 atIndex:0];
          swift_unknownObjectRelease();
          [v62 setBuffer:sub_23A95203C() offset:0 atIndex:1];
          swift_unknownObjectRelease();
          v1 = &selRef_initWithDevice_;
          [v62 setTexture:v110 atIndex:0];
          [v62 setTexture:sub_23AA0C8E4() atIndex:1];
          swift_unknownObjectRelease();
          [v62 setTexture:v40 atIndex:2];
          [v62 setTexture:v41 atIndex:3];
          [v62 setTexture:v121 atIndex:4];
          v64 = [sub_23AA0C8D4() width];
          swift_unknownObjectRelease();
          v65 = [sub_23AA0C8D4() height];
          swift_unknownObjectRelease();
          v66 = [v63 threadExecutionWidth];
          v67 = [v63 maxTotalThreadsPerThreadgroup];
          if (!v66)
          {
            goto LABEL_84;
          }

          if (v67 == 0x8000000000000000 && v66 == -1)
          {
            goto LABEL_90;
          }

          MTLSizeMake(v66, v67 / v66, &aBlock);
          v68 = v127;
          v69 = aBlock;
          *&aBlock = v64;
          *(&aBlock + 1) = v65;
          v127 = 1;
          v124 = v69;
          v125 = v68;
          [v62 dispatchThreads:&aBlock threadsPerThreadgroup:&v124];
          [v62 endEncoding];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v29 = v111;
          goto LABEL_61;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
LABEL_61:
      v38 = v121;
LABEL_62:
      swift_unknownObjectRelease();
      goto LABEL_63;
    }

    v114 = v29[11];
    v53 = v43;
    v54 = v42;
    if (v38)
    {
      v55 = v38;
    }

    else
    {
      v55 = sub_23AA0C8D4();
    }

    v79 = v42;
    v117 = v39;
    swift_unknownObjectRetain();
    v80 = sub_23AA0C8F4();
    v81 = sub_23AA0C904();
    sub_23A951D44(v80, v81, 3);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v82 = OBJC_IVAR____TtC8RoomPlan10TmpTexture_texture;
    swift_beginAccess();
    if (!*&v42[v82])
    {
      goto LABEL_93;
    }

    *&v124 = *&v42[v82];
    swift_unknownObjectRetain();
    v83 = sub_23AA0C904();
    v84 = sub_23AA0C8C4();
    v85 = *v109;
    v86 = objc_allocWithZone(MEMORY[0x277CD7520]);
    LODWORD(v87) = v85;
    v88 = [v86 initWithDevice:v83 sigma:v87];
    [v88 encodeToCommandBuffer:v84 sourceTexture:v55 destinationTexture:v124];
    v89 = [objc_allocWithZone(MEMORY[0x277CD74C0]) initWithDevice_];
    v29 = v111;
    v90 = v111[14];
    v129 = v111[13];
    v130 = v90;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v127 = sub_23A952AEC;
    v128 = &block_descriptor_50;
    v91 = _Block_copy(&aBlock);

    [v89 encodeToCommandBuffer:v84 primaryTexture:v55 inPlaceSecondaryTexture:&v124 fallbackCopyAllocator:v91];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v91);

    v38 = v124;
    swift_unknownObjectRelease();

    v39 = v117;
LABEL_63:
    if (v119 == v39)
    {
      break;
    }

    ++v39;
  }

  if (v108 > *(v122 + 16))
  {
    goto LABEL_91;
  }

  v100 = *(v122 + 32 + v108 - 1);

  if (v100 != 2 && v100 != 3)
  {
    v104 = v38;
    goto LABEL_75;
  }

LABEL_78:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_23A9542D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A954310()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t sub_23A954390()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_23A954484@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A954514(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_23A9544C0()
{
  result = qword_27DFAFA80;
  if (!qword_27DFAFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFA80);
  }

  return result;
}

unint64_t sub_23A954514(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

void sub_23A954560()
{
  v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_fire];
  v2 = *(v0 + 32);
  *(v0 + 32) = v1;
  v3 = v1;

  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v3 setPreferredFramesPerSecond_];

  v4 = *(v0 + 32);
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 mainRunLoop];
  [v6 addToRunLoop:v7 forMode:*MEMORY[0x277CBE640]];
}

void sub_23A9546D0()
{
  v1 = [*(v0 + 40) commandBuffer];
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 24) nextDrawable];
    if (v3)
    {
      v4 = v3;
      v5 = sub_23AA0D104();
      [v2 setLabel_];

      v6 = CACurrentMediaTime();
      v7 = *(v0 + 64);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        __break(1u);
        return;
      }

      v10 = *(v0 + 56);
      *(v0 + 64) = v9;
      v11 = v6 - *(v0 + 48);
      *(v0 + 72) = v11;
      *(v0 + 48) = v6;
      *(v0 + 56) = v11 + v10;
      if (v9 >= 60)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_23AA0D3D4();
        }

        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (*(Strong + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderer))
        {

          sub_23A9FBE84(v4);
        }

        swift_unknownObjectRelease();
      }

      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        if (*(v13 + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderer))
        {
          v14 = *(*(v13 + OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderTimer) + 72);

          sub_23A9FB2E4(v4, v2, v14);
        }

        swift_unknownObjectRelease();
      }

      [v2 commit];
      [v2 waitUntilScheduled];
      [v4 present];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void *sub_23A954908()
{
  result = *(v0 + 32);
  if (result)
  {
    [result invalidate];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_23A8E9694(v0 + 80);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23A95499C(void *a1, void *a2)
{
  *(v2 + 32) = 0;
  *(v2 + 48) = CACurrentMediaTime();
  *(v2 + 88) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 96) = 60;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unknownObjectRetain();
  v5 = a2;
  [v5 setDevice_];
  [v5 setPresentsWithTransaction_];
  result = [a1 newCommandQueue];
  if (result)
  {
    *(v2 + 40) = result;
    v7 = result;
    swift_unknownObjectRetain();
    v8 = sub_23AA0D104();
    [v7 setLabel_];
    swift_unknownObjectRelease();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23A954A94()
{
  if (*(v0 + OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple) == 1)
  {
    v1 = objc_opt_self();
    v2 = [v1 currentDevice];
    v3 = [v2 model];

    if (!v3)
    {
      sub_23AA0D134();
      v3 = sub_23AA0D104();
    }

    v4 = [v1 currentDevice];
    v5 = [v4 systemName];

    if (!v5)
    {
      sub_23AA0D134();
      v5 = sub_23AA0D104();
    }

    v6 = [v1 currentDevice];
    v7 = [v6 systemVersion];

    if (!v7)
    {
      sub_23AA0D134();
      v7 = sub_23AA0D104();
    }

    v8 = [objc_opt_self() mainBundle];
    v9 = [v8 bundleIdentifier];

    if (v9)
    {
      sub_23AA0D134();
    }

    v10 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v0 + v10);
    *(v0 + v10) = 0x8000000000000000;
    sub_23A9DB06C(v3, 0x6F4D656369766544, 0xEB000000006C6564, isUniquelyReferenced_nonNull_native);
    *(v0 + v10) = v16;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v0 + v10);
    *(v0 + v10) = 0x8000000000000000;
    sub_23A9DB06C(v5, 0x656D614E534FLL, 0xE600000000000000, v12);
    *(v0 + v10) = v17;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v0 + v10);
    *(v0 + v10) = 0x8000000000000000;
    sub_23A9DB06C(v7, 0x6F6973726556534FLL, 0xE90000000000006ELL, v13);
    *(v0 + v10) = v18;
    swift_endAccess();
    v14 = sub_23AA0D104();

    swift_beginAccess();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v0 + v10);
    *(v0 + v10) = 0x8000000000000000;
    sub_23A9DB06C(v14, 0x646E75426E69614DLL, 0xEC0000004449656CLL, v15);
    *(v0 + v10) = v19;
    swift_endAccess();
  }
}

id sub_23A954DD4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
    v4 = sub_23AA0D024();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_23A954F80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13[-v2];
  v4 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  *(v0 + v4) = MEMORY[0x277D84F98];

  v5 = sub_23AA0C064();
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  v7 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_launchTimeStart;
  swift_beginAccess();
  sub_23A95F174(v3, v0 + v7);
  swift_endAccess();
  v6(v3, 1, 1, v5);
  v8 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineScanTimeStart;
  swift_beginAccess();
  sub_23A95F174(v3, v0 + v8);
  swift_endAccess();
  v9 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeDeltaTimeArray) = MEMORY[0x277D84F90];

  v10 = v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeLastTimeInterval;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeDeltaTimeArray) = v9;

  v11 = v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeLastTimeInterval;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateDeltaTimeArray) = v9;

  v12 = v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateLastTimeInterval;
  *v12 = 0;
  *(v12 + 8) = 1;
}

uint64_t sub_23A9551AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_23A954F80();
  sub_23AA0C054();
  v5 = sub_23AA0C064();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_launchTimeStart;
  swift_beginAccess();
  sub_23A95F174(v4, a1 + v6);
  return swift_endAccess();
}

char *sub_23A9552D4(char *result, double a2)
{
  v3 = &result[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeLastTimeInterval];
  if ((result[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeLastTimeInterval + 8] & 1) == 0)
  {
    v4 = result;
    v5 = *v3;
    v6 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeDeltaTimeArray;
    v7 = *&result[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeDeltaTimeArray];
    result = swift_isUniquelyReferenced_nonNull_native();
    *&v4[v6] = v7;
    if ((result & 1) == 0)
    {
      result = sub_23A939D64(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
      *&v4[v6] = result;
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      result = sub_23A939D64((v8 > 1), v9 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v9 + 1;
    *&v7[8 * v9 + 32] = a2 - v5;
    *&v4[v6] = v7;
  }

  *v3 = a2;
  v3[8] = 0;
  return result;
}

double sub_23A9553E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23AA0CEC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0CF24();
  v13 = *(v12 - 8);
  result = MEMORY[0x28223BE20](v12);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v21[1] = *&v4[*a1];
    v22 = v14;
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    aBlock[4] = a3;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = a4;
    v19 = _Block_copy(aBlock);
    v20 = v4;
    sub_23AA0CEE4();
    v23 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v17, v11, v19);
    _Block_release(v19);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v17, v22);
  }

  return result;
}

void sub_23A9556A0(uint64_t a1)
{
  sub_23AA0C004();
  v3 = v2;
  v4 = a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeLastTimeInterval;
  if ((*(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeLastTimeInterval + 8) & 1) == 0)
  {
    v5 = *v4;
    v6 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeDeltaTimeArray;
    v7 = *(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeDeltaTimeArray);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v6) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_23A939D64(0, *(v7 + 2) + 1, 1, v7);
      *(a1 + v6) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_23A939D64((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    *&v7[8 * v10 + 32] = v3 - v5;
    *(a1 + v6) = v7;
  }

  *v4 = v3;
  *(v4 + 8) = 0;
}

uint64_t sub_23A9557B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = sub_23AA0C064();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  sub_23AA0C004();
  v16 = v15;
  v17 = a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateLastTimeInterval;
  if (*(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateLastTimeInterval + 8))
  {
    v18 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_launchTimeStart;
    swift_beginAccess();
    sub_23A8D5194(a1 + v18, v7, &qword_27DFAEB30, &unk_23AA11B50);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_23A8D50D0(v7, &qword_27DFAEB30, &unk_23AA11B50);
    }

    else
    {
      (*(v9 + 32))(v14, v7, v8);
      sub_23AA0C054();
      sub_23AA0C014();
      v25 = sub_23AA0D3C4();
      v26 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(a1 + v26);
      *(a1 + v26) = 0x8000000000000000;
      sub_23A9DB06C(v25, 0x4C79636E6574614CLL, 0xED000068636E7561, isUniquelyReferenced_nonNull_native);
      *(a1 + v26) = v31;
      swift_endAccess();
      v28 = *(v9 + 8);
      v28(v11, v8);
      v28(v14, v8);
    }

    sub_23AA0C054();
    (*(v9 + 56))(v4, 0, 1, v8);
    v29 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineScanTimeStart;
    swift_beginAccess();
    sub_23A95F174(v4, a1 + v29);
    result = swift_endAccess();
  }

  else
  {
    v19 = *v17;
    v20 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateDeltaTimeArray;
    v21 = *(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateDeltaTimeArray);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v20) = v21;
    if ((result & 1) == 0)
    {
      result = sub_23A939D64(0, *(v21 + 16) + 1, 1, v21);
      v21 = result;
      *(a1 + v20) = result;
    }

    v24 = *(v21 + 16);
    v23 = *(v21 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_23A939D64((v23 > 1), v24 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 16) = v24 + 1;
    *(v21 + 8 * v24 + 32) = v16 - v19;
    *(a1 + v20) = v21;
  }

  *v17 = v16;
  *(v17 + 8) = 0;
  return result;
}

double sub_23A955B84(uint64_t a1, uint64_t a2)
{
  v5 = sub_23AA0CEC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23AA0CF24();
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v18[1] = *&v2[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_queue];
    v19 = v11;
    v15 = swift_allocObject();
    v15[2] = v2;
    v15[3] = a1;
    v15[4] = a2;
    aBlock[4] = sub_23A95F758;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_235;
    v16 = _Block_copy(aBlock);
    v17 = v2;

    sub_23AA0CEE4();
    v20 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v14, v8, v16);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v14, v19);
  }

  return result;
}

double sub_23A955E64(void *a1)
{
  v3 = sub_23AA0CEC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CF24();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v17[1] = *&v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_queue];
    v18 = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    *(v13 + 24) = a1;
    aBlock[4] = sub_23A95F6FC;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_229;
    v14 = _Block_copy(aBlock);
    v15 = v1;
    v16 = a1;
    sub_23AA0CEE4();
    v19 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v12, v6, v14);
    _Block_release(v14);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v12, v18);
  }

  return result;
}

void sub_23A956138(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v176 - v5;
  v7 = sub_23AA0C064();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v176 - v12;
  v14 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineScanTimeStart;
  swift_beginAccess();
  sub_23A8D5194(a1 + v14, v6, &qword_27DFAEB30, &unk_23AA11B50);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_23A8D50D0(v6, &qword_27DFAEB30, &unk_23AA11B50);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_23AA0C054();
    sub_23AA0C014();
    v15 = sub_23AA0D3C4();
    v16 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(a1 + v16);
    *(a1 + v16) = 0x8000000000000000;
    sub_23A9DB06C(v15, 0xD000000000000011, 0x800000023AA205C0, isUniquelyReferenced_nonNull_native);
    *(a1 + v16) = v183;
    swift_endAccess();
    v18 = *(v8 + 8);
    v18(v10, v7);
    v18(v13, v7);
  }

  v19 = *(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeDeltaTimeArray);
  v20 = *(v19 + 16);
  if (v20)
  {
    if (v20 <= 3)
    {
      v21 = 0;
      v22 = 0.0;
LABEL_11:
      v25 = v20 - v21;
      v26 = (v19 + 8 * v21 + 32);
      do
      {
        v27 = *v26++;
        v22 = v22 + v27;
        --v25;
      }

      while (v25);
      goto LABEL_13;
    }

    v21 = v20 & 0x7FFFFFFFFFFFFFFCLL;
    v23 = (v19 + 48);
    v22 = 0.0;
    v24 = v20 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v22 = v22 + *(v23 - 2) + *(v23 - 1) + *v23 + v23[1];
      v23 += 4;
      v24 -= 4;
    }

    while (v24);
    if (v20 != v21)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v28 = 0xEA0000000000656DLL;
  v29 = sub_23AA0D434();
  v30 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
  swift_beginAccess();
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *(a1 + v30);
  *(a1 + v30) = 0x8000000000000000;
  sub_23A9DB06C(v29, 0x61724652416D754ELL, 0xEA0000000000656DLL, v31);
  *(a1 + v30) = v183;
  swift_endAccess();
  if (v20)
  {
    v32 = sub_23AA0D3C4();
    swift_beginAccess();
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(a1 + v30);
    *(a1 + v30) = 0x8000000000000000;
    sub_23A9DB06C(v32, 0xD000000000000011, 0x800000023AA205A0, v33);
    *(a1 + v30) = v183;
    swift_endAccess();
  }

  v178 = v30;
  v34 = *(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeDeltaTimeArray);
  v35 = *(v34 + 16);
  if (!v35)
  {
    v36 = v178;
    goto LABEL_24;
  }

  v36 = v178;
  if (v35 <= 3)
  {
    v37 = 0;
    v38 = 0.0;
LABEL_22:
    v41 = v35 - v37;
    v42 = (v34 + 8 * v37 + 32);
    do
    {
      v43 = *v42++;
      v38 = v38 + v43;
      --v41;
    }

    while (v41);
    goto LABEL_24;
  }

  v37 = v35 & 0x7FFFFFFFFFFFFFFCLL;
  v39 = (v34 + 48);
  v38 = 0.0;
  v40 = v35 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v38 = v38 + *(v39 - 2) + *(v39 - 1) + *v39 + v39[1];
    v39 += 4;
    v40 -= 4;
  }

  while (v40);
  if (v35 != v37)
  {
    goto LABEL_22;
  }

LABEL_24:
  v44 = sub_23AA0D434();
  swift_beginAccess();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *(a1 + v36);
  *(a1 + v36) = 0x8000000000000000;
  sub_23A9DB06C(v44, 0x726679654B6D754ELL, 0xEB00000000656D61, v45);
  *(a1 + v36) = v183;
  swift_endAccess();
  if (v35)
  {
    v46 = sub_23AA0D3C4();
    swift_beginAccess();
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(a1 + v36);
    *(a1 + v36) = 0x8000000000000000;
    sub_23A9DB06C(v46, 0xD000000000000015, 0x800000023AA20580, v47);
    *(a1 + v36) = v183;
    swift_endAccess();
  }

  v48 = *(a1 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateDeltaTimeArray);
  v49 = *(v48 + 16);
  if (!v49)
  {
    v50 = v178;
    goto LABEL_35;
  }

  v50 = v178;
  if (v49 <= 3)
  {
    v51 = 0;
    v52 = 0.0;
LABEL_33:
    v55 = v49 - v51;
    v56 = (v48 + 8 * v51 + 32);
    do
    {
      v57 = *v56++;
      v52 = v52 + v57;
      --v55;
    }

    while (v55);
    goto LABEL_35;
  }

  v51 = v49 & 0x7FFFFFFFFFFFFFFCLL;
  v53 = (v48 + 48);
  v52 = 0.0;
  v54 = v49 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v52 = v52 + *(v53 - 2) + *(v53 - 1) + *v53 + v53[1];
    v53 += 4;
    v54 -= 4;
  }

  while (v54);
  if (v49 != v51)
  {
    goto LABEL_33;
  }

LABEL_35:
  v58 = sub_23AA0D434();
  swift_beginAccess();
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *(a1 + v50);
  *(a1 + v50) = 0x8000000000000000;
  sub_23A9DB06C(v58, 0x6E696C6E4F6D754ELL, 0xEF65746164705565, v59);
  *(a1 + v50) = v183;
  swift_endAccess();
  if (v49)
  {
    v60 = sub_23AA0D3C4();
    swift_beginAccess();
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(a1 + v50);
    *(a1 + v50) = 0x8000000000000000;
    sub_23A9DB06C(v60, 0xD00000000000001CLL, 0x800000023AA20560, v61);
    *(a1 + v50) = v183;
    swift_endAccess();
  }

  v177 = a1;
  v62 = [a2 walls];
  sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
  v63 = sub_23AA0D2F4();

  if (v63 >> 62)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v64 = v177;

    v65 = sub_23AA0D434();
    v66 = v178;
    swift_beginAccess();
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(v64 + v66);
    *(v64 + v66) = 0x8000000000000000;
    sub_23A9DB06C(v65, 0x6C6C61576D754ELL, 0xE700000000000000, v67);
    *(v64 + v66) = v183;
    swift_endAccess();
    v68 = [a2 windows];
    v69 = sub_23AA0D2F4();

    if (v69 >> 62)
    {
      sub_23AA0D7F4();
    }

    v70 = sub_23AA0D434();
    v71 = v178;
    swift_beginAccess();
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(v64 + v71);
    *(v64 + v71) = 0x8000000000000000;
    sub_23A9DB06C(v70, 0x6F646E69576D754ELL, 0xE900000000000077, v72);
    *(v64 + v71) = v183;
    swift_endAccess();
    v73 = [a2 openings];
    v74 = sub_23AA0D2F4();

    if (v74 >> 62)
    {
      sub_23AA0D7F4();
    }

    v75 = sub_23AA0D434();
    v76 = v178;
    swift_beginAccess();
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(v64 + v76);
    *(v64 + v76) = 0x8000000000000000;
    sub_23A9DB06C(v75, 0x696E65704F6D754ELL, v28 + 513, v77);
    *(v64 + v76) = v183;
    swift_endAccess();
    v78 = [a2 objects];
    v28 = sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
    v79 = sub_23AA0D2F4();

    if (v79 >> 62)
    {
      sub_23AA0D7F4();
    }

    v80 = sub_23AA0D434();
    v81 = v177;
    v82 = v178;
    swift_beginAccess();
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(v81 + v82);
    *(v81 + v82) = 0x8000000000000000;
    sub_23A9DB06C(v80, 0x63656A624F6D754ELL, 0xE900000000000074, v83);
    *(v81 + v82) = v183;
    swift_endAccess();
    v84 = [a2 doors];
    v85 = sub_23AA0D2F4();

    if (v85 >> 62)
    {
      sub_23AA0D7F4();
    }

    v86 = sub_23AA0D434();
    v87 = v177;
    v88 = v178;
    swift_beginAccess();
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(v87 + v88);
    *(v87 + v88) = 0x8000000000000000;
    sub_23A9DB06C(v86, 0x65736F6C436D754ELL, 0xEC000000726F6F44, v89);
    *(v87 + v88) = v183;
    swift_endAccess();
    v90 = [a2 opendoors];
    v91 = sub_23AA0D2F4();

    if (v91 >> 62)
    {
      sub_23AA0D7F4();
    }

    v92 = sub_23AA0D434();
    v93 = v177;
    v94 = v178;
    swift_beginAccess();
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(v93 + v94);
    *(v93 + v94) = 0x8000000000000000;
    sub_23A9DB06C(v92, 0x446E65704F6D754ELL, 0xEB00000000726F6FLL, v95);
    *(v93 + v94) = v183;
    swift_endAccess();
    v96 = [a2 objects];
    v97 = sub_23AA0D2F4();

    if (!(v97 >> 62))
    {
      v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v98)
      {
        break;
      }

      goto LABEL_50;
    }

    v98 = sub_23AA0D7F4();
    if (!v98)
    {
      break;
    }

LABEL_50:
    v99 = 0;
    v181 = v97 & 0xFFFFFFFFFFFFFF8;
    v182 = v97 & 0xC000000000000001;
    a2 = MEMORY[0x277D84F98];
    v179 = v98;
    v180 = v97;
    while (1)
    {
      if (v182)
      {
        v100 = MEMORY[0x23EE90360](v99, v97);
      }

      else
      {
        if (v99 >= *(v181 + 16))
        {
          goto LABEL_86;
        }

        v100 = *(v97 + 8 * v99 + 32);
      }

      v101 = v100;
      v102 = v99 + 1;
      if (__OFADD__(v99, 1))
      {
        break;
      }

      v103 = [v100 type];
      if (!v103)
      {
        goto LABEL_118;
      }

      v104 = v103;
      type metadata accessor for RSCoreAdaptor();
      sub_23A99BA54(&v184);

      v105 = v184;
      v106 = sub_23AA0D1A4();
      if (*(a2 + 16))
      {
        sub_23A9EDDFC(v106, v107);
        v109 = v108;

        if (v109)
        {
          LOBYTE(v184) = v105;
          v110 = sub_23AA0D1A4();
          v112 = v111;
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v184 = a2;
          v114 = sub_23A9EDDFC(v110, v112);
          v115 = *(a2 + 16);
          v116 = (v113 & 1) == 0;
          v117 = v115 + v116;
          if (__OFADD__(v115, v116))
          {
            goto LABEL_89;
          }

          v118 = v113;
          if (*(a2 + 24) >= v117)
          {
            if (v28)
            {
              if ((v113 & 1) == 0)
              {
                goto LABEL_84;
              }
            }

            else
            {
              sub_23A90F200();
              if ((v118 & 1) == 0)
              {
                goto LABEL_84;
              }
            }
          }

          else
          {
            sub_23A90A29C(v117, v28);
            v119 = sub_23A9EDDFC(v110, v112);
            if ((v118 & 1) != (v120 & 1))
            {
              goto LABEL_119;
            }

            v114 = v119;
            if ((v118 & 1) == 0)
            {
LABEL_84:
              __break(1u);
              break;
            }
          }

          v136 = *(*(v184 + 56) + 8 * v114);

          if (__OFADD__(v136, 1))
          {
            goto LABEL_90;
          }

          a2 = v184;
          *(*(v184 + 56) + 8 * v114) = v136 + 1;
          goto LABEL_52;
        }
      }

      else
      {
      }

      LOBYTE(v184) = v105;
      v121 = sub_23AA0D1A4();
      v123 = v122;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v184 = a2;
      v125 = sub_23A9EDDFC(v121, v123);
      v126 = *(a2 + 16);
      v127 = (v124 & 1) == 0;
      v128 = v126 + v127;
      if (__OFADD__(v126, v127))
      {
        goto LABEL_87;
      }

      v129 = v124;
      if (*(a2 + 24) >= v128)
      {
        if (v28)
        {
          if (v124)
          {
            goto LABEL_51;
          }
        }

        else
        {
          sub_23A90F200();
          if (v129)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        sub_23A90A29C(v128, v28);
        v130 = sub_23A9EDDFC(v121, v123);
        if ((v129 & 1) != (v131 & 1))
        {
          goto LABEL_119;
        }

        v125 = v130;
        if (v129)
        {
LABEL_51:

          a2 = v184;
          *(*(v184 + 56) + 8 * v125) = 1;
LABEL_52:

          goto LABEL_53;
        }
      }

      a2 = v184;
      *(v184 + 8 * (v125 >> 6) + 64) |= 1 << v125;
      v132 = (*(a2 + 48) + 16 * v125);
      *v132 = v121;
      v132[1] = v123;
      *(*(a2 + 56) + 8 * v125) = 1;

      v133 = *(a2 + 16);
      v134 = __OFADD__(v133, 1);
      v135 = v133 + 1;
      if (v134)
      {
        goto LABEL_88;
      }

      *(a2 + 16) = v135;
LABEL_53:
      v97 = v180;
      ++v99;
      if (v102 == v179)
      {
        goto LABEL_94;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    sub_23AA0D7F4();
  }

  a2 = MEMORY[0x277D84F98];
LABEL_94:

  v137 = a2 + 64;
  v138 = 1 << *(a2 + 32);
  v139 = -1;
  if (v138 < 64)
  {
    v139 = ~(-1 << v138);
  }

  v140 = v139 & *(a2 + 64);
  v141 = (v138 + 63) >> 6;
  v181 = 0x800000023AA201A0;

  v142 = 0;
  v143 = v177;
  v144 = v178;
  v180 = a2 + 64;
  while (2)
  {
    if (v140)
    {
LABEL_104:
      v150 = (*(a2 + 48) + 16 * (__clz(__rbit64(v140)) | (v142 << 6)));
      v151 = *v150;
      v152 = v150[1];
      v184 = 0xD000000000000012;
      v185 = v181;
      MEMORY[0x23EE8FCA0](v151, v152);
      v154 = v184;
      v153 = v185;
      v182 = sub_23AA0D434();
      v155 = v177;
      swift_beginAccess();
      v156 = swift_isUniquelyReferenced_nonNull_native();
      v183 = *(v155 + v144);
      v157 = v183;
      *(v155 + v144) = 0x8000000000000000;
      v158 = sub_23A9EDDFC(v154, v153);
      v160 = v157[2];
      v161 = (v159 & 1) == 0;
      v134 = __OFADD__(v160, v161);
      v162 = v160 + v161;
      if (v134)
      {
        goto LABEL_116;
      }

      v163 = v159;
      if (v157[3] >= v162)
      {
        if ((v156 & 1) == 0)
        {
          v168 = v158;
          sub_23A90F094();
          v158 = v168;
          if ((v163 & 1) == 0)
          {
            goto LABEL_110;
          }

          goto LABEL_97;
        }
      }

      else
      {
        sub_23A909FF8(v162, v156);
        v158 = sub_23A9EDDFC(v154, v153);
        if ((v163 & 1) != (v164 & 1))
        {
          goto LABEL_119;
        }
      }

      if ((v163 & 1) == 0)
      {
LABEL_110:
        v146 = v183;
        v183[(v158 >> 6) + 8] |= 1 << v158;
        v165 = (v146[6] + 16 * v158);
        *v165 = v154;
        v165[1] = v153;
        *(v146[7] + 8 * v158) = v182;
        v166 = v146[2];
        v134 = __OFADD__(v166, 1);
        v167 = v166 + 1;
        if (v134)
        {
          goto LABEL_117;
        }

        v146[2] = v167;
        goto LABEL_98;
      }

LABEL_97:
      v145 = v158;

      v146 = v183;
      v147 = v183[7];
      v148 = *(v147 + 8 * v145);
      *(v147 + 8 * v145) = v182;

LABEL_98:
      v140 &= v140 - 1;
      v143 = v177;
      *(v177 + v178) = v146;
      swift_endAccess();
      v137 = v180;
      continue;
    }

    break;
  }

  while (1)
  {
    v149 = v142 + 1;
    if (__OFADD__(v142, 1))
    {
      break;
    }

    if (v149 >= v141)
    {

      v169 = objc_allocWithZone(MEMORY[0x277CCACA8]);

      v170 = sub_23AA0D104();

      v171 = [v169 initWithString_];

      v172 = v178;
      swift_beginAccess();
      v173 = swift_isUniquelyReferenced_nonNull_native();
      v183 = *(v143 + v172);
      *(v143 + v172) = 0x8000000000000000;
      sub_23A9DB06C(v171, 0x7245656E696C6E4FLL, 0xEF65707954726F72, v173);
      *(v143 + v172) = v183;
      swift_endAccess();
      v174 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      swift_beginAccess();
      v175 = swift_isUniquelyReferenced_nonNull_native();
      v183 = *(v143 + v172);
      *(v143 + v172) = 0x8000000000000000;
      sub_23A9DB06C(v174, 0xD000000000000011, 0x800000023AA20540, v175);
      *(v143 + v172) = v183;
      swift_endAccess();

      return;
    }

    v140 = *(v137 + 8 * v149);
    ++v142;
    if (v140)
    {
      v142 = v149;
      goto LABEL_104;
    }
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  sub_23AA0DC24();
  __break(1u);
}

void sub_23A9574F4(void *a1, char a2)
{
  if (*(a1 + OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple) == 1)
  {
    sub_23A954A94();
    v4 = sub_23AA0D104();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v18 = sub_23A95F8D0;
    v19 = v5;
    v14 = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_23A954DD4;
    v17 = &block_descriptor_223;
    v6 = _Block_copy(&v14);
    v7 = a1;

    AnalyticsSendEventLazy();
    _Block_release(v6);

    sub_23A954A94();
    if (a2)
    {
      v8 = sub_23AA0D104();
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      v18 = sub_23A95F8D0;
      v19 = v9;
      v14 = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v10 = &block_descriptor_216;
    }

    else
    {
      v8 = sub_23AA0D104();
      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      v18 = sub_23A95F8D0;
      v19 = v11;
      v14 = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v10 = &block_descriptor_209;
    }

    v16 = sub_23A954DD4;
    v17 = v10;
    v12 = _Block_copy(&v14);
    v13 = v7;

    AnalyticsSendEventLazy();
    _Block_release(v12);
  }

  sub_23A954F80();
}

id sub_23A957770()
{
  v1 = v0;
  v20 = sub_23AA0D524();
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0D504();
  MEMORY[0x28223BE20](v5);
  v6 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v6 - 8);
  v19 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_queue;
  v7 = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v18[1] = "LatencyOnlineScan";
  v18[2] = v7;
  sub_23AA0CF14();
  v22 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1150, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v20);
  *&v0[v19] = sub_23AA0D554();
  v8 = OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_launchTimeStart;
  v9 = sub_23AA0C064();
  v10 = *(*(v9 - 8) + 56);
  v10(&v1[v8], 1, 1, v9);
  v10(&v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineScanTimeStart], 1, 1, v9);
  v11 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeDeltaTimeArray] = MEMORY[0x277D84F90];
  v12 = &v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_arframeLastTimeInterval];
  *v12 = 0;
  v12[8] = 1;
  *&v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeDeltaTimeArray] = v11;
  v13 = &v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_keyframeLastTimeInterval];
  *v13 = 0;
  v13[8] = 1;
  *&v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateDeltaTimeArray] = v11;
  v14 = &v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineFloorPlanUpdateLastTimeInterval];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v1[OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_errorType];
  *v15 = 0x73736563637573;
  *(v15 + 1) = 0xE700000000000000;
  v16 = type metadata accessor for AnalyticsOnline(0);
  v21.receiver = v1;
  v21.super_class = v16;
  return objc_msgSendSuper2(&v21, sel_init);
}

double sub_23A957B20()
{
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_launchTimeStart, &qword_27DFAEB30, &unk_23AA11B50);
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan15AnalyticsOnline_onlineScanTimeStart, &qword_27DFAEB30, &unk_23AA11B50);

  return result;
}

id sub_23A957C00(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23A957D28(uint64_t a1)
{
  sub_23A8ECAC8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_23A957E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void *a4)
{
  result = [objc_allocWithZone(a3(a2)) init];
  *a4 = result;
  return result;
}

double sub_23A957E88(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = a4;
  v29 = a2;
  v30 = a3;
  v6 = sub_23AA0CEC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0CF24();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CapturedRoom(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = MEMORY[0x28223BE20](v13 - 8);
  v17 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple] == 1)
  {
    v26[1] = *&v4[OBJC_IVAR____TtC8RoomPlan16AnalyticsOffline_queue];
    sub_23A95F358(a1, v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CapturedRoom);
    v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v19 = v18 + v15;
    v27 = v10;
    v20 = (v18 + v15) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    sub_23A95F520(v17, v21 + v18, type metadata accessor for CapturedRoom);
    *(v21 + v19) = v28 & 1;
    v22 = v21 + v20;
    v23 = v30;
    *(v22 + 8) = v29;
    *(v22 + 16) = v23;
    aBlock[4] = sub_23A95F588;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_196;
    v24 = _Block_copy(aBlock);
    v25 = v4;

    sub_23AA0CEE4();
    v32 = MEMORY[0x277D84F90];
    sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v12, v9, v24);
    _Block_release(v24);
    (*(v7 + 8))(v9, v6);
    (*(v31 + 8))(v12, v27);
  }

  return result;
}

void sub_23A958254(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v265 = a5;
  v264 = a4;
  v263 = a3;
  v270 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v6 - 8);
  v278 = &v261 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v266 = &v261 - v9;
  MEMORY[0x28223BE20](v10);
  v280 = &v261 - v11;
  v261 = type metadata accessor for CapturedRoom.Object(0);
  v274 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v262 = &v261 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v261 - v14;
  v16 = type metadata accessor for CapturedRoom.Surface(0);
  v271 = *(v16 - 8);
  v272 = v16;
  MEMORY[0x28223BE20](v16);
  v277 = &v261 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v279 = &v261 - v19;
  MEMORY[0x28223BE20](v20);
  v284 = &v261 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v261 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v261 - v26;
  v28 = sub_23AA0C064();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v261 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v261 - v33;
  v35 = OBJC_IVAR____TtC8RoomPlan16AnalyticsOffline_offlineGenerationTimeStart;
  swift_beginAccess();
  sub_23A8D5194(a1 + v35, v27, &qword_27DFAEB30, &unk_23AA11B50);
  v36 = &qword_27DFAF000;
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_23A8D50D0(v27, &qword_27DFAEB30, &unk_23AA11B50);
  }

  else
  {
    (*(v29 + 32))(v34, v27, v28);
    sub_23AA0C054();
    sub_23AA0C014();
    v37 = sub_23AA0D3C4();
    v38 = OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v285 = *(a1 + v38);
    *(a1 + v38) = 0x8000000000000000;
    sub_23A9DB06C(v37, 0xD000000000000018, 0x800000023AA20480, isUniquelyReferenced_nonNull_native);
    *(a1 + v38) = v285;
    v36 = &qword_27DFAF000;
    swift_endAccess();
    v40 = *(v29 + 8);
    v40(v31, v28);
    v40(v34, v28);
  }

  v41 = v270;
  v267 = *v270;
  v42 = sub_23AA0D434();
  v43 = v36[337];
  swift_beginAccess();
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(a1 + v43);
  *(a1 + v43) = 0x8000000000000000;
  sub_23A9DB06C(v42, 0x6C6C61576D754ELL, 0xE700000000000000, v44);
  *(a1 + v43) = v285;
  swift_endAccess();
  v269 = v41[2];
  v45 = sub_23AA0D434();
  swift_beginAccess();
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(a1 + v43);
  *(a1 + v43) = 0x8000000000000000;
  sub_23A9DB06C(v45, 0x6F646E69576D754ELL, 0xE900000000000077, v46);
  *(a1 + v43) = v285;
  swift_endAccess();
  v47 = sub_23AA0D434();
  swift_beginAccess();
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(a1 + v43);
  *(a1 + v43) = 0x8000000000000000;
  sub_23A9DB06C(v47, 0x696E65704F6D754ELL, 0xEA0000000000676ELL, v48);
  *(a1 + v43) = v285;
  swift_endAccess();
  v49 = v41[5];
  v50 = sub_23AA0D434();
  swift_beginAccess();
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(a1 + v43);
  *(a1 + v43) = 0x8000000000000000;
  sub_23A9DB06C(v50, 0x63656A624F6D754ELL, 0xE900000000000074, v51);
  v275 = a1;
  v276 = v43;
  *(a1 + v43) = v285;
  swift_endAccess();
  v52 = v41[1];
  v53 = *(v52 + 16);
  v268 = v52;
  v54 = 0;
  v55 = 0;
  if (v53)
  {
    v56 = v52 + ((*(v271 + 80) + 32) & ~*(v271 + 80));
    v57 = *(v271 + 72);
    do
    {
      sub_23A95F358(v56, v24, type metadata accessor for CapturedRoom.Surface);
      v59 = *v24;
      sub_23A8D5320(v24, type metadata accessor for CapturedRoom.Surface);
      if ((v59 - 2) >= 4u)
      {
        if (v59)
        {
          v58 = __OFADD__(v54++, 1);
          if (v58)
          {
            goto LABEL_163;
          }
        }

        else
        {
          v58 = __OFADD__(v55++, 1);
          if (v58)
          {
            __break(1u);
            break;
          }
        }
      }

      v56 += v57;
      --v53;
    }

    while (v53);
  }

  v60 = sub_23AA0D434();
  v61 = v275;
  v62 = v276;
  swift_beginAccess();
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v61 + v62);
  *(v61 + v62) = 0x8000000000000000;
  sub_23A9DB06C(v60, 0x65736F6C436D754ELL, 0xEC000000726F6F44, v63);
  *(v61 + v62) = v285;
  swift_endAccess();
  v64 = sub_23AA0D434();
  swift_beginAccess();
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v61 + v62);
  *(v61 + v62) = 0x8000000000000000;
  sub_23A9DB06C(v64, 0x446E65704F6D754ELL, 0xEB00000000726F6FLL, v65);
  *(v61 + v62) = v285;
  swift_endAccess();
  v282 = *(v49 + 16);
  v283 = v49;
  if (!v282)
  {
    goto LABEL_43;
  }

  v66 = 0;
  v67 = v274;
  v281 = v49 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
  v68 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v66 >= *(v49 + 16))
    {
      goto LABEL_156;
    }

    sub_23A95F358(v281 + *(v67 + 72) * v66, v15, type metadata accessor for CapturedRoom.Object);
    LOBYTE(v286) = *v15;
    v70 = sub_23AA0D1A4();
    if (*(v68 + 16))
    {
      break;
    }

LABEL_27:
    LOBYTE(v286) = *v15;
    v86 = sub_23AA0D1A4();
    v88 = v87;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v286 = v68;
    v90 = sub_23A9EDDFC(v86, v88);
    v92 = *(v68 + 16);
    v93 = (v91 & 1) == 0;
    v58 = __OFADD__(v92, v93);
    v94 = v92 + v93;
    if (v58)
    {
      goto LABEL_157;
    }

    v95 = v91;
    if (*(v68 + 24) < v94)
    {
      sub_23A90A29C(v94, v89);
      v90 = sub_23A9EDDFC(v86, v88);
      if ((v95 & 1) != (v96 & 1))
      {
        goto LABEL_176;
      }

LABEL_32:
      if (v95)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }

    if (v89)
    {
      goto LABEL_32;
    }

    v102 = v90;
    sub_23A90F200();
    v90 = v102;
    if (v95)
    {
LABEL_15:
      v69 = v90;

      v68 = v286;
      *(*(v286 + 56) + 8 * v69) = 1;
LABEL_16:
      sub_23A8D5320(v15, type metadata accessor for CapturedRoom.Object);
      goto LABEL_17;
    }

LABEL_33:
    v68 = v286;
    *(v286 + 8 * (v90 >> 6) + 64) |= 1 << v90;
    v97 = (*(v68 + 48) + 16 * v90);
    *v97 = v86;
    v97[1] = v88;
    *(*(v68 + 56) + 8 * v90) = 1;
    sub_23A8D5320(v15, type metadata accessor for CapturedRoom.Object);
    v98 = *(v68 + 16);
    v58 = __OFADD__(v98, 1);
    v99 = v98 + 1;
    if (v58)
    {
      goto LABEL_160;
    }

    *(v68 + 16) = v99;
LABEL_17:
    v49 = v283;
    if (v282 == ++v66)
    {
      goto LABEL_44;
    }
  }

  sub_23A9EDDFC(v70, v71);
  v73 = v72;

  if ((v73 & 1) == 0)
  {
    goto LABEL_27;
  }

  LOBYTE(v286) = *v15;
  v74 = sub_23AA0D1A4();
  v76 = v75;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v286 = v68;
  v79 = sub_23A9EDDFC(v74, v76);
  v80 = *(v68 + 16);
  v81 = (v78 & 1) == 0;
  v82 = v80 + v81;
  if (__OFADD__(v80, v81))
  {
    goto LABEL_161;
  }

  v83 = v78;
  if (*(v68 + 24) >= v82)
  {
    if (v77)
    {
      v67 = v274;
      if ((v78 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_23A90F200();
      v67 = v274;
      if ((v83 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_37;
  }

  sub_23A90A29C(v82, v77);
  v84 = sub_23A9EDDFC(v74, v76);
  if ((v83 & 1) != (v85 & 1))
  {
    goto LABEL_176;
  }

  v79 = v84;
  v67 = v274;
  if (v83)
  {
LABEL_37:
    v100 = *(*(v286 + 56) + 8 * v79);

    v101 = v100 + 1;
    if (__OFADD__(v100, 1))
    {
      goto LABEL_162;
    }

    v68 = v286;
    *(*(v286 + 56) + 8 * v79) = v101;
    goto LABEL_16;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  v68 = MEMORY[0x277D84F98];
LABEL_44:
  v103 = v68 + 64;
  v104 = 1 << *(v68 + 32);
  v105 = -1;
  if (v104 < 64)
  {
    v105 = ~(-1 << v104);
  }

  v106 = v105 & *(v68 + 64);
  v107 = (v104 + 63) >> 6;
  v273 = 0x800000023AA201A0;
  v281 = v68;

  v108 = 0;
  v109 = v275;
  while (2)
  {
    if (v106)
    {
      goto LABEL_54;
    }

LABEL_50:
    v114 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    if (v114 < v107)
    {
      v106 = *(v103 + 8 * v114);
      ++v108;
      if (v106)
      {
        v108 = v114;
LABEL_54:
        v115 = (*(v281 + 48) + 16 * (__clz(__rbit64(v106)) | (v108 << 6)));
        v116 = *v115;
        v117 = v115[1];
        v286 = 0xD000000000000012;
        v287 = v273;
        MEMORY[0x23EE8FCA0](v116, v117);
        v119 = v286;
        v118 = v287;
        v282 = sub_23AA0D434();
        v120 = v276;
        swift_beginAccess();
        v121 = swift_isUniquelyReferenced_nonNull_native();
        v285 = *(v109 + v120);
        v122 = v285;
        *(v109 + v120) = 0x8000000000000000;
        v123 = sub_23A9EDDFC(v119, v118);
        v125 = v122[2];
        v126 = (v124 & 1) == 0;
        v58 = __OFADD__(v125, v126);
        v127 = v125 + v126;
        if (v58)
        {
          goto LABEL_164;
        }

        v128 = v124;
        if (v122[3] >= v127)
        {
          if (v121)
          {
            goto LABEL_59;
          }

          v133 = v123;
          sub_23A90F094();
          v123 = v133;
          if (v128)
          {
            goto LABEL_47;
          }

LABEL_60:
          v111 = v285;
          v285[(v123 >> 6) + 8] |= 1 << v123;
          v130 = (v111[6] + 16 * v123);
          *v130 = v119;
          v130[1] = v118;
          *(v111[7] + 8 * v123) = v282;
          v131 = v111[2];
          v58 = __OFADD__(v131, 1);
          v132 = v131 + 1;
          if (!v58)
          {
            v111[2] = v132;
            goto LABEL_48;
          }

          goto LABEL_170;
        }

        sub_23A909FF8(v127, v121);
        v123 = sub_23A9EDDFC(v119, v118);
        if ((v128 & 1) != (v129 & 1))
        {
          goto LABEL_176;
        }

LABEL_59:
        if ((v128 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_47:
        v110 = v123;

        v111 = v285;
        v112 = v285[7];
        v113 = *(v112 + 8 * v110);
        *(v112 + 8 * v110) = v282;

LABEL_48:
        v106 &= v106 - 1;
        v109 = v275;
        *(v275 + v276) = v111;
        swift_endAccess();
        continue;
      }

      goto LABEL_50;
    }

    break;
  }

  v134 = v283;
  v135 = *(v283 + 16);
  if (v135)
  {
    v136 = 0;
    v137 = *(v261 + 36);
    v138 = v283 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
    v139 = *(v274 + 72);
    v140 = v262;
    while (1)
    {
      sub_23A95F358(v138, v140, type metadata accessor for CapturedRoom.Object);
      v141 = *(v140 + v137);

      sub_23A8D5320(v140, type metadata accessor for CapturedRoom.Object);
      v142 = *(v141 + 16);

      if (v142)
      {
        v58 = __OFADD__(v136++, 1);
        if (v58)
        {
          break;
        }
      }

      v138 += v139;
      if (!--v135)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
  }

  v136 = 0;
LABEL_72:
  v143 = sub_23AA0D434();
  v144 = v275;
  v145 = v276;
  swift_beginAccess();
  v146 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v144 + v145);
  *(v144 + v145) = 0x8000000000000000;
  sub_23A9DB06C(v143, 0xD000000000000016, 0x800000023AA201C0, v146);
  *(v144 + v145) = v285;
  swift_endAccess();
  if (*(v134 + 16))
  {
    if ((v136 * 100) >> 64 == (100 * v136) >> 63)
    {
      v147 = sub_23AA0D3C4();
      swift_beginAccess();
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v285 = *(v144 + v145);
      *(v144 + v145) = 0x8000000000000000;
      sub_23A9DB06C(v147, 0xD000000000000027, 0x800000023AA20450, v148);
      *(v144 + v145) = v285;
      swift_endAccess();
      goto LABEL_75;
    }

LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

LABEL_75:
  v149 = v270[4];
  v150 = *(v149 + 16);
  if (!v150)
  {
    goto LABEL_86;
  }

  v151 = 0;
  v152 = 0;
  v153 = (v149 + ((*(v271 + 80) + 32) & ~*(v271 + 80)));
  v155 = 0.0;
  v156 = 0x7FFFFFFFFFFFFFFFLL;
  while (2)
  {
    v154 = *(v272 + 60);
    v157 = *(*(v153 + v154) + 16);
    if (!v157)
    {
LABEL_81:
      v155 = v155 + vmuls_lane_f32(COERCE_FLOAT(*v153[2].f32), v153[2], 1);
      v153 = (v153 + *(v271 + 72));
      if (!--v150)
      {
        goto LABEL_86;
      }

      continue;
    }

    break;
  }

  v58 = __OFADD__(v152++, 1);
  if (!v58)
  {
    if (v157 > v151)
    {
      v151 = *(*(v153 + v154) + 16);
    }

    if (v157 < v156)
    {
      v156 = *(*(v153 + v154) + 16);
    }

    goto LABEL_81;
  }

  __break(1u);
LABEL_86:
  v158 = sub_23AA0D3C4();
  swift_beginAccess();
  v159 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v144 + v145);
  *(v144 + v145) = 0x8000000000000000;
  sub_23A9DB06C(v158, 0x657A69536D6F6F52, 0xEC00000061657241, v159);
  *(v144 + v145) = v285;
  swift_endAccess();
  v160 = sub_23AA0D434();
  swift_beginAccess();
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v144 + v145);
  *(v144 + v145) = 0x8000000000000000;
  sub_23A9DB06C(v160, 0xD000000000000013, 0x800000023AA201E0, v161);
  *(v144 + v145) = v285;
  swift_endAccess();
  v162 = sub_23AA0D434();
  swift_beginAccess();
  v163 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v144 + v145);
  *(v144 + v145) = 0x8000000000000000;
  sub_23A9DB06C(v162, 0xD00000000000001BLL, 0x800000023AA20200, v163);
  *(v144 + v145) = v285;
  swift_endAccess();
  v164 = sub_23AA0D434();
  swift_beginAccess();
  v165 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v144 + v145);
  *(v144 + v145) = 0x8000000000000000;
  sub_23A9DB06C(v164, 0xD00000000000001BLL, 0x800000023AA20220, v165);
  *(v144 + v145) = v285;
  swift_endAccess();
  v166 = *(v270 + *(type metadata accessor for CapturedRoom(0) + 44));
  v167 = *(v166 + 16);
  if (!v167)
  {
    goto LABEL_110;
  }

  v168 = 0;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = (v166 + 32);
  v175 = v167;
  while (2)
  {
    v177 = *v174;
    v174 += 160;
    v176 = v177;
    if (v177 <= 2)
    {
      if (v176)
      {
        if (v176 == 1)
        {
          v58 = __OFADD__(v172++, 1);
          if (v58)
          {
            goto LABEL_169;
          }
        }

        else
        {
          v58 = __OFADD__(v171++, 1);
          if (v58)
          {
            goto LABEL_165;
          }
        }
      }

      else
      {
        v58 = __OFADD__(v173++, 1);
        if (v58)
        {
          goto LABEL_166;
        }
      }

      goto LABEL_89;
    }

    if (v176 == 3)
    {
      v58 = __OFADD__(v170++, 1);
      if (v58)
      {
        goto LABEL_168;
      }

      goto LABEL_89;
    }

    if (v176 == 4)
    {
      v58 = __OFADD__(v169++, 1);
      if (v58)
      {
        goto LABEL_167;
      }

      goto LABEL_89;
    }

    v58 = __OFADD__(v168++, 1);
    if (!v58)
    {
LABEL_89:
      if (!--v175)
      {
        goto LABEL_110;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_110:
  v178 = sub_23AA0D434();
  v179 = v275;
  v180 = v276;
  swift_beginAccess();
  v181 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v179 + v180);
  *(v179 + v180) = 0x8000000000000000;
  sub_23A9DB06C(v178, 0x69746365536D754ELL, 0xEA00000000006E6FLL, v181);
  *(v179 + v180) = v285;
  swift_endAccess();
  v182 = sub_23AA0D434();
  swift_beginAccess();
  v183 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v179 + v180);
  *(v179 + v180) = 0x8000000000000000;
  sub_23A9DB06C(v182, 0xD000000000000014, 0x800000023AA20240, v183);
  *(v179 + v180) = v285;
  swift_endAccess();
  v184 = sub_23AA0D434();
  swift_beginAccess();
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v179 + v180);
  *(v179 + v180) = 0x8000000000000000;
  sub_23A9DB06C(v184, 0xD000000000000011, 0x800000023AA20260, v185);
  *(v179 + v180) = v285;
  swift_endAccess();
  v186 = sub_23AA0D434();
  swift_beginAccess();
  v187 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v179 + v180);
  *(v179 + v180) = 0x8000000000000000;
  sub_23A9DB06C(v186, 0xD000000000000012, 0x800000023AA20280, v187);
  *(v179 + v180) = v285;
  swift_endAccess();
  v188 = sub_23AA0D434();
  swift_beginAccess();
  v189 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v179 + v180);
  *(v179 + v180) = 0x8000000000000000;
  sub_23A9DB06C(v188, 0xD000000000000011, 0x800000023AA202A0, v189);
  *(v179 + v180) = v285;
  swift_endAccess();
  v190 = sub_23AA0D434();
  swift_beginAccess();
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v179 + v180);
  *(v179 + v180) = 0x8000000000000000;
  sub_23A9DB06C(v190, 0xD000000000000014, 0x800000023AA202C0, v191);
  *(v179 + v180) = v285;
  swift_endAccess();
  v192 = sub_23AA0D434();
  swift_beginAccess();
  v193 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v179 + v180);
  *(v179 + v180) = 0x8000000000000000;
  v274 = 0xD000000000000010;
  sub_23A9DB06C(v192, 0xD000000000000010, 0x800000023AA202E0, v193);
  *(v179 + v180) = v285;
  swift_endAccess();
  v194 = v267;
  v195 = *(v267 + 16);
  if (!v195)
  {
    v206 = 0;
    goto LABEL_128;
  }

  v196 = 0;
  v197 = 0;
  v198 = v272;
  v199 = v267 + ((*(v271 + 80) + 32) & ~*(v271 + 80));
  v282 = *(v271 + 72);
  v283 = 0;
  v200 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v201 = v284;
    sub_23A95F358(v199, v284, type metadata accessor for CapturedRoom.Surface);
    v202 = *(*(v201 + *(v198 + 60)) + 16);
    if (v202)
    {
      v58 = __OFADD__(v197++, 1);
      v203 = v280;
      if (v58)
      {
        goto LABEL_158;
      }

      v204 = v283;
      if (v202 > v283)
      {
        v204 = *(*(v201 + *(v198 + 60)) + 16);
      }

      v283 = v204;
      if (v202 < v200)
      {
        v200 = v202;
      }
    }

    else
    {
      v203 = v280;
    }

    sub_23A8D5194(v201 + *(v198 + 52), v203, &qword_27DFAEB38, &unk_23AA11B60);
    v205 = type metadata accessor for CapturedRoom.Surface.Curve(0);
    if ((*(*(v205 - 8) + 48))(v203, 1, v205) == 1)
    {
      sub_23A8D5320(v201, type metadata accessor for CapturedRoom.Surface);
      sub_23A8D50D0(v203, &qword_27DFAEB38, &unk_23AA11B60);
    }

    else
    {
      sub_23A8D50D0(v203, &qword_27DFAEB38, &unk_23AA11B60);
      v58 = __OFADD__(v196++, 1);
      if (v58)
      {
        goto LABEL_159;
      }

      sub_23A8D5320(v284, type metadata accessor for CapturedRoom.Surface);
    }

    v199 += v282;
    --v195;
  }

  while (v195);
  v194 = v267;
  v206 = v196;
  if (!v197)
  {
LABEL_128:
    v197 = 0;
  }

  v207 = sub_23AA0D434();
  v208 = v275;
  v209 = v276;
  swift_beginAccess();
  v210 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v208 + v209);
  *(v208 + v209) = 0x8000000000000000;
  sub_23A9DB06C(v207, 0xD000000000000012, 0x800000023AA20300, v210);
  *(v208 + v209) = v285;
  swift_endAccess();
  v211 = sub_23AA0D434();
  swift_beginAccess();
  v212 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v208 + v209);
  *(v208 + v209) = 0x8000000000000000;
  sub_23A9DB06C(v211, 0xD00000000000001ALL, 0x800000023AA20320, v212);
  *(v208 + v209) = v285;
  swift_endAccess();
  v213 = sub_23AA0D434();
  swift_beginAccess();
  v214 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v208 + v209);
  *(v208 + v209) = 0x8000000000000000;
  sub_23A9DB06C(v213, 0xD00000000000001ALL, 0x800000023AA20340, v214);
  *(v208 + v209) = v285;
  swift_endAccess();
  v215 = sub_23AA0D434();
  swift_beginAccess();
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v208 + v209);
  *(v208 + v209) = 0x8000000000000000;
  sub_23A9DB06C(v215, 0x65767275436D754ELL, 0xEC0000006C6C6157, v216);
  *(v208 + v209) = v285;
  swift_endAccess();
  v217 = v272;
  if (!*(v194 + 16))
  {
LABEL_133:
    v224 = *(v269 + 16);
    v225 = v266;
    v226 = 0;
    if (v224)
    {
      v227 = *(v217 + 52);
      v228 = v269 + ((*(v271 + 80) + 32) & ~*(v271 + 80));
      v229 = *(v271 + 72);
      while (1)
      {
        v230 = v279;
        sub_23A95F358(v228, v279, type metadata accessor for CapturedRoom.Surface);
        sub_23A8D5194(v230 + v227, v225, &qword_27DFAEB38, &unk_23AA11B60);
        sub_23A8D5320(v230, type metadata accessor for CapturedRoom.Surface);
        v231 = type metadata accessor for CapturedRoom.Surface.Curve(0);
        LODWORD(v230) = (*(*(v231 - 8) + 48))(v225, 1, v231);
        sub_23A8D50D0(v225, &qword_27DFAEB38, &unk_23AA11B60);
        if (v230 != 1)
        {
          v58 = __OFADD__(v226++, 1);
          if (v58)
          {
            break;
          }
        }

        v228 += v229;
        if (!--v224)
        {
          goto LABEL_140;
        }
      }

      __break(1u);
    }

LABEL_140:
    v232 = sub_23AA0D434();
    v233 = v275;
    v234 = v276;
    swift_beginAccess();
    v235 = swift_isUniquelyReferenced_nonNull_native();
    v285 = *(v233 + v234);
    *(v233 + v234) = 0x8000000000000000;
    sub_23A9DB06C(v232, 0x65767275436D754ELL, 0xEE00776F646E6957, v235);
    *(v233 + v234) = v285;
    swift_endAccess();
    v236 = v272;
    if (*(v269 + 16))
    {
      if ((v226 * 100) >> 64 != (100 * v226) >> 63)
      {
        goto LABEL_174;
      }

      v237 = sub_23AA0D3C4();
      swift_beginAccess();
      v238 = swift_isUniquelyReferenced_nonNull_native();
      v285 = *(v233 + v234);
      *(v233 + v234) = 0x8000000000000000;
      sub_23A9DB06C(v237, 0xD00000000000001FLL, 0x800000023AA203E0, v238);
      *(v233 + v234) = v285;
      swift_endAccess();
    }

    v239 = *(v268 + 16);
    if (v239)
    {
      v240 = 0;
      v241 = *(v236 + 52);
      v242 = v268 + ((*(v271 + 80) + 32) & ~*(v271 + 80));
      v243 = *(v271 + 72);
      while (1)
      {
        v244 = v277;
        sub_23A95F358(v242, v277, type metadata accessor for CapturedRoom.Surface);
        v245 = v278;
        sub_23A8D5194(v244 + v241, v278, &qword_27DFAEB38, &unk_23AA11B60);
        sub_23A8D5320(v244, type metadata accessor for CapturedRoom.Surface);
        v246 = type metadata accessor for CapturedRoom.Surface.Curve(0);
        LODWORD(v244) = (*(*(v246 - 8) + 48))(v245, 1, v246);
        sub_23A8D50D0(v245, &qword_27DFAEB38, &unk_23AA11B60);
        if (v244 != 1)
        {
          v58 = __OFADD__(v240++, 1);
          if (v58)
          {
            break;
          }
        }

        v242 += v243;
        if (!--v239)
        {
          goto LABEL_151;
        }
      }

      __break(1u);
    }

    v240 = 0;
LABEL_151:
    v247 = sub_23AA0D434();
    v248 = v275;
    v249 = v276;
    swift_beginAccess();
    v250 = swift_isUniquelyReferenced_nonNull_native();
    v285 = *(v248 + v249);
    *(v248 + v249) = 0x8000000000000000;
    sub_23A9DB06C(v247, 0x65767275436D754ELL, 0xEC000000726F6F44, v250);
    *(v248 + v249) = v285;
    swift_endAccess();
    if (*(v268 + 16))
    {
      if ((v240 * 100) >> 64 != (100 * v240) >> 63)
      {
        goto LABEL_175;
      }

      v251 = sub_23AA0D3C4();
      v249 = v276;
      swift_beginAccess();
      v252 = swift_isUniquelyReferenced_nonNull_native();
      v285 = *(v248 + v249);
      *(v248 + v249) = 0x8000000000000000;
      sub_23A9DB06C(v251, 0xD00000000000001BLL, 0x800000023AA203C0, v252);
      *(v248 + v249) = v285;
      swift_endAccess();
    }

    v253 = sub_23AA0D434();
    swift_beginAccess();
    v254 = swift_isUniquelyReferenced_nonNull_native();
    v285 = *(v248 + v249);
    *(v248 + v249) = 0x8000000000000000;
    sub_23A9DB06C(v253, 0xD000000000000015, 0x800000023AA20360, v254);
    *(v248 + v249) = v285;
    swift_endAccess();
    v255 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v256 = sub_23AA0D104();
    v257 = [v255 initWithString_];

    swift_beginAccess();
    v258 = swift_isUniquelyReferenced_nonNull_native();
    v285 = *(v248 + v249);
    *(v248 + v249) = 0x8000000000000000;
    sub_23A9DB06C(v257, v274, 0x800000023AA20380, v258);
    *(v248 + v249) = v285;
    swift_endAccess();
    v259 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    swift_beginAccess();
    v260 = swift_isUniquelyReferenced_nonNull_native();
    v285 = *(v248 + v249);
    *(v248 + v249) = 0x8000000000000000;
    sub_23A9DB06C(v259, 0xD000000000000012, 0x800000023AA203A0, v260);
    *(v248 + v249) = v285;
    swift_endAccess();

    return;
  }

  if ((v197 * 100) >> 64 != (100 * v197) >> 63)
  {
    goto LABEL_172;
  }

  v218 = sub_23AA0D3C4();
  v219 = v275;
  v220 = v276;
  swift_beginAccess();
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *(v219 + v220);
  *(v219 + v220) = 0x8000000000000000;
  sub_23A9DB06C(v218, 0xD000000000000021, 0x800000023AA20400, v221);
  *(v219 + v220) = v285;
  swift_endAccess();
  if ((v206 * 100) >> 64 == (100 * v206) >> 63)
  {
    v222 = sub_23AA0D3C4();
    swift_beginAccess();
    v223 = swift_isUniquelyReferenced_nonNull_native();
    v285 = *(v219 + v220);
    *(v219 + v220) = 0x8000000000000000;
    sub_23A9DB06C(v222, 0xD00000000000001BLL, 0x800000023AA20430, v223);
    *(v219 + v220) = v285;
    swift_endAccess();
    goto LABEL_133;
  }

LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  sub_23AA0DC24();
  __break(1u);
}