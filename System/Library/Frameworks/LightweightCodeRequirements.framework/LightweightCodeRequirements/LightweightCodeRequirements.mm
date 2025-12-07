void sub_238AEA078(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x79654B7961727261;
  if (v2 != 1)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7955819;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_238AEA0CC()
{
  v1 = 0x79654B7961727261;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_238AEA250()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_238AEA288()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238AEA2C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_238AEA520(uint64_t a1)
{
  sub_238B1BF64();
}

void sub_238AEA588(uint64_t *a1@<X8>)
{
  v2 = 7955819;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_238AEA5BC()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

BOOL sub_238AEA668(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_238AEA698@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_238AEA6C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_238AEA79C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_238AEA898()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_238AFFCFC(*(v0 + 24), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238AEA8E8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238AEA928()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for ConstraintCategory(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConstraintCategory(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_238AEAD3C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_238AEAD74()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238AEAE90(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t *), uint64_t *a4, uint64_t *a5)
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v18 = MEMORY[0x277D84F90];
    sub_238AF7CF4(0, v5, 0);
    v6 = v18;
    v11 = a2 + 32;
    do
    {
      sub_238AFD5B4(v11, v16);
      a3(v16, &v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A08, &qword_238B1CFC8);
      swift_dynamicCast();
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_238AF7CF4((v12 > 1), v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      sub_238AEA2C0(&v17, v6 + 40 * v13 + 32);
      v11 += 40;
      --v5;
    }

    while (v5);
  }

  return v6;
}

void *sub_238AEAFD0(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_238B1C0D4())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v21 = MEMORY[0x277D84F90];
    result = sub_238AF7D34(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v7 = v21;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23EE71840](v9, a3);
      }

      else
      {
        if (v9 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(a3 + 8 * v9 + 32);
      }

      v19 = v11;
      a1(&v20, &v19, &v18);
      if (v4)
      {

        return v7;
      }

      v12 = i;

      v13 = v20;
      v21 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_238AF7D34((v14 > 1), v15 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v15 + 1;
      *(v7 + 8 * v15 + 32) = v13;
      ++v9;
      i = v12;
      v16 = v10 == v12;
      v4 = 0;
      if (v16)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_238AEB180(void (*a1)(uint64_t *__return_ptr, __int16 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v19 = MEMORY[0x277D84F90];
    sub_238AF7D34(0, v5, 0);
    v6 = v19;
    for (i = (a3 + 32); ; i += 8)
    {
      v10 = *(i + 1);
      v16 = *i;
      v17 = v10;

      a1(&v18, &v16, &v15);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v18;
      v19 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_238AF7D34((v12 > 1), v13 + 1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_238AEB2B8(void *a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v32 = a1;
  v11 = a4;
  sub_238AFD5B4(a4, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A08, &qword_238B1CFC8);
  type metadata accessor for EntitlementsQuery();
  if (swift_dynamicCast())
  {

    MEMORY[0x23EE71760](v14);
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_3:
      sub_238B1C004();
    }

LABEL_27:
    sub_238B1BFE4();
    goto LABEL_3;
  }

  sub_238AFD5B4(v11, v31);
  if ((swift_dynamicCast() & 1) != 0 && v30)
  {
    v16 = sub_238AEAE90(v29, v30, sub_238AFE0E4, &qword_27DF51A10, &qword_238B1CFD0);
    v17 = v16;
    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = v16 + 32;
      while (v19 < *(v17 + 16))
      {
        sub_238AFD5B4(v20, v31);
        sub_238AEB2B8(v32, a2, a3, v31, a5, a6);
        if (v6)
        {
          __swift_destroy_boxed_opaque_existential_1(v31);
        }

        ++v19;
        __swift_destroy_boxed_opaque_existential_1(v31);
        v20 += 40;
        if (v18 == v19)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_11:
  }

  sub_238AFD5B4(v11, v31);
  if ((swift_dynamicCast() & 1) == 0 || (v8 = v30) == 0)
  {
    v22 = v11[3];
    v23 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v22);
    result = (*(v23 + 32))(v31, v22, v23);
    if (v6)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
    swift_dynamicCast();
    a2 = v29;
    if (v29[2] == 1)
    {
      v24 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31[0] = *v24;
      result = sub_238AF8160(v29, sub_238AF8114, 0, isUniquelyReferenced_nonNull_native, v31);
      *v24 = v31[0];
      return result;
    }

    __break(1u);
LABEL_29:
    result = sub_238B146A0(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
    goto LABEL_20;
  }

  LOWORD(v11) = v29;
  v21 = sub_238AEAE90(v29, v30, sub_238AFE0E4, &qword_27DF51A10, &qword_238B1CFD0);
  if (*(v21 + 16) == 1)
  {
    sub_238AFD5B4(v21 + 32, v31);

    sub_238AEB2B8(v32, a2, a3, v31, a5, a6);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v7 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  v27 = *(v7 + 16);
  v26 = *(v7 + 24);
  if (v27 >= v26 >> 1)
  {
    result = sub_238B146A0((v26 > 1), v27 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v27 + 1;
  v28 = v7 + 16 * v27;
  *(v28 + 32) = v11;
  *(v28 + 40) = v8;
  *a2 = v7;
  return result;
}

uint64_t sub_238AEB6F0(void *a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v32 = a1;
  v11 = a4;
  sub_238AFD5B4(a4, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A08, &qword_238B1CFC8);
  type metadata accessor for EntitlementsQuery();
  if (swift_dynamicCast())
  {

    MEMORY[0x23EE71760](v14);
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_3:
      sub_238B1C004();
    }

LABEL_27:
    sub_238B1BFE4();
    goto LABEL_3;
  }

  sub_238AFD5B4(v11, v31);
  if ((swift_dynamicCast() & 1) != 0 && v30)
  {
    v16 = sub_238AEAE90(v29, v30, sub_238AFE0E4, &qword_27DF51A10, &qword_238B1CFD0);
    v17 = v16;
    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = v16 + 32;
      while (v19 < *(v17 + 16))
      {
        sub_238AFD5B4(v20, v31);
        sub_238AEB6F0(v32, a2, a3, v31, a5, a6);
        if (v6)
        {
          __swift_destroy_boxed_opaque_existential_1(v31);
        }

        ++v19;
        __swift_destroy_boxed_opaque_existential_1(v31);
        v20 += 40;
        if (v18 == v19)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_11:
  }

  sub_238AFD5B4(v11, v31);
  if ((swift_dynamicCast() & 1) == 0 || (v8 = v30) == 0)
  {
    v22 = v11[3];
    v23 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v22);
    result = (*(v23 + 32))(v31, v22, v23);
    if (v6)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
    swift_dynamicCast();
    a2 = v29;
    if (v29[2] == 1)
    {
      v24 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31[0] = *v24;
      result = sub_238AF8160(v29, sub_238AF8114, 0, isUniquelyReferenced_nonNull_native, v31);
      *v24 = v31[0];
      return result;
    }

    __break(1u);
LABEL_29:
    result = sub_238B14684(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
    goto LABEL_20;
  }

  LOWORD(v11) = v29;
  v21 = sub_238AEAE90(v29, v30, sub_238AFE0E4, &qword_27DF51A10, &qword_238B1CFD0);
  if (*(v21 + 16) == 1)
  {
    sub_238AFD5B4(v21 + 32, v31);

    sub_238AEB6F0(v32, a2, a3, v31, a5, a6);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v7 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  v27 = *(v7 + 16);
  v26 = *(v7 + 24);
  if (v27 >= v26 >> 1)
  {
    result = sub_238B14684((v26 > 1), v27 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v27 + 1;
  v28 = v7 + 16 * v27;
  *(v28 + 32) = v11;
  *(v28 + 40) = v8;
  *a2 = v7;
  return result;
}

uint64_t sub_238AEBBD8(void *a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void *, uint64_t *, void *, void *, uint64_t, uint64_t), uint64_t (*a10)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v13 = a4;
  v35 = a2;
  sub_238AFD5B4(a4, v34);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A08, &qword_238B1CFC8);
  type metadata accessor for EntitlementsQuery();
  if (swift_dynamicCast())
  {

    MEMORY[0x23EE71760](v16);
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_3:
      sub_238B1C004();
    }

LABEL_28:
    sub_238B1BFE4();
    goto LABEL_3;
  }

  sub_238AFD5B4(v13, v34);
  if ((swift_dynamicCast() & 1) != 0 && v33)
  {
    v18 = sub_238AEAE90(v32, v33, sub_238AFE0E4, &qword_27DF51A28, &qword_238B1E080);
    v19 = v18;
    v20 = *(v18 + 16);
    if (v20)
    {
      v21 = 0;
      v22 = v18 + 32;
      while (v21 < *(v19 + 16))
      {
        sub_238AFD5B4(v22, v34);
        a9(a1, v35, a3, v34, a5, a6);
        if (v10)
        {
          __swift_destroy_boxed_opaque_existential_1(v34);
          goto LABEL_24;
        }

        ++v21;
        __swift_destroy_boxed_opaque_existential_1(v34);
        v22 += 40;
        if (v20 == v21)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_24:
  }

  sub_238AFD5B4(v13, v34);
  if ((swift_dynamicCast() & 1) == 0 || (v15 = v33) == 0)
  {
    v24 = v13[3];
    v25 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v24);
    result = (*(v25 + 32))(v34, v24, v25);
    if (v10)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
    swift_dynamicCast();
    v26 = v32;
    if (*(v32 + 16) == 1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = *a1;
      result = sub_238AF8160(v32, sub_238AF8114, 0, isUniquelyReferenced_nonNull_native, v34);
      *a1 = v34[0];
      return result;
    }

    __break(1u);
LABEL_30:
    result = v26(0, *(v24 + 16) + 1, 1, v24);
    v24 = result;
    goto LABEL_20;
  }

  LOWORD(v13) = v32;
  v23 = sub_238AEAE90(v32, v33, sub_238AFE0E4, &qword_27DF51A28, &qword_238B1E080);
  if (*(v23 + 16) == 1)
  {
    sub_238AFD5B4(v23 + 32, v34);

    a9(a1, v35, a3, v34, a5, a6);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v26 = a10;

  v24 = *v35;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  v29 = *(v24 + 16);
  v28 = *(v24 + 24);
  if (v29 >= v28 >> 1)
  {
    result = v26(v28 > 1, v29 + 1, 1, v24);
    v24 = result;
  }

  *(v24 + 16) = v29 + 1;
  v30 = v24 + 16 * v29;
  *(v30 + 32) = v13;
  *(v30 + 40) = v15;
  *v35 = v24;
  return result;
}

uint64_t sub_238AEC0D8(void *a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void *, uint64_t *, void *, void *, uint64_t, uint64_t), uint64_t (*a10)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v13 = a4;
  v35 = a2;
  sub_238AFD5B4(a4, v34);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A08, &qword_238B1CFC8);
  type metadata accessor for EntitlementsQuery();
  if (swift_dynamicCast())
  {

    MEMORY[0x23EE71760](v16);
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_3:
      sub_238B1C004();
    }

LABEL_28:
    sub_238B1BFE4();
    goto LABEL_3;
  }

  sub_238AFD5B4(v13, v34);
  if ((swift_dynamicCast() & 1) != 0 && v33)
  {
    v18 = sub_238AEAE90(v32, v33, sub_238AFE0E4, &qword_27DF51A20, &unk_238B1CFE0);
    v19 = v18;
    v20 = *(v18 + 16);
    if (v20)
    {
      v21 = 0;
      v22 = v18 + 32;
      while (v21 < *(v19 + 16))
      {
        sub_238AFD5B4(v22, v34);
        a9(a1, v35, a3, v34, a5, a6);
        if (v10)
        {
          __swift_destroy_boxed_opaque_existential_1(v34);
          goto LABEL_24;
        }

        ++v21;
        __swift_destroy_boxed_opaque_existential_1(v34);
        v22 += 40;
        if (v20 == v21)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_24:
  }

  sub_238AFD5B4(v13, v34);
  if ((swift_dynamicCast() & 1) == 0 || (v15 = v33) == 0)
  {
    v24 = v13[3];
    v25 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v24);
    result = (*(v25 + 32))(v34, v24, v25);
    if (v10)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
    swift_dynamicCast();
    v26 = v32;
    if (*(v32 + 16) == 1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = *a1;
      result = sub_238AF8160(v32, sub_238AF8114, 0, isUniquelyReferenced_nonNull_native, v34);
      *a1 = v34[0];
      return result;
    }

    __break(1u);
LABEL_30:
    result = v26(0, *(v24 + 16) + 1, 1, v24);
    v24 = result;
    goto LABEL_20;
  }

  LOWORD(v13) = v32;
  v23 = sub_238AEAE90(v32, v33, sub_238AFE0E4, &qword_27DF51A20, &unk_238B1CFE0);
  if (*(v23 + 16) == 1)
  {
    sub_238AFD5B4(v23 + 32, v34);

    a9(a1, v35, a3, v34, a5, a6);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v26 = a10;

  v24 = *v35;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  v29 = *(v24 + 16);
  v28 = *(v24 + 24);
  if (v29 >= v28 >> 1)
  {
    result = v26(v28 > 1, v29 + 1, 1, v24);
    v24 = result;
  }

  *(v24 + 16) = v29 + 1;
  v30 = v24 + 16 * v29;
  *(v30 + 32) = v13;
  *(v30 + 40) = v15;
  *v35 = v24;
  return result;
}

unint64_t sub_238AEC528(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = result;
  v2 = sub_238B1C0D4();
  result = v1;
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    return MEMORY[0x23EE71840](0, result);
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_238AEC5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_238B1C064();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    *a2 = sub_238AF8CA0(v6, result, *(a1 + 36), 0, a1);
    *(a2 + 8) = v5;
    return sub_238AEA2C0(v6, a2 + 16);
  }

  return result;
}

void *sub_238AEC654(uint64_t a1)
{
  v2 = sub_238B1C064();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_238AF8D30(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_238AEC77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a2;
  v89 = a4;
  v101 = a2;
  v102 = a3;
  v8 = MEMORY[0x277D84F90];
  v103 = sub_238AF8E84(MEMORY[0x277D84F90]);
  v99 = v8;
  v100 = v8;
  v10 = (a1 + 32);
  v11 = *(a1 + 16) + 1;
  while (--v11)
  {
    v12 = v10 + 5;
    sub_238AEB6F0(&v103, &v100, &v99, v10, v6, a3);
    v10 = v12;
    if (v4)
    {
      v90 = v4;

      goto LABEL_9;
    }
  }

  v13 = v99;
  if (v99 >> 62)
  {
    v14 = sub_238B1C0D4();
    if (v14 > 1)
    {
LABEL_7:
      MEMORY[0x28223BE20](v14, v9);
      v86 = &v101;
      v15 = sub_238AEAFD0(sub_238AFE048, v85, v13);

      if (v4)
      {
        v90 = v4;
LABEL_9:
      }

      v13 = 0;
      *&v92 = v15;
      v17 = v103;
      if (*(v103 + 16))
      {
        v18 = BYTE1(v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519A8, &qword_238B1CF68);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_238B1C840;
        v19 = sub_238B1A5FC(v18);
        *(v6 + 56) = MEMORY[0x277D837D0];
        *(v6 + 64) = &off_284B69950;
        *(v6 + 32) = v19;
        *(v6 + 40) = v20;
        *(v6 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
        *(v6 + 104) = &off_284B699F8;
        *(v6 + 72) = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_74;
        }

        goto LABEL_13;
      }

      v25 = 0;
LABEL_17:
      v26 = v100;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v22);
      v86 = &v96;
      v27 = sub_238AEB180(sub_238AFE030, v85, v26);
      v90 = v25;
      if (v25)
      {
        goto LABEL_18;
      }

LABEL_66:
      v82 = v27;

      sub_238AEDF3C(v82);
      v6 = v92;
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51988, &qword_238B1CF48);
      v83 = &off_284B69A00;
LABEL_69:
      v84 = v89;
      v89[3] = result;
      v84[4] = v83;
      *v84 = v6;
      return result;
    }

    v14 = sub_238B1C0D4();
  }

  else
  {
    v14 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 > 1)
    {
      goto LABEL_7;
    }
  }

  if (v14 == 1)
  {
    v90 = v4;
    v28 = sub_238AEC528(v13);
    if (!v28)
    {
      goto LABEL_77;
    }

    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519B0, &unk_238B1CF70);
    inited = swift_initStackObject();
    v87 = xmmword_238B1C830;
    *(inited + 16) = xmmword_238B1C830;
    *(inited + 32) = sub_238B1A5FC(*(v29 + 16));
    v88 = inited + 32;
    *(inited + 40) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519B8, &unk_238B21CC0);
    v15 = swift_initStackObject();
    *(v15 + 16) = v87;
    *(v15 + 32) = sub_238B1A5FC(*(v29 + 17));
    *(v15 + 40) = v32;
    swift_beginAccess();
    *(v15 + 48) = *(v29 + 24);

    v33 = sub_238AF9824(v15, &qword_27DF51A00, &qword_238B1CFC0);
    swift_setDeallocating();
    sub_238AFD7D8(v15 + 32, &qword_27DF519C0, &unk_238B1CF80);
    *(inited + 48) = v33;
    v34 = sub_238AF9824(inited, &qword_27DF519F8, &qword_238B1CFB8);
    swift_setDeallocating();
    sub_238AFD7D8(v88, &qword_27DF519C8, &qword_238B21CD0);

    *&v96 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519D0, &qword_238B1CF90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
    swift_dynamicCast();
    if (*(v92 + 16) != 1)
    {
      goto LABEL_73;
    }

    v35 = v103;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *&v96 = v35;
    v4 = v90;
    sub_238AF8160(v92, sub_238AF8114, 0, v36, &v96);
    if (v90)
    {
    }

    v103 = v96;
  }

  v37 = v100;
  v38 = *(v100 + 16);
  if (v38 > 1)
  {

    *&v92 = v8;
    v39 = v103;
    if (*(v103 + 16))
    {
      v40 = BYTE1(v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519A8, &qword_238B1CF68);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_238B1C840;
      v42 = sub_238B1A5FC(v40);
      *(v41 + 56) = MEMORY[0x277D837D0];
      *(v41 + 64) = &off_284B69950;
      *(v41 + 32) = v42;
      *(v41 + 40) = v43;
      *(v41 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
      *(v41 + 104) = &off_284B699F8;
      *(v41 + 72) = v39;
      v44 = sub_238B14660(0, 1, 1, MEMORY[0x277D84F90]);
      v46 = v44;
      v48 = v44[2];
      v47 = v44[3];
      if (v48 >= v47 >> 1)
      {
        v44 = sub_238B14660((v47 > 1), v48 + 1, 1, v44);
        v46 = v44;
      }

      v46[2] = v48 + 1;
      v46[v48 + 4] = v41;
      *&v92 = v46;
    }

    else
    {
    }

    MEMORY[0x28223BE20](v44, v45);
    v86 = &v96;
    v27 = sub_238AEB180(sub_238AFD508, v85, v37);
    v90 = v4;
    if (v4)
    {
LABEL_18:
    }

    goto LABEL_66;
  }

  v90 = v4;
  if (v38 != 1)
  {

    v6 = v103;
LABEL_68:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
    v83 = &off_284B699F8;
    goto LABEL_69;
  }

  v49 = *(v100 + 40);
  v50 = *(v100 + 32);

  sub_238AEE0E0(v50, v49, sub_238AFE0E4, &qword_27DF51A10, &qword_238B1CFD0, sub_238AEC6D4, &v96);
  if (v90)
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  swift_dynamicCast();
  if (*(v92 + 16) == 1)
  {
    v51 = 0;
    *&v87 = v92;
    v53 = v92 + 64;
    v52 = *(v92 + 64);
    v54 = 1 << *(v92 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v13 = v55 & v52;
    v6 = v103;
    v56 = (v54 + 63) >> 6;
    v88 = v92 + 64;
    if ((v55 & v52) == 0)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v15 = v51;
LABEL_50:
      v62 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v63 = v62 | (v15 << 6);
      v64 = (*(v87 + 48) + 16 * v63);
      v66 = *v64;
      v65 = v64[1];
      sub_238AFD5B4(*(v87 + 56) + 40 * v63, v91);
      *&v92 = v66;
      *(&v92 + 1) = v65;
      sub_238AEA2C0(v91, &v93);

      v61 = v15;
LABEL_51:
      v96 = v92;
      v97[0] = v93;
      v97[1] = v94;
      v98 = v95;
      v15 = *(&v92 + 1);
      if (!*(&v92 + 1))
      {

        goto LABEL_68;
      }

      v67 = v96;
      sub_238AEA2C0(v97, &v92);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      *&v91[0] = v6;
      v69 = sub_238AF8850(v67, v15);
      v71 = *(v6 + 16);
      v72 = (v70 & 1) == 0;
      v73 = __OFADD__(v71, v72);
      v74 = v71 + v72;
      if (v73)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        isUniquelyReferenced_nonNull_native = sub_238B14660(0, *(v15 + 16) + 1, 1, v15);
        v15 = isUniquelyReferenced_nonNull_native;
LABEL_13:
        v24 = *(v15 + 16);
        v23 = *(v15 + 24);
        if (v24 >= v23 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_238B14660((v23 > 1), v24 + 1, 1, v15);
          v25 = v13;
          v15 = isUniquelyReferenced_nonNull_native;
        }

        else
        {
          v25 = v13;
        }

        *(v15 + 16) = v24 + 1;
        *(v15 + 8 * v24 + 32) = v6;
        *&v92 = v15;
        goto LABEL_17;
      }

      v75 = v70;
      if (*(v6 + 24) >= v74)
      {
        if (v68)
        {
          goto LABEL_57;
        }

        v80 = v61;
        v81 = v69;
        sub_238AF88C8();
        v69 = v81;
        v61 = v80;
        if ((v75 & 1) == 0)
        {
          goto LABEL_58;
        }

LABEL_41:
        v57 = v61;
        v58 = v69;

        v6 = *&v91[0];
        v59 = (*(*&v91[0] + 56) + 40 * v58);
        __swift_destroy_boxed_opaque_existential_1(v59);
        sub_238AEA2C0(&v92, v59);
        v51 = v57;
        v53 = v88;
        if (!v13)
        {
          goto LABEL_43;
        }
      }

      else
      {
        sub_238AF858C(v74, v68);
        v69 = sub_238AF8850(v67, v15);
        if ((v75 & 1) != (v76 & 1))
        {
          goto LABEL_78;
        }

LABEL_57:
        if (v75)
        {
          goto LABEL_41;
        }

LABEL_58:
        v6 = *&v91[0];
        *(*&v91[0] + 8 * (v69 >> 6) + 64) |= 1 << v69;
        v77 = (*(v6 + 48) + 16 * v69);
        *v77 = v67;
        v77[1] = v15;
        sub_238AEA2C0(&v92, *(v6 + 56) + 40 * v69);
        v78 = *(v6 + 16);
        v73 = __OFADD__(v78, 1);
        v79 = v78 + 1;
        if (v73)
        {
          goto LABEL_72;
        }

        *(v6 + 16) = v79;
        v51 = v61;
        v53 = v88;
        if (!v13)
        {
LABEL_43:
          if (v56 <= v51 + 1)
          {
            v60 = v51 + 1;
          }

          else
          {
            v60 = v56;
          }

          v61 = v60 - 1;
          while (1)
          {
            v15 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              break;
            }

            if (v15 >= v56)
            {
              v13 = 0;
              v95 = 0;
              v93 = 0u;
              v94 = 0u;
              v92 = 0u;
              goto LABEL_51;
            }

            v13 = *(v53 + 8 * v15);
            ++v51;
            if (v13)
            {
              goto LABEL_50;
            }
          }

          __break(1u);
          goto LABEL_71;
        }
      }
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_238B1C304();
  __break(1u);
  return result;
}

uint64_t sub_238AED4AC@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *, uint64_t *, unint64_t *)@<X3>, unint64_t inited@<X4>, void (*a6)(_BYTE *, uint64_t *)@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>, void (*a10)(void *__return_ptr, uint64_t, uint64_t, uint64_t), void (*a11)(uint64_t *__return_ptr, __int16 *, uint64_t *), uint64_t a12)
{
  v93 = a7;
  v94 = a8;
  v92 = a6;
  BYTE1(v15) = HIBYTE(a2);
  v96 = a9;
  v95 = a11;
  v91 = a10;
  v108 = a2;
  v109 = a3;
  v18 = MEMORY[0x277D84F90];
  v19 = sub_238AF8E84(MEMORY[0x277D84F90]);
  v110 = v19;
  v106 = v18;
  v107 = v18;
  v21 = a1 + 32;
  v22 = *(a1 + 16) + 1;
  while (--v22)
  {
    v23 = v21 + 40;
    v19 = a4(&v110, &v107, &v106);
    v21 = v23;
    if (v12)
    {
      v97 = v12;

      goto LABEL_9;
    }
  }

  v24 = v106;
  if (v106 >> 62)
  {
    goto LABEL_71;
  }

  v25 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25 > 1)
  {
LABEL_7:
    MEMORY[0x28223BE20](v19, v20);
    v88 = &v108;
    inited = sub_238AEAFD0(inited, v87, v24);

    if (v12)
    {
      v97 = v12;
LABEL_9:
    }

    v22 = 0;
    *&v99 = inited;
    v34 = v110;
    if (!*(v110 + 16))
    {

      v41 = 0;
LABEL_61:
      v79 = v107;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v38);
      v88 = &v103;
      v80 = sub_238AEB180(a12, v87, v79);
      v97 = v41;
      if (v41)
      {
        goto LABEL_9;
      }

      v81 = v80;

      v82 = v81;
LABEL_66:
      sub_238AEDF3C(v82);
      a12 = v99;
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51988, &qword_238B1CF48);
      v85 = &off_284B69A00;
      goto LABEL_69;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519A8, &qword_238B1CF68);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_238B1C840;
    v35 = sub_238B1A5FC(SBYTE1(v15));
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = &off_284B69950;
    *(v24 + 32) = v35;
    *(v24 + 40) = v36;
    *(v24 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
    *(v24 + 104) = &off_284B699F8;
    *(v24 + 72) = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_20:
      v40 = *(inited + 16);
      v39 = *(inited + 24);
      if (v40 >= v39 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_238B14660((v39 > 1), v40 + 1, 1, inited);
        v41 = v22;
        inited = isUniquelyReferenced_nonNull_native;
      }

      else
      {
        v41 = v22;
      }

      *(inited + 16) = v40 + 1;
      *(inited + 8 * v40 + 32) = v24;
      *&v99 = inited;
      goto LABEL_61;
    }

LABEL_81:
    isUniquelyReferenced_nonNull_native = sub_238B14660(0, *(inited + 16) + 1, 1, inited);
    inited = isUniquelyReferenced_nonNull_native;
    goto LABEL_20;
  }

  if (v25 != 1)
  {
    goto LABEL_24;
  }

LABEL_12:
  v97 = v12;
  if ((v24 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x23EE71840](0, v24);
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_80;
    }

    v27 = *(v24 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519B0, &unk_238B1CF70);
  inited = swift_initStackObject();
  v89 = xmmword_238B1C830;
  *(inited + 16) = xmmword_238B1C830;
  *(inited + 32) = sub_238B1A5FC(*(v27 + 16));
  v90 = inited + 32;
  *(inited + 40) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519B8, &unk_238B21CC0);
  v22 = swift_initStackObject();
  *(v22 + 16) = v89;
  *(v22 + 32) = sub_238B1A5FC(*(v27 + 17));
  *(v22 + 40) = v29;
  swift_beginAccess();
  *(v22 + 48) = *(v27 + 24);

  v30 = sub_238AF9824(v22, &qword_27DF51A00, &qword_238B1CFC0);
  swift_setDeallocating();
  sub_238AFD7D8(v22 + 32, &qword_27DF519C0, &unk_238B1CF80);
  *(inited + 48) = v30;
  v31 = sub_238AF9824(inited, &qword_27DF519F8, &qword_238B1CFB8);
  swift_setDeallocating();
  sub_238AFD7D8(v90, &qword_27DF519C8, &qword_238B21CD0);

  *&v103 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519D0, &qword_238B1CF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  swift_dynamicCast();
  a12 = v99;
  if (*(v99 + 16) != 1)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v32 = v110;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *&v103 = v32;
  v12 = v97;
  sub_238AF8160(a12, sub_238AF8114, 0, v33, &v103);
  if (v97)
  {
  }

  v110 = v103;
  while (1)
  {
LABEL_24:
    v42 = v107;
    v43 = *(v107 + 16);
    if (v43 > 1)
    {

      *&v99 = v18;
      v44 = v110;
      if (*(v110 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519A8, &qword_238B1CF68);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_238B1C840;
        v46 = sub_238B1A5FC(SBYTE1(v15));
        *(v45 + 56) = MEMORY[0x277D837D0];
        *(v45 + 64) = &off_284B69950;
        *(v45 + 32) = v46;
        *(v45 + 40) = v47;
        *(v45 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
        *(v45 + 104) = &off_284B699F8;
        *(v45 + 72) = v44;
        v48 = sub_238B14660(0, 1, 1, MEMORY[0x277D84F90]);
        v50 = v48;
        v52 = v48[2];
        v51 = v48[3];
        if (v52 >= v51 >> 1)
        {
          v48 = sub_238B14660((v51 > 1), v52 + 1, 1, v48);
          v50 = v48;
        }

        v50[2] = v52 + 1;
        v50[v52 + 4] = v45;
        *&v99 = v50;
      }

      else
      {
      }

      MEMORY[0x28223BE20](v48, v49);
      v88 = &v103;
      v83 = sub_238AEB180(v95, v87, v42);
      v97 = v12;
      if (v12)
      {
        goto LABEL_9;
      }

      v84 = v83;

      v82 = v84;
      goto LABEL_66;
    }

    v97 = v12;
    if (v43 != 1)
    {

      a12 = v110;
      goto LABEL_68;
    }

    inited = *(v107 + 40);
    v53 = *(v107 + 32);

    v12 = v97;
    sub_238AEE0E0(v53, inited, v92, v93, v94, v91, &v103);
    if (v97)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
    swift_dynamicCast();
    if (*(v99 + 16) != 1)
    {
      break;
    }

    v54 = 0;
    v94 = v99;
    v55 = v99 + 64;
    v56 = 1 << *(v99 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v15 = v57 & *(v99 + 64);
    a12 = v110;
    v24 = (v56 + 63) >> 6;
    if (v15)
    {
      while (1)
      {
        v59 = v54;
LABEL_46:
        v62 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v63 = v62 | (v59 << 6);
        v64 = (v94[6] + 16 * v63);
        v22 = *v64;
        v65 = v64[1];
        sub_238AFD5B4(v94[7] + 40 * v63, v98);
        *&v99 = v22;
        *(&v99 + 1) = v65;
        sub_238AEA2C0(v98, &v100);

        v61 = v59;
LABEL_47:
        v103 = v99;
        v104[0] = v100;
        v104[1] = v101;
        v105 = v102;
        inited = *(&v99 + 1);
        if (!*(&v99 + 1))
        {

LABEL_68:
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
          v85 = &off_284B699F8;
LABEL_69:
          v86 = v96;
          v96[3] = result;
          v86[4] = v85;
          *v86 = a12;
          return result;
        }

        v18 = v55;
        v95 = v61;
        v66 = v103;
        sub_238AEA2C0(v104, &v99);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *&v98[0] = a12;
        v68 = sub_238AF8850(v66, inited);
        v70 = *(a12 + 16);
        v71 = (v69 & 1) == 0;
        v72 = __OFADD__(v70, v71);
        v73 = v70 + v71;
        if (v72)
        {
          goto LABEL_75;
        }

        v22 = v69;
        if (*(a12 + 24) >= v73)
        {
          if (v67)
          {
            goto LABEL_53;
          }

          v78 = v68;
          sub_238AF88C8();
          v68 = v78;
          v55 = v18;
          if ((v22 & 1) == 0)
          {
            goto LABEL_54;
          }

LABEL_37:
          v58 = v68;

          a12 = *&v98[0];
          inited = *(*&v98[0] + 56) + 40 * v58;
          __swift_destroy_boxed_opaque_existential_1(inited);
          sub_238AEA2C0(&v99, inited);
          v54 = v95;
          if (!v15)
          {
            break;
          }
        }

        else
        {
          sub_238AF858C(v73, v67);
          v68 = sub_238AF8850(v66, inited);
          if ((v22 & 1) != (v74 & 1))
          {
            goto LABEL_84;
          }

LABEL_53:
          v55 = v18;
          if (v22)
          {
            goto LABEL_37;
          }

LABEL_54:
          a12 = *&v98[0];
          *(*&v98[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
          v75 = (*(a12 + 48) + 16 * v68);
          *v75 = v66;
          v75[1] = inited;
          sub_238AEA2C0(&v99, *(a12 + 56) + 40 * v68);
          v76 = *(a12 + 16);
          v72 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v72)
          {
            goto LABEL_76;
          }

          *(a12 + 16) = v77;
          v54 = v95;
          if (!v15)
          {
            break;
          }
        }
      }
    }

    if (v24 <= v54 + 1)
    {
      v60 = v54 + 1;
    }

    else
    {
      v60 = v24;
    }

    v61 = (v60 - 1);
    while (1)
    {
      v59 = (v54 + 1);
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v59 >= v24)
      {
        v15 = 0;
        v102 = 0;
        v100 = 0u;
        v101 = 0u;
        v99 = 0u;
        goto LABEL_47;
      }

      v15 = *(v55 + 8 * v59);
      v54 = (v54 + 1);
      if (v15)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_71:
    v22 = v12;
    v19 = sub_238B1C0D4();
    if (v19 > 1)
    {
      goto LABEL_7;
    }

    if (sub_238B1C0D4() == 1)
    {
      if (sub_238B1C0D4())
      {
        goto LABEL_12;
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
    }

    v12 = v22;
  }

  __break(1u);
LABEL_84:
  result = sub_238B1C304();
  __break(1u);
  return result;
}

void *sub_238AEDF3C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_238B14660(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519E0, &qword_238B1CFA0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_238AEE0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *, uint64_t *)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void (*a6)(void *__return_ptr, uint64_t, uint64_t, uint64_t)@<X5>, unint64_t *a7@<X8>)
{
  v9 = a1;
  sub_238AEAE90(a1, a2, a3, a4, a5);
  (a6)(v17);
  if (v7)
  {
  }

  sub_238AFD5B4(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  if (swift_dynamicCast())
  {
    LOBYTE(v9) = HIBYTE(v9);
  }

  else
  {
    sub_238AFD5B4(v17, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51988, &qword_238B1CF48);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51990, &qword_238B1CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238B1C830;
  *(inited + 32) = sub_238B1A5FC(v9);
  *(inited + 40) = v14;
  sub_238AFD5B4(v17, inited + 48);
  v15 = sub_238AF8E84(inited);
  swift_setDeallocating();
  sub_238AFD7D8(inited + 32, &qword_27DF51998, &qword_238B1CF58);
  a7[3] = v12;
  a7[4] = &off_284B699F8;
  *a7 = v15;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

_OWORD *sub_238AEE400@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_238AFA1A0();
  sub_238B1C264();
  if (v2)
  {
    MEMORY[0x23EE71E20](v2);
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    sub_238AFD7D8(&v7, &qword_27DF51648, &qword_238B1CE60);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_238AFA1F4();
    sub_238B1C264();
    v10 = v7;
    v11 = v8;
    v12 = v9;
    a2[3] = &type metadata for CodeDirectoryHash;
    a2[4] = sub_238AFAC20();
  }

  else
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    a2[3] = &type metadata for AppleInternal;
    a2[4] = sub_238AFAC74();
  }

  result = swift_allocObject();
  *a2 = result;
  v6 = v11;
  result[1] = v10;
  result[2] = v6;
  result[3] = v12;
  return result;
}

_OWORD *sub_238AEF0A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_238AFA1A0();
  sub_238B1C264();
  if (v2)
  {
    MEMORY[0x23EE71E20](v2);
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    sub_238AFD7D8(&v7, &qword_27DF51648, &qword_238B1CE60);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_238AFA1F4();
    sub_238B1C264();
    v10 = v7;
    v11 = v8;
    v12 = v9;
    a2[3] = &type metadata for CodeDirectoryHash;
    a2[4] = sub_238AFC288();
  }

  else
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    a2[3] = &type metadata for AppleInternal;
    a2[4] = sub_238AFC2DC();
  }

  result = swift_allocObject();
  *a2 = result;
  v6 = v11;
  result[1] = v10;
  result[2] = v6;
  result[3] = v12;
  return result;
}

_OWORD *sub_238AEFD48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_238AFA1A0();
  sub_238B1C264();
  if (v2)
  {
    MEMORY[0x23EE71E20](v2);
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    sub_238AFD7D8(&v7, &qword_27DF51648, &qword_238B1CE60);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_238AFA1F4();
    sub_238B1C264();
    v10 = v7;
    v11 = v8;
    v12 = v9;
    a2[3] = &type metadata for CodeDirectoryHash;
    a2[4] = sub_238AFCEA8();
  }

  else
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    a2[3] = &type metadata for AppleInternal;
    a2[4] = sub_238AFCEFC();
  }

  result = swift_allocObject();
  *a2 = result;
  v6 = v11;
  result[1] = v10;
  result[2] = v6;
  result[3] = v12;
  return result;
}

void sub_238AF0950(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v55 = *(a2 + 16);
  if (!v55)
  {

    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v54 = a2;
  while (v4 < *(v3 + 16))
  {
    sub_238AFD5B4(v5, v66);
    sub_238AFD5B4(v66, &v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_238AF0950(v18, v59);
      if (v2)
      {
        goto LABEL_28;
      }

      v21 = v19;
      v22 = v20;
      v23 = v19 >> 8;
      v64 = &type metadata for ProcessConstraintConjunction;
      v24 = sub_238AF6E18();
      LOBYTE(v62) = v21;
      BYTE1(v62) = v23;
      v65 = v24;
      v63 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
        v67 = v6;
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_238B14838((v26 > 1), v27 + 1, 1, v6);
        v67 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v66);
      v8 = v64;
      v7 = v65;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(&v62, v64);
      MEMORY[0x28223BE20](v9, v9);
      v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      v13 = v27;
      v14 = v11;
      v15 = v8;
      v16 = v7;
LABEL_4:
      sub_238AF8DDC(v13, v14, &v67, v15, v16, sub_238AFE0E4);
      v17 = &v62;
      goto LABEL_5;
    }

    sub_238AFD5B4(v66, &v62);
    v28 = swift_dynamicCast();
    if (v28)
    {
      sub_238AF0FB4(v28, v59);
      if (v2)
      {
LABEL_28:
        __swift_destroy_boxed_opaque_existential_1(v66);

        return;
      }

      v31 = v29;
      v32 = v30;
      v33 = v29 >> 8;
      v64 = &type metadata for ProcessConstraintDisjunction;
      v34 = sub_238AF6F8C();
      LOBYTE(v62) = v31;
      BYTE1(v62) = v33;
      v65 = v34;
      v63 = v32;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v6;
      if ((v35 & 1) == 0)
      {
        v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
        v67 = v6;
      }

      v37 = v6[2];
      v36 = v6[3];
      if (v37 >= v36 >> 1)
      {
        v6 = sub_238B14838((v36 > 1), v37 + 1, 1, v6);
        v67 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v66);
      v38 = v64;
      v39 = v65;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(&v62, v64);
      MEMORY[0x28223BE20](v40, v40);
      v42 = &v54 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v13 = v37;
      v14 = v42;
      v15 = v38;
      v16 = v39;
      goto LABEL_4;
    }

    sub_238AFD5B4(v66, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v57 = 0;
      memset(v56, 0, sizeof(v56));

      sub_238AFD7D8(v56, &qword_27DF51A98, &qword_238B1D058);
      sub_238AFA0E8();
      swift_allocError();
      *v53 = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v66);
      return;
    }

    sub_238AEA2C0(v56, &v62);
    sub_238AFD5B4(&v62, v58);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v6;
    if ((v44 & 1) == 0)
    {
      v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
      v67 = v6;
    }

    v46 = v6[2];
    v45 = v6[3];
    if (v46 >= v45 >> 1)
    {
      v6 = sub_238B14838((v45 > 1), v46 + 1, 1, v6);
      v67 = v6;
    }

    __swift_destroy_boxed_opaque_existential_1(&v62);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v47 = v60;
    v48 = v61;
    v49 = __swift_mutable_project_boxed_opaque_existential_1(v58, v60);
    MEMORY[0x28223BE20](v49, v49);
    v51 = &v54 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v51);
    sub_238AF8DDC(v46, v51, &v67, v47, v48, sub_238AFE0E4);
    v17 = v58;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v17);
    ++v4;
    v5 += 40;
    v3 = v54;
    if (v55 == v4)
    {

      return;
    }
  }

  __break(1u);
}

void sub_238AF0FB4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v55 = *(a2 + 16);
  if (!v55)
  {

    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v54 = a2;
  while (v4 < *(v3 + 16))
  {
    sub_238AFD5B4(v5, v66);
    sub_238AFD5B4(v66, &v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_238AF0950(v18, v59);
      if (v2)
      {
        goto LABEL_28;
      }

      v21 = v19;
      v22 = v20;
      v23 = v19 >> 8;
      v64 = &type metadata for ProcessConstraintConjunction;
      v24 = sub_238AF6E18();
      LOBYTE(v62) = v21;
      BYTE1(v62) = v23;
      v65 = v24;
      v63 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
        v67 = v6;
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_238B14838((v26 > 1), v27 + 1, 1, v6);
        v67 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v66);
      v8 = v64;
      v7 = v65;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(&v62, v64);
      MEMORY[0x28223BE20](v9, v9);
      v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      v13 = v27;
      v14 = v11;
      v15 = v8;
      v16 = v7;
LABEL_4:
      sub_238AF8DDC(v13, v14, &v67, v15, v16, sub_238AFE0E4);
      v17 = &v62;
      goto LABEL_5;
    }

    sub_238AFD5B4(v66, &v62);
    v28 = swift_dynamicCast();
    if (v28)
    {
      sub_238AF0FB4(v28, v59);
      if (v2)
      {
LABEL_28:
        __swift_destroy_boxed_opaque_existential_1(v66);

        return;
      }

      v31 = v29;
      v32 = v30;
      v33 = v29 >> 8;
      v64 = &type metadata for ProcessConstraintDisjunction;
      v34 = sub_238AF6F8C();
      LOBYTE(v62) = v31;
      BYTE1(v62) = v33;
      v65 = v34;
      v63 = v32;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v6;
      if ((v35 & 1) == 0)
      {
        v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
        v67 = v6;
      }

      v37 = v6[2];
      v36 = v6[3];
      if (v37 >= v36 >> 1)
      {
        v6 = sub_238B14838((v36 > 1), v37 + 1, 1, v6);
        v67 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v66);
      v38 = v64;
      v39 = v65;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(&v62, v64);
      MEMORY[0x28223BE20](v40, v40);
      v42 = &v54 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v13 = v37;
      v14 = v42;
      v15 = v38;
      v16 = v39;
      goto LABEL_4;
    }

    sub_238AFD5B4(v66, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v57 = 0;
      memset(v56, 0, sizeof(v56));

      sub_238AFD7D8(v56, &qword_27DF51A98, &qword_238B1D058);
      sub_238AFA0E8();
      swift_allocError();
      *v53 = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v66);
      return;
    }

    sub_238AEA2C0(v56, &v62);
    sub_238AFD5B4(&v62, v58);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v6;
    if ((v44 & 1) == 0)
    {
      v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
      v67 = v6;
    }

    v46 = v6[2];
    v45 = v6[3];
    if (v46 >= v45 >> 1)
    {
      v6 = sub_238B14838((v45 > 1), v46 + 1, 1, v6);
      v67 = v6;
    }

    __swift_destroy_boxed_opaque_existential_1(&v62);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v47 = v60;
    v48 = v61;
    v49 = __swift_mutable_project_boxed_opaque_existential_1(v58, v60);
    MEMORY[0x28223BE20](v49, v49);
    v51 = &v54 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v51);
    sub_238AF8DDC(v46, v51, &v67, v47, v48, sub_238AFE0E4);
    v17 = v58;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v17);
    ++v4;
    v5 += 40;
    v3 = v54;
    if (v55 == v4)
    {

      return;
    }
  }

  __break(1u);
}

