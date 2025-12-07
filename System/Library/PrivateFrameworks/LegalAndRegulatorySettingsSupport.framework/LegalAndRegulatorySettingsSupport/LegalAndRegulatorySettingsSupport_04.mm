unint64_t sub_255C7CFF0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_255C7B780(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 >= v20 && (a6 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v22 >= v20 && (a6 & 1) == 0)
  {
    v23 = result;
    sub_255C7D8BC();
    result = v23;
    goto LABEL_8;
  }

  sub_255C7C86C(v20, a6 & 1);
  result = sub_255C7B780(a5);
  if ((v21 & 1) == (v24 & 1))
  {
LABEL_8:
    v25 = *v7;
    if (v21)
    {
      v26 = v25[7] + 32 * result;
      *v26 = a1;
      *(v26 + 8) = a2 & 1;
      *(v26 + 16) = a3;
      *(v26 + 24) = a4 & 1;
      return result;
    }

    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 8 * result) = a5;
    v27 = v25[7] + 32 * result;
    *v27 = a1;
    *(v27 + 8) = a2 & 1;
    *(v27 + 16) = a3;
    *(v27 + 24) = a4 & 1;
    v28 = v25[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v25[2] = v29;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_255D07708();
  __break(1u);
  return result;
}

uint64_t sub_255C7D168(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_255D05B78();
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

char *sub_255C7D220()
{
  v1 = v0;
  v33 = sub_255D05B78();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC58, &qword_255D0FE30);
  v3 = *v0;
  v4 = sub_255D07638();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_255C7D4A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCA0, &qword_255D0B270);
  v2 = *v0;
  v3 = sub_255D07638();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_255C7D600()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC98, &qword_255D0B268);
  v2 = *v0;
  v3 = sub_255D07638();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_255C7D770()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCA8, &qword_255D0B278);
  v2 = *v0;
  v3 = sub_255D07638();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_255C7D8BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC50, &unk_255D0B220);
  v2 = *v0;
  v3 = sub_255D07638();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 24) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 32 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      LOBYTE(v17) = *(v17 + 24);
      result = *(v4 + 48);
      *(result + v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 32 * v14;
      *v21 = v18;
      *(v21 + 8) = v19;
      *(v21 + 16) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_255C7DA2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  type metadata accessor for DefaultNetworkImageLoader();
  v9 = swift_allocObject();
  v10 = a2;
  swift_defaultActor_initialize();
  v11 = sub_255CD421C(MEMORY[0x277D84F90]);
  v9[17] = a5;
  v9[18] = v11;
  v9[14] = &unk_255D0B260;
  v9[15] = v8;
  v9[16] = a1;
  return v9;
}

uint64_t sub_255C7DAF0()
{
  v1 = sub_255D05B78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255C7DBBC(uint64_t a1)
{
  v4 = *(sub_255D05B78() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_255C780F8;

  return sub_255C7A880(a1, v6, v7, v8, v1 + v5);
}

uint64_t dispatch thunk of NetworkImageLoader.image(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_255C7DDDC;

  return v9(a1, a2, a3);
}

uint64_t sub_255C7DDDC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_255C7DFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC80, &qword_255D0B240);
    v3 = sub_255D07658();
    v4 = a1 + 32;

    while (1)
    {
      sub_255C7299C(v4, &v13, &qword_27F7DDC88, &qword_255D0B248);
      v5 = v13;
      v6 = v14;
      result = sub_255C7B7DC(v13, v14, sub_255C7B4B0);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_255C7E138(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_255C7E0E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

_OWORD *sub_255C7E138(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_255C7E148(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_255C7E190()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255C7E1C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255C7E414;

  return sub_255C79C08(a1);
}

uint64_t sub_255C7E264(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255C7E300;

  return sub_255C79C08(a1);
}

uint64_t sub_255C7E300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

id sub_255C7E424(uint64_t a1, uint64_t a2, double a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0, &qword_255D0BED0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  v7 = [objc_opt_self() defaultSessionConfiguration];
  [v7 setRequestCachePolicy_];
  sub_255C7E68C();
  v8 = sub_255D05B78();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_255D07408();
  [v7 setURLCache_];

  [v7 setTimeoutIntervalForRequest_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCC0, &unk_255D0B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255D0AA80;
  v15[1] = 0x747065636341;
  v15[2] = 0xE600000000000000;
  v11 = MEMORY[0x277D837D0];
  sub_255D07538();
  *(inited + 96) = v11;
  *(inited + 72) = 0x2A2F6567616D69;
  *(inited + 80) = 0xE700000000000000;
  sub_255CD4404(inited);
  swift_setDeallocating();
  sub_255C7E6D8(inited + 32);
  v12 = sub_255D06FF8();

  [v7 setHTTPAdditionalHeaders_];

  v13 = [objc_opt_self() sessionWithConfiguration_];
  return v13;
}

unint64_t sub_255C7E68C()
{
  result = qword_27F7DDCB8;
  if (!qword_27F7DDCB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7DDCB8);
  }

  return result;
}

uint64_t sub_255C7E6D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCC8, &unk_255D0FE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_255C7E77C(uint64_t a1, uint64_t a2)
{
  v8 = sub_255D06518();
  v9 = MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v12 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return sub_255D06528();
}

void *sub_255C7E874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_255D06518();
  v9 = MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v12 - v10, a1, a3, v9);
  swift_storeEnumTagMultiPayload();
  return sub_255D06528();
}

uint64_t sub_255C7E96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_255D06E78();
}

uint64_t sub_255C7EA34()
{
  v1 = sub_255D063E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_255D07438();
    v7 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C80EF8(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_255C7EB94()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = type metadata accessor for NetworkImageModel(0);
  v5 = sub_255C814F0(&qword_27F7DDDA8, type metadata accessor for NetworkImageModel, &unk_255D0B550);

  return MEMORY[0x282130840](v1, v2, v3, v4, v5);
}

uint64_t sub_255C7EC24()
{
  v0 = type metadata accessor for NetworkImageModel.State(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  type metadata accessor for NetworkImageModel(0);
  v6 = swift_allocObject();
  v7 = type metadata accessor for ImageSource(0);
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = &v5[*(v0 + 20)];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  sub_255C81800(v5, v2);
  sub_255D05E98();
  sub_255C80D28(v5);
  return v6;
}

uint64_t NetworkImage.init<>(url:scale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = sub_255C7EC24;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v9 = sub_255D05B78();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    v11 = type metadata accessor for ImageSource(0);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  else
  {
    (*(v10 + 32))(v8, a1, v9);
    v12 = type metadata accessor for ImageSource(0);
    *&v8[*(v12 + 20)] = a3;
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD8, &qword_255D0B2C0);
  result = sub_255C80A40(v8, a2 + v13[10]);
  *(a2 + v13[11]) = 0;
  v15 = (a2 + v13[12]);
  *v15 = sub_255C7EF54;
  v15[1] = 0;
  return result;
}

uint64_t sub_255C7EF54@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 >= 2)
  {
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  a2[1] = sub_255C80938;
  a2[2] = 0;
  return result;
}

uint64_t NetworkImage.init(url:scale:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *(a7 + 24) = sub_255C7EC24;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  v19 = sub_255D05B78();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a1, 1, v19) == 1)
  {
    v21 = type metadata accessor for ImageSource(0);
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  }

  else
  {
    (*(v20 + 32))(v18, a1, v19);
    v23 = type metadata accessor for ImageSource(0);
    *&v18[*(v23 + 20)] = a8;
    (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  }

  v24 = type metadata accessor for NetworkImage(0, a5, a6, v22);
  result = sub_255C80A40(v18, a7 + v24[10]);
  *(a7 + v24[11]) = a2;
  v26 = (a7 + v24[12]);
  *v26 = a3;
  v26[1] = a4;
  return result;
}

uint64_t NetworkImage.init<A>(url:scale:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a3;
  v16[5] = a4;
  v18 = type metadata accessor for _OptionalContent(0, a5, a6, v17);
  WitnessTable = swift_getWitnessTable();

  return NetworkImage.init(url:scale:transaction:content:)(a1, a2, sub_255C80B00, v16, v18, WitnessTable, a7, a8);
}

uint64_t sub_255C7F29C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (*a1 >= 2)
  {
  }

  else
  {
    v11 = 0;
  }

  v15 = v11;
  *&v16 = a2;
  *(&v16 + 1) = a3;
  v12 = type metadata accessor for _OptionalContent(0, a4, a5, a4);
  swift_getWitnessTable();
  v13 = *(*(v12 - 8) + 16);
  v13(&v17, &v15, v12);

  v15 = v17;
  v16 = v18;
  v13(a6, &v15, v12);
}

uint64_t NetworkImage.init<A, B>(url:scale:transaction:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a11;
  v20[5] = a12;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = a5;
  v20[9] = a6;
  v21 = sub_255D06538();
  WitnessTable = swift_getWitnessTable();
  return NetworkImage.init(url:scale:transaction:content:)(a1, a2, sub_255C80B64, v20, v21, WitnessTable, a9, a10);
}

uint64_t sub_255C7F4D0@<X0>(unint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(__n128)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v49 = a8;
  v50 = a9;
  v42 = a5;
  v43 = a4;
  v44 = a3;
  v45 = a2;
  v46 = *(a6 - 8);
  v51 = a10;
  MEMORY[0x28223BE20](a1);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  v26 = sub_255D06538();
  v47 = *(v26 - 8);
  v48 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  v30 = *a1;
  if (*a1 >= 2)
  {
    v34 = a1[2];
    v42 = a1[1];
    v43 = v34;

    v45(v35);
    v36 = v46;
    v37 = *(v46 + 16);
    v37(v17, v14, a6);
    v38 = *(v36 + 8);
    v38(v14, a6);
    v37(v14, v17, a6);
    v33 = v49;
    sub_255C7E77C(v14, a6);
    sub_255C80D84(v30);
    v38(v14, a6);
    v38(v17, a6);
  }

  else
  {
    v43(v27);
    v31 = *(v19 + 16);
    v31(v25, v22, a7);
    v32 = *(v19 + 8);
    v32(v22, a7);
    v31(v22, v25, a7);
    v33 = v49;
    sub_255C7E874(v22, a6, a7);
    v32(v22, a7);
    v32(v25, a7);
  }

  v52 = v33;
  v53 = v51;
  v39 = v48;
  swift_getWitnessTable();
  v40 = v47;
  (*(v47 + 16))(v50, v29, v39);
  return (*(v40 + 8))(v29, v39);
}

uint64_t NetworkImage.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v4 = sub_255D07338();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a1 - 8);
  v53 = *(v56 + 64);
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkImageModel.State(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v59 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDCE0, &qword_255D0B2C8);
  v52 = v12;
  v16 = sub_255D061D8();
  v60 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v54 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v57 = &v50 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDCE8, &qword_255D0B2D0);
  v61 = sub_255D061D8();
  v20 = sub_255D06538();
  v63 = *(v20 - 8);
  v64 = v20;
  MEMORY[0x28223BE20](v20);
  v58 = &v50 - v21;
  v22 = *(a1 + 48);
  v51 = v2;
  v50 = *(v2 + v22);
  sub_255C7EB94();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255D05EB8();

  v23 = &v11[*(v9 + 28)];
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  sub_255C80D18(*v23);
  sub_255C80D28(v11);
  v74[0] = v24;
  v74[1] = v25;
  v74[2] = v26;
  v27 = v15;
  v50(v74);
  sub_255C80D84(v74[0]);
  v50 = *(a1 + 40);
  v28 = v56;
  v29 = v55;
  (*(v56 + 16))(v55, v51, a1);
  v30 = v28;
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v33 = *(a1 + 24);
  v34 = v52;
  *(v32 + 16) = v52;
  *(v32 + 24) = v33;
  (*(v30 + 32))(v32 + v31, v29, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  sub_255C80FF4();
  v35 = v62;
  sub_255D07318();
  v36 = v54;
  sub_255D06BB8();

  (*(v65 + 8))(v35, v66);
  (*(v59 + 8))(v27, v34);
  v37 = sub_255C810A8(&qword_27F7DDCF8, &qword_27F7DDCE0, &qword_255D0B2C8, MEMORY[0x277CDDEB8]);
  v72 = v33;
  v73 = v37;
  WitnessTable = swift_getWitnessTable();
  v39 = v60;
  v40 = *(v60 + 16);
  v41 = v57;
  v40(v57, v36, v16);
  v42 = *(v39 + 8);
  v42(v36, v16);
  v40(v36, v41, v16);
  v74[0] = sub_255C7E96C(v36, v16, WitnessTable);
  v43 = sub_255C810A8(&qword_27F7DDD00, &qword_27F7DDCE8, &qword_255D0B2D0, &unk_255D0AFA8);
  v70 = v33;
  v71 = v43;
  v44 = swift_getWitnessTable();
  v45 = MEMORY[0x277CE11C0];
  v46 = v58;
  sub_255C7E77C(v74, MEMORY[0x277CE11C8]);

  v42(v36, v16);
  v42(v41, v16);
  v68 = v45;
  v69 = v44;
  v47 = v64;
  swift_getWitnessTable();
  v48 = v63;
  (*(v63 + 16))(v67, v46, v47);
  return (*(v48 + 8))(v46, v47);
}

uint64_t sub_255C80014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_255D07308();
  v3[5] = sub_255D072F8();
  v5 = sub_255D072E8();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_255C800B0, v5, v4);
}

uint64_t sub_255C800B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = type metadata accessor for NetworkImage(0, v4[3], v4[4], a4);
  v4[8] = sub_255C7EB94();
  v7 = *(v6 + 40);
  v8 = *(v5 + *(v6 + 44));

  v9 = sub_255C7EA34();
  v11 = v10;
  v4[9] = v8;
  v4[10] = v9;
  v12 = swift_task_alloc();
  v4[11] = v12;
  *v12 = v4;
  v12[1] = sub_255C801A8;

  return sub_255C81BF4(v5 + v7, v8, v9, v11);
}

uint64_t sub_255C801A8()
{
  v1 = *v0;

  swift_unknownObjectRelease();

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_255C8032C, v3, v2);
}

uint64_t sub_255C8032C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _OptionalContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = sub_255D06238();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255D06CF8();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F7DDD08, &qword_255D0B330);
  v44 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v43 = &v42 - v10;
  v11 = a1;
  v12 = *(a1 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v48 = v20;
  v21 = sub_255D06538();
  v49 = *(v21 - 8);
  v50 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  if (*v2)
  {
    v24 = v2[1];

    v24(v25);
    v26 = *(v11 + 24);
    v27 = *(v13 + 16);
    v27(v19, v16, v12);
    v28 = *(v13 + 8);
    v28(v16, v12);
    v27(v16, v19, v12);
    v29 = MEMORY[0x277CE1088];
    v54 = MEMORY[0x277CE1088];
    v30 = MEMORY[0x277CE1078];
    v55 = MEMORY[0x277CE1078];
    swift_getOpaqueTypeConformance2();
    sub_255C7E77C(v16, v12);

    v28(v16, v12);
    v28(v19, v12);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    sub_255D06CC8();
    v31 = v42;
    (*(v42 + 104))(v8, *MEMORY[0x277CE0FE0], v6);
    v32 = sub_255D06D58();

    (*(v31 + 8))(v8, v6);
    v54 = v32;
    v33 = v45;
    sub_255D06228();
    v34 = v43;
    v29 = MEMORY[0x277CE1088];
    v35 = MEMORY[0x277CE1078];
    sub_255D06C28();
    (*(v46 + 8))(v33, v47);

    v26 = *(v11 + 24);
    v54 = v29;
    v55 = v35;
    swift_getOpaqueTypeConformance2();
    v36 = v48;
    sub_255C7E874(v34, v12, v48);
    v37 = v36;
    v30 = v35;
    (*(v44 + 8))(v34, v37);
  }

  v54 = v29;
  v55 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v26;
  v53 = OpaqueTypeConformance2;
  v39 = v50;
  swift_getWitnessTable();
  v40 = v49;
  (*(v49 + 16))(v51, v23, v39);
  return (*(v40 + 8))(v23, v39);
}

double sub_255C80940@<D0>(_OWORD *a1@<X8>)
{
  sub_255C81864();
  sub_255D063F8();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_255C80990@<D0>(_OWORD *a1@<X8>)
{
  sub_255C81864();
  sub_255D063F8();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_255C809E0(__int128 *a1)
{
  sub_255C81864();
  swift_unknownObjectRetain();
  return sub_255D06408();
}

uint64_t sub_255C80A40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255C80AC8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255C80B24()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_255C80B98(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255D05EB8();
}

uint64_t sub_255C80C18(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for NetworkImageModel.State(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_255C81800(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255C81800(v8, v5);

  sub_255D05EC8();
  return sub_255C80D28(v8);
}

unint64_t sub_255C80D18(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_255C80D28(uint64_t a1)
{
  v2 = type metadata accessor for NetworkImageModel.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255C80D84(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_255C80D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NetworkImage(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = (v6 + 32) & ~v6;
  v9 = v4 + v8;
  sub_255C80EF8(*(v4 + v8), *(v4 + v8 + 8), *(v4 + v8 + 16));
  sub_255C80F04(*(v9 + 24), *(v9 + 32));
  v10 = *(v5 + 40);
  v11 = type metadata accessor for ImageSource(0);
  if (!(*(*(v11 - 8) + 48))(v4 + v8 + v10, 1, v11))
  {
    v12 = sub_255D05B78();
    (*(*(v12 - 8) + 8))(v9 + v10, v12);
  }

  return MEMORY[0x2821FE8E8](v4, v8 + v7, v6 | 7);
}

uint64_t sub_255C80EF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_255C80F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for NetworkImage(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_255C780F8;

  return sub_255C80014(v4 + v9, v6, v7);
}

unint64_t sub_255C80FF4()
{
  result = qword_27F7DDCF0;
  if (!qword_27F7DDCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDCD0, &qword_255D0B290);
    sub_255C814F0(&qword_27F7DDC28, type metadata accessor for ImageSource, &unk_255D0B110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDCF0);
  }

  return result;
}

uint64_t sub_255C810A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_255C81180(uint64_t a1)
{
  sub_255C813F8(319);
  if (v1 <= 0x3F)
  {
    sub_255C8145C(319);
    if (v2 <= 0x3F)
    {
      sub_255C81538(319);
      if (v3 <= 0x3F)
      {
        sub_255C77614();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_255C81250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_255C81330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

void sub_255C813F8(uint64_t a1)
{
  if (!qword_27F7DDD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDD98, qword_255D0B3F0);
    v1 = sub_255D05F28();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7DDD90);
    }
  }
}

void sub_255C8145C(uint64_t a1)
{
  if (!qword_27F7DDDA0)
  {
    type metadata accessor for NetworkImageModel(255);
    sub_255C814F0(&qword_27F7DDDA8, type metadata accessor for NetworkImageModel, &unk_255D0B550);
    v1 = sub_255D05F58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7DDDA0);
    }
  }
}

uint64_t sub_255C814F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_255C81538(uint64_t a1)
{
  if (!qword_27F7DDDB0[0])
  {
    type metadata accessor for ImageSource(255);
    v1 = sub_255D074A8();
    if (!v2)
    {
      atomic_store(v1, qword_27F7DDDB0);
    }
  }
}

uint64_t sub_255C81590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_255C815D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255C81620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255C81660(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDCE8, &qword_255D0B2D0);
  sub_255D061D8();
  sub_255D06538();
  sub_255C810A8(&qword_27F7DDD00, &qword_27F7DDCE8, &qword_255D0B2D0, &unk_255D0AFA8);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_255C81758(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F7DDD08, &qword_255D0B330);
  sub_255D06538();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_255C81800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkImageModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255C81864()
{
  result = qword_27F7DDE38;
  if (!qword_27F7DDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDE38);
  }

  return result;
}

uint64_t View.networkImageLoader<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_unknownObjectRetain();
  sub_255D06A78();
  swift_unknownObjectRelease();
}

uint64_t sub_255C8195C()
{
  sub_255C81864();
  sub_255D063F8();
  return v1;
}

uint64_t sub_255C819A0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDE50, &qword_255D0B4A8);
  sub_255D061D8();
  sub_255C81A1C();
  return swift_getWitnessTable();
}

unint64_t sub_255C81A1C()
{
  result = qword_27F7DDE58;
  if (!qword_27F7DDE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDE50, &qword_255D0B4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDE58);
  }

  return result;
}

