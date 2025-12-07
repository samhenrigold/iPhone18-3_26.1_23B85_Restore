uint64_t SKStoreProductViewController.loadProduct(parameters:impression:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  sub_23B69B024();
  v3[25] = sub_23B69B014();
  v5 = sub_23B69B004();
  v3[26] = v5;
  v3[27] = v4;

  return MEMORY[0x2822009F8](sub_23B698FCC, v5, v4);
}

uint64_t sub_23B698FCC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);

  v3 = sub_23B69AF84();
  v5 = v4;
  v6 = sub_23B69AF64();
  *(v0 + 104) = MEMORY[0x277D837D0];
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  sub_23B6993B4((v0 + 80), (v0 + 144));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23B699CA0((v0 + 144), v3, v5, isUniquelyReferenced_nonNull_native);

  v9 = sub_23B69AFD4();
  *(v0 + 224) = v9;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_23B6991A0;
  v10 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176CA0, &qword_23B69B348);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23B6993C4;
  *(v0 + 104) = &block_descriptor;
  *(v0 + 112) = v10;
  [v1 loadProductWithParameters:v9 completionBlock:{v0 + 80, v2}];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23B6991A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_23B69933C;
  }

  else
  {
    v5 = sub_23B6992D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23B6992D0()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B69933C()
{
  v1 = *(v0 + 224);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

_OWORD *sub_23B6993B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23B6993C4(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176CA8, &qword_23B69B358);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t SKStoreProductViewController.loadProduct(parameters:impression:reengagementURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  sub_23B69B024();
  v4[26] = sub_23B69B014();
  v6 = sub_23B69B004();
  v4[27] = v6;
  v4[28] = v5;

  return MEMORY[0x2822009F8](sub_23B69952C, v6, v5);
}

uint64_t sub_23B69952C()
{
  v1 = v0;
  v15 = *(v0 + 200);

  v2 = sub_23B69AF84();
  v4 = v3;
  v5 = sub_23B69AF64();
  v6 = MEMORY[0x277D837D0];
  *(v0 + 104) = MEMORY[0x277D837D0];
  *(v0 + 80) = v5;
  *(v0 + 88) = v7;
  sub_23B6993B4((v1 + 80), (v1 + 144));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23B699CA0((v0 + 144), v2, v4, isUniquelyReferenced_nonNull_native);

  v9 = sub_23B69AF24();
  *(v0 + 104) = v6;
  *(v0 + 80) = v9;
  *(v0 + 88) = v10;
  sub_23B6993B4((v1 + 80), (v1 + 144));
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_23B699CA0((v0 + 144), 0xD000000000000013, 0x800000023B69B3F0, v11);
  v12 = sub_23B69AFD4();
  *(v0 + 232) = v12;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_23B69975C;
  v13 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176CA0, &qword_23B69B348);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23B6993C4;
  *(v0 + 104) = &block_descriptor_4;
  *(v0 + 112) = v13;
  [v15 loadProductWithParameters:v12 completionBlock:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23B69975C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_23B6998F8;
  }

  else
  {
    v5 = sub_23B69988C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23B69988C()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B6998F8()
{
  v1 = *(v0 + 232);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_23B699970(uint64_t a1, uint64_t a2)
{
  sub_23B69B0A4();
  sub_23B69AFF4();
  v4 = sub_23B69B0B4();

  return sub_23B699FA8(a1, a2, v4);
}

uint64_t sub_23B6999E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176CB0, &qword_23B69B360);
  v33 = v4;
  result = sub_23B69B064();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_23B6993B4(v24, v34);
      }

      else
      {
        sub_23B699E48(v24, v34);
      }

      sub_23B69B0A4();
      sub_23B69AFF4();
      result = sub_23B69B0B4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_23B6993B4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_23B699CA0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23B699970(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23B69A060();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23B6999E8(v16, a4 & 1);
    v11 = sub_23B699970(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_23B69B094();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_23B6993B4(a1, v22);
  }

  else
  {
    sub_23B699F3C(v11, a2, a3, a1, v21);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B699E48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_23B699F3C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23B6993B4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_23B699FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23B69B084())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_23B69A060()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176CB0, &qword_23B69B360);
  v2 = *v0;
  v3 = sub_23B69B054();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_23B699E48(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23B6993B4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t SKOverlayAppConfiguration.appImpression.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23B69AFC4();
  MEMORY[0x28223BE20]();
  v3 = sub_23B69AF74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B69AF84();
  v7 = sub_23B69AFE4();

  v8 = [v1 additionalValueForKey_];

  if (v8)
  {
    sub_23B69B044();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_23B69AE04(v14, &qword_27E176CB8, &qword_23B69B378);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v9 = 1;
    return (*(v4 + 56))(a1, v9, 1, v3);
  }

  sub_23B69AF54();
  (*(v4 + 32))(a1, v6, v3);
  v9 = 0;
  return (*(v4 + 56))(a1, v9, 1, v3);
}

uint64_t SKOverlayAppConfiguration.appImpression.setter(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176CC8, &qword_23B69B388);
  MEMORY[0x28223BE20]();
  v5 = v12 - v4;
  sub_23B69AD9C(a1, v12 - v4, &qword_27E176CC8, &qword_23B69B388);
  v6 = sub_23B69AF74();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_23B69AE04(v5, &qword_27E176CC8, &qword_23B69B388);
    v8 = 0;
  }

  else
  {
    v12[0] = sub_23B69AF64();
    v12[1] = v9;
    (*(v7 + 8))(v5, v6);
    v8 = sub_23B69B074();
    sub_23B69AD48(v12);
  }

  sub_23B69AF84();
  v10 = sub_23B69AFE4();

  [v2 setAdditionalValue:v8 forKey:v10];
  swift_unknownObjectRelease();

  return sub_23B69AE04(a1, &qword_27E176CC8, &qword_23B69B388);
}