void sub_238AF1618(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v60 = *(a2 + 16);
  if (!v60)
  {

    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v59 = a2;
  while (v4 < *(v3 + 16))
  {
    sub_238AFD5B4(v5, v71);
    sub_238AFD5B4(v71, &v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_238AF1618(v18, v64);
      if (v2)
      {
        goto LABEL_36;
      }

      v21 = v19;
      v22 = v20;
      v23 = v19 >> 8;
      v69 = &type metadata for ProcessConstraintConjunction;
      v24 = sub_238AF6E18();
      LOBYTE(v68) = v21;
      BYTE1(v68) = v23;
      v70 = v24;
      *(&v68 + 1) = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_238B14838((v26 > 1), v27 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v8 = v69;
      v7 = v70;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v9, v9);
      v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      v13 = v27;
      v14 = v11;
      v15 = v8;
      v16 = v7;
LABEL_4:
      sub_238AF8DDC(v13, v14, &v72, v15, v16, sub_238AFE0E4);
      v17 = &v68;
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v17);
      goto LABEL_6;
    }

    sub_238AFD5B4(v71, &v68);
    v28 = swift_dynamicCast();
    if (v28)
    {
      sub_238AF1D98(v28, v64);
      if (v2)
      {
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v71);

        return;
      }

      v31 = v29;
      v32 = v30;
      v33 = v29 >> 8;
      v69 = &type metadata for ProcessConstraintDisjunction;
      v34 = sub_238AF6F8C();
      LOBYTE(v68) = v31;
      BYTE1(v68) = v33;
      v70 = v34;
      *(&v68 + 1) = v32;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v35 & 1) == 0)
      {
        v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v37 = v6[2];
      v36 = v6[3];
      if (v37 >= v36 >> 1)
      {
        v6 = sub_238B14838((v36 > 1), v37 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v38 = v69;
      v39 = v70;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v40, v40);
      v42 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v13 = v37;
      v14 = v42;
      v15 = v38;
      v16 = v39;
      goto LABEL_4;
    }

    sub_238AFD5B4(v71, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
    if (swift_dynamicCast())
    {
      sub_238AEA2C0(v61, &v68);
      sub_238AFD5B4(&v68, v63);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v44 & 1) == 0)
      {
        v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v46 = v6[2];
      v45 = v6[3];
      if (v46 >= v45 >> 1)
      {
        v6 = sub_238B14838((v45 > 1), v46 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(&v68);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v47 = v66;
      v48 = v67;
      v49 = __swift_mutable_project_boxed_opaque_existential_1(v63, v66);
      MEMORY[0x28223BE20](v49, v49);
      v51 = &v59 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      sub_238AF8DDC(v46, v51, &v72, v47, v48, sub_238AFE0E4);
      v17 = v63;
      goto LABEL_5;
    }

    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_238AFD7D8(v61, &qword_27DF51A98, &qword_238B1D058);
    sub_238AFD5B4(v71, &v68);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_238AFA0E8();
      swift_allocError();
      *v58 = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v71);
      return;
    }

    if (v66)
    {
      goto LABEL_39;
    }

    v53 = v65;

    v63[0] = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
    }

    v55 = v6[2];
    v54 = v6[3];
    if (v55 >= v54 >> 1)
    {
      v6 = sub_238B14838((v54 > 1), v55 + 1, 1, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
    v56 = v63[0];
    v69 = &type metadata for ProcessCodeSigningFlags;
    v70 = sub_238AFABCC();
    v57 = swift_allocObject();
    *&v68 = v57;
    *(v57 + 16) = 2;
    *(v57 + 24) = 23;
    *(v57 + 32) = v53;
    *(v57 + 40) = v56;
    *(v57 + 48) = 0;
    v6[2] = v55 + 1;
    sub_238AEA2C0(&v68, &v6[5 * v55 + 4]);

LABEL_6:
    ++v4;
    v5 += 40;
    v3 = v59;
    if (v60 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_238AF1D98(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v60 = *(a2 + 16);
  if (!v60)
  {

    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v59 = a2;
  while (v4 < *(v3 + 16))
  {
    sub_238AFD5B4(v5, v71);
    sub_238AFD5B4(v71, &v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_238AF1618(v18, v64);
      if (v2)
      {
        goto LABEL_36;
      }

      v21 = v19;
      v22 = v20;
      v23 = v19 >> 8;
      v69 = &type metadata for ProcessConstraintConjunction;
      v24 = sub_238AF6E18();
      LOBYTE(v68) = v21;
      BYTE1(v68) = v23;
      v70 = v24;
      *(&v68 + 1) = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_238B14838((v26 > 1), v27 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v8 = v69;
      v7 = v70;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v9, v9);
      v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      v13 = v27;
      v14 = v11;
      v15 = v8;
      v16 = v7;
LABEL_4:
      sub_238AF8DDC(v13, v14, &v72, v15, v16, sub_238AFE0E4);
      v17 = &v68;
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v17);
      goto LABEL_6;
    }

    sub_238AFD5B4(v71, &v68);
    v28 = swift_dynamicCast();
    if (v28)
    {
      sub_238AF1D98(v28, v64);
      if (v2)
      {
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v71);

        return;
      }

      v31 = v29;
      v32 = v30;
      v33 = v29 >> 8;
      v69 = &type metadata for ProcessConstraintDisjunction;
      v34 = sub_238AF6F8C();
      LOBYTE(v68) = v31;
      BYTE1(v68) = v33;
      v70 = v34;
      *(&v68 + 1) = v32;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v35 & 1) == 0)
      {
        v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v37 = v6[2];
      v36 = v6[3];
      if (v37 >= v36 >> 1)
      {
        v6 = sub_238B14838((v36 > 1), v37 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v38 = v69;
      v39 = v70;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v40, v40);
      v42 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v13 = v37;
      v14 = v42;
      v15 = v38;
      v16 = v39;
      goto LABEL_4;
    }

    sub_238AFD5B4(v71, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
    if (swift_dynamicCast())
    {
      sub_238AEA2C0(v61, &v68);
      sub_238AFD5B4(&v68, v63);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v44 & 1) == 0)
      {
        v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v46 = v6[2];
      v45 = v6[3];
      if (v46 >= v45 >> 1)
      {
        v6 = sub_238B14838((v45 > 1), v46 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(&v68);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v47 = v66;
      v48 = v67;
      v49 = __swift_mutable_project_boxed_opaque_existential_1(v63, v66);
      MEMORY[0x28223BE20](v49, v49);
      v51 = &v59 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      sub_238AF8DDC(v46, v51, &v72, v47, v48, sub_238AFE0E4);
      v17 = v63;
      goto LABEL_5;
    }

    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_238AFD7D8(v61, &qword_27DF51A98, &qword_238B1D058);
    sub_238AFD5B4(v71, &v68);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_238AFA0E8();
      swift_allocError();
      *v58 = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v71);
      return;
    }

    if (v66)
    {
      goto LABEL_39;
    }

    v53 = v65;

    v63[0] = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238B14838(0, v6[2] + 1, 1, v6);
    }

    v55 = v6[2];
    v54 = v6[3];
    if (v55 >= v54 >> 1)
    {
      v6 = sub_238B14838((v54 > 1), v55 + 1, 1, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
    v56 = v63[0];
    v69 = &type metadata for ProcessCodeSigningFlags;
    v70 = sub_238AFABCC();
    v57 = swift_allocObject();
    *&v68 = v57;
    *(v57 + 16) = 2;
    *(v57 + 24) = 23;
    *(v57 + 32) = v53;
    *(v57 + 40) = v56;
    *(v57 + 48) = 0;
    v6[2] = v55 + 1;
    sub_238AEA2C0(&v68, &v6[5 * v55 + 4]);

LABEL_6:
    ++v4;
    v5 += 40;
    v3 = v59;
    if (v60 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

unint64_t sub_238AF2518@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_238AF9B4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_238AF2548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238AF9B4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238AF257C(uint64_t a1)
{
  v2 = sub_238AF7C80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238AF25B8(uint64_t a1)
{
  v2 = sub_238AF7C80();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_238AF26B4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v55 = *(a2 + 16);
  if (!v55)
  {

    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v54 = a2;
  while (v4 < *(v3 + 16))
  {
    sub_238AFD5B4(v5, v66);
    sub_238AFD5B4(v66, &v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_238AF26B4(v18, v59);
      if (v2)
      {
        goto LABEL_28;
      }

      v21 = v19;
      v22 = v20;
      v23 = v19 >> 8;
      v64 = &type metadata for LaunchConstraintConjunction;
      v24 = sub_238AF6E94();
      LOBYTE(v62) = v21;
      BYTE1(v62) = v23;
      v65 = v24;
      v63 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
        v67 = v6;
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_238B14958((v26 > 1), v27 + 1, 1, v6);
        v67 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v66);
      v8 = v64;
      v7 = v65;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(&v62, v64);
      MEMORY[0x28223BE20](v9, v9);
      v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      v13 = v27;
      v14 = v11;
      v15 = v8;
      v16 = v7;
LABEL_4:
      sub_238AF8DDC(v13, v14, &v67, v15, v16, sub_238AFE0E4);
      v17 = &v62;
      goto LABEL_5;
    }

    sub_238AFD5B4(v66, &v62);
    v28 = swift_dynamicCast();
    if (v28)
    {
      sub_238AF2D18(v28, v59);
      if (v2)
      {
LABEL_28:
        __swift_destroy_boxed_opaque_existential_1(v66);

        return;
      }

      v31 = v29;
      v32 = v30;
      v33 = v29 >> 8;
      v64 = &type metadata for LaunchConstraintDisjunction;
      v34 = sub_238AF7008();
      LOBYTE(v62) = v31;
      BYTE1(v62) = v33;
      v65 = v34;
      v63 = v32;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v6;
      if ((v35 & 1) == 0)
      {
        v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
        v67 = v6;
      }

      v37 = v6[2];
      v36 = v6[3];
      if (v37 >= v36 >> 1)
      {
        v6 = sub_238B14958((v36 > 1), v37 + 1, 1, v6);
        v67 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v66);
      v38 = v64;
      v39 = v65;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(&v62, v64);
      MEMORY[0x28223BE20](v40, v40);
      v42 = &v54 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v13 = v37;
      v14 = v42;
      v15 = v38;
      v16 = v39;
      goto LABEL_4;
    }

    sub_238AFD5B4(v66, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v57 = 0;
      memset(v56, 0, sizeof(v56));

      sub_238AFD7D8(v56, &qword_27DF51A90, &qword_238B1D050);
      sub_238AFA0E8();
      swift_allocError();
      *v53 = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v66);
      return;
    }

    sub_238AEA2C0(v56, &v62);
    sub_238AFD5B4(&v62, v58);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v6;
    if ((v44 & 1) == 0)
    {
      v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
      v67 = v6;
    }

    v46 = v6[2];
    v45 = v6[3];
    if (v46 >= v45 >> 1)
    {
      v6 = sub_238B14958((v45 > 1), v46 + 1, 1, v6);
      v67 = v6;
    }

    __swift_destroy_boxed_opaque_existential_1(&v62);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v47 = v60;
    v48 = v61;
    v49 = __swift_mutable_project_boxed_opaque_existential_1(v58, v60);
    MEMORY[0x28223BE20](v49, v49);
    v51 = &v54 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v51);
    sub_238AF8DDC(v46, v51, &v67, v47, v48, sub_238AFE0E4);
    v17 = v58;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v17);
    ++v4;
    v5 += 40;
    v3 = v54;
    if (v55 == v4)
    {

      return;
    }
  }

  __break(1u);
}

void sub_238AF2D18(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v55 = *(a2 + 16);
  if (!v55)
  {

    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v54 = a2;
  while (v4 < *(v3 + 16))
  {
    sub_238AFD5B4(v5, v66);
    sub_238AFD5B4(v66, &v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_238AF26B4(v18, v59);
      if (v2)
      {
        goto LABEL_28;
      }

      v21 = v19;
      v22 = v20;
      v23 = v19 >> 8;
      v64 = &type metadata for LaunchConstraintConjunction;
      v24 = sub_238AF6E94();
      LOBYTE(v62) = v21;
      BYTE1(v62) = v23;
      v65 = v24;
      v63 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
        v67 = v6;
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_238B14958((v26 > 1), v27 + 1, 1, v6);
        v67 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v66);
      v8 = v64;
      v7 = v65;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(&v62, v64);
      MEMORY[0x28223BE20](v9, v9);
      v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      v13 = v27;
      v14 = v11;
      v15 = v8;
      v16 = v7;
LABEL_4:
      sub_238AF8DDC(v13, v14, &v67, v15, v16, sub_238AFE0E4);
      v17 = &v62;
      goto LABEL_5;
    }

    sub_238AFD5B4(v66, &v62);
    v28 = swift_dynamicCast();
    if (v28)
    {
      sub_238AF2D18(v28, v59);
      if (v2)
      {
LABEL_28:
        __swift_destroy_boxed_opaque_existential_1(v66);

        return;
      }

      v31 = v29;
      v32 = v30;
      v33 = v29 >> 8;
      v64 = &type metadata for LaunchConstraintDisjunction;
      v34 = sub_238AF7008();
      LOBYTE(v62) = v31;
      BYTE1(v62) = v33;
      v65 = v34;
      v63 = v32;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v6;
      if ((v35 & 1) == 0)
      {
        v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
        v67 = v6;
      }

      v37 = v6[2];
      v36 = v6[3];
      if (v37 >= v36 >> 1)
      {
        v6 = sub_238B14958((v36 > 1), v37 + 1, 1, v6);
        v67 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v66);
      v38 = v64;
      v39 = v65;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(&v62, v64);
      MEMORY[0x28223BE20](v40, v40);
      v42 = &v54 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v13 = v37;
      v14 = v42;
      v15 = v38;
      v16 = v39;
      goto LABEL_4;
    }

    sub_238AFD5B4(v66, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v57 = 0;
      memset(v56, 0, sizeof(v56));

      sub_238AFD7D8(v56, &qword_27DF51A90, &qword_238B1D050);
      sub_238AFA0E8();
      swift_allocError();
      *v53 = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v66);
      return;
    }

    sub_238AEA2C0(v56, &v62);
    sub_238AFD5B4(&v62, v58);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v6;
    if ((v44 & 1) == 0)
    {
      v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
      v67 = v6;
    }

    v46 = v6[2];
    v45 = v6[3];
    if (v46 >= v45 >> 1)
    {
      v6 = sub_238B14958((v45 > 1), v46 + 1, 1, v6);
      v67 = v6;
    }

    __swift_destroy_boxed_opaque_existential_1(&v62);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v47 = v60;
    v48 = v61;
    v49 = __swift_mutable_project_boxed_opaque_existential_1(v58, v60);
    MEMORY[0x28223BE20](v49, v49);
    v51 = &v54 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v51);
    sub_238AF8DDC(v46, v51, &v67, v47, v48, sub_238AFE0E4);
    v17 = v58;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v17);
    ++v4;
    v5 += 40;
    v3 = v54;
    if (v55 == v4)
    {

      return;
    }
  }

  __break(1u);
}

void sub_238AF337C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v60 = *(a2 + 16);
  if (!v60)
  {

    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v59 = a2;
  while (v4 < *(v3 + 16))
  {
    sub_238AFD5B4(v5, v71);
    sub_238AFD5B4(v71, &v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_238AF337C(v18, v64);
      if (v2)
      {
        goto LABEL_36;
      }

      v21 = v19;
      v22 = v20;
      v23 = v19 >> 8;
      v69 = &type metadata for LaunchConstraintConjunction;
      v24 = sub_238AF6E94();
      LOBYTE(v68) = v21;
      BYTE1(v68) = v23;
      v70 = v24;
      *(&v68 + 1) = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_238B14958((v26 > 1), v27 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v8 = v69;
      v7 = v70;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v9, v9);
      v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      v13 = v27;
      v14 = v11;
      v15 = v8;
      v16 = v7;
LABEL_4:
      sub_238AF8DDC(v13, v14, &v72, v15, v16, sub_238AFE0E4);
      v17 = &v68;
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v17);
      goto LABEL_6;
    }

    sub_238AFD5B4(v71, &v68);
    v28 = swift_dynamicCast();
    if (v28)
    {
      sub_238AF3AFC(v28, v64);
      if (v2)
      {
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v71);

        return;
      }

      v31 = v29;
      v32 = v30;
      v33 = v29 >> 8;
      v69 = &type metadata for LaunchConstraintDisjunction;
      v34 = sub_238AF7008();
      LOBYTE(v68) = v31;
      BYTE1(v68) = v33;
      v70 = v34;
      *(&v68 + 1) = v32;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v35 & 1) == 0)
      {
        v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v37 = v6[2];
      v36 = v6[3];
      if (v37 >= v36 >> 1)
      {
        v6 = sub_238B14958((v36 > 1), v37 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v38 = v69;
      v39 = v70;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v40, v40);
      v42 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v13 = v37;
      v14 = v42;
      v15 = v38;
      v16 = v39;
      goto LABEL_4;
    }

    sub_238AFD5B4(v71, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
    if (swift_dynamicCast())
    {
      sub_238AEA2C0(v61, &v68);
      sub_238AFD5B4(&v68, v63);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v44 & 1) == 0)
      {
        v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v46 = v6[2];
      v45 = v6[3];
      if (v46 >= v45 >> 1)
      {
        v6 = sub_238B14958((v45 > 1), v46 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(&v68);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v47 = v66;
      v48 = v67;
      v49 = __swift_mutable_project_boxed_opaque_existential_1(v63, v66);
      MEMORY[0x28223BE20](v49, v49);
      v51 = &v59 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      sub_238AF8DDC(v46, v51, &v72, v47, v48, sub_238AFE0E4);
      v17 = v63;
      goto LABEL_5;
    }

    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_238AFD7D8(v61, &qword_27DF51A90, &qword_238B1D050);
    sub_238AFD5B4(v71, &v68);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_238AFA0E8();
      swift_allocError();
      *v58 = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v71);
      return;
    }

    if (v66)
    {
      goto LABEL_39;
    }

    v53 = v65;

    v63[0] = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
    }

    v55 = v6[2];
    v54 = v6[3];
    if (v55 >= v54 >> 1)
    {
      v6 = sub_238B14958((v54 > 1), v55 + 1, 1, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
    v56 = v63[0];
    v69 = &type metadata for ProcessCodeSigningFlags;
    v70 = sub_238AFC234();
    v57 = swift_allocObject();
    *&v68 = v57;
    *(v57 + 16) = 2;
    *(v57 + 24) = 23;
    *(v57 + 32) = v53;
    *(v57 + 40) = v56;
    *(v57 + 48) = 0;
    v6[2] = v55 + 1;
    sub_238AEA2C0(&v68, &v6[5 * v55 + 4]);

LABEL_6:
    ++v4;
    v5 += 40;
    v3 = v59;
    if (v60 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_238AF3AFC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v60 = *(a2 + 16);
  if (!v60)
  {

    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v59 = a2;
  while (v4 < *(v3 + 16))
  {
    sub_238AFD5B4(v5, v71);
    sub_238AFD5B4(v71, &v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_238AF337C(v18, v64);
      if (v2)
      {
        goto LABEL_36;
      }

      v21 = v19;
      v22 = v20;
      v23 = v19 >> 8;
      v69 = &type metadata for LaunchConstraintConjunction;
      v24 = sub_238AF6E94();
      LOBYTE(v68) = v21;
      BYTE1(v68) = v23;
      v70 = v24;
      *(&v68 + 1) = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_238B14958((v26 > 1), v27 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v8 = v69;
      v7 = v70;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v9, v9);
      v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      v13 = v27;
      v14 = v11;
      v15 = v8;
      v16 = v7;
LABEL_4:
      sub_238AF8DDC(v13, v14, &v72, v15, v16, sub_238AFE0E4);
      v17 = &v68;
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v17);
      goto LABEL_6;
    }

    sub_238AFD5B4(v71, &v68);
    v28 = swift_dynamicCast();
    if (v28)
    {
      sub_238AF3AFC(v28, v64);
      if (v2)
      {
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v71);

        return;
      }

      v31 = v29;
      v32 = v30;
      v33 = v29 >> 8;
      v69 = &type metadata for LaunchConstraintDisjunction;
      v34 = sub_238AF7008();
      LOBYTE(v68) = v31;
      BYTE1(v68) = v33;
      v70 = v34;
      *(&v68 + 1) = v32;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v35 & 1) == 0)
      {
        v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v37 = v6[2];
      v36 = v6[3];
      if (v37 >= v36 >> 1)
      {
        v6 = sub_238B14958((v36 > 1), v37 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v38 = v69;
      v39 = v70;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v40, v40);
      v42 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v13 = v37;
      v14 = v42;
      v15 = v38;
      v16 = v39;
      goto LABEL_4;
    }

    sub_238AFD5B4(v71, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
    if (swift_dynamicCast())
    {
      sub_238AEA2C0(v61, &v68);
      sub_238AFD5B4(&v68, v63);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v44 & 1) == 0)
      {
        v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v46 = v6[2];
      v45 = v6[3];
      if (v46 >= v45 >> 1)
      {
        v6 = sub_238B14958((v45 > 1), v46 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(&v68);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v47 = v66;
      v48 = v67;
      v49 = __swift_mutable_project_boxed_opaque_existential_1(v63, v66);
      MEMORY[0x28223BE20](v49, v49);
      v51 = &v59 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      sub_238AF8DDC(v46, v51, &v72, v47, v48, sub_238AFE0E4);
      v17 = v63;
      goto LABEL_5;
    }

    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_238AFD7D8(v61, &qword_27DF51A90, &qword_238B1D050);
    sub_238AFD5B4(v71, &v68);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_238AFA0E8();
      swift_allocError();
      *v58 = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v71);
      return;
    }

    if (v66)
    {
      goto LABEL_39;
    }

    v53 = v65;

    v63[0] = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238B14958(0, v6[2] + 1, 1, v6);
    }

    v55 = v6[2];
    v54 = v6[3];
    if (v55 >= v54 >> 1)
    {
      v6 = sub_238B14958((v54 > 1), v55 + 1, 1, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
    v56 = v63[0];
    v69 = &type metadata for ProcessCodeSigningFlags;
    v70 = sub_238AFC234();
    v57 = swift_allocObject();
    *&v68 = v57;
    *(v57 + 16) = 2;
    *(v57 + 24) = 23;
    *(v57 + 32) = v53;
    *(v57 + 40) = v56;
    *(v57 + 48) = 0;
    v6[2] = v55 + 1;
    sub_238AEA2C0(&v68, &v6[5 * v55 + 4]);

LABEL_6:
    ++v4;
    v5 += 40;
    v3 = v59;
    if (v60 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

unint64_t sub_238AF427C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_238AFACC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_238AF42AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238AFACC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238AF42D4(uint64_t a1)
{
  v2 = sub_238AFBCF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238AF4310(uint64_t a1)
{
  v2 = sub_238AFBCF4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_238AF442C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v60 = *(a2 + 16);
  if (!v60)
  {

    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v59 = a2;
  while (v4 < *(v3 + 16))
  {
    sub_238AFD5B4(v5, v71);
    sub_238AFD5B4(v71, &v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_238AF442C(v18, v64);
      if (v2)
      {
        goto LABEL_36;
      }

      v21 = v19;
      v22 = v20;
      v23 = v19 >> 8;
      v69 = &type metadata for OnDiskConstraintConjunction;
      v24 = sub_238AF6F10();
      LOBYTE(v68) = v21;
      BYTE1(v68) = v23;
      v70 = v24;
      *(&v68 + 1) = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_238B1497C((v26 > 1), v27 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v8 = v69;
      v7 = v70;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v9, v9);
      v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      v13 = v27;
      v14 = v11;
      v15 = v8;
      v16 = v7;
LABEL_4:
      sub_238AF8DDC(v13, v14, &v72, v15, v16, sub_238AFE0E4);
      v17 = &v68;
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v17);
      goto LABEL_6;
    }

    sub_238AFD5B4(v71, &v68);
    v28 = swift_dynamicCast();
    if (v28)
    {
      sub_238AF4BAC(v28, v64);
      if (v2)
      {
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v71);

        return;
      }

      v31 = v29;
      v32 = v30;
      v33 = v29 >> 8;
      v69 = &type metadata for OnDiskConstraintDisjunction;
      v34 = sub_238AF70F0();
      LOBYTE(v68) = v31;
      BYTE1(v68) = v33;
      v70 = v34;
      *(&v68 + 1) = v32;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v35 & 1) == 0)
      {
        v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v37 = v6[2];
      v36 = v6[3];
      if (v37 >= v36 >> 1)
      {
        v6 = sub_238B1497C((v36 > 1), v37 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v38 = v69;
      v39 = v70;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v40, v40);
      v42 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v13 = v37;
      v14 = v42;
      v15 = v38;
      v16 = v39;
      goto LABEL_4;
    }

    sub_238AFD5B4(v71, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
    if (swift_dynamicCast())
    {
      sub_238AEA2C0(v61, &v68);
      sub_238AFD5B4(&v68, v63);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v44 & 1) == 0)
      {
        v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v46 = v6[2];
      v45 = v6[3];
      if (v46 >= v45 >> 1)
      {
        v6 = sub_238B1497C((v45 > 1), v46 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(&v68);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v47 = v66;
      v48 = v67;
      v49 = __swift_mutable_project_boxed_opaque_existential_1(v63, v66);
      MEMORY[0x28223BE20](v49, v49);
      v51 = &v59 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      sub_238AF8DDC(v46, v51, &v72, v47, v48, sub_238AFE0E4);
      v17 = v63;
      goto LABEL_5;
    }

    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_238AFD7D8(v61, &qword_27DF51A80, &qword_238B1D040);
    sub_238AFD5B4(v71, &v68);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_238AFA0E8();
      swift_allocError();
      *v58 = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v71);
      return;
    }

    if (v66)
    {
      goto LABEL_39;
    }

    v53 = v65;

    v63[0] = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
    }

    v55 = v6[2];
    v54 = v6[3];
    if (v55 >= v54 >> 1)
    {
      v6 = sub_238B1497C((v54 > 1), v55 + 1, 1, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
    v56 = v63[0];
    v69 = &type metadata for OnDiskCodeSigningFlags;
    v70 = sub_238AFCE54();
    v57 = swift_allocObject();
    *&v68 = v57;
    *(v57 + 16) = 2;
    *(v57 + 24) = 23;
    *(v57 + 32) = v53;
    *(v57 + 40) = v56;
    *(v57 + 48) = 0;
    v6[2] = v55 + 1;
    sub_238AEA2C0(&v68, &v6[5 * v55 + 4]);

LABEL_6:
    ++v4;
    v5 += 40;
    v3 = v59;
    if (v60 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_238AF4BAC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v60 = *(a2 + 16);
  if (!v60)
  {

    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v59 = a2;
  while (v4 < *(v3 + 16))
  {
    sub_238AFD5B4(v5, v71);
    sub_238AFD5B4(v71, &v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_238AF442C(v18, v64);
      if (v2)
      {
        goto LABEL_36;
      }

      v21 = v19;
      v22 = v20;
      v23 = v19 >> 8;
      v69 = &type metadata for OnDiskConstraintConjunction;
      v24 = sub_238AF6F10();
      LOBYTE(v68) = v21;
      BYTE1(v68) = v23;
      v70 = v24;
      *(&v68 + 1) = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_238B1497C((v26 > 1), v27 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v8 = v69;
      v7 = v70;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v9, v9);
      v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      v13 = v27;
      v14 = v11;
      v15 = v8;
      v16 = v7;
LABEL_4:
      sub_238AF8DDC(v13, v14, &v72, v15, v16, sub_238AFE0E4);
      v17 = &v68;
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v17);
      goto LABEL_6;
    }

    sub_238AFD5B4(v71, &v68);
    v28 = swift_dynamicCast();
    if (v28)
    {
      sub_238AF4BAC(v28, v64);
      if (v2)
      {
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v71);

        return;
      }

      v31 = v29;
      v32 = v30;
      v33 = v29 >> 8;
      v69 = &type metadata for OnDiskConstraintDisjunction;
      v34 = sub_238AF70F0();
      LOBYTE(v68) = v31;
      BYTE1(v68) = v33;
      v70 = v34;
      *(&v68 + 1) = v32;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v35 & 1) == 0)
      {
        v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v37 = v6[2];
      v36 = v6[3];
      if (v37 >= v36 >> 1)
      {
        v6 = sub_238B1497C((v36 > 1), v37 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v38 = v69;
      v39 = v70;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v40, v40);
      v42 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v13 = v37;
      v14 = v42;
      v15 = v38;
      v16 = v39;
      goto LABEL_4;
    }

    sub_238AFD5B4(v71, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
    if (swift_dynamicCast())
    {
      sub_238AEA2C0(v61, &v68);
      sub_238AFD5B4(&v68, v63);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v44 & 1) == 0)
      {
        v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v46 = v6[2];
      v45 = v6[3];
      if (v46 >= v45 >> 1)
      {
        v6 = sub_238B1497C((v45 > 1), v46 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(&v68);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v47 = v66;
      v48 = v67;
      v49 = __swift_mutable_project_boxed_opaque_existential_1(v63, v66);
      MEMORY[0x28223BE20](v49, v49);
      v51 = &v59 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      sub_238AF8DDC(v46, v51, &v72, v47, v48, sub_238AFE0E4);
      v17 = v63;
      goto LABEL_5;
    }

    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_238AFD7D8(v61, &qword_27DF51A80, &qword_238B1D040);
    sub_238AFD5B4(v71, &v68);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_238AFA0E8();
      swift_allocError();
      *v58 = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v71);
      return;
    }

    if (v66)
    {
      goto LABEL_39;
    }

    v53 = v65;

    v63[0] = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
    }

    v55 = v6[2];
    v54 = v6[3];
    if (v55 >= v54 >> 1)
    {
      v6 = sub_238B1497C((v54 > 1), v55 + 1, 1, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
    v56 = v63[0];
    v69 = &type metadata for OnDiskCodeSigningFlags;
    v70 = sub_238AFCE54();
    v57 = swift_allocObject();
    *&v68 = v57;
    *(v57 + 16) = 2;
    *(v57 + 24) = 23;
    *(v57 + 32) = v53;
    *(v57 + 40) = v56;
    *(v57 + 48) = 0;
    v6[2] = v55 + 1;
    sub_238AEA2C0(&v68, &v6[5 * v55 + 4]);

LABEL_6:
    ++v4;
    v5 += 40;
    v3 = v59;
    if (v60 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_238AF532C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v60 = *(a2 + 16);
  if (!v60)
  {

    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v59 = a2;
  while (v4 < *(v3 + 16))
  {
    sub_238AFD5B4(v5, v71);
    sub_238AFD5B4(v71, &v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_238AF532C(v18, v64);
      if (v2)
      {
        goto LABEL_36;
      }

      v21 = v19;
      v22 = v20;
      v23 = v19 >> 8;
      v69 = &type metadata for OnDiskConstraintConjunction;
      v24 = sub_238AF6F10();
      LOBYTE(v68) = v21;
      BYTE1(v68) = v23;
      v70 = v24;
      *(&v68 + 1) = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_238B1497C((v26 > 1), v27 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v8 = v69;
      v7 = v70;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v9, v9);
      v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      v13 = v27;
      v14 = v11;
      v15 = v8;
      v16 = v7;
LABEL_4:
      sub_238AF8DDC(v13, v14, &v72, v15, v16, sub_238AFE0E4);
      v17 = &v68;
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v17);
      goto LABEL_6;
    }

    sub_238AFD5B4(v71, &v68);
    v28 = swift_dynamicCast();
    if (v28)
    {
      sub_238AF5AAC(v28, v64);
      if (v2)
      {
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v71);

        return;
      }

      v31 = v29;
      v32 = v30;
      v33 = v29 >> 8;
      v69 = &type metadata for OnDiskConstraintDisjunction;
      v34 = sub_238AF70F0();
      LOBYTE(v68) = v31;
      BYTE1(v68) = v33;
      v70 = v34;
      *(&v68 + 1) = v32;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v35 & 1) == 0)
      {
        v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v37 = v6[2];
      v36 = v6[3];
      if (v37 >= v36 >> 1)
      {
        v6 = sub_238B1497C((v36 > 1), v37 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v38 = v69;
      v39 = v70;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v40, v40);
      v42 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v13 = v37;
      v14 = v42;
      v15 = v38;
      v16 = v39;
      goto LABEL_4;
    }

    sub_238AFD5B4(v71, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
    if (swift_dynamicCast())
    {
      sub_238AEA2C0(v61, &v68);
      sub_238AFD5B4(&v68, v63);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v44 & 1) == 0)
      {
        v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v46 = v6[2];
      v45 = v6[3];
      if (v46 >= v45 >> 1)
      {
        v6 = sub_238B1497C((v45 > 1), v46 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(&v68);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v47 = v66;
      v48 = v67;
      v49 = __swift_mutable_project_boxed_opaque_existential_1(v63, v66);
      MEMORY[0x28223BE20](v49, v49);
      v51 = &v59 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      sub_238AF8DDC(v46, v51, &v72, v47, v48, sub_238AFE0E4);
      v17 = v63;
      goto LABEL_5;
    }

    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_238AFD7D8(v61, &qword_27DF51A80, &qword_238B1D040);
    sub_238AFD5B4(v71, &v68);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_238AFA0E8();
      swift_allocError();
      *v58 = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v71);
      return;
    }

    if (v66)
    {
      goto LABEL_39;
    }

    v53 = v65;

    v63[0] = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
    }

    v55 = v6[2];
    v54 = v6[3];
    if (v55 >= v54 >> 1)
    {
      v6 = sub_238B1497C((v54 > 1), v55 + 1, 1, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
    v56 = v63[0];
    v69 = &type metadata for OnDiskCodeSigningFlags;
    v70 = sub_238AFCE54();
    v57 = swift_allocObject();
    *&v68 = v57;
    *(v57 + 16) = 2;
    *(v57 + 24) = 23;
    *(v57 + 32) = v53;
    *(v57 + 40) = v56;
    *(v57 + 48) = 0;
    v6[2] = v55 + 1;
    sub_238AEA2C0(&v68, &v6[5 * v55 + 4]);

LABEL_6:
    ++v4;
    v5 += 40;
    v3 = v59;
    if (v60 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_238AF5AAC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v60 = *(a2 + 16);
  if (!v60)
  {

    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = MEMORY[0x277D84F90];
  v59 = a2;
  while (v4 < *(v3 + 16))
  {
    sub_238AFD5B4(v5, v71);
    sub_238AFD5B4(v71, &v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
    v18 = swift_dynamicCast();
    if (v18)
    {
      sub_238AF532C(v18, v64);
      if (v2)
      {
        goto LABEL_36;
      }

      v21 = v19;
      v22 = v20;
      v23 = v19 >> 8;
      v69 = &type metadata for OnDiskConstraintConjunction;
      v24 = sub_238AF6F10();
      LOBYTE(v68) = v21;
      BYTE1(v68) = v23;
      v70 = v24;
      *(&v68 + 1) = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v27 = v6[2];
      v26 = v6[3];
      if (v27 >= v26 >> 1)
      {
        v6 = sub_238B1497C((v26 > 1), v27 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v8 = v69;
      v7 = v70;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v9, v9);
      v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      v13 = v27;
      v14 = v11;
      v15 = v8;
      v16 = v7;
LABEL_4:
      sub_238AF8DDC(v13, v14, &v72, v15, v16, sub_238AFE0E4);
      v17 = &v68;
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1(v17);
      goto LABEL_6;
    }

    sub_238AFD5B4(v71, &v68);
    v28 = swift_dynamicCast();
    if (v28)
    {
      sub_238AF5AAC(v28, v64);
      if (v2)
      {
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v71);

        return;
      }

      v31 = v29;
      v32 = v30;
      v33 = v29 >> 8;
      v69 = &type metadata for OnDiskConstraintDisjunction;
      v34 = sub_238AF70F0();
      LOBYTE(v68) = v31;
      BYTE1(v68) = v33;
      v70 = v34;
      *(&v68 + 1) = v32;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v35 & 1) == 0)
      {
        v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v37 = v6[2];
      v36 = v6[3];
      if (v37 >= v36 >> 1)
      {
        v6 = sub_238B1497C((v36 > 1), v37 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      v38 = v69;
      v39 = v70;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v69);
      MEMORY[0x28223BE20](v40, v40);
      v42 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      v13 = v37;
      v14 = v42;
      v15 = v38;
      v16 = v39;
      goto LABEL_4;
    }

    sub_238AFD5B4(v71, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
    if (swift_dynamicCast())
    {
      sub_238AEA2C0(v61, &v68);
      sub_238AFD5B4(&v68, v63);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((v44 & 1) == 0)
      {
        v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
        v72 = v6;
      }

      v46 = v6[2];
      v45 = v6[3];
      if (v46 >= v45 >> 1)
      {
        v6 = sub_238B1497C((v45 > 1), v46 + 1, 1, v6);
        v72 = v6;
      }

      __swift_destroy_boxed_opaque_existential_1(&v68);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v47 = v66;
      v48 = v67;
      v49 = __swift_mutable_project_boxed_opaque_existential_1(v63, v66);
      MEMORY[0x28223BE20](v49, v49);
      v51 = &v59 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      sub_238AF8DDC(v46, v51, &v72, v47, v48, sub_238AFE0E4);
      v17 = v63;
      goto LABEL_5;
    }

    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_238AFD7D8(v61, &qword_27DF51A80, &qword_238B1D040);
    sub_238AFD5B4(v71, &v68);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_238AFA0E8();
      swift_allocError();
      *v58 = 3;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v71);
      return;
    }

    if (v66)
    {
      goto LABEL_39;
    }

    v53 = v65;

    v63[0] = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_238B1497C(0, v6[2] + 1, 1, v6);
    }

    v55 = v6[2];
    v54 = v6[3];
    if (v55 >= v54 >> 1)
    {
      v6 = sub_238B1497C((v54 > 1), v55 + 1, 1, v6);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
    v56 = v63[0];
    v69 = &type metadata for OnDiskCodeSigningFlags;
    v70 = sub_238AFCE54();
    v57 = swift_allocObject();
    *&v68 = v57;
    *(v57 + 16) = 2;
    *(v57 + 24) = 23;
    *(v57 + 32) = v53;
    *(v57 + 40) = v56;
    *(v57 + 48) = 0;
    v6[2] = v55 + 1;
    sub_238AEA2C0(&v68, &v6[5 * v55 + 4]);

LABEL_6:
    ++v4;
    v5 += 40;
    v3 = v59;
    if (v60 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

unint64_t sub_238AF622C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_238AFB210(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_238AF625C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238AFB210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238AF6284(uint64_t a1)
{
  v2 = sub_238AFC8CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238AF62C0(uint64_t a1)
{
  v2 = sub_238AFC8CC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_238AF63BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_238AFB758(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_238AF63EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238AFB758(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238AF6414(uint64_t a1)
{
  v2 = sub_238AF7B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238AF6450(uint64_t a1)
{
  v2 = sub_238AF7B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_238AF654C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_238AFC330(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_238AF657C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238AFC330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238AF65A4(uint64_t a1)
{
  v2 = sub_238AFBCA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238AF65E0(uint64_t a1)
{
  v2 = sub_238AFBCA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238AF66DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x79654B7961727261;
  if (v2 != 1)
  {
    v4 = 0x65756C6176;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7955819;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x79654B7961727261;
  if (*a2 != 1)
  {
    v8 = 0x65756C6176;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7955819;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_238B1C2E4();
  }

  return v11 & 1;
}

uint64_t sub_238AF67D0()
{
  sub_238B1C354();
  sub_238B1BF64();

  return sub_238B1C384();
}

uint64_t sub_238AF6868(uint64_t a1)
{
  sub_238B1BF64();
}

uint64_t sub_238AF68EC(uint64_t a1)
{
  sub_238B1C354();
  sub_238B1BF64();

  return sub_238B1C384();
}

unint64_t sub_238AF6980@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_238AFCF50(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_238AF69B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238AFCF50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238AF69D8(uint64_t a1)
{
  v2 = sub_238AFC878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238AF6A14(uint64_t a1)
{
  v2 = sub_238AFC878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238AF6A50(void *a1, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v22 = a3;
  LODWORD(v23) = a2;
  v9 = a2 >> 8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_238B1C3A4();
  LOBYTE(v25[0]) = v9;
  v26 = 0;
  sub_238AF7B90();
  v15 = v24;
  sub_238B1C1E4();
  if (v15)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v17 = v22;
  v24 = v11;
  LOBYTE(v25[0]) = v23;
  v26 = 1;
  sub_238B1C1E4();
  v26 = 2;
  v23 = v10;
  sub_238B1C1A4();
  v18 = (v17 + 32);
  v19 = *(v17 + 16) + 1;
  v20 = v24;
  while (--v19)
  {
    v21 = v18 + 5;
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    __swift_mutable_project_boxed_opaque_existential_1(v25, v25[3]);
    v20 = v24;
    sub_238B1C2C4();
    v18 = v21;
  }

  (*(v20 + 8))(v14, v23);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_238AF6D70@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t allOf(requirement:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t x8_0@<X8>)
{
  return sub_238AF7084(a1, &type metadata for ProcessConstraintConjunction, sub_238AF6E18, 21, 20, x8_0);
}

{
  return sub_238AF7084(a1, &type metadata for LaunchConstraintConjunction, sub_238AF6E94, 21, 20, x8_0);
}

{
  return sub_238AF7084(a1, &type metadata for OnDiskConstraintConjunction, sub_238AF6F10, 21, 20, x8_0);
}

unint64_t sub_238AF6E18()
{
  result = qword_27DF51540;
  if (!qword_27DF51540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51540);
  }

  return result;
}

unint64_t sub_238AF6E94()
{
  result = qword_27DF51548;
  if (!qword_27DF51548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51548);
  }

  return result;
}

unint64_t sub_238AF6F10()
{
  result = qword_27DF51550;
  if (!qword_27DF51550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51550);
  }

  return result;
}

uint64_t anyOf(requirement:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t x8_0@<X8>)
{
  return sub_238AF7084(a1, &type metadata for ProcessConstraintDisjunction, sub_238AF6F8C, 29, 28, x8_0);
}

{
  return sub_238AF7084(a1, &type metadata for LaunchConstraintDisjunction, sub_238AF7008, 29, 28, x8_0);
}

{
  return sub_238AF7084(a1, &type metadata for OnDiskConstraintDisjunction, sub_238AF70F0, 29, 28, x8_0);
}

unint64_t sub_238AF6F8C()
{
  result = qword_27DF51558;
  if (!qword_27DF51558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51558);
  }

  return result;
}

unint64_t sub_238AF7008()
{
  result = qword_27DF51560;
  if (!qword_27DF51560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51560);
  }

  return result;
}

uint64_t sub_238AF7084@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, char a4@<W4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v11 = a1();
  *(a6 + 24) = a2;
  result = a3();
  *(a6 + 32) = result;
  *a6 = a4;
  *(a6 + 1) = a5;
  *(a6 + 8) = v11;
  return result;
}

unint64_t sub_238AF70F0()
{
  result = qword_2814F2F10;
  if (!qword_2814F2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F2F10);
  }

  return result;
}

void type metadata accessor for CFString()
{
  if (!qword_27DF51568)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DF51568);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_238AF71F0(uint64_t a1, int a2)
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

uint64_t sub_238AF7238(uint64_t result, int a2, int a3)
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

unint64_t sub_238AF7284()
{
  result = qword_27DF51570;
  if (!qword_27DF51570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51570);
  }

  return result;
}

unint64_t sub_238AF72D8()
{
  result = qword_27DF51578;
  if (!qword_27DF51578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51578);
  }

  return result;
}

unint64_t sub_238AF732C()
{
  result = qword_27DF51580;
  if (!qword_27DF51580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51580);
  }

  return result;
}

unint64_t sub_238AF7380()
{
  result = qword_27DF51588;
  if (!qword_27DF51588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51588);
  }

  return result;
}

unint64_t sub_238AF73D4()
{
  result = qword_27DF51590;
  if (!qword_27DF51590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51590);
  }

  return result;
}

unint64_t sub_238AF7428()
{
  result = qword_27DF51598;
  if (!qword_27DF51598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51598);
  }

  return result;
}

unint64_t sub_238AF747C()
{
  result = qword_27DF515A0;
  if (!qword_27DF515A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF515A0);
  }

  return result;
}

unint64_t sub_238AF74D0()
{
  result = qword_27DF515A8;
  if (!qword_27DF515A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF515A8);
  }

  return result;
}

unint64_t sub_238AF7524()
{
  result = qword_27DF515B0;
  if (!qword_27DF515B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF515B0);
  }

  return result;
}

unint64_t sub_238AF7578()
{
  result = qword_27DF515B8;
  if (!qword_27DF515B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF515B8);
  }

  return result;
}

unint64_t sub_238AF75CC()
{
  result = qword_27DF515C0;
  if (!qword_27DF515C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF515C0);
  }

  return result;
}

unint64_t sub_238AF7620()
{
  result = qword_27DF515C8;
  if (!qword_27DF515C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF515C8);
  }

  return result;
}

unint64_t sub_238AF7674()
{
  result = qword_27DF515D0;
  if (!qword_27DF515D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF515D0);
  }

  return result;
}

unint64_t sub_238AF76C8()
{
  result = qword_27DF515D8;
  if (!qword_27DF515D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF515D8);
  }

  return result;
}

unint64_t sub_238AF771C()
{
  result = qword_27DF515E0;
  if (!qword_27DF515E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF515E0);
  }

  return result;
}

unint64_t sub_238AF7770()
{
  result = qword_27DF515E8;
  if (!qword_27DF515E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF515E8);
  }

  return result;
}

unint64_t sub_238AF77C4()
{
  result = qword_2814F2F18;
  if (!qword_2814F2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F2F18);
  }

  return result;
}

unint64_t sub_238AF7818()
{
  result = qword_2814F2F20;
  if (!qword_2814F2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F2F20);
  }

  return result;
}

uint64_t sub_238AF786C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_238B1BEB4();
}

uint64_t sub_238AF79C4(uint64_t a1, uint64_t a2)
{
  sub_238B1C354();
  swift_getWitnessTable();
  sub_238B1BEC4();
  return sub_238B1C384();
}

uint64_t sub_238AF7A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_238AF7B3C()
{
  result = qword_27DF51608;
  if (!qword_27DF51608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51608);
  }

  return result;
}

unint64_t sub_238AF7B90()
{
  result = qword_27DF51610;
  if (!qword_27DF51610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51610);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
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

unint64_t sub_238AF7C80()
{
  result = qword_27DF51620;
  if (!qword_27DF51620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51620);
  }

  return result;
}

char *sub_238AF7CD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238AF7D94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_238AF7CF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238AF7FCC(a1, a2, a3, *v3, &qword_27DF51A18, &qword_238B1CFD8, &qword_27DF51A08, &qword_238B1CFC8);
  *v3 = result;
  return result;
}

void *sub_238AF7D34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238AF7E98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_238AF7D54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238AF7FCC(a1, a2, a3, *v3, &qword_27DF519A8, &qword_238B1CF68, &qword_27DF51978, &qword_238B1E020);
  *v3 = result;
  return result;
}

char *sub_238AF7D94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A40, &qword_238B1D000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_238AF7E98(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519D8, &qword_238B1CF98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519E0, &qword_238B1CFA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_238AF7FCC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_238AF8114@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_238AFD5B4((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_238AF8160(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_238AF8B28(&v45);
  v12 = v46;
  if (!v46)
  {
    goto LABEL_23;
  }

  v13 = v45;
  v43 = v45;
  v44 = v46;
  sub_238AEA2C0(v47, v42);
  v14 = *a5;
  v15 = sub_238AF8850(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_238AF858C(v20, a4 & 1);
    v15 = sub_238AF8850(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = sub_238B1C304();
    __break(1u);
  }

  if (a4)
  {
LABEL_10:
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v26 = v15;
  sub_238AF88C8();
  v15 = v26;
  if (v21)
  {
LABEL_11:
    sub_238AFA0E8();
    v23 = swift_allocError();
    *v24 = 0;
    swift_willThrow();
    v55 = v23;
    MEMORY[0x23EE71E30](v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519E8, &qword_238B1CFA8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v42);
      sub_238AFD580(v48);

      return MEMORY[0x23EE71E20](v55);
    }

    goto LABEL_27;
  }

LABEL_14:
  v27 = *a5;
  *(*a5 + 8 * (v15 >> 6) + 64) |= 1 << v15;
  v28 = (v27[6] + 16 * v15);
  *v28 = v13;
  v28[1] = v12;
  sub_238AEA2C0(v42, v27[7] + 40 * v15);
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    sub_238B1C084();
    MEMORY[0x23EE71710](0xD00000000000001BLL, 0x8000000238B226D0);
    sub_238B1C0B4();
    MEMORY[0x23EE71710](39, 0xE100000000000000);
    result = sub_238B1C0C4();
    __break(1u);
    return result;
  }

  v27[2] = v30;
  sub_238AF8B28(&v45);
  v12 = v46;
  if (v46)
  {
    v21 = 1;
    do
    {
      v13 = v45;
      v43 = v45;
      v44 = v12;
      sub_238AEA2C0(v47, v42);
      v31 = *a5;
      v32 = sub_238AF8850(v13, v12);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v19 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v19)
      {
        goto LABEL_25;
      }

      a4 = v33;
      if (v31[3] < v36)
      {
        sub_238AF858C(v36, 1);
        v32 = sub_238AF8850(v13, v12);
        if ((a4 & 1) != (v37 & 1))
        {
          goto LABEL_8;
        }
      }

      if (a4)
      {
        goto LABEL_11;
      }

      v38 = *a5;
      *(*a5 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v39 = (v38[6] + 16 * v32);
      *v39 = v13;
      v39[1] = v12;
      sub_238AEA2C0(v42, v38[7] + 40 * v32);
      v40 = v38[2];
      v19 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v19)
      {
        goto LABEL_26;
      }

      v38[2] = v41;
      sub_238AF8B28(&v45);
      v12 = v46;
    }

    while (v46);
  }

LABEL_23:
  sub_238AFD580(v48);
}

uint64_t sub_238AF858C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519A0, &qword_238B1CF60);
  v33 = v4;
  result = sub_238B1C0F4();
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_238AEA2C0(v24, v34);
      }

      else
      {
        sub_238AFD5B4(v24, v34);
      }

      sub_238B1C354();
      sub_238B1BF64();
      result = sub_238B1C384();
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
      result = sub_238AEA2C0(v34, *(v7 + 56) + 40 * v15);
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

unint64_t sub_238AF8850(uint64_t a1, uint64_t a2)
{
  sub_238B1C354();
  sub_238B1BF64();
  v4 = sub_238B1C384();

  return sub_238AF8A70(a1, a2, v4);
}

void *sub_238AF88C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519A0, &qword_238B1CF60);
  v2 = *v0;
  v3 = sub_238B1C0E4();
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
        v22 = 40 * v17;
        sub_238AFD5B4(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_238AEA2C0(v25, *(v4 + 56) + v22);
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

unint64_t sub_238AF8A70(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_238B1C2E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_238AF8B28@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_238AFD5B4(*(v3 + 56) + 40 * v13, v21);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_238AEA2C0(v21, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v24;
      v21[2] = v25;
      v22 = v26;
      v20(v21);
      return sub_238AFD7D8(v21, &qword_27DF519F0, &qword_238B1CFB0);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_238AF8CA0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    sub_238AFD5B4(*(a5 + 56) + 40 * a2, result);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_238AF8D30(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_238AF8DDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

unint64_t sub_238AF8E84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519A0, &qword_238B1CF60);
    v3 = sub_238B1C104();
    v4 = a1 + 32;

    while (1)
    {
      sub_238AFD498(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_238AF8850(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_238AEA2C0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_238AF8FA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A30, &qword_238B1CFF0);
    v3 = sub_238B1C104();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_238AF8850(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_238AF90B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A60, &qword_238B1D020);
    v3 = sub_238B1C104();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_238AFD728(v7, v8);
      result = sub_238AF8850(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_238AF91DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A48, &qword_238B1D008);
    v3 = sub_238B1C104();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_238AF8850(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_238AF92D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A50, &qword_238B1D010);
    v3 = sub_238B1C104();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_238AF8850(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_238AF9608(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t *), uint64_t *a4, uint64_t *a5, void (*a6)(void *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  sub_238AEE0E0(a1, a2, a3, a4, a5, a6, &v27);
  if (v7)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  result = swift_dynamicCast();
  if (*(v23 + 16) == 1)
  {
    v9 = 1 << *(v23 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v23 + 64);
    if (v11)
    {
      v12 = __clz(__rbit64(v11));
LABEL_11:
      v17 = (*(v23 + 48) + 16 * v12);
      v19 = *v17;
      v18 = v17[1];
      sub_238AFD5B4(*(v23 + 56) + 40 * v12, v22);
      *&v23 = v19;
      *(&v23 + 1) = v18;
      sub_238AEA2C0(v22, &v24);
    }

    else
    {
      v13 = ((v9 + 63) >> 6) - 1;
      v14 = (v23 + 72);
      while (v13)
      {
        v16 = *v14++;
        v15 = v16;
        --v13;
        v11 -= 64;
        if (v16)
        {
          v12 = __clz(__rbit64(v15)) - v11;
          goto LABEL_11;
        }
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
    }

    v27 = v23;
    v28[0] = v24;
    v28[1] = v25;
    v29 = v26;
    v20 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      v21 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519A8, &qword_238B1CF68);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_238B1C840;
      *(v6 + 56) = MEMORY[0x277D837D0];
      *(v6 + 64) = &off_284B69950;
      *(v6 + 32) = v21;
      *(v6 + 40) = v20;
      sub_238AEA2C0(v28, v6 + 72);

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_238AF9824(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_238B1C104();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_238AF8850(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_238AF9920(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519B0, &unk_238B1CF70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238B1C830;
  *(inited + 32) = sub_238B1A5FC(*(a1 + 16));
  *(inited + 40) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519B8, &unk_238B21CC0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_238B1C830;
  *(v6 + 32) = sub_238B1A5FC(*(a1 + 17));
  *(v6 + 40) = v7;
  swift_beginAccess();
  *(v6 + 48) = *(a1 + 24);

  v8 = sub_238AF9824(v6, &qword_27DF51A00, &qword_238B1CFC0);
  swift_setDeallocating();
  sub_238AFD7D8(v6 + 32, &qword_27DF519C0, &unk_238B1CF80);
  *(inited + 48) = v8;
  sub_238AF9824(inited, &qword_27DF519F8, &qword_238B1CFB8);
  swift_setDeallocating();
  sub_238AFD7D8(inited + 32, &qword_27DF519C8, &qword_238B21CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519D0, &qword_238B1CF90);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
  result = swift_dynamicCast();
  if (*(v14 + 16) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF519A8, &qword_238B1CF68);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_238B1C840;
    v12 = sub_238B1A5FC(v2);
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = &off_284B69950;
    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    *(v11 + 96) = v9;
    *(v11 + 104) = &off_284B699F8;
    *(v11 + 72) = v14;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_238AF9B4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_238B1C124();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_238AF9B98(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51628, &qword_238B1CE58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238AF7C80();
  sub_238B1C394();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  sub_238AFA094();
  sub_238B1C174();
  v30 = LOBYTE(v36[0]);
  if (sub_238B1A5FC(v36[0]) == 1684955428 && v8 == 0xE400000000000000)
  {
  }

  else
  {
    v9 = sub_238B1C2E4();

    if ((v9 & 1) == 0)
    {
LABEL_13:
      sub_238AFA0E8();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();
      (*(v4 + 8))(v7, v3);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  LOBYTE(v35[0]) = 1;
  sub_238B1C174();
  v28 = LOBYTE(v36[0]);
  if (sub_238B1A5FC(v36[0]) != 0x7272612D646E6124 || v10 != 0xEA00000000007961)
  {
    v11 = sub_238B1C2E4();

    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_10:
  LOBYTE(v35[0]) = 2;
  sub_238B1C134();
  v29 = v4;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v12 = sub_238B1C284();
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v29;
  }

  else
  {
    do
    {
      sub_238AEE400(v36, v35);
      sub_238AFD5B4(v35, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_238B14838(0, v13[2] + 1, 1, v13);
        v38 = v13;
      }

      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v13 = sub_238B14838((v18 > 1), v19 + 1, 1, v13);
        v38 = v13;
      }

      __swift_destroy_boxed_opaque_existential_1(v35);
      v21 = v33;
      v20 = v34;
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      v31 = v27;
      MEMORY[0x28223BE20](v22, v22);
      v24 = &v27[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v25 + 16))(v24);
      sub_238AF8DDC(v19, v24, &v38, v21, v20, sub_238AFE0E4);
      __swift_destroy_boxed_opaque_existential_1(v32);
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v26 = sub_238B1C284();
      v14 = v29;
    }

    while ((v26 & 1) == 0);
  }

  (*(v14 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v28 | (v30 << 8);
}

unint64_t sub_238AFA094()
{
  result = qword_27DF51630;
  if (!qword_27DF51630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51630);
  }

  return result;
}

unint64_t sub_238AFA0E8()
{
  result = qword_27DF51638;
  if (!qword_27DF51638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51638);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_238AFA1A0()
{
  result = qword_27DF51640;
  if (!qword_27DF51640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51640);
  }

  return result;
}

unint64_t sub_238AFA1F4()
{
  result = qword_27DF51650;
  if (!qword_27DF51650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51650);
  }

  return result;
}

unint64_t sub_238AFA248()
{
  result = qword_27DF51660;
  if (!qword_27DF51660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51660);
  }

  return result;
}

unint64_t sub_238AFA29C()
{
  result = qword_27DF51668;
  if (!qword_27DF51668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51668);
  }

  return result;
}

unint64_t sub_238AFA2F0()
{
  result = qword_27DF51680;
  if (!qword_27DF51680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51680);
  }

  return result;
}

unint64_t sub_238AFA344()
{
  result = qword_27DF51690;
  if (!qword_27DF51690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51690);
  }

  return result;
}

unint64_t sub_238AFA398()
{
  result = qword_27DF516A0;
  if (!qword_27DF516A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF516A0);
  }

  return result;
}

unint64_t sub_238AFA3EC()
{
  result = qword_27DF516B0;
  if (!qword_27DF516B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF516B0);
  }

  return result;
}

unint64_t sub_238AFA440()
{
  result = qword_27DF516C0;
  if (!qword_27DF516C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF516C0);
  }

  return result;
}

unint64_t sub_238AFA494()
{
  result = qword_27DF516D0;
  if (!qword_27DF516D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF516D0);
  }

  return result;
}

unint64_t sub_238AFA4E8()
{
  result = qword_27DF516E0;
  if (!qword_27DF516E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF516E0);
  }

  return result;
}

unint64_t sub_238AFA53C()
{
  result = qword_27DF516F0;
  if (!qword_27DF516F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF516F0);
  }

  return result;
}

unint64_t sub_238AFA590()
{
  result = qword_27DF51700;
  if (!qword_27DF51700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51700);
  }

  return result;
}

