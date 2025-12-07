uint64_t *sub_24616F304@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_24616F9F0(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_24619EE3C();
      swift_allocObject();
      v8 = sub_24619EDEC();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_24619EE7C();
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

char *sub_24616F3CC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
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
      sub_2461701E0(v7, v6);
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

    sub_2461701E0(v7, v6);
    *v4 = xmmword_2461A0F00;
    sub_2461701E0(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_24619EDFC() && __OFSUB__(v7, sub_24619EE2C()))
      {
LABEL_26:
        __break(1u);
      }

      sub_24619EE3C();
      swift_allocObject();
      v14 = sub_24619EDDC();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_24616F870(v7, v7 >> 32, a1);

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

    sub_2461701E0(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_2461A0F00;
    sub_2461701E0(0, 0xC000000000000000);
    sub_24619EE6C();
    result = sub_24616F870(*(v17 + 2), *(v17 + 3), a1);
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

_BYTE *sub_24616F770@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_24616F9F0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_24616FB48(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24616FBC4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_24616F804(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_24616F870(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_24619EDFC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_24619EE2C();
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

  v12 = sub_24619EE1C();
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

unint64_t sub_24616F924(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24619F95C();
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
    v5 = MEMORY[0x24C19A860](15, a1 >> 16);
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

uint64_t sub_24616F9A0@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_24619FAFC();
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

uint64_t sub_24616F9F0(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_24616FAA8(uint64_t result)
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
      sub_24619EE3C();
      swift_allocObject();
      sub_24619EE0C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_24619EE7C();
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

uint64_t sub_24616FB48(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24619EE3C();
  swift_allocObject();
  result = sub_24619EDEC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24619EE7C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_24616FBC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24619EE3C();
  swift_allocObject();
  result = sub_24619EDEC();
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

uint64_t _sSo20ODIServiceProviderIda7CoreODIE8allCasesSayABGvgZ_0()
{
  v15 = MEMORY[0x277D84F90];
  if (qword_281391898 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v0);
  if (qword_281391890 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v1);
  if (qword_281391EC8 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v2);
  if (qword_2813918B8 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v3);
  if (qword_27EE3F798 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v4);
  if (qword_2813918C0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v5);
  if (qword_2813918B0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v6);
  if (qword_281391C88 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v7);
  if (qword_2813918D0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v8);
  if (qword_27EE3F7A0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v9);
  if (qword_281391ED0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v10);
  if (qword_281391BE0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v11);
  if (qword_281391EC0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v12);
  if (qword_281391CE0 != -1)
  {
    swift_once();
  }

  sub_246170AC0(v13);
  return v15;
}

unint64_t sub_246170038()
{
  result = qword_27EE3F8F0;
  if (!qword_27EE3F8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE3F8F8, &qword_2461A0F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3F8F0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_246170104()
{
  result = qword_281391870;
  if (!qword_281391870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE3F900, &qword_2461A0F58);
    sub_246170188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391870);
  }

  return result;
}

unint64_t sub_246170188()
{
  result = qword_281391F98;
  if (!qword_281391F98)
  {
    sub_24619F1AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391F98);
  }

  return result;
}

uint64_t sub_2461701E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_246170234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F910, &qword_2461A0F68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_24617029C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_24616F804(sub_24617036C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_246170304(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_246170358(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2461701E0(result, a2);
  }

  return result;
}

uint64_t sub_2461703A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24618BC30(a3, v25 - v10, &qword_27EE3F870, &qword_2461A0FE0);
  v12 = sub_24619F9CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24616CFC4(v11, &qword_27EE3F870, &qword_2461A0FE0);
  }

  else
  {
    sub_24619F9BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24619F99C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24619F8EC() + 32;
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

      sub_24616CFC4(a3, &qword_27EE3F870, &qword_2461A0FE0);

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

  sub_24616CFC4(a3, &qword_27EE3F870, &qword_2461A0FE0);
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

uint64_t sub_2461706A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_24616B164(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_24616595C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_24616A524();
        v14 = v16;
      }

      result = sub_24616941C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_2461707A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D007A0];
  v3 = sub_24619F7FC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_246170814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24618BC30(a3, v22 - v9, &qword_27EE3F870, &qword_2461A0FE0);
  v11 = sub_24619F9CC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24616CFC4(v10, &qword_27EE3F870, &qword_2461A0FE0);
  }

  else
  {
    sub_24619F9BC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24619F99C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24619F8EC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24616CFC4(a3, &qword_27EE3F870, &qword_2461A0FE0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24616CFC4(a3, &qword_27EE3F870, &qword_2461A0FE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_246170AC0(void *result)
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

  result = sub_24616565C(result, v10, 1, v3);
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

  type metadata accessor for ODIServiceProviderId(0);
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

__CFString *sub_246170BD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2461A0F70;
  *(v0 + 32) = @"com.apple.bko.ach_ingest";
  *(v0 + 40) = @"com.apple.bko.repayment";
  *(v0 + 48) = @"com.apple.bko.repayment_change";
  *(v0 + 56) = @"com.apple.bko.installment_repayment_change";
  *(v0 + 64) = @"com.apple.bko.installment_request_auth";
  *(v0 + 72) = @"com.apple.bko.id_update";
  qword_2813927F0 = v0;
  v1 = @"com.apple.bko.ach_ingest";
  v2 = @"com.apple.bko.repayment";
  v3 = @"com.apple.bko.repayment_change";
  v4 = @"com.apple.bko.installment_repayment_change";
  v5 = @"com.apple.bko.installment_request_auth";

  return @"com.apple.bko.id_update";
}

void *sub_246170CB4()
{
  if (qword_281391BD8 != -1)
  {
    swift_once();
  }

  v0 = qword_281392818;
  v1 = qword_2813918C8;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_246170AC0(v2);
  qword_2813927C8 = v0;
  return result;
}

__CFString *sub_246170D88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2461A0F80;
  *(v0 + 32) = @"com.apple.cash.topup";
  *(v0 + 40) = @"com.apple.cash.cip";
  *(v0 + 48) = @"com.apple.cash.ach";
  *(v0 + 56) = @"com.apple.cash.p2p";
  *(v0 + 64) = @"com.apple.cash.p2p.proximity";
  qword_2813927E0 = v0;
  v1 = @"com.apple.cash.topup";
  v2 = @"com.apple.cash.cip";
  v3 = @"com.apple.cash.ach";
  v4 = @"com.apple.cash.p2p";

  return @"com.apple.cash.p2p.proximity";
}

id sub_246170E74(uint64_t a1, void **a2, id *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2461A0F90;
  v8 = *a2;
  v12 = *a3;
  v9 = *a3;
  *(v7 + 32) = *a2;
  *(v7 + 40) = v9;
  *a4 = v7;
  v10 = v8;

  return v12;
}

__CFString *sub_246170F04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2461A0FA0;
  *(v0 + 32) = @"com.apple.saving.add";
  *(v0 + 40) = @"com.apple.saving.others";
  *(v0 + 48) = @"com.apple.saving.fromcash";
  *(v0 + 56) = @"com.apple.saving.setting";
  *(v0 + 64) = @"com.apple.saving.onboard";
  *(v0 + 72) = @"com.apple.saving.firstaccess";
  *(v0 + 80) = @"com.apple.saving.frombank";
  *(v0 + 88) = @"com.apple.saving.fromsplit";
  *(v0 + 96) = @"com.apple.saving.tocash";
  *(v0 + 104) = @"com.apple.saving.tobank";
  qword_2813927E8 = v0;
  v1 = @"com.apple.saving.add";
  v2 = @"com.apple.saving.others";
  v3 = @"com.apple.saving.fromcash";
  v4 = @"com.apple.saving.setting";
  v5 = @"com.apple.saving.onboard";
  v6 = @"com.apple.saving.firstaccess";
  v7 = @"com.apple.saving.frombank";
  v8 = @"com.apple.saving.fromsplit";
  v9 = @"com.apple.saving.tocash";

  return @"com.apple.saving.tobank";
}

__CFString *sub_246171050()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2461A0EF0;
  *(v0 + 32) = @"com.apple.bc.consent";
  *(v0 + 40) = @"com.apple.bc.validation";
  *(v0 + 48) = @"com.apple.bc.validation.bg.relinking";
  qword_2813927D8 = v0;
  v1 = @"com.apple.bc.consent";
  v2 = @"com.apple.bc.validation";

  return @"com.apple.bc.validation.bg.relinking";
}

__CFString *sub_246171108()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2461A0FB0;
  *(v0 + 32) = @"com.apple.apc.provision.supereasy";
  *(v0 + 40) = @"com.apple.apc.provision.easy";
  *(v0 + 48) = @"com.apple.apc.provision.manual";
  *(v0 + 56) = @"com.apple.apc.provision.inapp";
  *(v0 + 64) = @"com.apple.apc.provision.transit";
  *(v0 + 72) = @"com.apple.apc.provision.access";
  *(v0 + 80) = @"com.apple.apc.provision.identity";
  *(v0 + 88) = @"com.apple.apc.provision.mdp";
  *(v0 + 96) = @"com.apple.apc.provision.cash";
  *(v0 + 104) = @"com.apple.apc.provision.bw";
  *(v0 + 112) = @"com.apple.apc.provision.tap";
  *(v0 + 120) = @"com.apple.apc.provision.other";
  qword_281392858 = v0;
  v1 = @"com.apple.apc.provision.supereasy";
  v2 = @"com.apple.apc.provision.easy";
  v3 = @"com.apple.apc.provision.manual";
  v4 = @"com.apple.apc.provision.inapp";
  v5 = @"com.apple.apc.provision.transit";
  v6 = @"com.apple.apc.provision.access";
  v7 = @"com.apple.apc.provision.identity";
  v8 = @"com.apple.apc.provision.mdp";
  v9 = @"com.apple.apc.provision.cash";
  v10 = @"com.apple.apc.provision.bw";
  v11 = @"com.apple.apc.provision.tap";

  return @"com.apple.apc.provision.other";
}

__CFString *sub_246171280()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2461A0FB0;
  *(v0 + 32) = @"com.apple.authkit.sign_in";
  *(v0 + 40) = @"com.apple.authkit.trusted_phone_number_change";
  *(v0 + 48) = @"com.apple.authkit.trusted_device_change";
  *(v0 + 56) = @"com.apple.authkit.password_change";
  *(v0 + 64) = @"com.apple.authkit.apple_id_change";
  *(v0 + 72) = @"com.apple.authkit.liveness";
  *(v0 + 80) = @"com.apple.authkit.recovery";
  *(v0 + 88) = @"com.apple.authkit.security_key_change";
  *(v0 + 96) = @"com.apple.authkit.recovery_key_change";
  *(v0 + 104) = @"com.apple.authkit.adp_change";
  *(v0 + 112) = @"com.apple.authkit.account_creation";
  *(v0 + 120) = @"com.apple.authkit.hsa2upgrade";
  qword_281392848 = v0;
  v1 = @"com.apple.authkit.sign_in";
  v2 = @"com.apple.authkit.trusted_phone_number_change";
  v3 = @"com.apple.authkit.trusted_device_change";
  v4 = @"com.apple.authkit.password_change";
  v5 = @"com.apple.authkit.apple_id_change";
  v6 = @"com.apple.authkit.liveness";
  v7 = @"com.apple.authkit.recovery";
  v8 = @"com.apple.authkit.security_key_change";
  v9 = @"com.apple.authkit.recovery_key_change";
  v10 = @"com.apple.authkit.adp_change";
  v11 = @"com.apple.authkit.account_creation";

  return @"com.apple.authkit.hsa2upgrade";
}

uint64_t sub_246171420(uint64_t a1, void *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F888, &unk_2461A0DD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2461A0FC0;
  *(v5 + 32) = *a2;
  *a3 = v5;

  return MEMORY[0x2821F9840]();
}

void *sub_2461714EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v23 - v2;
  v4 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager;
  if (*(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager))
  {
    v5 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
    sub_24616CB20(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger, v24);
    v7 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__locationBundle);
    v8 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__locationBundleIdentifier + 8);
    v23[0] = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__locationBundleIdentifier);
    v9 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionIdentifier);
    v10 = *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionIdentifier + 8);
    type metadata accessor for ODIBindingsManager();
    v5 = swift_allocObject();
    v5[13] = 0;
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(MEMORY[0x277CCAAF8]);

    v12 = [v11 init];
    v5[16] = 0;
    v5[2] = v6;
    v5[13] = &off_2858EF4B0;
    v5[14] = v12;
    swift_unknownObjectWeakAssign();
    sub_24616CB20(v24, (v5 + 3));
    type metadata accessor for ODIBindingsFiller(0);
    swift_allocObject();
    v13 = v7;

    v14 = v6;
    v15 = v8;
    v16 = v0;
    v5[9] = sub_24615AC28(v9, v10, v7, v23[0], v15);
    type metadata accessor for ODIBindingsManager.CallbackQueuer(0);
    swift_allocObject();

    v5[8] = sub_24615E014(v9, v10);
    sub_24619F27C();
    v23[1] = sub_24619F8BC();
    v23[2] = v17;

    MEMORY[0x24C19A830](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
    v5[10] = sub_24619F24C();
    type metadata accessor for ODIFieldsManager();
    swift_allocObject();
    v18 = v14;
    v19 = sub_24619B458(v9, v10, v18);

    v5[11] = v19;
    v5[15] = sub_24616D0C0(v18);
    v20 = sub_24619F9CC();
    (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v5;

    sub_246170814(0, 0, v3, &unk_2461A1310, v21);

    __swift_destroy_boxed_opaque_existential_1(v24);
    *(v16 + v4) = v5;
  }

  return v5;
}

uint64_t sub_246171854()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v1[5] = swift_task_alloc();
  v2 = sub_24619F7FC();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_24619F46C();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_24619F22C();
  v1[12] = v4;
  v5 = *(v4 - 8);
  v1[13] = v5;
  v1[14] = *(v5 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246171A18, v0, 0);
}

uint64_t sub_246171A18()
{
  (*(v0[10] + 104))(v0[11], *MEMORY[0x277D006B0], v0[9]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_246171AE4;
  v2 = v0[16];
  v3 = v0[11];

  return sub_2461970D8(v2, v3);
}

uint64_t sub_246171AE4(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 32);
  *(*v1 + 144) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_246171C58, v5, 0);
}

uint64_t sub_246171C58()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[12];
  v20 = v0[18];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v16 = v0[5];
  v17 = v0[15];
  v18 = v0[14];
  v19 = v0[4];
  __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v19 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  sub_24619FAEC();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x24C19A830](0xD00000000000001CLL, 0x80000002461A8500);
  v15 = v3;
  sub_24619FB6C();
  (*(v4 + 104))(v5, *MEMORY[0x277D00760], v6);
  sub_24619F6CC();

  (*(v4 + 8))(v5, v6);
  v7 = sub_24619F9CC();
  (*(*(v7 - 8) + 56))(v16, 1, 1, v7);
  (*(v2 + 16))(v17, v1, v3);
  v8 = sub_24618AC5C(&qword_281391BF8, type metadata accessor for ODISessionInternal, &protocol conformance descriptor for ODISessionInternal);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = (v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v19;
  *(v11 + 24) = v8;
  (*(v2 + 32))(v11 + v9, v17, v15);
  *(v11 + v10) = v19;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  swift_retain_n();

  sub_2461703A8(0, 0, v16, &unk_2461A1308, v11);

  (*(v2 + 8))(v1, v15);

  v12 = v0[1];
  v13 = v0[18];

  return v12(v13);
}

uint64_t sub_246171F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v8 = sub_24619F7FC();
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();
  v9 = sub_24619F22C();
  v6[10] = v9;
  v6[11] = *(v9 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461720AC, a5, 0);
}

uint64_t sub_2461720AC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[4], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D00608])
  {
    v6 = v0[8];
    v5 = v0[9];
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v9 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
    sub_24619FAEC();

    v10 = sub_24619F1AC();
    v11 = MEMORY[0x24C19A8B0](v8, v10);
    MEMORY[0x24C19A830](v11);

    (*(v6 + 104))(v5, *MEMORY[0x277D00760], v7);
    sub_24619F6CC();

    (*(v6 + 8))(v5, v7);
    v12 = *(v9 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
    v0[13] = v12;
    v13 = sub_2461725A8;
LABEL_5:

    return MEMORY[0x2822009F8](v13, v12, 0);
  }

  if (v4 == *MEMORY[0x277D00600])
  {
    v15 = v0[8];
    v14 = v0[9];
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];
    __swift_project_boxed_opaque_existential_1((v18 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v18 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
    sub_24619FAEC();

    v19 = sub_24619F1AC();
    v20 = MEMORY[0x24C19A8B0](v17, v19);
    MEMORY[0x24C19A830](v20);

    (*(v15 + 104))(v14, *MEMORY[0x277D00760], v16);
    sub_24619F6CC();

    (*(v15 + 8))(v14, v16);
    v12 = *(v18 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
    v0[14] = v12;
    v13 = sub_246172648;
    goto LABEL_5;
  }

  v21 = *MEMORY[0x277D00610];
  v22 = v4;
  __swift_project_boxed_opaque_existential_1((v0[5] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v0[5] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  if (v22 == v21)
  {
    v24 = v0[8];
    v23 = v0[9];
    v25 = v0[7];
    (*(v24 + 104))(v23, *MEMORY[0x277D00760], v25);
    sub_24619F6CC();
    (*(v24 + 8))(v23, v25);
  }

  else
  {
    v26 = v0[11];
    v27 = v0[9];
    v31 = v0[10];
    v28 = v0[8];
    v32 = v0[7];
    v33 = v0[12];
    sub_24619FAEC();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x24C19A830](0xD000000000000013, 0x80000002461A8520);
    sub_24619FB6C();
    (*(v28 + 104))(v27, *MEMORY[0x277D00760], v32);
    sub_24619F6FC();

    (*(v28 + 8))(v27, v32);
    (*(v26 + 8))(v33, v31);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_2461725A8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  v3 = *(v1 + 112);
  if (v3 <= 2)
  {
    LOBYTE(v3) = 2;
  }

  *(v1 + 112) = v3;
  return MEMORY[0x2822009F8](sub_2461725DC, v2, 0);
}

uint64_t sub_2461725DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_246172648()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);
  v3 = *(v1 + 112);
  if (v3 <= 1)
  {
    LOBYTE(v3) = 1;
  }

  *(v1 + 112) = v3;
  return MEMORY[0x2822009F8](sub_24618BD08, v2, 0);
}

uint64_t sub_246172754()
{
  sub_24619FAEC();
  MEMORY[0x24C19A830](0x697373655349444FLL, 0xEF20726F66206E6FLL);
  type metadata accessor for ODIServiceProviderId(0);
  sub_24619FB6C();
  return 0;
}

id ODISessionInternal.init(serviceIdentifier:forDSIDType:locationBundle:andLocationBundleIdentifier:sessionStateDelegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v114 = a6;
  v115 = a3;
  v116 = a5;
  v106 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v90 - v11;
  v12 = sub_24619F68C();
  v97 = *(v12 - 8);
  v98 = v12;
  MEMORY[0x28223BE20](v12);
  v99 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24619F12C();
  v110 = *(v14 - 8);
  v111 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v107 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v109 = &v90 - v17;
  v18 = sub_24619EF4C();
  MEMORY[0x28223BE20](v18 - 8);
  v96 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24619EF5C();
  v100 = *(v20 - 8);
  v101 = v20;
  MEMORY[0x28223BE20](v20);
  v108 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24619EFBC();
  v104 = *(v22 - 8);
  v105 = v22;
  MEMORY[0x28223BE20](v22);
  v103 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24619F7FC();
  v93 = *(v24 - 8);
  v94 = v24;
  MEMORY[0x28223BE20](v24);
  v92 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v26 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal__pendingFeedback;
  v27 = type metadata accessor for ODISessionInternal.PendingFeedback(0);
  v28 = *(*(v27 - 8) + 56);
  v113 = v26;
  v28(&v7[v26], 1, 1, v27);
  v29 = &v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId];
  *v29 = 0;
  v29[1] = 0;
  *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager] = 0;
  v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__lastAssessmentTimedOut] = 0;
  *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_profileSla] = 0x400B333333333333;
  v30 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_authorizedDsidTypes;
  *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_authorizedDsidTypes] = &unk_2858EF4C0;
  v31 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_authorizedServices;
  v32 = _sSo20ODIServiceProviderIda7CoreODIE8allCasesSayABGvgZ_0();
  *&v7[v31] = v32;
  v33 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID;
  *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID] = a1;
  v112 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal__dsidType;
  v95 = a2;
  *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__dsidType] = a2;
  *&v122 = a1;
  v118[2] = &v122;
  v117 = a1;

  LOBYTE(a1) = sub_246189598(sub_2461700E4, v118, v32);

  if (a1)
  {
    v34 = *&v7[v30];
    v35 = *(v34 + 16);
    v36 = (v34 + 32);
    while (v35)
    {
      v37 = *v36++;
      --v35;
      if (v37 == *&v7[v112])
      {
        v38 = v115;
        v39 = v116;
        *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__locationBundle] = v115;
        v40 = v38;
        v41 = &v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__locationBundleIdentifier];
        *v41 = v106;
        v41[1] = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F920, &qword_2461A0FF0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_2461A0FC0;
        v43 = MEMORY[0x277D84D30];
        *(v42 + 56) = MEMORY[0x277D84CC0];
        *(v42 + 64) = v43;

        v91 = v40;
        *(v42 + 32) = sub_246189640(0xFFFFFFFEuLL) + 1;
        v44 = sub_24619F8CC();
        v45 = &v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionIdentifier];
        *v45 = v44;
        v45[1] = v46;
        v123 = sub_24619EEFC();
        v124 = MEMORY[0x277D004B0];
        __swift_allocate_boxed_opaque_existential_1(&v122);

        sub_24619EECC();
        v47 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
        sub_246158944(&v122, &v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger]);
        sub_24616CB20(&v7[v47], &v122);
        v113 = v124;
        v90 = __swift_project_boxed_opaque_existential_1(&v122, v123);
        v120 = 0;
        v121 = 0xE000000000000000;
        sub_24619FAEC();

        v120 = 0xD000000000000023;
        v121 = 0x80000002461A7000;
        v48 = sub_24619F8BC();
        MEMORY[0x24C19A830](v48);

        v49 = v92;
        v50 = v93;
        v51 = v94;
        (v93[13])(v92, *MEMORY[0x277D00788], v94);
        sub_24619F6CC();

        (v50[1])(v49, v51);
        __swift_destroy_boxed_opaque_existential_1(&v122);
        v94 = v47;
        sub_24616CB20(&v7[v47], &v122);
        v93 = v124;
        __swift_project_boxed_opaque_existential_1(&v122, v123);
        (*(v104 + 104))(v103, *MEMORY[0x277D004E8], v105);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F928, &qword_2461A0FF8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2461A0F80;
        *(inited + 32) = 0x776F6C666B726F77;
        *(inited + 40) = 0xEA00000000004449;
        v120 = sub_24619F8BC();
        v121 = v53;
        MEMORY[0x24C19A830](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
        v54 = v121;
        *(inited + 48) = v120;
        *(inited + 56) = v54;
        strcpy((inited + 64), "odiSessionID");
        *(inited + 77) = 0;
        *(inited + 78) = -5120;
        v56 = *v45;
        v55 = v45[1];
        v113 = v45;
        *(inited + 80) = v56;
        *(inited + 88) = v55;
        *(inited + 96) = 0x6570795464697364;
        *(inited + 104) = 0xE800000000000000;
        v120 = v95;

        *(inited + 112) = sub_24619FBBC();
        *(inited + 120) = v57;
        *(inited + 128) = 0xD000000000000016;
        *(inited + 136) = 0x80000002461A7030;
        if (v115)
        {
          v58 = [v91 bundlePath];
          v59 = sub_24619F8BC();
          v61 = v60;
        }

        else
        {
          v59 = 0;
          v61 = 0;
        }

        *(inited + 144) = v59;
        *(inited + 152) = v61;
        *(inited + 160) = 0xD000000000000018;
        *(inited + 168) = 0x80000002461A2110;
        v63 = v116;
        *(inited + 176) = v106;
        *(inited + 184) = v63;
        v64 = sub_246189F8C(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F930, &qword_2461A1000);
        swift_arrayDestroy();
        v120 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F938, &qword_2461A1008);
        sub_24618A0A0();
        v65 = v103;
        sub_24619F70C();

        (*(v104 + 8))(v65, v105);
        __swift_destroy_boxed_opaque_existential_1(&v122);
        sub_24619F27C();
        v66 = v113;
        v67 = v117;
        *&v122 = sub_24619F8BC();
        *(&v122 + 1) = v68;

        MEMORY[0x24C19A830](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
        *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__armandDataFiller] = sub_24619F24C();
        sub_24619F52C();
        sub_24619EF6C();
        sub_24616CB20(&v7[v94], &v122);
        type metadata accessor for ODISessionStateMachine(0);
        swift_allocObject();
        v69 = v67;
        v70 = v114;
        swift_unknownObjectRetain();
        v71 = sub_24619E2C0(&v122, v69, v70);

        swift_unknownObjectRelease();
        *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState] = v71;
        v72 = *v66;
        v73 = v66[1];
        type metadata accessor for ODIFieldsManager();
        swift_allocObject();
        v74 = v69;

        v75 = sub_24619B458(v72, v73, v74);

        *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_fieldsCachingManager] = v75;
        v76 = v109;
        sub_24616E778(v74, v109);
        sub_24619F8BC();
        (*(v110 + 16))(v107, v76, v111);
        v77 = *&v7[v112];
        if (v77 > 3)
        {
          v78 = MEMORY[0x277D00710];
        }

        else
        {
          v78 = qword_278E9C5C0[v77];
        }

        (*(v97 + 104))(v99, *v78, v98);
        sub_24619F01C();

        *&v7[OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator] = sub_24619EFEC();
        v79 = type metadata accessor for ODISessionInternal(0);
        v119.receiver = v7;
        v119.super_class = v79;
        v80 = objc_msgSendSuper2(&v119, sel_init);
        v81 = sub_24619F9CC();
        v82 = *(*(v81 - 8) + 56);
        v83 = v102;
        v82(v102, 1, 1, v81);
        v84 = swift_allocObject();
        v84[2] = 0;
        v84[3] = 0;
        v84[4] = v80;
        v85 = v80;
        sub_2461703A8(0, 0, v83, &unk_2461A1020, v84);

        v82(v83, 1, 1, v81);
        v86 = swift_allocObject();
        v86[2] = 0;
        v86[3] = 0;
        v86[4] = v85;
        v87 = v85;
        sub_2461703A8(0, 0, v83, &unk_2461A1030, v86);

        v82(v83, 1, 1, v81);
        v88 = swift_allocObject();
        v88[2] = 0;
        v88[3] = 0;
        v88[4] = v87;
        sub_246170814(0, 0, v83, &unk_2461A1040, v88);

        (*(v110 + 8))(v109, v111);
        v89 = v108;
        sub_24619EF3C();

        swift_unknownObjectRelease();
        (*(v100 + 8))(v89, v101);
        return v87;
      }
    }
  }

  swift_unknownObjectRelease();

  sub_24616CFC4(v113 + v7, &qword_27EE3F918, &qword_2461A0FE8);

  type metadata accessor for ODISessionInternal(0);
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2461736C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_24619F51C();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_24619F7FC();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461737E4, 0, 0);
}