uint64_t sub_255C81A90()
{
  if (qword_27F7DD7C0 != -1)
  {
    swift_once();
  }

  *&xmmword_27F7DDE40 = qword_27F7DDC38;
  *(&xmmword_27F7DDE40 + 1) = &protocol witness table for DefaultNetworkImageLoader;
}

uint64_t sub_255C81B00@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27F7DD7C8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_27F7DDE40;

  return swift_unknownObjectRetain();
}

uint64_t sub_255C81B7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255D05EB8();
}

uint64_t sub_255C81BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = type metadata accessor for ImageSource(0);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDE90, &qword_255D0B588);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = type metadata accessor for NetworkImageModel.State(0);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_255D07308();
  v5[25] = sub_255D072F8();
  v8 = sub_255D072E8();
  v5[26] = v8;
  v5[27] = v7;

  return MEMORY[0x2822009F8](sub_255C81DDC, v8, v7);
}

uint64_t sub_255C81DDC()
{
  v1 = v0[24];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v46 = v0[11];
  v6 = v0[6];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255D05EB8();

  sub_255C8321C(v1, v2);
  sub_255C832F8(v1, type metadata accessor for NetworkImageModel.State);
  v7 = *(v4 + 48);
  sub_255C8321C(v6, v3);
  sub_255C8321C(v2, v3 + v7);
  v8 = *(v5 + 48);
  if (v8(v3, 1, v46) == 1)
  {
    v9 = v0[11];
    sub_255C76B94(v0[20], &qword_27F7DDCD0, &qword_255D0B290);
    if (v8(v3 + v7, 1, v9) == 1)
    {
      sub_255C76B94(v0[16], &qword_27F7DDCD0, &qword_255D0B290);
LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_6;
  }

  v10 = v0[11];
  sub_255C8321C(v0[16], v0[19]);
  v11 = v8(v3 + v7, 1, v10);
  v13 = v0[19];
  v12 = v0[20];
  if (v11 == 1)
  {
    sub_255C76B94(v0[20], &qword_27F7DDCD0, &qword_255D0B290);
    sub_255C832F8(v13, type metadata accessor for ImageSource);
LABEL_6:
    v14 = v0[16];
    v15 = &qword_27F7DDE90;
    v16 = &qword_255D0B588;
LABEL_7:
    sub_255C76B94(v14, v15, v16);
    goto LABEL_8;
  }

  sub_255C8328C(v3 + v7, v0[14]);
  v37 = sub_255D05B18();
  sub_255C76B94(v12, &qword_27F7DDCD0, &qword_255D0B290);
  v38 = v0[19];
  v39 = v0[16];
  v40 = v0[14];
  if ((v37 & 1) == 0)
  {
    sub_255C832F8(v40, type metadata accessor for ImageSource);
    sub_255C832F8(v38, type metadata accessor for ImageSource);
    v15 = &qword_27F7DDCD0;
    v16 = &qword_255D0B290;
    v14 = v39;
    goto LABEL_7;
  }

  v41 = *(v0[11] + 20);
  v42 = *(v38 + v41);
  v43 = *(v40 + v41);
  sub_255C832F8(v40, type metadata accessor for ImageSource);
  sub_255C832F8(v38, type metadata accessor for ImageSource);
  sub_255C76B94(v39, &qword_27F7DDCD0, &qword_255D0B290);
  if (v42 == v43)
  {
    goto LABEL_15;
  }

LABEL_8:
  v17 = v0[18];
  v18 = v0[11];
  v19 = v0[12];
  sub_255C8321C(v0[6], v17);
  v20 = (v19 + 56);
  if (v8(v17, 1, v18) == 1)
  {
    v21 = v0[22];
    v22 = v0[23];
    v23 = v0[21];
    v24 = v0[18];
    v25 = v0[11];

    sub_255C76B94(v24, &qword_27F7DDCD0, &qword_255D0B290);
    (*v20)(v22, 1, 1, v25);
    v26 = (v22 + *(v23 + 20));
    *v26 = 0;
    v26[1] = 0;
    v26[2] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_255C83358(v22, v21, type metadata accessor for NetworkImageModel.State);

    sub_255D05EC8();
    sub_255C832F8(v22, type metadata accessor for NetworkImageModel.State);
LABEL_16:

    v44 = v0[1];

    return v44();
  }

  v27 = v0[17];
  v28 = v0[13];
  v29 = v0[11];
  v47 = v0[9];
  sub_255C8328C(v0[18], v28);
  sub_255C83358(v28, v27, type metadata accessor for ImageSource);
  (*v20)(v27, 0, 1, v29);
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = sub_255D05EA8();
  sub_255C833C0(v27, v31);
  v30(v0 + 2, 0);

  ObjectType = swift_getObjectType();
  v45 = (*(v47 + 8) + **(v47 + 8));
  v33 = swift_task_alloc();
  v0[28] = v33;
  *v33 = v0;
  v33[1] = sub_255C8242C;
  v34 = v0[13];
  v35 = v0[9];

  return v45(v34, ObjectType, v35);
}

uint64_t sub_255C8242C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = v4[26];
    v6 = v4[27];
    v7 = sub_255C82720;
  }

  else
  {
    v4[30] = a1;
    v5 = v4[26];
    v6 = v4[27];
    v7 = sub_255C82554;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_255C82554()
{
  v1 = v0[30];
  v2 = v0[13];
  v3 = v0[11];

  v4 = *(v2 + *(v3 + 20));
  v5 = v1;
  v6 = sub_255D06CD8();
  v7 = CGImageGetWidth(v5) / v4;
  Height = CGImageGetHeight(v5);

  v9 = v0[13];
  v10 = v0[10];
  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = v6;
  *(v11 + 32) = v7;
  *(v11 + 40) = Height / v4;
  sub_255D061E8();
  sub_255C80D84(v6);

  sub_255C832F8(v9, type metadata accessor for ImageSource);

  v12 = v0[1];

  return v12();
}

uint64_t sub_255C82720()
{
  v1 = v0[29];

  v2 = v0[13];
  v3 = v0[10];
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = 1;
  v4[4] = 0;
  v4[5] = 0;
  sub_255D061E8();
  sub_255C80D84(1uLL);

  sub_255C832F8(v2, type metadata accessor for ImageSource);

  v5 = v0[1];

  return v5();
}

uint64_t sub_255C8289C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255C80D18(a2);
  v7 = sub_255D05EA8();
  v9 = (v8 + *(type metadata accessor for NetworkImageModel.State(0) + 20));
  v10 = *v9;
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  sub_255C80D84(v10);
  v7(&v12, 0);
}

uint64_t sub_255C82990()
{
  v1 = OBJC_IVAR____TtC33LegalAndRegulatorySettingsSupport17NetworkImageModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDE98, &qword_255D0B590);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_255C82A60(uint64_t a1)
{
  sub_255C82DDC(319, &qword_27F7DDE78, type metadata accessor for NetworkImageModel.State, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_255C82B40(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255C82B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 2;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_255C82C74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 + 1);
  }

  return result;
}

void sub_255C82D38(uint64_t a1)
{
  sub_255C82DDC(319, qword_27F7DDDB0, type metadata accessor for ImageSource, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_255C82DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_255C82E4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255D05E88();
  *a1 = result;
  return result;
}

BOOL sub_255C82E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageSource(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDE90, &qword_255D0B588);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v32 - v12;
  v15 = *(v14 + 56);
  sub_255C8321C(a1, v32 - v12);
  sub_255C8321C(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_255C76B94(v13, &qword_27F7DDCD0, &qword_255D0B290);
LABEL_10:
      v23 = type metadata accessor for NetworkImageModel.State(0);
      v24 = (a1 + *(v23 + 20));
      v25 = v24[1];
      v26 = v24[2];
      v33[0] = *v24;
      v33[1] = v25;
      v33[2] = v26;
      v27 = (a2 + *(v23 + 20));
      v29 = v27[1];
      v30 = v27[2];
      v32[0] = *v27;
      v28 = v32[0];
      v32[1] = v29;
      v32[2] = v30;
      sub_255C80D18(v33[0]);
      sub_255C80D18(v28);
      v19 = _s33LegalAndRegulatorySettingsSupport17NetworkImageStateO2eeoiySbAC_ACtFZ_0(v33, v32);
      sub_255C80D84(v32[0]);
      sub_255C80D84(v33[0]);
      return v19;
    }

    goto LABEL_6;
  }

  sub_255C8321C(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_255C832F8(v10, type metadata accessor for ImageSource);
LABEL_6:
    v17 = &qword_27F7DDE90;
    v18 = &qword_255D0B588;
    goto LABEL_7;
  }

  sub_255C8328C(&v13[v15], v7);
  if (sub_255D05B18())
  {
    v20 = *(v4 + 20);
    v21 = *&v10[v20];
    v22 = *&v7[v20];
    sub_255C832F8(v7, type metadata accessor for ImageSource);
    sub_255C832F8(v10, type metadata accessor for ImageSource);
    sub_255C76B94(v13, &qword_27F7DDCD0, &qword_255D0B290);
    if (v21 != v22)
    {
      return 0;
    }

    goto LABEL_10;
  }

  sub_255C832F8(v7, type metadata accessor for ImageSource);
  sub_255C832F8(v10, type metadata accessor for ImageSource);
  v17 = &qword_27F7DDCD0;
  v18 = &qword_255D0B290;
LABEL_7:
  sub_255C76B94(v13, v17, v18);
  return 0;
}

uint64_t sub_255C8321C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255C8328C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255C832F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255C83358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255C833C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NetworkImageState.image.getter()
{
  if (*v0 >= 2uLL)
  {
  }

  else
  {
    return 0;
  }
}

BOOL _s33LegalAndRegulatorySettingsSupport17NetworkImageStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*a1)
  {
    if (!v6)
    {
      sub_255C80D84(0);
      sub_255C80D84(0);
      return 1;
    }

    goto LABEL_8;
  }

  if (v3 == 1)
  {
    if (v6 == 1)
    {
      sub_255C80D84(1uLL);
      sub_255C80D84(1uLL);
      return v6;
    }

    goto LABEL_8;
  }

  if (v6 < 2)
  {
LABEL_8:
    sub_255C80D18(*a2);
    sub_255C80D18(v3);
    sub_255C80D84(v3);
    sub_255C80D84(v6);
    return 0;
  }

  sub_255C80D18(*a2);
  sub_255C80D18(v3);
  v9 = sub_255D06D38();
  sub_255C80D84(v3);
  sub_255C80D84(v6);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return v4 == v7 && v2 == v5;
}