unint64_t sub_238AFA5E4()
{
  result = qword_27DF51710;
  if (!qword_27DF51710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51710);
  }

  return result;
}

unint64_t sub_238AFA638()
{
  result = qword_2814F3108;
  if (!qword_2814F3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F3108);
  }

  return result;
}

unint64_t sub_238AFA68C()
{
  result = qword_27DF51728;
  if (!qword_27DF51728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51728);
  }

  return result;
}

unint64_t sub_238AFA6E0()
{
  result = qword_2814F2FB8;
  if (!qword_2814F2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F2FB8);
  }

  return result;
}

unint64_t sub_238AFA734()
{
  result = qword_27DF51740;
  if (!qword_27DF51740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51740);
  }

  return result;
}

unint64_t sub_238AFA788()
{
  result = qword_27DF51748;
  if (!qword_27DF51748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51748);
  }

  return result;
}

unint64_t sub_238AFA7DC()
{
  result = qword_27DF51750;
  if (!qword_27DF51750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51750);
  }

  return result;
}

unint64_t sub_238AFA830()
{
  result = qword_27DF51758;
  if (!qword_27DF51758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51758);
  }

  return result;
}

unint64_t sub_238AFA884()
{
  result = qword_27DF51760;
  if (!qword_27DF51760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51760);
  }

  return result;
}