uint64_t sub_2461737E4()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 144) = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  __swift_project_boxed_opaque_existential_1((v4 + v5), *(v4 + v5 + 24));
  *(v0 + 224) = *MEMORY[0x277D00788];
  v6 = *(v2 + 104);
  *(v0 + 152) = v6;
  *(v0 + 160) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1);
  sub_24619F6CC();
  v7 = *(v2 + 8);
  *(v0 + 168) = v7;
  *(v0 + 176) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  v10 = (*MEMORY[0x277D00570] + MEMORY[0x277D00570]);
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_246173964;

  return v10(v0 + 16);
}

uint64_t sub_246173964()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_246173ECC;
  }

  else
  {
    v2 = sub_246173A78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_246173A78()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_246173B34;
  v4 = v0[14];

  return MEMORY[0x282152F08](v4, v1, v2);
}

uint64_t sub_246173B34()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2461740B8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[27] = v3;
    *v3 = v2;
    v3[1] = sub_246173CA8;
    v4 = v2[14];

    return sub_2461759DC(v4);
  }
}

uint64_t sub_246173CA8()
{

  return MEMORY[0x2822009F8](sub_246173DA4, 0, 0);
}

uint64_t sub_246173DA4()
{
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v8 = *(v0 + 168);
  v1 = *(v0 + 152);
  v2 = *(v0 + 224);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = (*(v0 + 88) + *(v0 + 144));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v1(v3, v2, v4);
  sub_24619F6CC();
  v8(v3, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_246173ECC()
{
  v1 = *(v0 + 192);
  v14 = *(v0 + 168);
  v13 = *(v0 + 152);
  v2 = *(v0 + 224);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = (*(v0 + 88) + *(v0 + 144));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000018, 0x80000002461A8660);
  swift_getErrorValue();
  sub_24619FBEC();
  v13(v3, v2, v4);
  sub_24619F6EC();

  v14(v3, v4);
  v15 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 224);
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  v10 = (*(v0 + 88) + *(v0 + 144));
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v6(v8, v7, v9);
  sub_24619F6CC();
  v15(v8, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2461740B8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 208);
  v14 = *(v0 + 168);
  v13 = *(v0 + 152);
  v2 = *(v0 + 224);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = (*(v0 + 88) + *(v0 + 144));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000018, 0x80000002461A8660);
  swift_getErrorValue();
  sub_24619FBEC();
  v13(v3, v2, v4);
  sub_24619F6EC();

  v14(v3, v4);
  v15 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 224);
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  v10 = (*(v0 + 88) + *(v0 + 144));
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v6(v8, v7, v9);
  sub_24619F6CC();
  v15(v8, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2461742AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24619F7FC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24617436C, 0, 0);
}

uint64_t sub_24617436C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 48) = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  __swift_project_boxed_opaque_existential_1((v4 + v5), *(v4 + v5 + 24));
  *(v0 + 104) = *MEMORY[0x277D00788];
  v6 = *(v2 + 104);
  *(v0 + 56) = v6;
  *(v0 + 64) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1);
  sub_24619F6CC();
  v7 = *(v2 + 8);
  *(v0 + 72) = v7;
  *(v0 + 80) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  v8 = *(v4 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 88) = v8;

  return MEMORY[0x2822009F8](sub_24617449C, v8, 0);
}

uint64_t sub_24617449C()
{
  sub_24619CC30();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_246174534;

  return sub_246174FE4();
}

uint64_t sub_246174534()
{

  return MEMORY[0x2822009F8](sub_246174630, 0, 0);
}

uint64_t sub_246174630()
{
  v8 = *(v0 + 72);
  v1 = *(v0 + 56);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = (*(v0 + 16) + *(v0 + 48));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v1(v3, v2, v4);
  sub_24619F6CC();
  v8(v3, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_246174728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_24619F46C();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461747E8, 0, 0);
}

uint64_t sub_2461747E8()
{
  (*(v0[14] + 104))(v0[15], *MEMORY[0x277D006B0], v0[13]);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_2461748AC;
  v2 = v0[15];

  return sub_246197B48(v2);
}

uint64_t sub_2461748AC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_246174A18, v4, 0);
}

uint64_t sub_246174A18()
{
  *(v0 + 136) = sub_2461714EC();

  return MEMORY[0x2822009F8](sub_246174A84, 0, 0);
}

uint64_t sub_246174A84()
{
  v1 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9D0, &qword_2461A1338);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2461A0FC0;
  *(inited + 32) = @"debugSessionId";
  v3 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionIdentifier);
  v4 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionIdentifier + 8);
  v5 = MEMORY[0x277D837E0];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 72) = v5;
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  v6 = @"debugSessionId";

  v7 = sub_24618AF08(inited);
  v0[18] = v7;
  swift_setDeallocating();
  sub_24616CFC4(inited + 32, &qword_27EE3F8E0, &qword_2461A0EC0);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_246174BC8;

  return sub_246163338(v7);
}

uint64_t sub_246174BC8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_246174ED4;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 96);

    v3 = sub_246174CF8;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_246174CF8()
{
  v0[21] = *(v0[12] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager);

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_246174DA4;

  return sub_246161B48();
}

uint64_t sub_246174DA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_246174ED4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_246174FE4()
{
  v1[2] = v0;
  v2 = sub_24619F7FC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F968, &qword_2461A1248);
  v1[6] = swift_task_alloc();
  v3 = sub_24619F60C();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_24619F68C();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = sub_24619F7DC();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461751F0, v0, 0);
}

uint64_t sub_2461751F0()
{
  v3 = (*MEMORY[0x277D00558] + MEMORY[0x277D00558]);
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_2461752A0;

  return v3();
}

uint64_t sub_2461752A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;

  return MEMORY[0x2822009F8](sub_2461753B8, v4, 0);
}

uint64_t sub_2461753B8()
{
  v1 = v0[11];
  v2 = v0[2];
  sub_24619F8BC();
  v3 = *(v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__dsidType);
  if (v3 > 3)
  {
    v4 = MEMORY[0x277D00710];
  }

  else
  {
    v4 = qword_278E9C5C0[v3];
  }

  (*(v1 + 104))(v0[12], *v4, v0[10]);
  sub_24619F7BC();
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_2461754FC;
  v6 = v0[6];

  return MEMORY[0x282152FE0](v6);
}

uint64_t sub_2461754FC()
{
  v2 = *v1;

  v3 = *(v2 + 16);
  if (v0)
  {

    v4 = sub_2461758F0;
  }

  else
  {
    v4 = sub_246175634;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_246175634()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[2];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v6 = *(v5 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v0[20] = v6;

  return MEMORY[0x2822009F8](sub_2461756FC, v6, 0);
}

uint64_t sub_2461756FC()
{
  v1 = *(v0 + 16);
  sub_24619C0B4(4, 0, 1, *(v0 + 72));

  return MEMORY[0x2822009F8](sub_246175778, v1, 0);
}

uint64_t sub_246175778()
{
  v1 = v0[14];
  v10 = v0[13];
  v11 = v0[15];
  v2 = v0[8];
  v8 = v0[7];
  v9 = v0[9];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v0[2] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  (*(v3 + 104))(v4, *MEMORY[0x277D00758], v5);
  sub_24619F6DC();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v9, v8);
  (*(v1 + 8))(v11, v10);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2461758F0()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 56))(v3, 1, 1, v1);
  sub_24616CFC4(v3, &qword_27EE3F968, &qword_2461A1248);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2461759DC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_24619F46C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_24619F7FC();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246175AF8, v1, 0);
}

uint64_t sub_246175AF8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v16 = *(v0 + 80);
  v17 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = sub_2461714EC();
  v7 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 128) = v6;
  *(v0 + 136) = v7;
  __swift_project_boxed_opaque_existential_1((v5 + v7), *(v5 + v7 + 24));
  *(v0 + 304) = *MEMORY[0x277D00760];
  v8 = *(v1 + 104);
  *(v0 + 144) = v8;
  *(v0 + 152) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v2);
  sub_24619F6DC();
  v9 = *(v1 + 8);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v3);
  v10 = sub_24619F4EC();
  *(v0 + 176) = v10;
  v11 = *MEMORY[0x277D006B0];
  v12 = *(v4 + 104);
  *(v0 + 184) = v12;
  *(v0 + 192) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v17, v11, v16);
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = sub_246175CBC;
  v14 = *(v0 + 96);

  return sub_2461989D0(v14, v10);
}

uint64_t sub_246175CBC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *v0;

  v6 = *(v3 + 8);
  v1[26] = v6;
  v1[27] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = swift_task_alloc();
  v1[28] = v7;
  *v7 = v5;
  v7[1] = sub_246175E88;

  return sub_2461872B0();
}

uint64_t sub_246175E88()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_246176D5C;
  }

  else
  {
    v4 = sub_246175FB4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_246175FB4()
{
  v1 = sub_24619F4FC();
  v0[30] = v1;
  v24 = v0[20];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = (v4 + v0[17]);
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_24619FAEC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F900, &qword_2461A0F58);
    v6 = sub_24619F83C();
    MEMORY[0x24C19A830](v6);

    v7 = *MEMORY[0x277D007A0];
    v8 = sub_24619F7FC();
    (*(*(v8 - 8) + 104))(v2, v7, v8);
    sub_24619F73C();

    v24(v2, v3);
    v0[31] = *(v4 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal____lazy_storage____bindingsManager);

    v9 = sub_246176348;
    v10 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v11 = *MEMORY[0x277D007A0];
    v12 = sub_24619F7FC();
    v13 = (*(v12 - 8) + 104);
    v23 = v11;
    v14 = v11;
    v15 = *v13;
    (*v13)(v2, v14, v12);
    sub_24619F73C();
    v24(v2, v3);
    v16 = sub_24619F50C();
    if ((v17 & 1) == 0)
    {
      v25 = v0[20];
      v18 = v0[15];
      v22 = v0[13];
      v19 = v0[9];
      v20 = (v19 + v0[17]);
      *(v19 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_profileSla) = v16 * 0.001;
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v0[5] = 0;
      v0[6] = 0xE000000000000000;
      MEMORY[0x24C19A830](0x6E20736920414C53, 0xEB0000000020776FLL);
      sub_24619FA3C();
      v15(v18, v23, v12);
      sub_24619F74C();

      v25(v18, v22);
    }

    v10 = *(v0[9] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
    v0[34] = v10;
    v9 = sub_2461768F4;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_246176348()
{
  v1 = *(v0 + 240);
  (*(v0 + 184))(*(v0 + 96), *MEMORY[0x277D006B8], *(v0 + 80));
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_246176404;
  v3 = *(v0 + 96);

  return sub_2461989D0(v3, v1);
}

uint64_t sub_246176404()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_24617659C, v4, 0);
}

uint64_t sub_24617659C()
{

  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_246176634;

  return sub_246160084();
}

uint64_t sub_246176634()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_246176744, v1, 0);
}

uint64_t sub_246176744(uint64_t a1)
{
  v2 = sub_24619F50C();
  if ((v3 & 1) == 0)
  {
    v4 = v1[20];
    v5 = v1[15];
    v6 = v1[13];
    v7 = v1[9];
    v8 = (v7 + v1[17]);
    *(v7 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_profileSla) = v2 * 0.001;
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v1[5] = 0;
    v1[6] = 0xE000000000000000;
    MEMORY[0x24C19A830](0x6E20736920414C53, 0xEB0000000020776FLL);
    sub_24619FA3C();
    v9 = *MEMORY[0x277D007A0];
    v10 = sub_24619F7FC();
    (*(*(v10 - 8) + 104))(v5, v9, v10);
    sub_24619F74C();

    v4(v5, v6);
  }

  v11 = *(v1[9] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v1[34] = v11;

  return MEMORY[0x2822009F8](sub_2461768F4, v11, 0);
}

uint64_t sub_2461768F4()
{
  v1 = *(v0 + 72);
  sub_24619CF04();

  return MEMORY[0x2822009F8](sub_246176960, v1, 0);
}

uint64_t sub_246176960()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[13];
  v5 = (v0[9] + v0[17]);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v2(v3, *MEMORY[0x277D00798], v4);
  sub_24619F6CC();
  v1(v3, v4);

  return MEMORY[0x2822009F8](sub_246176A60, 0, 0);
}

uint64_t sub_246176A60()
{
  *(v0 + 280) = *(*(v0 + 128) + 80);
  sub_24619F27C();
  sub_24618AC5C(&qword_281391F88, MEMORY[0x277D00630], MEMORY[0x277D00638]);
  v2 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_246176B20, v2, v1);
}

uint64_t sub_246176B20()
{
  sub_24619F25C();
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_246176BBC;

  return sub_2461639F0(1);
}

uint64_t sub_246176BBC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_246176EEC;
  }

  else
  {
    v4 = sub_246176CE8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_246176CE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_246176D5C()
{
  v1 = *(v0 + 232);
  v10 = *(v0 + 160);
  v9 = *(v0 + 144);
  v2 = *(v0 + 304);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = (*(v0 + 72) + *(v0 + 136));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24619FAEC();

  swift_getErrorValue();
  v6 = sub_24619FC3C();
  MEMORY[0x24C19A830](v6);

  v9(v3, v2, v4);
  sub_24619F6EC();

  v10(v3, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_246176EEC()
{
  v1 = *(v0 + 296);
  v10 = *(v0 + 160);
  v9 = *(v0 + 144);
  v2 = *(v0 + 304);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = (*(v0 + 72) + *(v0 + 136));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24619FAEC();

  swift_getErrorValue();
  v6 = sub_24619FC3C();
  MEMORY[0x24C19A830](v6);

  v9(v3, v2, v4);
  sub_24619F6EC();

  v10(v3, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24617707C(void *a1)
{
  v2 = v1;
  v4 = sub_24619F7FC();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v38 - v8;
  v10 = sub_24619EF4C();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_24619EF5C();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24619F53C();
  v42 = v13;
  sub_24619EF6C();
  v14 = sub_24619F9CC();
  v15 = *(*(v14 - 8) + 56);
  v15(v9, 1, 1, v14);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v2;

  sub_2461703A8(0, 0, v9, &unk_2461A1050, v16);

  if (a1)
  {
    v17 = sub_24618BD20((v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger));
    if (v17)
    {
      if (*(v17 + 16))
      {
        v18 = v17;
        v15(v9, 1, 1, v14);
        v19 = swift_allocObject();
        v19[2] = 0;
        v19[3] = 0;
        v19[4] = v2;
        v19[5] = v18;

        sub_246170814(0, 0, v9, &unk_2461A1060, v19);

        goto LABEL_16;
      }
    }
  }

  v40 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  v41 = v11;
  sub_24616CB20(v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger, v48);
  v38[1] = v50;
  v38[0] = __swift_project_boxed_opaque_existential_1(v48, v49);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_24619FAEC();

  v46 = 0xD00000000000002FLL;
  v47 = 0x80000002461A7070;
  if (a1 && (v20 = [a1 attributes]) != 0)
  {
    v21 = v20;
    type metadata accessor for ODIAttributeKey(0);
    sub_24618AC5C(&qword_281391860, type metadata accessor for ODIAttributeKey, &unk_2461A0D10);
    sub_24619F82C();

    v22 = sub_24619F84C();
    v24 = v23;
  }

  else
  {
    v24 = 0xE300000000000000;
    v22 = 7104878;
  }

  MEMORY[0x24C19A830](v22, v24);

  v25 = *MEMORY[0x277D007A0];
  v26 = v44;
  v27 = v45;
  v39 = *(v44 + 104);
  v39(v6, v25, v45);
  sub_24619F76C();

  v29 = v26 + 8;
  v28 = *(v26 + 8);
  v28(v6, v27);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_24616CB20(v40 + v2, v48);
  v40 = __swift_project_boxed_opaque_existential_1(v48, v49);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_24619FAEC();

  v46 = 0xD000000000000026;
  v47 = 0x80000002461A70A0;
  if (a1)
  {
    v30 = [a1 attributes];
    v31 = 7104878;
    if (v30)
    {
      type metadata accessor for ODIAttributeKey(0);
      sub_24618AC5C(&qword_281391860, type metadata accessor for ODIAttributeKey, &unk_2461A0D10);
      v44 = v29;
      sub_24619F82C();

      v32 = sub_24619F83C();
      v34 = v33;

      v31 = v32;
    }

    else
    {
      v34 = 0xE300000000000000;
    }
  }

  else
  {
    v34 = 0xE300000000000000;
    v31 = 7104878;
  }

  MEMORY[0x24C19A830](v31, v34);

  v35 = v45;
  v39(v6, v25, v45);
  sub_24619F79C();

  v28(v6, v35);
  __swift_destroy_boxed_opaque_existential_1(v48);
  v11 = v41;
LABEL_16:
  v36 = v42;
  sub_24619EF3C();
  return (*(v43 + 8))(v36, v11);
}

uint64_t sub_246177760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0);
  v4[3] = swift_task_alloc();
  v5 = sub_24619F3FC();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24617784C, 0, 0);
}

uint64_t sub_24617784C()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v0[7] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  (*(*(v3 - 8) + 56))(v1, 1, 5, v3);

  return MEMORY[0x2822009F8](sub_24617790C, v2, 0);
}

uint64_t sub_24617790C()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_24619DA28(v4, v1);
  sub_24618AD14(v4, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_2461779C8, 0, 0);
}

uint64_t sub_2461779C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_246177A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_246177A54, a4, 0);
}

uint64_t sub_246177A54()
{
  v0[4] = sub_2461714EC();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_246177AF8;
  v2 = v0[3];

  return sub_246163338(v2);
}

uint64_t sub_246177AF8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_246177C34, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_246177C34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_246177CF4(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v15 = sub_24619F4DC();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24619F7FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  (*(v8 + 104))(v10, *MEMORY[0x277D00790], v7);
  sub_24619F6CC();
  (*(v8 + 8))(v10, v7);
  sub_24619F4BC();
  v11 = swift_allocObject();
  *(v11 + 16) = v14;
  *(v11 + 24) = a2;

  sub_246180944(v6, sub_24618A538, v11);

  return (*(v4 + 8))(v6, v15);
}

void sub_2461781AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_24619F88C();
    if (a3)
    {
LABEL_3:
      v7 = sub_24619EE5C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_24617823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v24[0] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = v24 - v6;
  v25 = sub_24619EFBC();
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24619F7FC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v3 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
  v15 = *(v3 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24);
  v24[1] = *(v3 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), v15);
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD00000000000004CLL, 0x80000002461A7100);
  v30 = a1;
  v16 = sub_24619FBBC();
  MEMORY[0x24C19A830](v16);

  (*(v11 + 104))(v13, *MEMORY[0x277D007A0], v10);
  sub_24619F73C();

  (*(v11 + 8))(v13, v10);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v17 = v25;
  (*(v7 + 104))(v9, *MEMORY[0x277D004F0], v25);
  v18 = v24[0];
  v31 = v24[0];
  sub_24619FBBC();
  sub_24619F71C();

  (*(v7 + 8))(v9, v17);
  v19 = sub_24619F9CC();
  v20 = v27;
  (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v26;
  v21[5] = v18;
  v22 = v29;
  v21[6] = v28;
  v21[7] = v22;

  sub_2461703A8(0, 0, v20, &unk_2461A1070, v21);
}

uint64_t sub_24617862C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_246161518;

  return sub_246178A7C(a5, a6, a7);
}

uint64_t sub_246178778(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_24619F9CC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_2461703A8(0, 0, v7, &unk_2461A1080, v9);
}

uint64_t sub_24617889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2461788C0, a4, 0);
}

uint64_t sub_2461788C0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2461788EC, v1, 0);
}