uint64_t get_enum_tag_for_layout_string_33LegalAndRegulatorySettingsSupport17NetworkImageStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_255C83610(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
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

uint64_t sub_255C83664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_255C836C8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EmptyTextStyle(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for EmptyTextStyle(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_255C837E0(unint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v10 = sub_255D059D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_255D05988();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 <= 3u)
  {
    if (a4 > 1u)
    {
      if (a4 != 2)
      {

        sub_255C840D0(a1);
        return;
      }

      v42 = v15;
      v43 = v16;
      if (qword_27F7DD898 != -1)
      {
        swift_once();
      }

      v21 = qword_27F7E0168;
      v22 = sub_255D070C8();
      v45 = a2;
      v46 = 15;
      v44 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDEA8, &unk_255D0B6B0);
      v41 = a2;
      sub_255C86714();
      sub_255C8407C();
      a2 = v41;
      v23 = sub_255D07498();
      v25 = [v21 firstMatchInString:v22 options:0 range:{v23, v24}];

      if (v25)
      {
        [v25 rangeAtIndex_];
        sub_255D073F8();
        if ((v26 & 1) == 0)
        {
          v33 = sub_255D07228();
          MEMORY[0x259C4B570](v33);

          v34 = sub_255D07128();
          v36 = v35;

          if (v34 == 29282 && v36 == 0xE200000000000000)
          {
          }

          else
          {
            v38 = sub_255D076D8();

            a2 = v41;
            if ((v38 & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          v39 = type metadata accessor for AttributedStringInlineRenderer(0);
          (*(v11 + 16))(v13, v5 + *(v39 + 32), v10);
          sub_255D05998();
          sub_255D05908();
          (*(v42 + 8))(v18, v43);
          *(v5 + *(v39 + 36)) = 1;
          return;
        }
      }
    }

    else
    {
      if (a4)
      {
        v43 = v16;
        v27 = type metadata accessor for AttributedStringInlineRenderer(0);
        v28 = (v5 + *(v27 + 24));
        v41 = a1;
        v42 = v15;
        v30 = v28[3];
        v29 = v28[4];
        v40[1] = __swift_project_boxed_opaque_existential_1(v28, v30);
        v31 = *(v27 + 32);
        v32 = *(v11 + 16);

        v32(v13, v5 + v31, v10);
        (*(v29 + 8))(v13, v30, v29);
        sub_255D05998();
        sub_255D05908();
        (*(v42 + 8))(v18, v43);
        return;
      }
    }

LABEL_11:
    sub_255C83E08(a1, a2);
    return;
  }

  if (a4 <= 5u)
  {
    if (a4 == 4)
    {

      sub_255C84A18(a1);
    }

    else
    {

      sub_255C85360(a1);
    }
  }

  else if (a4 == 6)
  {

    sub_255C85CA8(a1, a2, a3);
  }

  else if (a4 != 7)
  {
    v19 = v16;
    if (a3 | a2 | a1)
    {
      v20 = type metadata accessor for AttributedStringInlineRenderer(0);
LABEL_34:
      (*(v11 + 16))(v13, v5 + v20[8], v10);
      sub_255D05998();
      sub_255D05908();
      (*(v15 + 8))(v18, v19);
      return;
    }

    v20 = type metadata accessor for AttributedStringInlineRenderer(0);
    if (*(v5 + v20[7]))
    {
      goto LABEL_34;
    }

    v37 = v20[9];
    if ((*(v5 + v37) & 1) == 0)
    {
      goto LABEL_34;
    }

    *(v5 + v37) = 0;
  }
}

uint64_t sub_255C83E08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_255D059D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255D05988();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributedStringInlineRenderer(0);
  v15 = *(v14 + 36);
  if (*(v3 + v15) == 1)
  {
    *(v3 + v15) = 0;
    v17[4] = a1;
    v17[5] = a2;
    v17[2] = 728980574;
    v17[3] = 0xE400000000000000;
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_255C8407C();
    sub_255D074E8();
  }

  else
  {
  }

  (*(v7 + 16))(v9, v3 + *(v14 + 32), v6);
  sub_255D05998();
  sub_255D05908();
  return (*(v11 + 8))(v13, v10);
}

uint64_t type metadata accessor for AttributedStringInlineRenderer(uint64_t a1)
{
  result = qword_27F7DDEC0;
  if (!qword_27F7DDEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_255C8407C()
{
  result = qword_27F7DDEA0;
  if (!qword_27F7DDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDEA0);
  }

  return result;
}

uint64_t sub_255C840D0(unint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_255D05988();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  MEMORY[0x28223BE20](v3);
  v74 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255D059D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = type metadata accessor for AttributedStringInlineRenderer(0);
  v14 = *(v13 + 32);
  v15 = *(v7 + 16);
  v63 = v12;
  v15(v12, v2 + v14, v6);
  v68 = v13;
  v16 = (v2 + *(v13 + 24));
  v17 = v16[8];
  v18 = v16[9];
  v65 = v16;
  __swift_project_boxed_opaque_existential_1(v16 + 5, v17);
  v71 = v15;
  v72 = v7 + 16;
  v15(v9, v2 + v14, v6);
  (*(v18 + 8))(v9, v17, v18);
  v19 = *(v7 + 40);
  v75 = v14;
  v76 = v6;
  v20 = v2 + v14;
  v21 = v69;
  v73 = v9;
  v64 = v7 + 40;
  v62 = v19;
  v19(v20, v9, v6);
  v22 = *(v67 + 16);
  if (v22)
  {
    ++v70;
    v23 = (v67 + 56);
    v66 = v2;
    do
    {
      v28 = *(v23 - 3);
      v29 = *(v23 - 2);
      v30 = *(v23 - 1);
      v31 = *v23;
      if (v31 <= 3)
      {
        if (*v23 > 1u)
        {
          if (v31 == 2)
          {
            v34 = qword_27F7DD898;

            if (v34 != -1)
            {
              swift_once();
            }

            v35 = qword_27F7E0168;
            v36 = sub_255D070C8();
            v79 = 15;
            v81 = v28;
            v82 = v29;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDEA8, &unk_255D0B6B0);
            sub_255C86714();
            v67 = sub_255C8407C();
            v37 = sub_255D07498();
            v39 = [v35 firstMatchInString:v36 options:0 range:{v37, v38}];

            v2 = v66;
            if (v39)
            {
              [v39 rangeAtIndex_];
              sub_255D073F8();
              if (v40)
              {
              }

              else
              {
                v54 = sub_255D07228();
                MEMORY[0x259C4B570](v54);

                v55 = sub_255D07128();
                v57 = v56;

                if (v55 == 29282 && v57 == 0xE200000000000000)
                {

                  v2 = v66;
                  v21 = v69;
LABEL_40:
                  v71(v73, v2 + v75, v76);
                  v60 = v74;
                  sub_255D05998();
                  sub_255D05908();
                  (*v70)(v60, v21);
                  sub_255C7429C(v28, v29, v30, 2u);
                  *(v2 + *(v68 + 36)) = 1;
                  goto LABEL_5;
                }

                v59 = sub_255D076D8();

                v2 = v66;
                v21 = v69;
                if (v59)
                {
                  goto LABEL_40;
                }
              }
            }

            v41 = *(v68 + 36);
            if (*(v2 + v41) == 1)
            {
              *(v2 + v41) = 0;
              v81 = v28;
              v82 = v29;
              v79 = 728980574;
              v80 = 0xE400000000000000;
              v77 = 0;
              v78 = 0xE000000000000000;
              sub_255D074E8();
            }

            else
            {
            }

            v71(v73, v2 + v75, v76);
            v53 = v74;
            sub_255D05998();
            sub_255D05908();
            v21 = v69;
            (*v70)(v53, v69);
            v24 = v28;
            v25 = v29;
            v26 = v30;
            v27 = 2;
          }

          else
          {

            sub_255C840D0(v50);
            v24 = v28;
            v25 = v29;
            v26 = v30;
            v27 = 3;
          }
        }

        else if (*v23)
        {
          v43 = v65[3];
          v44 = v65[4];
          __swift_project_boxed_opaque_existential_1(v65, v43);
          sub_255C74200(v28, v29, v30, 1u);

          v45 = v2 + v75;
          v67 = v30;
          v46 = v2;
          v47 = v21;
          v48 = v73;
          v71(v73, v45, v76);
          (*(v44 + 8))(v48, v43, v44);
          v49 = v74;
          v21 = v47;
          v2 = v46;
          sub_255D05998();
          sub_255D05908();
          (*v70)(v49, v21);
          v24 = v28;
          v25 = v29;
          v26 = v67;
          v27 = 1;
        }

        else
        {
          v33 = *(v68 + 36);
          if (*(v2 + v33))
          {
            *(v2 + v33) = 0;
            v81 = v28;
            v82 = v29;
            v79 = 728980574;
            v80 = 0xE400000000000000;
            v77 = 0;
            v78 = 0xE000000000000000;
            sub_255C8407C();

            sub_255D074E8();
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }

          v71(v73, v2 + v75, v76);
          v52 = v74;
          sub_255D05998();
          sub_255D05908();
          v21 = v69;
          (*v70)(v52, v69);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 0;
        }
      }

      else if (*v23 <= 5u)
      {
        if (v31 == 4)
        {

          sub_255C84A18(v42);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 4;
        }

        else
        {

          sub_255C85360(v51);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 5;
        }
      }

      else
      {
        if (v31 != 6)
        {
          if (v31 != 7)
          {
            if (v30 | v29 | v28 || (*(v2 + *(v68 + 28)) & 1) != 0 || (v58 = *(v68 + 36), (*(v2 + v58) & 1) == 0))
            {
              v71(v73, v2 + v75, v76);
              v32 = v74;
              sub_255D05998();
              sub_255D05908();
              (*v70)(v32, v21);
            }

            else
            {
              *(v2 + v58) = 0;
            }
          }

          goto LABEL_5;
        }

        sub_255C85CA8(v28, v29, v30);
        v24 = v28;
        v25 = v29;
        v26 = v30;
        v27 = 6;
      }

      sub_255C7429C(v24, v25, v26, v27);
LABEL_5:
      v23 += 32;
      --v22;
    }

    while (v22);
  }

  return v62(v2 + v75, v63, v76);
}

uint64_t sub_255C84A18(unint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_255D05988();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  MEMORY[0x28223BE20](v3);
  v74 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255D059D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = type metadata accessor for AttributedStringInlineRenderer(0);
  v14 = *(v13 + 32);
  v15 = *(v7 + 16);
  v63 = v12;
  v15(v12, v2 + v14, v6);
  v68 = v13;
  v16 = (v2 + *(v13 + 24));
  v17 = v16[13];
  v18 = v16[14];
  v65 = v16;
  __swift_project_boxed_opaque_existential_1(v16 + 10, v17);
  v71 = v15;
  v72 = v7 + 16;
  v15(v9, v2 + v14, v6);
  (*(v18 + 8))(v9, v17, v18);
  v19 = *(v7 + 40);
  v75 = v14;
  v76 = v6;
  v20 = v2 + v14;
  v21 = v69;
  v73 = v9;
  v64 = v7 + 40;
  v62 = v19;
  v19(v20, v9, v6);
  v22 = *(v67 + 16);
  if (v22)
  {
    ++v70;
    v23 = (v67 + 56);
    v66 = v2;
    do
    {
      v28 = *(v23 - 3);
      v29 = *(v23 - 2);
      v30 = *(v23 - 1);
      v31 = *v23;
      if (v31 <= 3)
      {
        if (*v23 > 1u)
        {
          if (v31 == 2)
          {
            v34 = qword_27F7DD898;

            if (v34 != -1)
            {
              swift_once();
            }

            v35 = qword_27F7E0168;
            v36 = sub_255D070C8();
            v79 = 15;
            v81 = v28;
            v82 = v29;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDEA8, &unk_255D0B6B0);
            sub_255C86714();
            v67 = sub_255C8407C();
            v37 = sub_255D07498();
            v39 = [v35 firstMatchInString:v36 options:0 range:{v37, v38}];

            v2 = v66;
            if (v39)
            {
              [v39 rangeAtIndex_];
              sub_255D073F8();
              if (v40)
              {
              }

              else
              {
                v54 = sub_255D07228();
                MEMORY[0x259C4B570](v54);

                v55 = sub_255D07128();
                v57 = v56;

                if (v55 == 29282 && v57 == 0xE200000000000000)
                {

                  v2 = v66;
                  v21 = v69;
LABEL_40:
                  v71(v73, v2 + v75, v76);
                  v60 = v74;
                  sub_255D05998();
                  sub_255D05908();
                  (*v70)(v60, v21);
                  sub_255C7429C(v28, v29, v30, 2u);
                  *(v2 + *(v68 + 36)) = 1;
                  goto LABEL_5;
                }

                v59 = sub_255D076D8();

                v2 = v66;
                v21 = v69;
                if (v59)
                {
                  goto LABEL_40;
                }
              }
            }

            v41 = *(v68 + 36);
            if (*(v2 + v41) == 1)
            {
              *(v2 + v41) = 0;
              v81 = v28;
              v82 = v29;
              v79 = 728980574;
              v80 = 0xE400000000000000;
              v77 = 0;
              v78 = 0xE000000000000000;
              sub_255D074E8();
            }

            else
            {
            }

            v71(v73, v2 + v75, v76);
            v53 = v74;
            sub_255D05998();
            sub_255D05908();
            v21 = v69;
            (*v70)(v53, v69);
            v24 = v28;
            v25 = v29;
            v26 = v30;
            v27 = 2;
          }

          else
          {

            sub_255C840D0(v50);
            v24 = v28;
            v25 = v29;
            v26 = v30;
            v27 = 3;
          }
        }

        else if (*v23)
        {
          v43 = v65[3];
          v44 = v65[4];
          __swift_project_boxed_opaque_existential_1(v65, v43);
          sub_255C74200(v28, v29, v30, 1u);

          v45 = v2 + v75;
          v67 = v30;
          v46 = v2;
          v47 = v21;
          v48 = v73;
          v71(v73, v45, v76);
          (*(v44 + 8))(v48, v43, v44);
          v49 = v74;
          v21 = v47;
          v2 = v46;
          sub_255D05998();
          sub_255D05908();
          (*v70)(v49, v21);
          v24 = v28;
          v25 = v29;
          v26 = v67;
          v27 = 1;
        }

        else
        {
          v33 = *(v68 + 36);
          if (*(v2 + v33))
          {
            *(v2 + v33) = 0;
            v81 = v28;
            v82 = v29;
            v79 = 728980574;
            v80 = 0xE400000000000000;
            v77 = 0;
            v78 = 0xE000000000000000;
            sub_255C8407C();

            sub_255D074E8();
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }

          v71(v73, v2 + v75, v76);
          v52 = v74;
          sub_255D05998();
          sub_255D05908();
          v21 = v69;
          (*v70)(v52, v69);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 0;
        }
      }

      else if (*v23 <= 5u)
      {
        if (v31 == 4)
        {

          sub_255C84A18(v42);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 4;
        }

        else
        {

          sub_255C85360(v51);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 5;
        }
      }

      else
      {
        if (v31 != 6)
        {
          if (v31 != 7)
          {
            if (v30 | v29 | v28 || (*(v2 + *(v68 + 28)) & 1) != 0 || (v58 = *(v68 + 36), (*(v2 + v58) & 1) == 0))
            {
              v71(v73, v2 + v75, v76);
              v32 = v74;
              sub_255D05998();
              sub_255D05908();
              (*v70)(v32, v21);
            }

            else
            {
              *(v2 + v58) = 0;
            }
          }

          goto LABEL_5;
        }

        sub_255C85CA8(v28, v29, v30);
        v24 = v28;
        v25 = v29;
        v26 = v30;
        v27 = 6;
      }

      sub_255C7429C(v24, v25, v26, v27);
LABEL_5:
      v23 += 32;
      --v22;
    }

    while (v22);
  }

  return v62(v2 + v75, v63, v76);
}

uint64_t sub_255C85360(unint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_255D05988();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  MEMORY[0x28223BE20](v3);
  v74 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255D059D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = type metadata accessor for AttributedStringInlineRenderer(0);
  v14 = *(v13 + 32);
  v15 = *(v7 + 16);
  v63 = v12;
  v15(v12, v2 + v14, v6);
  v68 = v13;
  v16 = (v2 + *(v13 + 24));
  v17 = v16[18];
  v18 = v16[19];
  v65 = v16;
  __swift_project_boxed_opaque_existential_1(v16 + 15, v17);
  v71 = v15;
  v72 = v7 + 16;
  v15(v9, v2 + v14, v6);
  (*(v18 + 8))(v9, v17, v18);
  v19 = *(v7 + 40);
  v75 = v14;
  v76 = v6;
  v20 = v2 + v14;
  v21 = v69;
  v73 = v9;
  v64 = v7 + 40;
  v62 = v19;
  v19(v20, v9, v6);
  v22 = *(v67 + 16);
  if (v22)
  {
    ++v70;
    v23 = (v67 + 56);
    v66 = v2;
    do
    {
      v28 = *(v23 - 3);
      v29 = *(v23 - 2);
      v30 = *(v23 - 1);
      v31 = *v23;
      if (v31 <= 3)
      {
        if (*v23 > 1u)
        {
          if (v31 == 2)
          {
            v34 = qword_27F7DD898;

            if (v34 != -1)
            {
              swift_once();
            }

            v35 = qword_27F7E0168;
            v36 = sub_255D070C8();
            v79 = 15;
            v81 = v28;
            v82 = v29;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDEA8, &unk_255D0B6B0);
            sub_255C86714();
            v67 = sub_255C8407C();
            v37 = sub_255D07498();
            v39 = [v35 firstMatchInString:v36 options:0 range:{v37, v38}];

            v2 = v66;
            if (v39)
            {
              [v39 rangeAtIndex_];
              sub_255D073F8();
              if (v40)
              {
              }

              else
              {
                v54 = sub_255D07228();
                MEMORY[0x259C4B570](v54);

                v55 = sub_255D07128();
                v57 = v56;

                if (v55 == 29282 && v57 == 0xE200000000000000)
                {

                  v2 = v66;
                  v21 = v69;
LABEL_40:
                  v71(v73, v2 + v75, v76);
                  v60 = v74;
                  sub_255D05998();
                  sub_255D05908();
                  (*v70)(v60, v21);
                  sub_255C7429C(v28, v29, v30, 2u);
                  *(v2 + *(v68 + 36)) = 1;
                  goto LABEL_5;
                }

                v59 = sub_255D076D8();

                v2 = v66;
                v21 = v69;
                if (v59)
                {
                  goto LABEL_40;
                }
              }
            }

            v41 = *(v68 + 36);
            if (*(v2 + v41) == 1)
            {
              *(v2 + v41) = 0;
              v81 = v28;
              v82 = v29;
              v79 = 728980574;
              v80 = 0xE400000000000000;
              v77 = 0;
              v78 = 0xE000000000000000;
              sub_255D074E8();
            }

            else
            {
            }

            v71(v73, v2 + v75, v76);
            v53 = v74;
            sub_255D05998();
            sub_255D05908();
            v21 = v69;
            (*v70)(v53, v69);
            v24 = v28;
            v25 = v29;
            v26 = v30;
            v27 = 2;
          }

          else
          {

            sub_255C840D0(v50);
            v24 = v28;
            v25 = v29;
            v26 = v30;
            v27 = 3;
          }
        }

        else if (*v23)
        {
          v43 = v65[3];
          v44 = v65[4];
          __swift_project_boxed_opaque_existential_1(v65, v43);
          sub_255C74200(v28, v29, v30, 1u);

          v45 = v2 + v75;
          v67 = v30;
          v46 = v2;
          v47 = v21;
          v48 = v73;
          v71(v73, v45, v76);
          (*(v44 + 8))(v48, v43, v44);
          v49 = v74;
          v21 = v47;
          v2 = v46;
          sub_255D05998();
          sub_255D05908();
          (*v70)(v49, v21);
          v24 = v28;
          v25 = v29;
          v26 = v67;
          v27 = 1;
        }

        else
        {
          v33 = *(v68 + 36);
          if (*(v2 + v33))
          {
            *(v2 + v33) = 0;
            v81 = v28;
            v82 = v29;
            v79 = 728980574;
            v80 = 0xE400000000000000;
            v77 = 0;
            v78 = 0xE000000000000000;
            sub_255C8407C();

            sub_255D074E8();
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }

          v71(v73, v2 + v75, v76);
          v52 = v74;
          sub_255D05998();
          sub_255D05908();
          v21 = v69;
          (*v70)(v52, v69);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 0;
        }
      }

      else if (*v23 <= 5u)
      {
        if (v31 == 4)
        {

          sub_255C84A18(v42);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 4;
        }

        else
        {

          sub_255C85360(v51);
          v24 = v28;
          v25 = v29;
          v26 = v30;
          v27 = 5;
        }
      }

      else
      {
        if (v31 != 6)
        {
          if (v31 != 7)
          {
            if (v30 | v29 | v28 || (*(v2 + *(v68 + 28)) & 1) != 0 || (v58 = *(v68 + 36), (*(v2 + v58) & 1) == 0))
            {
              v71(v73, v2 + v75, v76);
              v32 = v74;
              sub_255D05998();
              sub_255D05908();
              (*v70)(v32, v21);
            }

            else
            {
              *(v2 + v58) = 0;
            }
          }

          goto LABEL_5;
        }

        sub_255C85CA8(v28, v29, v30);
        v24 = v28;
        v25 = v29;
        v26 = v30;
        v27 = 6;
      }

      sub_255C7429C(v24, v25, v26, v27);
LABEL_5:
      v23 += 32;
      --v22;
    }

    while (v22);
  }

  return v62(v2 + v75, v63, v76);
}

uint64_t sub_255C85CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v82 = a2;
  v80 = a1;
  v73 = sub_255D05988();
  v66 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v79 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0, &qword_255D0BED0);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = (&v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v67 = &v66 - v8;
  v9 = sub_255D059D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  v16 = type metadata accessor for AttributedStringInlineRenderer(0);
  v17 = *(v16 + 32);
  v18 = *(v10 + 16);
  v69 = v15;
  v18(v15, v3 + v17, v9);
  v19 = (v3 + *(v16 + 24));
  v20 = v19[23];
  v21 = v19[24];
  v71 = v19;
  v81 = __swift_project_boxed_opaque_existential_1(v19 + 20, v20);
  v76 = v18;
  v77 = v10 + 16;
  v18(v12, v3 + v17, v9);
  (*(v21 + 8))(v12, v20, v21);
  v22 = *(v10 + 40);
  v78 = v12;
  v81 = v9;
  v70 = v10 + 40;
  v68 = v22;
  v22(v3 + v17, v12, v9);
  v72 = v16;
  v23 = v67;
  sub_255D05B38();
  sub_255C867BC(v23, v75);
  sub_255C8682C();
  v80 = v17;
  v82 = v3;
  v24 = v73;
  sub_255D059F8();
  sub_255C86880(v23);
  v25 = *(v74 + 16);
  if (v25)
  {
    v75 = (v66 + 8);
    v26 = (v74 + 56);
    do
    {
      v31 = *(v26 - 3);
      v32 = *(v26 - 2);
      v33 = *(v26 - 1);
      v34 = *v26;
      if (v34 <= 3)
      {
        if (*v26 > 1u)
        {
          if (v34 == 2)
          {
            v74 = *(v26 - 1);
            v38 = qword_27F7DD898;

            if (v38 != -1)
            {
              swift_once();
            }

            v39 = qword_27F7E0168;
            v40 = sub_255D070C8();
            v85 = 15;
            v87 = v31;
            v88 = v32;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDEA8, &unk_255D0B6B0);
            sub_255C86714();
            sub_255C8407C();
            v41 = sub_255D07498();
            v43 = [v39 firstMatchInString:v40 options:0 range:{v41, v42}];

            if (v43)
            {
              [v43 rangeAtIndex_];
              sub_255D073F8();
              if (v44)
              {
              }

              else
              {
                v57 = sub_255D07228();
                MEMORY[0x259C4B570](v57);

                v58 = sub_255D07128();
                v60 = v59;

                if (v58 == 29282 && v60 == 0xE200000000000000)
                {

                  v24 = v73;
LABEL_40:
                  v63 = v82;
                  v76(v78, v82 + v80, v81);
                  v64 = v79;
                  sub_255D05998();
                  sub_255D05908();
                  (*v75)(v64, v24);
                  sub_255C7429C(v31, v32, v74, 2u);
                  *(v63 + *(v72 + 36)) = 1;
                  goto LABEL_5;
                }

                v62 = sub_255D076D8();

                v24 = v73;
                if (v62)
                {
                  goto LABEL_40;
                }
              }
            }

            v45 = *(v72 + 36);
            if (*(v82 + v45) == 1)
            {
              *(v82 + v45) = 0;
              v87 = v31;
              v88 = v32;
              v85 = 728980574;
              v86 = 0xE400000000000000;
              v83 = 0;
              v84 = 0xE000000000000000;
              sub_255D074E8();
            }

            else
            {
            }

            v76(v78, v82 + v80, v81);
            v56 = v79;
            sub_255D05998();
            sub_255D05908();
            v24 = v73;
            (*v75)(v56, v73);
            v27 = v31;
            v28 = v32;
            v29 = v74;
            v30 = 2;
          }

          else
          {

            sub_255C840D0(v53);
            v27 = v31;
            v28 = v32;
            v29 = v33;
            v30 = 3;
          }
        }

        else if (*v26)
        {
          v47 = v71[3];
          v48 = v71[4];
          __swift_project_boxed_opaque_existential_1(v71, v47);
          sub_255C74200(v31, v32, v33, 1u);

          v74 = v33;
          v49 = v24;
          v50 = v78;
          v76(v78, v82 + v80, v81);
          (*(v48 + 8))(v50, v47, v48);
          v51 = v79;
          v24 = v49;
          sub_255D05998();
          v52 = v75;
          sub_255D05908();
          (*v52)(v51, v49);
          v27 = v31;
          v28 = v32;
          v29 = v74;
          v30 = 1;
        }

        else
        {
          v36 = *(v72 + 36);
          v37 = *(v26 - 1);
          if (*(v82 + v36))
          {
            *(v82 + v36) = 0;
            v87 = v31;
            v88 = v32;
            v85 = 728980574;
            v86 = 0xE400000000000000;
            v83 = 0;
            v84 = 0xE000000000000000;
            sub_255C8407C();

            sub_255D074E8();
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }

          v76(v78, v82 + v80, v81);
          v55 = v79;
          sub_255D05998();
          sub_255D05908();
          v24 = v73;
          (*v75)(v55, v73);
          v27 = v31;
          v28 = v32;
          v29 = v37;
          v30 = 0;
        }
      }

      else if (*v26 <= 5u)
      {
        if (v34 == 4)
        {

          sub_255C84A18(v46);
          v27 = v31;
          v28 = v32;
          v29 = v33;
          v30 = 4;
        }

        else
        {

          sub_255C85360(v54);
          v27 = v31;
          v28 = v32;
          v29 = v33;
          v30 = 5;
        }
      }

      else
      {
        if (v34 != 6)
        {
          if (v34 != 7)
          {
            if (v33 | v32 | v31 || (*(v82 + *(v72 + 28)) & 1) != 0 || (v61 = *(v72 + 36), (*(v82 + v61) & 1) == 0))
            {
              v76(v78, v82 + v80, v81);
              v35 = v79;
              sub_255D05998();
              sub_255D05908();
              (*v75)(v35, v24);
            }

            else
            {
              *(v82 + v61) = 0;
            }
          }

          goto LABEL_5;
        }

        sub_255C85CA8(v31, v32, v33);
        v27 = v31;
        v28 = v32;
        v29 = v33;
        v30 = 6;
      }

      sub_255C7429C(v27, v28, v29, v30);
LABEL_5:
      v26 += 32;
      --v25;
    }

    while (v25);
  }

  return v68(v82 + v80, v69, v81);
}