unint64_t sub_238AFA8D8()
{
  result = qword_27DF51768;
  if (!qword_27DF51768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51768);
  }

  return result;
}

unint64_t sub_238AFA92C()
{
  result = qword_27DF51770;
  if (!qword_27DF51770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51770);
  }

  return result;
}

unint64_t sub_238AFA980()
{
  result = qword_27DF51778;
  if (!qword_27DF51778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51778);
  }

  return result;
}

unint64_t sub_238AFA9D4()
{
  result = qword_27DF51780;
  if (!qword_27DF51780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51780);
  }

  return result;
}

unint64_t sub_238AFAA28()
{
  result = qword_27DF51788;
  if (!qword_27DF51788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51788);
  }

  return result;
}

unint64_t sub_238AFAA7C()
{
  result = qword_27DF51790;
  if (!qword_27DF51790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51790);
  }

  return result;
}

unint64_t sub_238AFAAD0()
{
  result = qword_27DF51798;
  if (!qword_27DF51798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51798);
  }

  return result;
}

unint64_t sub_238AFAB24()
{
  result = qword_27DF517A0;
  if (!qword_27DF517A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF517A0);
  }

  return result;
}

unint64_t sub_238AFAB78()
{
  result = qword_27DF517B0;
  if (!qword_27DF517B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF517B0);
  }

  return result;
}