uint64_t sub_2461788EC()
{
  sub_24619D1D8(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_246178A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F918, &qword_2461A0FE8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v5 = sub_24619EEBC();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v6 = sub_24619F43C();
  v4[34] = v6;
  v4[35] = *(v6 - 8);
  v4[36] = swift_task_alloc();
  type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0);
  v4[37] = swift_task_alloc();
  v7 = sub_24619F7FC();
  v4[38] = v7;
  v4[39] = *(v7 - 8);
  v4[40] = swift_task_alloc();
  v8 = sub_24619F3FC();
  v4[41] = v8;
  v4[42] = *(v8 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246178D20, v3, 0);
}

uint64_t sub_246178D20()
{
  v1 = *(*(v0 + 216) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 376) = v1;
  return MEMORY[0x2822009F8](sub_246178D4C, v1, 0);
}

uint64_t sub_246178D4C()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[27];
  v6 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[48] = v7;
  v0[49] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v2 + v6, v3);

  return MEMORY[0x2822009F8](sub_246178E10, v5, 0);
}

uint64_t sub_246178E10()
{
  v1 = sub_24619F35C();
  v2 = v0[46];
  if (v1)
  {
    v3 = v0[42];
    v24 = v0[41];
    v5 = v0[39];
    v4 = v0[40];
    v6 = v0[38];
    __swift_project_boxed_opaque_existential_1((v0[27] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v0[27] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
    (*(v5 + 104))(v4, *MEMORY[0x277D00778], v6);
    sub_24619F6FC();
    (*(v5 + 8))(v4, v6);
    (*(v3 + 8))(v2, v24);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = sub_24619F3CC();
    v10 = MEMORY[0x277D00778];
    if ((v9 & 1) == 0)
    {
      v12 = v0[39];
      v11 = v0[40];
      v13 = v0[38];
      __swift_project_boxed_opaque_existential_1((v0[27] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v0[27] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
      (*(v12 + 104))(v11, *v10, v13);
      sub_24619F6FC();
      (*(v12 + 8))(v11, v13);
    }

    v14 = sub_24619F2DC();
    v15 = v0[47];
    if (v14)
    {
      v17 = v0[39];
      v16 = v0[40];
      v18 = v0[38];
      v25 = v0[37];
      __swift_project_boxed_opaque_existential_1((v0[27] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v0[27] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
      (*(v17 + 104))(v16, *v10, v18);
      sub_24619F6CC();
      (*(v17 + 8))(v16, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
      (*(*(v19 - 8) + 56))(v25, 5, 5, v19);
      v20 = sub_24617A8EC;
    }

    else
    {
      v21 = v0[37];
      v0[50] = swift_allocBox();
      v0[51] = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
      (*(*(v23 - 8) + 56))(v21, 5, 5, v23);
      v20 = sub_2461791FC;
    }

    return MEMORY[0x2822009F8](v20, v15, 0);
  }
}

uint64_t sub_2461791FC()
{
  v1 = v0[37];
  v2 = v0[27];
  sub_24619DA28(v1, v0[51]);
  sub_24618AD14(v1, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);

  return MEMORY[0x2822009F8](sub_246179298, v2, 0);
}

uint64_t sub_246179298()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 328);
  (*(v0 + 200))();
  v2(v3, v1, v4);
  v5 = swift_task_alloc();
  *(v0 + 416) = v5;
  *v5 = v0;
  v5[1] = sub_246179370;
  v6 = *(v0 + 360);
  v7 = *(v0 + 192);

  return sub_246180EE8(v6, v7);
}

uint64_t sub_246179370()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 328);
  v5 = *v0;

  v6 = *(v3 + 8);
  v1[53] = v6;
  v1[54] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = swift_task_alloc();
  v1[55] = v7;
  *v7 = v5;
  v7[1] = sub_246179518;

  return sub_246181868();
}

uint64_t sub_246179518()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_246179628, v1, 0);
}

uint64_t sub_246179628()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  if (*(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__lastAssessmentTimedOut) == 1 && v2 == 0)
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
    (*(v8 + 104))(v7, *MEMORY[0x277D00778], v9);
    sub_24619F6CC();
    (*(v8 + 8))(v7, v9);
    v5 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId);
    v6 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId + 8);
  }

  else
  {
    v4 = v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId;
    v5 = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId);
    *(v0 + 448) = v5;
    v6 = *(v4 + 8);
    *(v0 + 456) = v6;
    if (!v2)
    {
      v89 = *(v0 + 408);
      v85 = *(v0 + 384);
      v95 = *(v0 + 376);
      v48 = *(v0 + 320);
      v75 = *(v0 + 360);
      v78 = *(v0 + 328);
      v50 = *(v0 + 304);
      v49 = *(v0 + 312);
      v51 = *(v0 + 280);
      v80 = *(v0 + 272);
      v83 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
      (*(v49 + 104))(v48, *MEMORY[0x277D00778], v50);

      sub_24619F6CC();
      (*(v49 + 8))(v48, v50);
      *(v0 + 464) = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
      v85(v75, v89, v78);
      (*(v51 + 104))(v83, *MEMORY[0x277D006A8], v80);
      v46 = sub_24617A1BC;
      v47 = v95;
      goto LABEL_19;
    }

    if (v2 != 2)
    {
      if (v2 == 1)
      {
        (*(v0 + 424))(*(v0 + 368), *(v0 + 328));
      }

      else
      {
        v93 = *(v0 + 424);
        v52 = *(v0 + 320);
        v86 = *(v0 + 328);
        v90 = *(v0 + 368);
        v54 = *(v0 + 304);
        v53 = *(v0 + 312);
        __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
        sub_24619FAEC();

        *(v0 + 184) = v2;
        v55 = sub_24619FBBC();
        MEMORY[0x24C19A830](v55);

        (*(v53 + 104))(v52, *MEMORY[0x277D00778], v54);
        sub_24619F6FC();

        (*(v53 + 8))(v52, v54);
        v93(v90, v86);
      }

LABEL_29:

      v71 = *(v0 + 8);

      return v71();
    }
  }

  v73 = v5;
  *(v0 + 488) = v6;
  *(v0 + 496) = v5;
  sub_24619EF2C();
  v91 = v6;

  if (sub_24619EF1C())
  {
    v76 = *(v0 + 424);
    v10 = *(v0 + 408);
    v11 = *(v0 + 384);
    v12 = *(v0 + 352);
    v13 = *(v0 + 328);
    v14 = *(v0 + 264);
    v94 = *(v0 + 248);
    v87 = *(v0 + 256);
    v15 = sub_24619F7EC();
    sub_24618AC5C(&qword_27EE3F9C8, MEMORY[0x277D00740], MEMORY[0x277D00748]);
    v81 = swift_allocError();
    v17 = v16;
    v11(v12, v10, v13);
    v18 = sub_24619F39C();
    v20 = v19;
    v76(v12, v13);
    v21 = *&v18;
    if (v20)
    {
      v21 = 0.0;
    }

    *v17 = v21;
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D00738], v15);
    sub_24619F8BC();
    sub_24619EEAC();
    sub_24619EF0C();

    (*(v87 + 8))(v14, v94);
  }

  v22 = *(v0 + 424);
  v23 = *(v0 + 344);
  v24 = *(v0 + 328);
  v25 = *(v0 + 216);
  (*(v0 + 384))(v23, *(v0 + 408), v24);
  sub_24619F3DC();
  v27 = v26;
  v22(v23, v24);
  __swift_project_boxed_opaque_existential_1((v25 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v25 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  if (v27)
  {
    v88 = v0 + 16;
    v28 = *(v0 + 312);
    v29 = *(v0 + 320);
    v30 = *(v0 + 304);
    v31 = *(v0 + 240);
    v32 = *(v0 + 216);
    sub_24619FAEC();
    *(v0 + 168) = 0;
    *(v0 + 176) = 0xE000000000000000;
    MEMORY[0x24C19A830](0xD000000000000075, 0x80000002461A80C0);
    sub_24619FA3C();
    MEMORY[0x24C19A830](0xD000000000000011, 0x80000002461A8140);
    (*(v28 + 104))(v29, *MEMORY[0x277D00778], v30);
    sub_24619F6DC();

    (*(v28 + 8))(v29, v30);
    v33 = v32;
    v34 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal__pendingFeedback;
    swift_beginAccess();
    sub_24618BC30(v33 + v34, v31, &qword_27EE3F918, &qword_2461A0FE8);
    v35 = type metadata accessor for ODISessionInternal.PendingFeedback(0);
    v36 = *(v35 - 8);
    v37 = *(v36 + 48);
    v38 = v37(v31, 1, v35);
    v39 = *(v0 + 240);
    if (v38 || !*v39)
    {
      sub_24616CFC4(v39, &qword_27EE3F918, &qword_2461A0FE8);
    }

    else
    {
      v56 = *(v0 + 240);

      sub_24616CFC4(v56, &qword_27EE3F918, &qword_2461A0FE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F960, &qword_2461A1230);
      sub_24619F9DC();
    }

    v57 = *(v0 + 232);
    (*(v0 + 384))(&v57[*(v35 + 20)], *(v0 + 408), *(v0 + 328));
    *v57 = 0;
    (*(v36 + 56))(v57, 0, 1, v35);
    swift_beginAccess();
    sub_24618ACA4(v57, v33 + v34);
    swift_endAccess();
    v58 = sub_24617148C(v88);
    v60 = v59;
    v61 = v37(v59, 1, v35);
    v62 = *(v0 + 424);
    v63 = *(v0 + 400);
    v64 = *(v0 + 368);
    v65 = *(v0 + 328);
    if (v61)
    {

      (v58)(v88, 0);
    }

    else
    {
      v66 = *(v0 + 216);
      v67 = *(v0 + 224);
      v96 = v67;
      v68 = sub_24619F9CC();
      (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
      v69 = sub_24618AC5C(&qword_281391BF8, type metadata accessor for ODISessionInternal, &protocol conformance descriptor for ODISessionInternal);
      v70 = swift_allocObject();
      v70[2] = v66;
      v70[3] = v69;
      v70[4] = v66;
      v70[5] = v63;
      v70[6] = v73;
      v70[7] = v91;
      swift_retain_n();

      *v60 = sub_246170814(0, 0, v96, &unk_2461A12F0, v70);

      v58();
    }

    v62(v64, v65);
    goto LABEL_29;
  }

  v84 = *(v0 + 408);
  v92 = *(v0 + 376);
  v40 = *(v0 + 360);
  v41 = *(v0 + 320);
  v42 = *(v0 + 304);
  v43 = *(v0 + 312);
  v44 = *(v0 + 280);
  v79 = *(v0 + 288);
  v82 = *(v0 + 384);
  v74 = *(v0 + 328);
  v77 = *(v0 + 272);
  v45 = *(v0 + 216);
  (*(v43 + 104))(v41, *MEMORY[0x277D00778], v42);
  sub_24619F6DC();
  (*(v43 + 8))(v41, v42);
  *(v0 + 504) = *(v45 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
  v82(v40, v84, v74);
  (*(v44 + 104))(v79, *MEMORY[0x277D006A0], v77);
  v46 = sub_24617A5D8;
  v47 = v92;
LABEL_19:

  return MEMORY[0x2822009F8](v46, v47, 0);
}

uint64_t sub_24617A1BC()
{
  v1 = v0[47];
  v2 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[59] = v3;
  v10 = (*MEMORY[0x277D00560] + MEMORY[0x277D00560]);

  v4 = swift_task_alloc();
  v0[60] = v4;
  *v4 = v0;
  v4[1] = sub_24617A2B0;
  v5 = v0[57];
  v6 = v0[56];
  v7 = v0[45];
  v8 = v0[36];

  return v10(v7, v8, v3, v6, v5);
}

uint64_t sub_24617A2B0()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 328);
  v4 = *(*v0 + 288);
  v5 = *(*v0 + 280);
  v6 = *(*v0 + 272);
  v7 = *(*v0 + 216);

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_24617A4D0, v7, 0);
}

uint64_t sub_24617A4D0()
{
  (*(v0 + 424))(*(v0 + 368), *(v0 + 328));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24617A5D8()
{
  v1 = v0[47];
  v2 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[64] = v3;
  v10 = (*MEMORY[0x277D00560] + MEMORY[0x277D00560]);

  v4 = swift_task_alloc();
  v0[65] = v4;
  *v4 = v0;
  v4[1] = sub_24617A6CC;
  v5 = v0[62];
  v6 = v0[61];
  v7 = v0[45];
  v8 = v0[36];

  return v10(v7, v8, v3, v5, v6);
}

uint64_t sub_24617A6CC()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 328);
  v4 = *(*v0 + 288);
  v5 = *(*v0 + 280);
  v6 = *(*v0 + 272);
  v7 = *(*v0 + 216);

  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_24618BD0C, v7, 0);
}

uint64_t sub_24617A8EC()
{
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[37];
  v5 = v0[27];
  sub_24619DA28(v4, v1);
  sub_24618AD14(v4, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  v6 = *(v3 + 8);
  v0[66] = v6;
  v0[67] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);

  return MEMORY[0x2822009F8](sub_24617A9C0, v5, 0);
}

uint64_t sub_24617A9C0()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 368);
  v3 = *(v0 + 328);
  (*(v0 + 200))();
  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24617AAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[14] = a4;
  v9 = sub_24619F43C();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v10 = sub_24619F3FC();
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = sub_24619F7FC();
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F918, &qword_2461A0FE8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_24617AC9C, a4, 0);
}

uint64_t sub_24617AC9C()
{
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_24617AD3C;

  return MEMORY[0x282200480](10000000000);
}

uint64_t sub_24617AD3C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 112);

    return MEMORY[0x2822009F8](sub_24617AEA0, v6, 0);
  }
}

uint64_t sub_24617AEA0()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v11 = v0[21];
  v12 = v0[20];
  v13 = v0[22];
  v14 = v0[18];
  v15 = v0[17];
  v16 = v0[19];
  v6 = v0[14];
  v7 = type metadata accessor for ODISessionInternal.PendingFeedback(0);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal__pendingFeedback;
  swift_beginAccess();
  sub_24618ACA4(v1, v6 + v8);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  (*(v3 + 104))(v4, *MEMORY[0x277D00778], v5);
  sub_24619F6DC();
  (*(v3 + 8))(v4, v5);
  swift_beginAccess();
  sub_24619F34C();
  swift_endAccess();
  v0[29] = *(v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
  swift_beginAccess();
  (*(v11 + 16))(v13, v2, v12);
  (*(v14 + 104))(v16, *MEMORY[0x277D006A0], v15);
  v9 = *(v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v0[30] = v9;

  return MEMORY[0x2822009F8](sub_24617B0D4, v9, 0);
}

uint64_t sub_24617B0D4()
{
  v1 = v0[30];
  v2 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[31] = v3;
  v10 = (*MEMORY[0x277D00560] + MEMORY[0x277D00560]);

  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_24617B1C8;
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[15];
  v8 = v0[16];

  return v10(v5, v6, v3, v7, v8);
}

uint64_t sub_24617B1C8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v9 = *v0;

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_24617B3EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 640) = a4;
  *(v5 + 128) = a3;
  *(v5 + 136) = v4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0);
  *(v5 + 144) = swift_task_alloc();
  v6 = sub_24619F3FC();
  *(v5 + 152) = v6;
  *(v5 + 160) = *(v6 - 8);
  *(v5 + 168) = swift_task_alloc();
  v7 = sub_24619F22C();
  *(v5 + 176) = v7;
  *(v5 + 184) = *(v7 - 8);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  v8 = sub_24619F4DC();
  *(v5 + 208) = v8;
  *(v5 + 216) = *(v8 - 8);
  *(v5 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F978, &qword_2461A1258);
  *(v5 + 232) = swift_task_alloc();
  v9 = sub_24619F4AC();
  *(v5 + 240) = v9;
  *(v5 + 248) = *(v9 - 8);
  *(v5 + 256) = swift_task_alloc();
  v10 = sub_24619EEBC();
  *(v5 + 264) = v10;
  *(v5 + 272) = *(v10 - 8);
  *(v5 + 280) = swift_task_alloc();
  v11 = sub_24619F42C();
  *(v5 + 288) = v11;
  *(v5 + 296) = *(v11 - 8);
  *(v5 + 304) = swift_task_alloc();
  v12 = sub_24619F2CC();
  *(v5 + 312) = v12;
  *(v5 + 320) = *(v12 - 8);
  *(v5 + 328) = swift_task_alloc();
  v13 = sub_24619F1EC();
  *(v5 + 336) = v13;
  *(v5 + 344) = *(v13 - 8);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F970, &qword_2461A1250);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  v14 = sub_24619F7FC();
  *(v5 + 384) = v14;
  *(v5 + 392) = *(v14 - 8);
  *(v5 + 400) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24617B854, v4, 0);
}

uint64_t sub_24617B854()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 640);
  v3 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 408) = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  v35 = (v1 + v3);
  sub_24616CB20(v1 + v3, v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD00000000000004ALL, 0x80000002461A7E20);
  v4 = sub_24619F4CC();
  v5 = (v4 & 1) == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x24C19A830](v6, v7);

  MEMORY[0x24C19A830](0xD000000000000014, 0x80000002461A7E70);
  if (v2)
  {
    v8 = 0xE300000000000000;
    v9 = 7104878;
  }

  else
  {
    *(v0 + 104) = *(v0 + 128);
    sub_24618B618();
    v9 = sub_24619FA7C();
    v8 = v10;
  }

  v12 = *(v0 + 392);
  v11 = *(v0 + 400);
  v13 = *(v0 + 376);
  v14 = *(v0 + 384);
  MEMORY[0x24C19A830](v9, v8);

  v15 = *MEMORY[0x277D00770];
  *(v0 + 632) = v15;
  v16 = *(v12 + 104);
  *(v0 + 416) = v16;
  *(v0 + 424) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v34 = v16;
  v16(v11, v15, v14);
  sub_24619F6DC();

  v17 = *(v12 + 8);
  *(v0 + 432) = v17;
  *(v0 + 440) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v11, v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v18 = sub_24619EFDC();
  *(v0 + 448) = v18;
  v19 = *(v18 - 8);
  *(v0 + 456) = v19;
  v20 = *(v19 + 56);
  *(v0 + 464) = v20;
  *(v0 + 472) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v13, 1, 1, v18);
  *(v0 + 480) = sub_2461714EC();
  if (sub_24619F4CC())
  {
    v21 = *(v0 + 400);
    v22 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    v34(v21, v15, v22);
    sub_24619F6DC();
    v17(v21, v22);

    return MEMORY[0x2822009F8](sub_24617BE34, 0, 0);
  }

  else
  {
    sub_24619F9FC();
    v37 = *(v0 + 432);
    v23 = *(v0 + 416);
    v24 = *(v0 + 400);
    v25 = *(v0 + 384);
    v36 = *(v0 + 640);
    v26 = *(v0 + 128);
    v27 = (*(v0 + 136) + *(v0 + 408));
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    *(v0 + 636) = *MEMORY[0x277D00760];
    v23(v24);
    sub_24619F6DC();
    v37(v24, v25);
    if (v26 >= 0x23C34600)
    {
      v28 = 600000000;
    }

    else
    {
      v28 = v26;
    }

    if (v36)
    {
      v29 = 600000000;
    }

    else
    {
      v29 = v28;
    }

    v30 = swift_task_alloc();
    *(v0 + 496) = v30;
    *v30 = v0;
    v30[1] = sub_24617C338;
    v31 = *(v0 + 136);
    v32 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282152BB8](v30, v29, &unk_2461A12D0, 0, &unk_2461A12E0, v31, v32);
  }
}

uint64_t sub_24617BE34()
{
  v7 = *(v0 + 432);
  v1 = *(v0 + 416);
  v2 = *(v0 + 632);
  v3 = *(v0 + 400);
  v4 = *(v0 + 384);
  __swift_project_boxed_opaque_existential_1((*(v0 + 480) + 24), *(*(v0 + 480) + 48));
  v1(v3, v2, v4);
  sub_24619F6DC();
  v7(v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 488) = v5;
  *v5 = v0;
  v5[1] = sub_24617BF60;

  return sub_246160084();
}

uint64_t sub_24617BF60()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_24617C070, v1, 0);
}

uint64_t sub_24617C070()
{
  sub_24619F9FC();
  v13 = *(v0 + 432);
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 384);
  v12 = *(v0 + 640);
  v4 = *(v0 + 128);
  v5 = (*(v0 + 136) + *(v0 + 408));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  *(v0 + 636) = *MEMORY[0x277D00760];
  v1(v2);
  sub_24619F6DC();
  v13(v2, v3);
  if (v4 >= 0x23C34600)
  {
    v6 = 600000000;
  }

  else
  {
    v6 = v4;
  }

  if (v12)
  {
    v7 = 600000000;
  }

  else
  {
    v7 = v6;
  }

  v8 = swift_task_alloc();
  *(v0 + 496) = v8;
  *v8 = v0;
  v8[1] = sub_24617C338;
  v9 = *(v0 + 136);
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282152BB8](v8, v7, &unk_2461A12D0, 0, &unk_2461A12E0, v9, v10);
}

uint64_t sub_24617C338()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_24617DE18;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_24617C47C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24617C47C()
{
  v0[64] = v0[63];
  v0[65] = *(v0[17] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__armandDataFiller);
  sub_24619F27C();
  sub_24618AC5C(&qword_281391F88, MEMORY[0x277D00630], MEMORY[0x277D00638]);
  v2 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24617C54C, v2, v1);
}

uint64_t sub_24617C54C()
{
  sub_24619F23C();
  v1 = swift_task_alloc();
  *(v0 + 528) = v1;
  *v1 = v0;
  v1[1] = sub_24617C5E8;

  return sub_246171854();
}

uint64_t sub_24617C5E8(uint64_t a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 536) = a1;

  return MEMORY[0x2822009F8](sub_24617C700, v2, 0);
}

uint64_t sub_24617C700()
{
  sub_24619F2AC();
  if (sub_24619F4CC())
  {
    v1 = v0[64];
    sub_24619F9FC();
    v0[68] = v1;
    if (v1)
    {
      v2 = v0[47];
      v4 = v0[40];
      v3 = v0[41];
      v5 = v0[39];

LABEL_6:
      (*(v4 + 8))(v3, v5);
      sub_24616CFC4(v2, &qword_27EE3F970, &qword_2461A1250);

      v11 = v0[1];

      return v11();
    }

    v13 = swift_task_alloc();
    v0[69] = v13;
    *v13 = v0;
    v13[1] = sub_24617CB40;
    v14 = v0[38];

    return sub_246160CAC(v14);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    sub_24619F1CC();
    v7 = v0[64];
    v0[70] = v6;
    sub_24619F9FC();
    if (v7)
    {
      v2 = v0[47];
      v3 = v0[45];
      v5 = v0[42];
      v4 = v0[43];
      v9 = v0[40];
      v8 = v0[41];
      v10 = v0[39];

      (*(v9 + 8))(v8, v10);
      goto LABEL_6;
    }

    if (sub_24619F4CC())
    {
      v15 = *(v0[17] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
      v0[71] = v15;

      return MEMORY[0x2822009F8](sub_24617D2F0, v15, 0);
    }

    else
    {
      if ((sub_24619F4CC() & 1) == 0)
      {
        v16 = v0[58];
        v17 = v0[56];
        v18 = v0[57];
        v19 = v0[47];
        sub_24616CFC4(v19, &qword_27EE3F970, &qword_2461A1250);
        (*(v18 + 104))(v19, *MEMORY[0x277D00540], v17);
        v16(v19, 0, 1, v17);
      }

      v21 = v0[40];
      v20 = v0[41];
      v22 = v0[39];
      v23 = v0[29];
      (*(v0[43] + 16))(v0[44], v0[45], v0[42]);
      (*(v21 + 16))(v23, v20, v22);
      (*(v21 + 56))(v23, 0, 1, v22);

      v24 = swift_task_alloc();
      v0[72] = v24;
      *v24 = v0;
      v24[1] = sub_24617D4B8;

      return sub_246171854();
    }
  }
}

uint64_t sub_24617CB40()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_24617CC50, v1, 0);
}