unint64_t sub_255C86714()
{
  result = qword_27F7DDEB0;
  if (!qword_27F7DDEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDEA8, &unk_255D0B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDEB0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_255C867BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0, &qword_255D0BED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255C8682C()
{
  result = qword_27F7DDEB8;
  if (!qword_27F7DDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDEB8);
  }

  return result;
}

uint64_t sub_255C86880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0, &qword_255D0BED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255C868FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_255D05988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0, &qword_255D0BED0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_255D059D8();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_255C86A94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_255D05988();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0, &qword_255D0BED0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
  }

  else
  {
    v15 = sub_255D059D8();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_255C86C18(uint64_t a1)
{
  sub_255D05988();
  if (v1 <= 0x3F)
  {
    sub_255C86CD4(319);
    if (v2 <= 0x3F)
    {
      sub_255D059D8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255C86CD4(uint64_t a1)
{
  if (!qword_27F7DDED0)
  {
    sub_255D05B78();
    v1 = sub_255D074A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7DDED0);
    }
  }
}

double sub_255C86D44(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDED8, &qword_255D0C570);
  v2 = swift_allocObject();
  *&result = 1;
  v4 = *a1;
  v5 = a1[1];
  v2[1] = xmmword_255D0AA80;
  v2[2] = v4;
  v2[3] = v5;
  return result;
}

uint64_t sub_255C86DB0(uint64_t a1, CGFloat a2)
{
  sub_255C86E38(a1, a2);
  v5 = v4;
  sub_255C871A4(a1, a2);
  sub_255CDE07C(v6);
  return v5;
}

void sub_255C86E38(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = v3 - 1;
    if (v3 == 1)
    {
      v39 = *(MEMORY[0x277D84F90] + 16);
      if (v39)
      {
        v9 = MEMORY[0x277D84F90];
LABEL_21:
        sub_255C97798(0, v39, 0);
        v44 = v5;
        v45 = (v9 + 56);
        do
        {
          v46 = *(v45 - 3);
          v47 = *(v45 - 2);
          v48 = *(v45 - 1);
          v49 = *v45;
          v64.origin.x = v46;
          v64.origin.y = v47;
          v64.size.width = v48;
          v64.size.height = *v45;
          MinX = CGRectGetMinX(v64);
          v65.origin.x = v46;
          v65.origin.y = v47;
          v65.size.width = v48;
          v65.size.height = v49;
          MaxY = CGRectGetMaxY(v65);
          v66.origin.x = v46;
          v66.origin.y = v47;
          v66.size.width = v48;
          v66.size.height = v49;
          Width = CGRectGetWidth(v66);
          v54 = *(v44 + 16);
          v53 = *(v44 + 24);
          if (v54 >= v53 >> 1)
          {
            v56 = Width;
            sub_255C97798((v53 > 1), v54 + 1, 1);
            Width = v56;
          }

          *(v44 + 16) = v54 + 1;
          v55 = (v44 + 32 * v54);
          v55[4] = MinX;
          v55[5] = MaxY - a2;
          v55[6] = Width;
          v55[7] = a2;
          v45 += 4;
          --v39;
        }

        while (v39);
      }
    }

    else
    {
      v61 = MEMORY[0x277D84F90];
      sub_255C97798(0, v3 - 1, 0);
      v8 = 0;
      v9 = v61;
      v59 = *(MEMORY[0x277CBF398] + 8);
      v60 = *MEMORY[0x277CBF398];
      v10 = *(MEMORY[0x277CBF398] + 16);
      v11 = *(MEMORY[0x277CBF398] + 24);
      v12 = *(a1 + 40);
      v13 = *(v12 + 16);
      v57 = (v12 + 40);
      v58 = v2 + 32;
      while (1)
      {
        if (v8 == v6)
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v13)
        {
          break;
        }

        v14 = v5;
        v19 = *(v5 + 16);
        v28 = v59;
        v27 = v60;
        v29 = v10;
        v30 = v11;
        if (v19)
        {
          goto LABEL_12;
        }

LABEL_15:
        v33 = v30;
        v34 = v29;
        v35 = v28;
        v36 = v27;

        v62.origin.x = v36;
        v62.origin.y = v35;
        v62.size.width = v34;
        v62.size.height = v33;
        v63 = CGRectInset(v62, -a2, -a2);
        v38 = *(v61 + 16);
        v37 = *(v61 + 24);
        v39 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          x = v63.origin.x;
          y = v63.origin.y;
          v42 = v63.size.width;
          height = v63.size.height;
          sub_255C97798((v37 > 1), v38 + 1, 1);
          v63.size.height = height;
          v63.size.width = v42;
          v63.origin.y = y;
          v63.origin.x = x;
        }

        ++v8;
        *(v61 + 16) = v39;
        *(v61 + 32 * v38 + 32) = v63;
        if (v8 == v6)
        {
          goto LABEL_21;
        }
      }

      sub_255C97798(0, v13, 0);
      v14 = v5;
      v15 = v57;
      v16 = (v58 + 16 * v8);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v5 + 16);
      v20 = 32 * v19;
      v21 = v13;
      do
      {
        v23 = *(v15 - 1);
        v22 = *v15;
        v24 = *(v5 + 24);
        if (v19++ >= v24 >> 1)
        {
          sub_255C97798((v24 > 1), v19, 1);
        }

        *(v5 + 16) = v19;
        v26 = (v5 + v20);
        v26[4] = v23;
        v26[5] = v17;
        v20 += 32;
        v15 += 2;
        v26[6] = v22;
        v26[7] = v18;
        --v21;
      }

      while (v21);
LABEL_12:
      v31 = 0;
      v32 = v14 + 56;
      v30 = v11;
      v29 = v10;
      v28 = v59;
      v27 = v60;
      while (v31 < *(v14 + 16))
      {
        ++v31;
        *&v27 = CGRectUnion(*&v27, *(v32 - 24));
        v32 += 32;
        if (v19 == v31)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_29:
    __break(1u);
  }
}

void sub_255C871A4(uint64_t a1, double a2)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = v3 - 1;
    if (v3 == 1)
    {
      v39 = *(MEMORY[0x277D84F90] + 16);
      if (v39)
      {
        v9 = MEMORY[0x277D84F90];
LABEL_21:
        sub_255C97798(0, v39, 0);
        v44 = v5;
        v45 = (v9 + 56);
        do
        {
          v46 = *(v45 - 3);
          v47 = *(v45 - 2);
          v48 = *(v45 - 1);
          v49 = *v45;
          v64.origin.x = v46;
          v64.origin.y = v47;
          v64.size.width = v48;
          v64.size.height = *v45;
          MaxX = CGRectGetMaxX(v64);
          v65.origin.x = v46;
          v65.origin.y = v47;
          v65.size.width = v48;
          v65.size.height = v49;
          MinY = CGRectGetMinY(v65);
          v66.origin.x = v46;
          v66.origin.y = v47;
          v66.size.width = v48;
          v66.size.height = v49;
          Height = CGRectGetHeight(v66);
          v54 = *(v44 + 16);
          v53 = *(v44 + 24);
          if (v54 >= v53 >> 1)
          {
            v56 = Height;
            sub_255C97798((v53 > 1), v54 + 1, 1);
            Height = v56;
          }

          *(v44 + 16) = v54 + 1;
          v55 = (v44 + 32 * v54);
          v55[4] = MaxX - a2;
          v55[5] = MinY;
          v55[6] = a2;
          v55[7] = Height;
          v45 += 4;
          --v39;
        }

        while (v39);
      }
    }

    else
    {
      v61 = MEMORY[0x277D84F90];
      sub_255C97798(0, v3 - 1, 0);
      v8 = 0;
      v9 = v61;
      v59 = *(MEMORY[0x277CBF398] + 8);
      v60 = *MEMORY[0x277CBF398];
      v10 = *(MEMORY[0x277CBF398] + 16);
      v11 = *(MEMORY[0x277CBF398] + 24);
      v12 = *(a1 + 32);
      v13 = *(v12 + 16);
      v57 = (v12 + 40);
      v58 = v2 + 32;
      while (1)
      {
        if (v8 == v6)
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v13)
        {
          break;
        }

        v14 = v5;
        v19 = *(v5 + 16);
        v28 = v59;
        v27 = v60;
        v29 = v10;
        v30 = v11;
        if (v19)
        {
          goto LABEL_12;
        }

LABEL_15:
        v33 = v30;
        v34 = v29;
        v35 = v28;
        v36 = v27;

        v62.origin.x = v36;
        v62.origin.y = v35;
        v62.size.width = v34;
        v62.size.height = v33;
        v63 = CGRectInset(v62, -a2, -a2);
        v38 = *(v61 + 16);
        v37 = *(v61 + 24);
        v39 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          x = v63.origin.x;
          y = v63.origin.y;
          width = v63.size.width;
          v43 = v63.size.height;
          sub_255C97798((v37 > 1), v38 + 1, 1);
          v63.size.height = v43;
          v63.size.width = width;
          v63.origin.y = y;
          v63.origin.x = x;
        }

        ++v8;
        *(v61 + 16) = v39;
        *(v61 + 32 * v38 + 32) = v63;
        if (v8 == v6)
        {
          goto LABEL_21;
        }
      }

      sub_255C97798(0, v13, 0);
      v14 = v5;
      v15 = v57;
      v16 = (v58 + 16 * v8);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v5 + 16);
      v20 = 32 * v19;
      v21 = v13;
      do
      {
        v23 = *(v15 - 1);
        v22 = *v15;
        v24 = *(v5 + 24);
        if (v19++ >= v24 >> 1)
        {
          sub_255C97798((v24 > 1), v19, 1);
        }

        *(v5 + 16) = v19;
        v26 = (v5 + v20);
        v26[4] = v17;
        v26[5] = v23;
        v20 += 32;
        v15 += 2;
        v26[6] = v18;
        v26[7] = v22;
        --v21;
      }

      while (v21);
LABEL_12:
      v31 = 0;
      v32 = v14 + 56;
      v30 = v11;
      v29 = v10;
      v28 = v59;
      v27 = v60;
      while (v31 < *(v14 + 16))
      {
        ++v31;
        *&v27 = CGRectUnion(*&v27, *(v32 - 24));
        v32 += 32;
        if (v19 == v31)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_255C87528(CGFloat *a1, CGFloat a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDED8, &qword_255D0C570);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0B6E0;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v17.origin.x = *a1;
  v17.origin.y = v6;
  v17.size.width = v7;
  v17.size.height = v8;
  MinX = CGRectGetMinX(v17);
  v18.origin.x = v5;
  v18.origin.y = v6;
  v18.size.width = v7;
  v18.size.height = v8;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = v5;
  v19.origin.y = v6;
  v19.size.width = v7;
  v19.size.height = v8;
  Width = CGRectGetWidth(v19);
  *(v4 + 32) = MinX;
  *(v4 + 40) = MinY;
  *(v4 + 48) = Width;
  *(v4 + 56) = a2;
  v20.origin.x = v5;
  v20.origin.y = v6;
  v20.size.width = v7;
  v20.size.height = v8;
  v12 = CGRectGetMinX(v20);
  v21.origin.x = v5;
  v21.origin.y = v6;
  v21.size.width = v7;
  v21.size.height = v8;
  v13 = CGRectGetMaxY(v21) - a2;
  v22.origin.x = v5;
  v22.origin.y = v6;
  v22.size.width = v7;
  v22.size.height = v8;
  v14 = CGRectGetWidth(v22);
  *(v4 + 64) = v12;
  *(v4 + 72) = v13;
  *(v4 + 80) = v14;
  *(v4 + 88) = a2;
  sub_255C86E38(a1, a2);
  sub_255CDE07C(v15);
  return v4;
}

uint64_t sub_255C87678(__int128 *a1, CGFloat a2)
{
  sub_255C86E38(a1, a2);
  v5 = v4;
  sub_255C871A4(a1, a2);
  sub_255CDE07C(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDED8, &qword_255D0C570);
  inited = swift_initStackObject();
  v8 = *a1;
  v9 = a1[1];
  inited[1] = xmmword_255D0AA80;
  inited[2] = v8;
  inited[3] = v9;
  sub_255CDE07C(inited);
  return v5;
}

uint64_t sub_255C87704(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_255C8774C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FontDigitVariant._collectAttributes(in:)()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 28)) = v1;
  }

  (v2)(v7, 0);
}

uint64_t sub_255C878C0()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 28)) = v1;
  }

  (v2)(v7, 0);
}

uint64_t getEnumTagSinglePayload for SoftBreak.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SoftBreak.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t CodeBlock._markdownContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_255D0AA80;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  *(v7 + 64) = 4;
  *a1 = v7;
}

LegalAndRegulatorySettingsSupport::CodeBlock __swiftcall CodeBlock.init(language:content:)(Swift::String_optional language, Swift::String content)
{
  *v2 = language;
  v2[1].value = content;
  result.content = content;
  result.language = language;
  return result;
}

uint64_t CodeBlock.init(language:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  result = a3();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = result;
  a4[3] = v8;
  return result;
}

uint64_t sub_255C87BE4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_255D0AA80;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  *(v7 + 64) = 4;
  *a1 = v7;
}

uint64_t sub_255C87C78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255C87CC0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t FontCapsVariant._collectAttributes(in:)()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 24)) = v1;
  }

  (v2)(v7, 0);
}

uint64_t sub_255C87E38()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 24)) = v1;
  }

  (v2)(v7, 0);
}

uint64_t getEnumTagSinglePayload for RawTableColumnAlignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RawTableColumnAlignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SoftBreak.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](v1);
  return sub_255D07768();
}

uint64_t _s33LegalAndRegulatorySettingsSupport14FontPropertiesV12DigitVariantO9hashValueSivg_0()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](v1);
  return sub_255D07768();
}

uint64_t sub_255C881A8()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](v1);
  return sub_255D07768();
}

unint64_t sub_255C881F0()
{
  result = qword_27F7DDEE0;
  if (!qword_27F7DDEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDEE0);
  }

  return result;
}

uint64_t View.markdownTableBorderStyle(_:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_255D06A78();
}

void *sub_255C882F4()
{
  sub_255C887A4();

  return sub_255D063F8();
}

double sub_255C8833C@<D0>(_OWORD *a1@<X8>)
{
  sub_255C887A4();
  sub_255D063F8();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double sub_255C88394@<D0>(_OWORD *a1@<X8>)
{
  sub_255C887A4();
  sub_255D063F8();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_255C883EC(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v8[2] = a1[2];
  v8[3] = v2;
  v7[4] = v4;
  v7[5] = v3;
  v5 = a1[3];
  v7[6] = a1[2];
  v7[7] = v5;
  sub_255C88748(v8, v7);
  sub_255C887A4();
  return sub_255D06408();
}

uint64_t View.markdownTableBackgroundStyle(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_255D06A78();
}

void *sub_255C884D8()
{
  sub_255C886F4();

  return sub_255D063F8();
}

double sub_255C88520@<D0>(_OWORD *a1@<X8>)
{
  sub_255C886F4();
  sub_255D063F8();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_255C88570@<D0>(_OWORD *a1@<X8>)
{
  sub_255C886F4();
  sub_255D063F8();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_255C885C0(void *a1, uint64_t a2)
{
  sub_255C886F4();

  return sub_255D06408();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy33LegalAndRegulatorySettingsSupport16TableBorderStyleVGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_255D061D8();
  sub_255C74D48(a4, a2, a3);
  return swift_getWitnessTable();
}

unint64_t sub_255C886F4()
{
  result = qword_27F7DDF48;
  if (!qword_27F7DDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDF48);
  }

  return result;
}

unint64_t sub_255C887A4()
{
  result = qword_27F7DDF50[0];
  if (!qword_27F7DDF50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F7DDF50);
  }

  return result;
}

double sub_255C88818()
{
  v0 = sub_255D06CA8();
  sub_255D05F68();
  *&xmmword_27F7DDEE8 = sub_255C87678;
  *(&xmmword_27F7DDEE8 + 1) = 0;
  qword_27F7DDEF8 = v0;
  result = *&v2;
  unk_27F7DDF00 = v2;
  *(&xmmword_27F7DDF08 + 8) = v3;
  qword_27F7DDF20 = v4;
  return result;
}

uint64_t sub_255C888A0@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27F7DD7D0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_27F7DDEF8;
  v7[0] = xmmword_27F7DDEE8;
  v7[1] = *&qword_27F7DDEF8;
  v2 = xmmword_27F7DDF08;
  v3 = unk_27F7DDF18;
  v7[2] = xmmword_27F7DDF08;
  v7[3] = unk_27F7DDF18;
  *a1 = xmmword_27F7DDEE8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_255C88748(v7, &v6);
}

uint64_t sub_255C88980(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255C889F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_255C88B30(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

LegalAndRegulatorySettingsSupport::Heading::Level_optional __swiftcall Heading.Level.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x5040302010006uLL >> (8 * rawValue);
  if (rawValue >= 7)
  {
    LOBYTE(v2) = 6;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_255C88D9C()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](v1 + 1);
  return sub_255D07768();
}

uint64_t sub_255C88E14()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](v1 + 1);
  return sub_255D07768();
}

uint64_t Heading._markdownContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  *(v5 + 32) = v3 + 1;
  *(v5 + 40) = v4;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 7;
  *a1 = v5;
}

void *Heading.init(_:content:)@<X0>(_BYTE *a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = a2(&v5);
  *(a3 + 8) = v5;
  return result;
}

unint64_t sub_255C88F44()
{
  result = qword_27F7DDFD8;
  if (!qword_27F7DDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDFD8);
  }

  return result;
}

uint64_t sub_255C88F98@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  *(v5 + 32) = v3 + 1;
  *(v5 + 40) = v4;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 7;
  *a1 = v5;
}

uint64_t sub_255C89020(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255C89068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Heading.Level(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Heading.Level(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_255C8920C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v21 = a5;
  v9 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0, &qword_255D0BED0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_255D05B78();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9 == 7)
  {
    sub_255D05B48();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_255C86880(v12);
      return MEMORY[0x277D84F90];
    }

    (*(v14 + 32))(v16, v12, v13);
    if ((sub_255C89490(v21) & 1) == 0)
    {
      (*(v14 + 8))(v16, v13);
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_255D0AA80;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    *(v17 + 48) = a3;
    *(v17 + 56) = 7;
    v18 = *(v14 + 8);

    v18(v16, v13);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_255D0AA80;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    *(v17 + 48) = a3;
    *(v17 + 56) = a4;
    sub_255C74200(a1, a2, a3, a4);
  }

  return v17;
}

uint64_t sub_255C89490(uint64_t a1)
{
  v2 = sub_255D05F18();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D05B68();
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = sub_255D07128();
  v9 = v8;

  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == *MEMORY[0x277CDF3D0])
  {
    if (v7 != 0xD000000000000011 || 0x8000000255D186F0 != v9)
    {
LABEL_12:
      v12 = sub_255D076D8();

      v11 = v12 ^ 1;
      return v11 & 1;
    }

    goto LABEL_9;
  }

  if (v10 != *MEMORY[0x277CDF3C0])
  {

    (*(v3 + 8))(v5, v2);
LABEL_11:
    v11 = 1;
    return v11 & 1;
  }

  if (v7 != 0xD000000000000012 || 0x8000000255D186D0 != v9)
  {
    goto LABEL_12;
  }

LABEL_9:

  v11 = 0;
  return v11 & 1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_255C896D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255C89718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_255C8979C(uint64_t *a1@<X8>)
{
  v28 = a1;
  v2 = sub_255D063E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v27 = *v1;
    v37 = v7;
    v38 = v6;
  }

  else
  {

    sub_255D07438();
    v8 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74BA0(v7, v6, 0);
    (*(v3 + 8))(v5, v2);
    v27 = v37;
  }

  v10 = *(v1 + 72);
  v9 = *(v1 + 80);
  v12 = *(v1 + 88);
  v11 = *(v1 + 96);

  sub_255CBEFAC(v31);
  v13 = v32;
  v14 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v15 = (*(v14 + 8))(v12, v11, v10, v9, v13, v14);
  v17 = v16;
  v19 = v18;
  v30 = v20 & 1;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v30;
  *(v21 + 40) = v19;
  KeyPath = swift_getKeyPath();
  v29[0] = 0;
  __swift_destroy_boxed_opaque_existential_1(v31);
  v23 = v29[0];
  v24 = swift_allocObject();
  *(v24 + 16) = KeyPath;
  *(v24 + 56) = v23;
  *(v24 + 64) = sub_255C8A048;
  *(v24 + 72) = v21;
  v31[0] = swift_getKeyPath();
  v34 = 0;
  v35 = sub_255C8A13C;
  v36 = v24;
  sub_255C7299C(v31, v29, &qword_27F7DDFE0, &qword_255D0BD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDFE0, &qword_255D0BD38);
  sub_255C8A144();
  v25 = sub_255D06E78();
  sub_255C76B94(v31, &qword_27F7DDFE0, &qword_255D0BD38);
  v31[0] = v10;
  v31[1] = v9;
  v31[2] = v12;
  v32 = v11;
  v33 = v25;
  v26 = v27(v31);

  *v28 = v26;
}