unint64_t sub_238AFABCC()
{
  result = qword_27DF517B8;
  if (!qword_27DF517B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF517B8);
  }

  return result;
}

unint64_t sub_238AFAC20()
{
  result = qword_27DF517C0;
  if (!qword_27DF517C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF517C0);
  }

  return result;
}

unint64_t sub_238AFAC74()
{
  result = qword_27DF517C8;
  if (!qword_27DF517C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF517C8);
  }

  return result;
}

unint64_t sub_238AFACC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_238B1C124();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_238AFAD14(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF517F8, &qword_238B1CEF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238AFBCF4();
  sub_238B1C394();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  sub_238AFA094();
  sub_238B1C174();
  v30 = LOBYTE(v36[0]);
  if (sub_238B1A5FC(v36[0]) == 1684955428 && v8 == 0xE400000000000000)
  {
  }

  else
  {
    v9 = sub_238B1C2E4();

    if ((v9 & 1) == 0)
    {
LABEL_13:
      sub_238AFA0E8();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();
      (*(v4 + 8))(v7, v3);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  LOBYTE(v35[0]) = 1;
  sub_238B1C174();
  v28 = LOBYTE(v36[0]);
  if (sub_238B1A5FC(v36[0]) != 0x7272612D646E6124 || v10 != 0xEA00000000007961)
  {
    v11 = sub_238B1C2E4();

    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_10:
  LOBYTE(v35[0]) = 2;
  sub_238B1C134();
  v29 = v4;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v12 = sub_238B1C284();
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v29;
  }

  else
  {
    do
    {
      sub_238AEF0A4(v36, v35);
      sub_238AFD5B4(v35, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_238B14958(0, v13[2] + 1, 1, v13);
        v38 = v13;
      }

      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v13 = sub_238B14958((v18 > 1), v19 + 1, 1, v13);
        v38 = v13;
      }

      __swift_destroy_boxed_opaque_existential_1(v35);
      v21 = v33;
      v20 = v34;
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      v31 = v27;
      MEMORY[0x28223BE20](v22, v22);
      v24 = &v27[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v25 + 16))(v24);
      sub_238AF8DDC(v19, v24, &v38, v21, v20, sub_238AFE0E4);
      __swift_destroy_boxed_opaque_existential_1(v32);
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v26 = sub_238B1C284();
      v14 = v29;
    }

    while ((v26 & 1) == 0);
  }

  (*(v14 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v28 | (v30 << 8);
}

unint64_t sub_238AFB210(uint64_t a1, uint64_t a2)
{
  v2 = sub_238B1C124();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_238AFB25C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF518C8, &qword_238B1CF20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238AFC8CC();
  sub_238B1C394();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  sub_238AFA094();
  sub_238B1C174();
  v30 = LOBYTE(v36[0]);
  if (sub_238B1A5FC(v36[0]) == 1684955428 && v8 == 0xE400000000000000)
  {
  }

  else
  {
    v9 = sub_238B1C2E4();

    if ((v9 & 1) == 0)
    {
LABEL_13:
      sub_238AFA0E8();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();
      (*(v4 + 8))(v7, v3);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  LOBYTE(v35[0]) = 1;
  sub_238B1C174();
  v28 = LOBYTE(v36[0]);
  if (sub_238B1A5FC(v36[0]) != 0x7272612D646E6124 || v10 != 0xEA00000000007961)
  {
    v11 = sub_238B1C2E4();

    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_10:
  LOBYTE(v35[0]) = 2;
  sub_238B1C134();
  v29 = v4;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v12 = sub_238B1C284();
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v29;
  }

  else
  {
    do
    {
      sub_238AEFD48(v36, v35);
      sub_238AFD5B4(v35, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_238B1497C(0, v13[2] + 1, 1, v13);
        v38 = v13;
      }

      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v13 = sub_238B1497C((v18 > 1), v19 + 1, 1, v13);
        v38 = v13;
      }

      __swift_destroy_boxed_opaque_existential_1(v35);
      v21 = v33;
      v20 = v34;
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      v31 = v27;
      MEMORY[0x28223BE20](v22, v22);
      v24 = &v27[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v25 + 16))(v24);
      sub_238AF8DDC(v19, v24, &v38, v21, v20, sub_238AFE0E4);
      __swift_destroy_boxed_opaque_existential_1(v32);
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v26 = sub_238B1C284();
      v14 = v29;
    }

    while ((v26 & 1) == 0);
  }

  (*(v14 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v28 | (v30 << 8);
}

unint64_t sub_238AFB758(uint64_t a1, uint64_t a2)
{
  v2 = sub_238B1C124();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_238AFB7A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF517D0, &qword_238B1CEE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238AF7B3C();
  sub_238B1C394();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  sub_238AFA094();
  sub_238B1C174();
  v30 = LOBYTE(v36[0]);
  if (sub_238B1A5FC(v36[0]) == 7499556 && v8 == 0xE300000000000000)
  {
  }

  else
  {
    v9 = sub_238B1C2E4();

    if ((v9 & 1) == 0)
    {
LABEL_13:
      sub_238AFA0E8();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();
      (*(v4 + 8))(v7, v3);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  LOBYTE(v35[0]) = 1;
  sub_238B1C174();
  v28 = LOBYTE(v36[0]);
  if (sub_238B1A5FC(v36[0]) != 0x617272612D726F24 || v10 != 0xE900000000000079)
  {
    v11 = sub_238B1C2E4();

    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_10:
  LOBYTE(v35[0]) = 2;
  sub_238B1C134();
  v29 = v4;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v12 = sub_238B1C284();
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v29;
  }

  else
  {
    do
    {
      sub_238AEE400(v36, v35);
      sub_238AFD5B4(v35, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_238B14838(0, v13[2] + 1, 1, v13);
        v38 = v13;
      }

      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v13 = sub_238B14838((v18 > 1), v19 + 1, 1, v13);
        v38 = v13;
      }

      __swift_destroy_boxed_opaque_existential_1(v35);
      v21 = v33;
      v20 = v34;
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      v31 = v27;
      MEMORY[0x28223BE20](v22, v22);
      v24 = &v27[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v25 + 16))(v24);
      sub_238AF8DDC(v19, v24, &v38, v21, v20, sub_238AFE0E4);
      __swift_destroy_boxed_opaque_existential_1(v32);
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v26 = sub_238B1C284();
      v14 = v29;
    }

    while ((v26 & 1) == 0);
  }

  (*(v14 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v28 | (v30 << 8);
}

unint64_t sub_238AFBCA0()
{
  result = qword_27DF517E0;
  if (!qword_27DF517E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF517E0);
  }

  return result;
}

unint64_t sub_238AFBCF4()
{
  result = qword_27DF517F0;
  if (!qword_27DF517F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF517F0);
  }

  return result;
}

unint64_t sub_238AFBD48()
{
  result = qword_27DF51800;
  if (!qword_27DF51800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51800);
  }

  return result;
}

unint64_t sub_238AFBD9C()
{
  result = qword_27DF51810;
  if (!qword_27DF51810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51810);
  }

  return result;
}

unint64_t sub_238AFBDF0()
{
  result = qword_27DF51818;
  if (!qword_27DF51818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51818);
  }

  return result;
}

unint64_t sub_238AFBE44()
{
  result = qword_27DF51820;
  if (!qword_27DF51820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51820);
  }

  return result;
}