uint64_t sub_24617CC50()
{
  v36 = *(v0 + 432);
  v37 = *(v0 + 416);
  v1 = *(v0 + 632);
  v35 = *(v0 + 632);
  v2 = *(v0 + 400);
  v34 = *(v0 + 384);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = (*(v0 + 136) + *(v0 + 408));
  v6 = *(v0 + 288);
  v38 = sub_24619F41C();
  (*(v4 + 8))(v3, v6);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24619FAEC();
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  MEMORY[0x24C19A830](0xD00000000000001CLL, 0x80000002461A7F90);
  sub_24619FB6C();
  v37(v2, v1, v34);
  sub_24619F72C();

  v36(v2, v34);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24619FAEC();

  v7 = MEMORY[0x24C19A8B0](v38, MEMORY[0x277D837D0]);
  MEMORY[0x24C19A830](v7);

  v37(v2, v35, v34);
  sub_24619F6DC();

  v36(v2, v34);
  if (*(v38 + 16))
  {
    sub_24619EF2C();
    if (sub_24619EF1C())
    {
      v9 = *(v0 + 272);
      v8 = *(v0 + 280);
      v10 = *(v0 + 264);
      v11 = sub_24619F7EC();
      sub_24618AC5C(&qword_27EE3F9C8, MEMORY[0x277D00740], MEMORY[0x277D00748]);
      v12 = swift_allocError();
      *v13 = v38;
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D00730], v11);
      sub_24619F8BC();

      sub_24619EEAC();
      sub_24619EF0C();

      (*(v9 + 8))(v8, v10);
    }
  }

  v14 = *(v0 + 544);
  *(v0 + 560) = v38;
  sub_24619F9FC();
  if (v14)
  {
    v15 = *(v0 + 376);
    v16 = *(v0 + 360);
    v18 = *(v0 + 336);
    v17 = *(v0 + 344);
    v20 = *(v0 + 320);
    v19 = *(v0 + 328);
    v21 = *(v0 + 312);

    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v16, v18);
    sub_24616CFC4(v15, &qword_27EE3F970, &qword_2461A1250);

    v22 = *(v0 + 8);

    return v22();
  }

  else if (sub_24619F4CC())
  {
    v24 = *(*(v0 + 136) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
    *(v0 + 568) = v24;

    return MEMORY[0x2822009F8](sub_24617D2F0, v24, 0);
  }

  else
  {
    if ((sub_24619F4CC() & 1) == 0)
    {
      v25 = *(v0 + 464);
      v26 = *(v0 + 448);
      v27 = *(v0 + 456);
      v28 = *(v0 + 376);
      sub_24616CFC4(v28, &qword_27EE3F970, &qword_2461A1250);
      (*(v27 + 104))(v28, *MEMORY[0x277D00540], v26);
      v25(v28, 0, 1, v26);
    }

    v30 = *(v0 + 320);
    v29 = *(v0 + 328);
    v31 = *(v0 + 312);
    v32 = *(v0 + 232);
    (*(*(v0 + 344) + 16))(*(v0 + 352), *(v0 + 360), *(v0 + 336));
    (*(v30 + 16))(v32, v29, v31);
    (*(v30 + 56))(v32, 0, 1, v31);

    v33 = swift_task_alloc();
    *(v0 + 576) = v33;
    *v33 = v0;
    v33[1] = sub_24617D4B8;

    return sub_246171854();
  }
}

uint64_t sub_24617D2F0()
{
  v1 = *(v0 + 136);
  *(v0 + 641) = *(*(v0 + 568) + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTriggered);
  return MEMORY[0x2822009F8](sub_24617D324, v1, 0);
}

uint64_t sub_24617D324(uint64_t a1)
{
  if (*(v1 + 641) == 1)
  {
    if (sub_24619F4CC())
    {
      goto LABEL_6;
    }

    v2 = MEMORY[0x277D00540];
  }

  else
  {
    v2 = MEMORY[0x277D00548];
  }

  v3 = *(v1 + 464);
  v4 = *(v1 + 448);
  v5 = *(v1 + 456);
  v6 = *(v1 + 376);
  sub_24616CFC4(v6, &qword_27EE3F970, &qword_2461A1250);
  (*(v5 + 104))(v6, *v2, v4);
  v3(v6, 0, 1, v4);
LABEL_6:
  v8 = *(v1 + 320);
  v7 = *(v1 + 328);
  v9 = *(v1 + 312);
  v10 = *(v1 + 232);
  (*(*(v1 + 344) + 16))(*(v1 + 352), *(v1 + 360), *(v1 + 336));
  (*(v8 + 16))(v10, v7, v9);
  (*(v8 + 56))(v10, 0, 1, v9);

  v11 = swift_task_alloc();
  *(v1 + 576) = v11;
  *v11 = v1;
  v11[1] = sub_24617D4B8;

  return sub_246171854();
}

uint64_t sub_24617D4B8(uint64_t a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 584) = a1;

  return MEMORY[0x2822009F8](sub_24617D5D0, v2, 0);
}

uint64_t sub_24617D5D0()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  (*(v0[27] + 16))(v0[28], v0[15], v0[26]);
  sub_24618BC30(v1, v2, &qword_27EE3F970, &qword_2461A1250);
  v7 = *MEMORY[0x277D00610];
  v8 = *(v6 + 104);
  v8(v4, v7, v5);
  v8(v3, v7, v5);
  sub_24619F49C();
  v13 = (*MEMORY[0x277D00568] + MEMORY[0x277D00568]);
  v9 = swift_task_alloc();
  v0[74] = v9;
  *v9 = v0;
  v9[1] = sub_24617D774;
  v10 = v0[32];
  v11 = v0[14];

  return v13(v11, v10);
}

uint64_t sub_24617D774()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);

    v4 = sub_24617E068;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 136);
    v4 = sub_24617D89C;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24617D89C(uint64_t a1)
{
  v13 = v1;
  v2 = sub_24619F4CC();
  v3 = v1[17];
  if ((v2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = *(v3 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v1[76] = v3;
  v4 = sub_24619F1DC();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = sub_246189514(*(v4 + 16), 0);
    v8 = sub_2461896CC(&v12, v7 + 4, v6, v5);
    sub_24616CAF0(v12);
    if (v8 != v6)
    {
      __break(1u);
LABEL_5:

      v9 = *(v3 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
      v1[78] = v9;
      v10 = sub_24617DCDC;
      goto LABEL_8;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v1[77] = v7;
  v10 = sub_24617D9C4;
  v9 = v3;
LABEL_8:

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_24617D9C4()
{
  v1 = v0[77];
  v2 = v0[70];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v12 = v0[17];
  v7 = v0[14];
  sub_24619F5DC();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  (*(*(v8 - 8) + 56))(v6, 0, 5, v8);
  sub_24619DA28(v6, v4);
  sub_24618AD14(v6, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  (*(v3 + 8))(v4, v5);
  v9 = *(v2 + 16);

  v10 = *(v1 + 16);

  sub_24619C0B4(v9, v10, 0, v7);

  return MEMORY[0x2822009F8](sub_24617DB30, v12, 0);
}

uint64_t sub_24617DB30()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[43];
  v12 = v0[42];
  v4 = v0[40];
  v5 = v0[41];
  v6 = v0[39];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];

  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v2, v12);
  sub_24616CFC4(v1, &qword_27EE3F970, &qword_2461A1250);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24617DCDC()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[14];
  sub_24619F5DC();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  (*(*(v7 - 8) + 56))(v4, 0, 5, v7);
  sub_24619DA28(v4, v1);
  sub_24618AD14(v4, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  (*(v2 + 8))(v1, v3);
  sub_24619C0B4(3, 0, 1, v6);

  return MEMORY[0x2822009F8](sub_24618BD10, v5, 0);
}

uint64_t sub_24617DE18()
{
  v10 = *(v0 + 504);
  v1 = *(v0 + 636);
  v11 = *(v0 + 432);
  v2 = *(v0 + 416);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 384);
  v6 = *(v0 + 136);

  __swift_project_boxed_opaque_existential_1((v6 + v3), *(v6 + v3 + 24));
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000032, 0x80000002461A7EE0);
  swift_getErrorValue();
  sub_24619FBEC();
  v2(v4, v1, v5);
  sub_24619F6EC();

  v11(v4, v5);
  __swift_project_boxed_opaque_existential_1((v6 + v3), *(v6 + v3 + 24));
  v2(v4, v1, v5);
  sub_24619F6CC();

  v11(v4, v5);
  *(v0 + 512) = 0;
  *(v0 + 520) = *(*(v0 + 136) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__armandDataFiller);
  sub_24619F27C();
  sub_24618AC5C(&qword_281391F88, MEMORY[0x277D00630], MEMORY[0x277D00638]);
  v8 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24617C54C, v8, v7);
}

uint64_t sub_24617E068()
{
  v12 = v0[47];
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[39];
  v7 = v0[31];
  v8 = v0[32];
  v9 = v0[30];

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_24616CFC4(v12, &qword_27EE3F970, &qword_2461A1250);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24617E234()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24616D024;

  return sub_2461872B0();
}

uint64_t sub_24617E2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_24619F64C();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v7 = sub_24619EEBC();
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v8 = sub_24619F02C();
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();
  v9 = sub_24619EFDC();
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0);
  v5[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F968, &qword_2461A1248);
  v5[36] = swift_task_alloc();
  v10 = sub_24619F42C();
  v5[37] = v10;
  v5[38] = *(v10 - 8);
  v5[39] = swift_task_alloc();
  v11 = sub_24619EFBC();
  v5[40] = v11;
  v5[41] = *(v11 - 8);
  v5[42] = swift_task_alloc();
  v12 = sub_24619F4DC();
  v5[43] = v12;
  v13 = *(v12 - 8);
  v5[44] = v13;
  v5[45] = *(v13 + 64);
  v5[46] = swift_task_alloc();
  v14 = sub_24619F60C();
  v5[47] = v14;
  v5[48] = *(v14 - 8);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v15 = sub_24619F7FC();
  v5[53] = v15;
  v5[54] = *(v15 - 8);
  v5[55] = swift_task_alloc();
  v16 = sub_24619F3FC();
  v5[56] = v16;
  v5[57] = *(v16 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24617E764, v4, 0);
}

uint64_t sub_24617E764()
{
  v1 = *(*(v0 + 176) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 480) = v1;
  return MEMORY[0x2822009F8](sub_24617E790, v1, 0);
}

uint64_t sub_24617E790()
{
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[56];
  v4 = v0[57];
  v5 = v0[22];
  v6 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  v0[61] = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[62] = v7;
  v0[63] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v2 + v6, v3);

  return MEMORY[0x2822009F8](sub_24617E858, v5, 0);
}

uint64_t sub_24617E858()
{
  if ((sub_24619F3BC() & 1) != 0 && (sub_24619F35C() & 1) == 0)
  {
    v2 = *(v0 + 432);
    v1 = *(v0 + 440);
    v3 = *(v0 + 424);
    __swift_project_boxed_opaque_existential_1((*(v0 + 176) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(*(v0 + 176) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
    (*(v2 + 104))(v1, *MEMORY[0x277D00750], v3);
    sub_24619F6FC();
    (*(v2 + 8))(v1, v3);
  }

  v4 = *(*(v0 + 176) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_profileSla);
  v5 = sub_24619F36C();
  v13 = v4 - v12;
  if (v13 <= 0.5)
  {
    v13 = 0.5;
  }

  v14 = v13 * 1000000000.0;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v14 <= -1.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 >= 1.84467441e19)
  {
LABEL_20:
    __break(1u);
    return MEMORY[0x282152BB8](v5, v6, v7, v8, v9, v10, v11);
  }

  v16 = *(v0 + 432);
  v15 = *(v0 + 440);
  v36 = *(v0 + 368);
  v37 = *(v0 + 360);
  v17 = *(v0 + 352);
  v38 = *(v0 + 176);
  v39 = *(v0 + 424);
  v34 = *(v0 + 152);
  v35 = *(v0 + 344);
  v18 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 512) = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  v19 = (v38 + v18);
  v33 = v14;
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD00000000000003CLL, 0x80000002461A7BB0);
  v20 = sub_24619F4CC();
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  MEMORY[0x24C19A830](v22, v23);

  MEMORY[0x24C19A830](41, 0xE100000000000000);
  *(v0 + 648) = *MEMORY[0x277D00790];
  v24 = *(v16 + 104);
  *(v0 + 520) = v24;
  *(v0 + 528) = (v16 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v24(v15);
  sub_24619F6CC();

  v25 = *(v16 + 8);
  *(v0 + 536) = v25;
  *(v0 + 544) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v15, v39);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_24619FAEC();

  *(v0 + 112) = v33;
  v26 = sub_24619FBBC();
  MEMORY[0x24C19A830](v26);

  v27 = *MEMORY[0x277D007A0];
  *(v0 + 652) = v27;
  v28 = sub_24619F7FC();
  (*(*(v28 - 8) + 104))(v15, v27, v28);
  sub_24619F74C();

  v25(v15, v39);
  (*(v17 + 16))(v36, v34, v35);
  v29 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v30 = swift_allocObject();
  *(v0 + 552) = v30;
  *(v30 + 16) = v38;
  (*(v17 + 32))(v30 + v29, v36, v35);
  *(v30 + ((v37 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;

  v31 = swift_task_alloc();
  *(v0 + 560) = v31;
  *v31 = v0;
  v31[1] = sub_24617ED64;
  v5 = *(v0 + 416);
  v11 = *(v0 + 376);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v9 = &unk_2461A12C8;
  v6 = v33;
  v10 = v30;

  return MEMORY[0x282152BB8](v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24617ED64()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = sub_24617F1D4;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_24617EE8C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24617EE8C()
{
  v11 = v0[67];
  v1 = v0[65];
  v16 = v0[56];
  v17 = v0[59];
  v2 = v0[55];
  v3 = v0[53];
  v12 = v0[52];
  v14 = v0[57];
  v15 = v0[48];
  v18 = v0[47];
  v8 = v0[41];
  v9 = v0[40];
  v10 = v0[42];
  v13 = v0[18];
  v4 = (v0[22] + v0[64]);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v1(v2, *MEMORY[0x277D00780], v3);
  sub_24619F6CC();
  v11(v2, v3);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  (*(v8 + 104))(v10, *MEMORY[0x277D004F8], v9);
  sub_24619FAEC();

  v5 = sub_24619F8BC();
  MEMORY[0x24C19A830](v5);

  MEMORY[0x24C19A830](0x5354206874697720, 0xEA00000000004449);
  sub_24619F5CC();
  sub_24619F71C();

  (*(v8 + 8))(v10, v9);
  (*(v14 + 8))(v17, v16);
  (*(v15 + 32))(v13, v12, v18);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24617F1D4()
{
  v9 = v0[67];
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[55];
  v4 = v0[53];
  v5 = v0[22];

  __swift_project_boxed_opaque_existential_1((v5 + v2), *(v5 + v2 + 24));
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD00000000000002CLL, 0x80000002461A7C20);
  swift_getErrorValue();
  sub_24619FBEC();
  v1(v3, *MEMORY[0x277D00780], v4);
  sub_24619F6EC();

  v9(v3, v4);
  v0[72] = sub_2461714EC();
  v6 = swift_task_alloc();
  v0[73] = v6;
  *v6 = v0;
  v6[1] = sub_24617F38C;
  v7 = v0[39];

  return sub_246160CAC(v7);
}

uint64_t sub_24617F38C()
{
  v1 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_24617F49C, v1, 0);
}

uint64_t sub_24617F49C()
{
  *(v0 + 592) = *(*(v0 + 176) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
  sub_24619F01C();
  sub_24618AC5C(&qword_27EE3F9B8, MEMORY[0x277D00578], MEMORY[0x277D00580]);
  v2 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24617F564, v2, v1);
}

uint64_t sub_24617F564()
{
  sub_24619F00C();
  v1 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_24617F600, v1, 0);
}

uint64_t sub_24617F600()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 288);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = *(v3 + 32);
  v5(v1, v4, v2);
  if (sub_24619F5BC())
  {
    v14 = *(v0 + 652);
    v18 = *(v0 + 568);
    v19 = *(v0 + 536);
    v6 = *(v0 + 456);
    v21 = *(v0 + 448);
    v22 = *(v0 + 472);
    v7 = *(v0 + 440);
    v15 = *(v0 + 424);
    v24 = *(v0 + 408);
    v23 = *(v0 + 376);
    v8 = *(v0 + 304);
    v16 = *(v0 + 296);
    v17 = *(v0 + 312);
    v20 = *(v0 + 144);
    v9 = (*(v0 + 176) + *(v0 + 512));
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v10 = sub_24619F7FC();
    (*(*(v10 - 8) + 104))(v7, v14, v10);
    sub_24619F74C();

    v19(v7, v15);
    (*(v8 + 8))(v17, v16);
    (*(v6 + 8))(v22, v21);
    v5(v20, v24, v23);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    (*(*(v0 + 384) + 8))(*(v0 + 408), *(v0 + 376));
    v13 = *(v0 + 480);

    return MEMORY[0x2822009F8](sub_24617F924, v13, 0);
  }
}

uint64_t sub_24617F924()
{
  v1 = v0[60];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[47];
  v5 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_partialAssessment;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v6(v2, v1 + v5, v4);
  v7 = sub_24619F5BC();
  (*(v3 + 8))(v2, v4);
  if ((v7 & 1) != 0 && ((v8 = v0[60], *(v8 + 136) != 1) || *(v8 + 120) >= 3uLL))
  {
    v9 = v0[22];
    v6(v0[50], v1 + v5, v0[47]);
    v11 = sub_24617FA90;
  }

  else
  {
    v9 = v0[22];
    sub_24618B528();
    v10 = swift_allocError();
    swift_willThrow();

    v11 = sub_24617FE98;
  }

  return MEMORY[0x2822009F8](v11, v9, 0);
}

uint64_t sub_24617FA90()
{
  v1 = *(v0 + 652);
  v9 = *(v0 + 536);
  v10 = *(v0 + 480);
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 280);
  v5 = (*(v0 + 176) + *(v0 + 512));
  (*(*(v0 + 384) + 32))(*(v0 + 144), *(v0 + 400), *(v0 + 376));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v6 = sub_24619F7FC();
  (*(*(v6 - 8) + 104))(v2, v1, v6);
  sub_24619F74C();
  v9(v2, v3);
  sub_24619F5DC();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  (*(*(v7 - 8) + 56))(v4, 0, 5, v7);

  return MEMORY[0x2822009F8](sub_24617FC44, v10, 0);
}

uint64_t sub_24617FC44()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];
  v4 = v0[35];
  v5 = v0[22];
  sub_24619DA28(v4, v1);
  sub_24618AD14(v4, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  v6 = *(v2 + 8);
  v0[75] = v6;
  v0[76] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);

  return MEMORY[0x2822009F8](sub_24617FD18, v5, 0);
}

uint64_t sub_24617FD18()
{
  v1 = v0[75];
  v2 = v0[71];
  v3 = v0[59];
  v4 = v0[56];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];

  (*(v6 + 8))(v5, v7);
  v1(v3, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24617FE98()
{
  v1 = *(v0 + 568);
  v35 = *(v0 + 536);
  v2 = *(v0 + 520);
  v3 = *(v0 + 648);
  v4 = *(v0 + 440);
  v5 = *(v0 + 424);
  v6 = (*(v0 + 176) + *(v0 + 512));
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v2(v4, v3, v5);
  sub_24619F6DC();
  v35(v4, v5);
  *(v0 + 128) = v1;
  v7 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F960, &qword_2461A1230);
  v8 = swift_dynamicCast();
  *(v0 + 656) = v8;
  if (v8)
  {
    v42 = *(v0 + 536);
    v31 = *(v0 + 520);
    v9 = *(v0 + 648);
    v10 = *(v0 + 440);
    v11 = *(v0 + 424);
    v12 = *(v0 + 264);
    v36 = *(v0 + 256);
    v39 = *(v0 + 272);
    v13 = (*(v0 + 176) + *(v0 + 512));
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v31(v10, v9, v11);
    sub_24619F6EC();
    v42(v10, v11);
    (*(v12 + 104))(v39, *MEMORY[0x277D00500], v36);
    sub_24619EF2C();
    v14 = sub_24619EF1C();
    *(v0 + 616) = v14;
    if (v14)
    {
      v15 = *(v0 + 480);
      *(v0 + 624) = sub_24619F7EC();
      sub_24618AC5C(&qword_27EE3F9C8, MEMORY[0x277D00740], MEMORY[0x277D00748]);
      *(v0 + 632) = swift_allocError();
      *(v0 + 640) = v16;

      return MEMORY[0x2822009F8](sub_246180454, v15, 0);
    }
  }

  else
  {
    v43 = *(v0 + 536);
    v32 = *(v0 + 520);
    v30 = *(v0 + 648);
    v17 = *(v0 + 440);
    v18 = *(v0 + 424);
    v19 = *(v0 + 264);
    v37 = *(v0 + 256);
    v40 = *(v0 + 272);
    v20 = (*(v0 + 176) + *(v0 + 512));
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_24619FAEC();
    MEMORY[0x24C19A830](0xD000000000000016, 0x80000002461A7C90);
    swift_getErrorValue();
    sub_24619FBEC();
    MEMORY[0x24C19A830](0xD00000000000002BLL, 0x80000002461A7CB0);
    v32(v17, v30, v18);
    sub_24619F6EC();

    v43(v17, v18);
    (*(v19 + 104))(v40, *MEMORY[0x277D00508], v37);
  }

  v21 = *(v0 + 456);
  v44 = *(v0 + 448);
  v45 = *(v0 + 472);
  v22 = *(v0 + 304);
  v38 = *(v0 + 296);
  v41 = *(v0 + 312);
  v24 = *(v0 + 264);
  v23 = *(v0 + 272);
  v33 = *(v0 + 568);
  v34 = *(v0 + 256);
  v26 = *(v0 + 192);
  v25 = *(v0 + 200);
  v27 = *(v0 + 184);
  *(*(v0 + 176) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__lastAssessmentTimedOut) = *(v0 + 656);
  sub_24619F8BC();
  sub_24619F62C();
  sub_24619F63C();

  (*(v26 + 8))(v25, v27);
  (*(v24 + 8))(v23, v34);
  (*(v22 + 8))(v41, v38);
  (*(v21 + 8))(v45, v44);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_246180454()
{
  v1 = *(v0 + 176);
  (*(v0 + 496))(*(v0 + 464), *(v0 + 480) + *(v0 + 488), *(v0 + 448));

  return MEMORY[0x2822009F8](sub_2461804D0, v1, 0);
}

uint64_t sub_2461804D0(uint64_t a1)
{
  v2 = *(v1 + 640);
  v3 = *(v1 + 624);
  v5 = *(v1 + 456);
  v4 = *(v1 + 464);
  v6 = *(v1 + 448);
  v8 = *(v1 + 216);
  v7 = *(v1 + 224);
  v24 = *(v1 + 632);
  v26 = *(v1 + 208);
  sub_24619F36C();
  v10 = v9;
  (*(v5 + 8))(v4, v6);
  *v2 = v10;
  (*(*(v3 - 8) + 104))(v2, *MEMORY[0x277D00738], v3);
  sub_24619F8BC();
  sub_24619EEAC();
  sub_24619EF0C();

  (*(v8 + 8))(v7, v26);

  v11 = *(v1 + 456);
  v25 = *(v1 + 448);
  v27 = *(v1 + 472);
  v12 = *(v1 + 304);
  v22 = *(v1 + 296);
  v23 = *(v1 + 312);
  v14 = *(v1 + 264);
  v13 = *(v1 + 272);
  v20 = *(v1 + 568);
  v21 = *(v1 + 256);
  v16 = *(v1 + 192);
  v15 = *(v1 + 200);
  v17 = *(v1 + 184);
  *(*(v1 + 176) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__lastAssessmentTimedOut) = *(v1 + 656);
  sub_24619F8BC();
  sub_24619F62C();
  sub_24619F63C();

  (*(v16 + 8))(v15, v17);
  (*(v14 + 8))(v13, v21);
  (*(v12 + 8))(v23, v22);
  (*(v11 + 8))(v27, v25);

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_2461807EC()
{
  v1 = v0[36];
  (*(v0[48] + 56))(v1, 1, 1, v0[47]);
  sub_24616CFC4(v1, &qword_27EE3F968, &qword_2461A1248);
  v2 = v0[60];

  return MEMORY[0x2822009F8](sub_24617F924, v2, 0);
}

uint64_t sub_246180888(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a4 >> 1;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_246161518;

  return sub_24617B3EC(a1, a3, v7, 0);
}

uint64_t sub_246180944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v27 = a1;
  v31 = sub_24619F4DC();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v26 = &v24 - v6;
  v8 = sub_24619EF4C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24619EF5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  sub_24619F54C();
  sub_24619EF6C();
  v16 = sub_24619F9CC();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  (*(v10 + 16))(v13, v15, v9);
  (*(v3 + 16))(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v31);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v3 + 80) + v18 + 8) & ~*(v3 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v10 + 32))(v20 + v17, v13, v9);
  *(v20 + v18) = v28;
  (*(v3 + 32))(v20 + v19, v25, v31);
  v21 = (v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;

  sub_2461703A8(0, 0, v26, &unk_2461A1330, v20);

  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_246180CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a4;
  v12 = swift_task_alloc();
  *(v8 + 24) = v12;
  *v12 = v8;
  v12[1] = sub_246180D80;

  return sub_246182F78(a6, a7, a8);
}