uint64_t sub_255C89AD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24 = a2;
  v25 = a4;
  v23 = a3;
  v7 = type metadata accessor for FontProperties(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0, &qword_255D0A9A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v22[-v15];
  sub_255C73C84();
  sub_255D059E8();
  sub_255C7299C(v16, v13, &qword_27F7DD9E0, &qword_255D0A9A0);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_255C76B94(v16, &qword_27F7DD9E0, &qword_255D0A9A0);
    v17 = 0;
  }

  else
  {
    sub_255C8A26C(v13, v10);
    v17 = sub_255D0083C(v10);
    sub_255C8A2D0(v10);
    sub_255C76B94(v16, &qword_27F7DD9E0, &qword_255D0A9A0);
  }

  KeyPath = swift_getKeyPath();
  v19 = v23 & 1;
  v20 = v24;
  sub_255C8A25C(a1, v24, v23 & 1);

  *a5 = a1;
  *(a5 + 8) = v20;
  *(a5 + 16) = v19;
  *(a5 + 24) = result;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = v17;
  return result;
}

uint64_t sub_255C89D10(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for FontProperties(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0, &qword_255D0A9A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_255C73C84();
  sub_255D059E8();
  sub_255C7299C(v11, v8, &qword_27F7DD9E0, &qword_255D0A9A0);
  if ((*(v3 + 48))(v8, 1, v2) != 1)
  {
    sub_255C8A26C(v8, v5);
    sub_255D0083C(v5);
    sub_255C8A2D0(v5);
  }

  sub_255C76B94(v11, &qword_27F7DD9E0, &qword_255D0A9A0);
  swift_getKeyPath();
}

uint64_t sub_255C89F14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_255C8A1A8();
  sub_255D059E8();
  KeyPath = swift_getKeyPath();
  result = sub_255C7299C(a1, a2, &qword_27F7DDFF8, &unk_255D0BD70);
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = v6;
  return result;
}

uint64_t sub_255C89F9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255D06378();
  *a1 = result;
  return result;
}