unint64_t sub_238AFBE98()
{
  result = qword_27DF51828;
  if (!qword_27DF51828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51828);
  }

  return result;
}

unint64_t sub_238AFBEEC()
{
  result = qword_27DF51830;
  if (!qword_27DF51830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51830);
  }

  return result;
}

unint64_t sub_238AFBF40()
{
  result = qword_27DF51838;
  if (!qword_27DF51838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51838);
  }

  return result;
}

unint64_t sub_238AFBF94()
{
  result = qword_27DF51840;
  if (!qword_27DF51840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51840);
  }

  return result;
}

unint64_t sub_238AFBFE8()
{
  result = qword_27DF51848;
  if (!qword_27DF51848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51848);
  }

  return result;
}

unint64_t sub_238AFC03C()
{
  result = qword_27DF51850;
  if (!qword_27DF51850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51850);
  }

  return result;
}

unint64_t sub_238AFC090()
{
  result = qword_27DF51858;
  if (!qword_27DF51858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51858);
  }

  return result;
}

unint64_t sub_238AFC0E4()
{
  result = qword_27DF51860;
  if (!qword_27DF51860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51860);
  }

  return result;
}

unint64_t sub_238AFC138()
{
  result = qword_27DF51868;
  if (!qword_27DF51868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51868);
  }

  return result;
}