void (*SKOverlayAppConfiguration.appImpression.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176CC8, &qword_23B69B388) - 8) + 64);
  if (MEMORY[0x277D84FD8])
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
  SKOverlayAppConfiguration.appImpression.getter(v4);
  return sub_23B69A808;
}

uint64_t SKOverlayAppConfiguration.adAttributionReengagementURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23B69AF94();
  v3 = sub_23B69AFE4();

  v4 = [v1 additionalValueForKey_];

  if (v4)
  {
    sub_23B69B044();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_23B69AF34();
    }
  }

  else
  {
    sub_23B69AE04(v9, &qword_27E176CB8, &qword_23B69B378);
  }

  v6 = sub_23B69AF44();
  return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
}

uint64_t sub_23B69A96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20]();
  v12 = &v14 - v11;
  sub_23B69AD9C(a1, &v14 - v11, a5, a6);
  return a7(v12);
}

uint64_t SKOverlayAppConfiguration.adAttributionReengagementURL.setter(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176CD0, &qword_23B69B390);
  MEMORY[0x28223BE20]();
  v5 = v12 - v4;
  sub_23B69AD9C(a1, v12 - v4, &qword_27E176CD0, &qword_23B69B390);
  v6 = sub_23B69AF44();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_23B69AE04(v5, &qword_27E176CD0, &qword_23B69B390);
    v8 = 0;
  }

  else
  {
    v12[0] = sub_23B69AF24();
    v12[1] = v9;
    (*(v7 + 8))(v5, v6);
    v8 = sub_23B69B074();
    sub_23B69AD48(v12);
  }

  sub_23B69AF94();
  v10 = sub_23B69AFE4();

  [v2 setAdditionalValue:v8 forKey:v10];
  swift_unknownObjectRelease();

  return sub_23B69AE04(a1, &qword_27E176CD0, &qword_23B69B390);
}

void (*SKOverlayAppConfiguration.adAttributionReengagementURL.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176CD0, &qword_23B69B390) - 8) + 64);
  if (MEMORY[0x277D84FD8])
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
  SKOverlayAppConfiguration.adAttributionReengagementURL.getter(v4);
  return sub_23B69AC84;
}

void sub_23B69ACAC(uint64_t a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a2)
  {
    sub_23B69AD9C(v7, v6, a4, a5);
    a3(v6);
    sub_23B69AE04(v7, a4, a5);
  }

  else
  {
    a3(v7);
  }

  free(v7);

  free(v6);
}

uint64_t sub_23B69AD9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B69AE04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}