uint64_t sub_255C89FF4()
{
  sub_255C8A038(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double sub_255C8A038(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_255C8A048@<D0>(_OWORD *a1@<X8>)
{
  sub_255C89AD8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_255C8A0E8()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_255C8A144()
{
  result = qword_27F7DDFE8;
  if (!qword_27F7DDFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDFE0, &qword_255D0BD38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDFE8);
  }

  return result;
}

unint64_t sub_255C8A1A8()
{
  result = qword_27F7DDFF0;
  if (!qword_27F7DDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDFF0);
  }

  return result;
}

uint64_t sub_255C8A204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255D06378();
  *a1 = result;
  return result;
}

uint64_t sub_255C8A25C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_255C8A26C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255C8A2D0(uint64_t a1)
{
  v2 = type metadata accessor for FontProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CodeBlockConfiguration.language.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CodeBlockConfiguration.content.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_255C8A3C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255C8A40C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for CodeBlockConfiguration.Label(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for CodeBlockConfiguration.Label(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255C8A5A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_255D05898();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v25[0] = a1;
  v25[1] = a2;
  sub_255D05878();
  sub_255D05888();
  v11 = *(v5 + 8);
  v11(v10, v4);
  sub_255C8407C();
  v12 = sub_255D074C8();
  v11(v7, v4);
  v13 = *(v12 + 16);
  if (v13)
  {
    v25[0] = MEMORY[0x277D84F90];
    sub_255C977B8(0, v13, 0);
    v14 = v25[0];
    v15 = v12 + 40;
    do
    {
      v16 = sub_255D07128();
      v25[0] = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = v16;
        v22 = v17;
        sub_255C977B8((v18 > 1), v19 + 1, 1);
        v17 = v22;
        v16 = v21;
        v14 = v25[0];
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += 16;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA00, &qword_255D0D200);
  sub_255C743A0();
  v23 = sub_255D07068();

  return v23;
}

uint64_t Blockquote._markdownContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *a1 = v4;
}

void *Blockquote.init(content:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_255C8A898@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *a1 = v4;
}

uint64_t AssetImageProvider.init(name:bundle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t AssetImageProvider.makeImage(url:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a2;
  v4 = sub_255D06CF8();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0, &qword_255D0BED0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_255D05B78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v15 = *(v2 + 16);
  sub_255C867BC(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_255C86880(v9);
    v17 = 0;
LABEL_6:
    v24 = 0uLL;
    goto LABEL_7;
  }

  (*(v11 + 32))(v13, v9, v10);
  v14(v13);
  v18 = sub_255D070C8();

  v17 = [objc_opt_self() imageNamed:v18 inBundle:v15 withConfiguration:0];

  if (!v17)
  {
    result = (*(v11 + 8))(v13, v10);
    goto LABEL_6;
  }

  [v17 size];
  v26 = v19;
  v27 = v20;
  v21 = v17;
  sub_255D06CC8();
  v23 = v28;
  v22 = v29;
  (*(v28 + 104))(v6, *MEMORY[0x277CE0FE0], v29);
  v17 = sub_255D06D58();

  (*(v23 + 8))(v6, v22);

  result = (*(v11 + 8))(v13, v10);
  *&v24 = v26;
  *(&v24 + 1) = v27;
LABEL_7:
  v25 = v30;
  *v30 = v24;
  *(v25 + 2) = v17;
  return result;
}

void static ImageProvider<>.asset.getter(uint64_t (**a1)()@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = sub_255C8A91C;
}

uint64_t sub_255C8ACB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_255C8ACFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_255C8AD50()
{
  result = qword_27F7DE000;
  if (!qword_27F7DE000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE008, &qword_255D0BF38);
    sub_255C8ADD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE000);
  }

  return result;
}

unint64_t sub_255C8ADD4()
{
  result = qword_27F7DE010;
  if (!qword_27F7DE010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE018, &unk_255D0BF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE010);
  }

  return result;
}

void *TaskListItem.init(isCompleted:content:)@<X0>(char a1@<W0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X8>)
{
  result = a2(&v7);
  v6 = v7;
  *a3 = a1;
  *(a3 + 8) = v6;
  return result;
}

uint64_t static TaskListItem.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && (v2 = *(a1 + 1), v3 = *(a2 + 1), v4 = *(v2 + 16), v4 == *(v3 + 16)))
  {
    if (!v4 || v2 == v3)
    {
      v12 = 1;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (v3 + 32);
      do
      {
        v7 = *v5;
        v8 = v5[1];
        v16 = *(v5 + 32);
        v15[0] = v7;
        v15[1] = v8;
        v9 = *v6;
        v10 = v6[1];
        v18 = *(v6 + 32);
        v17[0] = v9;
        v17[1] = v10;
        sub_255C76B38(v15, v14);
        sub_255C76B38(v17, v14);
        sub_255CD5888(v15, v17);
        v12 = v11;
        sub_255C76BF4(v17);
        sub_255C76BF4(v15);
        if ((v12 & 1) == 0)
        {
          break;
        }

        v6 = (v6 + 40);
        v5 = (v5 + 40);
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_255C8AF80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 16);
        v11[0] = *v3;
        v11[1] = v5;
        v12 = *(v3 + 32);
        v6 = *(v4 + 16);
        v13[0] = *v4;
        v13[1] = v6;
        v14 = *(v4 + 32);
        sub_255C76B38(v11, v10);
        sub_255C76B38(v13, v10);
        sub_255CD5888(v11, v13);
        v8 = v7;
        sub_255C76BF4(v13);
        sub_255C76BF4(v11);
        if ((v8 & 1) == 0)
        {
          break;
        }

        v4 += 40;
        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_255C8B060(uint64_t a1, uint64_t a2)
{
  v9 = *(a1 + 16);
  if (v9 != *(a2 + 16) || !v9 || a1 == a2)
  {
    return;
  }

  v10 = 0;
  v11 = a1 + 32;
  v12 = a2 + 32;
  v196 = a1 + 32;
  v197 = *(a1 + 16);
  v195 = a2 + 32;
  while (1)
  {
    if (v10 == v9)
    {
      goto LABEL_272;
    }

    v13 = *(v11 + 8 * v10);
    v14 = *(v12 + 8 * v10);
    v15 = *(v13 + 16);
    if (v15 != *(v14 + 16))
    {
      return;
    }

    if (v15 && v13 != v14)
    {
      break;
    }

LABEL_7:
    if (++v10 == v9)
    {
      return;
    }
  }

  v199 = v10;
  v207 = v14 + 32;
  v208 = v13 + 32;
  v204 = *(v13 + 16);
  v205 = *(v11 + 8 * v10);

  v18 = v204;
  v17 = v205;
  v19 = 0;
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      sub_255C90F54(v2, v168, v172, v173, 8u);
      sub_255C90F54(v174, v175, v176, v177, 8u);
LABEL_276:
      sub_255C90F54(v3, v6, v181, v188, v157);
      sub_255C90F54(v198, v192, v190, v161, v157);
LABEL_277:
      sub_255C90F54(v189, v158, v191, v159, 0);
      sub_255C90F54(v203, v183, v202, v186, 0);
LABEL_278:
      sub_255C90F54(v8, v7, v184, v210, 0);
      v154 = v5;
      v155 = v4;
LABEL_279:
      sub_255C90F54(v154, v155, v209, v201, 0);

      goto LABEL_280;
    }

    if (v19 >= *(v14 + 16))
    {
      goto LABEL_271;
    }

    v26 = v208 + 40 * v19;
    v5 = *v26;
    v4 = *(v26 + 8);
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    v29 = *(v26 + 32);
    v30 = v207 + 40 * v19;
    v8 = *v30;
    v7 = *(v30 + 8);
    v3 = *(v30 + 16);
    v209 = v27;
    v210 = *(v30 + 24);
    v31 = *(v30 + 32);
    if (v29 <= 4)
    {
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          if (v31 != 2 || ((v8 ^ v5) & 1) != 0 || v4 != v7)
          {
            goto LABEL_267;
          }

          sub_255C90E88(v8, v4, v3, v210, 2u);
          sub_255C90E88(v5, v4, v209, v28, 2u);
          v2 = v209;
          v6 = v28;
          v20 = sub_255C8B060(v209, v3);
          sub_255C90F54(v8, v4, v3, v210, 2u);
          v21 = v5;
          v22 = v4;
          v23 = v209;
          v24 = v6;
          v25 = 2;
        }

        else
        {
          if (v29 != 3)
          {
            if (v31 != 4)
            {
              goto LABEL_267;
            }

            if (v4)
            {
              if (!v7)
              {
                goto LABEL_267;
              }

              if (v5 != v8 || v4 != v7)
              {
                v38 = sub_255D076D8();
                v18 = v204;
                v17 = v205;
                if ((v38 & 1) == 0)
                {
                  goto LABEL_267;
                }
              }
            }

            else if (v7)
            {
              goto LABEL_267;
            }

            if (v209 == v3 && v28 == v210)
            {
              goto LABEL_17;
            }

LABEL_76:
            v40 = sub_255D076D8();
            v18 = v204;
            v17 = v205;
            if ((v40 & 1) == 0)
            {
              goto LABEL_267;
            }

            goto LABEL_17;
          }

          if (v31 != 3 || ((v8 ^ v5) & 1) != 0)
          {
            goto LABEL_267;
          }

          sub_255C90E88(v8, v7, v3, v210, 3u);
          sub_255C90E88(v5, v4, v209, v28, 3u);
          sub_255C8C980(v4, v7);
          v2 = v209;
          v6 = v28;
          v20 = v32;
          sub_255C90F54(v8, v7, v3, v210, 3u);
          v21 = v5;
          v22 = v4;
          v23 = v209;
          v24 = v6;
          v25 = 3;
        }

        goto LABEL_16;
      }

      if (v29)
      {
        if (v31 != 1 || ((v8 ^ v5) & 1) != 0)
        {
          goto LABEL_267;
        }

        sub_255C90E88(v8, v7, v3, v210, 1u);
        sub_255C90E88(v5, v4, v209, v28, 1u);
        v2 = v209;
        v6 = v28;
        v20 = sub_255C8B060(v4, v7);
        sub_255C90F54(v8, v7, v3, v210, 1u);
        v21 = v5;
        v22 = v4;
        v23 = v209;
        v24 = v6;
        v25 = 1;
        goto LABEL_16;
      }

      if (v31)
      {
        goto LABEL_267;
      }

      v34 = *(v5 + 16);
      if (v34 != *(v8 + 16))
      {
        goto LABEL_267;
      }

      if (v34)
      {
        v35 = v5 == v8;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        goto LABEL_17;
      }

      v185 = v14;
      v184 = v3;
      v200 = *(v5 + 16);
      sub_255C90E88(v8, v7, v3, v210, 0);
      sub_255C90E88(v5, v4, v209, v28, 0);
      v36 = v200;
      v206 = 0;
      v201 = v28;
      v193 = v7;
      v194 = v4;
      while (1)
      {
        if (v206 >= *(v5 + 16))
        {
          goto LABEL_273;
        }

        if (v206 >= *(v8 + 16))
        {
          goto LABEL_274;
        }

        v42 = v5 + 32 + 40 * v206;
        v3 = *(v42 + 8);
        v203 = *v42;
        v43 = *(v42 + 24);
        v202 = *(v42 + 16);
        v44 = *(v42 + 32);
        v45 = v8 + 32 + 40 * v206;
        v46 = *v45;
        v47 = *(v45 + 8);
        v48 = *(v45 + 16);
        v49 = *(v45 + 24);
        v50 = *(v45 + 32);
        if (v44 <= 4)
        {
          break;
        }

        if (v44 > 6)
        {
          if (v44 != 7)
          {
            if (v44 != 8)
            {
              if (v50 != 9 || (v47 | v46 | v48 | v49) != 0)
              {
                goto LABEL_278;
              }

              goto LABEL_83;
            }

            if (v50 != 8)
            {
              goto LABEL_278;
            }

            v64 = v46;
            v6 = v48;
            v2 = v49;
            sub_255C90E88(v46, v47, v48, v49, 8u);
            sub_255C90E88(v203, v3, v202, v43, 8u);
            if ((sub_255C8EA80(v203, v64) & 1) == 0)
            {
              sub_255C90F54(v64, v47, v6, v2, 8u);
              sub_255C90F54(v203, v3, v202, v43, 8u);
              sub_255C90F54(v8, v193, v184, v210, 0);
              v154 = v5;
              v155 = v194;
              goto LABEL_279;
            }

            sub_255C8EB48(v3, v47);
            LODWORD(v198) = v65;
            sub_255C90F54(v64, v47, v6, v2, 8u);
            sub_255C90F54(v203, v3, v202, v43, 8u);
            v36 = v200;
            v7 = v193;
            v4 = v194;
            goto LABEL_134;
          }

          if (v50 != 7 || v203 != v46)
          {
            goto LABEL_278;
          }

          v2 = v203;
          v6 = v3;
          v74 = v47;
          v191 = v48;
          v75 = v47;
          v76 = v49;
          sub_255C90E88(v203, v74, v48, v49, 7u);
          v77 = v3;
          v3 = v202;
          sub_255C90E88(v203, v77, v202, v43, 7u);
          LODWORD(v198) = sub_255C8E694(v6, v75);
          v78 = v75;
          v7 = v193;
          sub_255C90F54(v203, v78, v191, v76, 7u);
          v59 = v203;
          v60 = v6;
          v61 = v202;
          v62 = v43;
          v63 = 7;
LABEL_133:
          sub_255C90F54(v59, v60, v61, v62, v63);
          v36 = v200;
LABEL_134:
          if ((v198 & 1) == 0)
          {
            goto LABEL_278;
          }

          goto LABEL_83;
        }

        if (v44 != 5)
        {
          if (v50 != 6)
          {
            goto LABEL_278;
          }

          v87 = v46;
          v6 = v203;
          v183 = v3;
          v191 = v48;
          v2 = v49;
          sub_255C90E88(v46, v47, v48, v49, 6u);
          v88 = v3;
          v3 = v202;
          sub_255C90E88(v203, v88, v202, v43, 6u);
          LODWORD(v198) = sub_255C8E694(v203, v87);
          v89 = v87;
          v4 = v194;
          sub_255C90F54(v89, v47, v191, v2, 6u);
          v59 = v203;
          v60 = v183;
          v61 = v202;
          v62 = v43;
          v63 = 6;
          goto LABEL_133;
        }

        if (v50 != 5)
        {
          goto LABEL_278;
        }

        if (v203 != v46 || v3 != v47)
        {
          goto LABEL_139;
        }

LABEL_83:
        if (++v206 == v36)
        {
          sub_255C90F54(v8, v7, v184, v210, 0);
          sub_255C90F54(v5, v4, v209, v201, 0);
          v14 = v185;
          v18 = v204;
          v17 = v205;
          goto LABEL_17;
        }
      }

      if (v44 > 1)
      {
        if (v44 == 2)
        {
          if (v50 != 2 || ((v46 ^ v203) & 1) != 0 || v3 != v47)
          {
            goto LABEL_278;
          }

          v70 = v46;
          v6 = v3;
          v71 = v48;
          v2 = v49;
          sub_255C90E88(v46, v3, v48, v49, 2u);
          v72 = v3;
          v3 = v202;
          sub_255C90E88(v203, v72, v202, v43, 2u);
          LODWORD(v198) = sub_255C8B060(v202, v71);
          v73 = v70;
          v4 = v194;
          sub_255C90F54(v73, v6, v71, v2, 2u);
          v59 = v203;
          v60 = v6;
          v61 = v202;
          v62 = v43;
          v63 = 2;
        }

        else
        {
          if (v44 != 3)
          {
            if (v50 != 4)
            {
              goto LABEL_278;
            }

            if (v3)
            {
              if (!v47)
              {
                goto LABEL_278;
              }

              if (v203 != v46 || v3 != v47)
              {
                v3 = v48;
                v2 = v49;
                v79 = sub_255D076D8();
                v48 = v3;
                v49 = v2;
                v36 = v200;
                if ((v79 & 1) == 0)
                {
                  goto LABEL_278;
                }
              }
            }

            else if (v47)
            {
              goto LABEL_278;
            }

            if (v202 == v48 && v43 == v49)
            {
              goto LABEL_83;
            }

LABEL_139:
            v90 = sub_255D076D8();
            v36 = v200;
            if ((v90 & 1) == 0)
            {
              goto LABEL_278;
            }

            goto LABEL_83;
          }

          if (v50 != 3 || ((v46 ^ v203) & 1) != 0)
          {
            goto LABEL_278;
          }

          v51 = v46;
          v6 = v3;
          v52 = v47;
          v53 = v47;
          v54 = v48;
          v2 = v49;
          sub_255C90E88(v46, v52, v48, v49, 3u);
          v55 = v3;
          v3 = v202;
          sub_255C90E88(v203, v55, v202, v43, 3u);
          sub_255C8C980(v6, v53);
          LODWORD(v198) = v56;
          v57 = v51;
          v58 = v53;
          v7 = v193;
          v4 = v194;
          sub_255C90F54(v57, v58, v54, v2, 3u);
          v59 = v203;
          v60 = v6;
          v61 = v202;
          v62 = v43;
          v63 = 3;
        }

        goto LABEL_133;
      }

      if (v44)
      {
        if (v50 != 1 || ((v46 ^ v203) & 1) != 0)
        {
          goto LABEL_278;
        }

        v80 = v46;
        v6 = v3;
        v81 = v47;
        v82 = v47;
        v83 = v48;
        v2 = v49;
        sub_255C90E88(v46, v81, v48, v49, 1u);
        v84 = v3;
        v3 = v202;
        sub_255C90E88(v203, v84, v202, v43, 1u);
        LODWORD(v198) = sub_255C8B060(v6, v82);
        v85 = v80;
        v86 = v82;
        v7 = v193;
        v4 = v194;
        sub_255C90F54(v85, v86, v83, v2, 1u);
        v59 = v203;
        v60 = v6;
        v61 = v202;
        v62 = v43;
        v63 = 1;
        goto LABEL_133;
      }

      if (v50)
      {
        goto LABEL_278;
      }

      v66 = *(v203 + 16);
      if (v66 != *(v46 + 16))
      {
        goto LABEL_278;
      }

      if (v66)
      {
        v67 = v203 == v46;
      }

      else
      {
        v67 = 1;
      }

      if (v67)
      {
        goto LABEL_83;
      }

      v189 = v46;
      v158 = v47;
      v187 = v46 + 32;
      v182 = *(v203 + 16);
      v191 = v48;
      v159 = v49;
      sub_255C90E88(v46, v47, v48, v49, 0);
      v4 = v194;
      v183 = v3;
      sub_255C90E88(v203, v3, v202, v43, 0);
      v68 = 0;
      v186 = v43;
      while (1)
      {
        if (v68 >= *(v203 + 16))
        {
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
          return;
        }

        if (v68 >= *(v189 + 16))
        {
          goto LABEL_283;
        }

        v97 = v203 + 32 + 40 * v68;
        v198 = *v97;
        v192 = *(v97 + 8);
        v98 = *(v97 + 24);
        v190 = *(v97 + 16);
        v99 = *(v97 + 32);
        v100 = v187 + 40 * v68;
        v3 = *v100;
        v6 = *(v100 + 8);
        v101 = *(v100 + 16);
        v102 = *(v100 + 24);
        v103 = *(v100 + 32);
        if (v99 > 4)
        {
          if (*(v97 + 32) > 6u)
          {
            if (v99 != 7)
            {
              if (v99 == 8)
              {
                if (v103 != 8)
                {
                  goto LABEL_277;
                }

                v157 = 8;
                v106 = v68;
                v181 = v101;
                v188 = v102;
                sub_255C90E88(v3, v6, v101, v102, 8u);
                v2 = v3;
                v161 = v98;
                sub_255C90E88(v198, v192, v190, v98, 8u);
                if ((sub_255C8EA80(v198, v3) & 1) == 0)
                {
                  goto LABEL_276;
                }

                v3 = v192;
                sub_255C8EB48(v192, v6);
                v108 = v107;
                sub_255C90F54(v2, v6, v181, v188, 8u);
                sub_255C90F54(v198, v192, v190, v161, 8u);
                v68 = v106;
                if ((v108 & 1) == 0)
                {
                  goto LABEL_277;
                }
              }

              else if (v103 != 9 || (v6 | v3 | v101 | v102) != 0)
              {
                goto LABEL_277;
              }

              goto LABEL_143;
            }

            if (v103 != 7 || v198 != v3)
            {
              goto LABEL_277;
            }

            v115 = v6;
            v6 = *v97;
            v180 = v68;
            v181 = v101;
            v188 = v102;
            sub_255C90E88(v198, v115, v101, v102, 7u);
            v2 = v192;
            v3 = v190;
            sub_255C90E88(v198, v192, v190, v98, 7u);
            LODWORD(v177) = sub_255C8E694(v192, v115);
            sub_255C90F54(v198, v115, v181, v188, 7u);
            v116 = v198;
            v117 = v192;
            v118 = v190;
            v119 = v98;
            v120 = 7;
            goto LABEL_202;
          }

          if (v99 != 5)
          {
            if (v103 != 6)
            {
              goto LABEL_277;
            }

            v180 = v68;
            v181 = v101;
            v188 = v102;
            sub_255C90E88(v3, v6, v101, v102, 6u);
            v176 = v6;
            v6 = v198;
            v2 = v192;
            v126 = v3;
            v3 = v190;
            sub_255C90E88(v198, v192, v190, v98, 6u);
            LODWORD(v177) = sub_255C8E694(v198, v126);
            sub_255C90F54(v126, v176, v181, v188, 6u);
            v116 = v198;
            v117 = v192;
            v118 = v190;
            v119 = v98;
            v120 = 6;
LABEL_202:
            sub_255C90F54(v116, v117, v118, v119, v120);
            v68 = v180;
            if ((v177 & 1) == 0)
            {
              goto LABEL_277;
            }

            goto LABEL_143;
          }

          if (v103 != 5)
          {
            goto LABEL_277;
          }

          if (v198 != v3 || v192 != v6)
          {
            goto LABEL_207;
          }
        }

        else
        {
          if (*(v97 + 32) <= 1u)
          {
            if (!*(v97 + 32))
            {
              if (v103)
              {
                goto LABEL_277;
              }

              v2 = *(v198 + 16);
              if (v2 != *(v3 + 16))
              {
                goto LABEL_277;
              }

              if (v2)
              {
                v109 = v198 == v3;
              }

              else
              {
                v109 = 1;
              }

              if (v109)
              {
                goto LABEL_143;
              }

              v157 = 0;
              v179 = v68;
              v181 = v101;
              v188 = v102;
              sub_255C90E88(v3, v6, v101, v102, 0);
              v161 = v98;
              sub_255C90E88(v198, v192, v190, v98, 0);
              v110 = (v3 + 64);
              v111 = (v198 + 64);
              v112 = 0;
              v160 = v2;
              while (2)
              {
                if (v112 >= *(v198 + 16))
                {
                  goto LABEL_284;
                }

                if (v112 >= *(v3 + 16))
                {
                  goto LABEL_285;
                }

                v135 = *(v111 - 4);
                v136 = *(v111 - 3);
                v137 = *v111;
                v139 = *(v110 - 4);
                v138 = *(v110 - 3);
                v140 = *(v110 - 2);
                v141 = *(v110 - 1);
                v142 = *v110;
                if (v137 > 4)
                {
                  if (*v111 <= 6u)
                  {
                    if (v137 != 5)
                    {
                      v176 = *(v111 - 2);
                      v177 = *(v111 - 1);
                      if (v142 != 6)
                      {
                        goto LABEL_276;
                      }

                      v151 = *(v111 - 4);
                      v175 = *(v111 - 3);
                      v172 = *(v110 - 2);
                      v173 = *(v110 - 1);
                      v168 = *(v110 - 3);
                      v169 = v110;
                      v167 = *(v110 - 4);
                      sub_255C90E88(v139, v138, v140, v141, 6u);
                      v174 = v151;
                      sub_255C90E88(v151, v175, v176, v177, 6u);
                      v156 = sub_255C8E694(v151, v167);
                      sub_255C90F54(v167, v168, v172, v173, 6u);
                      v130 = v151;
                      v131 = v175;
                      v132 = v176;
                      v133 = v177;
                      v134 = 6;
                      break;
                    }

                    if (v142 != 5)
                    {
                      goto LABEL_276;
                    }

                    if (v135 != v139 || v136 != v138)
                    {
                      goto LABEL_262;
                    }

                    goto LABEL_211;
                  }

                  if (v137 == 7)
                  {
                    v176 = *(v111 - 2);
                    v177 = *(v111 - 1);
                    if (v142 != 7)
                    {
                      goto LABEL_276;
                    }

                    if (v135 != v139)
                    {
                      goto LABEL_276;
                    }

                    v147 = *(v111 - 4);
                    v174 = v147;
                    v175 = *(v111 - 3);
                    v172 = *(v110 - 2);
                    v173 = *(v110 - 1);
                    v168 = *(v110 - 3);
                    v171 = v110;
                    sub_255C90E88(v135, v138, v140, v141, 7u);
                    sub_255C90E88(v147, v175, v176, v177, 7u);
                    v166 = sub_255C8E694(v175, v168);
                    sub_255C90F54(v147, v168, v172, v173, 7u);
                    sub_255C90F54(v147, v175, v176, v177, 7u);
                    v110 = v171;
                    v2 = v160;
                    if ((v166 & 1) == 0)
                    {
                      goto LABEL_276;
                    }

                    goto LABEL_211;
                  }

                  if (v137 != 8)
                  {
                    if (v142 != 9 || v138 | v139 | v140 | v141)
                    {
                      goto LABEL_276;
                    }

                    goto LABEL_211;
                  }

                  v177 = *(v111 - 1);
                  if (v142 != 8)
                  {
                    goto LABEL_276;
                  }

                  v145 = *(v111 - 2);
                  v169 = v110;
                  v172 = *(v110 - 2);
                  v174 = *(v111 - 4);
                  v175 = *(v111 - 3);
                  v173 = *(v110 - 1);
                  v163 = *(v110 - 4);
                  v168 = *(v110 - 3);
                  sub_255C90E88(v139, v138, v140, v141, 8u);
                  v176 = v145;
                  sub_255C90E88(v174, v175, v145, v177, 8u);
                  v2 = v163;
                  if ((sub_255C8EA80(v174, v163) & 1) == 0)
                  {
                    goto LABEL_275;
                  }

                  sub_255C8EB48(v175, v168);
                  v156 = v129;
                  sub_255C90F54(v163, v168, v172, v173, 8u);
                  v130 = v174;
                  v131 = v175;
                  v132 = v176;
                  v133 = v177;
                  v134 = 8;
                }

                else
                {
                  v176 = *(v111 - 2);
                  v177 = *(v111 - 1);
                  if (*v111 > 1u)
                  {
                    if (v137 == 2)
                    {
                      if (v142 != 2)
                      {
                        goto LABEL_276;
                      }

                      if ((v139 ^ v135))
                      {
                        goto LABEL_276;
                      }

                      if (v136 != v138)
                      {
                        goto LABEL_276;
                      }

                      v174 = *(v111 - 4);
                      v175 = *(v111 - 3);
                      v172 = *(v110 - 2);
                      v173 = *(v110 - 1);
                      v170 = v110;
                      v165 = *(v110 - 4);
                      sub_255C90E88(v139, v136, v140, v141, 2u);
                      sub_255C90E88(v174, v175, v176, v177, 2u);
                      LODWORD(v168) = sub_255C8B060(v176, v172);
                      sub_255C90F54(v165, v175, v172, v173, 2u);
                      sub_255C90F54(v174, v175, v176, v177, 2u);
                      v110 = v170;
                      v2 = v160;
                      if ((v168 & 1) == 0)
                      {
                        goto LABEL_276;
                      }
                    }

                    else
                    {
                      if (v137 == 3)
                      {
                        if (v142 != 3 || ((v139 ^ v135) & 1) != 0)
                        {
                          goto LABEL_276;
                        }

                        v143 = *(v111 - 4);
                        v174 = v143;
                        v175 = *(v111 - 3);
                        v172 = *(v110 - 2);
                        v173 = *(v110 - 1);
                        v168 = *(v110 - 3);
                        v169 = v110;
                        v162 = *(v110 - 4);
                        sub_255C90E88(v139, v138, v140, v141, 3u);
                        sub_255C90E88(v143, v175, v176, v177, 3u);
                        sub_255C8C980(v175, v168);
                        v156 = v144;
                        sub_255C90F54(v162, v168, v172, v173, 3u);
                        v130 = v143;
                        v131 = v175;
                        v132 = v176;
                        v133 = v177;
                        v134 = 3;
                        break;
                      }

                      if (v142 != 4)
                      {
                        goto LABEL_276;
                      }

                      if (v136)
                      {
                        if (!v138)
                        {
                          goto LABEL_276;
                        }

                        if (v135 != v139 || v136 != v138)
                        {
                          v172 = *(v110 - 2);
                          v173 = *(v110 - 1);
                          v148 = v110;
                          v149 = sub_255D076D8();
                          v140 = v172;
                          v141 = v173;
                          v110 = v148;
                          v2 = v160;
                          if ((v149 & 1) == 0)
                          {
                            goto LABEL_276;
                          }
                        }
                      }

                      else if (v138)
                      {
                        goto LABEL_276;
                      }

                      if (v176 != v140 || v177 != v141)
                      {
LABEL_262:
                        v152 = v110;
                        v153 = sub_255D076D8();
                        v110 = v152;
                        v2 = v160;
                        if ((v153 & 1) == 0)
                        {
                          goto LABEL_276;
                        }
                      }
                    }

LABEL_211:
                    ++v112;
                    v110 += 40;
                    v111 += 40;
                    if (v2 == v112)
                    {
                      sub_255C90F54(v3, v6, v181, v188, 0);
                      sub_255C90F54(v198, v192, v190, v161, 0);
                      v68 = v179;
                      goto LABEL_143;
                    }

                    continue;
                  }

                  v169 = v110;
                  v172 = *(v110 - 2);
                  v173 = *(v110 - 1);
                  v174 = *(v111 - 4);
                  v175 = *(v111 - 3);
                  v164 = *(v110 - 4);
                  v168 = *(v110 - 3);
                  if (*v111)
                  {
                    if (v142 != 1 || ((v139 ^ v135) & 1) != 0)
                    {
                      goto LABEL_276;
                    }

                    v150 = *(v111 - 4);
                    sub_255C90E88(v139, v138, v140, v141, 1u);
                    sub_255C90E88(v150, v175, v176, v177, 1u);
                    v156 = sub_255C8B060(v175, v168);
                    sub_255C90F54(v164, v168, v172, v173, 1u);
                    v130 = v174;
                    v131 = v175;
                    v132 = v176;
                    v133 = v177;
                    v134 = 1;
                  }

                  else
                  {
                    if (*v110)
                    {
                      goto LABEL_276;
                    }

                    v146 = *(v111 - 3);
                    sub_255C90E88(v139, v138, v140, v141, 0);
                    sub_255C90E88(v174, v146, v176, v177, 0);
                    v156 = sub_255C8AF80(v174, v164);
                    sub_255C90F54(v164, v168, v172, v173, 0);
                    v130 = v174;
                    v131 = v175;
                    v132 = v176;
                    v133 = v177;
                    v134 = 0;
                  }
                }

                break;
              }

              sub_255C90F54(v130, v131, v132, v133, v134);
              v110 = v169;
              v2 = v160;
              if ((v156 & 1) == 0)
              {
                goto LABEL_276;
              }

              goto LABEL_211;
            }

            if (v103 != 1 || ((v3 ^ v198) & 1) != 0)
            {
              goto LABEL_277;
            }

            v178 = v68;
            v181 = v101;
            v188 = v102;
            sub_255C90E88(v3, v6, v101, v102, 1u);
            v125 = v6;
            v6 = v198;
            v2 = v192;
            v177 = v3;
            v3 = v190;
            sub_255C90E88(v198, v192, v190, v98, 1u);
            LODWORD(v176) = sub_255C8B060(v192, v125);
            sub_255C90F54(v177, v125, v181, v188, 1u);
            v92 = v198;
            v93 = v192;
            v94 = v190;
            v95 = v98;
            v96 = 1;
          }

          else if (v99 == 2)
          {
            if (v103 != 2 || ((v3 ^ v198) & 1) != 0 || v192 != v6)
            {
              goto LABEL_277;
            }

            v91 = v3;
            v6 = *(v97 + 8);
            v177 = v3;
            v178 = v68;
            v3 = v101;
            v188 = v102;
            sub_255C90E88(v91, v192, v101, v102, 2u);
            v2 = v190;
            sub_255C90E88(v198, v192, v190, v98, 2u);
            LODWORD(v176) = sub_255C8B060(v190, v3);
            sub_255C90F54(v177, v192, v3, v188, 2u);
            v92 = v198;
            v93 = v192;
            v94 = v190;
            v95 = v98;
            v96 = 2;
          }

          else
          {
            if (v99 != 3)
            {
              if (v103 != 4)
              {
                goto LABEL_277;
              }

              if (v192)
              {
                if (!v6)
                {
                  goto LABEL_277;
                }

                if (v198 != v3 || v192 != v6)
                {
                  v121 = v101;
                  v2 = v102;
                  v3 = *(v97 + 24);
                  v122 = v68;
                  v123 = sub_255D076D8();
                  v101 = v121;
                  v102 = v2;
                  v68 = v122;
                  v98 = v3;
                  if ((v123 & 1) == 0)
                  {
                    goto LABEL_277;
                  }
                }
              }

              else if (v6)
              {
                goto LABEL_277;
              }

              if (v190 == v101 && v98 == v102)
              {
                goto LABEL_143;
              }

LABEL_207:
              v127 = v68;
              v128 = sub_255D076D8();
              v68 = v127;
              if ((v128 & 1) == 0)
              {
                goto LABEL_277;
              }

              goto LABEL_143;
            }

            if (v103 != 3 || ((v3 ^ v198) & 1) != 0)
            {
              goto LABEL_277;
            }

            v178 = v68;
            v181 = v101;
            v188 = v102;
            sub_255C90E88(v3, v6, v101, v102, 3u);
            v104 = v6;
            v6 = v198;
            v2 = v192;
            v177 = v3;
            v3 = v190;
            sub_255C90E88(v198, v192, v190, v98, 3u);
            sub_255C8C980(v192, v104);
            LODWORD(v176) = v105;
            sub_255C90F54(v177, v104, v181, v188, 3u);
            v92 = v198;
            v93 = v192;
            v94 = v190;
            v95 = v98;
            v96 = 3;
          }

          sub_255C90F54(v92, v93, v94, v95, v96);
          v68 = v178;
          if ((v176 & 1) == 0)
          {
            goto LABEL_277;
          }
        }

LABEL_143:
        if (++v68 == v182)
        {
          sub_255C90F54(v189, v158, v191, v159, 0);
          sub_255C90F54(v203, v183, v202, v186, 0);
          v36 = v200;
          goto LABEL_83;
        }
      }
    }

    if (v29 > 6)
    {
      break;
    }

    if (v29 != 5)
    {
      if (v31 != 6)
      {
        goto LABEL_267;
      }

      sub_255C90E88(v8, v7, v3, v210, 6u);
      v6 = v209;
      sub_255C90E88(v5, v4, v209, v28, 6u);
      v2 = sub_255C8E694(v5, v8);
      sub_255C90F54(v8, v7, v3, v210, 6u);
      sub_255C90F54(v5, v4, v209, v28, 6u);
      v18 = v204;
      v17 = v205;
      if ((v2 & 1) == 0)
      {
        goto LABEL_267;
      }

      goto LABEL_17;
    }

    if (v31 != 5)
    {
      goto LABEL_267;
    }

    if (v5 != v8 || v4 != v7)
    {
      goto LABEL_76;
    }