unint64_t sub_238AFC18C()
{
  result = qword_27DF51870;
  if (!qword_27DF51870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51870);
  }

  return result;
}

unint64_t sub_238AFC1E0()
{
  result = qword_27DF51880;
  if (!qword_27DF51880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51880);
  }

  return result;
}

unint64_t sub_238AFC234()
{
  result = qword_27DF51888;
  if (!qword_27DF51888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51888);
  }

  return result;
}

unint64_t sub_238AFC288()
{
  result = qword_27DF51890;
  if (!qword_27DF51890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51890);
  }

  return result;
}

unint64_t sub_238AFC2DC()
{
  result = qword_27DF51898;
  if (!qword_27DF51898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51898);
  }

  return result;
}

unint64_t sub_238AFC330(uint64_t a1, uint64_t a2)
{
  v2 = sub_238B1C124();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_238AFC37C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF518A0, &qword_238B1CF08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238AFBCA0();
  sub_238B1C394();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  sub_238AFA094();
  sub_238B1C174();
  v30 = LOBYTE(v36[0]);
  if (sub_238B1A5FC(v36[0]) == 7499556 && v8 == 0xE300000000000000)
  {
  }

  else
  {
    v9 = sub_238B1C2E4();

    if ((v9 & 1) == 0)
    {
LABEL_13:
      sub_238AFA0E8();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();
      (*(v4 + 8))(v7, v3);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  LOBYTE(v35[0]) = 1;
  sub_238B1C174();
  v28 = LOBYTE(v36[0]);
  if (sub_238B1A5FC(v36[0]) != 0x617272612D726F24 || v10 != 0xE900000000000079)
  {
    v11 = sub_238B1C2E4();

    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_10:
  LOBYTE(v35[0]) = 2;
  sub_238B1C134();
  v29 = v4;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v12 = sub_238B1C284();
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v29;
  }

  else
  {
    do
    {
      sub_238AEF0A4(v36, v35);
      sub_238AFD5B4(v35, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_238B14958(0, v13[2] + 1, 1, v13);
        v38 = v13;
      }

      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v13 = sub_238B14958((v18 > 1), v19 + 1, 1, v13);
        v38 = v13;
      }

      __swift_destroy_boxed_opaque_existential_1(v35);
      v21 = v33;
      v20 = v34;
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      v31 = v27;
      MEMORY[0x28223BE20](v22, v22);
      v24 = &v27[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v25 + 16))(v24);
      sub_238AF8DDC(v19, v24, &v38, v21, v20, sub_238AFE0E4);
      __swift_destroy_boxed_opaque_existential_1(v32);
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v26 = sub_238B1C284();
      v14 = v29;
    }

    while ((v26 & 1) == 0);
  }

  (*(v14 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v28 | (v30 << 8);
}

unint64_t sub_238AFC878()
{
  result = qword_27DF518B0;
  if (!qword_27DF518B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF518B0);
  }

  return result;
}

unint64_t sub_238AFC8CC()
{
  result = qword_27DF518C0;
  if (!qword_27DF518C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF518C0);
  }

  return result;
}

unint64_t sub_238AFC920()
{
  result = qword_27DF518D0;
  if (!qword_27DF518D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF518D0);
  }

  return result;
}

unint64_t sub_238AFC974()
{
  result = qword_27DF518D8;
  if (!qword_27DF518D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF518D8);
  }

  return result;
}

unint64_t sub_238AFC9C8()
{
  result = qword_27DF518E8;
  if (!qword_27DF518E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF518E8);
  }

  return result;
}

unint64_t sub_238AFCA1C()
{
  result = qword_27DF518F0;
  if (!qword_27DF518F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF518F0);
  }

  return result;
}

unint64_t sub_238AFCA70()
{
  result = qword_27DF518F8;
  if (!qword_27DF518F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF518F8);
  }

  return result;
}

unint64_t sub_238AFCAC4()
{
  result = qword_27DF51900;
  if (!qword_27DF51900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51900);
  }

  return result;
}

unint64_t sub_238AFCB18()
{
  result = qword_27DF51908;
  if (!qword_27DF51908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51908);
  }

  return result;
}

unint64_t sub_238AFCB6C()
{
  result = qword_27DF51910;
  if (!qword_27DF51910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51910);
  }

  return result;
}

unint64_t sub_238AFCBC0()
{
  result = qword_27DF51918;
  if (!qword_27DF51918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51918);
  }

  return result;
}

unint64_t sub_238AFCC14()
{
  result = qword_27DF51920;
  if (!qword_27DF51920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51920);
  }

  return result;
}

unint64_t sub_238AFCC68()
{
  result = qword_27DF51928;
  if (!qword_27DF51928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51928);
  }

  return result;
}

unint64_t sub_238AFCCBC()
{
  result = qword_27DF51930;
  if (!qword_27DF51930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51930);
  }

  return result;
}

unint64_t sub_238AFCD10()
{
  result = qword_27DF51938;
  if (!qword_27DF51938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51938);
  }

  return result;
}

unint64_t sub_238AFCD64()
{
  result = qword_27DF51940;
  if (!qword_27DF51940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51940);
  }

  return result;
}

uint64_t sub_238AFCDB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_238AFCE00()
{
  result = qword_27DF51950;
  if (!qword_27DF51950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51950);
  }

  return result;
}

unint64_t sub_238AFCE54()
{
  result = qword_27DF51958;
  if (!qword_27DF51958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51958);
  }

  return result;
}

unint64_t sub_238AFCEA8()
{
  result = qword_27DF51960;
  if (!qword_27DF51960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51960);
  }

  return result;
}

unint64_t sub_238AFCEFC()
{
  result = qword_27DF51968;
  if (!qword_27DF51968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51968);
  }

  return result;
}

unint64_t sub_238AFCF50(uint64_t a1, uint64_t a2)
{
  v2 = sub_238B1C124();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_238AFCF9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51970, &unk_238B1CF30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238AFC878();
  sub_238B1C394();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  sub_238AFA094();
  sub_238B1C174();
  v30 = LOBYTE(v36[0]);
  if (sub_238B1A5FC(v36[0]) == 7499556 && v8 == 0xE300000000000000)
  {
  }

  else
  {
    v9 = sub_238B1C2E4();

    if ((v9 & 1) == 0)
    {
LABEL_13:
      sub_238AFA0E8();
      swift_allocError();
      *v16 = 1;
      swift_willThrow();
      (*(v4 + 8))(v7, v3);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  LOBYTE(v35[0]) = 1;
  sub_238B1C174();
  v28 = LOBYTE(v36[0]);
  if (sub_238B1A5FC(v36[0]) != 0x617272612D726F24 || v10 != 0xE900000000000079)
  {
    v11 = sub_238B1C2E4();

    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_10:
  LOBYTE(v35[0]) = 2;
  sub_238B1C134();
  v29 = v4;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v12 = sub_238B1C284();
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v29;
  }

  else
  {
    do
    {
      sub_238AEFD48(v36, v35);
      sub_238AFD5B4(v35, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_238B1497C(0, v13[2] + 1, 1, v13);
        v38 = v13;
      }

      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v13 = sub_238B1497C((v18 > 1), v19 + 1, 1, v13);
        v38 = v13;
      }

      __swift_destroy_boxed_opaque_existential_1(v35);
      v21 = v33;
      v20 = v34;
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      v31 = v27;
      MEMORY[0x28223BE20](v22, v22);
      v24 = &v27[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v25 + 16))(v24);
      sub_238AF8DDC(v19, v24, &v38, v21, v20, sub_238AFE0E4);
      __swift_destroy_boxed_opaque_existential_1(v32);
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v26 = sub_238B1C284();
      v14 = v29;
    }

    while ((v26 & 1) == 0);
  }

  (*(v14 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v28 | (v30 << 8);
}

uint64_t sub_238AFD498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51998, &qword_238B1CF58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238AFD534@<X0>(unsigned __int16 *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(*a1, *(a1 + 1));
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_238AFD5B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_238AFD6E0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_238AF9920(*a1, *(*(v3 + 16) + 1));
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_238AFD728(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_238AFD7D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_238AFD89C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_238AFD92C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_238AFD9F0()
{
  result = qword_27DF51AA0;
  if (!qword_27DF51AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51AA0);
  }

  return result;
}

unint64_t sub_238AFDA48()
{
  result = qword_27DF51AA8;
  if (!qword_27DF51AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51AA8);
  }

  return result;
}

unint64_t sub_238AFDAA0()
{
  result = qword_27DF51AB0;
  if (!qword_27DF51AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51AB0);
  }

  return result;
}

unint64_t sub_238AFDAF8()
{
  result = qword_27DF51AB8;
  if (!qword_27DF51AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51AB8);
  }

  return result;
}

unint64_t sub_238AFDB50()
{
  result = qword_27DF51AC0;
  if (!qword_27DF51AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51AC0);
  }

  return result;
}

unint64_t sub_238AFDBA8()
{
  result = qword_27DF51AC8;
  if (!qword_27DF51AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51AC8);
  }

  return result;
}

unint64_t sub_238AFDC00()
{
  result = qword_27DF51AD0;
  if (!qword_27DF51AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51AD0);
  }

  return result;
}

unint64_t sub_238AFDC58()
{
  result = qword_27DF51AD8;
  if (!qword_27DF51AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51AD8);
  }

  return result;
}

unint64_t sub_238AFDCB0()
{
  result = qword_27DF51AE0;
  if (!qword_27DF51AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51AE0);
  }

  return result;
}

unint64_t sub_238AFDD08()
{
  result = qword_27DF51AE8;
  if (!qword_27DF51AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51AE8);
  }

  return result;
}

unint64_t sub_238AFDD60()
{
  result = qword_27DF51AF0;
  if (!qword_27DF51AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51AF0);
  }

  return result;
}

unint64_t sub_238AFDDB8()
{
  result = qword_27DF51AF8;
  if (!qword_27DF51AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51AF8);
  }

  return result;
}

unint64_t sub_238AFDE10()
{
  result = qword_27DF51B00;
  if (!qword_27DF51B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B00);
  }

  return result;
}

unint64_t sub_238AFDE68()
{
  result = qword_27DF51B08;
  if (!qword_27DF51B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B08);
  }

  return result;
}

unint64_t sub_238AFDEC0()
{
  result = qword_27DF51B10;
  if (!qword_27DF51B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B10);
  }

  return result;
}

unint64_t sub_238AFDF18()
{
  result = qword_27DF51B18;
  if (!qword_27DF51B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B18);
  }

  return result;
}

unint64_t sub_238AFDF70()
{
  result = qword_27DF51B20;
  if (!qword_27DF51B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B20);
  }

  return result;
}

unint64_t sub_238AFDFC8()
{
  result = qword_27DF51B28;
  if (!qword_27DF51B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B28);
  }

  return result;
}