uint64_t sub_246180D80()
{

  return MEMORY[0x2822009F8](sub_246180E7C, 0, 0);
}

uint64_t sub_246180E7C()
{
  sub_24619EF3C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_246180EE8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_24619F3FC();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  v6 = sub_24619F0FC();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v3[17] = *(v7 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246181024, v2, 0);
}

uint64_t sub_246181024()
{
  v1 = sub_2461714EC()[9];

  *(v0 + 160) = *(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller_geoCoder);

  sub_24619F6BC();
  sub_24618AC5C(&qword_281391F70, MEMORY[0x277D00718], MEMORY[0x277D00720]);
  v3 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24618111C, v3, v2);
}

uint64_t sub_24618111C()
{
  v1 = *(v0 + 80);
  sub_24619F69C();

  return MEMORY[0x2822009F8](sub_246181190, v1, 0);
}

uint64_t sub_246181190()
{
  v2 = v0[18];
  v1 = v0[19];
  v24 = v1;
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v21 = v0[17];
  v7 = v0[11];
  v8 = v0[8];
  v22 = v0[9];
  v9 = sub_24619F8BC();
  v19 = v10;
  v20 = v9;
  v23 = sub_24619F88C();
  (*(v3 + 16))(v2, v1, v5);
  (*(v6 + 16))(v4, v8, v7);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = (v21 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v20;
  *(v13 + 3) = v19;
  *(v13 + 4) = v22;
  v14 = &v13[v11];
  v15 = v5;
  (*(v3 + 32))(v14, v2, v5);
  (*(v6 + 32))(&v13[v12], v4, v7);
  v0[6] = sub_24618B338;
  v0[7] = v13;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2461817DC;
  v0[5] = &block_descriptor_82;
  v16 = _Block_copy(v0 + 2);

  AnalyticsSendEventLazy();
  _Block_release(v16);

  (*(v3 + 8))(v24, v15);

  v17 = v0[1];

  return v17();
}

unint64_t sub_2461813EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9A8, &qword_2461A12A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2461A0FA0;
  *(inited + 32) = 0x4965636976726573;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = sub_24619F88C();
  *(inited + 56) = 0x54656D6F6374756FLL;
  *(inited + 64) = 0xEB00000000657079;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000002461A7A40;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((inited + 104), "geocodeErrors");
  *(inited + 118) = -4864;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 128) = 0xD000000000000018;
  *(inited + 136) = 0x80000002461A7A60;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 152) = 0xD00000000000001FLL;
  *(inited + 160) = 0x80000002461A7A80;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 176) = 0xD00000000000001DLL;
  *(inited + 184) = 0x80000002461A7AA0;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x80000002461A7AC0;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 224) = 0xD000000000000021;
  *(inited + 232) = 0x80000002461A7AE0;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 248) = 0xD000000000000021;
  *(inited + 256) = 0x80000002461A7B10;
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = sub_24618B234(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9B0, &unk_2461A12B0);
  swift_arrayDestroy();
  v6 = sub_24619F3AC();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  sub_2461706A8(v8, 0xD000000000000018, 0x80000002461A7B40);
  v9 = sub_24619F3DC();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  sub_2461706A8(v11, 0xD000000000000021, 0x80000002461A7B60);
  v12 = sub_24619F2EC();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  sub_2461706A8(v14, 0xD000000000000016, 0x80000002461A7B90);
  return v5;
}

id sub_2461817DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_24618B1E8();
    v4 = sub_24619F80C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_246181868()
{
  v1[11] = v0;
  v2 = sub_24619F3FC();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246181928, v0, 0);
}

uint64_t sub_246181928()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 120) = v1;
  return MEMORY[0x2822009F8](sub_246181954, v1, 0);
}

uint64_t sub_246181954()
{
  v1 = *(v0 + 120);
  *(v0 + 128) = *(v1 + 112);
  return MEMORY[0x2822009F8](sub_246181978, v1, 0);
}

uint64_t sub_246181978()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  (*(v4 + 16))(v1, v2 + v6, v3);

  return MEMORY[0x2822009F8](sub_246181A30, v5, 0);
}

uint64_t sub_246181A30()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = COERCE_DOUBLE(sub_24619F38C());
  v8 = v7;
  (*(v3 + 8))(v2, v5);
  if (v8)
  {
    v9 = -1.0;
  }

  else
  {
    v9 = v6;
  }

  v10 = sub_24619F88C();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v1;
  *(v11 + 32) = v9;
  *(v0 + 48) = sub_24618B1C4;
  *(v0 + 56) = v11;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_2461817DC;
  *(v0 + 40) = &block_descriptor;
  v12 = _Block_copy((v0 + 16));

  AnalyticsSendEventLazy();
  _Block_release(v12);

  v13 = *(v0 + 8);

  return v13();
}

unint64_t sub_246181BBC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_24619F7FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9A8, &qword_2461A12A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2461A0EF0;
  *(inited + 32) = 0x4965636976726573;
  *(inited + 40) = 0xE900000000000064;
  v11 = *(a1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  *(inited + 48) = v11;
  *(inited + 56) = 0x7954656372756F73;
  *(inited + 64) = 0xEA00000000006570;
  v12 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v13 = v11;
  *(inited + 72) = [v12 initWithInteger_];
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000002461A79D0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v14 = sub_24618B234(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9B0, &unk_2461A12B0);
  swift_arrayDestroy();
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(a1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_24619FAEC();

  v18 = 0xD00000000000001CLL;
  v19 = 0x80000002461A79F0;
  sub_24618B1E8();
  v15 = sub_24619F83C();
  MEMORY[0x24C19A830](v15);

  (*(v7 + 104))(v9, *MEMORY[0x277D007A0], v6);
  sub_24619F73C();

  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_246181EC4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 305) = a3;
  *(v4 + 80) = a1;
  v5 = sub_24619F46C();
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  v6 = sub_24619F58C();
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  v7 = sub_24619F7FC();
  *(v4 + 152) = v7;
  *(v4 + 160) = *(v7 - 8);
  *(v4 + 168) = swift_task_alloc();
  v8 = sub_24619F11C();
  *(v4 + 176) = v8;
  *(v4 + 184) = *(v8 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v9 = sub_24619F60C();
  *(v4 + 208) = v9;
  *(v4 + 216) = *(v9 - 8);
  *(v4 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246182108, v3, 0);
}

uint64_t sub_246182108()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  (*(v2 + 16))(v1, *(v0 + 88), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D006F0])
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 200);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v9 = *(v0 + 305);
    (*(*(v0 + 216) + 96))(v5, *(v0 + 208));
    (*(v8 + 16))(v6, v5, v7);
    v59 = *(v0 + 224);
    v10 = *(v0 + 200);
    if (v9 == 1)
    {
      v11 = *(v0 + 184);
      v13 = *(v0 + 160);
      v12 = *(v0 + 168);
      v14 = *(v0 + 152);
      v54 = *(v0 + 96);
      v56 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1((v54 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v54 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
      sub_24619FAEC();
      MEMORY[0x24C19A830](0xD000000000000032, 0x80000002461A7910);
      v15 = sub_24619F10C();
      MEMORY[0x24C19A830](v15);

      (*(v13 + 104))(v12, *MEMORY[0x277D00790], v14);
      sub_24619F6DC();

      v16 = *(v13 + 8);
      v17 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v12, v14);
      v18 = sub_24619F10C();
      v20 = v19;
      v21 = *(v11 + 8);
      v21(v10, v56);
      v22 = (v54 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId);
      *v22 = v18;
      v22[1] = v20;
      v23 = 0x281391000;

      v21(v59, v56);
    }

    else
    {
      v36 = *(v0 + 184);
      v37 = *(v0 + 192);
      v38 = *(v0 + 168);
      v39 = *(v0 + 160);
      v53 = *(v0 + 152);
      v55 = *(v0 + 176);
      v40 = *(v0 + 96);
      v58 = *(v36 + 8);
      (v58)(*(v0 + 200));
      (*(v36 + 32))(v37, v59, v55);
      __swift_project_boxed_opaque_existential_1((v40 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v40 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
      sub_24619FAEC();
      MEMORY[0x24C19A830](0xD000000000000056, 0x80000002461A78B0);
      v41 = sub_24619F10C();
      MEMORY[0x24C19A830](v41);

      (*(v39 + 104))(v38, *MEMORY[0x277D00790], v53);
      sub_24619F6DC();

      v16 = *(v39 + 8);
      v17 = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v38, v53);
      v23 = 0x281391000;
      v58(v37, v55);
    }
  }

  else
  {
    v24 = *(v0 + 216);
    v25 = *(v0 + 224);
    v26 = *(v0 + 208);
    v28 = *(v0 + 160);
    v27 = *(v0 + 168);
    v60 = *(v0 + 152);
    if (v4 == *MEMORY[0x277D006E8])
    {
      v29 = *(v0 + 136);
      v30 = *(v0 + 144);
      v31 = *(v0 + 128);
      v52 = v31;
      v32 = *(v0 + 96);
      v57 = v29;
      (*(v24 + 96))(v25, v26);
      (*(v29 + 32))(v30, v25, v31);
      v23 = 0x281391000uLL;
      __swift_project_boxed_opaque_existential_1((v32 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v32 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
      sub_24619FAEC();
      MEMORY[0x24C19A830](0xD00000000000003ELL, 0x80000002461A7870);
      v33 = v30;
      *(v0 + 72) = sub_24619F57C();
      v34 = sub_24619FBBC();
      MEMORY[0x24C19A830](v34);

      (*(v28 + 104))(v27, *MEMORY[0x277D00790], v60);
      sub_24619F6EC();

      v16 = *(v28 + 8);
      v17 = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v27, v60);
      (*(v57 + 8))(v33, v52);
      v35 = (v32 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId);
      *v35 = 0;
      v35[1] = 0;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((*(v0 + 96) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(*(v0 + 96) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
      v42 = *MEMORY[0x277D007A0];
      v43 = sub_24619F7FC();
      (*(*(v43 - 8) + 104))(v27, v42, v43);
      sub_24619F75C();
      v16 = *(v28 + 8);
      v17 = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v27, v60);
      (*(v24 + 8))(v25, v26);
      v23 = 0x281391000uLL;
    }
  }

  v45 = *(v0 + 160);
  v44 = *(v0 + 168);
  v46 = *(v0 + 152);
  v47 = *(v0 + 96);
  v48 = *(v23 + 3080);
  *(v0 + 232) = v16;
  *(v0 + 240) = v48;
  __swift_project_boxed_opaque_existential_1((v47 + v48), *(v47 + v48 + 24));
  (*(v45 + 104))(v44, *MEMORY[0x277D00798], v46);
  sub_24619F6DC();
  *(v0 + 248) = v17;
  v16(v44, v46);
  v49 = swift_task_alloc();
  *(v0 + 256) = v49;
  *v49 = v0;
  v49[1] = sub_246182838;
  v50 = *(v0 + 80);

  return sub_246185B60(v50);
}

uint64_t sub_246182838()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_246182D9C;
  }

  else
  {
    v4 = sub_246182964;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_246182964()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v0[34] = *(v0[12] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_fieldsCachingManager);
  (*(v2 + 104))(v1, *MEMORY[0x277D006B0], v3);

  return MEMORY[0x2822009F8](sub_2461829F8, 0, 0);
}

uint64_t sub_2461829F8()
{
  v1 = *(*(v0 + 272) + 64);
  *(v0 + 280) = v1;
  return MEMORY[0x2822009F8](sub_246182A1C, v1, 0);
}

uint64_t sub_246182A1C()
{
  v1 = v0[15];
  swift_beginAccess();
  v2 = sub_246189354(v1);
  v0[36] = v2;
  swift_endAccess();
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[37] = v3;
    *v3 = v0;
    v3[1] = sub_246182BB0;
    v4 = MEMORY[0x277D84A98];
    v5 = MEMORY[0x277D84AC0];
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 38, v2, v6, v4, v5);
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_246182BB0()
{
  v1 = *(*v0 + 280);

  return MEMORY[0x2822009F8](sub_246182CDC, v1, 0);
}

uint64_t sub_246182CDC()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_246182D9C()
{
  v1 = v0[33];
  v12 = v0[29];
  v2 = v0[21];
  v3 = v0[19];
  v4 = (v0[12] + v0[30]);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000049, 0x80000002461A7820);
  swift_getErrorValue();
  v5 = sub_24619FC3C();
  MEMORY[0x24C19A830](v5);

  v6 = *MEMORY[0x277D007A0];
  v7 = sub_24619F7FC();
  (*(*(v7 - 8) + 104))(v2, v6, v7);
  sub_24619F77C();

  v12(v2, v3);
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v0[34] = *(v0[12] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_fieldsCachingManager);
  (*(v9 + 104))(v8, *MEMORY[0x277D006B0], v10);

  return MEMORY[0x2822009F8](sub_2461829F8, 0, 0);
}

uint64_t sub_246182F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_24619EFBC();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = sub_24619F60C();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0);
  v4[30] = swift_task_alloc();
  v7 = sub_24619F3FC();
  v4[31] = v7;
  v8 = *(v7 - 8);
  v4[32] = v8;
  v4[33] = *(v8 + 64);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246183134, v3, 0);
}

uint64_t sub_246183134()
{
  v1 = v0[30];
  v2 = *(v0[23] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v0[36] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  (*(*(v3 - 8) + 56))(v1, 3, 5, v3);

  return MEMORY[0x2822009F8](sub_2461831F8, v2, 0);
}

uint64_t sub_2461831F8()
{
  v1 = v0[30];
  v2 = v0[23];
  sub_24619DA28(v1, v0[35]);
  sub_24618AD14(v1, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);

  return MEMORY[0x2822009F8](sub_246183290, v2, 0);
}

uint64_t sub_246183290()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[31];
  v4 = v0[23];
  (*(v2 + 16))(v1, v0[35], v3);
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[37] = v6;
  *(v6 + 16) = v4;
  (*(v2 + 32))(v6 + v5, v1, v3);

  v7 = swift_task_alloc();
  v0[38] = v7;
  *v7 = v0;
  v7[1] = sub_2461833D4;
  v8 = v0[29];
  v9 = v0[20];

  return sub_24617E2C4(v8, v9, &unk_2461A1280, v6);
}

uint64_t sub_2461833D4()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_246183500, v1, 0);
}

uint64_t sub_246183500()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v17 = v0[21];
  sub_24616CB20(v0[23] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger, (v0 + 14));
  __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
  (*(v2 + 104))(v1, *MEMORY[0x277D004D8], v3);
  sub_24619FAEC();

  v4 = sub_24619F8BC();
  MEMORY[0x24C19A830](v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F988, &qword_2461A1288);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2461A0F90;
  *(inited + 32) = 0x64616F6C796170;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_24619F5FC();
  *(inited + 56) = v6;
  *(inited + 64) = 1684632436;
  *(inited + 72) = 0xE400000000000000;
  v7 = sub_24619F5CC();
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  *(inited + 80) = v9;
  *(inited + 88) = v10;
  v11 = sub_24618B034(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F990, &qword_2461A1290);
  swift_arrayDestroy();
  v0[19] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F998, &qword_2461A1298);
  sub_24618B148();
  sub_24619F70C();

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v12 = sub_24619F5FC();
  v17(v12);

  v13 = swift_task_alloc();
  v0[39] = v13;
  *v13 = v0;
  v13[1] = sub_2461837E4;
  v14 = v0[35];
  v15 = v0[29];

  return sub_246181EC4(v14, v15, 1);
}

uint64_t sub_2461837E4()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_2461838F4, v1, 0);
}

uint64_t sub_2461838F4()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];
  (*(v0[28] + 8))(v0[29], v0[27]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2461839CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_24619F7FC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246183A90, 0, 0);
}

uint64_t sub_246183A90()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v0[3] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  (*(v2 + 104))(v1, *MEMORY[0x277D00790], v3);
  sub_24619F6DC();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_24615C678;
  v5 = v0[4];
  v6 = v0[2];

  return sub_246181EC4(v5, v6, 0);
}

uint64_t sub_246183BD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_24619F7FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
  (*(v6 + 104))(v8, *MEMORY[0x277D00798], v5);
  sub_24619F6DC();
  (*(v6 + 8))(v8, v5);
  v9 = sub_24619F9CC();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = sub_24618AC5C(&qword_281391BF8, type metadata accessor for ODISessionInternal, &protocol conformance descriptor for ODISessionInternal);
  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = v10;
  v11[4] = v1;
  swift_retain_n();
  sub_2461703A8(0, 0, v4, &unk_2461A1240, v11);
}

uint64_t sub_246183E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F968, &qword_2461A1248);
  v4[13] = swift_task_alloc();
  v6 = sub_24619F60C();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = sub_24619F22C();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F970, &qword_2461A1250);
  v4[21] = swift_task_alloc();
  sub_24619F4DC();
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F978, &qword_2461A1258);
  v4[23] = swift_task_alloc();
  v8 = sub_24619F4AC();
  v4[24] = v8;
  v4[25] = *(v8 - 8);
  v4[26] = swift_task_alloc();
  v9 = sub_24619F3FC();
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v10 = sub_24619F7FC();
  v4[31] = v10;
  v4[32] = *(v10 - 8);
  v4[33] = swift_task_alloc();
  v11 = sub_24619F42C();
  v4[34] = v11;
  v4[35] = *(v11 - 8);
  v4[36] = swift_task_alloc();
  v12 = sub_24619F1EC();
  v4[37] = v12;
  v4[38] = *(v12 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v13 = sub_24619F2CC();
  v4[41] = v13;
  v4[42] = *(v13 - 8);
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24618429C, a4, 0);
}

uint64_t sub_24618429C()
{
  v1 = v0[11];
  v0[44] = sub_2461714EC();
  v0[45] = *(v1 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__armandDataFiller);
  sub_24619F27C();
  sub_24618AC5C(&qword_281391F88, MEMORY[0x277D00630], MEMORY[0x277D00638]);
  v3 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24618436C, v3, v2);
}

uint64_t sub_24618436C()
{
  sub_24619F23C();
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  *v1 = v0;
  v1[1] = sub_246184408;

  return sub_246171854();
}

uint64_t sub_246184408(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 376) = a1;

  return MEMORY[0x2822009F8](sub_246184520, v2, 0);
}

uint64_t sub_246184520()
{
  sub_24619F2AC();
  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  *v1 = v0;
  v1[1] = sub_2461845C4;
  v2 = *(v0 + 288);

  return sub_246160CAC(v2);
}

uint64_t sub_2461845C4()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2461846D4, v1, 0);
}

uint64_t sub_2461846D4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 88);
  v16 = *(v0 + 248);
  v15 = sub_24619F41C();
  *(v0 + 392) = v15;
  (*(v3 + 8))(v1, v2);
  v7 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 400) = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  v8 = (v6 + v7);
  __swift_project_boxed_opaque_existential_1((v6 + v7), *(v6 + v7 + 24));
  sub_24619FAEC();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  MEMORY[0x24C19A830](0xD000000000000029, 0x80000002461A7600);
  sub_24619FB6C();
  v9 = *MEMORY[0x277D00798];
  *(v0 + 504) = v9;
  v10 = *(v5 + 104);
  *(v0 + 408) = v10;
  *(v0 + 416) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v4, v9, v16);
  sub_24619F72C();

  v11 = *(v5 + 8);
  *(v0 + 424) = v11;
  *(v0 + 432) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v4, v16);
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000031, 0x80000002461A7630);
  v12 = MEMORY[0x24C19A8B0](v15, MEMORY[0x277D837D0]);
  MEMORY[0x24C19A830](v12);

  v10(v4, v9, v16);
  sub_24619F6DC();

  v11(v4, v16);
  v13 = *(v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 440) = v13;

  return MEMORY[0x2822009F8](sub_246184988, v13, 0);
}

uint64_t sub_246184988()
{
  v1 = v0[55];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  (*(v4 + 16))(v2, v1 + v6, v3);

  return MEMORY[0x2822009F8](sub_246184A44, v5, 0);
}

uint64_t sub_246184A44()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[23];
  (*(v0[38] + 16))(v0[39], v0[40], v0[37]);
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);

  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_246184B58;

  return sub_246171854();
}

uint64_t sub_246184B58(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 456) = a1;

  return MEMORY[0x2822009F8](sub_246184C70, v2, 0);
}

uint64_t sub_246184C70()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  sub_24619F4BC();
  v6 = sub_24619EFDC();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = *MEMORY[0x277D00610];
  v8 = *(v3 + 104);
  v8(v2, v7, v5);
  v8(v4, v7, v5);
  sub_24619F49C();
  v13 = (*MEMORY[0x277D00568] + MEMORY[0x277D00568]);
  v9 = swift_task_alloc();
  v0[58] = v9;
  *v9 = v0;
  v9[1] = sub_246184E2C;
  v10 = v0[26];
  v11 = v0[13];

  return v13(v11, v10);
}

uint64_t sub_246184E2C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 88);

    v4 = sub_246185874;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 88);
    v4 = sub_246184F6C;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_246184F6C()
{
  v13 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = sub_24619F1DC();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = sub_246189514(*(v5 + 16), 0);
    v9 = sub_2461896CC(&v12, v8 + 4, v7, v6);
    sub_24616CAF0(v12);
    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = MEMORY[0x277D84F90];
LABEL_5:
  v0[59] = v8;
  v10 = v0[55];

  return MEMORY[0x2822009F8](sub_246185090, v10, 0);
}