LABEL_17:
    if (++v19 == v18)
    {

      v11 = v196;
      v9 = v197;
      v12 = v195;
      v10 = v199;
      goto LABEL_7;
    }
  }

  if (v29 == 7)
  {
    if (v31 != 7 || v5 != v8)
    {
      goto LABEL_267;
    }

    sub_255C90E88(v5, v7, v3, v210, 7u);
    sub_255C90E88(v5, v4, v209, v28, 7u);
    v2 = v209;
    v6 = v28;
    v20 = sub_255C8E694(v4, v7);
    sub_255C90F54(v5, v7, v3, v210, 7u);
    v21 = v5;
    v22 = v4;
    v23 = v209;
    v24 = v6;
    v25 = 7;
    goto LABEL_16;
  }

  if (v29 != 8)
  {
    if (v31 != 9 || (v7 | v8 | v3 | v210) != 0)
    {
      goto LABEL_267;
    }

    goto LABEL_17;
  }

  if (v31 != 8)
  {
    goto LABEL_267;
  }

  sub_255C90E88(v8, v7, v3, v210, 8u);
  sub_255C90E88(v5, v4, v209, v28, 8u);
  if (sub_255C8EA80(v5, v8))
  {
    sub_255C8EB48(v4, v7);
    v6 = v28;
    v20 = v33;
    sub_255C90F54(v8, v7, v3, v210, 8u);
    v21 = v5;
    v22 = v4;
    v23 = v209;
    v24 = v6;
    v25 = 8;
LABEL_16:
    sub_255C90F54(v21, v22, v23, v24, v25);
    v18 = v204;
    v17 = v205;
    if ((v20 & 1) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_17;
  }

  sub_255C90F54(v8, v7, v3, v210, 8u);
  sub_255C90F54(v5, v4, v209, v28, 8u);
LABEL_267:

LABEL_280:
}

void sub_255C8C980(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16) || !v6 || a1 == a2)
  {
    return;
  }

  v7 = 0;
  v8 = a1 + 32;
  v9 = a2 + 32;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_333;
    }

    v10 = (v8 + 16 * v7);
    v11 = (v9 + 16 * v7);
    if (*v10 != *v11)
    {
      return;
    }

    v5 = *(v10 + 1);
    v12 = *(v11 + 1);
    v13 = *(v5 + 16);
    if (v13 != *(v12 + 16))
    {
      return;
    }

    if (v13 && v5 != v12)
    {
      break;
    }