uint64_t sub_238AFE12C()
{
  v1 = [v0 dictionary];
  if (v1)
  {
    v2 = v1;
    v3 = sub_238B1BF14();

    v4 = sub_238B1A954(v3);

    if (v4[2])
    {
      v5 = sub_238AF8850(1936811378, 0xE400000000000000);
      if (v6)
      {
        sub_238AFD5B4(v4[7] + 40 * v5, v9);

        sub_238AEA2C0(v9, v10);
        sub_238AEA2C0(v10, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51980, &qword_238B1CF40);
        swift_dynamicCast();
        return v8;
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_238AFE274(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr, void, uint64_t), uint64_t a4, void (*a5)(_OWORD *__return_ptr, void, void))
{
  sub_238B04290(a1, v14);
  if (swift_dynamicCast())
  {
    a3(v14, LOWORD(v13[0]), *(&v13[0] + 1));
    if (v5)
    {

      return a5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C08, &qword_238B1E028);
    swift_dynamicCast();
    a5 = *&v13[0];
    if (!*(*&v13[0] + 16) || (v10 = sub_238AF8850(1684955428, 0xE400000000000000), (v11 & 1) == 0))
    {

      memset(v14, 0, 32);
      sub_238B042FC(v14);
      return a5;
    }

    sub_238B04290(*(*&v13[0] + 56) + 32 * v10, v14);
    result = sub_238B042FC(v14);
    if (*(*&v13[0] + 16))
    {
      result = sub_238AF8850(1684955428, 0xE400000000000000);
      if (v12)
      {
        sub_238B04290(*(*&v13[0] + 56) + 32 * result, v13);

        sub_238B042EC(v13, v14);
        swift_dynamicCast();
        return v15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_238B04290(a1, v14);
    result = swift_dynamicCast();
    if (result)
    {
      a5(v14, LOWORD(v13[0]), *(&v13[0] + 1));

      if (!v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51978, &qword_238B1E020);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C08, &qword_238B1E028);
        swift_dynamicCast();
        return *&v13[0];
      }

      return a5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238AFE4DC(uint64_t a1, uint64_t a2)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  sub_238AFE710(a2);
  v5 = sub_238B1BF04();

  v14[0] = 0;
  v6 = [v4 withVersion:1 withConstraintCategory:a1 withRequirements:v5 withError:v14];

  if (v6)
  {
    v7 = v14[0];
    v8 = [v6 externalRepresentation];
    v9 = sub_238B1BEA4();

    return v9;
  }

  else
  {
    v11 = v14[0];
    sub_238B1BE84();

    swift_willThrow();
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_238B1C084();
    MEMORY[0x23EE71710](0xD000000000000028, 0x8000000238B22740);
    v12 = sub_238B1C214();
    MEMORY[0x23EE71710](v12);

    MEMORY[0x23EE71710](0x203A7463696420, 0xE700000000000000);
    v13 = sub_238B1BF24();
    MEMORY[0x23EE71710](v13);

    result = sub_238B1C0C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_238AFE710(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51C00, &qword_238B1E018);
    v2 = sub_238B1C104();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_238B04290(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_238B042EC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_238B042EC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_238B042EC(v31, v32);
    result = sub_238B1C074();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_238B042EC(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t ProcessCodeRequirement.dictionaryEncoding.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v7[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
  v5 = sub_238AFE274(v7, &type metadata for ProcessConstraintConjunction, sub_238AEE090, &type metadata for ProcessConstraintDisjunction, sub_238AEE040);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t ProcessCodeRequirement.dataEncoding.getter()
{
  v1 = *(v0 + 40);
  sub_238AFD728(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_238AFEB60@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, char a4@<W4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v12 = a1();
  *(a6 + 24) = a2;
  *(a6 + 32) = a3();
  *a6 = a4;
  *(a6 + 1) = a5;
  *(a6 + 8) = v12;
  LOBYTE(v18[0]) = a4;
  BYTE1(v18[0]) = a5;
  v18[3] = a2;
  v18[1] = v12;

  v13 = sub_238AFE274(v18, &type metadata for ProcessConstraintConjunction, sub_238AEE090, &type metadata for ProcessConstraintDisjunction, sub_238AEE040);
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a6);
  }

  v15 = sub_238AFE4DC(0, v13);
  v17 = v16;

  *(a6 + 40) = v15;
  *(a6 + 48) = v17;
  return result;
}

uint64_t ProcessCodeRequirement.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_238AFA0E8();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    return sub_238AFEF2C(a1);
  }

  sub_238AFD5B4(a1 + 24, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
  if (swift_dynamicCast())
  {
    sub_238AF0950(v24, v25);
    if (v2)
    {
      return sub_238AFEF2C(a1);
    }

    v9 = v8;
    v10 = v7 >> 8;
    *(&v28 + 1) = &type metadata for ProcessConstraintConjunction;
    v11 = v7;
    v12 = sub_238AF6E18();
    LOBYTE(v27) = v11;
    BYTE1(v27) = v10;
    *&v29 = v12;
    *(&v27 + 1) = v9;
    LOBYTE(v24) = v11;
    BYTE1(v24) = v10;
    v26 = &type metadata for ProcessConstraintConjunction;
    v25 = v9;

    goto LABEL_10;
  }

  sub_238AFD5B4(a1 + 24, &v27);
  result = swift_dynamicCast();
  if (result)
  {
    sub_238AF0FB4(v24, v25);
    if (v2)
    {
      return sub_238AFEF2C(a1);
    }

    v15 = v14;
    v16 = v13 >> 8;
    *(&v28 + 1) = &type metadata for ProcessConstraintDisjunction;
    v17 = v13;
    v18 = sub_238AF6F8C();
    LOBYTE(v27) = v17;
    BYTE1(v27) = v16;
    *&v29 = v18;
    *(&v27 + 1) = v15;
    LOBYTE(v24) = v17;
    BYTE1(v24) = v16;
    v26 = &type metadata for ProcessConstraintDisjunction;
    v25 = v15;

LABEL_10:
    v19 = sub_238AFE274(&v24, &type metadata for ProcessConstraintConjunction, sub_238AEE090, &type metadata for ProcessConstraintDisjunction, sub_238AEE040);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v20 = sub_238AFE4DC(0, v19);
    v22 = v21;

    result = sub_238AFEF2C(a1);
    *(&v29 + 1) = v20;
    *(a2 + 48) = v22;
    v23 = v28;
    *a2 = v27;
    *(a2 + 16) = v23;
    *(a2 + 32) = v29;
    return result;
  }

  __break(1u);
  return result;
}

{
  sub_238AFD5B4(a1 + 16, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
  if (swift_dynamicCast())
  {
    sub_238AF1618(v23, v24);
    if (!v2)
    {
      v7 = v6;
      v8 = v5 >> 8;
      *(&v27 + 1) = &type metadata for ProcessConstraintConjunction;
      v9 = v5;
      v10 = sub_238AF6E18();
      LOBYTE(v26) = v9;
      BYTE1(v26) = v8;
      *&v28 = v10;
      *(&v26 + 1) = v7;
      LOBYTE(v23) = v9;
      BYTE1(v23) = v8;
      v25 = &type metadata for ProcessConstraintConjunction;
      v24 = v7;

LABEL_8:
      v18 = sub_238AFE274(&v23, &type metadata for ProcessConstraintConjunction, sub_238AEE090, &type metadata for ProcessConstraintDisjunction, sub_238AEE040);
      __swift_destroy_boxed_opaque_existential_1(&v23);
      v19 = sub_238AFE4DC(0, v18);
      v21 = v20;

      result = sub_238AFF1D0(a1);
      *(&v28 + 1) = v19;
      *(a2 + 48) = v21;
      v22 = v27;
      *a2 = v26;
      *(a2 + 16) = v22;
      *(a2 + 32) = v28;
      return result;
    }

    return sub_238AFF1D0(a1);
  }

  sub_238AFD5B4(a1 + 16, &v26);
  result = swift_dynamicCast();
  if (result)
  {
    sub_238AF1D98(v23, v24);
    if (!v2)
    {
      v14 = v13;
      v15 = v12 >> 8;
      *(&v27 + 1) = &type metadata for ProcessConstraintDisjunction;
      v16 = v12;
      v17 = sub_238AF6F8C();
      LOBYTE(v26) = v16;
      BYTE1(v26) = v15;
      *&v28 = v17;
      *(&v26 + 1) = v14;
      LOBYTE(v23) = v16;
      BYTE1(v23) = v15;
      v25 = &type metadata for ProcessConstraintDisjunction;
      v24 = v14;

      goto LABEL_8;
    }

    return sub_238AFF1D0(a1);
  }

  __break(1u);
  return result;
}

{
  v4 = sub_238B1A954(a1);
  if (v2)
  {
  }

  v5 = v4;

  sub_238B06850(v5, v21);

  sub_238AFD5B4(v21, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
  if (swift_dynamicCast())
  {
    *(&v19 + 1) = &type metadata for ProcessConstraintConjunction;
    v7 = sub_238AF6E18();
    LOWORD(v18) = v15;
    *&v20 = v7;
    *(&v18 + 1) = v16;
    v17 = &type metadata for ProcessConstraintConjunction;

LABEL_8:
    v9 = sub_238AFE274(&v15, &type metadata for ProcessConstraintConjunction, sub_238AEE090, &type metadata for ProcessConstraintDisjunction, sub_238AEE040);
    __swift_destroy_boxed_opaque_existential_1(&v15);
    v10 = sub_238AFE4DC(0, v9);
    v12 = v11;

    result = __swift_destroy_boxed_opaque_existential_1(v21);
    *(&v20 + 1) = v10;
    *(a2 + 48) = v12;
    v13 = v19;
    *a2 = v18;
    *(a2 + 16) = v13;
    *(a2 + 32) = v20;
    return result;
  }

  sub_238AFD5B4(v21, &v18);
  if (swift_dynamicCast())
  {
    *(&v19 + 1) = &type metadata for ProcessConstraintDisjunction;
    v8 = sub_238AF6F8C();
    LOWORD(v18) = v15;
    *&v20 = v8;
    *(&v18 + 1) = v16;
    v17 = &type metadata for ProcessConstraintDisjunction;

    goto LABEL_8;
  }

  sub_238AFA0E8();
  swift_allocError();
  *v14 = 1;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_238AFF228@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_238B1C124();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_238AFF280(uint64_t a1)
{
  v2 = sub_238AFF4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238AFF2BC(uint64_t a1)
{
  v2 = sub_238AFF4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProcessCodeRequirement.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51B30, &unk_238B1D7F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238AFF4EC();
  sub_238B1C3A4();
  sub_238AFD5B4(v2, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
  if (swift_dynamicCast())
  {
    v13 = v11;
    v14 = v12;
    sub_238AF7380();
LABEL_5:
    sub_238B1C1E4();
    (*(v5 + 8))(v8, v4);
  }

  sub_238AFD5B4(v2, &v13);
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v11;
    v14 = v12;
    sub_238AF76C8();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_238AFF4EC()
{
  result = qword_27DF51B38;
  if (!qword_27DF51B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF51B38);
  }

  return result;
}

uint64_t ProcessCodeRequirement.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51B40, &qword_238B1D800);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238AFF4EC();
  sub_238B1C394();
  if (!v2)
  {
    sub_238AF732C();
    sub_238B1C174();
    v30 = a2;
    v11 = v23;
    v12 = BYTE1(v23);
    v13 = *(&v23 + 1);
    *(&v24 + 1) = &type metadata for ProcessConstraintConjunction;
    v14 = sub_238AF6E18();
    LOBYTE(v23) = v11;
    BYTE1(v23) = v12;
    *&v25 = v14;
    *(&v23 + 1) = v13;
    LOBYTE(v22[0]) = v11;
    BYTE1(v22[0]) = v12;
    v22[3] = &type metadata for ProcessConstraintConjunction;
    v22[1] = v13;

    v15 = sub_238AFE274(v22, &type metadata for ProcessConstraintConjunction, sub_238AEE090, &type metadata for ProcessConstraintDisjunction, sub_238AEE040);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v16 = sub_238AFE4DC(0, v15);
    v18 = v17;

    (*(v6 + 8))(v9, v5);
    *(&v25 + 1) = v16;
    v29 = v18;
    v26 = v23;
    v27 = v24;
    v28 = v25;
    v19 = v24;
    v20 = v30;
    *v30 = v23;
    v20[1] = v19;
    v20[2] = v28;
    *(v20 + 6) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void ProcessCodeRequirement.init(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v7 = objc_opt_self();
  v8 = sub_238B1BE94();
  *&v27 = 0;
  v9 = [v7 withData:v8 withError:&v27];

  if (!v9)
  {
    v12 = v27;
    sub_238B1BE84();

    swift_willThrow();
    sub_238AFFCFC(a1, a2);
    return;
  }

  v10 = v27;
  if (![v9 hasRequirements])
  {
    sub_238AFA0E8();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    sub_238AFFCFC(a1, a2);

    return;
  }

  v11 = sub_238AFE12C();
  sub_238B06850(v11, v30);
  if (v3)
  {

    sub_238AFFCFC(a1, a2);

    return;
  }

  sub_238AFD5B4(v30, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
  if (swift_dynamicCast())
  {
    *(&v28 + 1) = &type metadata for ProcessConstraintConjunction;
    v14 = sub_238AF6E18();
    LOWORD(v27) = v24;
    *&v29 = v14;
    *(&v27 + 1) = v25;
    v26 = &type metadata for ProcessConstraintConjunction;

    v15 = sub_238AFE274(&v24, &type metadata for ProcessConstraintConjunction, sub_238AEE090, &type metadata for ProcessConstraintDisjunction, sub_238AEE040);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v16 = sub_238AFE4DC(0, v15);
    v18 = v17;
  }

  else
  {
    sub_238AFD5B4(v30, &v27);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_238AFA0E8();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();

      sub_238AFFCFC(a1, a2);
      __swift_destroy_boxed_opaque_existential_1(v30);
      return;
    }

    *(&v28 + 1) = &type metadata for ProcessConstraintDisjunction;
    v19 = sub_238AF6F8C();
    LOWORD(v27) = v24;
    *&v29 = v19;
    *(&v27 + 1) = v25;
    v26 = &type metadata for ProcessConstraintDisjunction;

    v21 = sub_238AFE274(&v24, &type metadata for ProcessConstraintConjunction, sub_238AEE090, &type metadata for ProcessConstraintDisjunction, sub_238AEE040);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v16 = sub_238AFE4DC(0, v21);
    v18 = v22;
  }

  sub_238AFFCFC(a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v30);
  *(&v29 + 1) = v16;
  *(a3 + 48) = v18;
  v23 = v28;
  *a3 = v27;
  *(a3 + 16) = v23;
  *(a3 + 32) = v29;
}

uint64_t sub_238AFFCFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t LaunchCodeRequirement.dictionaryEncoding.getter()
{
  v1 = *(v0 + 48);
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 24), v1);
  v6[3] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v2, v1);
  v4 = sub_238AFE274(v6, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t LaunchCodeRequirement.dataEncoding.getter()
{
  v1 = *v0;
  sub_238AFD728(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_238B00214@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, char a5@<W5>, char a6@<W6>, uint64_t a7@<X8>)
{
  v13 = *a1;
  v14 = a2();
  *(a7 + 16) = v13;
  *(a7 + 48) = a3;
  v15 = a4();
  *(a7 + 24) = a5;
  *(a7 + 56) = v15;
  *(a7 + 25) = a6;
  *(a7 + 32) = v14;
  LOBYTE(v21[0]) = a5;
  BYTE1(v21[0]) = a6;
  v21[3] = a3;
  v21[1] = v14;

  v16 = sub_238AFE274(v21, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
  __swift_destroy_boxed_opaque_existential_1(v21);
  if (v7)
  {
    return __swift_destroy_boxed_opaque_existential_1((a7 + 24));
  }

  v18 = sub_238AFE4DC(v13, v16);
  v20 = v19;

  *a7 = v18;
  *(a7 + 8) = v20;
  return result;
}

uint64_t sub_238B00384@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, char a4@<W4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v12 = a1();
  *(a6 + 16) = 0;
  *(a6 + 48) = a2;
  v13 = a3();
  *(a6 + 24) = a4;
  *(a6 + 56) = v13;
  *(a6 + 25) = a5;
  *(a6 + 32) = v12;
  LOBYTE(v19[0]) = a4;
  BYTE1(v19[0]) = a5;
  v19[3] = a2;
  v19[1] = v12;

  v14 = sub_238AFE274(v19, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1((a6 + 24));
  }

  v16 = sub_238AFE4DC(0, v14);
  v18 = v17;

  *a6 = v16;
  *(a6 + 8) = v18;
  return result;
}

uint64_t LaunchCodeRequirement.init(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_238AFD5B4(a1, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A10, &qword_238B1CFD0);
  if (swift_dynamicCast())
  {
    sub_238AF26B4(v24, v25);
    if (!v2)
    {
      v7 = v6;
      v8 = v5 >> 8;
      *&v28 = 0;
      *&v30 = &type metadata for LaunchConstraintConjunction;
      v9 = v5;
      v10 = sub_238AF6E94();
      BYTE8(v28) = v9;
      BYTE9(v28) = v8;
      *(&v30 + 1) = v10;
      *&v29 = v7;
      LOBYTE(v24) = v9;
      BYTE1(v24) = v8;
      v26 = &type metadata for LaunchConstraintConjunction;
      v25 = v7;

LABEL_8:
      v18 = sub_238AFE274(&v24, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      v19 = sub_238AFE4DC(0, v18);
      v21 = v20;

      result = sub_238B03764(a1);
      *&v27 = v19;
      *(&v27 + 1) = v21;
      v22 = v30;
      a2[2] = v29;
      a2[3] = v22;
      v23 = v28;
      *a2 = v27;
      a2[1] = v23;
      return result;
    }

    return sub_238B03764(a1);
  }

  sub_238AFD5B4(a1, &v27);
  result = swift_dynamicCast();
  if (result)
  {
    sub_238AF2D18(v24, v25);
    if (!v2)
    {
      v14 = v13;
      v15 = v12 >> 8;
      *&v28 = 0;
      *&v30 = &type metadata for LaunchConstraintDisjunction;
      v16 = v12;
      v17 = sub_238AF7008();
      BYTE8(v28) = v16;
      BYTE9(v28) = v15;
      *(&v30 + 1) = v17;
      *&v29 = v14;
      LOBYTE(v24) = v16;
      BYTE1(v24) = v15;
      v26 = &type metadata for LaunchConstraintDisjunction;
      v25 = v14;

      goto LABEL_8;
    }

    return sub_238B03764(a1);
  }

  __break(1u);
  return result;
}

{
  sub_238AFD5B4(a1 + 16, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A28, &qword_238B1E080);
  if (swift_dynamicCast())
  {
    sub_238AF337C(v24, v25);
    if (!v2)
    {
      v7 = v6;
      v8 = v5 >> 8;
      *&v28 = 0;
      *&v30 = &type metadata for LaunchConstraintConjunction;
      v9 = v5;
      v10 = sub_238AF6E94();
      BYTE8(v28) = v9;
      BYTE9(v28) = v8;
      *(&v30 + 1) = v10;
      *&v29 = v7;
      LOBYTE(v24) = v9;
      BYTE1(v24) = v8;
      v26 = &type metadata for LaunchConstraintConjunction;
      v25 = v7;

LABEL_8:
      v18 = sub_238AFE274(&v24, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      v19 = sub_238AFE4DC(0, v18);
      v21 = v20;

      result = sub_238AFF1D0(a1);
      *&v27 = v19;
      *(&v27 + 1) = v21;
      v22 = v30;
      a2[2] = v29;
      a2[3] = v22;
      v23 = v28;
      *a2 = v27;
      a2[1] = v23;
      return result;
    }

    return sub_238AFF1D0(a1);
  }

  sub_238AFD5B4(a1 + 16, &v27);
  result = swift_dynamicCast();
  if (result)
  {
    sub_238AF3AFC(v24, v25);
    if (!v2)
    {
      v14 = v13;
      v15 = v12 >> 8;
      *&v28 = 0;
      *&v30 = &type metadata for LaunchConstraintDisjunction;
      v16 = v12;
      v17 = sub_238AF7008();
      BYTE8(v28) = v16;
      BYTE9(v28) = v15;
      *(&v30 + 1) = v17;
      *&v29 = v14;
      LOBYTE(v24) = v16;
      BYTE1(v24) = v15;
      v26 = &type metadata for LaunchConstraintDisjunction;
      v25 = v14;

      goto LABEL_8;
    }

    return sub_238AFF1D0(a1);
  }

  __break(1u);
  return result;
}

{
  v4 = sub_238B1A954(a1);
  if (v2)
  {
  }

  v5 = v4;

  sub_238B06A50(v5, v23);

  sub_238AFD5B4(v23, &v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF51A20, &unk_238B1CFE0);
  if (swift_dynamicCast())
  {
    *&v20 = 0;
    *&v22 = &type metadata for LaunchConstraintConjunction;
    v7 = sub_238AF6E94();
    WORD4(v20) = v16;
    *(&v22 + 1) = v7;
    *&v21 = v17;
    v18 = &type metadata for LaunchConstraintConjunction;

LABEL_8:
    v9 = sub_238AFE274(&v16, &type metadata for LaunchConstraintConjunction, sub_238AEE3B0, &type metadata for LaunchConstraintDisjunction, sub_238AEE360);
    __swift_destroy_boxed_opaque_existential_1(&v16);
    v10 = sub_238AFE4DC(0, v9);
    v12 = v11;

    result = __swift_destroy_boxed_opaque_existential_1(v23);
    *&v19 = v10;
    *(&v19 + 1) = v12;
    v13 = v22;
    a2[2] = v21;
    a2[3] = v13;
    v14 = v20;
    *a2 = v19;
    a2[1] = v14;
    return result;
  }

  sub_238AFD5B4(v23, &v19);
  if (swift_dynamicCast())
  {
    *&v20 = 0;
    *&v22 = &type metadata for LaunchConstraintDisjunction;
    v8 = sub_238AF7008();
    WORD4(v20) = v16;
    *(&v22 + 1) = v8;
    *&v21 = v17;
    v18 = &type metadata for LaunchConstraintDisjunction;

    goto LABEL_8;
  }

  sub_238AFA0E8();
  swift_allocError();
  *v15 = 1;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(v23);
}