uint64_t sub_246185090(uint64_t a1)
{
  v2 = v1[59];
  v3 = v1[49];
  v4 = v1[28];
  v5 = v1[29];
  v6 = v1[27];
  v7 = v1[16];
  v8 = v1[12];
  v13 = v1[11];
  sub_24619F5DC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  (*(*(v9 - 8) + 56))(v8, 0, 5, v9);
  sub_24619DA28(v8, v5);
  sub_24618AD14(v8, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  (*(v4 + 8))(v5, v6);
  v10 = *(v3 + 16);

  v11 = *(v2 + 16);

  sub_24619C0B4(v10, v11, 0, v7);

  return MEMORY[0x2822009F8](sub_2461851FC, v13, 0);
}

uint64_t sub_2461851FC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_2461852A4;

  return sub_24616468C();
}

uint64_t sub_2461852A4()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2461853B4, v1, 0);
}

uint64_t sub_2461853B4()
{
  v9 = *(v0 + 424);
  v1 = *(v0 + 408);
  v2 = *(v0 + 504);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = (*(v0 + 88) + *(v0 + 400));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v1(v3, v2, v4);
  sub_24619F6DC();
  v9(v3, v4);
  v6 = swift_task_alloc();
  *(v0 + 488) = v6;
  *v6 = v0;
  v6[1] = sub_2461854EC;
  v7 = *(v0 + 240);

  return sub_246185B60(v7);
}

uint64_t sub_2461854EC()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_246185940;
  }

  else
  {
    v4 = sub_246185618;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_246185618()
{
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);
  v8 = v0[55];
  (*(v1 + 8))(v0[43], v0[41]);

  return MEMORY[0x2822009F8](sub_246185708, v8, 0);
}

uint64_t sub_246185708()
{
  v1 = *(v0 + 88);
  *(*(v0 + 440) + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTriggered) = 1;
  return MEMORY[0x2822009F8](sub_24618573C, v1, 0);
}

uint64_t sub_24618573C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_246185874()
{
  v1 = v0[13];
  (*(v0[15] + 56))(v1, 1, 1, v0[14]);
  sub_24616CFC4(v1, &qword_27EE3F968, &qword_2461A1248);
  v2 = swift_task_alloc();
  v0[60] = v2;
  *v2 = v0;
  v2[1] = sub_2461852A4;

  return sub_24616468C();
}

uint64_t sub_246185940()
{
  v1 = *(v0 + 336);
  v15 = *(v0 + 344);
  v16 = *(v0 + 496);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v17 = *(v0 + 264);
  v6 = *(v0 + 240);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v9 = (*(v0 + 88) + *(v0 + 400));
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v15, v2);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_24619FAEC();

  swift_getErrorValue();
  v10 = sub_24619FC3C();
  MEMORY[0x24C19A830](v10);

  v11 = *MEMORY[0x277D007A0];
  v12 = sub_24619F7FC();
  (*(*(v12 - 8) + 104))(v17, v11, v12);
  sub_24619F77C();

  v13 = *(v0 + 440);
  (*(v0 + 424))(*(v0 + 264), *(v0 + 248));

  return MEMORY[0x2822009F8](sub_246185708, v13, 0);
}

uint64_t sub_246185B60(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_24619F43C();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F918, &qword_2461A0FE8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for ODISessionInternal.PendingFeedback(0);
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v5 = sub_24619F7FC();
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0);
  v2[32] = swift_task_alloc();
  v6 = sub_24619F3FC();
  v2[33] = v6;
  v2[34] = *(v6 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246185DBC, v1, 0);
}

uint64_t sub_246185DBC()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[19];
  v5 = v0[20];
  v6 = *(v3 + 16);
  v0[38] = v6;
  v0[39] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  sub_24619F34C();
  v7 = *(v5 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  v0[40] = v7;

  return MEMORY[0x2822009F8](sub_246185E58, v7, 0);
}

uint64_t sub_246185E58()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[33];
  v5 = v0[20];
  v6 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  v0[41] = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  v2(v3, v1 + v6, v4);

  return MEMORY[0x2822009F8](sub_246185F18, v5, 0);
}

uint64_t sub_246185F18()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = sub_24619F37C();
  v5 = *(v3 + 8);
  *(v0 + 336) = v5;
  *(v0 + 344) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (v4)
  {
    v6 = *(v0 + 320);
    v7 = *(v0 + 256);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
    (*(*(v8 - 8) + 56))(v7, 4, 5, v8);
    v9 = sub_246186544;
LABEL_3:

    return MEMORY[0x2822009F8](v9, v6, 0);
  }

  v10 = *(v0 + 160);
  sub_24619F36C();
  sub_24619F39C();
  v12 = v11;
  v38 = (v10 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
  sub_24616CB20(v10 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger, v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000037, 0x80000002461A7520);
  if (v12)
  {
    v13 = 0xE400000000000000;
    v14 = 543975790;
  }

  else
  {
    v14 = sub_24619FA2C();
    v13 = v15;
  }

  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v18 = *(v0 + 232);
  v35 = *(v0 + 216);
  v36 = *(v0 + 208);
  v34 = *(v0 + 200);
  v39 = *(v0 + 160);
  MEMORY[0x24C19A830](v14, v13);

  MEMORY[0x24C19A830](115, 0xE100000000000000);
  v33 = *MEMORY[0x277D00768];
  v19 = *(v17 + 104);
  v19(v16);
  sub_24619F6DC();

  v20 = *(v17 + 8);
  v20(v16, v18);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000037, 0x80000002461A7560);
  v21 = sub_24619FA2C();
  MEMORY[0x24C19A830](v21);

  MEMORY[0x24C19A830](115, 0xE100000000000000);
  (v19)(v16, v33, v18);
  sub_24619F6DC();

  v22 = v20;
  v20(v16, v18);
  v23 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal__pendingFeedback;
  swift_beginAccess();
  sub_24618BC30(v39 + v23, v34, &qword_27EE3F918, &qword_2461A0FE8);
  v24 = (*(v35 + 48))(v34, 1, v36);
  v25 = *(v0 + 200);
  if (v24 == 1)
  {
    (*(v0 + 336))(*(v0 + 296), *(v0 + 264));
    sub_24616CFC4(v25, &qword_27EE3F918, &qword_2461A0FE8);
  }

  else
  {
    v26 = *(v0 + 208);
    sub_24618BC98(*(v0 + 200), *(v0 + 224), type metadata accessor for ODISessionInternal.PendingFeedback);
    *(v0 + 392) = *(v26 + 20);
    if (sub_24619F37C())
    {
      v27 = *(v0 + 248);
      v28 = *(v0 + 232);
      v37 = *(v0 + 224);
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      (v19)(v27, *MEMORY[0x277D00798], v28);
      sub_24619F6DC();
      v22(v27, v28);
      if (*v37)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F960, &qword_2461A1230);
        sub_24619F9DC();
      }

      v6 = *(v0 + 320);
      v29 = *(v0 + 192);
      (*(*(v0 + 216) + 56))(v29, 1, 1, *(v0 + 208));
      swift_beginAccess();
      sub_24618ACA4(v29, v39 + v23);
      swift_endAccess();
      v9 = sub_246186B8C;
      goto LABEL_3;
    }

    v30 = *(v0 + 224);
    (*(v0 + 336))(*(v0 + 296), *(v0 + 264));
    sub_24618AD14(v30, type metadata accessor for ODISessionInternal.PendingFeedback);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_246186544()
{
  v1 = v0[42];
  v2 = v0[36];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[20];
  sub_24619DA28(v4, v2);
  sub_24618AD14(v4, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);
  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_246186604, v5, 0);
}

uint64_t sub_246186604(uint64_t a1)
{
  v2 = *(v1 + 160);
  sub_24619F36C();
  sub_24619F39C();
  v4 = v3;
  v30 = (v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger);
  sub_24616CB20(v2 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger, v1 + 16);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000037, 0x80000002461A7520);
  if (v4)
  {
    v5 = 0xE400000000000000;
    v6 = 543975790;
  }

  else
  {
    v6 = sub_24619FA2C();
    v5 = v7;
  }

  v9 = *(v1 + 240);
  v8 = *(v1 + 248);
  v10 = *(v1 + 232);
  v27 = *(v1 + 216);
  v28 = *(v1 + 208);
  v26 = *(v1 + 200);
  v31 = *(v1 + 160);
  MEMORY[0x24C19A830](v6, v5);

  MEMORY[0x24C19A830](115, 0xE100000000000000);
  v25 = *MEMORY[0x277D00768];
  v11 = *(v9 + 104);
  v11(v8);
  sub_24619F6DC();

  v12 = *(v9 + 8);
  v12(v8, v10);
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000037, 0x80000002461A7560);
  v13 = sub_24619FA2C();
  MEMORY[0x24C19A830](v13);

  MEMORY[0x24C19A830](115, 0xE100000000000000);
  (v11)(v8, v25, v10);
  sub_24619F6DC();

  v14 = v12;
  v12(v8, v10);
  v15 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal__pendingFeedback;
  swift_beginAccess();
  sub_24618BC30(v31 + v15, v26, &qword_27EE3F918, &qword_2461A0FE8);
  if ((*(v27 + 48))(v26, 1, v28) == 1)
  {
    v16 = *(v1 + 200);
    (*(v1 + 336))(*(v1 + 296), *(v1 + 264));
    sub_24616CFC4(v16, &qword_27EE3F918, &qword_2461A0FE8);
LABEL_13:

    v23 = *(v1 + 8);

    return v23();
  }

  v17 = *(v1 + 208);
  sub_24618BC98(*(v1 + 200), *(v1 + 224), type metadata accessor for ODISessionInternal.PendingFeedback);
  *(v1 + 392) = *(v17 + 20);
  if ((sub_24619F37C() & 1) == 0)
  {
    v22 = *(v1 + 224);
    (*(v1 + 336))(*(v1 + 296), *(v1 + 264));
    sub_24618AD14(v22, type metadata accessor for ODISessionInternal.PendingFeedback);
    goto LABEL_13;
  }

  v18 = *(v1 + 248);
  v19 = *(v1 + 232);
  v29 = *(v1 + 224);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  (v11)(v18, *MEMORY[0x277D00798], v19);
  sub_24619F6DC();
  v14(v18, v19);
  if (*v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F960, &qword_2461A1230);
    sub_24619F9DC();
  }

  v20 = *(v1 + 320);
  v21 = *(v1 + 192);
  (*(*(v1 + 216) + 56))(v21, 1, 1, *(v1 + 208));
  swift_beginAccess();
  sub_24618ACA4(v21, v31 + v15);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_246186B8C, v20, 0);
}

uint64_t sub_246186B8C()
{
  v1 = *(v0 + 160);
  (*(v0 + 304))(*(v0 + 288), *(v0 + 320) + *(v0 + 328), *(v0 + 264));

  return MEMORY[0x2822009F8](sub_246186C08, v1, 0);
}

uint64_t sub_246186C08()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = sub_24619F37C();
  v1(v2, v3);
  if (v4)
  {
    v5 = *(v0 + 320);
    v6 = *(v0 + 256);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
    (*(*(v7 - 8) + 56))(v6, 4, 5, v7);
    v8 = sub_246186D98;
  }

  else
  {
    (*(v0 + 304))(*(v0 + 280), *(v0 + 224) + *(v0 + 392), *(v0 + 264));
    sub_24619F34C();
    v5 = *(v0 + 320);
    v10 = *(v0 + 176);
    v9 = *(v0 + 184);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = v12 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId;
    *(v0 + 352) = *(v12 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId);
    *(v0 + 360) = *(v13 + 8);
    *(v0 + 368) = *(v12 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
    (*(v10 + 104))(v9, *MEMORY[0x277D006A0], v11);

    v8 = sub_246186EFC;
  }

  return MEMORY[0x2822009F8](v8, v5, 0);
}

uint64_t sub_246186D98()
{
  v1 = v0[32];
  v2 = v0[20];
  sub_24619DA28(v1, v0[35]);
  sub_24618AD14(v1, type metadata accessor for ODISessionStateMachine.ApplyTimingCase);

  return MEMORY[0x2822009F8](sub_246186E34, v2, 0);
}

uint64_t sub_246186E34()
{
  v1 = v0[40];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v5 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId;
  v0[44] = *(v5 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnAtorSessionId);
  v0[45] = *(v6 + 8);
  v0[46] = *(v5 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__odnator);
  (*(v3 + 104))(v2, *MEMORY[0x277D006A0], v4);

  return MEMORY[0x2822009F8](sub_246186EFC, v1, 0);
}

uint64_t sub_246186EFC()
{
  v1 = v0[40];
  v2 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[47] = v3;
  v10 = (*MEMORY[0x277D00560] + MEMORY[0x277D00560]);

  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_246186FF0;
  v5 = v0[45];
  v6 = v0[44];
  v7 = v0[35];
  v8 = v0[23];

  return v10(v7, v8, v3, v6, v5);
}

uint64_t sub_246186FF0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_24618719C, v4, 0);
}

uint64_t sub_24618719C()
{
  v1 = v0[42];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[28];
  v1(v0[35], v3);
  v1(v2, v3);
  sub_24618AD14(v4, type metadata accessor for ODISessionInternal.PendingFeedback);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2461872B0()
{
  v1[14] = v0;
  v2 = sub_24619F2CC();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = sub_24619F1AC();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = sub_24619F7FC();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  sub_24619EF4C();
  v1[24] = swift_task_alloc();
  v5 = sub_24619EF5C();
  v1[25] = v5;
  v1[26] = *(v5 - 8);
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461874B0, v0, 0);
}

uint64_t sub_2461874B0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 112);
  sub_24619F56C();
  sub_24619EF6C();
  v5 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  *(v0 + 224) = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  __swift_project_boxed_opaque_existential_1((v4 + v5), *(v4 + v5 + 24));
  sub_24619FAEC();

  v6 = sub_24619F8BC();
  MEMORY[0x24C19A830](v6);

  *(v0 + 376) = *MEMORY[0x277D00760];
  v7 = *(v3 + 104);
  *(v0 + 232) = v7;
  *(v0 + 240) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v1);
  sub_24619F6DC();

  v8 = *(v3 + 8);
  *(v0 + 248) = v8;
  *(v0 + 256) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v2);
  v9 = swift_task_alloc();
  *(v0 + 264) = v9;
  *v9 = v0;
  v9[1] = sub_246187684;

  return sub_246171854();
}

uint64_t sub_246187684(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_24618779C, v2, 0);
}

uint64_t sub_24618779C()
{
  v1 = *(v0 + 272);
  v2 = *(v1 + 16);
  *(v0 + 280) = v2;
  v16 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 376);
  v5 = *(v0 + 224);
  v6 = *(v0 + 112);
  if (v2)
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v6 + v5), *(v6 + v5 + 24));
    sub_24619FAEC();

    v10 = MEMORY[0x24C19A8B0](v1, v9);
    MEMORY[0x24C19A830](v10);

    v3(v7, v4, v8);
    sub_24619F6DC();

    v16(v7, v8);
    v11 = *(v6 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
    *(v0 + 288) = v11;

    return MEMORY[0x2822009F8](sub_246187A38, v11, 0);
  }

  else
  {
    v12 = *(v0 + 184);
    v13 = *(v0 + 168);

    __swift_project_boxed_opaque_existential_1((v6 + v5), *(v6 + v5 + 24));
    v3(v12, v4, v13);
    sub_24619F6DC();
    v16(v12, v13);
    sub_24619EF3C();
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_246187A38()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[19];
  v4 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_armandDataInitialized;
  v0[37] = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_armandDataInitialized;
  v5 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6 = swift_beginAccess();
  v9 = 0;
  v10 = (v3 + 8);
  while (1)
  {
    if (v9 >= *(v0[34] + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v6, v7, v8);
    }

    (*(v3 + 16))(v0[20], v5 + *(v3 + 72) * v9, v0[18]);
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v11 = *(v1 + v4);
    v12 = v0[20];
    if (!*(v11 + 16))
    {
      v16 = v0[14];
      (*v10)(v0[20], v0[18]);
      v17 = sub_246187C68;
      goto LABEL_11;
    }

    v13 = sub_246165BBC(v12);
    if ((v14 & 1) == 0)
    {
      v18 = v0[14];
      v19 = v0[20];
      v20 = v0[18];

      (*v10)(v19, v20);
      v6 = sub_24618BD14;
      v7 = v18;
      goto LABEL_14;
    }

    v15 = *(*(v11 + 56) + v13);
    (*v10)(v0[20], v0[18]);

    if ((v15 & 1) == 0)
    {
      break;
    }

    if (++v9 == v0[35])
    {
      v16 = v0[14];

      v17 = sub_24618BD04;
LABEL_11:
      v6 = v17;
      v7 = v16;
      goto LABEL_14;
    }
  }

  v7 = v0[14];
  v6 = sub_24618BD14;
LABEL_14:
  v8 = 0;

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_246187C68()
{
  v1 = sub_2461714EC()[9];

  v0[5] = type metadata accessor for ODIBindingsFiller(0);
  v2 = sub_24618AC5C(&qword_281391CA8, type metadata accessor for ODIBindingsFiller, &unk_2461A0CA8);
  v0[2] = v1;
  v0[6] = v2;
  v7 = (*MEMORY[0x277D00628] + MEMORY[0x277D00628]);
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_246187DB0;
  v4 = v0[34];
  v5 = v0[14];

  return v7(v4, &unk_2461A1220, v5, v0 + 2);
}

uint64_t sub_246187DB0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  *(v2 + 380) = a1;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  return MEMORY[0x2822009F8](sub_246187ED0, v3, 0);
}

uint64_t sub_246187ED0()
{
  v1 = *(v0 + 112);
  sub_24619D774(*(v0 + 272), *(v0 + 380));

  return MEMORY[0x2822009F8](sub_246187F58, v1, 0);
}

uint64_t sub_246187F58()
{
  v1 = v0[36];
  v2 = (v0[14] + v0[28]);
  v3 = v2[3];
  v0[39] = v3;
  v0[40] = v2[4];
  v0[41] = __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_24619FAEC();
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  MEMORY[0x24C19A830](0xD000000000000031, 0x80000002461A7480);

  return MEMORY[0x2822009F8](sub_246188028, v1, 0);
}

uint64_t sub_246188028()
{
  v1 = v0[14];
  v0[42] = *(v0[36] + v0[37]);

  return MEMORY[0x2822009F8](sub_2461880A0, v1, 0);
}

uint64_t sub_2461880A0()
{
  v13 = *(v0 + 248);
  v1 = *(v0 + 232);
  v2 = *(v0 + 376);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v14 = *(v0 + 112);
  v5 = (v14 + *(v0 + 224));
  sub_24618AC5C(&qword_281391FA8, MEMORY[0x277D005E0], MEMORY[0x277D005E8]);
  v6 = sub_24619F83C();
  v8 = v7;

  MEMORY[0x24C19A830](v6, v8);

  v1(v3, v2, v4);
  sub_24619F6DC();

  v13(v3, v4);
  v9 = v5[3];
  *(v0 + 344) = v9;
  *(v0 + 352) = v5[4];
  *(v0 + 360) = __swift_project_boxed_opaque_existential_1(v5, v9);
  sub_24619FAEC();

  *(v0 + 96) = 0xD000000000000014;
  *(v0 + 104) = 0x80000002461A74C0;
  *(v0 + 368) = *(v14 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__armandDataFiller);
  sub_24619F27C();
  sub_24618AC5C(&qword_281391F88, MEMORY[0x277D00630], MEMORY[0x277D00638]);
  v11 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_2461882D0, v11, v10);
}

uint64_t sub_2461882D0()
{
  v1 = *(v0 + 112);
  sub_24619F23C();

  return MEMORY[0x2822009F8](sub_246188340, v1, 0);
}

uint64_t sub_246188340()
{
  v13 = *(v0 + 248);
  v1 = *(v0 + 232);
  v2 = *(v0 + 376);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  sub_24618AC5C(&qword_281391F78, MEMORY[0x277D00690], MEMORY[0x277D00698]);
  v8 = sub_24619FBBC();
  v10 = v9;
  (*(v6 + 8))(v5, v7);
  MEMORY[0x24C19A830](v8, v10);

  v1(v3, v2, v4);
  sub_24619F72C();

  v13(v3, v4);
  sub_24619EF3C();
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_246188518(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_246188534, a2, 0);
}

uint64_t sub_246188534()
{
  *(v0 + 40) = sub_2461714EC();

  return MEMORY[0x2822009F8](sub_2461885A0, 0, 0);
}

uint64_t sub_2461885A0()
{
  v1 = *(*(v0 + 40) + 72);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2461885C4, v1, 0);
}

uint64_t sub_2461885C4()
{
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtC7CoreODI17ODIBindingsFiller__locationHelper);
  if (v2)
  {
    v0[8] = v2;

    return MEMORY[0x2822009F8](sub_2461888C4, 0, 0);
  }

  else
  {
    v3 = sub_24618AC5C(&qword_281391CA0, type metadata accessor for ODIBindingsFiller, &unk_2461A0CE8);
    v4 = swift_task_alloc();
    v0[7] = v4;
    v5 = sub_24619F48C();
    *v4 = v0;
    v4[1] = sub_246188744;
    v6 = v0[6];

    return MEMORY[0x2822007B8](v0 + 2, v1, v3, 0xD000000000000010, 0x80000002461A23D0, sub_24616B3C4, v6, v5);
  }
}

uint64_t sub_246188744()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_246188854, v1, 0);
}

uint64_t sub_246188854()
{
  *(v0 + 64) = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_2461888C4, 0, 0);
}

uint64_t sub_2461888C4()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = sub_24619F48C();
  v4 = MEMORY[0x277D006E0];
  v2[3] = v3;
  v2[4] = v4;
  *v2 = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_24618893C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_24619F9CC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_2461703A8(0, 0, v3, &unk_2461A1090, v5);
}

uint64_t sub_246188A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_24619F7FC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_24619F3FC();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246188B60, 0, 0);
}

uint64_t sub_246188B60()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_sessionState);
  *(v0 + 96) = v1;
  return MEMORY[0x2822009F8](sub_246188B8C, v1, 0);
}

uint64_t sub_246188B8C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  (*(v4 + 16))(v1, v2 + v5, v3);

  return MEMORY[0x2822009F8](sub_246188C40, 0, 0);
}