LABEL_13:
    if (++v7 == v6)
    {
      return;
    }
  }

  v275 = v9;
  v276 = v8;
  v277 = v7;
  v278 = v6;
  v296 = v12 + 32;
  v297 = v5 + 32;
  v295 = *(v5 + 16);

  v15 = v295;
  v16 = 0;
  v293 = v12;
  while (1)
  {
    if (v16 >= *(v5 + 16))
    {
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      sub_255C90F54(v4, v2, v258, v259, 8u);
      sub_255C90F54(v257, v255, v5, v3, 8u);
LABEL_335:
      v248 = v250;
      sub_255C90F54(v265, v283, v269, v284, v250);
      v19 = v280;
LABEL_336:
      sub_255C90F54(v262, v267, v285, v263, v248);
      goto LABEL_337;
    }

    if (v16 >= *(v12 + 16))
    {
      goto LABEL_330;
    }

    v18 = v297 + 40 * v16;
    v19 = *v18;
    v2 = *(v18 + 8);
    v3 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = *(v18 + 32);
    v22 = v296 + 40 * v16;
    v24 = *v22;
    v23 = *(v22 + 8);
    v26 = *(v22 + 16);
    v25 = *(v22 + 24);
    v27 = *(v22 + 32);
    if (v21 <= 4)
    {
      break;
    }

    if (*(v18 + 32) > 6u)
    {
      if (v21 != 7)
      {
        if (v21 == 8)
        {
          if (v27 != 8)
          {
            goto LABEL_338;
          }

          v40 = *(v18 + 24);
          v4 = v25;
          sub_255C90E88(v24, v23, v26, v25, 8u);
          sub_255C90E88(v19, v2, v3, v40, 8u);
          if ((sub_255C8EA80(v19, v24) & 1) == 0)
          {
            sub_255C90F54(v24, v23, v26, v4, 8u);
            sub_255C90F54(v19, v2, v3, v40, 8u);
            goto LABEL_338;
          }

          sub_255C8EB48(v2, v23);
          v41 = v23;
          v42 = v2;
          v2 = v43;
          sub_255C90F54(v24, v41, v26, v4, 8u);
          sub_255C90F54(v19, v42, v3, v40, 8u);
          v15 = v295;
          v12 = v293;
          if ((v2 & 1) == 0)
          {
LABEL_338:

            return;
          }
        }

        else if (v27 != 9 || (v23 | v24 | v26 | v25) != 0)
        {
          goto LABEL_338;
        }

        goto LABEL_20;
      }

      if (v27 != 7 || v19 != v24)
      {
        goto LABEL_338;
      }

      v4 = *(v18 + 24);
      v53 = v25;
      sub_255C90E88(*v18, v23, v26, v25, 7u);
      sub_255C90E88(v19, v2, v3, v4, 7u);
      v54 = sub_255C8E694(v2, v23);
      v55 = v23;
      v56 = v2;
      v2 = v54;
      sub_255C90F54(v19, v55, v26, v53, 7u);
      v35 = v19;
      v36 = v56;
      v37 = v3;
      v38 = v4;
      v39 = 7;
LABEL_64:
      sub_255C90F54(v35, v36, v37, v38, v39);
      v15 = v295;
      if ((v2 & 1) == 0)
      {
        goto LABEL_338;
      }

      goto LABEL_20;
    }

    if (v21 != 5)
    {
      if (v27 != 6)
      {
        goto LABEL_338;
      }

      v291 = v16;
      v69 = *v18;
      v70 = v5;
      v71 = v12;
      v72 = *(v18 + 24);
      v4 = v25;
      sub_255C90E88(v24, v23, v26, v25, 6u);
      sub_255C90E88(v69, v2, v3, v72, 6u);
      v73 = sub_255C8E694(v69, v24);
      v74 = v23;
      v75 = v73;
      sub_255C90F54(v24, v74, v26, v4, 6u);
      v76 = v69;
      v16 = v291;
      v77 = v72;
      v12 = v71;
      v5 = v70;
      sub_255C90F54(v76, v2, v3, v77, 6u);
      v15 = v295;
      if ((v75 & 1) == 0)
      {
        goto LABEL_338;
      }

      goto LABEL_20;
    }

    if (v27 != 5)
    {
      goto LABEL_338;
    }

    if (v19 != v24 || v2 != v23)
    {
      goto LABEL_101;
    }

LABEL_20:
    if (++v16 == v15)
    {

      v7 = v277;
      v6 = v278;
      v9 = v275;
      v8 = v276;
      goto LABEL_13;
    }
  }

  if (*(v18 + 32) > 1u)
  {
    if (v21 == 2)
    {
      if (v27 != 2)
      {
        goto LABEL_338;
      }

      if ((v24 ^ v19))
      {
        goto LABEL_338;
      }

      if (v2 != v23)
      {
        goto LABEL_338;
      }

      v294 = v24;
      v49 = *(v3 + 16);
      if (v49 != *(v26 + 16))
      {
        goto LABEL_338;
      }

      if (v49)
      {
        v50 = v3 == v26;
      }

      else
      {
        v50 = 1;
      }

      if (!v50)
      {
        v261 = 2;
        v270 = v5;
        v4 = v3 + 32;
        v51 = v26 + 32;
        v52 = *(v18 + 24);
        v279 = v25;
        sub_255C90E88(v294, v2, v26, v25, 2u);
        v282 = v2;
        v268 = v52;
        sub_255C90E88(v19, v2, v3, v52, 2u);
        v5 = 0;
        v280 = v19;
        v281 = v3;
        v286 = v26 + 32;
        v290 = v3 + 32;
        while (v5 < *(v3 + 16))
        {
          if (v5 >= *(v26 + 16))
          {
            goto LABEL_345;
          }

          v78 = v26;
          v3 = *(v4 + 8 * v5);
          v2 = *(v51 + 8 * v5);
          v79 = *(v3 + 16);
          if (v79 != *(v2 + 16))
          {
            v242 = v282;
            sub_255C90F54(v294, v282, v78, v279, 2u);
            v243 = v19;
LABEL_318:
            v244 = v242;
            v245 = v281;
            v246 = v268;
            v247 = 2;
            goto LABEL_320;
          }

          if (v79)
          {
            v80 = v3 == v2;
          }

          else
          {
            v80 = 1;
          }

          if (!v80)
          {

            v4 = 0;
            v81 = 32;
            while (v4 < *(v3 + 16))
            {
              v82 = *(v3 + v81);
              v83 = *(v3 + v81 + 16);
              v300 = *(v3 + v81 + 32);
              v299[0] = v82;
              v299[1] = v83;
              if (v4 >= *(v2 + 16))
              {
                goto LABEL_332;
              }

              v84 = *(v2 + v81);
              v85 = *(v2 + v81 + 16);
              v302 = *(v2 + v81 + 32);
              v301[0] = v84;
              v301[1] = v85;
              sub_255C76B38(v299, v298);
              sub_255C76B38(v301, v298);
              sub_255CD5888(v299, v301);
              v87 = v86;
              sub_255C76BF4(v301);
              sub_255C76BF4(v299);
              if ((v87 & 1) == 0)
              {

                v242 = v282;
                sub_255C90F54(v294, v282, v78, v279, 2u);
                v243 = v280;
                goto LABEL_318;
              }

              ++v4;
              v81 += 40;
              if (v79 == v4)
              {

                v19 = v280;
                v51 = v286;
                v4 = v290;
                goto LABEL_84;
              }
            }

            goto LABEL_331;
          }

LABEL_84:
          ++v5;
          v3 = v281;
          v26 = v78;
          if (v5 == v49)
          {
            v2 = v282;
            sub_255C90F54(v294, v282, v78, v279, 2u);
            v241 = v282;
            v12 = v293;
            v5 = v270;
            goto LABEL_314;
          }
        }

        goto LABEL_344;
      }

      goto LABEL_20;
    }

    if (v21 != 3)
    {
      if (v27 != 4)
      {
        goto LABEL_338;
      }

      if (v2)
      {
        if (!v23)
        {
          goto LABEL_338;
        }

        if (v19 != v24 || v2 != v23)
        {
          v57 = *(v18 + 24);
          v2 = v25;
          v58 = sub_255D076D8();
          v20 = v57;
          v25 = v2;
          v15 = v295;
          if ((v58 & 1) == 0)
          {
            goto LABEL_338;
          }
        }
      }

      else if (v23)
      {
        goto LABEL_338;
      }

      if (v3 == v26 && v20 == v25)
      {
        goto LABEL_20;
      }

LABEL_101:
      v88 = sub_255D076D8();
      v15 = v295;
      if ((v88 & 1) == 0)
      {
        goto LABEL_338;
      }

      goto LABEL_20;
    }

    if (v27 != 3 || ((v24 ^ v19) & 1) != 0)
    {
      goto LABEL_338;
    }

    v288 = v16;
    v28 = *v18;
    v29 = v5;
    v30 = v12;
    v31 = *(v18 + 24);
    v4 = v25;
    sub_255C90E88(v24, v23, v26, v25, 3u);
    sub_255C90E88(v28, v2, v3, v31, 3u);
    sub_255C8C980(v2, v23);
    v32 = v23;
    v33 = v2;
    v2 = v34;
    sub_255C90F54(v24, v32, v26, v4, 3u);
    v35 = v28;
    v16 = v288;
    v36 = v33;
    v37 = v3;
    v38 = v31;
    v12 = v30;
    v5 = v29;
    v39 = 3;
    goto LABEL_64;
  }

  v294 = v24;
  if (!*(v18 + 32))
  {
    if (v27)
    {
      goto LABEL_338;
    }

    v4 = *(v19 + 16);
    if (v4 != *(v24 + 16))
    {
      goto LABEL_338;
    }

    if (v4)
    {
      v44 = v19 == v24;
    }

    else
    {
      v44 = 1;
    }

    if (v44)
    {
      goto LABEL_20;
    }

    v261 = 0;
    v289 = v19 + 32;
    v266 = v23;
    v45 = *(v18 + 8);
    v2 = v24;
    v46 = *(v18 + 24);
    v264 = v26;
    v279 = v25;
    sub_255C90E88(v294, v266, v26, v25, 0);
    v281 = v3;
    v282 = v45;
    v268 = v46;
    sub_255C90E88(v19, v45, v3, v46, 0);
    v47 = 0;
    v260 = v4;
    while (2)
    {
      if (v47 >= *(v19 + 16))
      {
        goto LABEL_342;
      }

      if (v47 >= *(v2 + 16))
      {
        goto LABEL_343;
      }

      v99 = v289 + 40 * v47;
      v100 = *v99;
      v101 = *(v99 + 8);
      v103 = *(v99 + 16);
      v102 = *(v99 + 24);
      v104 = *(v99 + 32);
      v105 = v294 + 32 + 40 * v47;
      v106 = *v105;
      v107 = *(v105 + 8);
      v108 = *(v105 + 16);
      v109 = *(v105 + 24);
      v110 = *(v105 + 32);
      if (v104 <= 4)
      {
        v285 = v103;
        if (v104 > 1)
        {
          if (v104 == 2)
          {
            if (v110 != 2)
            {
              goto LABEL_337;
            }

            if ((v106 ^ v100))
            {
              goto LABEL_337;
            }

            if (v101 != v107)
            {
              goto LABEL_337;
            }

            v130 = *(v103 + 16);
            if (v130 != *(v108 + 16))
            {
              goto LABEL_337;
            }

            if (v130)
            {
              v131 = v103 == v108;
            }

            else
            {
              v131 = 1;
            }

            if (!v131)
            {
              v250 = 2;
              v273 = v5;
              v283 = v103 + 32;
              v284 = v109;
              v132 = v108 + 32;
              v133 = v101;
              v134 = v100;
              v265 = v106;
              v135 = v108;
              v136 = v102;
              sub_255C90E88(v106, v133, v108, v109, 2u);
              v262 = v134;
              v263 = v136;
              v267 = v133;
              v137 = v136;
              v138 = v285;
              sub_255C90E88(v134, v133, v285, v137, 2u);
              v139 = 0;
              while (v139 < *(v138 + 16))
              {
                if (v139 >= *(v135 + 16))
                {
                  goto LABEL_348;
                }

                v140 = v19;
                v141 = *(v283 + 8 * v139);
                v142 = *(v132 + 8 * v139);

                v143 = sub_255C8AF80(v141, v142);

                if ((v143 & 1) == 0)
                {
                  v248 = 2;
                  sub_255C90F54(v265, v267, v135, v284, 2u);
                  v19 = v140;
                  goto LABEL_336;
                }

                ++v139;
                v19 = v140;
                v138 = v285;
                if (v130 == v139)
                {
                  v144 = v267;
                  sub_255C90F54(v265, v267, v135, v284, 2u);
                  v12 = v293;
                  v5 = v273;
                  v4 = v260;
                  goto LABEL_245;
                }
              }

              goto LABEL_346;
            }
          }

          else
          {
            if (v104 == 3)
            {
              if (v110 != 3 || ((v106 ^ v100) & 1) != 0)
              {
                goto LABEL_337;
              }

              v111 = v100;
              v269 = v108;
              v112 = v102;
              v284 = v109;
              v285 = v47;
              v113 = v107;
              v265 = v106;
              sub_255C90E88(v106, v107, v108, v109, 3u);
              sub_255C90E88(v111, v101, v103, v112, 3u);
              sub_255C8C980(v101, v113);
              LODWORD(v283) = v114;
              v115 = v113;
              v47 = v285;
              sub_255C90F54(v265, v115, v269, v284, 3u);
              v94 = v111;
              v95 = v101;
              v96 = v103;
              v97 = v112;
              v98 = 3;
              goto LABEL_109;
            }

            if (v110 != 4)
            {
              goto LABEL_337;
            }

            if (v101)
            {
              if (!v107)
              {
                goto LABEL_337;
              }

              if (v100 != v106 || v101 != v107)
              {
                v145 = v108;
                v146 = v102;
                v147 = v109;
                v148 = sub_255D076D8();
                v108 = v145;
                v109 = v147;
                v102 = v146;
                v103 = v285;
                if ((v148 & 1) == 0)
                {
                  goto LABEL_337;
                }
              }
            }

            else if (v107)
            {
              goto LABEL_337;
            }

            if (v103 != v108 || v102 != v109)
            {
LABEL_186:
              if ((sub_255D076D8() & 1) == 0)
              {
                goto LABEL_337;
              }
            }
          }

LABEL_110:
          ++v47;
          v2 = v294;
          if (v47 != v4)
          {
            continue;
          }

          sub_255C90F54(v294, v266, v264, v279, 0);
          v3 = v281;
          v241 = v282;
LABEL_314:
          sub_255C90F54(v19, v241, v3, v268, v261);
          v15 = v295;
          goto LABEL_20;
        }

        v283 = v107;
        if (v104)
        {
          if (v110 != 1)
          {
            goto LABEL_337;
          }

          if ((v106 ^ v100))
          {
            goto LABEL_337;
          }

          v150 = *(v101 + 16);
          if (v150 != *(v107 + 16))
          {
            goto LABEL_337;
          }

          if (v150)
          {
            v151 = v101 == v107;
          }

          else
          {
            v151 = 1;
          }

          if (!v151)
          {
            v250 = v104;
            v269 = v108;
            v274 = v5;
            v152 = v107 + 32;
            v153 = v100;
            v265 = v106;
            v154 = v103;
            v155 = v102;
            v284 = v109;
            sub_255C90E88(v106, v107, v108, v109, 1u);
            v262 = v153;
            v263 = v155;
            v267 = v101;
            sub_255C90E88(v153, v101, v154, v155, 1u);
            v156 = 0;
            v280 = v19;
            do
            {
              if (v156 >= *(v101 + 16))
              {
                goto LABEL_347;
              }

              if (v156 >= *(v283 + 16))
              {
                goto LABEL_349;
              }

              v157 = *(v101 + 32 + 8 * v156);
              v158 = *(v152 + 8 * v156);

              v159 = sub_255C8AF80(v157, v158);

              if ((v159 & 1) == 0)
              {
                goto LABEL_335;
              }

              ++v156;
              v19 = v280;
            }

            while (v150 != v156);
            sub_255C90F54(v265, v283, v269, v284, 1u);
            v12 = v293;
            v5 = v274;
            v4 = v260;
LABEL_244:
            v138 = v285;
            v144 = v267;
LABEL_245:
            sub_255C90F54(v262, v144, v138, v263, v250);
          }

          goto LABEL_110;
        }

        if (v110)
        {
          goto LABEL_337;
        }

        v120 = *(v100 + 16);
        if (v120 != *(v106 + 16))
        {
          goto LABEL_337;
        }

        if (v120)
        {
          v121 = v100 == v106;
        }

        else
        {
          v121 = 1;
        }

        if (v121)
        {
          goto LABEL_110;
        }

        v250 = 0;
        v280 = v19;
        v262 = v100;
        v269 = v108;
        v122 = v103;
        v123 = v102;
        v284 = v109;
        v124 = v106;
        sub_255C90E88(v106, v107, v108, v109, 0);
        v267 = v101;
        v263 = v123;
        sub_255C90E88(v262, v101, v122, v123, 0);
        v125 = v262;
        v126 = 0;
        v265 = v124;
        v127 = (v124 + 64);
        v128 = (v262 + 64);
        v256 = v120;
        v272 = v5;
        while (2)
        {
          if (v126 >= *(v125 + 16))
          {
            goto LABEL_352;
          }

          if (v126 >= *(v265 + 16))
          {
            goto LABEL_353;
          }

          v172 = *(v128 - 4);
          v173 = *(v128 - 3);
          v3 = *(v128 - 1);
          v174 = *v128;
          v4 = *(v127 - 4);
          v2 = *(v127 - 3);
          v175 = *(v127 - 2);
          v176 = *(v127 - 1);
          v177 = *v127;
          if (v174 <= 4)
          {
            if (*v128 <= 1u)
            {
              v253 = *(v128 - 2);
              v258 = *(v127 - 2);
              v259 = *(v127 - 1);
              if (*v128)
              {
                if (v177 != 1 || ((v4 ^ v172) & 1) != 0)
                {
                  goto LABEL_335;
                }

                v196 = *(v128 - 4);
                v257 = v196;
                v197 = *(v128 - 3);
                sub_255C90E88(v4, v2, v175, v176, 1u);
                sub_255C90E88(v196, v197, v253, v3, 1u);
                v249 = sub_255C8B060(v197, v2);
                sub_255C90F54(v4, v2, v258, v259, 1u);
                v167 = v196;
                v168 = v197;
                v169 = v253;
                v170 = v3;
                v171 = 1;
              }

              else
              {
                if (*v127)
                {
                  goto LABEL_335;
                }

                v186 = *(v128 - 4);
                v187 = *(v128 - 3);
                v255 = v187;
                sub_255C90E88(v4, v2, v175, v176, 0);
                sub_255C90E88(v186, v187, v253, v3, 0);
                v249 = sub_255C8AF80(v186, v4);
                sub_255C90F54(v4, v2, v258, v259, 0);
                v167 = v186;
                v168 = v187;
                v169 = v253;
                v170 = v3;
                v171 = 0;
              }
            }

            else
            {
              if (v174 != 2)
              {
                v178 = *(v128 - 2);
                v251 = *(v128 - 1);
                if (v174 == 3)
                {
                  if (v177 != 3 || ((v4 ^ v172) & 1) != 0)
                  {
                    goto LABEL_335;
                  }

                  v164 = *(v128 - 4);
                  v257 = v164;
                  v258 = *(v127 - 2);
                  v165 = *(v128 - 3);
                  v259 = *(v127 - 1);
                  sub_255C90E88(v4, v2, v175, v176, 3u);
                  sub_255C90E88(v164, v165, v178, v251, 3u);
                  sub_255C8C980(v165, v2);
                  v249 = v166;
                  sub_255C90F54(v4, v2, v258, v259, 3u);
                  v167 = v164;
                  v168 = v165;
                  v169 = v178;
                  v170 = v251;
                  v171 = 3;
                  goto LABEL_189;
                }

                if (v177 != 4)
                {
                  goto LABEL_335;
                }

                if (v173)
                {
                  if (!v2)
                  {
                    goto LABEL_335;
                  }

                  if (v172 != v4 || v173 != v2)
                  {
                    v258 = *(v127 - 2);
                    v194 = *(v127 - 1);
                    v195 = sub_255D076D8();
                    v175 = v258;
                    v176 = v194;
                    if ((v195 & 1) == 0)
                    {
                      goto LABEL_335;
                    }
                  }
                }

                else if (v2)
                {
                  goto LABEL_335;
                }

                if (v178 != v175 || v251 != v176)
                {
LABEL_241:
                  if ((sub_255D076D8() & 1) == 0)
                  {
                    goto LABEL_335;
                  }
                }

LABEL_190:
                ++v126;
                v127 += 40;
                v128 += 40;
                v12 = v293;
                v5 = v272;
                v4 = v260;
                v125 = v262;
                if (v256 == v126)
                {
                  sub_255C90F54(v265, v283, v269, v284, 0);
                  v19 = v280;
                  goto LABEL_244;
                }

                continue;
              }

              v254 = *(v128 - 2);
              if (v177 != 2 || ((v4 ^ v172) & 1) != 0 || v173 != v2)
              {
                goto LABEL_335;
              }

              v188 = *(v128 - 4);
              v257 = v188;
              v189 = *(v128 - 3);
              v190 = *(v127 - 2);
              v259 = *(v127 - 1);
              sub_255C90E88(v4, v173, v175, v176, 2u);
              sub_255C90E88(v188, v189, v254, v3, 2u);
              v249 = sub_255C8B060(v254, v190);
              sub_255C90F54(v4, v189, v190, v259, 2u);
              v167 = v188;
              v168 = v189;
              v169 = v254;
              v170 = v3;
              v171 = 2;
            }

LABEL_189:
            sub_255C90F54(v167, v168, v169, v170, v171);
            if ((v249 & 1) == 0)
            {
              goto LABEL_335;
            }

            goto LABEL_190;
          }

          break;
        }

        if (*v128 <= 6u)
        {
          if (v174 == 5)
          {
            if (v177 != 5)
            {
              goto LABEL_335;
            }

            if (v172 != v4 || v173 != v2)
            {
              goto LABEL_241;
            }

            goto LABEL_190;
          }

          if (v177 != 6)
          {
            goto LABEL_335;
          }

          v198 = *(v128 - 2);
          v257 = *(v128 - 4);
          v258 = *(v127 - 2);
          v199 = *(v128 - 3);
          v255 = v199;
          v259 = *(v127 - 1);
          sub_255C90E88(v4, v2, v175, v176, 6u);
          sub_255C90E88(v257, v199, v198, v3, 6u);
          v252 = sub_255C8E694(v257, v4);
          sub_255C90F54(v4, v2, v258, v259, 6u);
          v181 = v257;
          v182 = v199;
          v183 = v198;
          v184 = v3;
          v185 = 6;
        }

        else if (v174 == 7)
        {
          if (v177 != 7 || v172 != v4)
          {
            goto LABEL_335;
          }

          v191 = *(v128 - 2);
          v192 = *(v128 - 4);
          v193 = *(v128 - 3);
          v258 = *(v127 - 2);
          v259 = *(v127 - 1);
          sub_255C90E88(v172, *(v127 - 3), v175, v176, 7u);
          sub_255C90E88(v192, v193, v191, v3, 7u);
          v252 = sub_255C8E694(v193, v2);
          sub_255C90F54(v192, v2, v258, v259, 7u);
          v181 = v192;
          v182 = v193;
          v183 = v191;
          v184 = v3;
          v185 = 7;
        }

        else
        {
          if (v174 != 8)
          {
            if (v177 != 9 || v2 | v4 | v175 | v176)
            {
              goto LABEL_335;
            }

            goto LABEL_190;
          }

          if (v177 != 8)
          {
            goto LABEL_335;
          }

          v5 = *(v128 - 2);
          v179 = *(v128 - 4);
          v255 = *(v128 - 3);
          v258 = *(v127 - 2);
          v259 = *(v127 - 1);
          sub_255C90E88(*(v127 - 4), v2, v175, v176, 8u);
          sub_255C90E88(v179, v255, v5, v3, 8u);
          v257 = v179;
          if ((sub_255C8EA80(v179, v4) & 1) == 0)
          {
            goto LABEL_334;
          }

          sub_255C8EB48(v255, v2);
          v252 = v180;
          sub_255C90F54(v4, v2, v258, v259, 8u);
          v181 = v179;
          v182 = v255;
          v183 = v5;
          v184 = v3;
          v185 = 8;
        }

        sub_255C90F54(v181, v182, v183, v184, v185);
        if ((v252 & 1) == 0)
        {
          goto LABEL_335;
        }

        goto LABEL_190;
      }

      break;
    }

    if (v104 <= 6)
    {
      if (v104 != 5)
      {
        if (v110 != 6)
        {
          goto LABEL_337;
        }

        v267 = v101;
        v160 = v100;
        v269 = v108;
        v263 = v102;
        v284 = v109;
        v285 = v47;
        v161 = v107;
        v162 = v106;
        sub_255C90E88(v106, v107, v108, v109, 6u);
        sub_255C90E88(v160, v101, v103, v263, 6u);
        LODWORD(v283) = sub_255C8E694(v160, v162);
        v163 = v161;
        v47 = v285;
        sub_255C90F54(v162, v163, v269, v284, 6u);
        v94 = v160;
        v95 = v101;
        v96 = v103;
        v97 = v263;
        v98 = 6;
        goto LABEL_109;
      }

      if (v110 != 5)
      {
        goto LABEL_337;
      }

      if (v100 != v106 || v101 != v107)
      {
        goto LABEL_186;
      }

      goto LABEL_110;
    }

    if (v104 == 7)
    {
      if (v110 != 7 || v100 != v106)
      {
        goto LABEL_337;
      }

      v90 = v100;
      v269 = v108;
      v91 = v102;
      v284 = v109;
      v285 = v47;
      v92 = v107;
      sub_255C90E88(v100, v107, v108, v109, 7u);
      sub_255C90E88(v90, v101, v103, v91, 7u);
      LODWORD(v283) = sub_255C8E694(v101, v92);
      v93 = v92;
      v47 = v285;
      sub_255C90F54(v90, v93, v269, v284, 7u);
      v94 = v90;
      v95 = v101;
      v96 = v103;
      v97 = v91;
      v98 = 7;
LABEL_109:
      sub_255C90F54(v94, v95, v96, v97, v98);
      if ((v283 & 1) == 0)
      {
        goto LABEL_337;
      }

      goto LABEL_110;
    }

    if (v104 != 8)
    {
      if (v110 != 9 || (v107 | v106 | v108 | v109) != 0)
      {
        goto LABEL_337;
      }

      goto LABEL_110;
    }

    if (v110 != 8)
    {
      goto LABEL_337;
    }

    v284 = v109;
    v285 = v47;
    v116 = v100;
    v269 = v108;
    v117 = v102;
    v283 = v107;
    v118 = v106;
    sub_255C90E88(v106, v107, v108, v109, 8u);
    v263 = v117;
    sub_255C90E88(v116, v101, v103, v117, 8u);
    if (sub_255C8EA80(v116, v118))
    {
      sub_255C8EB48(v101, v283);
      LODWORD(v265) = v119;
      sub_255C90F54(v118, v283, v269, v284, 8u);
      sub_255C90F54(v116, v101, v103, v117, 8u);
      v47 = v285;
      if ((v265 & 1) == 0)
      {
        goto LABEL_337;
      }

      goto LABEL_110;
    }

    sub_255C90F54(v118, v283, v269, v284, 8u);
    sub_255C90F54(v116, v101, v103, v117, 8u);
LABEL_337:
    sub_255C90F54(v294, v266, v264, v279, 0);
    sub_255C90F54(v19, v282, v281, v268, 0);
    goto LABEL_338;
  }

  if (v27 != 1)
  {
    goto LABEL_338;
  }

  if ((v24 ^ v19))
  {
    goto LABEL_338;
  }

  v59 = *(v2 + 16);
  if (v59 != *(v23 + 16))
  {
    goto LABEL_338;
  }

  if (v59)
  {
    v60 = v2 == v23;
  }

  else
  {
    v60 = 1;
  }

  if (v60)
  {
    goto LABEL_20;
  }

  v261 = v21;
  v267 = v2 + 32;
  v265 = v23 + 32;
  v61 = v23;
  v62 = v2;
  v2 = v294;
  v63 = v20;
  v279 = v25;
  v269 = v59;
  sub_255C90E88(v294, v61, v26, v25, 1u);
  v282 = v62;
  v268 = v63;
  sub_255C90E88(v19, v62, v3, v63, 1u);
  v64 = v265;
  v65 = v267;
  v66 = v269;
  v67 = v279;
  v68 = 0;
  v271 = v5;
  v280 = v19;
  v281 = v3;
  v264 = v26;
  v266 = v61;
  while (1)
  {
    if (v68 >= *(v282 + 16))
    {
      goto LABEL_350;
    }

    if (v68 >= *(v61 + 16))
    {
      break;
    }

    v200 = *(v65 + 8 * v68);
    v4 = *(v64 + 8 * v68);
    v201 = *(v200 + 16);
    if (v201 != *(v4 + 16))
    {
      sub_255C90F54(v2, v61, v26, v67, 1u);
      sub_255C90F54(v19, v282, v3, v268, 1u);
      goto LABEL_338;
    }

    if (v201)
    {
      v202 = v200 == v4;
    }

    else
    {
      v202 = 1;
    }

    if (!v202)
    {
      v262 = v68;
      v285 = *(v200 + 16);
      v287 = *(v65 + 8 * v68);

      v204 = v285;
      v203 = v287;
      v205 = 0;
      v206 = 0;
      v292 = v4;
      while (1)
      {
        if (v206 >= *(v203 + 16))
        {
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
LABEL_350:
          __break(1u);
          goto LABEL_351;
        }

        if (v206 >= *(v4 + 16))
        {
          goto LABEL_341;
        }

        v215 = *(v203 + v205 + 32);
        v214 = *(v203 + v205 + 40);
        v217 = *(v203 + v205 + 48);
        v216 = *(v203 + v205 + 56);
        v218 = *(v203 + v205 + 64);
        v219 = v4 + v205;
        v221 = *(v4 + v205 + 32);
        v220 = *(v4 + v205 + 40);
        v222 = *(v4 + v205 + 48);
        v223 = *(v4 + v205 + 56);
        v224 = *(v219 + 64);
        if (v218 <= 4)
        {
          if (*(v203 + v205 + 64) <= 1u)
          {
            v283 = *(v203 + v205 + 48);
            v284 = *(v203 + v205 + 56);
            if (!*(v203 + v205 + 64))
            {
              if (v224)
              {
                goto LABEL_319;
              }

              v232 = *(v203 + v205 + 48);
              sub_255C90E88(v221, v220, v222, v223, 0);
              sub_255C90E88(v215, v214, v232, v284, 0);
              LODWORD(v263) = sub_255C8AF80(v215, v221);
              sub_255C90F54(v221, v220, v222, v223, 0);
              sub_255C90F54(v215, v214, v283, v284, 0);
              v204 = v285;
              v203 = v287;
              if ((v263 & 1) == 0)
              {
                goto LABEL_319;
              }

              goto LABEL_258;
            }

            if (v224 != 1 || ((v221 ^ v215) & 1) != 0)
            {
              goto LABEL_319;
            }

            v238 = *(v203 + v205 + 48);
            sub_255C90E88(v221, v220, v222, v223, 1u);
            sub_255C90E88(v215, v214, v238, v284, 1u);
            LODWORD(v263) = sub_255C8B060(v214, v220);
            sub_255C90F54(v221, v220, v222, v223, 1u);
            v209 = v215;
            v210 = v214;
            v211 = v283;
            v212 = v284;
            v213 = 1;
          }

          else if (v218 == 2)
          {
            if (v224 != 2 || ((v221 ^ v215) & 1) != 0 || v214 != v220)
            {
              goto LABEL_319;
            }

            v233 = *(v203 + v205 + 48);
            v234 = *(v203 + v205 + 56);
            sub_255C90E88(v221, *(v203 + v205 + 40), v222, v223, 2u);
            sub_255C90E88(v215, v214, v233, v234, 2u);
            LODWORD(v263) = sub_255C8B060(v233, v222);
            sub_255C90F54(v221, v214, v222, v223, 2u);
            v209 = v215;
            v210 = v214;
            v211 = v233;
            v212 = v234;
            v213 = 2;
          }

          else
          {
            if (v218 != 3)
            {
              if (v224 != 4)
              {
                goto LABEL_319;
              }

              if (v214)
              {
                if (!v220)
                {
                  goto LABEL_319;
                }

                if (v215 != v221 || v214 != v220)
                {
                  v235 = *(v203 + v205 + 48);
                  v236 = *(v203 + v205 + 56);
                  v237 = sub_255D076D8();
                  v217 = v235;
                  v216 = v236;
                  v204 = v285;
                  v203 = v287;
                  if ((v237 & 1) == 0)
                  {
                    goto LABEL_319;
                  }
                }
              }

              else if (v220)
              {
                goto LABEL_319;
              }

              if (v217 == v222 && v216 == v223)
              {
                goto LABEL_258;
              }

LABEL_309:
              v240 = sub_255D076D8();
              v204 = v285;
              v203 = v287;
              if ((v240 & 1) == 0)
              {
                goto LABEL_319;
              }

              goto LABEL_258;
            }

            if (v224 != 3 || ((v221 ^ v215) & 1) != 0)
            {
              goto LABEL_319;
            }

            v225 = *(v203 + v205 + 48);
            v283 = v225;
            v284 = *(v203 + v205 + 56);
            sub_255C90E88(v221, v220, v222, v223, 3u);
            sub_255C90E88(v215, v214, v225, v284, 3u);
            sub_255C8C980(v214, v220);
            LODWORD(v263) = v226;
            sub_255C90F54(v221, v220, v222, v223, 3u);
            v209 = v215;
            v210 = v214;
            v211 = v225;
            v212 = v284;
            v213 = 3;
          }

          goto LABEL_257;
        }

        if (*(v203 + v205 + 64) > 6u)
        {
          break;
        }

        if (v218 != 5)
        {
          if (v224 != 6)
          {
            goto LABEL_319;
          }

          v239 = *(v203 + v205 + 48);
          v283 = v239;
          v284 = *(v203 + v205 + 56);
          sub_255C90E88(v221, v220, v222, v223, 6u);
          sub_255C90E88(v215, v214, v239, v284, 6u);
          LODWORD(v263) = sub_255C8E694(v215, v221);
          sub_255C90F54(v221, v220, v222, v223, 6u);
          v209 = v215;
          v210 = v214;
          v211 = v239;
          v212 = v284;
          v213 = 6;
LABEL_257:
          sub_255C90F54(v209, v210, v211, v212, v213);
          v204 = v285;
          v203 = v287;
          if ((v263 & 1) == 0)
          {
            goto LABEL_319;
          }

          goto LABEL_258;
        }

        if (v224 != 5)
        {
          goto LABEL_319;
        }

        if (v215 != v221 || v214 != v220)
        {
          goto LABEL_309;
        }

LABEL_258:
        ++v206;
        v205 += 40;
        v4 = v292;
        if (v204 == v206)
        {

          v12 = v293;
          v66 = v269;
          v5 = v271;
          v19 = v280;
          v3 = v281;
          v26 = v264;
          v64 = v265;
          v2 = v294;
          v67 = v279;
          v61 = v266;
          v65 = v267;
          v68 = v262;
          goto LABEL_247;
        }
      }

      if (v218 != 7)
      {
        if (v218 == 8)
        {
          if (v224 != 8)
          {
            goto LABEL_319;
          }

          v227 = v223;
          v228 = *(v203 + v205 + 48);
          v229 = *(v203 + v205 + 56);
          v263 = v227;
          sub_255C90E88(v221, v220, v222, v227, 8u);
          v283 = v228;
          v284 = v229;
          sub_255C90E88(v215, v214, v228, v229, 8u);
          if ((sub_255C8EA80(v215, v221) & 1) == 0)
          {
            sub_255C90F54(v221, v220, v222, v263, 8u);
            sub_255C90F54(v215, v214, v228, v229, 8u);
LABEL_319:

            sub_255C90F54(v294, v266, v264, v279, 1u);
            v243 = v280;
            v245 = v281;
            v244 = v282;
            v246 = v268;
            v247 = 1;
LABEL_320:
            sub_255C90F54(v243, v244, v245, v246, v247);
            goto LABEL_338;
          }

          sub_255C8EB48(v214, v220);
          v231 = v230;
          sub_255C90F54(v221, v220, v222, v263, 8u);
          sub_255C90F54(v215, v214, v228, v284, 8u);
          v204 = v285;
          v203 = v287;
          if ((v231 & 1) == 0)
          {
            goto LABEL_319;
          }
        }

        else if (v224 != 9 || v220 | v221 | v222 | v223)
        {
          goto LABEL_319;
        }

        goto LABEL_258;
      }

      if (v224 != 7 || v215 != v221)
      {
        goto LABEL_319;
      }

      v207 = *(v203 + v205 + 48);
      v208 = *(v203 + v205 + 56);
      sub_255C90E88(*(v203 + v205 + 32), v220, v222, v223, 7u);
      sub_255C90E88(v215, v214, v207, v208, 7u);
      LODWORD(v263) = sub_255C8E694(v214, v220);
      sub_255C90F54(v215, v220, v222, v223, 7u);
      v209 = v215;
      v210 = v214;
      v211 = v207;
      v212 = v208;
      v213 = 7;
      goto LABEL_257;
    }

LABEL_247:
    if (++v68 == v66)
    {
      sub_255C90F54(v2, v61, v26, v67, 1u);
      v241 = v282;
      goto LABEL_314;
    }
  }

LABEL_351:
  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  __break(1u);
}