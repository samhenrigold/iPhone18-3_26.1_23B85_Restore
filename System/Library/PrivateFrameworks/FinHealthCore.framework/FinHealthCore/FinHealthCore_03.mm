uint64_t IntermediatePrediction.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IntermediatePrediction.predictedTransaction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntermediatePrediction(0) + 20);
  v4 = sub_226E63040();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double IntermediatePrediction.transactionids.getter()
{
  type metadata accessor for IntermediatePrediction(0);

  return result;
}

uint64_t sub_226E550F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for IntermediatePrediction(0);
  v9 = *(v8 + 20);
  v10 = sub_226E63040();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

uint64_t FinHealthError.hashValue.getter()
{
  v1 = *v0;
  sub_226E640A0();
  MEMORY[0x22AA8D6A0](v1);
  return sub_226E640C0();
}

void sub_226E552D4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_226E639B0();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_280CEA480 = v2;
  }

  else
  {
    sub_226E63F30();
    __break(1u);
  }
}

uint64_t *sub_226E553A8()
{
  if (qword_280CEA300 != -1)
  {
    swift_once();
  }

  return &qword_280CEA480;
}

id sub_226E553F8()
{
  if (qword_280CEA300 != -1)
  {
    swift_once();
  }

  v0 = qword_280CEA480;

  return v0;
}