uint64_t sub_246188C40()
{
  if ((sub_24619F3BC() & 1) != 0 && (sub_24619F3CC() & 1) != 0 && (sub_24619F35C() & 1) == 0)
  {
    v2 = v0[7];
    v1 = v0[8];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1((v0[5] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *(v0[5] + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24));
    (*(v2 + 104))(v1, *MEMORY[0x277D00750], v3);
    sub_24619F6FC();
    (*(v2 + 8))(v1, v3);
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v4 = v0[1];

  return v4();
}

uint64_t ODISessionInternal.deinit()
{
  v15 = sub_24619F7FC();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24619EFBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger;
  sub_24616CB20(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger, v18);
  v12[1] = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v5 + 104))(v7, *MEMORY[0x277D004E0], v4);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_24619FAEC();

  v16 = 0xD00000000000001ELL;
  v17 = 0x80000002461A7190;
  v14 = OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID;
  v8 = sub_24619F8BC();
  MEMORY[0x24C19A830](v8);

  sub_24619F78C();

  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v9 = v13;
  sub_24616CB20(v0 + v13, v18);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v10 = v15;
  (*(v1 + 104))(v3, *MEMORY[0x277D00750], v15);
  sub_24619F6CC();
  (*(v1 + 8))(v3, v10);
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_24616CFC4(v0 + OBJC_IVAR____TtC7CoreODI18ODISessionInternal__pendingFeedback, &qword_27EE3F918, &qword_2461A0FE8);

  __swift_destroy_boxed_opaque_existential_1((v0 + v9));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ODISessionInternal.__deallocating_deinit()
{
  ODISessionInternal.deinit();

  return MEMORY[0x282200960](v0);
}

void ODISessionInternal.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void ODISessionInternal.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_246189354(uint64_t a1)
{
  v2 = v1;
  v3 = sub_246165AE8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_246169E84();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_24619F46C();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_2461695CC(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_24618941C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_246165240;

  return v6(a1);
}

void *sub_246189514(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8A8, &unk_2461A1260);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_246189598(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_246189640(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x24C19B290](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x24C19B290](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2461896CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_246189824()
{
  v0 = sub_24619F8BC();
  v2 = v1;
  if (v0 == sub_24619F8BC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24619FBFC();
  }

  return v5 & 1;
}

unint64_t sub_2461898B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F980, &qword_2461A1270);
    v3 = sub_24619FB9C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24616595C(v5, v6);
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

unint64_t sub_2461899D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9E8, &qword_2461A1378);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F890, &qword_2461A1380);
    v7 = sub_24619FB9C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24618BC30(v9, v5, &qword_27EE3F9E8, &qword_2461A1378);
      result = sub_2461659D4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ODIFieldsKey(0);
      result = sub_24618BC98(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ODIFieldsKey);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_246189BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9E0, &unk_2461A1368);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F858, &unk_2461A0D90);
    v7 = sub_24619FB9C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24618BC30(v9, v5, &qword_27EE3F9E0, &unk_2461A1368);
      result = sub_246165AE8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24619F46C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_246189DA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9D8, &unk_2461A1358);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F898, &qword_2461A0DE0);
    v7 = sub_24619FB9C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24618BC30(v9, v5, &qword_27EE3F9D8, &unk_2461A1358);
      result = sub_246165AE8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24619F46C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_246189F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9F0, &qword_2461A1388);
    v3 = sub_24619FB9C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24616595C(v5, v6);
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

unint64_t sub_24618A0A0()
{
  result = qword_281391880;
  if (!qword_281391880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE3F938, &qword_2461A1008);
    sub_24618A12C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391880);
  }

  return result;
}

unint64_t sub_24618A12C()
{
  result = qword_281391878;
  if (!qword_281391878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE3F940, &qword_2461A1010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391878);
  }

  return result;
}

uint64_t sub_24618A1A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_2461736C8(a1, v4, v5, v6);
}

uint64_t sub_24618A25C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_2461742AC(a1, v4, v5, v6);
}

uint64_t sub_24618A310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_246174728(a1, v4, v5, v6);
}

uint64_t sub_24618A3C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_246177760(a1, v4, v5, v6);
}

uint64_t sub_24618A478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24616D024;

  return sub_246177A34(a1, v4, v5, v7, v6);
}

uint64_t sub_24618A560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24616D024;

  return sub_24617862C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24618A634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24616D024;

  return sub_24617889C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24618A6FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_246188A44(a1, v4, v5, v6);
}

void sub_24618A7B8(uint64_t a1)
{
  sub_24618AA58(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24618AA58(uint64_t a1)
{
  if (!qword_281391C58)
  {
    type metadata accessor for ODISessionInternal.PendingFeedback(255);
    v1 = sub_24619FA6C();
    if (!v2)
    {
      atomic_store(v1, &qword_281391C58);
    }
  }
}

void sub_24618AAD8(uint64_t a1)
{
  sub_24618AB5C(319);
  if (v1 <= 0x3F)
  {
    sub_24619F3FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24618AB5C(uint64_t a1)
{
  if (!qword_281391868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE3F950, &qword_2461A1210);
    v1 = sub_24619FA6C();
    if (!v2)
    {
      atomic_store(v1, &qword_281391868);
    }
  }
}

uint64_t sub_24618ABC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24616D024;

  return sub_246188518(a1, v1);
}

uint64_t sub_24618AC5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24618ACA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F918, &qword_2461A0FE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24618AD14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24618AD74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_246183E30(a1, v4, v5, v6);
}

uint64_t sub_24618AE28(uint64_t a1)
{
  v4 = *(sub_24619F3FC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_246161518;

  return sub_2461839CC(a1, v6, v1 + v5);
}

unint64_t sub_24618AF08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8E8, &qword_2461A0ED8);
    v3 = sub_24619FB9C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24618BC30(v4, &v11, &qword_27EE3F8E0, &qword_2461A0EC0);
      v5 = v11;
      result = sub_246165C90(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_246158944(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_24618B034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9A0, &qword_2461A12A0);
    v3 = sub_24619FB9C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24616595C(v5, v6);
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

unint64_t sub_24618B148()
{
  result = qword_281391888;
  if (!qword_281391888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE3F998, &qword_2461A1298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391888);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24618B1E8()
{
  result = qword_281391840;
  if (!qword_281391840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281391840);
  }

  return result;
}

unint64_t sub_24618B234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8A0, &qword_2461A0DE8);
    v3 = sub_24619FB9C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24616595C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_24618B338()
{
  sub_24619F0FC();
  sub_24619F3FC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_2461813EC(v1, v2, v3);
}

uint64_t sub_24618B40C(uint64_t a1)
{
  v4 = *(sub_24619F4DC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24616D024;

  return sub_246180888(a1, v6, v1 + v5, v7);
}

unint64_t sub_24618B528()
{
  result = qword_27EE3F9C0;
  if (!qword_27EE3F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3F9C0);
  }

  return result;
}

uint64_t sub_24618B57C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24616D024;

  return sub_24617E234();
}

unint64_t sub_24618B618()
{
  result = qword_281391820;
  if (!qword_281391820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391820);
  }

  return result;
}

uint64_t sub_24618B66C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24616D024;

  return sub_24617AAD4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24618B740(uint64_t a1)
{
  v4 = *(sub_24619F22C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24616D024;

  return sub_246171F88(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_24618B878()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_246161518;

  return sub_246161488();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_26Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24618B9CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24619EF5C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_24619F4DC() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_24616D024;

  return sub_246180CC8(a1, v11, v12, v1 + v6, v10, v1 + v9, v14, v15);
}

uint64_t sub_24618BB78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24616D024;

  return sub_24618941C(a1, v4);
}

uint64_t sub_24618BC30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24618BC98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24618BD20(void *a1)
{
  v3 = sub_24619F7FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 attributes];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  type metadata accessor for ODIAttributeKey(0);
  v10 = v9;
  v11 = sub_24618C5DC();
  v12 = sub_24619F82C();

  sub_24618C634(v12);

  v13 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v14 = sub_24619F80C();

  v15 = [v13 initWithDictionary:v14 copyItems:1];

  *&v82[0] = 0;
  sub_24619F81C();

  v16 = *&v82[0];
  if (!*&v82[0])
  {
    return 0;
  }

  if (!*(*&v82[0] + 16))
  {

    return 0;
  }

  v65 = v11;
  v66 = v10;
  v69 = a1;
  v70 = v6;
  v73 = v4;
  v71 = v3;
  v17 = sub_24618AF08(MEMORY[0x277D84F90]);
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  while (1)
  {
    v23 = v22;
    if (!v20)
    {
      if (v21 <= v22 + 1)
      {
        v25 = v22 + 1;
      }

      else
      {
        v25 = v21;
      }

      v22 = v25 - 1;
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v21)
        {
          v20 = 0;
          v81 = 0;
          v79 = 0u;
          v80 = 0u;
          goto LABEL_17;
        }

        v20 = *(v16 + 64 + 8 * v24);
        ++v23;
        if (v20)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = sub_24619FC1C();
      __break(1u);
      return result;
    }

    v24 = v22;
LABEL_16:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = v26 | (v24 << 6);
    v28 = *(*(v16 + 48) + 8 * v27);
    sub_24618C8FC(*(v16 + 56) + 32 * v27, v76);
    *&v79 = v28;
    sub_24618C958(v76, (&v79 + 8));
    v29 = v28;
    v22 = v24;
LABEL_17:
    v82[0] = v79;
    v82[1] = v80;
    v83 = v81;
    v30 = v79;
    if (!v79)
    {
      break;
    }

    sub_24618C958((v82 + 8), v78);
    sub_24618C8FC(v78, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F9F8, &qword_2461A1398);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(&v79);
      sub_24618C8FC(v78, v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8D8, &qword_2461A0E78);
      swift_dynamicCast();
      sub_24616D05C(&v79, v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v17;
      v32 = sub_246165C90(v30);
      v34 = v17;
      v35 = *(v17 + 16);
      v36 = (v33 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_38;
      }

      v39 = v33;
      if (*(v34 + 24) >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = v32;
          sub_24616A3A0();
          v32 = v45;
        }
      }

      else
      {
        sub_246168E9C(v38, isUniquelyReferenced_nonNull_native);
        v32 = sub_246165C90(v30);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_40;
        }
      }

      v41 = v75;
      if (v39)
      {
        v42 = (v75[7] + 40 * v32);
        __swift_destroy_boxed_opaque_existential_1(v42);
        sub_24616D05C(v76, v42);

        __swift_destroy_boxed_opaque_existential_1(v78);
        v17 = v41;
      }

      else
      {
        v75[(v32 >> 6) + 8] |= 1 << v32;
        *(v41[6] + 8 * v32) = v30;
        sub_24616D05C(v76, v41[7] + 40 * v32);
        __swift_destroy_boxed_opaque_existential_1(v78);
        v43 = v41[2];
        v37 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v37)
        {
          goto LABEL_39;
        }

        v17 = v41;
        v41[2] = v44;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v78);
    }
  }

  v46 = v69;
  v74 = v17;
  v47 = v69[3];
  v68 = v69[4];
  v67 = __swift_project_boxed_opaque_existential_1(v69, v47);
  *&v82[0] = 0;
  *(&v82[0] + 1) = 0xE000000000000000;
  sub_24619FAEC();

  *&v82[0] = 0xD00000000000001ALL;
  *(&v82[0] + 1) = 0x80000002461A86A0;
  *&v79 = *(v74 + 16);
  v48 = sub_24619FBBC();
  MEMORY[0x24C19A830](v48);

  v72 = *MEMORY[0x277D00770];
  v49 = v73;
  v50 = *(v73 + 104);
  v51 = v70;
  v52 = v71;
  v50(v70);
  sub_24619F72C();

  v53 = *(v49 + 8);
  v53(v51, v52);
  v68 = v46[3];
  v73 = v46[4];
  v67 = __swift_project_boxed_opaque_existential_1(v46, v68);
  *&v82[0] = 0;
  *(&v82[0] + 1) = 0xE000000000000000;
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000021, 0x80000002461A86C0);
  *&v79 = *(v74 + 16);
  v54 = sub_24619FBBC();
  MEMORY[0x24C19A830](v54);

  MEMORY[0x24C19A830](0xD000000000000016, 0x80000002461A86F0);
  v64 = v50;
  (v50)(v51, v72, v52);
  v55 = v74;
  sub_24619F6CC();

  v68 = v53;
  v73 = v49 + 8;
  v53(v51, v52);
  if (*(v55 + 16) == *(v16 + 16))
  {
  }

  else
  {
    sub_24615D25C(v16);
    v58 = v57;

    sub_24616B93C(v59, v58);

    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    *&v82[0] = 0;
    *(&v82[0] + 1) = 0xE000000000000000;
    sub_24619FAEC();

    *&v82[0] = 0xD000000000000013;
    *(&v82[0] + 1) = 0x80000002461A8710;
    v60 = sub_24619FA4C();
    v62 = v61;

    MEMORY[0x24C19A830](v60, v62);

    (v64)(v51, v72, v52);
    sub_24619F6FC();
    v55 = v74;

    v68(v51, v52);
  }

  return v55;
}

unint64_t sub_24618C5DC()
{
  result = qword_281391860;
  if (!qword_281391860)
  {
    type metadata accessor for ODIAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281391860);
  }

  return result;
}