uint64_t *sub_226E55454@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_226E56944(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_226E63400();
      swift_allocObject();
      v8 = sub_226E633B0();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_226E634C0();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_226E5551C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_226E3437C(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_226E3437C(v7, v6);
    *v4 = xmmword_226E69080;
    sub_226E3437C(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_226E633C0() && __OFSUB__(v7, sub_226E633F0()))
      {
LABEL_26:
        __break(1u);
      }

      sub_226E63400();
      swift_allocObject();
      v14 = sub_226E633A0();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_226E559D4(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_226E3437C(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_226E69080;
    sub_226E3437C(0, 0xC000000000000000);
    sub_226E634A0();
    result = sub_226E559D4(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_226E558C0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_226E56944(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_226E56B04(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_226E56B80(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_226E55968(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_226E559D4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_226E633C0();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_226E633F0();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_226E633E0();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_226E55A88(uint64_t a1)
{
  v2 = sub_226E63920();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_226E568FC(&qword_27D7B6C38, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  sub_226E63AB0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6BE8, &unk_226E690E0);
  v6 = *(a1 + *(result + 9));
  v7 = v26[0];
  v8 = MEMORY[0x277D84F90];
  v9 = 0;
  if (v6)
  {
    v10 = v26[1];
    v11 = (MEMORY[0x277D84F90] + 32);
    do
    {
      v12 = *(v7 + 16);
      if (v10 == v12)
      {
        break;
      }

      if (v10 >= v12)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v13 = *(v7 + v10 + 32);
      if (!v9)
      {
        v14 = *(v8 + 3);
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6958, qword_226E68B50);
        v17 = swift_allocObject();
        v18 = 2 * _swift_stdlib_malloc_size(v17) - 64;
        *(v17 + 2) = v16;
        *(v17 + 3) = v18;
        v19 = v17 + 32;
        v20 = *(v8 + 3) >> 1;
        if (*(v8 + 2))
        {
          v21 = v8 + 32;
          if (v17 != v8 || v19 >= &v21[v20])
          {
            memmove(v17 + 32, v21, v20);
          }

          *(v8 + 2) = 0;
        }

        v11 = &v19[v20];
        v9 = (v18 >> 1) - v20;

        v8 = v17;
      }

      v22 = __OFSUB__(v9--, 1);
      if (v22)
      {
        goto LABEL_23;
      }

      *v11++ = v13;
      ++v10;
      --v6;
    }

    while (v6);
  }

  v23 = *(v8 + 3);
  if (v23 < 2)
  {
    return v8;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v9);
  v25 = v24 - v9;
  if (!v22)
  {
    *(v8 + 2) = v25;
    return v8;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_226E55CEC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_226E63930();
      sub_226E568FC(&qword_27D7B6BF0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_226E638F0();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_226E55F20(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_226E55F20(v5, v6);
  }

  sub_226E63930();
  sub_226E568FC(&qword_27D7B6BF0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_226E638F0();
}

uint64_t sub_226E55ECC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_226E55F20(uint64_t a1, uint64_t a2)
{
  result = sub_226E633C0();
  if (!result || (result = sub_226E633F0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_226E633E0();
      sub_226E63930();
      sub_226E568FC(&qword_27D7B6BF0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_226E638F0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_226E56000(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_226E63A70();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AA8D040](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_226E5607C@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_226E63E80();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_226E560CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_226E63E60();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t type metadata accessor for IntermediatePrediction(uint64_t a1)
{
  result = qword_280CEA370;
  if (!qword_280CEA370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_226E56214()
{
  result = qword_27D7B6BF8;
  if (!qword_27D7B6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6BF8);
  }

  return result;
}

unint64_t sub_226E5629C()
{
  result = qword_27D7B6C10;
  if (!qword_27D7B6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6C10);
  }

  return result;
}

uint64_t sub_226E56320(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_226E56378()
{
  result = qword_27D7B6C28;
  if (!qword_27D7B6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6C28);
  }

  return result;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_226E56434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 209))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_226E56490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_226E56554(uint64_t a1)
{
  sub_226E63040();
  if (v1 <= 0x3F)
  {
    sub_226E22054(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for FinHealthError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FinHealthError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinHealthFeatureFlag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FinHealthFeatureFlag(_WORD *result, int a2, int a3)
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

void type metadata accessor for FHTransactionGroupingMethod()
{
  if (!qword_27D7B6C30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D7B6C30);
    }
  }
}

_BYTE *sub_226E5687C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_226E568FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226E56944(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_226E569FC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_226E63400();
      swift_allocObject();
      sub_226E633D0();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_226E634C0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_226E56A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_226E55968(sub_226E56C04, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_226E56B04(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_226E63400();
  swift_allocObject();
  result = sub_226E633B0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_226E634C0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_226E56B80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_226E63400();
  swift_allocObject();
  result = sub_226E633B0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_226E56C34()
{
  v0 = sub_226E639B0();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = swift_getObjCClassMetadata() != 0;
  }

  else
  {
    v2 = 0;
  }

  byte_27D7B7EE0 = v2;
}

char *sub_226E56C98()
{
  if (qword_27D7B7DB0 != -1)
  {
    swift_once();
  }

  return &byte_27D7B7EE0;
}

uint64_t sub_226E56CE8()
{
  if (qword_27D7B7DB0 != -1)
  {
    swift_once();
  }

  return byte_27D7B7EE0;
}

const char *FinHealthFeatureFlag.FinHealthFeatures.feature.getter()
{
  v1 = "FinHealthMapsDataDonation";
  if (*v0 != 1)
  {
    v1 = "TransactionDonation";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "FinHealthFinanceKitIntegration";
  }
}

uint64_t FinHealthFeatureFlag.FinHealthFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_226E640A0();
  MEMORY[0x22AA8D6A0](v1);
  return sub_226E640C0();
}

const char *sub_226E56E30()
{
  v1 = "FinHealthMapsDataDonation";
  if (*v0 != 1)
  {
    v1 = "TransactionDonation";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "FinHealthFinanceKitIntegration";
  }
}

uint64_t static FinHealthFeatureFlag.isEnabled(_:)(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for FinHealthFeatureFlag.FinHealthFeatures;
  v4[4] = sub_226E56ED0();
  LOBYTE(v4[0]) = v1;
  v2 = sub_226E63620();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

unint64_t sub_226E56ED0()
{
  result = qword_280CEA220;
  if (!qword_280CEA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEA220);
  }

  return result;
}

unint64_t sub_226E56F28()
{
  result = qword_27D7B6C50;
  if (!qword_27D7B6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6C50);
  }

  return result;
}

uint64_t sub_226E570BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_226E638E0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_226E638D0();
}

uint64_t sub_226E571A4()
{
  v0 = sub_226E638E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226E63860();
  __swift_allocate_value_buffer(v4, qword_280CEA358);
  __swift_project_value_buffer(v4, qword_280CEA358);
  if (qword_280CEA310 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280CEA318);
  (*(v1 + 16))(v3, v5, v0);
  return sub_226E63840();
}

uint64_t sub_226E57318(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t sub_226E573B0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_226E57504()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226E695D0;
  v14 = sub_226E639C0();
  v26 = v1;

  MEMORY[0x22AA8D010](0x746E6564695F742ELL, 0xED00007265696669);

  *(v0 + 32) = v14;
  *(v0 + 40) = v26;
  v15 = sub_226E639C0();
  v27 = v2;

  MEMORY[0x22AA8D010](0xD000000000000014, 0x8000000226E73580);

  *(v0 + 48) = v15;
  *(v0 + 56) = v27;
  v16 = sub_226E639C0();
  v28 = v3;

  MEMORY[0x22AA8D010](0x6E756F6D615F742ELL, 0xE900000000000074);

  *(v0 + 64) = v16;
  *(v0 + 72) = v28;
  v17 = sub_226E639C0();
  v29 = v4;

  MEMORY[0x22AA8D010](0x65727275635F742ELL, 0xEF65646F6379636ELL);

  *(v0 + 80) = v17;
  *(v0 + 88) = v29;
  v18 = sub_226E639C0();
  v30 = v5;

  MEMORY[0x22AA8D010](0x657461645F742ELL, 0xE700000000000000);

  *(v0 + 96) = v18;
  *(v0 + 104) = v30;
  v19 = sub_226E639C0();
  v31 = v6;

  MEMORY[0x22AA8D010](0x657079745F742ELL, 0xE700000000000000);

  *(v0 + 112) = v19;
  *(v0 + 120) = v31;
  v20 = sub_226E639C0();
  v32 = v7;

  MEMORY[0x22AA8D010](0x657079745F612ELL, 0xE700000000000000);

  *(v0 + 128) = v20;
  *(v0 + 136) = v32;
  v21 = sub_226E639C0();
  v33 = v8;

  MEMORY[0x22AA8D010](0x6C707369645F6D2ELL, 0xEE00656D616E7961);

  *(v0 + 144) = v21;
  *(v0 + 152) = v33;
  v22 = sub_226E639C0();
  v34 = v9;

  MEMORY[0x22AA8D010](0xD000000000000013, 0x8000000226E73770);

  *(v0 + 160) = v22;
  *(v0 + 168) = v34;
  v23 = sub_226E639C0();
  v35 = v10;

  MEMORY[0x22AA8D010](0xD000000000000019, 0x8000000226E73790);

  *(v0 + 176) = v23;
  *(v0 + 184) = v35;
  v24 = sub_226E639C0();
  v36 = v11;

  MEMORY[0x22AA8D010](0x72637365645F742ELL, 0xEE006E6F69747069);

  *(v0 + 192) = v24;
  *(v0 + 200) = v36;
  v25 = sub_226E639C0();
  v37 = v12;

  MEMORY[0x22AA8D010](0x695F70756F72672ELL, 0xE900000000000064);

  *(v0 + 208) = v25;
  *(v0 + 216) = v37;
  return v0;
}

void PredictionFeatures.init(accountTypes:transactionTypes:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_utilities;
  *&v2[v5] = sub_226E202A4(0, &qword_280CE9FA0, &off_2785CA860);
  v6 = OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_fields;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226E695D0;
  aBlock = sub_226E639C0();
  v64 = v8;

  MEMORY[0x22AA8D010](0x746E6564695F742ELL, 0xED00007265696669);

  v9 = v64;
  *(v7 + 32) = aBlock;
  *(v7 + 40) = v9;
  aBlock = sub_226E639C0();
  v64 = v10;

  MEMORY[0x22AA8D010](0xD000000000000014, 0x8000000226E73580);

  v11 = v64;
  *(v7 + 48) = aBlock;
  *(v7 + 56) = v11;
  aBlock = sub_226E639C0();
  v64 = v12;

  MEMORY[0x22AA8D010](0x6E756F6D615F742ELL, 0xE900000000000074);

  v13 = v64;
  *(v7 + 64) = aBlock;
  *(v7 + 72) = v13;
  aBlock = sub_226E639C0();
  v64 = v14;

  MEMORY[0x22AA8D010](0x65727275635F742ELL, 0xEF65646F6379636ELL);

  v15 = v64;
  *(v7 + 80) = aBlock;
  *(v7 + 88) = v15;
  aBlock = sub_226E639C0();
  v64 = v16;

  MEMORY[0x22AA8D010](0x657461645F742ELL, 0xE700000000000000);

  v17 = v64;
  *(v7 + 96) = aBlock;
  *(v7 + 104) = v17;
  aBlock = sub_226E639C0();
  v64 = v18;

  MEMORY[0x22AA8D010](0x657079745F742ELL, 0xE700000000000000);

  v19 = v64;
  *(v7 + 112) = aBlock;
  *(v7 + 120) = v19;
  aBlock = sub_226E639C0();
  v64 = v20;

  MEMORY[0x22AA8D010](0x657079745F612ELL, 0xE700000000000000);

  v21 = v64;
  *(v7 + 128) = aBlock;
  *(v7 + 136) = v21;
  aBlock = sub_226E639C0();
  v64 = v22;

  MEMORY[0x22AA8D010](0x6C707369645F6D2ELL, 0xEE00656D616E7961);

  v23 = v64;
  *(v7 + 144) = aBlock;
  *(v7 + 152) = v23;
  aBlock = sub_226E639C0();
  v64 = v24;

  MEMORY[0x22AA8D010](0xD000000000000013, 0x8000000226E73770);

  v25 = v64;
  *(v7 + 160) = aBlock;
  *(v7 + 168) = v25;
  aBlock = sub_226E639C0();
  v64 = v26;

  MEMORY[0x22AA8D010](0xD000000000000019, 0x8000000226E73790);

  v27 = v64;
  *(v7 + 176) = aBlock;
  *(v7 + 184) = v27;
  aBlock = sub_226E639C0();
  v64 = v28;

  MEMORY[0x22AA8D010](0x72637365645F742ELL, 0xEE006E6F69747069);

  v29 = v64;
  *(v7 + 192) = aBlock;
  *(v7 + 200) = v29;
  aBlock = sub_226E639C0();
  v64 = v30;

  MEMORY[0x22AA8D010](0x695F70756F72672ELL, 0xE900000000000064);

  v31 = v64;
  *(v7 + 208) = aBlock;
  *(v7 + 216) = v31;
  v61 = v2;
  *&v2[v6] = v7;
  v32 = *(a2 + 16);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_226E5D920(0, v32, 0);
    v34 = aBlock;
    v35 = *(aBlock + 16);
    v36 = 32;
    do
    {
      v37 = *(a2 + v36);
      aBlock = v34;
      v38 = *(v34 + 24);
      if (v35 >= v38 >> 1)
      {
        sub_226E5D920((v38 > 1), v35 + 1, 1);
        v34 = aBlock;
      }

      *(v34 + 16) = v35 + 1;
      *(v34 + 8 * v35 + 32) = v37;
      v36 += 8;
      ++v35;
      --v32;
    }

    while (v32);
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  v39 = sub_226E607F8(v34);

  v40 = *(a1 + 16);
  if (v40)
  {
    aBlock = v33;
    sub_226E5D920(0, v40, 0);
    v41 = v33;
    v42 = *(v33 + 16);
    v43 = 32;
    do
    {
      v44 = *(a1 + v43);
      aBlock = v41;
      v45 = *(v41 + 24);
      if (v42 >= v45 >> 1)
      {
        sub_226E5D920((v45 > 1), v42 + 1, 1);
        v41 = aBlock;
      }

      *(v41 + 16) = v42 + 1;
      *(v41 + 8 * v42 + 32) = v44;
      v43 += 8;
      ++v42;
      --v40;
    }

    while (v40);
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v46 = sub_226E607F8(v41);

  v47 = objc_opt_self();
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v48 + 24) = v39;
  v67 = sub_226E6086C;
  v68 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_226E23500;
  v66 = &block_descriptor_2;
  v49 = _Block_copy(&aBlock);

  v50 = [v47 initWithBuilder:v49 logicalOperator:@"AND"];
  _Block_release(v49);
  v67 = sub_226E58304;
  v68 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_226E23500;
  v66 = &block_descriptor_7;
  v51 = _Block_copy(&aBlock);
  v52 = [v47 initWithBuilder:v51 logicalOperator:@"OR"];
  _Block_release(v51);
  v67 = sub_226E585E0;
  v68 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_226E23500;
  v66 = &block_descriptor_10;
  v53 = _Block_copy(&aBlock);
  v54 = [v47 initWithBuilder:v53 logicalOperator:@"AND"];
  _Block_release(v53);
  v55 = swift_allocObject();
  v55[2] = v52;
  v55[3] = v50;
  v55[4] = v54;
  v67 = sub_226E60B58;
  v68 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_226E23500;
  v66 = &block_descriptor_16;
  v56 = _Block_copy(&aBlock);
  v57 = v52;
  v58 = v50;
  v59 = v54;

  v60 = [v47 initWithBuilder:v56 logicalOperator:@"AND"];
  _Block_release(v56);
  if (v60)
  {

    *&v61[OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_featuresClause] = v60;
    v62.receiver = v61;
    v62.super_class = type metadata accessor for PredictionFeatures();
    objc_msgSendSuper2(&v62, sel_init);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226E5820C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_226E5D940(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_226E5D940((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_226E3D250(&v8, (v2 + 32 * v6 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_226E58304(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v2 = a1;
    v3 = @"==";

    MEMORY[0x22AA8D010](0x745F70756F72672ELL, 0xEB00000000657079);

    v4 = sub_226E639B0();

    [v2 addIntegerClause:v3 fieldName:v4 expression:3];

    sub_226E639C0();
    v5 = @"!=";

    MEMORY[0x22AA8D010](0xD000000000000019, 0x8000000226E73790);

    v6 = sub_226E639B0();

    v7 = sub_226E639B0();
    [v2 addStringClause:v5 fieldName:v6 expression:v7];

    sub_226E639C0();
    v8 = v5;

    MEMORY[0x22AA8D010](0xD000000000000013, 0x8000000226E73770);

    v9 = sub_226E639B0();

    v10 = sub_226E639B0();
    [v2 addStringClause:v8 fieldName:v9 expression:v10];

    sub_226E639C0();
    v11 = v8;

    MEMORY[0x22AA8D010](0x6C707369645F6D2ELL, 0xEE00656D616E7961);

    v12 = sub_226E639B0();

    v13 = sub_226E639B0();
    [v2 addStringClause:v11 fieldName:v12 expression:v13];
  }
}

void sub_226E585E0(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v2 = a1;
    v3 = @">=";

    MEMORY[0x22AA8D010](0x6E756F6D615F742ELL, 0xE900000000000074);

    v4 = sub_226E639B0();

    [v2 addIntegerClause:v3 fieldName:v4 expression:0];
  }
}

void sub_226E586CC()
{
  v1 = v0;
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v53 = v2;
  *(v2 + 16) = sub_226E3A348(MEMORY[0x277D84F90], &qword_27D7B6CD0, &qword_226E696A0);
  v4 = (v2 + 16);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_226E3A348(v3, &qword_27D7B6CC8, &unk_226E69690);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_226E3A348(v3, &qword_27D7B6930, &unk_226E696B0);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_226E60C08(v3);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_226E3A188(v3);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_226E3A348(v3, &qword_27D7B6930, &unk_226E696B0);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_226E3A348(v3, &qword_27D7B6CB8, &qword_226E69678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6908, &unk_226E68A50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226E685D0;
  aBlock = sub_226E639C0();
  v59 = v6;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v7 = sub_226E639C0();
  MEMORY[0x22AA8D010](v7);

  sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
  v8 = sub_226E63CF0();
  v9 = objc_allocWithZone(FHSmartCompoundFeatureRankedValue);
  v10 = sub_226E639B0();

  v11 = [v9 initWithLabelAndRank:v10 featureRank:v8];

  if (v11)
  {
    *(v5 + 32) = v11;
    sub_226E639C0();
    v12 = objc_opt_self();
    v62 = sub_226E58ECC;
    v63 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_226E23500;
    v61 = &block_descriptor_38_0;
    v13 = _Block_copy(&aBlock);
    v14 = [v12 initWithBuilder_];
    _Block_release(v13);
    v15 = objc_allocWithZone(FHDatabaseEntity);
    v16 = sub_226E639B0();

    v17 = [v15 initWithEntity:v16 joinClause:v14];

    v18 = sub_226E59378(v17);
    v54 = v1;
    v46 = v17;
    if (v17)
    {
      v45 = *&v1[OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_featuresClause];
      v44 = v17;
      v43 = @"AND";
      v42 = sub_226E63AE0();
      sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
      v41 = sub_226E63AE0();

      v19 = swift_allocObject();
      v19[2] = v1;
      v19[3] = v18;
      v19[4] = v53;
      v19[5] = v51;
      v19[6] = v52;
      v19[7] = v50;
      v19[8] = v49;
      v19[9] = v48;
      v19[10] = v47;
      v62 = sub_226E60D04;
      v63 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v59 = 1107296256;
      v60 = sub_226E1EB4C;
      v61 = &block_descriptor_44_0;
      v20 = _Block_copy(&aBlock);
      v21 = v1;

      [v44 queryDataWithBlock:v45 logicalOperator:v43 limit:-1 selectFields:v42 orderby:v41 usingBlock:v20];
      _Block_release(v20);
    }

    else
    {
    }

    swift_beginAccess();
    v22 = *v4;
    swift_beginAccess();
    v23 = *(v50 + 16);
    swift_beginAccess();
    v24 = *(v51 + 16);
    swift_beginAccess();
    v25 = *(v49 + 16);
    swift_beginAccess();
    v26 = *(v48 + 16);
    swift_beginAccess();
    v27 = *(v47 + 16);

    v28 = v23;

    v56 = v24;

    v55 = v26;

    v57 = sub_226E3A348(MEMORY[0x277D84F90], &qword_27D7B6B00, &unk_226E68B30);
    v29 = 1 << *(v22 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v22 + 64);
    v32 = (v29 + 63) >> 6;

    v33 = 0;
    while (v31)
    {
      v34 = v33;
LABEL_13:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = v35 | (v34 << 6);
      v37 = *(v22 + 48) + 16 * v36;
      v38 = *v37;
      v39 = *(v37 + 8);
      v40 = *(*(v22 + 56) + 8 * v36);

      sub_226E598F8(v38, v39, v40, v56, v54, v28, v25, v55, v27, &v57);
    }

    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {

        return;
      }

      v31 = *(v22 + 64 + 8 * v34);
      ++v33;
      if (v31)
      {
        v33 = v34;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_226E58ECC(id result)
{
  if (result)
  {
    return [result addKeyPairsWithJoinType:@"left" leftEntity:@"transactions" rightEntity:@"fh_grouping" joinKey:@"t_identifier"];
  }

  return result;
}

uint64_t sub_226E58F10(uint64_t a1, void *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_226E63DD0();
    sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
    sub_226E62500(&qword_27D7B6C88, &qword_280CE9F98, off_2785CA820);
    sub_226E63C60();
    v3 = v57;
    v4 = v58;
    v5 = v59;
    v6 = v60;
    v7 = v61;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v53 = v3;
  v54 = a2;
  v52 = v4;
  while (v3 < 0)
  {
    if (!sub_226E63E00())
    {
      return sub_226E33994(v3);
    }

    sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
    swift_dynamicCast();
    v16 = v56;
    v14 = v6;
    v15 = v7;
    if (!v56)
    {
      return sub_226E33994(v3);
    }

LABEL_20:
    v55 = v15;
    v17 = [v16 featureRank];
    if (!v17)
    {
      goto LABEL_47;
    }

    v18 = v17;
    v19 = [v17 integerValue];

    if (v19 == 7)
    {
      v20 = [v16 featureLabel];
      if (!v20)
      {
        goto LABEL_49;
      }

      v21 = v20;
      v22 = sub_226E639C0();
      v24 = v23;

      v25 = [v16 featureLabel];
      if (!v25)
      {
        goto LABEL_48;
      }

      v26 = v25;
      v27 = sub_226E639C0();
      v29 = v28;

      swift_beginAccess();
      v30 = *a2;
      if (*(*a2 + 16))
      {
        v31 = sub_226E20614(v27, v29);
        v33 = v32;

        if (v33)
        {
          v34 = *(*(v30 + 56) + 8 * v31);
        }

        else
        {
          v34 = 0;
        }

        a2 = v54;
      }

      else
      {

        v34 = 0;
      }

      swift_endAccess();
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_44;
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *a2;
      v62 = *a2;
      *a2 = 0x8000000000000000;
      v39 = sub_226E20614(v22, v24);
      v40 = *(v37 + 16);
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_45;
      }

      v43 = v38;
      if (*(v37 + 24) >= v42)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v46 = v62;
          if ((v38 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_226E5DF50();
          v46 = v62;
          if ((v43 & 1) == 0)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        sub_226E5DC24(v42, isUniquelyReferenced_nonNull_native);
        v44 = sub_226E20614(v22, v24);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_50;
        }

        v39 = v44;
        v46 = v62;
        if ((v43 & 1) == 0)
        {
LABEL_38:
          v46[(v39 >> 6) + 8] |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v22;
          v47[1] = v24;
          *(v46[7] + 8 * v39) = v35;
          v48 = v46[2];
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            goto LABEL_46;
          }

          v46[2] = v50;
          goto LABEL_9;
        }
      }

      *(v46[7] + 8 * v39) = v35;

LABEL_9:
      a2 = v54;
      *v54 = v46;
      swift_endAccess();
      v4 = v52;
      v3 = v53;
      v11 = (v5 + 64) >> 6;
    }

    v6 = v14;
    v7 = v55;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      return sub_226E33994(v3);
    }

    goto LABEL_20;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      return sub_226E33994(v3);
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_226E64010();
  __break(1u);
  return result;
}

unint64_t *sub_226E59378(void *a1)
{
  v3 = sub_226E638E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_226E60C08(MEMORY[0x277D84F90]);
  if (a1)
  {
    v29 = *&v1[OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_featuresClause];
    v28 = @"AND";
    v8 = sub_226E63AE0();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = v7;
    aBlock[4] = sub_226E62808;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_226E1EB4C;
    aBlock[3] = &block_descriptor_66;
    v10 = v6;
    v11 = v4;
    v12 = v3;
    v13 = _Block_copy(aBlock);
    v14 = v1;

    v15 = v28;
    [a1 queryDataWithBlock:v29 logicalOperator:v28 selectFields:v8 usingBlock:v13];
    v16 = v13;
    v3 = v12;
    v4 = v11;
    v6 = v10;
    _Block_release(v16);
  }

  swift_beginAccess();

  v18 = sub_226E5E214(v17);

  v19 = sub_226E56FC8();
  (*(v4 + 16))(v6, v19, v3);

  v20 = sub_226E638C0();
  v21 = sub_226E63C80();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136315138;
    v24 = sub_226E63970();
    v29 = v7;
    v26 = sub_226E1FC98(v24, v25, &v31);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_226DD4000, v20, v21, "filteredEntityCounter %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x22AA8E1B0](v23, -1, -1);
    MEMORY[0x22AA8E1B0](v22, -1, -1);
  }

  (*(v4 + 8))(v6, v3);

  return v18;
}

void sub_226E5971C(uint64_t a1)
{
  if (*(a1 + 24) && (v1 = *(a1 + 64)) != 0 && !((*(a1 + 144) == 0) | ((*(a1 + 176) | *(a1 + 192)) | *(a1 + 56)) & 1))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 168);
    v4 = *(a1 + 184);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = v1;
    v7 = sub_226E639B0();
    v8 = v6;
    v9 = sub_226E639B0();
    v10 = [ObjCClassFromMetadata histogramKeysForCardPurchaseTransaction:v7 transactionAmount:v8 transactionSourceIdentifier:v9 transactionType:v3 accountType:v4 amountFromDatabase:v2 receiptIdentifier:0];

    if (v10)
    {
      sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
      sub_226E62500(&qword_27D7B6C88, &qword_280CE9F98, off_2785CA820);
      sub_226E63C30();
    }

    else
    {
      __break(1u);
    }
  }

  else if (MEMORY[0x277D84F90] >> 62 && sub_226E63DE0())
  {
    v11 = MEMORY[0x277D84F90];

    sub_226E62210(v11);
  }
}

unint64_t sub_226E598F8(char *a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t i, unint64_t a6, __CFString *a7, void *a8, uint64_t a9, uint64_t *a10)
{
  v120 = a8;
  v121 = a7;
  v124 = a6;
  v17 = sub_226E63590();
  length = v17[-1].length;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v107 - v22;
  if ((a3 & 0xC000000000000001) != 0)
  {
    result = sub_226E63DE0();
    if ((result & 0x8000000000000000) != 0)
    {
      return result;
    }
  }

  else
  {
    result = a3[2];
    if ((result & 0x8000000000000000) != 0)
    {
      return result;
    }
  }

  if (result >= 3)
  {
    v111 = v21;
    aBlock = sub_226E5DB74(a3);
    v25 = 0;
    sub_226E5AA90(&aBlock);
    v125 = aBlock;
    v26 = MEMORY[0x277D84F90];
    if (*(a4 + 16))
    {
      v27 = sub_226E20614(a1, a2);
      if (v28)
      {
        v110 = *(*(a4 + 56) + 8 * v27);
      }

      else
      {
        v110 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v110 = MEMORY[0x277D84F90];
    }

    v127[0] = v26;
    if (v125 < 0)
    {
      v29 = 1;
    }

    else
    {
      v29 = (v125 >> 62) & 1;
    }

    v112 = i;
    if (v29 == 1)
    {
      goto LABEL_110;
    }

    v30 = *(v125 + 16);
    v31 = v30 == 1;
    if (v30 < 1)
    {
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_16:
    LODWORD(v108) = v29;
    v118 = a1;
    v119 = a2;
    v122 = v23;
    v123 = length;
    v117 = v17;
    if (!v31)
    {
      a2 = v125 & 0xC000000000000001;
      if ((v125 & 0xC000000000000001) == 0)
      {
        v42 = *(v125 + 16);
        if (v42 < 2 || v30 > v42)
        {
          goto LABEL_128;
        }
      }

      v23 = (v125 + 32);
      a1 = (1 - v30);
      for (i = 5; &a1[i] != 5; ++i)
      {
        v17 = (i - 4);
        if (a2)
        {
          length = v125;
          v29 = MEMORY[0x22AA8D480](i - 4, v125);
          if (__OFSUB__(v17, 1))
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            v30 = sub_226E63DE0();
            v31 = v30 == 1;
            if (v30 < 1)
            {
              goto LABEL_111;
            }

            goto LABEL_16;
          }

          v43 = MEMORY[0x22AA8D480](i - 5, length);
        }

        else
        {
          v44 = i - 5;
          if (__OFSUB__(v17, 1))
          {
            goto LABEL_107;
          }

          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_108;
          }

          if (v44 >= *(v125 + 16))
          {
            goto LABEL_109;
          }

          v45 = *&v23[8 * v44];
          v29 = *(v125 + 8 * i);
          v43 = v45;
        }

        length = v43;
        v46 = [v29 decimalNumberBySubtracting_];

        v29 = v127;
        MEMORY[0x22AA8D0C0]();
        if (*((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          length = *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_226E63B10();
        }

        sub_226E63B30();
      }
    }

    sub_226E5A9F0(v127);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    a2 = v127[0];
    sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);

    v33 = sub_226E63AE0();
    i = [ObjCClassFromMetadata rootMeanSquareError_];

    if (!i)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v34 = sub_226E63AE0();
    a1 = [ObjCClassFromMetadata mean_];

    if (!a1)
    {
LABEL_136:
      __break(1u);

      __break(1u);
      return result;
    }

    v29 = a2 >> 62;
    v17 = v121;
    if (!(a2 >> 62))
    {
      v35 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_22;
    }

LABEL_112:
    v35 = sub_226E63DE0();
LABEL_22:
    v37 = v118;
    v36 = v119;
    inited = v122;
    v39 = v35 / 2;
    v25 = (a2 & 0xC000000000000001);
    if ((a2 & 0xC000000000000001) == 0)
    {
      if (v35 < -1)
      {
        __break(1u);
      }

      else if (v39 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = *(a2 + 8 * v39 + 32);
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_116;
    }

    v40 = MEMORY[0x22AA8D480](v39, a2);
LABEL_26:
    v116 = v40;
    if (v29)
    {
      v41 = sub_226E63DE0();
      if (v41)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v41 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
LABEL_28:
        if (v25)
        {
          v115 = MEMORY[0x22AA8D480](0, a2);
          if (__OFSUB__(v41, 1))
          {
            goto LABEL_131;
          }

          v114 = MEMORY[0x22AA8D480](v41 - 1, a2);

          goto LABEL_48;
        }

        v48 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v48)
        {
          goto LABEL_132;
        }

        v49 = v41 - 1;
        v25 = v120;
        if (__OFSUB__(v41, 1))
        {
LABEL_133:
          __break(1u);
        }

        else if (v49 < v48)
        {
          v50 = *(a2 + 32 + 8 * v49);
          v115 = *(a2 + 32);
          v114 = v50;

          goto LABEL_53;
        }

        __break(1u);
        goto LABEL_135;
      }
    }

    v47 = objc_opt_self();
    v115 = [v47 one];

    v114 = [v47 one];
LABEL_48:
    v25 = v120;
LABEL_53:
    v51 = v124;
    v120 = [i decimalNumberByDividingBy_];
    v11 = 1.0;
    v10 = 1.0;
    if (*(v51 + 16))
    {
      v52 = sub_226E20614(v37, v36);
      if (v53)
      {
        v10 = *(*(v124 + 56) + 8 * v52);
      }
    }

    if (v17->data)
    {
      v54 = sub_226E20614(v37, v36);
      if (v55)
      {
        v11 = *(v17[1].length + 8 * v54);
      }
    }

    if (v108)
    {
      v56 = sub_226E63DE0();
      if (v56)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v56 = *(v125 + 16);
      if (v56)
      {
LABEL_61:
        v57 = __OFSUB__(v56, 1);
        v39 = v56 - 1;
        if (v57)
        {
          goto LABEL_124;
        }

        if ((v125 & 0xC000000000000001) != 0)
        {
          goto LABEL_125;
        }

        if ((v39 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v39 < *(v125 + 16))
        {
          for (j = *(v125 + 8 * v39 + 32); ; j = MEMORY[0x22AA8D480](v39, v125))
          {
LABEL_68:
            v59 = j;
            [j doubleValue];

            v108 = 86400;
            v39 = sub_226E63500();
            v60 = v25[2];
            v107[1] = a2;
            if (v60 && (v39 = sub_226E20614(v37, v36), (v61 & 1) != 0))
            {
              a2 = *(v25[7] + 8 * v39);
            }

            else
            {
              a2 = MEMORY[0x277D84F90];
            }

            v62 = *(a9 + 16);
            v113 = a1;
            if (v62 && (v39 = sub_226E20614(v37, v36), (v63 & 1) != 0))
            {
              a1 = *(*(a9 + 56) + 8 * v39);
            }

            else
            {
              a1 = MEMORY[0x277D84F90];
            }

            v25 = v111;
            v64 = *(a1 + 2);
            v109 = i;
            v124 = v64;
            if (v64 == 5)
            {
              if (*(a1 + 8) != 3.0)
              {
                v82 = 0;
                v83 = 0xE000000000000000;
                goto LABEL_89;
              }

              v121 = @"transactions";
              sub_226E639C0();
              v65 = objc_allocWithZone(FHDatabaseEntity);
              v66 = sub_226E639B0();

              v67 = [v65 initWithEntity_];

              v68 = objc_opt_self();
              v69 = swift_allocObject();
              *(v69 + 16) = v110;
              v132 = sub_226E62648;
              v133 = v69;
              aBlock = MEMORY[0x277D85DD0];
              v129 = 1107296256;
              v130 = sub_226E23500;
              v131 = &block_descriptor_53;
              v70 = _Block_copy(&aBlock);

              v36 = [v68 initWithBuilder_];
              _Block_release(v70);
              v71 = swift_allocObject();
              *(v71 + 16) = 0;
              v37 = v71 + 16;
              *(v71 + 24) = 0;
              if (v67)
              {
                v107[0] = v36;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
                v72 = swift_allocObject();
                *(v72 + 16) = xmmword_226E685F0;
                aBlock = sub_226E639C0();
                v129 = v73;
                v121 = v67;
                v74 = @"AND";

                MEMORY[0x22AA8D010](0x72637365645F742ELL, 0xEE006E6F69747069);

                v75 = v129;
                *(v72 + 32) = aBlock;
                *(v72 + 40) = v75;
                v76 = sub_226E63AE0();

                v132 = sub_226E62768;
                v133 = v71;
                aBlock = MEMORY[0x277D85DD0];
                v129 = 1107296256;
                v130 = sub_226E1EB4C;
                v131 = &block_descriptor_59;
                v77 = _Block_copy(&aBlock);

                v78 = v121;
                v79 = v107[0];
                [(__CFString *)v121 queryDataWithBlock:v107[0] logicalOperator:v74 selectFields:v76 usingBlock:v77];

                _Block_release(v77);
                v36 = v76;
              }

              swift_beginAccess();
              v81 = *(v71 + 16);
              v80 = *(v71 + 24);

              if (v80)
              {
                v82 = v81;
              }

              else
              {
                v82 = 0;
              }

              if (v80)
              {
                v83 = v80;
              }

              else
              {
                v83 = 0xE000000000000000;
              }

              v64 = *(a1 + 2);
              inited = v122;
              i = v109;
              v25 = v111;
            }

            else
            {
              v82 = 0;
              v83 = 0xE000000000000000;
            }

            if (!v64)
            {
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
              goto LABEL_123;
            }

LABEL_89:
            v111 = v83;
            v121 = v82;
            v84 = *(a1 + 4);
            v85 = sub_226E63530();
            sub_226E63570();
            v86 = sub_226E63530();
            v36 = v123[1];
            ++v123;
            (v36)(v25, v117);
            v37 = FHNumberOfDaysBetweenDates(v85, v86, 1u);

            if (v124 >= 3)
            {
              if (*(a1 + 2) < 3uLL)
              {
                goto LABEL_129;
              }

              *&v88 = COERCE_DOUBLE((*((*MEMORY[0x277D85000] & *v112) + 0x98))(v125, inited, *(a1 + 6)));
              LODWORD(v124) = v89;

              v87 = *&v88;
            }

            else
            {

              LODWORD(v124) = 1;
              v87 = 0.0;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AF0, &qword_226E68B20);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_226E695E0;
            *(inited + 32) = 0x6474735F71657266;
            v125 = inited + 32;
            v25 = 0xE800000000000000;
            *(inited + 40) = 0xE800000000000000;
            sub_226E63C20();
            i = MEMORY[0x277D839F8];
            *(inited + 48) = v90;
            *(inited + 72) = i;
            *(inited + 80) = 0x61656D5F71657266;
            *(inited + 88) = 0xE90000000000006ELL;
            sub_226E63C20();
            *(inited + 96) = v91;
            *(inited + 120) = i;
            *(inited + 128) = 0x64656D5F71657266;
            *(inited + 136) = 0xEB000000006E6169;
            sub_226E63C20();
            *(inited + 144) = v92;
            *(inited + 168) = i;
            *(inited + 176) = 0x78616D5F71657266;
            *(inited + 184) = 0xE800000000000000;
            sub_226E63C20();
            *(inited + 192) = v93;
            *(inited + 216) = i;
            *(inited + 224) = 0x6E696D5F71657266;
            *(inited + 232) = 0xE800000000000000;
            sub_226E63C20();
            *(inited + 240) = v94;
            *(inited + 264) = i;
            *(inited + 272) = 0xD000000000000012;
            *(inited + 280) = 0x8000000226E72FC0;
            v39 = sub_226E63C20();
            *(inited + 288) = v95;
            *(inited + 312) = i;
            *(inited + 320) = 0x69735F70756F7267;
            *(inited + 328) = 0xEA0000000000657ALL;
            *(inited + 336) = v10;
            *(inited + 360) = i;
            *(inited + 368) = 0xD000000000000013;
            *(inited + 376) = 0x8000000226E72FE0;
            *(inited + 384) = v37;
            *(inited + 408) = i;
            *(inited + 416) = 0xD00000000000001BLL;
            *(inited + 424) = 0x8000000226E73000;
            *(inited + 456) = i;
            v96 = *(a1 + 2);
            if (v96 < 3)
            {
              goto LABEL_117;
            }

            *(inited + 432) = *(a1 + 6);
            *(inited + 464) = 0xD000000000000017;
            *(inited + 472) = 0x8000000226E73220;
            *(inited + 504) = i;
            if (v96 == 3)
            {
              goto LABEL_118;
            }

            *(inited + 480) = *(a1 + 7);
            *(inited + 512) = 0x676E6970756F7267;
            *(inited + 520) = 0xEF646F6874656D5FLL;
            *(inited + 552) = i;
            if (v96 < 5)
            {
              goto LABEL_119;
            }

            *(inited + 528) = *(a1 + 8);
            strcpy((inited + 560), "fuzzy_amount");
            *(inited + 573) = 0;
            *(inited + 574) = -5120;
            *(inited + 600) = i;
            *(inited + 576) = v11;
            *(inited + 608) = 0x695F656372756F73;
            *(inited + 616) = 0xE900000000000064;
            v25 = MEMORY[0x277D837D0];
            *(inited + 648) = MEMORY[0x277D837D0];
            v97 = *(a2 + 16);
            if (!v97)
            {
              goto LABEL_120;
            }

            v39 = *(a2 + 40);
            *(inited + 624) = *(a2 + 32);
            *(inited + 632) = v39;
            *(inited + 656) = 0x6E5F797469746E65;
            *(inited + 664) = 0xEB00000000656D61;
            *(inited + 696) = v25;
            if (v97 == 1)
            {
              goto LABEL_121;
            }

            v98 = *(a2 + 56);
            *(inited + 672) = *(a2 + 48);
            *(inited + 680) = v98;
            strcpy((inited + 704), "currency_code");
            *(inited + 718) = -4864;
            *(inited + 744) = v25;
            if (v97 < 3)
            {
              goto LABEL_122;
            }

            v112 = v36;
            v36 = *(a2 + 64);
            v37 = *(a2 + 72);
            v10 = v84 / v10;

            *(inited + 720) = v36;
            *(inited + 728) = v37;
            strcpy((inited + 752), "amount_average");
            *(inited + 767) = -18;
            *(inited + 792) = i;
            *(inited + 768) = v10;
            *(inited + 800) = 0xD000000000000010;
            *(inited + 808) = 0x8000000226E73260;
            *(inited + 840) = i;
            if (*(a1 + 2) >= 2uLL)
            {
              v99 = *(a1 + 5);

              *(inited + 816) = v99;
              *(inited + 848) = 0x746361736E617274;
              *(inited + 856) = 0xEF7364695F6E6F69;
              *(inited + 888) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AD0, &unk_226E68D40);
              *(inited + 864) = v110;
              *(inited + 896) = 0xD000000000000012;
              *(inited + 904) = 0x8000000226E73240;
              *(inited + 936) = v25;
              v100 = v122;
              *(inited + 912) = v121;
              *(inited + 920) = v111;
              *(inited + 944) = 0xD000000000000015;
              *(inited + 952) = 0x8000000226E732B0;
              *(inited + 984) = i;
              v102 = v118;
              v101 = v119;
              v103 = v109;
              if ((v124 & 1) == 0)
              {
                goto LABEL_103;
              }

              sub_226E63510();
              if (is_mul_ok(v108, 0x1EuLL))
              {
                v87 = v104 + (30 * v108);
LABEL_103:
                *(inited + 960) = v87;
                v105 = sub_226E3A558(inited);
                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6AF8, &qword_226E68B28);
                swift_arrayDestroy();

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v126 = *a10;
                *a10 = 0x8000000000000000;
                sub_226E39A20(v105, v102, v101, isUniquelyReferenced_nonNull_native, &qword_27D7B6B00, &unk_226E68B30);

                *a10 = v126;

                v112(v100, v117);
              }

LABEL_130:
              __break(1u);
LABEL_131:
              __break(1u);
LABEL_132:
              __break(1u);
              goto LABEL_133;
            }

LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            ;
          }
        }

        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }
    }

    j = [objc_opt_self() one];
    goto LABEL_68;
  }

  return result;
}

uint64_t sub_226E5A9F0(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_226E5DEEC(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_226E5E724(v5, sub_226E5E9FC, sub_226E5E848);
  *a1 = v2;
  return result;
}

uint64_t sub_226E5AA90(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_226E607E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_226E5E724(v6, sub_226E5EFA0, sub_226E5E904);
  return sub_226E63ED0();
}

void sub_226E5AB34(unint64_t a1, uint64_t a2, double a3)
{
  v179 = a2;
  v6 = sub_226E63420();
  v177 = *(v6 - 8);
  v178 = v6;
  MEMORY[0x28223BE20](v6);
  v176 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6C70, &unk_226E69600);
  MEMORY[0x28223BE20](v175);
  v180 = &v152 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v171 = &v152 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v170 = &v152 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v168 = &v152 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v172 = &v152 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v164 = &v152 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v173 = &v152 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v169 = &v152 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v152 - v28;
  MEMORY[0x28223BE20](v27);
  v182 = &v152 - v30;
  v181 = sub_226E63590();
  v31 = *(v181 - 8);
  v32 = MEMORY[0x28223BE20](v181);
  v162 = &v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v163 = &v152 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v166 = &v152 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v167 = &v152 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v165 = &v152 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v152 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v152 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v152 - v48;
  v50 = sub_226E63610();
  v51 = MEMORY[0x28223BE20](v50);
  v54 = &v152 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v55 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = v55 - 3;
    if (v55 < 3)
    {
      return;
    }

LABEL_3:
    v160 = v31;
    v174 = v52;
    v161 = v51;
    v57 = v54;
    sub_226E635F0();
    v58 = (*((*MEMORY[0x277D85000] & *v3) + 0xA0))(a1, v56);
    if (v59)
    {
      (*(v174 + 8))(v57, v161);
      return;
    }

    v159 = v57;
    v60 = v174;
    if ((v58 - 32) <= 0xFFFFFFFFFFFFFFE0)
    {
      goto LABEL_6;
    }

    v61 = v58;
    v62 = v55 - 2;
    v154 = v12;
    v156 = v61;
    v157 = (a1 & 0xC000000000000001);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v64 = MEMORY[0x22AA8D480](v62, a1);
      v63 = v160;
    }

    else
    {
      v63 = v160;
      if (v62 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v64 = *(a1 + 8 * v62 + 32);
    }

    sub_226E63C20();

    sub_226E63500();
    v65 = sub_226E63530();
    v68 = *(v63 + 8);
    v67 = v63 + 8;
    v66 = v68;
    v69 = v49;
    v70 = v181;
    v68(v69, v181);
    v71 = FHDateByAddingMonths(v65, 1);

    v158 = v68;
    if (v71)
    {
      sub_226E63560();

      v71 = sub_226E63530();
      v66(v47, v70);
    }

    v72 = FHDateStartOfMonth(v71);

    v73 = v180;
    if (v72)
    {
      v74 = v182;
      sub_226E63560();

      v75 = 0;
    }

    else
    {
      v75 = 1;
      v74 = v182;
    }

    v76 = v160 + 56;
    v77 = *(v160 + 56);
    v77(v74, v75, 1, v70);
    v78 = v55 - 1;
    if (v157)
    {
      v79 = MEMORY[0x22AA8D480](v78, a1);
    }

    else
    {
      if (v55 > *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v79 = *(a1 + 8 * v78 + 32);
    }

    v80 = v79;
    sub_226E63C20();

    sub_226E63500();
    v81 = sub_226E63530();
    v158(v44, v70);
    v82 = FHDateStartOfMonth(v81);

    v155 = v67;
    if (v82)
    {
      sub_226E63560();

      v83 = 0;
    }

    else
    {
      v83 = 1;
    }

    v84 = v175;
    v157 = v77;
    v175 = v76;
    v77(v29, v83, 1, v70);
    v85 = v70;
    v86 = *(v84 + 48);
    v87 = v182;
    sub_226E1A598(v182, v73, &qword_27D7B6858, &qword_226E688C0);
    sub_226E1A598(v29, v73 + v86, &qword_27D7B6858, &qword_226E688C0);
    v88 = v160;
    v89 = *(v160 + 48);
    v90 = v89(v73, 1, v85);
    v153 = v89;
    if (v90 == 1)
    {
      sub_226E15E98(v29, &qword_27D7B6858, &qword_226E688C0);
      sub_226E15E98(v87, &qword_27D7B6858, &qword_226E688C0);
      if (v89(v73 + v86, 1, v85) == 1)
      {
        sub_226E15E98(v73, &qword_27D7B6858, &qword_226E688C0);
        v91 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      v92 = v169;
      sub_226E1A598(v73, v169, &qword_27D7B6858, &qword_226E688C0);
      if (v89(v73 + v86, 1, v85) != 1)
      {
        v93 = v165;
        (*(v88 + 32))(v165, v73 + v86, v85);
        sub_226E62550(&qword_27D7B6C80, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v94 = sub_226E639A0();
        v95 = v73;
        v96 = v158;
        v158(v93, v85);
        sub_226E15E98(v29, &qword_27D7B6858, &qword_226E688C0);
        sub_226E15E98(v182, &qword_27D7B6858, &qword_226E688C0);
        v97 = v92;
        v91 = v94;
        v96(v97, v85);
        sub_226E15E98(v95, &qword_27D7B6858, &qword_226E688C0);
LABEL_29:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6C78, qword_226E69610);
        v98 = sub_226E63600();
        v99 = *(v98 - 8);
        v100 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_226E685F0;
        (*(v99 + 104))(v101 + v100, *MEMORY[0x277CC9968], v98);
        sub_226E61D78(v101);
        swift_setDeallocating();
        (*(v99 + 8))(v101 + v100, v98);
        swift_deallocClassInstance();
        v102 = v176;
        v103 = v179;
        v104 = v159;
        sub_226E635D0();

        v105 = sub_226E63410();
        LOBYTE(v98) = v106;
        (*(v177 + 8))(v102, v178);
        if (v98)
        {
          (*(v174 + 8))(v104, v161);
          return;
        }

        v108 = v156 < 0x19 || v105 > 5;
        if ((v108 | v91))
        {
          v109 = sub_226E63530();
          v110 = 1;
          v111 = FHDateByAddingMonths(v109, 1);

          v112 = v173;
          v113 = v181;
          v114 = v170;
          if (v111)
          {
            v115 = v164;
            sub_226E63560();

            v110 = 0;
            v116 = v168;
          }

          else
          {
            v116 = v168;
            v115 = v164;
          }

          v157(v115, v110, 1, v113);
          sub_226E62098(v115, v112);
          v117 = v160;
        }

        else
        {
          v117 = v160;
          v112 = v173;
          v118 = v103;
          v113 = v181;
          (*(v160 + 16))(v173, v118, v181);
          v157(v112, 0, 1, v113);
          v114 = v170;
          v116 = v168;
        }

        v119 = v153;
        sub_226E1A598(v112, v116, &qword_27D7B6858, &qword_226E688C0);
        if (v119(v116, 1, v113) == 1)
        {
          v120 = 0;
        }

        else
        {
          v120 = sub_226E63530();
          v158(v116, v113);
        }

        v121 = FHDateStartOfMonth(v120);

        if (v121)
        {
          sub_226E63560();

          v122 = 0;
        }

        else
        {
          v122 = 1;
        }

        v123 = v171;
        v157(v114, v122, 1, v113);
        v124 = v172;
        sub_226E62098(v114, v172);
        sub_226E1A598(v112, v123, &qword_27D7B6858, &qword_226E688C0);
        if (v119(v123, 1, v113) == 1)
        {
          v125 = 0;
        }

        else
        {
          v125 = sub_226E63530();
          v158(v123, v113);
        }

        v126 = FHNumberOfDaysInMonthForDate(v125);

        v127 = v154;
        sub_226E1A598(v124, v154, &qword_27D7B6858, &qword_226E688C0);
        if (v119(v127, 1, v113) == 1)
        {
          v128 = 0;
        }

        else
        {
          v128 = sub_226E63530();
          v158(v127, v113);
        }

        if ((v126 & 0x8000000000000000) == 0)
        {
          v129 = v156;
          if (v156 >= v126)
          {
            v129 = v126;
          }

          v130 = FHDateFromNumberOfDays(v128, v129 - 1);

          if (v130)
          {
            v131 = v166;
            sub_226E63560();

            v134 = *(v117 + 32);
            v132 = v117 + 32;
            v133 = v134;
            v135 = v167;
            v134(v167, v131, v113);
            if (a3 != 20.0 && a3 != 19.0)
            {
              goto LABEL_69;
            }

            v136 = sub_226E63530();
            v137 = GetDayOfWeekFromSignalDate(v136);

            if (v137)
            {
              v138 = v158;
              v160 = v132;
              v139 = sub_226E639C0();
              v141 = v140;

              if ((v139 != 0x7961647275746153 || v141 != 0xE800000000000000) && (sub_226E63FF0() & 1) == 0)
              {
                if ((v139 != 0x7961646E7553 || v141 != 0xE600000000000000) && (sub_226E63FF0() & 1) == 0)
                {

                  v135 = v167;
                  goto LABEL_69;
                }

                v142 = v167;
                v147 = sub_226E63530();
                v144 = FHDateFromNumberOfDays(v147, 1);

                if (v144)
                {

                  v145 = &v183;
                  goto LABEL_68;
                }

LABEL_85:
                __break(1u);
                return;
              }

              v142 = v167;
              v143 = sub_226E63530();
              v144 = FHDateFromNumberOfDays(v143, 2);

              if (v144)
              {

                v145 = &v184;
LABEL_68:
                v146 = *(v145 - 32);
                sub_226E63560();

                v138(v142, v113);
                v133(v142, v146, v113);
                v135 = v142;
LABEL_69:
                sub_226E63510();
                v158(v135, v113);
                sub_226E15E98(v124, &qword_27D7B6858, &qword_226E688C0);
                sub_226E15E98(v112, &qword_27D7B6858, &qword_226E688C0);
                (*(v174 + 8))(v159, v161);
                return;
              }

LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            v158(v135, v113);
          }

          sub_226E15E98(v124, &qword_27D7B6858, &qword_226E688C0);
          sub_226E15E98(v112, &qword_27D7B6858, &qword_226E688C0);
          v60 = v174;
LABEL_6:
          (*(v60 + 8))(v159, v161);
          return;
        }

        goto LABEL_82;
      }

      sub_226E15E98(v29, &qword_27D7B6858, &qword_226E688C0);
      sub_226E15E98(v182, &qword_27D7B6858, &qword_226E688C0);
      v158(v92, v85);
    }

    sub_226E15E98(v73, &qword_27D7B6C70, &unk_226E69600);
    v91 = 0;
    goto LABEL_29;
  }

  v161 = v51;
  v148 = v52;
  v149 = v31;
  v150 = v54;
  v151 = sub_226E63DE0();
  v54 = v150;
  v31 = v149;
  v52 = v148;
  v55 = v151;
  v51 = v161;
  v56 = v55 - 3;
  if (v55 >= 3)
  {
    goto LABEL_3;
  }
}

void sub_226E5BD44(unint64_t a1, uint64_t a2)
{
  v59 = sub_226E63590();
  v4 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226E63610();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v11 = sub_226E63DE0();
    if (v11 < 3)
    {
      return;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 < 3)
    {
      return;
    }
  }

  sub_226E635F0();
  v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v13 = sub_226E639B0();
  [v12 setDateFormat_];

  v14 = sub_226E635E0();
  [v12 setCalendar_];

  if (v11 < a2)
  {
    goto LABEL_100;
  }

  v51 = v10;
  v52 = v8;
  v53 = v7;
  if (v11 == a2)
  {
LABEL_90:

LABEL_91:
    (*(v52 + 8))(v51, v53);
    return;
  }

  v57 = a1;
  v58 = a1 & 0xC000000000000001;
  v55 = a1 + 32;
  v56 = a1 & 0xFFFFFFFFFFFFFF8;
  v54 = v60 + 1;
  v15 = (v4 + 8);
  v16 = 0x8000000000000000;
  v17 = 0x8000000000000000;
  while (1)
  {
    if (a2 >= v11)
    {
      __break(1u);
LABEL_93:

      (*v15)(v6, v59);

      goto LABEL_91;
    }

    if (v58)
    {
      v18 = MEMORY[0x22AA8D480](a2, v57);
      goto LABEL_15;
    }

    if (a2 < 0)
    {
      break;
    }

    if (a2 >= *(v56 + 16))
    {
      goto LABEL_95;
    }

    v18 = *(v55 + 8 * a2);
LABEL_15:
    v19 = v18;
    sub_226E63C20();

    sub_226E63500();
    v20 = sub_226E63530();
    v21 = [v12 stringFromDate_];

    v22 = sub_226E639C0();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    v26 = v22 & 0xFFFFFFFFFFFFLL;
    if ((v24 & 0x2000000000000000) != 0)
    {
      v27 = HIBYTE(v24) & 0xF;
    }

    else
    {
      v27 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
      goto LABEL_93;
    }

    if ((v24 & 0x1000000000000000) == 0)
    {
      if ((v24 & 0x2000000000000000) != 0)
      {
        v60[0] = v22;
        v60[1] = v24 & 0xFFFFFFFFFFFFFFLL;
        if (v22 == 43)
        {
          if (!v25)
          {
            goto LABEL_99;
          }

          if (--v25)
          {
            v30 = 0;
            v40 = v54;
            while (1)
            {
              v41 = *v40 - 48;
              if (v41 > 9)
              {
                break;
              }

              v42 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                break;
              }

              v30 = v42 + v41;
              if (__OFADD__(v42, v41))
              {
                break;
              }

              ++v40;
              if (!--v25)
              {
                goto LABEL_76;
              }
            }
          }
        }

        else if (v22 == 45)
        {
          if (!v25)
          {
            goto LABEL_97;
          }

          if (--v25)
          {
            v30 = 0;
            v34 = v54;
            while (1)
            {
              v35 = *v34 - 48;
              if (v35 > 9)
              {
                break;
              }

              v36 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                break;
              }

              v30 = v36 - v35;
              if (__OFSUB__(v36, v35))
              {
                break;
              }

              ++v34;
              if (!--v25)
              {
                goto LABEL_76;
              }
            }
          }
        }

        else if (v25)
        {
          v30 = 0;
          v45 = v60;
          while (1)
          {
            v46 = *v45 - 48;
            if (v46 > 9)
            {
              break;
            }

            v47 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              break;
            }

            v30 = v47 + v46;
            if (__OFADD__(v47, v46))
            {
              break;
            }

            ++v45;
            if (!--v25)
            {
              goto LABEL_76;
            }
          }
        }
      }

      else
      {
        if ((v22 & 0x1000000000000000) != 0)
        {
          v28 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v28 = sub_226E63EB0();
        }

        v29 = *v28;
        if (v29 == 43)
        {
          if (v26 < 1)
          {
            goto LABEL_98;
          }

          v25 = v26 - 1;
          if (v26 != 1)
          {
            v30 = 0;
            if (!v28)
            {
              goto LABEL_67;
            }

            v37 = v28 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                break;
              }

              v30 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v25)
              {
                goto LABEL_76;
              }
            }
          }
        }

        else if (v29 == 45)
        {
          if (v26 < 1)
          {
            goto LABEL_96;
          }

          v25 = v26 - 1;
          if (v26 != 1)
          {
            v30 = 0;
            if (v28)
            {
              v31 = v28 + 1;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  goto LABEL_75;
                }

                v33 = 10 * v30;
                if ((v30 * 10) >> 64 != (10 * v30) >> 63)
                {
                  goto LABEL_75;
                }

                v30 = v33 - v32;
                if (__OFSUB__(v33, v32))
                {
                  goto LABEL_75;
                }

                ++v31;
                if (!--v25)
                {
                  goto LABEL_76;
                }
              }
            }

LABEL_67:
            LOBYTE(v25) = 0;
LABEL_76:
            v61 = v25;
            v48 = v25;
            goto LABEL_77;
          }
        }

        else
        {
          if (!v26)
          {
            goto LABEL_75;
          }

          v30 = 0;
          if (!v28)
          {
            goto LABEL_67;
          }

          while (1)
          {
            v43 = *v28 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              break;
            }

            v30 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v28;
            if (!--v26)
            {
              goto LABEL_67;
            }
          }
        }
      }

LABEL_75:
      v30 = 0;
      LOBYTE(v25) = 1;
      goto LABEL_76;
    }

    v61 = 0;
    v30 = sub_226E5FB20(v22, v24, 10);
    v48 = v50;
LABEL_77:
    (*v15)(v6, v59);

    if ((v48 & 1) == 0)
    {
      ++a2;
      v49 = (v30 <= v16 ? v16 : v30);
      v16 = v30 >= v17 ? v17 : v49;
      if (v30 > v17)
      {
        v17 = v30;
      }

      if (a2 != v11)
      {
        continue;
      }
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

id PredictionFeatures.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PredictionFeatures.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PredictionFeatures();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_226E5C49C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CC0, &unk_226E69680);
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

void *sub_226E5C5A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CF0, &qword_226E696D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_226E5C624(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_226E64090();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_226E5CFFC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_226E5C704(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_226E63DF0();

    if (v9)
    {

      sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_226E63DE0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_226E5C93C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_226E5CD50(v20 + 1);
    }

    v18 = v8;
    sub_226E5CF78(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
  v11 = sub_226E63D00();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_226E5D11C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_226E63D10();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_226E5C93C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CD8, &qword_226E696A8);
    v2 = sub_226E63E30();
    v15 = v2;
    sub_226E63DD0();
    if (sub_226E63E00())
    {
      sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_226E5CD50(v9 + 1);
        }

        v2 = v15;
        result = sub_226E63D00();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_226E63E00());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_226E5CB2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CF8, &qword_226E696D8);
  result = sub_226E63E20();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_226E64090();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_226E5CD50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CD8, &qword_226E696A8);
  result = sub_226E63E20();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_226E63D00();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_226E5CF78(uint64_t a1, uint64_t a2)
{
  sub_226E63D00();
  result = sub_226E63DC0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_226E5CFFC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226E5CB2C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_226E5D28C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_226E5D51C(v5 + 1);
  }

  v8 = *v3;
  result = sub_226E64090();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_226E64000();
  __break(1u);
  return result;
}

void sub_226E5D11C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226E5CD50(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_226E5D3CC();
      goto LABEL_12;
    }

    sub_226E5D70C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_226E63D00();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_226E63D10();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_226E64000();
  __break(1u);
}

void *sub_226E5D28C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CF8, &qword_226E696D8);
  v2 = *v0;
  v3 = sub_226E63E10();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_226E5D3CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CD8, &qword_226E696A8);
  v2 = *v0;
  v3 = sub_226E63E10();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_226E5D51C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CF8, &qword_226E696D8);
  result = sub_226E63E20();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_226E64090();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_226E5D70C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CD8, &qword_226E696A8);
  result = sub_226E63E20();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_226E63D00();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

char *sub_226E5D920(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226E5D960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226E5D940(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226E5DA64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226E5D960(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CF0, &qword_226E696D0);
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

char *sub_226E5DA64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CE8, &qword_226E696C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t **sub_226E5DB74(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_226E63DE0();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_226E33090(v2, 0);

    v1 = sub_226E605A4(&v5, v3 + 4, v2, v1);
    sub_226E33994(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_226E5DC24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CB0, &qword_226E69670);
  v34 = v4;
  result = sub_226E63F60();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_226E5DEEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_226E63DE0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

void sub_226E5DF50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CB0, &qword_226E69670);
  v2 = *v0;
  v3 = sub_226E63F50();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
}

void sub_226E5E0B8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E20614(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_226E3906C(v16, a3 & 1);
      v11 = sub_226E20614(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_226E64010();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_226E39D48();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a4;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * v11) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t *sub_226E5E214(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_226E5E374(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_226E5E470(v8, v4, v2);
  result = MEMORY[0x22AA8E1B0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_226E5E374(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    v13 = *(*(a3 + 56) + 8 * v10);
    if ((v13 & 0x8000000000000000) == 0 && v13 >= 3)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_226E5E4E8(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_226E5E4E8(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_226E5E470(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_226E5E374(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_226E5E4E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CB0, &qword_226E69670);
  result = sub_226E63F70();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + 8 * v16);
    sub_226E640A0();

    sub_226E63A00();
    result = sub_226E640C0();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_226E5E724(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_226E63FD0();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
        v10 = sub_226E63B20();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

char *sub_226E5E848(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
LABEL_5:
    result = *(v6 + 8 * v4);
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = [result compare_];
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v11;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_226E5E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 integerValue];
      v13 = [v11 integerValue];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_226E5E9FC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v81 = a4;
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 8 * v6);
        v10 = 8 * v8;
        v11 = (*a3 + 8 * v8);
        v13 = *v11;
        v12 = (v11 + 2);
        result = [v9 compare_];
        v14 = result;
        v82 = v8;
        v15 = (v8 + 2);
        while (v5 != v15)
        {
          result = [*v12 compare_];
          ++v15;
          ++v12;
          if ((v14 == -1) == (result != -1))
          {
            v5 = (v15 - 1);
            break;
          }
        }

        v8 = v82;
        if (v14 == -1)
        {
          if (v5 < v82)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v82 < v5)
          {
            v16 = 8 * v5 - 8;
            v17 = v5;
            v18 = v82;
            do
            {
              if (v18 != --v17)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v19 = *(v20 + v10);
                *(v20 + v10) = *(v20 + v16);
                *(v20 + v16) = v19;
              }

              v18 = (v18 + 1);
              v16 -= 8;
              v10 += 8;
            }

            while (v18 < v17);
          }
        }

        v6 = v5;
      }

      v21 = a3[1];
      if (v6 < v21)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_116;
        }

        if (v6 - v8 < v81)
        {
          if (__OFADD__(v8, v81))
          {
            goto LABEL_117;
          }

          if (v8 + v81 >= v21)
          {
            v22 = a3[1];
          }

          else
          {
            v22 = v8 + v81;
          }

          if (v22 < v8)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v6 != v22)
          {
            v23 = *a3;
            v24 = *a3 + 8 * v6 - 8;
            v83 = v8;
            v25 = (v8 - v6);
            do
            {
              v26 = *(v23 + 8 * v6);
              v27 = v25;
              v28 = v24;
              do
              {
                result = [v26 compare_];
                if (result != -1)
                {
                  break;
                }

                if (!v23)
                {
                  goto LABEL_121;
                }

                v29 = *v28;
                v26 = v28[1];
                *v28 = v26;
                v28[1] = v29;
                --v28;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v24 += 8;
              --v25;
            }

            while (v6 != v22);
            v6 = v22;
            v8 = v83;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_226E45B8C(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v32 = *(v7 + 2);
      v31 = *(v7 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_226E45B8C((v31 > 1), v32 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v33;
      v34 = &v7[16 * v32];
      *(v34 + 4) = v8;
      *(v34 + 5) = v6;
      v35 = *v84;
      if (!*v84)
      {
        goto LABEL_125;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v7 + 4);
            v38 = *(v7 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_104;
            }

            v53 = &v7[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_107;
            }

            v59 = &v7[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_111;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v63 = &v7[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_71:
          if (v58)
          {
            goto LABEL_106;
          }

          v66 = &v7[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_109;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_78:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
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
            goto LABEL_118;
          }

          if (!*a3)
          {
            goto LABEL_122;
          }

          v8 = *&v7[16 * v74 + 32];
          v75 = *&v7[16 * v36 + 40];
          sub_226E5F608((*a3 + 8 * v8), (*a3 + 8 * *&v7[16 * v36 + 32]), (*a3 + 8 * v75), v35);
          if (v4)
          {
          }

          if (v75 < v8)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_226E472C4(v7);
          }

          if (v74 >= *(v7 + 2))
          {
            goto LABEL_101;
          }

          v76 = &v7[16 * v74];
          *(v76 + 4) = v8;
          *(v76 + 5) = v75;
          result = sub_226E47238(v36);
          v33 = *(v7 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v7[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_102;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_103;
        }

        v48 = &v7[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_105;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_108;
        }

        if (v52 >= v44)
        {
          v70 = &v7[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_112;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_88;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_88:
  v8 = *v84;
  if (!*v84)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_226E472C4(v7);
    v7 = result;
  }

  v77 = *(v7 + 2);
  if (v77 >= 2)
  {
    while (*a3)
    {
      v78 = *&v7[16 * v77];
      v79 = *&v7[16 * v77 + 24];
      sub_226E5F608((*a3 + 8 * v78), (*a3 + 8 * *&v7[16 * v77 + 16]), (*a3 + 8 * v79), v8);
      if (v4)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_226E472C4(v7);
      }

      if (v77 - 2 >= *(v7 + 2))
      {
        goto LABEL_114;
      }

      v80 = &v7[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_226E47238(v77 - 1);
      v77 = *(v7 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

void sub_226E5EFA0(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_226E472C4(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_226E5F83C((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_226E472C4(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_226E47238(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 integerValue];
      v104 = [v14 integerValue];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 integerValue];
        v7 = [v18 integerValue];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_226E45B8C(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_226E45B8C((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_226E5F83C((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_226E472C4(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_226E47238(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 integerValue];
    v41 = [v39 integerValue];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = (v107 + 1);
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_226E5F608(id *__src, id *__dst, id *a3, id *a4)
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
LABEL_25:
      v17 = v6 - 1;
      --v5;
      v18 = v14;
      do
      {
        v19 = v5 + 1;
        v20 = *--v18;
        if ([v20 compare_] == -1)
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (--v6, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        --v5;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
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
      while ([*v6 compare_] == -1)
      {
        v15 = v6;
        v16 = v7 == v6++;
        if (!v16)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v7 = *v15;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_226E5F83C(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 integerValue];
          v35 = [v33 integerValue];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 integerValue];
          v20 = [v18 integerValue];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

unsigned __int8 *sub_226E5FB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_226E63A90();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_226E600AC(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_226E63EB0();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_226E600AC(uint64_t a1, unint64_t a2)
{
  v2 = sub_226E63AA0();
  v6 = sub_226E6012C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_226E6012C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_226E63D90();
    if (!v9 || (v10 = v9, v11 = sub_226E200D8(v9, 0), v12 = sub_226E60284(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_226E639F0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_226E639F0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_226E63EB0();
LABEL_4:

  return sub_226E639F0();
}

unint64_t sub_226E60284(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_226E56000(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_226E63A60();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_226E63EB0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_226E56000(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_226E63A40();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_226E604A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t *sub_226E605A4(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_226E63DD0();
  sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
  sub_226E62500(&qword_27D7B6CE0, &qword_280CE9FA8, 0x277CCA980);
  result = sub_226E63C60();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_226E63E00())
      {
        goto LABEL_30;
      }

      sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

uint64_t sub_226E607F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA8D240](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_226E5C624(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_226E6086C(void *a1)
{
  if (!a1)
  {
    return;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v21 = sub_226E639C0();
  v22 = v5;
  v20 = a1;

  MEMORY[0x22AA8D010](0x657079745F612ELL, 0xE700000000000000);

  v6 = sub_226E639B0();

  v7 = *(v3 + 16);
  if (v7)
  {
    v19 = v4;
    v8 = sub_226E5C5A0(v7, 0);
    v9 = sub_226E604A4(&v21, v8 + 4, v7, v3);
    v10 = v21;

    sub_226E33994(v10);
    if (v9 != v7)
    {
      __break(1u);
      goto LABEL_15;
    }

    v4 = v19;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  sub_226E5820C(v8);

  v11 = sub_226E63AE0();

  [v20 addInClauseWithFieldName:v6 expressions:v11];

  v21 = sub_226E639C0();
  v22 = v12;

  MEMORY[0x22AA8D010](0x657079745F742ELL, 0xE700000000000000);

  v13 = sub_226E639B0();

  v14 = *(v4 + 16);
  if (v14)
  {
    v15 = sub_226E5C5A0(*(v4 + 16), 0);
    v16 = sub_226E604A4(&v21, v15 + 4, v14, v4);
    v17 = v21;

    sub_226E33994(v17);
    if (v16 == v14)
    {
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_11:
  sub_226E5820C(v15);

  v18 = sub_226E63AE0();

  [v20 addInClauseWithFieldName:v13 expressions:v18];
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_226E60B58(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1;
  [v5 addDatabaseClause_];
  [v5 addDatabaseClause_];
  [v5 addDatabaseClause_];
}

unint64_t sub_226E60C08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6CB0, &qword_226E69670);
    v3 = sub_226E63F70();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226E20614(v5, v6);
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

uint64_t sub_226E60D04(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v2 = *(v1[2] + OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_fields);
  if (*(result + 16) != *(v2 + 16))
  {
    return result;
  }

  v177 = v1[3];
  v175 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v174 = v1[10];

  sub_226E54128(v8, v2, &v179);
  v203 = v189;
  v204 = v190;
  v205 = v191;
  v206 = v192;
  v199 = v185;
  v200 = v186;
  v201 = v187;
  v202 = v188;
  v195 = v181;
  v196 = v182;
  v197 = v183;
  v198 = v184;
  v193 = v179;
  v194 = v180;
  if (*(&v180 + 1) && (!v194 && *(&v180 + 1) == 0xE000000000000000 || (sub_226E63FF0() & 1) != 0))
  {
    return sub_226E625F4(&v193);
  }

  v170 = v5;
  v189 = v203;
  v190 = v204;
  v191 = v205;
  v192 = v206;
  v185 = v199;
  v186 = v200;
  v187 = v201;
  v188 = v202;
  v181 = v195;
  v182 = v196;
  v183 = v197;
  v184 = v198;
  v179 = v193;
  v180 = v194;
  sub_226E5971C(&v179);
  if ((v9 & 0xC000000000000001) != 0)
  {

    sub_226E62598(&v193, &v179);

    sub_226E63DD0();
    sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
    sub_226E62500(&qword_27D7B6C88, &qword_280CE9F98, off_2785CA820);
    sub_226E63C60();
    v10 = *(&v179 + 1);
    v11 = v179;
    v12 = *(&v180 + 1);
    v13 = v180;
    v14 = v181;
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v9 + 56);
    v11 = v9;

    sub_226E62598(&v193, &v179);

    v14 = v18;
    v12 = 0;
  }

  v171 = v4;
  v172 = v7;
  v169 = v6;
  v173 = v3;
  v19 = (v13 + 64) >> 6;
  v176 = v11;
  v20 = &selRef_columnNameAtIndex_;
  while (1)
  {
    v21 = v14;
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    v24 = sub_226E63E00();
    if (!v24 || (*&v211[0] = v24, sub_226E202A4(0, &qword_280CE9F98, off_2785CA820), swift_dynamicCast(), v23 = v209, v178 = v21, v20 = &selRef_columnNameAtIndex_, !v209))
    {
LABEL_108:
      sub_226E33994(v11);
      sub_226E625F4(&v193);

      sub_226E625F4(&v193);
    }

LABEL_26:
    v25 = [v23 featureRank];
    if (!v25)
    {
      goto LABEL_111;
    }

    v26 = v25;
    v27 = [v25 integerValue];

    v28 = [v23 v20[129]];
    if (!v28)
    {
      goto LABEL_112;
    }

    v29 = v28;
    sub_226E639C0();

    sub_226E639C0();
    v30 = sub_226E63A80();

    v31 = [v23 v20[129]];
    if (!v31)
    {
      goto LABEL_113;
    }

    v32 = v31;
    v33 = sub_226E639C0();
    v35 = v34;

    if (!*(v177 + 16))
    {
      goto LABEL_35;
    }

    sub_226E20614(v33, v35);
    v37 = v36;

    v38 = v37 & v30 & (v27 == 7);
    v11 = v176;
    v20 = &selRef_columnNameAtIndex_;
    if ((v38 & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = [v23 featureLabel];
    if (!v39)
    {
      goto LABEL_114;
    }

    v40 = v39;
    v41 = sub_226E639C0();
    v43 = v42;

    swift_beginAccess();
    v44 = *(v175 + 16);
    if (!*(v44 + 16))
    {

LABEL_37:
      swift_endAccess();
      v210 = MEMORY[0x277D84FA0];
      goto LABEL_38;
    }

    v45 = sub_226E20614(v41, v43);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      goto LABEL_37;
    }

    v48 = *(*(v44 + 56) + 8 * v45);
    swift_endAccess();
    v210 = v48;

LABEL_38:
    v20 = &selRef_columnNameAtIndex_;
    if (!*(&v193 + 1) || (v198 & 1) != 0 || (v49 = *(&v197 + 1), v211[0] = v194, (v50 = *(&v194 + 1)) == 0) || (v201 & 1) != 0 || !v202 || (v51 = v203) == 0 || (BYTE8(v196) & 1) != 0 || (v200 & 1) != 0 || (v204 & 1) != 0 || (v205 & 1) != 0 || (v206 & 1) != 0)
    {

      goto LABEL_16;
    }

    v165 = v193;
    v166 = v202;
    v167 = *&v211[0];
    v52 = *(&v200 + 1);
    v163 = *(&v201 + 1);
    v53 = *(&v202 + 1);
    v160 = *(&v199 + 1);
    v161 = v196;
    v158 = *(&v204 + 1);
    v159 = *(&v203 + 1);
    v157 = *(&v205 + 1);
    v54 = [v23 featureLabel];
    if (!v54)
    {
      goto LABEL_131;
    }

    v55 = v54;
    v168 = v50;
    v164 = v51;
    v56 = sub_226E639C0();
    v58 = v57;

    swift_beginAccess();
    v59 = *(v173 + 16);
    if (*(v59 + 16))
    {
      v60 = sub_226E20614(v56, v58);
      v62 = v61;

      if (v62)
      {
        v63 = *(*(v59 + 56) + 8 * v60);
        swift_endAccess();

        goto LABEL_55;
      }
    }

    else
    {
    }

    swift_endAccess();
    v63 = MEMORY[0x277D84F90];
LABEL_55:
    v162 = v53;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_226E1FB8C(0, *(v63 + 2) + 1, 1, v63);
    }

    v65 = *(v63 + 2);
    v64 = *(v63 + 3);
    if (v65 >= v64 >> 1)
    {
      v63 = sub_226E1FB8C((v64 > 1), v65 + 1, 1, v63);
    }

    *(v63 + 2) = v65 + 1;
    *&v63[16 * v65 + 32] = v165;
    v66 = [v23 featureLabel];
    if (!v66)
    {
      goto LABEL_132;
    }

    v67 = v66;
    v68 = sub_226E639C0();
    v70 = v69;

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v207 = *(v173 + 16);
    *(v173 + 16) = 0x8000000000000000;
    sub_226E39A20(v63, v68, v70, isUniquelyReferenced_nonNull_native, &qword_27D7B6930, &unk_226E696B0);

    *(v173 + 16) = v207;
    swift_endAccess();
    sub_226E5C704(&v209, [objc_allocWithZone(MEMORY[0x277CCA980]) initWithInteger_]);

    v72 = [v23 featureLabel];
    if (!v72)
    {
      goto LABEL_133;
    }

    v73 = v72;
    v74 = sub_226E639C0();
    v76 = v75;

    v77 = v210;
    swift_beginAccess();

    v78 = swift_isUniquelyReferenced_nonNull_native();
    v207 = *(v175 + 16);
    *(v175 + 16) = 0x8000000000000000;
    sub_226E39A20(v77, v74, v76, v78, &qword_27D7B6CD0, &qword_226E696A0);

    *(v175 + 16) = v207;
    swift_endAccess();
    swift_beginAccess();
    v79 = *(v171 + 16);
    if (*(v79 + 16) && (v80 = sub_226E20614(v167, v168), (v81 & 1) != 0))
    {
      v82 = *(*(v79 + 56) + 8 * v80);
      swift_endAccess();
      v208 = v82;
    }

    else
    {
      swift_endAccess();
      v208 = MEMORY[0x277D84FA0];
    }

    v83 = [v23 featureLabel];
    if (!v83)
    {
      goto LABEL_134;
    }

    v84 = v83;
    v85 = sub_226E639C0();
    v87 = v86;

    sub_226E4B6D8(&v209, v85, v87);

    v88 = v208;
    swift_beginAccess();

    sub_226E1A598(v211, &v207, &qword_27D7B6B98, qword_226E68D60);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v207 = *(v171 + 16);
    *(v171 + 16) = 0x8000000000000000;
    sub_226E39A20(v88, v167, v168, v89, &qword_27D7B6CC8, &unk_226E69690);
    sub_226E15E98(v211, &qword_27D7B6B98, qword_226E68D60);
    *(v171 + 16) = v207;
    swift_endAccess();
    v90 = [v23 featureLabel];
    if (!v90)
    {
      goto LABEL_135;
    }

    v91 = v90;
    v92 = sub_226E639C0();
    v94 = v93;

    swift_beginAccess();
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v207 = *(v170 + 16);
    v96 = v207;
    *(v170 + 16) = 0x8000000000000000;
    v98 = sub_226E20614(v92, v94);
    v99 = v96[2];
    v100 = (v97 & 1) == 0;
    v101 = v99 + v100;
    if (__OFADD__(v99, v100))
    {
      goto LABEL_115;
    }

    if (v96[3] >= v101)
    {
      if ((v95 & 1) == 0)
      {
        v155 = v97;
        sub_226E5DF50();
        v97 = v155;
      }
    }

    else
    {
      v156 = v97;
      sub_226E5DC24(v101, v95);
      v102 = sub_226E20614(v92, v94);
      v104 = v103 & 1;
      v97 = v156;
      if ((v156 & 1) != v104)
      {
        goto LABEL_136;
      }

      v98 = v102;
    }

    v105 = v207;
    *(v170 + 16) = v207;
    if ((v97 & 1) == 0)
    {
      v105[(v98 >> 6) + 8] |= 1 << v98;
      v106 = (v105[6] + 16 * v98);
      *v106 = v92;
      v106[1] = v94;
      *(v105[7] + 8 * v98) = 0;
      v107 = v105[2];
      v108 = __OFADD__(v107, 1);
      v109 = v107 + 1;
      if (v108)
      {
        goto LABEL_125;
      }

      v105[2] = v109;
    }

    v110 = v105[7];
    v111 = *(v110 + 8 * v98);
    v108 = __OFADD__(v111, 1);
    v112 = v111 + 1;
    if (v108)
    {
      goto LABEL_117;
    }

    *(v110 + 8 * v98) = v112;
    swift_endAccess();

    v113 = [v23 featureLabel];
    if (!v113)
    {
      goto LABEL_129;
    }

    v114 = v113;
    v115 = sub_226E639C0();
    v117 = v116;

    swift_beginAccess();
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v207 = *(v169 + 16);
    *(v169 + 16) = 0x8000000000000000;
    sub_226E5E0B8(v115, v117, v118, v52);

    *(v169 + 16) = v207;
    swift_endAccess();
    v119 = [v23 featureLabel];
    if (!v119)
    {
      goto LABEL_130;
    }

    v120 = v119;
    v121 = sub_226E639C0();
    v123 = v122;

    swift_beginAccess();
    v124 = *(v172 + 16);
    if (*(v124 + 16))
    {
      v125 = sub_226E20614(v121, v123);
      v127 = v126;

      if (v127)
      {
        v128 = *(*(v124 + 56) + 8 * v125);
        swift_endAccess();

        goto LABEL_84;
      }
    }

    else
    {
    }

    swift_endAccess();
    v128 = &unk_283A7B378;
LABEL_84:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = sub_226E5DED8(v128);
    }

    if (!*(v128 + 2))
    {
      goto LABEL_116;
    }

    *(v128 + 4) = v163;
    *(v128 + 5) = v166;

    v129 = *(v128 + 2);

    if (v129 < 2)
    {
      goto LABEL_118;
    }

    *(v128 + 6) = v167;
    *(v128 + 7) = v168;

    v130 = *(v128 + 2);

    if (v130 < 3)
    {
      goto LABEL_119;
    }

    *(v128 + 8) = v162;
    *(v128 + 9) = v164;

    v131 = [v23 featureLabel];
    if (!v131)
    {
      goto LABEL_127;
    }

    v132 = v131;
    v133 = sub_226E639C0();
    v135 = v134;

    swift_beginAccess();

    v136 = swift_isUniquelyReferenced_nonNull_native();
    v207 = *(v172 + 16);
    *(v172 + 16) = 0x8000000000000000;
    sub_226E39A20(v128, v133, v135, v136, &qword_27D7B6930, &unk_226E696B0);

    *(v172 + 16) = v207;
    swift_endAccess();
    v137 = [v23 featureLabel];
    if (!v137)
    {
      goto LABEL_128;
    }

    v138 = v137;
    v139 = sub_226E639C0();
    v141 = v140;

    swift_beginAccess();
    v142 = *(v174 + 16);
    if (!*(v142 + 16))
    {

LABEL_95:
      swift_endAccess();
      v146 = &unk_283A7B3C8;
      goto LABEL_96;
    }

    v143 = sub_226E20614(v139, v141);
    v145 = v144;

    if ((v145 & 1) == 0)
    {
      goto LABEL_95;
    }

    v146 = *(*(v142 + 56) + 8 * v143);
    swift_endAccess();

LABEL_96:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v147 = *(v146 + 2);
      if (!v147)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v146 = sub_226E5DEC4(v146);
      v147 = *(v146 + 2);
      if (!v147)
      {
        goto LABEL_121;
      }
    }

    *(v146 + 4) = *(v146 + 4) + v161;
    if (v147 == 1)
    {
      goto LABEL_120;
    }

    v148 = v160;
    if (*(v146 + 5) >= v160)
    {
      v148 = *(v146 + 5);
    }

    *(v146 + 5) = v148;
    if (v147 < 3)
    {
      goto LABEL_122;
    }

    *(v146 + 6) = v159;
    if (v147 == 3)
    {
      goto LABEL_124;
    }

    *(v146 + 7) = v158;
    if (v147 < 5)
    {
      goto LABEL_123;
    }

    *(v146 + 8) = v157;
    v149 = [v23 featureLabel];
    if (!v149)
    {
      goto LABEL_126;
    }

    v150 = v149;

    v151 = sub_226E639C0();
    v153 = v152;

    swift_beginAccess();

    v154 = swift_isUniquelyReferenced_nonNull_native();
    v207 = *(v174 + 16);
    *(v174 + 16) = 0x8000000000000000;
    sub_226E39A20(v146, v151, v153, v154, &qword_27D7B6CB8, &qword_226E69678);

    *(v174 + 16) = v207;
    swift_endAccess();
LABEL_35:

    v11 = v176;
    v20 = &selRef_columnNameAtIndex_;
LABEL_16:

    v14 = v178;
  }

  v22 = v12;
  if (v14)
  {
LABEL_22:
    v178 = (v14 - 1) & v14;
    v23 = *(*(v11 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v23)
    {
      goto LABEL_108;
    }

    goto LABEL_26;
  }

  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_108;
    }

    v14 = *(v10 + 8 * v12);
    ++v22;
    if (v14)
    {
      goto LABEL_22;
    }
  }

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
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
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
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  result = sub_226E64010();
  __break(1u);
  return result;
}

uint64_t sub_226E61D78(uint64_t a1)
{
  v2 = sub_226E63600();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6C98, &qword_226E69668);
    v9 = sub_226E63E40();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_226E62550(&qword_27D7B6CA0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_226E63980();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_226E62550(&qword_27D7B6CA8, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_226E639A0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226E62098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_226E62210(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_226E63DE0())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6C90, &unk_226E69658);
      v3 = sub_226E63E40();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_226E63DE0();
      if (!v5)
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

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x22AA8D480](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_226E63D00();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_226E63D10();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_226E63D00();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_226E63D10();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_226E62500(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_226E202A4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226E62550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226E62648(void *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = *(v1 + 16);
  sub_226E639C0();
  v7 = @"==";
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v4 = sub_226E639C0();
  MEMORY[0x22AA8D010](v4);

  v5 = sub_226E639B0();

  if (!*(v3 + 16))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v6 = sub_226E639B0();

  [a1 addStringClause:v7 fieldName:v5 expression:v6];
}

uint64_t sub_226E62768(uint64_t result)
{
  if (result && *(result + 16) == 1)
  {
    v10 = v1;
    v11 = v2;
    v12 = v3;
    sub_226E2233C(result + 32, v9);
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }

    swift_beginAccess();
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
  }

  return result;
}

uint64_t sub_226E62808(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v2 + 24);
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v3 + OBJC_IVAR____TtC13FinHealthCore18PredictionFeatures_fields);

  sub_226E54128(v5, v6, &v11);
  if (!*(&v12 + 1))
  {
    return sub_226E625F4(&v11);
  }

  v9[10] = v21;
  v9[11] = v22;
  v9[12] = v23;
  v10 = v24;
  v9[6] = v17;
  v9[7] = v18;
  v9[8] = v19;
  v9[9] = v20;
  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v9[5] = v16;
  v9[0] = v11;
  v9[1] = v12;
  sub_226E5971C(v9);
  sub_226E58F10(v7, (v4 + 16));
  sub_226E625F4(&v11);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}