uint64_t sub_24618C634(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA00, &unk_2461A13A0);
    v2 = sub_24619FB9C();
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
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_24618C8FC(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for ODIAttributeKey(0);
    v15 = v14;
    swift_dynamicCast();
    sub_24618C958((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_24618C958(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_24618C958(v30, v31);
    result = sub_24619FAAC();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_24618C958(v31, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_24618C8FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_24618C958(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24618C968()
{
  v235 = sub_24619F67C();
  v238 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v230 = &v196 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_24619F28C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v196 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA08, &qword_2461A1430);
  v5 = swift_allocObject();
  v257 = v5;
  *(v5 + 16) = xmmword_2461A13B0;
  v237 = 0xD000000000000011;
  *(v5 + 32) = 0xD000000000000011;
  v203 = v5 + 32;
  v6 = MEMORY[0x277D84F90];
  *(v5 + 40) = 0x80000002461A2960;
  *(v5 + 48) = v6;
  v220 = 0xD000000000000016;
  *(v5 + 56) = 0xD000000000000016;
  *(v5 + 64) = 0x80000002461A8730;
  v253 = 0xD000000000000019;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000019;
  *(v5 + 88) = 0x80000002461A8750;
  *(v5 + 96) = v6;
  v219 = 0xD00000000000001ELL;
  *(v5 + 104) = 0xD00000000000001ELL;
  *(v5 + 112) = 0x80000002461A8770;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F8C8, &qword_2461A0E58);
  v7 = *(sub_24619F1AC() - 8);
  v8 = *(v7 + 72);
  v249 = *(v7 + 80);
  v255 = (v249 + 32) & ~v249;
  v252 = 2 * v8;
  v222 = 12 * v8;
  v9 = swift_allocObject();
  v245 = xmmword_2461A0FB0;
  v243 = v9;
  *(v9 + 16) = xmmword_2461A0FB0;
  v11 = *(v2 + 104);
  v236 = *MEMORY[0x277D00648];
  v10 = v236;
  (v11)(v4, v236, v1);
  sub_24619F15C();
  (v11)(v4, v10, v1);
  sub_24619F15C();
  v227 = *MEMORY[0x277D00640];
  v12 = v227;
  (v11)(v4, v227, v1);
  v228 = "com.apple.amp.all.sp.paidBuyV2";
  v231 = 0xD000000000000010;
  sub_24619F15C();
  (v11)(v4, v12, v1);
  v251 = 3 * v8;
  sub_24619F15C();
  v232 = *MEMORY[0x277D00708];
  v13 = *(v238 + 104);
  v238 += 104;
  v233 = v13;
  (v13)(v230);
  v229 = *MEMORY[0x277D00670];
  v11(v4);
  v248 = 4 * v8;
  sub_24619F16C();
  v247 = 5 * v8;
  v14 = *MEMORY[0x277D00660];
  (v11)(v4, v14, v1);
  sub_24619F15C();
  v244 = 6 * v8;
  v226 = v14;
  (v11)(v4, v14, v1);
  v239 = "parsedFamilyName";
  sub_24619F15C();
  v246 = 7 * v8;
  v240 = 8 * v8;
  (v11)(v4, v14, v1);
  v250 = "deviceCountryCode";
  sub_24619F15C();
  v15 = v236;
  (v11)(v4, v236, v1);
  sub_24619F15C();
  v234 = 9 * v8;
  (v11)(v4, v15, v1);
  sub_24619F15C();
  v224 = 2 * v247;
  (v11)(v4, v15, v1);
  sub_24619F15C();
  v254 = v8;
  v223 = 11 * v8;
  LODWORD(v242) = *MEMORY[0x277D00658];
  v11(v4);
  sub_24619F15C();
  v216 = 0xD000000000000015;
  v16 = v257;
  v257[15] = v243;
  v16[16] = 0xD000000000000015;
  v16[17] = 0x80000002461A87F0;
  v17 = swift_allocObject();
  *(v17 + 16) = v245;
  (v11)(v4, v15, v1);
  sub_24619F15C();
  (v11)(v4, v15, v1);
  sub_24619F15C();
  v18 = v227;
  (v11)(v4, v227, v1);
  sub_24619F15C();
  (v11)(v4, v18, v1);
  sub_24619F15C();
  v233(v230, v232, v235);
  v19 = v229;
  (v11)(v4, v229, v1);
  sub_24619F16C();
  v20 = v226;
  (v11)(v4, v226, v1);
  sub_24619F15C();
  (v11)(v4, v20, v1);
  sub_24619F15C();
  (v11)(v4, v20, v1);
  sub_24619F15C();
  (v11)(v4, v15, v1);
  sub_24619F15C();
  (v11)(v4, v15, v1);
  sub_24619F15C();
  (v11)(v4, v15, v1);
  sub_24619F15C();
  (v11)(v4, v242, v1);
  sub_24619F15C();
  v21 = v257;
  v22 = v219;
  v257[18] = v17;
  v21[19] = v22;
  v21[20] = 0x80000002461A8810;
  v21[21] = MEMORY[0x277D84F90];
  v207 = 0xD00000000000001ALL;
  v21[22] = 0xD00000000000001ALL;
  v21[23] = 0x80000002461A8830;
  v23 = swift_allocObject();
  v221 = xmmword_2461A13C0;
  *(v23 + 16) = xmmword_2461A13C0;
  (v11)(v4, v15, v1);
  sub_24619F15C();
  v24 = v232;
  v233(v230, v232, v235);
  (v11)(v4, v19, v1);
  sub_24619F16C();
  v242 = "com.apple.apc.provision.bw";
  v241 = *MEMORY[0x277D00650];
  v25 = v241;
  (v11)(v4, v241, v1);
  *&v245 = 0xD000000000000018;
  sub_24619F15C();
  v243 = "currentLocation.latitude";
  (v11)(v4, v25, v1);
  sub_24619F15C();
  v26 = v226;
  (v11)(v4, v226, v1);
  sub_24619F15C();
  (v11)(v4, v26, v1);
  sub_24619F15C();
  (v11)(v4, v26, v1);
  sub_24619F15C();
  (v11)(v4, v26, v1);
  sub_24619F15C();
  v217 = 0xD00000000000001CLL;
  v27 = v257;
  v257[24] = v23;
  v27[25] = 0xD00000000000001CLL;
  v27[26] = 0x80000002461A8890;
  v28 = swift_allocObject();
  *(v28 + 16) = v221;
  (v11)(v4, v236, v1);
  sub_24619F15C();
  v233(v230, v24, v235);
  (v11)(v4, v229, v1);
  sub_24619F16C();
  v29 = v241;
  (v11)(v4, v241, v1);
  sub_24619F15C();
  (v11)(v4, v29, v1);
  sub_24619F15C();
  (v11)(v4, v26, v1);
  sub_24619F15C();
  (v11)(v4, v26, v1);
  sub_24619F15C();
  (v11)(v4, v26, v1);
  sub_24619F15C();
  (v11)(v4, v26, v1);
  sub_24619F15C();
  v30 = v257;
  v31 = v217;
  v257[27] = v28;
  v30[28] = v31;
  v30[29] = 0x80000002461A88B0;
  v32 = swift_allocObject();
  v225 = xmmword_2461A13D0;
  v218 = v32;
  *(v32 + 16) = xmmword_2461A13D0;
  (v11)(v4, v236, v1);
  sub_24619F15C();
  v33 = v230;
  v34 = v235;
  v233(v230, v232, v235);
  (v11)(v4, v229, v1);
  v35 = v33;
  sub_24619F16C();
  v36 = v241;
  (v11)(v4, v241, v1);
  sub_24619F15C();
  (v11)(v4, v36, v1);
  sub_24619F15C();
  v37 = v26;
  (v11)(v4, v26, v1);
  sub_24619F15C();
  (v11)(v4, v26, v1);
  sub_24619F15C();
  (v11)(v4, v26, v1);
  sub_24619F15C();
  (v11)(v4, v26, v1);
  sub_24619F15C();
  v38 = v233;
  v233(v35, *MEMORY[0x277D00700], v34);
  (v11)(v4, v37, v1);
  sub_24619F16C();
  *&v204 = 0xD000000000000020;
  v39 = v257;
  v257[30] = v218;
  v39[31] = 0xD000000000000020;
  v39[32] = 0x80000002461A88F0;
  v39[33] = MEMORY[0x277D84F90];
  v218 = 0xD00000000000001DLL;
  v39[34] = 0xD00000000000001DLL;
  v39[35] = 0x80000002461A8920;
  v40 = swift_allocObject();
  *(v40 + 16) = v221;
  (v11)(v4, v236, v1);
  sub_24619F15C();
  v38(v35, v232, v235);
  (v11)(v4, v229, v1);
  sub_24619F16C();
  v41 = v241;
  (v11)(v4, v241, v1);
  sub_24619F15C();
  (v11)(v4, v41, v1);
  sub_24619F15C();
  v42 = v226;
  (v11)(v4, v226, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  v43 = v257;
  v44 = v219;
  v257[36] = v40;
  v43[37] = v44;
  v43[38] = 0x80000002461A8940;
  v45 = swift_allocObject();
  *(v45 + 16) = v221;
  (v11)(v4, v236, v1);
  sub_24619F15C();
  v233(v35, v232, v235);
  (v11)(v4, v229, v1);
  sub_24619F16C();
  v46 = v241;
  (v11)(v4, v241, v1);
  sub_24619F15C();
  (v11)(v4, v46, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  v215 = 0xD00000000000001BLL;
  v47 = v257;
  v257[39] = v45;
  v47[40] = 0xD00000000000001BLL;
  v47[41] = 0x80000002461A8960;
  v47[42] = MEMORY[0x277D84F90];
  v47[43] = v218;
  v47[44] = 0x80000002461A8980;
  v48 = swift_allocObject();
  *(v48 + 16) = v221;
  (v11)(v4, v236, v1);
  sub_24619F15C();
  v233(v35, v232, v235);
  (v11)(v4, v229, v1);
  sub_24619F16C();
  v49 = v241;
  (v11)(v4, v241, v1);
  sub_24619F15C();
  (v11)(v4, v49, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  v50 = v257;
  v257[45] = v48;
  v50[46] = 0xD000000000000021;
  v50[47] = 0x80000002461A89A0;
  v50[48] = MEMORY[0x277D84F90];
  v50[49] = v215;
  v50[50] = 0x80000002461A89D0;
  v51 = swift_allocObject();
  *(v51 + 16) = v221;
  (v11)(v4, v236, v1);
  sub_24619F15C();
  v233(v230, v232, v235);
  v52 = v229;
  (v11)(v4, v229, v1);
  sub_24619F16C();
  v53 = v241;
  (v11)(v4, v241, v1);
  sub_24619F15C();
  (v11)(v4, v53, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  v54 = v257;
  v257[51] = v51;
  v54[52] = 0xD00000000000001FLL;
  v54[53] = 0x80000002461A89F0;
  v55 = swift_allocObject();
  *(v55 + 16) = v221;
  (v11)(v4, v236, v1);
  sub_24619F15C();
  v233(v230, v232, v235);
  (v11)(v4, v52, v1);
  sub_24619F16C();
  v56 = v241;
  (v11)(v4, v241, v1);
  sub_24619F15C();
  (v11)(v4, v56, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  (v11)(v4, v42, v1);
  sub_24619F15C();
  v57 = v257;
  v58 = v220;
  v257[54] = v55;
  v57[55] = v58;
  v57[56] = 0x80000002461A8A10;
  *&v208 = swift_allocObject();
  *(v208 + 16) = xmmword_2461A13E0;
  v59 = v236;
  (v11)(v4, v236, v1);
  sub_24619F15C();
  (v11)(v4, v59, v1);
  v218 = 0xD000000000000012;
  sub_24619F15C();
  (v11)(v4, v59, v1);
  sub_24619F15C();
  (v11)(v4, v59, v1);
  sub_24619F15C();
  (v11)(v4, v59, v1);
  sub_24619F15C();
  (v11)(v4, v59, v1);
  sub_24619F15C();
  (v11)(v4, v59, v1);
  sub_24619F15C();
  LODWORD(v209) = *MEMORY[0x277D00678];
  v60 = v209;
  (v11)(v4, v209, v1);
  sub_24619F15C();
  (v11)(v4, v60, v1);
  *&v221 = 0xD000000000000017;
  sub_24619F15C();
  (v11)(v4, v59, v1);
  sub_24619F15C();
  (v11)(v4, v59, v1);
  sub_24619F15C();
  (v11)(v4, v59, v1);
  sub_24619F15C();
  (v11)(v4, v59, v1);
  v210 = 0xD000000000000013;
  sub_24619F15C();
  v61 = v254;
  v216 = 13 * v254;
  (v11)(v4, v59, v1);
  sub_24619F15C();
  v215 = 16 * v61 - v252;
  (v11)(v4, v59, v1);
  sub_24619F15C();
  v214 = 15 * v61;
  v212 = 16 * v61;
  (v11)(v4, v59, v1);
  sub_24619F15C();
  (v11)(v4, v59, v1);
  sub_24619F15C();
  v213 = 16 * v61 + v254;
  (v11)(v4, v59, v1);
  sub_24619F15C();
  v211 = 2 * v234;
  v62 = v209;
  (v11)(v4, v209, v1);
  sub_24619F15C();
  (v11)(v4, v62, v1);
  sub_24619F15C();
  v63 = v236;
  (v11)(v4, v236, v1);
  sub_24619F15C();
  (v11)(v4, v63, v1);
  sub_24619F15C();
  (v11)(v4, v63, v1);
  sub_24619F15C();
  (v11)(v4, v63, v1);
  sub_24619F15C();
  v64 = v226;
  (v11)(v4, v226, v1);
  sub_24619F15C();
  (v11)(v4, v64, v1);
  sub_24619F15C();
  (v11)(v4, v64, v1);
  sub_24619F15C();
  (v11)(v4, v64, v1);
  sub_24619F15C();
  v65 = v241;
  (v11)(v4, v241, v1);
  sub_24619F15C();
  (v11)(v4, v65, v1);
  sub_24619F15C();
  (v11)(v4, v63, v1);
  sub_24619F15C();
  (v11)(v4, v63, v1);
  v202 = "shippingPhoneNumber";
  sub_24619F15C();
  (v11)(v4, v63, v1);
  sub_24619F15C();
  (v11)(v4, v63, v1);
  sub_24619F15C();
  (v11)(v4, v63, v1);
  v206 = "transactionAmount";
  sub_24619F15C();
  v66 = v257;
  v257[57] = v208;
  v66[58] = v217;
  v66[59] = 0x80000002461A8D30;
  v67 = swift_allocObject();
  v205 = xmmword_2461A13F0;
  *&v208 = v67;
  *(v67 + 16) = xmmword_2461A13F0;
  v68 = v226;
  (v11)(v4, v226, v1);
  sub_24619F15C();
  (v11)(v4, v68, v1);
  sub_24619F15C();
  (v11)(v4, v68, v1);
  sub_24619F15C();
  (v11)(v4, v68, v1);
  sub_24619F15C();
  v69 = v241;
  (v11)(v4, v241, v1);
  sub_24619F15C();
  (v11)(v4, v69, v1);
  sub_24619F15C();
  v70 = v236;
  (v11)(v4, v236, v1);
  sub_24619F15C();
  (v11)(v4, v70, v1);
  sub_24619F15C();
  (v11)(v4, v70, v1);
  sub_24619F15C();
  (v11)(v4, v70, v1);
  sub_24619F15C();
  (v11)(v4, v70, v1);
  sub_24619F15C();
  v71 = v257;
  v257[60] = v208;
  v71[61] = 0xD000000000000014;
  v71[62] = 0x80000002461A8D50;
  v72 = swift_allocObject();
  v208 = xmmword_2461A0F80;
  v202 = v72;
  *(v72 + 16) = xmmword_2461A0F80;
  v73 = v1;
  (v11)(v4, v68, v1);
  sub_24619F15C();
  (v11)(v4, v68, v1);
  sub_24619F15C();
  (v11)(v4, v68, v1);
  sub_24619F15C();
  (v11)(v4, v68, v1);
  v197 = v11;
  sub_24619F15C();
  v74 = v230;
  v75 = v232;
  v76 = v235;
  v233(v230, v232, v235);
  v77 = v229;
  (v11)(v4, v229, v73);
  sub_24619F16C();
  v78 = v257;
  v257[63] = v202;
  v78[64] = v221;
  v78[65] = 0x80000002461A8D70;
  v201 = swift_allocObject();
  *(v201 + 1) = xmmword_2461A1400;
  v79 = v197;
  v197(v4, v236, v73);
  sub_24619F15C();
  v233(v74, v75, v76);
  v79(v4, v77, v73);
  v80 = v79;
  sub_24619F16C();
  v81 = v226;
  v82 = v73;
  v79(v4, v226, v73);
  sub_24619F15C();
  v79(v4, v81, v73);
  sub_24619F15C();
  v79(v4, v81, v73);
  sub_24619F15C();
  v83 = v236;
  v79(v4, v236, v73);
  sub_24619F15C();
  v79(v4, v83, v73);
  sub_24619F15C();
  v79(v4, v83, v73);
  sub_24619F15C();
  v79(v4, v83, v73);
  sub_24619F15C();
  v79(v4, v83, v73);
  sub_24619F15C();
  v79(v4, v83, v73);
  sub_24619F15C();
  v79(v4, v83, v73);
  sub_24619F15C();
  v84 = v241;
  v79(v4, v241, v73);
  v85 = v245;
  sub_24619F15C();
  v80(v4, v84, v73);
  sub_24619F15C();
  v86 = v209;
  v80(v4, v209, v73);
  sub_24619F15C();
  v202 = "com.apple.bc.validation";
  v80(v4, v86, v73);
  sub_24619F15C();
  v87 = v226;
  v80(v4, v226, v73);
  sub_24619F15C();
  v88 = v257;
  v257[66] = v201;
  v88[67] = v85;
  v88[68] = 0x80000002461A8DB0;
  v89 = MEMORY[0x277D84F90];
  v88[69] = MEMORY[0x277D84F90];
  v90 = v204;
  v88[70] = v204;
  v88[71] = 0x80000002461A8DD0;
  v88[72] = v89;
  v88[73] = v90;
  v88[74] = 0x80000002461A8E00;
  v91 = swift_allocObject();
  v204 = xmmword_2461A1410;
  v201 = v91;
  *(v91 + 16) = xmmword_2461A1410;
  v92 = v236;
  v80(v4, v236, v82);
  sub_24619F15C();
  v80(v4, v92, v82);
  sub_24619F15C();
  v80(v4, v92, v82);
  sub_24619F15C();
  v80(v4, v92, v82);
  sub_24619F15C();
  v80(v4, v92, v82);
  sub_24619F15C();
  v80(v4, v92, v82);
  sub_24619F15C();
  v80(v4, v92, v82);
  sub_24619F15C();
  v80(v4, v92, v82);
  sub_24619F15C();
  v93 = v233;
  v233(v230, v232, v235);
  v94 = v229;
  v80(v4, v229, v82);
  sub_24619F16C();
  v80(v4, v87, v82);
  sub_24619F15C();
  v80(v4, v87, v82);
  sub_24619F15C();
  v80(v4, v87, v82);
  sub_24619F15C();
  v95 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v95, v82);
  sub_24619F15C();
  v96 = v209;
  v80(v4, v209, v82);
  sub_24619F15C();
  v80(v4, v96, v82);
  sub_24619F15C();
  v97 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v97, v82);
  sub_24619F15C();
  v98 = v257;
  v257[75] = v201;
  v99 = v221;
  *(v98 + 76) = v221;
  *(v98 + 77) = 0x80000002461A8E30;
  v100 = MEMORY[0x277D84F90];
  *(v98 + 78) = MEMORY[0x277D84F90];
  *(v98 + 79) = 0xD00000000000002ALL;
  *(v98 + 80) = 0x80000002461A8E50;
  *(v98 + 81) = v100;
  *(v98 + 82) = 0xD000000000000026;
  *(v98 + 83) = 0x80000002461A8E80;
  *(v98 + 84) = v100;
  *(v98 + 85) = v99;
  *(v98 + 86) = 0x80000002461A8EB0;
  *(v98 + 87) = v100;
  *(v98 + 88) = v219;
  *(v98 + 89) = 0x80000002461A8ED0;
  *(v98 + 90) = v100;
  strcpy(v98 + 728, "com.apple.care");
  v98[743] = -18;
  v101 = swift_allocObject();
  *(v101 + 16) = v208;
  v93(v230, v232, v235);
  v80(v4, v94, v82);
  sub_24619F16C();
  v102 = v226;
  v80(v4, v226, v82);
  sub_24619F15C();
  v80(v4, v102, v82);
  sub_24619F15C();
  v80(v4, v102, v82);
  sub_24619F15C();
  v80(v4, v102, v82);
  sub_24619F15C();
  v103 = v257;
  v257[93] = v101;
  v103[94] = v218;
  v103[95] = 0x80000002461A8EF0;
  v104 = swift_allocObject();
  v209 = xmmword_2461A1420;
  v202 = v104;
  *(v104 + 16) = xmmword_2461A1420;
  v233(v230, v232, v235);
  v80(v4, v229, v82);
  sub_24619F16C();
  v80(v4, v102, v82);
  sub_24619F15C();
  v80(v4, v102, v82);
  sub_24619F15C();
  v80(v4, v102, v82);
  sub_24619F15C();
  v105 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v105, v82);
  sub_24619F15C();
  v80(v4, v102, v82);
  sub_24619F15C();
  v106 = v257;
  v257[96] = v202;
  v106[97] = v218;
  v106[98] = 0x80000002461A8F10;
  v107 = swift_allocObject();
  *(v107 + 16) = v209;
  v233(v230, v232, v235);
  v80(v4, v229, v82);
  sub_24619F16C();
  v108 = v102;
  v80(v4, v102, v82);
  sub_24619F15C();
  v80(v4, v102, v82);
  sub_24619F15C();
  v80(v4, v102, v82);
  sub_24619F15C();
  v109 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v109, v82);
  sub_24619F15C();
  v80(v4, v108, v82);
  sub_24619F15C();
  v110 = v257;
  v257[99] = v107;
  v110[100] = v218;
  v110[101] = 0x80000002461A8F30;
  *&v209 = swift_allocObject();
  *(v209 + 16) = v204;
  v111 = v236;
  v80(v4, v236, v82);
  sub_24619F15C();
  v80(v4, v111, v82);
  sub_24619F15C();
  v112 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v112, v82);
  sub_24619F15C();
  v233(v230, v232, v235);
  v80(v4, v229, v82);
  sub_24619F16C();
  v80(v4, v111, v82);
  sub_24619F15C();
  v80(v4, v111, v82);
  sub_24619F15C();
  v80(v4, v112, v82);
  v202 = "com.apple.cash.p2p";
  sub_24619F15C();
  v80(v4, v112, v82);
  v201 = "parsedPeerFamilyName";
  sub_24619F15C();
  v80(v4, v111, v82);
  sub_24619F15C();
  v199 = "parsedPeerGivenName";
  v200 = "peerFormattedPhoneNumber";
  v198 = *MEMORY[0x277D00668];
  (v80)(v4);
  sub_24619F15C();
  v80(v4, v111, v82);
  sub_24619F15C();
  v113 = v226;
  v80(v4, v226, v82);
  sub_24619F15C();
  v80(v4, v113, v82);
  sub_24619F15C();
  v80(v4, v113, v82);
  sub_24619F15C();
  v114 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v114, v82);
  sub_24619F15C();
  v80(v4, v113, v82);
  sub_24619F15C();
  v115 = v257;
  v257[102] = v209;
  v115[103] = v217;
  v115[104] = 0x80000002461A8FD0;
  *&v209 = swift_allocObject();
  *(v209 + 16) = v205;
  v80(v4, v111, v82);
  sub_24619F15C();
  v80(v4, v111, v82);
  sub_24619F15C();
  v116 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v116, v82);
  sub_24619F15C();
  v233(v230, v232, v235);
  v80(v4, v229, v82);
  sub_24619F16C();
  v117 = v113;
  v80(v4, v113, v82);
  sub_24619F15C();
  v80(v4, v113, v82);
  sub_24619F15C();
  v80(v4, v113, v82);
  sub_24619F15C();
  v118 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v118, v82);
  v119 = v253;
  sub_24619F15C();
  v80(v4, v117, v82);
  sub_24619F15C();
  v120 = v257;
  v257[105] = v209;
  v120[106] = v119;
  v120[107] = 0x80000002461A8FF0;
  v121 = swift_allocObject();
  v209 = xmmword_2461A0EF0;
  *(v121 + 16) = xmmword_2461A0EF0;
  v80(v4, v236, v82);
  sub_24619F15C();
  v80(v4, v117, v82);
  sub_24619F15C();
  v80(v4, v117, v82);
  sub_24619F15C();
  v122 = v257;
  v257[108] = v121;
  v122[109] = v220;
  v122[110] = 0x80000002461A9010;
  v220 = swift_allocObject();
  *(v220 + 16) = v204;
  v123 = v236;
  v80(v4, v236, v82);
  sub_24619F15C();
  v80(v4, v123, v82);
  sub_24619F15C();
  v124 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v124, v82);
  sub_24619F15C();
  v233(v230, v232, v235);
  v80(v4, v229, v82);
  sub_24619F16C();
  v80(v4, v123, v82);
  sub_24619F15C();
  v125 = v123;
  v80(v4, v123, v82);
  sub_24619F15C();
  v80(v4, v124, v82);
  sub_24619F15C();
  v80(v4, v124, v82);
  sub_24619F15C();
  v80(v4, v123, v82);
  sub_24619F15C();
  v80(v4, v198, v82);
  sub_24619F15C();
  v80(v4, v123, v82);
  sub_24619F15C();
  v126 = v226;
  v80(v4, v226, v82);
  sub_24619F15C();
  v80(v4, v126, v82);
  sub_24619F15C();
  v80(v4, v126, v82);
  sub_24619F15C();
  v127 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v127, v82);
  sub_24619F15C();
  v80(v4, v126, v82);
  sub_24619F15C();
  v128 = v257;
  v257[111] = v220;
  v128[112] = 0xD000000000000014;
  v128[113] = 0x80000002461A9030;
  v129 = swift_allocObject();
  *(v129 + 16) = v205;
  v80(v4, v125, v82);
  sub_24619F15C();
  v80(v4, v125, v82);
  sub_24619F15C();
  v130 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v130, v82);
  sub_24619F15C();
  v233(v230, v232, v235);
  v80(v4, v229, v82);
  sub_24619F16C();
  v80(v4, v126, v82);
  v131 = v237;
  sub_24619F15C();
  v80(v4, v126, v82);
  sub_24619F15C();
  v80(v4, v126, v82);
  sub_24619F15C();
  v132 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v132, v82);
  sub_24619F15C();
  v80(v4, v126, v82);
  sub_24619F15C();
  v133 = v257;
  v257[114] = v129;
  v133[115] = v131;
  v133[116] = 0x80000002461A9050;
  v134 = swift_allocObject();
  *(v134 + 16) = v225;
  v135 = v236;
  v80(v4, v236, v82);
  sub_24619F15C();
  v80(v4, v135, v82);
  sub_24619F15C();
  v80(v4, v135, v82);
  sub_24619F15C();
  v80(v4, v135, v82);
  sub_24619F15C();
  v233(v230, v232, v235);
  v80(v4, v229, v82);
  sub_24619F16C();
  v80(v4, v126, v82);
  sub_24619F15C();
  v80(v4, v126, v82);
  sub_24619F15C();
  v80(v4, v126, v82);
  sub_24619F15C();
  v136 = v126;
  v80(v4, v126, v82);
  sub_24619F15C();
  v137 = v257;
  v257[117] = v134;
  v137[118] = 0xD000000000000023;
  v137[119] = 0x80000002461A90B0;
  v138 = swift_allocObject();
  *(v138 + 16) = v209;
  v139 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v139, v82);
  sub_24619F15C();
  v80(v4, v136, v82);
  sub_24619F15C();
  v140 = v257;
  v257[120] = v138;
  v140[121] = 0xD000000000000014;
  v140[122] = 0x80000002461A90E0;
  v224 = swift_allocObject();
  *(v224 + 16) = v225;
  v141 = v236;
  v80(v4, v236, v82);
  sub_24619F15C();
  v80(v4, v141, v82);
  sub_24619F15C();
  v142 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v142, v82);
  sub_24619F15C();
  v80(v4, v141, v82);
  sub_24619F15C();
  v143 = v226;
  v80(v4, v226, v82);
  sub_24619F15C();
  v144 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v144, v82);
  sub_24619F15C();
  v80(v4, v143, v82);
  sub_24619F15C();
  v145 = v257;
  v257[123] = v224;
  v145[124] = v217;
  v145[125] = 0x80000002461A9100;
  v146 = swift_allocObject();
  *(v146 + 16) = v225;
  v80(v4, v141, v82);
  sub_24619F15C();
  v80(v4, v141, v82);
  sub_24619F15C();
  v147 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v147, v82);
  sub_24619F15C();
  v80(v4, v141, v82);
  sub_24619F15C();
  v148 = v226;
  v80(v4, v226, v82);
  sub_24619F15C();
  v149 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v149, v82);
  v150 = v253;
  sub_24619F15C();
  v151 = v148;
  v80(v4, v148, v82);
  sub_24619F15C();
  v152 = v257;
  v257[126] = v146;
  v152[127] = v150;
  v152[128] = 0x80000002461A9120;
  v153 = swift_allocObject();
  *(v153 + 16) = v225;
  v154 = v236;
  v80(v4, v236, v82);
  sub_24619F15C();
  v80(v4, v154, v82);
  sub_24619F15C();
  v155 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v155, v82);
  sub_24619F15C();
  v80(v4, v154, v82);
  sub_24619F15C();
  v80(v4, v151, v82);
  sub_24619F15C();
  v156 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v156, v82);
  v157 = v253;
  sub_24619F15C();
  v80(v4, v151, v82);
  sub_24619F15C();
  v158 = v257;
  v257[129] = v153;
  v158[130] = v157;
  v158[131] = 0x80000002461A9140;
  v159 = swift_allocObject();
  *(v159 + 16) = v225;
  v80(v4, v154, v82);
  sub_24619F15C();
  v80(v4, v154, v82);
  sub_24619F15C();
  v160 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v160, v82);
  sub_24619F15C();
  v80(v4, v154, v82);
  sub_24619F15C();
  v80(v4, v151, v82);
  sub_24619F15C();
  v161 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v161, v82);
  sub_24619F15C();
  v80(v4, v151, v82);
  sub_24619F15C();
  v162 = v257;
  v257[132] = v159;
  v162[133] = v207;
  v162[134] = 0x80000002461A9160;
  v224 = swift_allocObject();
  *(v224 + 16) = v225;
  v163 = v236;
  v80(v4, v236, v82);
  sub_24619F15C();
  v80(v4, v163, v82);
  sub_24619F15C();
  v164 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v164, v82);
  sub_24619F15C();
  v80(v4, v163, v82);
  sub_24619F15C();
  v165 = v151;
  v80(v4, v151, v82);
  sub_24619F15C();
  v166 = v241;
  v80(v4, v241, v82);
  v167 = v245;
  sub_24619F15C();
  v80(v4, v166, v82);
  sub_24619F15C();
  v168 = v165;
  v80(v4, v165, v82);
  sub_24619F15C();
  v169 = v257;
  v257[135] = v224;
  v169[136] = v167;
  v169[137] = 0x80000002461A9180;
  v170 = swift_allocObject();
  *(v170 + 16) = v225;
  v80(v4, v163, v82);
  sub_24619F15C();
  v80(v4, v163, v82);
  sub_24619F15C();
  v171 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v171, v82);
  sub_24619F15C();
  v80(v4, v163, v82);
  sub_24619F15C();
  v80(v4, v168, v82);
  sub_24619F15C();
  v80(v4, v166, v82);
  sub_24619F15C();
  v80(v4, v166, v82);
  sub_24619F15C();
  v172 = v168;
  v80(v4, v168, v82);
  sub_24619F15C();
  v173 = v257;
  v257[138] = v170;
  v173[139] = v221;
  v173[140] = 0x80000002461A91A0;
  v174 = swift_allocObject();
  *(v174 + 16) = v225;
  v80(v4, v163, v82);
  sub_24619F15C();
  v80(v4, v163, v82);
  sub_24619F15C();
  v175 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v175, v82);
  sub_24619F15C();
  v80(v4, v163, v82);
  sub_24619F15C();
  v80(v4, v168, v82);
  sub_24619F15C();
  v176 = v241;
  v80(v4, v241, v82);
  v177 = v245;
  sub_24619F15C();
  v80(v4, v176, v82);
  sub_24619F15C();
  v80(v4, v172, v82);
  sub_24619F15C();
  v178 = v257;
  v257[141] = v174;
  v178[142] = v177;
  v178[143] = 0x80000002461A91C0;
  v179 = swift_allocObject();
  *(v179 + 16) = v225;
  v80(v4, v163, v82);
  sub_24619F15C();
  v80(v4, v163, v82);
  sub_24619F15C();
  v180 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v180, v82);
  sub_24619F15C();
  v80(v4, v163, v82);
  sub_24619F15C();
  v181 = v226;
  v80(v4, v226, v82);
  sub_24619F15C();
  v182 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v182, v82);
  sub_24619F15C();
  v80(v4, v181, v82);
  sub_24619F15C();
  v183 = v257;
  v257[144] = v179;
  v183[145] = v221;
  v183[146] = 0x80000002461A91E0;
  v184 = swift_allocObject();
  *(v184 + 16) = v225;
  v80(v4, v163, v82);
  sub_24619F15C();
  v80(v4, v163, v82);
  sub_24619F15C();
  v185 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v185, v82);
  sub_24619F15C();
  v80(v4, v163, v82);
  sub_24619F15C();
  v186 = v226;
  v80(v4, v226, v82);
  sub_24619F15C();
  v187 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v187, v82);
  sub_24619F15C();
  v80(v4, v186, v82);
  sub_24619F15C();
  v188 = v257;
  v257[147] = v184;
  v188[148] = v221;
  v188[149] = 0x80000002461A9200;
  v234 = swift_allocObject();
  *(v234 + 16) = v225;
  v189 = v236;
  v80(v4, v236, v82);
  sub_24619F15C();
  v80(v4, v189, v82);
  sub_24619F15C();
  v190 = v227;
  v80(v4, v227, v82);
  sub_24619F15C();
  v80(v4, v190, v82);
  sub_24619F15C();
  v80(v4, v189, v82);
  sub_24619F15C();
  v191 = v226;
  v80(v4, v226, v82);
  sub_24619F15C();
  v192 = v241;
  v80(v4, v241, v82);
  sub_24619F15C();
  v80(v4, v192, v82);
  sub_24619F15C();
  v80(v4, v191, v82);
  sub_24619F15C();
  v188[150] = v234;
  v188[151] = v219;
  v188[152] = 0x80000002461A9220;
  v193 = swift_allocObject();
  *(v193 + 16) = v208;
  v80(v4, v191, v82);
  sub_24619F15C();
  v80(v4, v191, v82);
  sub_24619F15C();
  v80(v4, v191, v82);
  sub_24619F15C();
  v80(v4, v191, v82);
  sub_24619F15C();
  v233(v230, v232, v235);
  v80(v4, v229, v82);
  sub_24619F16C();
  v188[153] = v193;
  v194 = sub_2461898B4(v188);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA10, &qword_2461A1438);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27EE3FA68 = v194;
  return result;
}