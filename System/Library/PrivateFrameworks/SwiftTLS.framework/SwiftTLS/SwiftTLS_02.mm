unint64_t sub_26C0D6EF4()
{
  result = qword_28047AA58;
  if (!qword_28047AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA58);
  }

  return result;
}

unint64_t sub_26C0D6F4C()
{
  result = qword_28047AA60;
  if (!qword_28047AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for knownTLSAlert(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for knownTLSAlert(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26C0D7104(uint64_t a1, unint64_t a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  if ((a2 & 0x1000000000000000) != 0)
  {
    if (sub_26C148F6C() > 255)
    {
      return 0;
    }

    v5 = sub_26C148F6C();
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0xFFFFFFFFFF00) != 0)
    {
      return 0;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      goto LABEL_9;
    }

    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 <= 0xFF)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_9:
  v5 = HIBYTE(a2) & 0xF;
LABEL_10:
  v7 = v5;
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = &v7;
  v8[1] = v8;
  __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);

  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v8);
  sub_26C0D1D1C(a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_26C148F6C();
  }

  else
  {

    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }
  }

  result = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_20:
    __break(1u);
  }

  return result;
}

void *sub_26C0D7260(uint64_t a1)
{
  v1 = sub_26C1368E8();
  if ((v1 & 0x100) != 0)
  {
    return 0;
  }

  result = sub_26C0DE248(v1, &v19);
  v3 = v20;
  if (v20 >> 60 == 15)
  {
    return 0;
  }

  v4 = v19;
  v5 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v19 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v19 >> 32;
  }

  else
  {
    v6 = BYTE6(v20);
  }

  if (v6 < v21)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26C14889C();
    v9 = v8;
    v10 = sub_26C0D753C(v7, v8);
    if (v11)
    {
      v12 = v10;
      v13 = v4;
    }

    else
    {
      v17 = v7;
      v18 = v9;
      sub_26C0BBAA4(v7, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AA68, &qword_26C14B088);
      if (swift_dynamicCast())
      {
        sub_26C0D3CB0(v15, &v19);
        __swift_project_boxed_opaque_existential_1(&v19, v22);
        if (sub_26C1490FC())
        {
          sub_26C0BB9B0(v7, v9);
          __swift_project_boxed_opaque_existential_1(&v19, v22);
          sub_26C1490EC();
          sub_26C0BB344(v4, v3);
          v14 = *&v15[0];
          __swift_destroy_boxed_opaque_existential_1(&v19);
          return v14;
        }

        __swift_destroy_boxed_opaque_existential_1(&v19);
      }

      else
      {
        v16 = 0;
        memset(v15, 0, sizeof(v15));
        sub_26C0D76E8(v15);
      }

      v12 = sub_26C0D7494(v7, v9);
      v13 = v4;
    }

    sub_26C0BB344(v13, v3);
    sub_26C0BB9B0(v7, v9);
    return v12;
  }

  return result;
}

uint64_t sub_26C0D7494(uint64_t a1, unint64_t a2)
{
  sub_26C0BBAA4(a1, a2);
  sub_26C148778(a1, a2);
  v4 = sub_26C148F3C();

  return v4;
}

uint64_t sub_26C0D7500@<X0>(uint64_t *a3@<X8>)
{
  result = sub_26C148F3C();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_26C0D753C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_26C148F3C();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_26C148F3C();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_26C1487BC();
  if (a1)
  {
    a1 = sub_26C1487EC();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_26C1487BC() || !__OFSUB__(v5, sub_26C1487EC()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_26C1487DC();
  return sub_26C148F3C();
}

uint64_t sub_26C0D76E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AA70, &qword_26C14B090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C0D7760(__int16 a1)
{
  if (a1 == 4865)
  {
    return 0xD000000000000016;
  }

  if (a1 == 4866)
  {
    return 0xD000000000000016;
  }

  sub_26C0D787C();
  v2 = sub_26C148FBC();
  MEMORY[0x26D69BC90](v2);

  return 30768;
}

unint64_t sub_26C0D7828()
{
  result = qword_28047AA78;
  if (!qword_28047AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA78);
  }

  return result;
}

unint64_t sub_26C0D787C()
{
  result = qword_28047AA80;
  if (!qword_28047AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA80);
  }

  return result;
}

uint64_t sub_26C0D78D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C0D78F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_26C0D792C()
{
  if (qword_287CC9978 == 32)
  {
    unk_280480350 = xmmword_287CC9988;
    *(&xmmword_280480358 + 8) = unk_287CC9998;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26C0D795C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_26C1491AC();
  MEMORY[0x26D69BF30](v1);
  MEMORY[0x26D69BF30](v2);
  MEMORY[0x26D69BF30](v3);
  MEMORY[0x26D69BF30](v4);
  return sub_26C14920C();
}

uint64_t sub_26C0D79DC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x26D69BF30](*v0);
  MEMORY[0x26D69BF30](v1);
  MEMORY[0x26D69BF30](v2);
  return MEMORY[0x26D69BF30](v3);
}

uint64_t sub_26C0D7A34(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_26C1491AC();
  MEMORY[0x26D69BF30](v2);
  MEMORY[0x26D69BF30](v3);
  MEMORY[0x26D69BF30](v4);
  MEMORY[0x26D69BF30](v5);
  return sub_26C14920C();
}

unint64_t sub_26C0D7AF0()
{
  result = qword_28047AA88;
  if (!qword_28047AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA88);
  }

  return result;
}

uint64_t sub_26C0D7B44@<X0>(uint64_t a1@<X8>)
{
  result = v1[2];
  v3 = result + 32;
  if (__OFADD__(result, 32))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      if (*(v5 + 24) >= v3)
      {
        goto LABEL_7;
      }
    }

    else if (v3 <= 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
LABEL_22:
    *a1 = v14;
    *(a1 + 8) = v15;
    *(a1 + 16) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18;
    return result;
  }

  if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  if (v8 < v3)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v3 >= result)
  {
    v9 = sub_26C14889C();
    v10 = v9;
    v12 = v11;
    v1[2] = v3;
    v13 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v13 != 2)
      {
LABEL_21:
        v20 = sub_26C14889C();
        v22 = v21;
        v14 = sub_26C0D7CAC(v20, v21);
        v15 = v23;
        v16 = v24;
        v17 = v25;
        sub_26C0BB9B0(v20, v22);
        result = sub_26C0BB9B0(v10, v12);
        v18 = 0;
        goto LABEL_22;
      }

      v9 = *(v9 + 16);
      v19 = *(v10 + 24);
    }

    else
    {
      if (!v13)
      {
        goto LABEL_21;
      }

      v9 = v9;
      v19 = v10 >> 32;
    }

    if (v19 < v9)
    {
      __break(1u);
    }

    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_26C0D7CAC(uint64_t result, unint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
    goto LABEL_13;
  }

  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = __OFSUB__(v4, v5);
  v3 = v4 - v5;
  if (v6)
  {
    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
    }

    v3 = v3;
  }

LABEL_10:
  if (v3 == 32)
  {
    memset(v7, 0, sizeof(v7));
    sub_26C0D4564(result, a2, v7, v8);
    return *&v7[0];
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_26C0D7D74(__int16 a1)
{
  result = 0xD000000000000017;
  if (a1 == 2052)
  {
    return 0xD000000000000014;
  }

  if (a1 != 1283 && a1 != 1027)
  {
    sub_26C14908C();

    v3 = sub_26C14911C();
    MEMORY[0x26D69BC90](v3);

    MEMORY[0x26D69BC90](41, 0xE100000000000000);
    return 0xD00000000000001ALL;
  }

  return result;
}

unint64_t sub_26C0D7E8C()
{
  result = qword_28047AA90;
  if (!qword_28047AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA90);
  }

  return result;
}

uint64_t sub_26C0D7EE0()
{
  type metadata accessor for PAKELimiter();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x277D84F98];
  qword_280480370 = result;
  return result;
}

uint64_t sub_26C0D7F1C()
{
  sub_26C1491AC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0D7FB8(uint64_t a1)
{
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  return sub_26C1491CC();
}

uint64_t sub_26C0D8028(uint64_t a1)
{
  sub_26C1491AC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0D80C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (!sub_26C0E6464(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_26C0E6464(v2, v3, v7, v8))
  {
    return 0;
  }

  if (sub_26C0E6464(v4, v5, v9, v10))
  {
    return v6 ^ v11 ^ 1u;
  }

  return 0;
}

uint64_t sub_26C0D8170(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  os_unfair_lock_lock((v2 + 16));
  if (*(*(v2 + 24) + 16) && (sub_26C0D84BC(a1), (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_26C0D8CCC(v4, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v10;

    v7 = 1;
  }

  os_unfair_lock_unlock(v3 + 4);
  return v7;
}

BOOL sub_26C0D8220(uint64_t *a1)
{
  v2 = v1;
  os_unfair_lock_lock((v1 + 16));
  v4 = *(v1 + 24);
  v7 = *(v4 + 16) && (v5 = sub_26C0D84BC(a1), (v6 & 1) != 0) && *(*(v4 + 56) + 4 * v5) != 0;
  os_unfair_lock_unlock(v2 + 4);
  return v7;
}

uint64_t sub_26C0D8290()
{
  sub_26C0DA508(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26C0D8308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C0D835C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26C0D83C4()
{
  result = qword_28047AAA0;
  if (!qword_28047AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AAA0);
  }

  return result;
}

unint64_t sub_26C0D8418(void *a1)
{
  sub_26C1491AC();
  sub_26C1491DC();
  sub_26C1488BC();
  sub_26C1488BC();
  v2 = sub_26C14920C();

  return sub_26C0D8E20(a1, v2);
}

unint64_t sub_26C0D84BC(uint64_t *a1)
{
  sub_26C1491AC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1488BC();
  sub_26C1491CC();
  v2 = sub_26C14920C();

  return sub_26C0D95C0(a1, v2);
}

uint64_t sub_26C0D8550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AAB8, &qword_26C14CA70);
  v46 = v4;
  v6 = sub_26C1490CC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v44 = (v5 + 64);
    v45 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v43 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v17 = (v11 - 1) & v11;
LABEL_15:
      v21 = v16 | (v8 << 6);
      v58 = v17;
      v22 = *(v5 + 48) + 40 * v21;
      v23 = *v22;
      v25 = *(v22 + 8);
      v24 = *(v22 + 16);
      v27 = *(v22 + 24);
      v26 = *(v22 + 32);
      v28 = *(v5 + 56) + (v21 << 7);
      if (v46)
      {
        v48 = *v28;
        v47 = *(v28 + 8);
        v51 = *(v28 + 56);
        v49 = *(v28 + 24);
        v50 = *(v28 + 40);
        v57 = *(v28 + 88);
        v55 = *(v28 + 72);
        v53 = *(v28 + 112);
        v54 = *(v28 + 104);
        v52 = *(v28 + 120);
        v56 = *(v28 + 121);
      }

      else
      {
        v30 = *(v28 + 32);
        v29 = *(v28 + 48);
        v31 = *v28;
        *&v60[16] = *(v28 + 16);
        *&v60[32] = v30;
        *v60 = v31;
        v33 = *(v28 + 80);
        v32 = *(v28 + 96);
        v34 = *(v28 + 64);
        *&v60[106] = *(v28 + 106);
        *&v60[80] = v33;
        *&v60[96] = v32;
        *&v60[48] = v29;
        *&v60[64] = v34;
        v56 = v60[121];
        v57 = *&v60[88];
        v55 = *&v60[72];
        v53 = *&v60[112];
        v54 = *(&v32 + 1);
        v52 = v60[120];
        v50 = *&v60[40];
        v51 = *&v60[56];
        v49 = *&v60[24];
        v47 = *&v60[8];
        v48 = *v60;
        sub_26C0BBAA4(v25, v24);
        sub_26C0BBAA4(v27, v26);
        sub_26C0DA570(v60, v59);
      }

      sub_26C1491AC();
      sub_26C1491DC();
      sub_26C1488BC();
      sub_26C1488BC();
      result = sub_26C14920C();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v12 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v12 + 8 * v37);
          if (v41 != -1)
          {
            v13 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v36) & ~*(v12 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v7 + 48) + 40 * v13;
      *v14 = v23;
      *(v14 + 8) = v25;
      *(v14 + 16) = v24;
      *(v14 + 24) = v27;
      *(v14 + 32) = v26;
      v15 = *(v7 + 56) + (v13 << 7);
      *v15 = v48;
      *(v15 + 24) = v49;
      *(v15 + 8) = v47;
      *(v15 + 56) = v51;
      *(v15 + 40) = v50;
      *(v15 + 88) = v57;
      *(v15 + 72) = v55;
      *(v15 + 104) = v54;
      *(v15 + 112) = v53;
      *(v15 + 120) = v52;
      *(v15 + 121) = v56;
      ++*(v7 + 16);
      v5 = v45;
      v11 = v58;
    }

    v18 = v8;
    result = v44;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v43)
      {
        break;
      }

      v20 = v44[v8];
      ++v18;
      if (v20)
      {
        v16 = __clz(__rbit64(v20));
        v17 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v44 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26C0D8978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AAA8, &qword_26C14B528);
  v39 = v4;
  v43 = sub_26C1490CC();
  if (*(v5 + 16))
  {
    v36 = v2;
    v6 = 0;
    v37 = (v5 + 64);
    v38 = v5;
    v7 = 1 << *(v5 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v5 + 64);
    v10 = (v7 + 63) >> 6;
    v11 = v43 + 64;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v41 = (v9 - 1) & v9;
LABEL_15:
      v20 = v16 | (v6 << 6);
      v21 = *(v5 + 48) + 56 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      v26 = *(v21 + 32);
      v27 = *(v21 + 40);
      v42 = *(v21 + 48);
      v40 = *(*(v5 + 56) + 4 * v20);
      if ((v39 & 1) == 0)
      {
        sub_26C0BBAA4(v22, v23);
        sub_26C0BBAA4(v25, v24);
        sub_26C0BBAA4(v26, v27);
      }

      sub_26C1491AC();
      sub_26C1488BC();
      sub_26C1488BC();
      sub_26C1488BC();
      sub_26C1491CC();
      result = sub_26C14920C();
      v28 = -1 << *(v43 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v11 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v14 = v24;
        v13 = v25;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v11 + 8 * v30);
          if (v34 != -1)
          {
            v12 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v29) & ~*(v11 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v14 = v24;
      v13 = v25;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v15 = *(v43 + 48) + 56 * v12;
      *v15 = v22;
      *(v15 + 8) = v23;
      *(v15 + 16) = v13;
      *(v15 + 24) = v14;
      *(v15 + 32) = v26;
      *(v15 + 40) = v27;
      *(v15 + 48) = v42;
      *(*(v43 + 56) + 4 * v12) = v40;
      ++*(v43 + 16);
      v5 = v38;
      v9 = v41;
    }

    v17 = v6;
    result = v37;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v6 >= v10)
      {
        break;
      }

      v19 = v37[v6];
      ++v17;
      if (v19)
      {
        v16 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v43;
  return result;
}

unint64_t sub_26C0D8CCC(int a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_26C0D84BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_26C0D8978(v14, a3 & 1);
      result = sub_26C0D84BC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = sub_26C14914C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_26C0DA31C();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 4 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  v20 = v19[6] + 56 * result;
  v21 = *a2;
  v22 = *(a2 + 1);
  v23 = *(a2 + 2);
  *(v20 + 48) = *(a2 + 48);
  *(v20 + 16) = v22;
  *(v20 + 32) = v23;
  *v20 = v21;
  *(v19[7] + 4 * result) = a1;
  v24 = v19[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19[2] = v25;
  return sub_26C0DA4D0(a2, v26);
}

unint64_t sub_26C0D8E20(void *a1, uint64_t a2)
{
  v88[3] = *MEMORY[0x277D85DE8];
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = v2;
  v86 = 0;
  v7 = ~v4;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10 == 0xC000000000000000;
  }

  v14 = !v13;
  v83 = v14;
  v15 = v10 >> 62;
  v80 = a1[3];
  v81 = a1[1];
  v16 = HIDWORD(v9) - v9;
  v17 = __OFSUB__(HIDWORD(v9), v9);
  v76 = v17;
  v74 = a1[4];
  v75 = v16;
  v71 = a1[2];
  v72 = v7;
  v82 = BYTE6(v10);
  if (v11)
  {
    v18 = 0;
  }

  else
  {
    v18 = v12 == 0xC000000000000000;
  }

  v19 = !v18;
  v79 = v19;
  v84 = v10 >> 62;
  v85 = v12 >> 62;
  v20 = __OFSUB__(HIDWORD(v11), v11);
  v70 = v20;
  v69 = HIDWORD(v11) - v11;
  v78 = BYTE6(v12);
  v73 = v3;
  v77 = *a1;
  while (1)
  {
    v21 = (*(v6 + 48) + 40 * v5);
    if (*v21 != v8)
    {
      goto LABEL_24;
    }

    v23 = v21[1];
    v22 = v21[2];
    v25 = v21[3];
    v24 = v21[4];
    v26 = v22 >> 62;
    if (v22 >> 62 == 3)
    {
      if (v23)
      {
        v27 = 0;
      }

      else
      {
        v27 = v22 == 0xC000000000000000;
      }

      v29 = !v27 || v15 < 3;
      if (((v29 | v83) & 1) == 0)
      {
        v30 = 0;
        v31 = 0xC000000000000000;
        goto LABEL_58;
      }

LABEL_48:
      v32 = 0;
      if (v15 <= 1)
      {
        goto LABEL_45;
      }

      goto LABEL_49;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_48;
      }

      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (v35)
      {
        goto LABEL_134;
      }

      if (v15 <= 1)
      {
        goto LABEL_45;
      }
    }

    else if (v26)
    {
      LODWORD(v32) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_135;
      }

      v32 = v32;
      if (v15 <= 1)
      {
LABEL_45:
        v36 = v82;
        if (v15)
        {
          v36 = v75;
          if (v76)
          {
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
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
          }
        }

        goto LABEL_51;
      }
    }

    else
    {
      v32 = BYTE6(v22);
      if (v15 <= 1)
      {
        goto LABEL_45;
      }
    }

LABEL_49:
    if (v15 != 2)
    {
      if (v32)
      {
        goto LABEL_24;
      }

LABEL_57:
      v30 = v23;
      v31 = v22;
LABEL_58:
      sub_26C0BBAA4(v30, v31);
      sub_26C0BBAA4(v25, v24);
      v39 = v85;
      goto LABEL_59;
    }

    v38 = *(v81 + 16);
    v37 = *(v81 + 24);
    v35 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (v35)
    {
      goto LABEL_131;
    }

LABEL_51:
    if (v32 != v36)
    {
      goto LABEL_24;
    }

    if (v32 < 1)
    {
      goto LABEL_57;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        memset(v88, 0, 14);
        sub_26C0BBAA4(v23, v22);
        sub_26C0BBAA4(v25, v24);
        goto LABEL_124;
      }

      v55 = *(v23 + 16);
      v54 = *(v23 + 24);
      sub_26C0BBAA4(v23, v22);
      sub_26C0BBAA4(v25, v24);
      v56 = sub_26C1487BC();
      if (v56)
      {
        v57 = sub_26C1487EC();
        if (__OFSUB__(v55, v57))
        {
          goto LABEL_144;
        }

        v56 += v55 - v57;
      }

      if (__OFSUB__(v54, v55))
      {
        goto LABEL_141;
      }

      sub_26C1487DC();
      v58 = v56;
      v59 = v81;
      v60 = v71;
      v61 = v86;
LABEL_122:
      sub_26C0BE04C(v58, v59, v60, v88);
      v86 = v61;
      v65 = v88[0];
      v7 = v72;
      v3 = v73;
      v8 = v77;
      goto LABEL_125;
    }

    if (v26)
    {
      if (v23 >> 32 < v23)
      {
        goto LABEL_140;
      }

      sub_26C0BBAA4(v23, v22);
      sub_26C0BBAA4(v25, v24);
      v63 = sub_26C1487BC();
      if (v63)
      {
        v64 = sub_26C1487EC();
        if (__OFSUB__(v23, v64))
        {
          goto LABEL_145;
        }

        v63 += v23 - v64;
      }

      v61 = v86;
      sub_26C1487DC();
      v58 = v63;
      v59 = v81;
      v60 = v71;
      goto LABEL_122;
    }

    v88[0] = v23;
    LOWORD(v88[1]) = v22;
    BYTE2(v88[1]) = BYTE2(v22);
    BYTE3(v88[1]) = BYTE3(v22);
    BYTE4(v88[1]) = BYTE4(v22);
    BYTE5(v88[1]) = BYTE5(v22);
    sub_26C0BBAA4(v23, v22);
    sub_26C0BBAA4(v25, v24);
    v8 = v77;
LABEL_124:
    sub_26C0BE04C(v88, v81, v71, &v87);
    v65 = v87;
LABEL_125:
    v39 = v85;
    if ((v65 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_59:
    v40 = v24 >> 62;
    if (v24 >> 62 == 3)
    {
      if (v25)
      {
        v41 = 0;
      }

      else
      {
        v41 = v24 == 0xC000000000000000;
      }

      v43 = !v41 || v39 < 3;
      if (((v43 | v79) & 1) == 0)
      {
        sub_26C0BB9B0(v23, v22);
        v67 = 0;
        v68 = 0xC000000000000000;
        goto LABEL_129;
      }

LABEL_81:
      v44 = 0;
      if (v39 <= 1)
      {
        goto LABEL_78;
      }

      goto LABEL_82;
    }

    if (v40 > 1)
    {
      if (v40 != 2)
      {
        goto LABEL_81;
      }

      v46 = *(v25 + 16);
      v45 = *(v25 + 24);
      v35 = __OFSUB__(v45, v46);
      v44 = v45 - v46;
      if (v35)
      {
        goto LABEL_136;
      }

      if (v39 <= 1)
      {
        goto LABEL_78;
      }
    }

    else if (v40)
    {
      LODWORD(v44) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_137;
      }

      v44 = v44;
      if (v39 <= 1)
      {
LABEL_78:
        v47 = v78;
        if (v39)
        {
          v47 = v69;
          if (v70)
          {
            goto LABEL_133;
          }
        }

        goto LABEL_84;
      }
    }

    else
    {
      v44 = BYTE6(v24);
      if (v39 <= 1)
      {
        goto LABEL_78;
      }
    }

LABEL_82:
    if (v39 != 2)
    {
      if (!v44)
      {
        break;
      }

LABEL_22:
      sub_26C0BB9B0(v23, v22);
      sub_26C0BB9B0(v25, v24);
      goto LABEL_23;
    }

    v49 = *(v80 + 16);
    v48 = *(v80 + 24);
    v35 = __OFSUB__(v48, v49);
    v47 = v48 - v49;
    if (v35)
    {
      goto LABEL_132;
    }

LABEL_84:
    if (v44 != v47)
    {
      goto LABEL_22;
    }

    if (v44 < 1)
    {
      break;
    }

    if (v40 > 1)
    {
      if (v40 != 2)
      {
        memset(v88, 0, 14);
LABEL_115:
        sub_26C0BE04C(v88, v80, v74, &v87);
        sub_26C0BB9B0(v23, v22);
        sub_26C0BB9B0(v25, v24);
        if (v87)
        {
          return v5;
        }

        goto LABEL_23;
      }

      v50 = *(v25 + 16);
      v51 = *(v25 + 24);
      v52 = sub_26C1487BC();
      if (v52)
      {
        v53 = sub_26C1487EC();
        if (__OFSUB__(v50, v53))
        {
          goto LABEL_142;
        }

        v52 += v50 - v53;
      }

      if (__OFSUB__(v51, v50))
      {
        goto LABEL_139;
      }
    }

    else
    {
      if (!v40)
      {
        v88[0] = v25;
        LOWORD(v88[1]) = v24;
        BYTE2(v88[1]) = BYTE2(v24);
        BYTE3(v88[1]) = BYTE3(v24);
        BYTE4(v88[1]) = BYTE4(v24);
        BYTE5(v88[1]) = BYTE5(v24);
        goto LABEL_115;
      }

      if (v25 >> 32 < v25)
      {
        goto LABEL_138;
      }

      v52 = sub_26C1487BC();
      if (v52)
      {
        v62 = sub_26C1487EC();
        if (__OFSUB__(v25, v62))
        {
          goto LABEL_143;
        }

        v52 += v25 - v62;
      }
    }

    sub_26C1487DC();
    sub_26C0BE04C(v52, v80, v74, v88);
    sub_26C0BB9B0(v23, v22);
    sub_26C0BB9B0(v25, v24);
    if (v88[0])
    {
      return v5;
    }

    v7 = v72;
    v3 = v73;
    v8 = v77;
LABEL_23:
    v15 = v84;
LABEL_24:
    v5 = (v5 + 1) & v7;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  sub_26C0BB9B0(v23, v22);
  v67 = v25;
  v68 = v24;
LABEL_129:
  sub_26C0BB9B0(v67, v68);
  return v5;
}

unint64_t sub_26C0D95C0(uint64_t *a1, uint64_t a2)
{
  v102[3] = *MEMORY[0x277D85DE8];
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v99 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v98 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    if (*a1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 0xC000000000000000;
    }

    v9 = !v8;
    v95 = v9;
    v10 = v7 >> 62;
    v93 = *a1;
    v11 = HIDWORD(v6) - v6;
    v12 = __OFSUB__(HIDWORD(v6), v6);
    v92 = v12;
    v90 = a1[1];
    v91 = v11;
    v94 = BYTE6(v7);
    v96 = v7 >> 62;
    while (1)
    {
      v13 = *(v2 + 48) + 56 * v4;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v19 = *(v13 + 40);
      v20 = *(v13 + 48);
      v21 = v15 >> 62;
      if (v15 >> 62 == 3)
      {
        break;
      }

      if (v21 > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_37;
        }

        v29 = *(v14 + 16);
        v28 = *(v14 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_179;
        }

        if (v10 <= 1)
        {
          goto LABEL_34;
        }
      }

      else if (v21)
      {
        LODWORD(v27) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_180;
        }

        v27 = v27;
        if (v10 <= 1)
        {
LABEL_34:
          v31 = v94;
          if (v10)
          {
            v31 = v91;
            if (v92)
            {
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
              __break(1u);
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
            }
          }

          goto LABEL_40;
        }
      }

      else
      {
        v27 = BYTE6(v15);
        if (v10 <= 1)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      if (v10 != 2)
      {
        if (v27)
        {
          goto LABEL_14;
        }

LABEL_46:
        v97 = v20;
        v25 = v14;
        v26 = v15;
LABEL_47:
        sub_26C0BBAA4(v25, v26);
        sub_26C0BBAA4(v16, v17);
        v100 = v18;
        sub_26C0BBAA4(v18, v19);
        goto LABEL_48;
      }

      v33 = *(v93 + 16);
      v32 = *(v93 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_178;
      }

LABEL_40:
      if (v27 != v31)
      {
        goto LABEL_14;
      }

      if (v27 < 1)
      {
        goto LABEL_46;
      }

      v97 = v20;
      v100 = v18;
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v46 = *(v14 + 16);
          v47 = *(v14 + 24);
          sub_26C0BBAA4(v14, v15);
          sub_26C0BBAA4(v16, v17);
          sub_26C0BBAA4(v18, v19);
          v48 = sub_26C1487BC();
          if (v48)
          {
            v49 = sub_26C1487EC();
            if (__OFSUB__(v46, v49))
            {
              goto LABEL_191;
            }

            v48 += v46 - v49;
          }

          if (__OFSUB__(v47, v46))
          {
            goto LABEL_188;
          }

LABEL_103:
          sub_26C1487DC();
          sub_26C0BE04C(v48, v93, v90, v102);
          v5 = a1;
          v2 = v89;
          if ((v102[0] & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_48;
        }

        memset(v102, 0, 14);
        sub_26C0BBAA4(v14, v15);
        sub_26C0BBAA4(v16, v17);
        sub_26C0BBAA4(v18, v19);
      }

      else
      {
        if (v21)
        {
          if (v14 >> 32 < v14)
          {
            goto LABEL_187;
          }

          sub_26C0BBAA4(v14, v15);
          sub_26C0BBAA4(v16, v17);
          sub_26C0BBAA4(v18, v19);
          v48 = sub_26C1487BC();
          if (v48)
          {
            v55 = sub_26C1487EC();
            if (__OFSUB__(v14, v55))
            {
              goto LABEL_192;
            }

            v48 += v14 - v55;
          }

          goto LABEL_103;
        }

        v102[0] = v14;
        LOWORD(v102[1]) = v15;
        BYTE2(v102[1]) = BYTE2(v15);
        BYTE3(v102[1]) = BYTE3(v15);
        BYTE4(v102[1]) = BYTE4(v15);
        BYTE5(v102[1]) = BYTE5(v15);
        sub_26C0BBAA4(v14, v15);
        sub_26C0BBAA4(v16, v17);
        sub_26C0BBAA4(v18, v19);
      }

      sub_26C0BE04C(v102, v93, v90, &v101);
      if (!v101)
      {
        goto LABEL_13;
      }

LABEL_48:
      v35 = v5[2];
      v34 = v5[3];
      v36 = v17 >> 62;
      v37 = v34 >> 62;
      if (v17 >> 62 == 3)
      {
        if (v16)
        {
          v38 = 0;
        }

        else
        {
          v38 = v17 == 0xC000000000000000;
        }

        v39 = 0;
        v40 = v38 && v34 >> 62 == 3;
        if (v40 && !v35 && v34 == 0xC000000000000000)
        {
          goto LABEL_121;
        }

LABEL_69:
        if (v37 > 1)
        {
          goto LABEL_63;
        }

        goto LABEL_70;
      }

      if (v36 > 1)
      {
        if (v36 == 2)
        {
          v45 = *(v16 + 16);
          v44 = *(v16 + 24);
          v30 = __OFSUB__(v44, v45);
          v39 = v44 - v45;
          if (v30)
          {
            goto LABEL_183;
          }

          goto LABEL_69;
        }

        v39 = 0;
        if (v37 > 1)
        {
          goto LABEL_63;
        }
      }

      else if (v36)
      {
        LODWORD(v39) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_184;
        }

        v39 = v39;
        if (v37 > 1)
        {
LABEL_63:
          if (v37 != 2)
          {
            if (v39)
            {
              goto LABEL_13;
            }

            goto LABEL_121;
          }

          v42 = *(v35 + 16);
          v41 = *(v35 + 24);
          v30 = __OFSUB__(v41, v42);
          v43 = v41 - v42;
          if (v30)
          {
            goto LABEL_182;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v39 = BYTE6(v17);
        if (v37 > 1)
        {
          goto LABEL_63;
        }
      }

LABEL_70:
      if (!v37)
      {
        v43 = BYTE6(v34);
LABEL_72:
        if (v39 != v43)
        {
          goto LABEL_13;
        }

        goto LABEL_79;
      }

      if (__OFSUB__(HIDWORD(v35), v35))
      {
        goto LABEL_181;
      }

      if (v39 != HIDWORD(v35) - v35)
      {
        goto LABEL_13;
      }

LABEL_79:
      if (v39 < 1)
      {
        goto LABEL_121;
      }

      if (v36 > 1)
      {
        if (v36 != 2)
        {
          memset(v102, 0, 14);
LABEL_113:
          sub_26C0BE04C(v102, v35, v34, &v101);
          if (!v101)
          {
            goto LABEL_13;
          }

          goto LABEL_121;
        }

        v82 = *(v16 + 24);
        v86 = *(v16 + 16);
        v50 = sub_26C1487BC();
        v81 = v19;
        if (v50)
        {
          v51 = v50;
          v52 = sub_26C1487EC();
          v53 = v86;
          if (__OFSUB__(v86, v52))
          {
            goto LABEL_195;
          }

          v54 = v86 - v52 + v51;
        }

        else
        {
          v54 = 0;
          v53 = v86;
        }

        if (__OFSUB__(v82, v53))
        {
          goto LABEL_194;
        }

        sub_26C1487DC();
        sub_26C0BE04C(v54, v35, v34, v102);
        v5 = a1;
        v2 = v89;
        v19 = v81;
        if ((v102[0] & 1) == 0)
        {
LABEL_13:
          sub_26C0BB9B0(v14, v15);
          sub_26C0BB9B0(v16, v17);
          sub_26C0BB9B0(v100, v19);
          v10 = v96;
          goto LABEL_14;
        }
      }

      else
      {
        if (!v36)
        {
          v102[0] = v16;
          LOWORD(v102[1]) = v17;
          BYTE2(v102[1]) = BYTE2(v17);
          BYTE3(v102[1]) = BYTE3(v17);
          BYTE4(v102[1]) = BYTE4(v17);
          BYTE5(v102[1]) = BYTE5(v17);
          goto LABEL_113;
        }

        if (v16 >> 32 < v16)
        {
          goto LABEL_193;
        }

        v56 = sub_26C1487BC();
        if (v56)
        {
          v83 = v56;
          v57 = sub_26C1487EC();
          if (__OFSUB__(v16, v57))
          {
            goto LABEL_196;
          }

          v58 = v16 - v57 + v83;
        }

        else
        {
          v58 = 0;
        }

        sub_26C1487DC();
        sub_26C0BE04C(v58, v35, v34, v102);
        v5 = a1;
        v2 = v89;
        if ((v102[0] & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_121:
      v59 = v5[4];
      v60 = v5[5];
      v61 = v19 >> 62;
      v62 = v60 >> 62;
      if (v19 >> 62 == 3)
      {
        v63 = 0;
        if (!v100 && v19 == 0xC000000000000000 && v60 >> 62 == 3)
        {
          v63 = 0;
          if (!v59 && v60 == 0xC000000000000000)
          {
            sub_26C0BB9B0(v14, v15);
            sub_26C0BB9B0(v16, v17);
            v64 = 0;
            v65 = 0xC000000000000000;
            goto LABEL_151;
          }
        }

LABEL_137:
        if (v62 > 1)
        {
          goto LABEL_131;
        }

        goto LABEL_138;
      }

      if (v61 > 1)
      {
        if (v61 == 2)
        {
          v70 = *(v100 + 16);
          v69 = *(v100 + 24);
          v30 = __OFSUB__(v69, v70);
          v63 = v69 - v70;
          if (v30)
          {
            goto LABEL_190;
          }

          goto LABEL_137;
        }

        v63 = 0;
        if (v62 > 1)
        {
          goto LABEL_131;
        }
      }

      else if (v61)
      {
        LODWORD(v63) = HIDWORD(v100) - v100;
        if (__OFSUB__(HIDWORD(v100), v100))
        {
          goto LABEL_189;
        }

        v63 = v63;
        if (v62 > 1)
        {
LABEL_131:
          if (v62 != 2)
          {
            if (v63)
            {
              goto LABEL_13;
            }

LABEL_150:
            sub_26C0BB9B0(v14, v15);
            sub_26C0BB9B0(v16, v17);
            v64 = v100;
            v65 = v19;
LABEL_151:
            sub_26C0BB9B0(v64, v65);
            v10 = v96;
            goto LABEL_152;
          }

          v67 = *(v59 + 16);
          v66 = *(v59 + 24);
          v30 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v30)
          {
            goto LABEL_186;
          }

          goto LABEL_140;
        }
      }

      else
      {
        v63 = BYTE6(v19);
        if (v62 > 1)
        {
          goto LABEL_131;
        }
      }

LABEL_138:
      if (!v62)
      {
        v68 = BYTE6(v60);
LABEL_140:
        if (v63 != v68)
        {
          goto LABEL_13;
        }

        goto LABEL_146;
      }

      if (__OFSUB__(HIDWORD(v59), v59))
      {
        goto LABEL_185;
      }

      if (v63 != HIDWORD(v59) - v59)
      {
        goto LABEL_13;
      }

LABEL_146:
      if (v63 < 1)
      {
        goto LABEL_150;
      }

      if (v61 > 1)
      {
        if (v61 != 2)
        {
          memset(v102, 0, 14);
LABEL_168:
          sub_26C0BE04C(v102, v59, v60, &v101);
          sub_26C0BB9B0(v14, v15);
          sub_26C0BB9B0(v16, v17);
          sub_26C0BB9B0(v100, v19);
          v10 = v96;
          if (!v101)
          {
            goto LABEL_14;
          }

          goto LABEL_152;
        }

        v84 = *(v100 + 24);
        v87 = *(v100 + 16);
        v71 = sub_26C1487BC();
        if (v71)
        {
          v72 = v71;
          v73 = sub_26C1487EC();
          v74 = v87;
          if (__OFSUB__(v87, v73))
          {
            goto LABEL_199;
          }

          v80 = v87 - v73 + v72;
        }

        else
        {
          v80 = 0;
          v74 = v87;
        }

        if (__OFSUB__(v84, v74))
        {
          goto LABEL_198;
        }

        sub_26C1487DC();
        v78 = v80;
      }

      else
      {
        if (!v61)
        {
          v102[0] = v100;
          LOWORD(v102[1]) = v19;
          BYTE2(v102[1]) = BYTE2(v19);
          BYTE3(v102[1]) = BYTE3(v19);
          BYTE4(v102[1]) = BYTE4(v19);
          BYTE5(v102[1]) = BYTE5(v19);
          goto LABEL_168;
        }

        if (v100 >> 32 < v100)
        {
          goto LABEL_197;
        }

        v75 = sub_26C1487BC();
        if (v75)
        {
          v85 = v75;
          v76 = sub_26C1487EC();
          if (__OFSUB__(v100, v76))
          {
            goto LABEL_200;
          }

          v77 = v100 - v76 + v85;
        }

        else
        {
          v77 = 0;
        }

        sub_26C1487DC();
        v78 = v77;
      }

      sub_26C0BE04C(v78, v59, v60, v102);
      sub_26C0BB9B0(v14, v15);
      sub_26C0BB9B0(v16, v17);
      sub_26C0BB9B0(v100, v19);
      v5 = a1;
      v2 = v89;
      v10 = v96;
      if ((v102[0] & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_152:
      if (v97 == (v5[6] & 1))
      {
        return v4;
      }

LABEL_14:
      v4 = (v4 + 1) & v98;
      if (((*(v99 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    if (v14)
    {
      v22 = 0;
    }

    else
    {
      v22 = v15 == 0xC000000000000000;
    }

    v24 = !v22 || v10 < 3;
    if (((v24 | v95) & 1) == 0)
    {
      v97 = v20;
      v25 = 0;
      v26 = 0xC000000000000000;
      goto LABEL_47;
    }

LABEL_37:
    v27 = 0;
    if (v10 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  return v4;
}

void *sub_26C0DA120()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AAB8, &qword_26C14CA70);
  v2 = *v0;
  v3 = sub_26C1490BC();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_26C0DA570(&v40, &v39))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 40 * v16;
      v18 = *(v2 + 56);
      v19 = *(v2 + 48) + 40 * v16;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v16 <<= 7;
      v26 = *(v18 + v16 + 80);
      v25 = *(v18 + v16 + 96);
      v27 = *(v18 + v16 + 64);
      *(v46 + 10) = *(v18 + v16 + 106);
      v45 = v26;
      v46[0] = v25;
      v44 = v27;
      v29 = *(v18 + v16);
      v28 = *(v18 + v16 + 16);
      v30 = *(v18 + v16 + 48);
      v42 = *(v18 + v16 + 32);
      v43 = v30;
      v40 = v29;
      v41 = v28;
      v31 = *(v4 + 48) + v17;
      *v31 = v20;
      *(v31 + 8) = v21;
      *(v31 + 16) = v22;
      *(v31 + 24) = v23;
      *(v31 + 32) = v24;
      v32 = (*(v4 + 56) + v16);
      v33 = v40;
      v34 = v41;
      v35 = v43;
      v32[2] = v42;
      v32[3] = v35;
      *v32 = v33;
      v32[1] = v34;
      v36 = v44;
      v37 = v45;
      v38 = v46[0];
      *(v32 + 106) = *(v46 + 10);
      v32[5] = v37;
      v32[6] = v38;
      v32[4] = v36;
      sub_26C0BBAA4(v21, v22);
      sub_26C0BBAA4(v23, v24);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void sub_26C0DA31C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AAA8, &qword_26C14B528);
  v26 = v0;
  v1 = *v0;
  v2 = sub_26C1490BC();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 64 + 8 * v5)
    {
      memmove(v4, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = *(v1 + 48) + 56 * v16;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v17 + 32);
        v23 = *(v17 + 40);
        LOBYTE(v17) = *(v17 + 48);
        v24 = *(*(v1 + 56) + 4 * v16);
        v25 = *(v3 + 48) + 56 * v16;
        *v25 = v18;
        *(v25 + 8) = v19;
        *(v25 + 16) = v20;
        *(v25 + 24) = v21;
        *(v25 + 32) = v22;
        *(v25 + 40) = v23;
        *(v25 + 48) = v17;
        *(*(v3 + 56) + 4 * v16) = v24;
        sub_26C0BBAA4(v18, v19);
        sub_26C0BBAA4(v20, v21);
        sub_26C0BBAA4(v22, v23);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v26 = v3;
  }
}

uint64_t sub_26C0DA508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AAB0, &qword_26C14B530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C0DA5DC(char a1)
{
  if (!a1)
  {
    return 0x393035782ELL;
  }

  if (a1 == 2)
  {
    return 0x6C6275507761722ELL;
  }

  sub_26C14908C();

  v2 = sub_26C14911C();
  MEMORY[0x26D69BC90](v2);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

unint64_t sub_26C0DA6D8()
{
  result = qword_28047AAC0;
  if (!qword_28047AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AAC0);
  }

  return result;
}

uint64_t sub_26C0DA72C(unsigned __int8 a1)
{
  if (a1 <= 0x14u)
  {
    if (!a1)
    {
      return 0x64696C61766E692ELL;
    }

    if (a1 == 20)
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x15u:
        return 0x7472656C612ELL;
      case 0x16u:
        return 0x616873646E61682ELL;
      case 0x17u:
        return 0xD000000000000010;
    }
  }

  sub_26C14908C();

  v2 = sub_26C14911C();
  MEMORY[0x26D69BC90](v2);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_26C0DA898()
{
  result = qword_28047AAC8;
  if (!qword_28047AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AAC8);
  }

  return result;
}

BOOL _s8SwiftTLS8TLSErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v11 = *a1;
      sub_26C0CF030(*a1, v2, 0);
      sub_26C0CF030(v5, v6, 0);
      return v11 == v5 && WORD1(v3) == WORD1(v5);
    }

    goto LABEL_21;
  }

  if (v4 != 1)
  {
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v5 != 1 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v12 = 1;
        sub_26C0CF030(1, 0, 2);
        return v12;
      case 2:
        if (v7 != 2 || v5 != 2 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 2;
        goto LABEL_345;
      case 3:
        if (v7 != 2 || v5 != 3 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 3;
        goto LABEL_345;
      case 4:
        if (v7 != 2 || v5 != 4 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 4;
        goto LABEL_345;
      case 5:
        if (v7 != 2 || v5 != 5 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 5;
        goto LABEL_345;
      case 6:
        if (v7 != 2 || v5 != 6 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 6;
        goto LABEL_345;
      case 7:
        if (v7 != 2 || v5 != 7 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 7;
        goto LABEL_345;
      case 8:
        if (v7 != 2 || v5 != 8 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 8;
        goto LABEL_345;
      case 9:
        if (v7 != 2 || v5 != 9 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 9;
        goto LABEL_345;
      case 10:
        if (v7 != 2 || v5 != 10 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 10;
        goto LABEL_345;
      case 11:
        if (v7 != 2 || v5 != 11 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 11;
        goto LABEL_345;
      case 12:
        if (v7 != 2 || v5 != 12 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 12;
        goto LABEL_345;
      case 13:
        if (v7 != 2 || v5 != 13 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 13;
        goto LABEL_345;
      case 14:
        if (v7 != 2 || v5 != 14 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 14;
        goto LABEL_345;
      case 15:
        if (v7 != 2 || v5 != 15 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 15;
        goto LABEL_345;
      case 16:
        if (v7 != 2 || v5 != 16 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 16;
        goto LABEL_345;
      case 17:
        if (v7 != 2 || v5 != 17 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 17;
        goto LABEL_345;
      case 18:
        if (v7 != 2 || v5 != 18 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 18;
        goto LABEL_345;
      case 19:
        if (v7 != 2 || v5 != 19 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 19;
        goto LABEL_345;
      case 20:
        if (v7 != 2 || v5 != 20 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 20;
        goto LABEL_345;
      case 21:
        if (v7 != 2 || v5 != 21 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 21;
        goto LABEL_345;
      case 22:
        if (v7 != 2 || v5 != 22 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 22;
        goto LABEL_345;
      case 23:
        if (v7 != 2 || v5 != 23 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 23;
        goto LABEL_345;
      case 24:
        if (v7 != 2 || v5 != 24 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 24;
        goto LABEL_345;
      case 25:
        if (v7 != 2 || v5 != 25 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 25;
        goto LABEL_345;
      case 26:
        if (v7 != 2 || v5 != 26 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 26;
        goto LABEL_345;
      case 27:
        if (v7 != 2 || v5 != 27 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 27;
        goto LABEL_345;
      case 28:
        if (v7 != 2 || v5 != 28 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 28;
        goto LABEL_345;
      case 29:
        if (v7 != 2 || v5 != 29 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 29;
        goto LABEL_345;
      case 30:
        if (v7 != 2 || v5 != 30 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 30;
        goto LABEL_345;
      case 31:
        if (v7 != 2 || v5 != 31 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 31;
        goto LABEL_345;
      case 32:
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        if (v5 != 32 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 32;
        goto LABEL_345;
      case 33:
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        if (v5 != 33 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 33;
        goto LABEL_345;
      case 34:
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        if (v5 != 34 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 34;
        goto LABEL_345;
      case 35:
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        if (v5 != 35 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 35;
        goto LABEL_345;
      case 36:
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        if (v5 != 36 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 36;
        goto LABEL_345;
      case 37:
        if (v7 != 2)
        {
          goto LABEL_21;
        }

        if (v5 != 37 || v6 != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 37;
        goto LABEL_345;
      default:
        if (v7 != 2 || (v6 | v5) != 0)
        {
          goto LABEL_21;
        }

        sub_26C0CF030(*a1, v2, 2);
        v14 = 0;
LABEL_345:
        sub_26C0CF030(v14, 0, 2);
        v12 = 1;
        break;
    }

    return v12;
  }

  if (v7 != 1)
  {

LABEL_21:
    sub_26C0CF018(v5, v6, v7);
    sub_26C0CF030(v3, v2, v4);
    sub_26C0CF030(v5, v6, v7);
    return 0;
  }

  if (v3 != v5 || v2 != v6)
  {
    v9 = sub_26C14912C();
    sub_26C0CF018(v5, v6, 1);
    sub_26C0CF018(v3, v2, 1);
    sub_26C0CF030(v3, v2, 1);
    sub_26C0CF030(v5, v6, 1);
    return v9 & 1;
  }

  v12 = 1;
  sub_26C0CF018(*a1, v2, 1);
  sub_26C0CF018(v3, v2, 1);
  sub_26C0CF030(v3, v2, 1);
  sub_26C0CF030(v3, v2, 1);
  return v12;
}

uint64_t get_enum_tag_for_layout_string_8SwiftTLS8TLSErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26C0DB118(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C0DB160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C0DB1A4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_26C0DB264(uint64_t a1)
{
  result = type metadata accessor for Curve25519EphemeralKey(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for P384EphemeralKey(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for X25519MLKEM768EphemeralKey(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26C0DB374(uint64_t a1)
{
  result = sub_26C148B0C();
  if (v2 <= 0x3F)
  {
    result = sub_26C148EDC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_26C0DB578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C0DB5E8()
{
  v0 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26C148E4C();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for P384EphemeralKey(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C148ACC();
  v27 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Curve25519EphemeralKey(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0DCE4C(v29, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v23 = type metadata accessor for Curve25519EphemeralKey;
    sub_26C0DD9E4(v17, v14, type metadata accessor for Curve25519EphemeralKey);
    sub_26C148AEC();
    v20 = sub_26C148AAC();
    (*(v27 + 8))(v11, v9);
    v21 = v14;
LABEL_6:
    v22 = v23;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v23 = type metadata accessor for X25519MLKEM768EphemeralKey;
    sub_26C0DD9E4(v17, v2, type metadata accessor for X25519MLKEM768EphemeralKey);
    v24 = &v2[*(v0 + 24)];
    v20 = *v24;
    sub_26C0BBAA4(*v24, *(v24 + 1));
    v21 = v2;
    goto LABEL_6;
  }

  sub_26C0DD9E4(v17, v8, type metadata accessor for P384EphemeralKey);
  v19 = sub_26C148E5C();
  v20 = MEMORY[0x26D69BB70](v19);
  (*(v28 + 8))(v5, v3);
  v21 = v8;
  v22 = type metadata accessor for P384EphemeralKey;
LABEL_7:
  sub_26C0DDA4C(v21, v22);
  return v20;
}

uint64_t sub_26C0DB980@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_26C0DE118(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_26C0DE1CC(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_26C14889C();
    v15 = v14;
    result = sub_26C0BB9B0(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_26C0DBAC8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = a3 - a2;
    }

    else
    {
      v4 = 0;
    }

    result = sub_26C0D4E78(0, v4, a2, a3);
    if (v3 && result < v3)
    {
      v3 = v4;
      if ((v4 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      __break(1u);
    }

    if (v4 >= v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0DBB54(uint64_t a1, uint64_t a2, unint64_t a3, _OWORD *a4)
{
  v38 = a4;
  v5 = v4;
  v42 = a3;
  v37 = a1;
  v7 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for P384EphemeralKey(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C148BDC();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = type metadata accessor for Curve25519EphemeralKey(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0DCE4C(v5, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_26C0DD9E4(v24, v21, type metadata accessor for Curve25519EphemeralKey);
    v26 = v42;
    v28 = v39;
    sub_26C0DCF58(a2, v42, &v40, MEMORY[0x277CC5208], MEMORY[0x277CC51F8], MEMORY[0x277CC5210], v18);
    sub_26C0DDA4C(v21, type metadata accessor for Curve25519EphemeralKey);
    if (!v28)
    {
      (*(v35 + 32))(v37, v18, v36);
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_26C0DD9E4(v24, v9, type metadata accessor for X25519MLKEM768EphemeralKey);
    v29 = v39;
    v30 = sub_26C0DBF94(v37, a2, v42, &v40);
    if (!v29)
    {
      a2 = v30;
      sub_26C0DDA4C(v9, type metadata accessor for X25519MLKEM768EphemeralKey);
      return a2;
    }

    sub_26C0DDA4C(v9, type metadata accessor for X25519MLKEM768EphemeralKey);
    goto LABEL_10;
  }

  sub_26C0DD9E4(v24, v12, type metadata accessor for P384EphemeralKey);
  v26 = v42;
  v27 = v39;
  sub_26C0DCF58(a2, v42, &v40, MEMORY[0x277CC54F8], MEMORY[0x277CC54F0], MEMORY[0x277CC5500], v16);
  sub_26C0DDA4C(v12, type metadata accessor for P384EphemeralKey);
  if (v27)
  {
LABEL_10:
    v31 = v41;
    v32 = v38;
    *v38 = v40;
    *(v32 + 16) = v31;
    return a2;
  }

  (*(v35 + 32))(v37, v16, v36);
LABEL_7:
  sub_26C0BBAA4(a2, v26);
  return a2;
}

uint64_t sub_26C0DBF94(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v68 = a1;
  v70 = sub_26C148BDC();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v71 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_26C148CCC();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v74 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C148F1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  *&v77 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_26C1489AC();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v80 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C148B7C();
  v78 = *(v15 - 8);
  v79 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  *&v82 = &v58 - v19;
  v20 = sub_26C148ACC();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  v27 = &v58 - v26;
  v28 = a3 >> 62;
  v73 = v12;
  if ((a3 >> 62) > 1)
  {
    v29 = 0;
    if (v28 != 2)
    {
      goto LABEL_10;
    }

    v31 = *(a2 + 16);
    v30 = *(a2 + 24);
    v29 = v30 - v31;
    if (!__OFSUB__(v30, v31))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v28)
  {
    v29 = BYTE6(a3);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29 = HIDWORD(a2) - a2;
LABEL_10:
  v72 = v11;
  v91 = v25;
  v81 = result;
  result = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v32 = *(v6 + *(result + 28));
  v33 = *(v6 + *(result + 32));
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v29 < v35)
  {
    *a4 = xmmword_26C14B8C0;
    *(a4 + 16) = 2;
    v84 = xmmword_26C14B8C0;
    v85 = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return a3;
  }

  v65 = v23;
  sub_26C0BBAA4(a2, a3);
  sub_26C0DB980(v33, a2, a3, &v84);
  v36 = v84;
  sub_26C0BBAA4(a2, a3);
  sub_26C0DDE1C(v33, a2, a3, &v84);
  a3 = *(&v84 + 1);
  v37 = v84;
  sub_26C0BBAA4(v84, *(&v84 + 1));
  v38 = v27;
  v39 = v83;
  sub_26C148ABC();
  if (v39)
  {

    v83 = xmmword_26C14A900;
    v84 = xmmword_26C14A900;
    v85 = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v37, a3);
    sub_26C0BB9B0(v36, *(&v36 + 1));
    *a4 = v83;
    *(a4 + 16) = 2;
    return a3;
  }

  v63 = a3;
  *&v83 = v36 >> 64;
  v64 = v36;
  v40 = v82;
  sub_26C148ADC();
  (*(v78 + 16))(v18, v40, v79);
  sub_26C0DDAAC();
  sub_26C14899C();
  *&v84 = v64;
  *(&v84 + 1) = v83;
  sub_26C0BBAA4(v64, v83);
  sub_26C0BE710();
  sub_26C148F0C();
  sub_26C148EEC();
  v62 = v38;
  v41 = sub_26C148CBC();
  v89 = xmmword_26C14A1B0;
  v90 = 0;
  MEMORY[0x28223BE20](v41);
  *(&v58 - 2) = &v89;
  v42 = sub_26C148B8C();
  MEMORY[0x28223BE20](v42);
  *(&v58 - 2) = &v89;
  sub_26C14898C();
  v61 = 0;
  result = v90;
  v43 = *(&v89 + 1) >> 62;
  if ((*(&v89 + 1) >> 62) > 1)
  {
    v46 = 0;
    v44 = v65;
    v45 = MEMORY[0x277CC9318];
    if (v43 == 2)
    {
      v46 = *(v89 + 24);
    }
  }

  else
  {
    v44 = v65;
    v45 = MEMORY[0x277CC9318];
    if (v43)
    {
      v46 = v89 >> 32;
    }

    else
    {
      v46 = BYTE14(v89);
    }
  }

  if (v46 >= v90)
  {
    v60 = sub_26C14889C();
    v59 = v47;
    v48 = sub_26C148CAC();
    v50 = v49;
    sub_26C148AEC();
    v51 = sub_26C148AAC();
    v53 = v52;
    v54 = *(v91 + 8);
    v91 += 8;
    v65 = v54;
    v54(v44, v81);
    v88[0] = v48;
    v88[1] = v50;
    v86 = v45;
    v87 = MEMORY[0x277CC9300];
    *&v84 = v51;
    *(&v84 + 1) = v53;
    v55 = __swift_project_boxed_opaque_existential_1(&v84, v45);
    v57 = *v55;
    v56 = v55[1];
    sub_26C0BBAA4(v48, v50);
    sub_26C0BBAA4(v51, v53);
    sub_26C135114(v57, v56, v88);
    sub_26C0BB9B0(v51, v53);
    sub_26C0BB9B0(v48, v50);
    __swift_destroy_boxed_opaque_existential_1(&v84);
    a3 = v88[0];
    *&v84 = v60;
    *(&v84 + 1) = v59;
    sub_26C148BAC();
    sub_26C0BB9B0(v64, v83);
    sub_26C0BB9B0(v37, v63);
    (*(v69 + 8))(v71, v70);
    (*(v66 + 8))(v74, v67);
    (*(v75 + 8))(v80, v76);
    (*(v78 + 8))(v82, v79);
    sub_26C0BB9B0(v89, *(&v89 + 1));
    (*(v73 + 8))(v77, v72);
    v65(v62, v81);
    return a3;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26C0DCAFC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v5 = v4;
  v9 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for P384EphemeralKey(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Curve25519EphemeralKey(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0DCE4C(v5, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_26C0DD9E4(v20, v11, type metadata accessor for X25519MLKEM768EphemeralKey);
      v28 = v35;
      sub_26C0DD254(a1, a2, &v33, a4);
      if (!v28)
      {
        return sub_26C0DDA4C(v11, type metadata accessor for X25519MLKEM768EphemeralKey);
      }

      result = sub_26C0DDA4C(v11, type metadata accessor for X25519MLKEM768EphemeralKey);
LABEL_9:
      v29 = v34;
      v30 = v32;
      *v32 = v33;
      *(v30 + 16) = v29;
      return result;
    }

    v22 = type metadata accessor for P384EphemeralKey;
    sub_26C0DD9E4(v20, v14, type metadata accessor for P384EphemeralKey);
    v23 = v35;
    sub_26C0DCF58(a1, a2, &v33, MEMORY[0x277CC54F8], MEMORY[0x277CC54F0], MEMORY[0x277CC5500], a4);
    v24 = v23;
    v25 = v14;
  }

  else
  {
    v22 = type metadata accessor for Curve25519EphemeralKey;
    sub_26C0DD9E4(v20, v17, type metadata accessor for Curve25519EphemeralKey);
    v26 = v35;
    sub_26C0DCF58(a1, a2, &v33, MEMORY[0x277CC5208], MEMORY[0x277CC51F8], MEMORY[0x277CC5210], a4);
    v24 = v26;
    v25 = v17;
  }

  result = sub_26C0DDA4C(v25, v22);
  if (v24)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_26C0DCE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C0DCF58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v27 = a6;
  *&v28 = a5;
  v24[1] = a7;
  v12 = sub_26C148B7C();
  v26 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v24 - v16;
  v18 = a4(0);
  v25 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = v24 - v19;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  sub_26C0BBAA4(a1, a2);
  (v28)(&v29, MEMORY[0x277CC9318], MEMORY[0x277CC9300]);
  if (v7)
  {

    v28 = xmmword_26C14A900;
    v29 = xmmword_26C14A900;
    v30 = 2;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a3 = v28;
    *(a3 + 16) = 2;
  }

  else
  {
    v22 = v26;
    *&v28 = v18;
    (v27)(v20);
    v23 = (v25 + 8);
    (*(v22 + 16))(v15, v17, v12);
    sub_26C0DDAAC();
    sub_26C148BAC();
    (*(v22 + 8))(v17, v12);
    return (*v23)(v20, v28);
  }

  return result;
}

uint64_t sub_26C0DD254@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a3;
  v56 = a4;
  v8 = sub_26C148BDC();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  *&v63 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C1489AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v65 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C148B7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  *&v68 = &v53 - v17;
  v18 = sub_26C148ACC();
  result = MEMORY[0x28223BE20](v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2 >> 62;
  v64 = v13;
  v62 = v14;
  if ((a2 >> 62) > 1)
  {
    v24 = 0;
    if (v23 != 2)
    {
      goto LABEL_10;
    }

    v26 = *(a1 + 16);
    v25 = *(a1 + 24);
    v24 = v25 - v26;
    if (!__OFSUB__(v25, v26))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v23)
  {
    v24 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = HIDWORD(a1) - a1;
LABEL_10:
  v59 = v10;
  v60 = v11;
  v66 = v20;
  v67 = result;
  result = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  v27 = *(v4 + *(result + 28));
  v28 = *(v4 + *(result + 36));
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (v29)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v24 < v30)
  {
    v31 = v73;
    *v73 = xmmword_26C14B8C0;
    *(v31 + 16) = 2;
    v71 = xmmword_26C14B8C0;
    LOBYTE(v72) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  sub_26C0BBAA4(a1, a2);
  sub_26C0DB980(v28, a1, a2, &v71);
  v32 = v71;
  sub_26C0BBAA4(a1, a2);
  sub_26C0DDE1C(v28, a1, a2, &v71);
  v33 = v71;
  sub_26C0BBAA4(v71, *(&v71 + 1));
  v34 = v22;
  sub_26C148ABC();
  if (v5)
  {

    v68 = xmmword_26C14A900;
    v71 = xmmword_26C14A900;
    LOBYTE(v72) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v33, *(&v33 + 1));
    result = sub_26C0BB9B0(v32, *(&v32 + 1));
    v35 = v73;
    *v73 = v68;
    *(v35 + 16) = 2;
    return result;
  }

  v54 = v32 >> 64;
  v55 = v32;
  v36 = v68;
  sub_26C148ADC();
  v37 = v62;
  v38 = *(v62 + 16);
  v39 = v64;
  v53 = 0;
  v38(v61, v36, v64);
  sub_26C0DDAAC();
  sub_26C14899C();
  v40 = v55;
  v41 = v54;
  *&v71 = v55;
  *(&v71 + 1) = v54;
  sub_26C0BE710();
  v42 = v53;
  v43 = sub_26C148EBC();
  if (v42)
  {

    v63 = xmmword_26C14A900;
    v71 = xmmword_26C14A900;
    LOBYTE(v72) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v40, v41);
    sub_26C0BB9B0(v33, *(&v33 + 1));
    (*(v60 + 8))(v65, v59);
    (*(v37 + 8))(v68, v39);
    v44 = v73;
    *v73 = v63;
    *(v44 + 16) = 2;
    return (*(v66 + 8))(v34, v67);
  }

  v71 = xmmword_26C14A1B0;
  v72 = 0;
  MEMORY[0x28223BE20](v43);
  *(&v53 - 2) = &v71;
  v45 = sub_26C148B8C();
  MEMORY[0x28223BE20](v45);
  *(&v53 - 2) = &v71;
  sub_26C14898C();
  result = v72;
  v46 = *(&v71 + 1) >> 62;
  v47 = v60;
  if ((*(&v71 + 1) >> 62) > 1)
  {
    v49 = 0;
    v48 = v55;
    if (v46 == 2)
    {
      v49 = *(v71 + 24);
    }
  }

  else
  {
    v48 = v55;
    if (v46)
    {
      v49 = v71 >> 32;
    }

    else
    {
      v49 = BYTE14(v71);
    }
  }

  if (v49 >= v72)
  {
    v50 = sub_26C14889C();
    v52 = v51;
    v69 = v50;
    v70 = v51;
    sub_26C0BBAA4(v50, v51);
    sub_26C148BAC();
    sub_26C0BB9B0(v48, v54);
    sub_26C0BB9B0(v50, v52);
    sub_26C0BB9B0(v33, *(&v33 + 1));
    (*(v57 + 8))(v63, v58);
    (*(v47 + 8))(v65, v59);
    (*(v37 + 8))(v68, v64);
    sub_26C0BB9B0(v71, *(&v71 + 1));
    return (*(v66 + 8))(v34, v67);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26C0DD9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0DDA4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26C0DDAAC()
{
  result = qword_28047AAD0;
  if (!qword_28047AAD0)
  {
    sub_26C148B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AAD0);
  }

  return result;
}

double sub_26C0DDB04@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26C148ACC();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26C148F1C();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C148EDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for X25519MLKEM768EphemeralKey(0);
  *(a1 + v12[7]) = 32;
  *(a1 + v12[8]) = 1184;
  *(a1 + v12[9]) = 1088;
  sub_26C148AFC();
  sub_26C148ECC();
  (*(v9 + 32))(a1 + v12[5], v11, v8);
  sub_26C148EAC();
  v13 = sub_26C148EFC();
  v15 = v14;
  (*(v5 + 8))(v7, v23);
  sub_26C148AEC();
  v16 = sub_26C148AAC();
  v18 = v17;
  (*(v24 + 8))(v4, v25);
  *&v27[0] = v13;
  *(&v27[0] + 1) = v15;
  v26[3] = MEMORY[0x277CC9318];
  v26[4] = MEMORY[0x277CC9300];
  v26[0] = v16;
  v26[1] = v18;
  v19 = __swift_project_boxed_opaque_existential_1(v26, MEMORY[0x277CC9318]);
  v20 = *v19;
  v21 = v19[1];
  sub_26C0BBAA4(v13, v15);
  sub_26C0BBAA4(v16, v18);
  sub_26C135114(v20, v21, v27);
  sub_26C0BB9B0(v16, v18);
  sub_26C0BB9B0(v13, v15);
  __swift_destroy_boxed_opaque_existential_1(v26);
  result = *v27;
  *(a1 + v12[6]) = v27[0];
  return result;
}

unint64_t sub_26C0DDE1C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_26C0DE118(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_26C0DE1CC(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = sub_26C14889C();
    v16 = v15;
    result = sub_26C0BB9B0(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

uint64_t sub_26C0DDF88(uint64_t a1, uint64_t a2)
{
  v3[3] = MEMORY[0x277D838B0];
  v3[4] = MEMORY[0x277CC9C18];
  v3[0] = a1;
  v3[1] = a2;
  __swift_project_boxed_opaque_existential_1(v3, MEMORY[0x277D838B0]);
  sub_26C14888C();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_26C0DDFF0@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  switch(v3)
  {
    case 4588:
      sub_26C0DDB04(a2);
      v4 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
      goto LABEL_7;
    case 29:
      sub_26C148AFC();
      v4 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
      goto LABEL_7;
    case 24:
      sub_26C148E6C();
      v4 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      v5 = *(*(v4 - 8) + 56);
      v6 = a2;
      v7 = 0;
      v8 = v4;
      goto LABEL_9;
  }

  v9 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v5 = *(*(v9 - 8) + 56);
  v8 = v9;
  v6 = a2;
  v7 = 1;
LABEL_9:

  return v5(v6, v7, 1, v8);
}

uint64_t sub_26C0DE118(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0DE1CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_26C0DE248@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = v2[2];
  v5 = result + a1;
  if (__OFADD__(result, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = *v2;
  v8 = v2[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 == 2)
    {
      if (*(v7 + 24) >= v5)
      {
        goto LABEL_7;
      }
    }

    else if (v5 <= 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    result = 0;
    v13 = 0;
    v11 = 0xF000000000000000;
LABEL_17:
    *a2 = result;
    a2[1] = v11;
    a2[2] = v13;
    return result;
  }

  if (v9)
  {
    v10 = v7 >> 32;
  }

  else
  {
    v10 = BYTE6(v8);
  }

  if (v10 < v5)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v5 >= result)
  {
    result = sub_26C14889C();
    v2[2] = v5;
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 == 2)
      {
        v13 = *(result + 16);
      }

      else
      {
        v13 = 0;
      }
    }

    else if (v12)
    {
      v13 = result;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_26C0DE32C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *, void *)@<X2>, uint64_t *a4@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  sub_26C0BBAA4(*a1, v9);
  a3(&v22, a1, v20);
  if (v4)
  {
    sub_26C0BB9B0(*a1, a1[1]);
    v12 = v20[0];
    v13 = v20[1];
    v14 = v21;
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;
    v22 = v12;
    v23 = v13;
    LOBYTE(v24) = v14;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  else
  {
    v16 = v23;
    if (v23 >> 60 == 15)
    {
      v17 = v24;
      v18 = v22;
      sub_26C0BB9B0(*a1, a1[1]);
      result = sub_26C0BB344(v18, v16);
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
      *a4 = v18;
      a4[1] = v16;
      a4[2] = v17;
    }

    else
    {
      result = sub_26C0BB9B0(v10, v9);
      v19 = v24;
      *a4 = v22;
      a4[1] = v16;
      a4[2] = v19;
    }
  }

  return result;
}

uint64_t sub_26C0DE490@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *, void *)@<X2>, uint64_t *a4@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  sub_26C0BBAA4(*a1, v9);
  a3(&v22, a1, v20);
  if (v4)
  {
    sub_26C0BB9B0(*a1, a1[1]);
    v12 = v20[0];
    v13 = v20[1];
    v14 = v21;
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;
    v22 = v12;
    v23 = v13;
    LOBYTE(v24) = v14;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  else
  {
    v16 = v23;
    if (v23 >> 60 == 15)
    {
      v17 = v24;
      v18 = v22;
      sub_26C0BB9B0(*a1, a1[1]);
      result = sub_26C0BB344(v18, v16);
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
      *a4 = v18;
      a4[1] = v16;
      a4[2] = v17;
    }

    else
    {
      result = sub_26C0BB9B0(v10, v9);
      v19 = v24;
      *a4 = v22;
      a4[1] = v16;
      a4[2] = v19;
    }
  }

  return result;
}

uint64_t sub_26C0DE5F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  sub_26C0BBAA4(*a1, v7);
  sub_26C0DFED4(v20, &v22);
  if (v3)
  {
    sub_26C0BB9B0(*a1, a1[1]);
    v10 = v20[0];
    v11 = v20[1];
    v12 = v21;
    *a1 = v8;
    a1[1] = v7;
    a1[2] = v9;
    *&v22 = v10;
    *(&v22 + 1) = v11;
    LOBYTE(v23) = v12;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  else
  {
    v26 = 0;
    v14 = v25;
    if (v25)
    {
      result = sub_26C0BB9B0(v8, v7);
      v15 = v23;
      *a3 = v22;
      *(a3 + 16) = v15;
      *(a3 + 32) = v24;
      *(a3 + 48) = v14;
    }

    else
    {
      v18 = *(&v24 + 1);
      v19 = v24;
      v16 = v23;
      v17 = v22;
      sub_26C0BB9B0(*a1, a1[1]);
      result = sub_26C0E091C(v17, *(&v17 + 1), v16, *(&v16 + 1), v19, v18, 0);
      *a1 = v8;
      a1[1] = v7;
      a1[2] = v9;
      *a3 = v17;
      *(a3 + 16) = v16;
      *(a3 + 32) = v19;
      *(a3 + 40) = v18;
      *(a3 + 48) = 0;
    }
  }

  return result;
}

uint64_t ByteBuffer.init(data:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v4 = result;
    if (!v3)
    {
      v4 = 0;
    }

    goto LABEL_4;
  }

  v4 = 0;
  if (v3 != 2)
  {
LABEL_4:
    a3[2] = v4;
    return result;
  }

  a3[2] = *(result + 16);
  return result;
}

uint64_t ByteBuffer.readableBytesView.getter()
{
  v1 = *v0;
  v2 = v0[1];
  result = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v1 >> 32;
  }

  else
  {
    v5 = BYTE6(v2);
  }

  if (v5 >= result)
  {
    return sub_26C14889C();
  }

  __break(1u);
  return result;
}

void sub_26C0DE7D4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = 0;
      v7 = BYTE6(v2);
      goto LABEL_9;
    }

    v6 = v3;
    v7 = v3 >> 32;
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
LABEL_7:
    sub_26C0BBAA4(*a1, v2);
    goto LABEL_9;
  }

  v7 = 0;
  v6 = 0;
LABEL_9:
  if (v7 < v4 || v7 < v6)
  {
    __break(1u);
    goto LABEL_32;
  }

  v9 = sub_26C14889C();
  v11 = v10;
  sub_26C1488CC();
  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v13)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v13 == 2)
  {
    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    sub_26C0BB9B0(v9, v12);
    sub_26C0BB9B0(v3, v2);
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    sub_26C0BB9B0(v9, v12);
    sub_26C0BB9B0(v3, v2);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      goto LABEL_23;
    }

LABEL_32:
    __break(1u);
    return;
  }

LABEL_22:
  sub_26C0BB9B0(v9, v11);
  sub_26C0BB9B0(v3, v2);
LABEL_23:
  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v20 = *(v16 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v19 = BYTE6(v17);
    v20 = v16 >> 32;
    if (!v18)
    {
      v20 = v19;
    }
  }

  a1[2] = v20;
}

Swift::Int __swiftcall ByteBuffer.writeBytes(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  sub_26C14888C();
  return *(a1._rawValue + 2);
}

void sub_26C0DE9B4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  sub_26C0BBAA4(*a1, v9);
  sub_26C0E0CCC(a1, a2, &v33, &v35);
  if (v4)
  {
    sub_26C0BB9B0(*a1, a1[1]);
    v12 = v33;
    v13 = v34;
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;
    *a3 = v12;
    *(a3 + 16) = v13;
    v24 = v12;
    LOBYTE(v25) = v13;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }

  else
  {
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v26 = v37;
    v27 = v38;
    v28 = v39;
    v29 = v40;
    v24 = v35;
    v25 = v36;
    if (sub_26C0CF284(&v24) == 1)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      v22[6] = v41;
      v22[7] = v42;
      v23 = v43;
      v22[2] = v37;
      v22[3] = v38;
      v22[4] = v39;
      v22[5] = v40;
      v22[0] = v35;
      v22[1] = v36;
      sub_26C0E08B4(v22);
      *a1 = v10;
      a1[1] = v9;
      a1[2] = v11;
      v14 = v42;
      *(a4 + 96) = v41;
      *(a4 + 112) = v14;
      *(a4 + 128) = v43;
      v15 = v38;
      *(a4 + 32) = v37;
      *(a4 + 48) = v15;
      v16 = v40;
      *(a4 + 64) = v39;
      *(a4 + 80) = v16;
      v17 = v36;
      *a4 = v35;
      *(a4 + 16) = v17;
    }

    else
    {
      sub_26C0BB9B0(v10, v9);
      v18 = v42;
      *(a4 + 96) = v41;
      *(a4 + 112) = v18;
      *(a4 + 128) = v43;
      v19 = v38;
      *(a4 + 32) = v37;
      *(a4 + 48) = v19;
      v20 = v40;
      *(a4 + 64) = v39;
      *(a4 + 80) = v20;
      v21 = v36;
      *a4 = v35;
      *(a4 + 16) = v21;
      nullsub_1();
    }
  }
}

uint64_t *sub_26C0DEB70(uint64_t *result, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v7 = 0;
    if (v6 == 2)
    {
      v7 = *(v4 + 24);
    }
  }

  else
  {
    v7 = BYTE6(v5);
    if (v6)
    {
      v7 = v4 >> 32;
    }
  }

  if (v7 < a2)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v6 > 1)
  {
    v8 = 0;
    if (v6 == 2)
    {
      v8 = *(v4 + 16);
    }
  }

  else if (v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 > a2)
  {
    goto LABEL_60;
  }

  v9 = *result;
  v10 = result[1];
  result = result[2];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    if (v11)
    {
      v12 = v9 >> 32;
    }

    else
    {
      v12 = BYTE6(v10);
    }

    if (v11)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v12 < result || v12 < v13)
  {
    goto LABEL_61;
  }

  result = sub_26C14889C();
  v15 = result;
  v16 = v14;
  v17 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(v14);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v17 != 2)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v20 = result[2];
  v19 = result[3];
  v21 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (v21)
  {
    __break(1u);
LABEL_34:
    LODWORD(v18) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    v18 = v18;
  }

LABEL_37:
  v22 = *v2;
  v23 = v2[1];
  v24 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    v25 = BYTE6(v23);
    v26 = v22 >> 32;
    if (!v24)
    {
      v26 = v25;
    }

    goto LABEL_43;
  }

  if (v24 == 2)
  {
    v26 = *(v22 + 24);
LABEL_43:
    v27 = v26 - a2;
    if (v27 < v18)
    {
      v18 = v27;
    }

    goto LABEL_48;
  }

  if (v18 >= -a2)
  {
    v18 = -a2;
  }

LABEL_48:
  if (v18 + a2 < a2)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_26C0E04A4(result, v14, v2, a2, v18 + a2);
  if (v17 <= 1)
  {
    if (!v17)
    {
      sub_26C0BB9B0(v15, v16);
      return BYTE6(v16);
    }

LABEL_56:
    result = sub_26C0BB9B0(v15, v16);
    if (!__OFSUB__(HIDWORD(v15), v15))
    {
      return (HIDWORD(v15) - v15);
    }

    goto LABEL_64;
  }

  if (v17 != 2)
  {
    sub_26C0BB9B0(v15, v16);
    return 0;
  }

  v29 = v15[2];
  v28 = v15[3];
  sub_26C0BB9B0(v15, v16);
  result = (v28 - v29);
  if (__OFSUB__(v28, v29))
  {
    __break(1u);
    goto LABEL_56;
  }

  return result;
}

uint64_t sub_26C0DEDBC(uint64_t a1)
{
  result = v1[2];
  v4 = result + a1;
  if (!__OFADD__(result, a1))
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 == 2)
      {
        if (*(v5 + 24) >= v4)
        {
          goto LABEL_7;
        }
      }

      else if (v4 <= 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(v6);
      }

      if (v8 >= v4)
      {
LABEL_7:
        if (v4 >= result)
        {
          v9 = sub_26C14889C();
          result = sub_26C148778(v9, v10);
          v1[2] = v4;
          return result;
        }

        goto LABEL_15;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26C0DEE58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26C1365D4();
  if ((result & 0x10000) != 0)
  {
    goto LABEL_17;
  }

  v8 = result;
  result = a1[2];
  v9 = result + v8;
  if (__OFADD__(result, v8))
  {
    __break(1u);
    goto LABEL_35;
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      if (*(v10 + 24) >= v9)
      {
        goto LABEL_8;
      }
    }

    else if (v9 < 1)
    {
      goto LABEL_8;
    }

LABEL_17:
    *a3 = xmmword_26C14A540;
    *(a3 + 16) = 0;
    return result;
  }

  if (v12)
  {
    v13 = v10 >> 32;
  }

  else
  {
    v13 = BYTE6(v11);
  }

  if (v13 < v9)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (v9 < result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v14 = sub_26C14889C();
  a1[2] = v9;
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    v17 = 0;
    if (v16 == 2)
    {
      v17 = *(v14 + 16);
    }
  }

  else
  {
    v17 = v14;
    if (!v16)
    {
      v17 = 0;
    }
  }

  v31 = v14;
  v32 = v15;
  v33 = v17;
  sub_26C13FB64(&v31, &v27, &v29);
  if (v3)
  {
    v18 = v28;
    *a2 = v27;
    *(a2 + 16) = v18;
    v19 = v31;
    v20 = v32;
    return sub_26C0BB9B0(v19, v20);
  }

  result = v31;
  v21 = v32;
  v22 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v31 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v31 >> 32;
  }

  else
  {
    v23 = BYTE6(v32);
  }

  if (!__OFSUB__(v23, v33))
  {
    if (v23 == v33)
    {
      result = sub_26C0BB9B0(v31, v32);
      v24 = v30;
      *a3 = v29;
      *(a3 + 16) = v24;
      return result;
    }

    *a2 = xmmword_26C149860;
    *(a2 + 16) = 2;
    v27 = xmmword_26C149860;
    v28 = 2;
    v25 = result;
    v26 = v21;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v29, *(&v29 + 1));
    v20 = v26;
    v19 = v25;
    return sub_26C0BB9B0(v19, v20);
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_26C0DF050@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26C1365D4();
  if ((result & 0x10000) != 0)
  {
    goto LABEL_16;
  }

  v7 = result;
  result = a1[2];
  v8 = result + v7;
  if (__OFADD__(result, v7))
  {
    __break(1u);
    goto LABEL_40;
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 == 2)
    {
      if (*(v9 + 24) >= v8)
      {
        goto LABEL_8;
      }
    }

    else if (v8 < 1)
    {
      goto LABEL_8;
    }

LABEL_16:
    *a3 = xmmword_26C14A540;
    *(a3 + 16) = 0;
    return result;
  }

  if (v11)
  {
    v12 = v9 >> 32;
  }

  else
  {
    v12 = BYTE6(v10);
  }

  if (v12 < v8)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (v8 < result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = sub_26C14889C();
  a1[2] = v8;
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v13 + 16);
      v27 = v13;
      v28 = v14;
      v29 = v16;
LABEL_25:
      v17 = *(v13 + 24);
      goto LABEL_26;
    }
  }

  else if (v15)
  {
    v16 = v13;
    v27 = v13;
    v28 = v14;
    v29 = v13;
LABEL_22:
    v17 = v13 >> 32;
    goto LABEL_26;
  }

  v16 = 0;
  v27 = v13;
  v28 = v14;
  v29 = 0;
  if (v15 <= 1)
  {
    if (!v15)
    {
      v16 = 0;
      v17 = BYTE6(v14);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v17 = 0;
  if (v15 != 3)
  {
    v16 = 0;
    goto LABEL_25;
  }

LABEL_26:
  result = v17 - v16;
  if (__OFSUB__(v17, v16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = sub_26C0DE248(result, &v25);
  v18 = *(&v25 + 1);
  if (*(&v25 + 1) >> 60 == 15)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v19 = v27;
  v20 = v28;
  v21 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v22 = *(v27 + 24);
    }

    else
    {
      v22 = 0;
    }
  }

  else if (v21)
  {
    v22 = v27 >> 32;
  }

  else
  {
    v22 = BYTE6(v28);
  }

  if (__OFSUB__(v22, v29))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v23 = v25;
  v24 = v26;
  if (v22 == v29)
  {
    result = sub_26C0BB9B0(v27, v28);
    *a3 = v23;
    *(a3 + 8) = v18;
    *(a3 + 16) = v24;
  }

  else
  {
    *a2 = xmmword_26C149860;
    *(a2 + 16) = 2;
    v25 = xmmword_26C149860;
    LOBYTE(v26) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB344(v23, v18);
    return sub_26C0BB9B0(v19, v20);
  }

  return result;
}

uint64_t sub_26C0DF344@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26C1368E8();
  if ((result & 0x100) != 0 || (result = sub_26C0DE248(result, &v15), *(&v15 + 1) >> 60 == 15))
  {
    *a3 = xmmword_26C14A540;
    *(a3 + 16) = 0;
    return result;
  }

  v17 = v15;
  v18 = v16;
  v6 = *(&v15 + 1) >> 62;
  if ((*(&v15 + 1) >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v15 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = BYTE14(v15);
    if (v6)
    {
      v7 = v15 >> 32;
    }
  }

  result = v7 - v16;
  if (__OFSUB__(v7, v16))
  {
    __break(1u);
    goto LABEL_25;
  }

  result = sub_26C0DE248(result, &v15);
  v8 = *(&v15 + 1);
  if (*(&v15 + 1) >> 60 == 15)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v10 = *(&v17 + 1);
  v9 = v17;
  v11 = *(&v17 + 1) >> 62;
  if ((*(&v17 + 1) >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v17 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = v17 >> 32;
  }

  else
  {
    v12 = BYTE14(v17);
  }

  if (__OFSUB__(v12, v18))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v15;
  v14 = v16;
  if (v12 == v18)
  {
    result = sub_26C0BB9B0(v17, *(&v17 + 1));
    *a3 = v13;
    *(a3 + 8) = v8;
    *(a3 + 16) = v14;
  }

  else
  {
    *a2 = xmmword_26C149860;
    *(a2 + 16) = 2;
    v15 = xmmword_26C149860;
    LOBYTE(v16) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB344(v13, v8);
    return sub_26C0BB9B0(v9, v10);
  }

  return result;
}

void sub_26C0DF4FC(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_26C1368E8();
  if ((v5 & 0x100) != 0 || (sub_26C0DE248(v5, &v11), *(&v11 + 1) >> 60 == 15))
  {
    *a3 = xmmword_26C14A540;
    *(a3 + 16) = 0;
  }

  else
  {
    v13 = v11;
    v14 = v12;
    sub_26C12396C(&v13, &v11);
    v7 = *(&v13 + 1);
    v6 = v13;
    v8 = *(&v13 + 1) >> 62;
    if ((*(&v13 + 1) >> 62) > 1)
    {
      if (v8 == 2)
      {
        v9 = *(v13 + 24);
      }

      else
      {
        v9 = 0;
      }
    }

    else if (v8)
    {
      v9 = v13 >> 32;
    }

    else
    {
      v9 = BYTE14(v13);
    }

    if (__OFSUB__(v9, v14))
    {
      __break(1u);
    }

    else if (v9 == v14)
    {
      sub_26C0BB9B0(v13, *(&v13 + 1));
      v10 = v12;
      *a3 = v11;
      *(a3 + 16) = v10;
    }

    else
    {
      *a2 = xmmword_26C149860;
      *(a2 + 16) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v11, *(&v11 + 1));
      sub_26C0BB9B0(v6, v7);
    }
  }
}

uint64_t sub_26C0DF650(uint64_t a1, uint64_t a2)
{
  v3 = sub_26C1368E8();
  if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  sub_26C0DE248(v3, &v10);
  if (*(&v10 + 1) >> 60 == 15)
  {
    return 0;
  }

  v12 = v10;
  v13 = v11;
  result = sub_26C1212AC(&v12);
  v6 = *(&v12 + 1);
  v5 = v12;
  v7 = *(&v12 + 1) >> 62;
  if ((*(&v12 + 1) >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v12 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v12 >> 32;
  }

  else
  {
    v8 = BYTE14(v12);
  }

  if (__OFSUB__(v8, v13))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (v8 == v13)
    {
      sub_26C0BB9B0(v12, *(&v12 + 1));
      return v9;
    }

    else
    {
      *a2 = xmmword_26C149860;
      *(a2 + 16) = 2;
      v10 = xmmword_26C149860;
      LOBYTE(v11) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();

      return sub_26C0BB9B0(v5, v6);
    }
  }

  return result;
}

char *sub_26C0DF788(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = sub_26C1365D4();
  if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  sub_26C0DE248(v3, &v20);
  v4 = *(&v20 + 1);
  if (*(&v20 + 1) >> 60 == 15)
  {
    return 0;
  }

  v7 = *(&v20 + 1) >> 62;
  v8 = v20;
  v9 = v21;
  if ((*(&v20 + 1) >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(v20 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v7)
  {
    v10 = v20 >> 32;
  }

  else
  {
    v10 = BYTE14(v20);
  }

  v11 = __OFSUB__(v10, v21);
  v12 = v10 - v21;
  if (v11)
  {
    goto LABEL_41;
  }

  v19 = v20 >> 32;
  v13 = sub_26C0CDEFC(0, (v12 / 2) & ~((v12 + (v12 >> 63)) >> 63), 0, MEMORY[0x277D84F90]);
  v14 = v9 + 2;
  if (__OFADD__(v9, 2))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = v13;
  while (v7 > 1)
  {
    if (v7 == 2)
    {
      if (*(v8 + 24) < v14)
      {
        goto LABEL_30;
      }
    }

    else if (v14 >= 1)
    {
      v18 = 0;
      goto LABEL_34;
    }

LABEL_24:
    *&v20 = v8;
    *(&v20 + 1) = v4;
    if (v14 < v9)
    {
      goto LABEL_40;
    }

    sub_26C0BBAA4(v8, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v20, *(&v20 + 1));
    v17 = *(v5 + 2);
    v16 = *(v5 + 3);
    if (v17 >= v16 >> 1)
    {
      v5 = sub_26C0CDEFC((v16 > 1), v17 + 1, 1, v5);
    }

    *(v5 + 2) = v17 + 1;
    *&v5[2 * v17 + 32] = bswap32(0) >> 16;
    v9 = v14;
    v11 = __OFADD__(v14, 2);
    v14 += 2;
    if (v11)
    {
      goto LABEL_39;
    }
  }

  v15 = BYTE6(v4);
  if (v7)
  {
    v15 = v19;
  }

  if (v15 >= v14)
  {
    goto LABEL_24;
  }

LABEL_30:
  v18 = BYTE6(v4);
  if (v7)
  {
    v18 = v19;
    if (v7 == 2)
    {
      v18 = *(v8 + 24);
    }
  }

LABEL_34:
  if (__OFSUB__(v18, v9))
  {
LABEL_42:
    __break(1u);
  }

  if (v18 != v9)
  {
    *a2 = xmmword_26C149860;
    *(a2 + 16) = 2;
    v20 = xmmword_26C149860;
    LOBYTE(v21) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }

  sub_26C0BB9B0(v8, v4);
  return v5;
}

uint64_t sub_26C0DFAC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, __int128 *))
{
  v6 = sub_26C1365D4();
  if ((v6 & 0x10000) != 0)
  {
    return 0;
  }

  sub_26C0DE248(v6, &v18);
  if (*(&v18 + 1) >> 60 == 15)
  {
    return 0;
  }

  v20 = v18;
  v21 = v19;
  v8 = a3(&v20, &v18);
  if (v3)
  {
    v9 = v19;
    *a2 = v18;
    *(a2 + 16) = v9;
    v11 = *(&v20 + 1);
    v10 = v20;
    return sub_26C0BB9B0(v10, v11);
  }

  v12 = v8;
  v13 = *(&v20 + 1);
  result = v20;
  v14 = *(&v20 + 1) >> 62;
  if ((*(&v20 + 1) >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v20 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v20 >> 32;
  }

  else
  {
    v15 = BYTE14(v20);
  }

  if (!__OFSUB__(v15, v21))
  {
    if (v15 == v21)
    {
      sub_26C0BB9B0(v20, *(&v20 + 1));
      return v12;
    }

    *a2 = xmmword_26C149860;
    *(a2 + 16) = 2;
    v18 = xmmword_26C149860;
    LOBYTE(v19) = 2;
    v16 = result;
    v17 = v13;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();

    v11 = v17;
    v10 = v16;
    return sub_26C0BB9B0(v10, v11);
  }

  __break(1u);
  return result;
}

char *sub_26C0DFC24(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = sub_26C1368E8();
  if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  sub_26C0DE248(v3, &v19);
  v4 = *(&v19 + 1);
  if (*(&v19 + 1) >> 60 == 15)
  {
    return 0;
  }

  v16 = a2;
  v7 = v19;
  v8 = v20;
  v9 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = *(&v19 + 1) >> 62;
  v17 = v19 >> 32;
  v5 = MEMORY[0x277D84F90];
  v18 = BYTE14(v19);
  while (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *(v7 + 24);
      goto LABEL_12;
    }

    if (v9 >= 1)
    {
      v15 = 0;
      goto LABEL_27;
    }

LABEL_15:
    *&v19 = v7;
    *(&v19 + 1) = v4;
    if (v9 < v8)
    {
      goto LABEL_33;
    }

    sub_26C0BBAA4(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v19, *(&v19 + 1));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_26C0CE5B8(0, *(v5 + 2) + 1, 1, v5);
    }

    v13 = *(v5 + 2);
    v12 = *(v5 + 3);
    if (v13 >= v12 >> 1)
    {
      v5 = sub_26C0CE5B8((v12 > 1), v13 + 1, 1, v5);
    }

    *(v5 + 2) = v13 + 1;
    v5[v13 + 32] = 0;
    v8 = v9;
    if (__OFADD__(v9++, 1))
    {
      goto LABEL_32;
    }
  }

  v11 = v18;
  if (v10)
  {
    v11 = v17;
  }

LABEL_12:
  if (v11 >= v9)
  {
    goto LABEL_15;
  }

  v15 = v18;
  if (v10)
  {
    v15 = v17;
    if (v10 == 2)
    {
      v15 = *(v7 + 24);
    }
  }

LABEL_27:
  if (__OFSUB__(v15, v8))
  {
LABEL_34:
    __break(1u);
  }

  if (v15 != v8)
  {
    *v16 = xmmword_26C149860;
    *(v16 + 16) = 2;
    v19 = xmmword_26C149860;
    LOBYTE(v20) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }

  sub_26C0BB9B0(v7, v4);
  return v5;
}

uint64_t sub_26C0DFED4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26C1365D4();
  if ((result & 0x10000) != 0 || (result = sub_26C0DE248(result, &v21), *(&v21 + 1) >> 60 == 15))
  {
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  v25 = v21;
  v26 = v22;
  sub_26C13099C(&v25, &v19, &v21);
  if (v3)
  {
    v7 = v20;
    *a2 = v19;
    *(a2 + 16) = v7;
    v9 = *(&v25 + 1);
    v8 = v25;
    return sub_26C0BB9B0(v8, v9);
  }

  v10 = *(&v25 + 1);
  result = v25;
  v11 = *(&v25 + 1) >> 62;
  if ((*(&v25 + 1) >> 62) > 1)
  {
    if (v11 == 2)
    {
      v12 = *(v25 + 24);
    }

    else
    {
      v12 = 0;
    }
  }

  else if (v11)
  {
    v12 = v25 >> 32;
  }

  else
  {
    v12 = BYTE14(v25);
  }

  if (!__OFSUB__(v12, v26))
  {
    if (v12 == v26)
    {
      result = sub_26C0BB9B0(v25, *(&v25 + 1));
      v13 = v24;
      v14 = v22;
      *a3 = v21;
      *(a3 + 16) = v14;
      *(a3 + 32) = v23;
      *(a3 + 48) = v13;
      return result;
    }

    *a2 = xmmword_26C149860;
    *(a2 + 16) = 2;
    v19 = xmmword_26C149860;
    v20 = 2;
    v15 = result;
    v16 = v10;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v17 = *(&v22 + 1);
    v18 = v23;
    sub_26C0BB9B0(v21, *(&v21 + 1));
    sub_26C0BB9B0(v17, v18);

    v9 = v16;
    v8 = v15;
    return sub_26C0BB9B0(v8, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0E0078(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C1368E8();
  if ((v4 & 0x100) != 0)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_26C1365D4();
  if ((v6 & 0x10000) != 0)
  {
    return 0;
  }

  sub_26C0DE248(v6 | (v5 << 16), &v18);
  if (*(&v18 + 1) >> 60 == 15)
  {
    return 0;
  }

  v20 = v18;
  v21 = v19;
  v8 = sub_26C0C046C(&v20, &v18);
  if (v2)
  {
    v9 = v19;
    *a2 = v18;
    *(a2 + 16) = v9;
    v11 = *(&v20 + 1);
    v10 = v20;
    return sub_26C0BB9B0(v10, v11);
  }

  v12 = v8;
  v13 = *(&v20 + 1);
  result = v20;
  v14 = *(&v20 + 1) >> 62;
  if ((*(&v20 + 1) >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v20 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v20 >> 32;
  }

  else
  {
    v15 = BYTE14(v20);
  }

  if (!__OFSUB__(v15, v21))
  {
    if (v15 == v21)
    {
      sub_26C0BB9B0(v20, *(&v20 + 1));
      return v12;
    }

    *a2 = xmmword_26C149860;
    *(a2 + 16) = 2;
    v18 = xmmword_26C149860;
    LOBYTE(v19) = 2;
    v16 = result;
    v17 = v13;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();

    v11 = v17;
    v10 = v16;
    return sub_26C0BB9B0(v10, v11);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  result = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v3);
  }

  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26C14889C();
    v9 = v8;
    sub_26C1488BC();

    return sub_26C0BB9B0(v7, v9);
  }

  return result;
}

void *ByteBuffer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = sub_26C1491AC();
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v1 + 24);
    }
  }

  else if (v5)
  {
    v6 = v1 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26C14889C();
    v9 = v8;
    sub_26C1488BC();
    sub_26C0BB9B0(v7, v9);
    return sub_26C14920C();
  }

  return result;
}

uint64_t sub_26C0E0344(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  result = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v3);
  }

  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26C14889C();
    v9 = v8;
    sub_26C1488BC();

    return sub_26C0BB9B0(v7, v9);
  }

  return result;
}

void *sub_26C0E03E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  result = sub_26C1491AC();
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v2 >> 32;
  }

  else
  {
    v7 = BYTE6(v3);
  }

  if (v7 < v4)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_26C14889C();
    v10 = v9;
    sub_26C1488BC();
    sub_26C0BB9B0(v8, v10);
    return sub_26C14920C();
  }

  return result;
}

uint64_t sub_26C0E04A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      return sub_26C14887C();
    }

    goto LABEL_10;
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = sub_26C1487BC();
    if (a1)
    {
      a1 = sub_26C1487EC();
      if (__OFSUB__(v6, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v7, v6))
    {
LABEL_13:
      sub_26C1487DC();
      return sub_26C14887C();
    }

    __break(1u);
LABEL_10:
    v8 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_26C1487BC() || !__OFSUB__(v8, sub_26C1487EC()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return sub_26C14887C();
}

uint64_t _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v3);
  }

  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    result = sub_26C14889C();
    v10 = result;
    v12 = v11;
    v13 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v13 == 2)
      {
        v14 = *(v7 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v13)
    {
      v14 = v7 >> 32;
    }

    else
    {
      v14 = BYTE6(v8);
    }

    if (v14 >= v9)
    {
      v15 = sub_26C14889C();
      v17 = v16;
      v18 = sub_26C0E6464(v10, v12, v15, v16);
      sub_26C0BB9B0(v10, v12);
      sub_26C0BB9B0(v15, v17);
      return v18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C0E0798()
{
  result = qword_28047AAD8;
  if (!qword_28047AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AAD8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26C0E0800(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C0E0854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26C0E08B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A940, &qword_26C14A7E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C0E091C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    sub_26C0BB9B0(result, a2);
    sub_26C0BB9B0(a4, a5);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26C0E09D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C0E0A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26C0E0AB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 129))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 128);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C0E0AFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

void sub_26C0E0B74(uint64_t *a1)
{
  if (v1[1] >> 60 == 15)
  {
    v2 = *a1;
    v3 = a1[1];
    v4 = a1[2];
    v5 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v5 == 2)
      {
        v7 = *(v2 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v6 = BYTE6(v3);
      v7 = v2 >> 32;
      if (!v5)
      {
        v7 = v6;
      }
    }

    v8 = __OFSUB__(v7, v4);
    v9 = v7 - v4;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      v10 = v1;
      sub_26C0DE248(v9, &v13);
      v12 = v13;
      v11 = v14;
      sub_26C0BB344(*v10, v10[1]);
      *v10 = v12;
      v10[2] = v11;
    }
  }

  else
  {

    sub_26C0DE7D4(a1);
  }
}

uint64_t sub_26C0E0C4C()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AAE0);
  __swift_project_value_buffer(v0, qword_28047AAE0);
  return sub_26C148A8C();
}

void sub_26C0E0CCC(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v6 = a1;
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v116 = v9;
  v117 = v8;
  v101 = v10;
  v118 = v10;
  sub_26C0BBAA4(v9, v8);
  v11 = sub_26C1368E8();
  if ((v11 & 0x100) != 0)
  {
    goto LABEL_10;
  }

  LOBYTE(v12) = v11;
  v13 = sub_26C1368E8();
  if ((v13 & 0x100) != 0)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v15 = sub_26C1365D4();
  if ((v15 & 0x10000) != 0)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    if (v12 == 1)
    {
      *(a2 + 24) = 1;
    }

    v16 = v122;
    *v122 = xmmword_26C14A8F0;
    *(v16 + 16) = 2;
    *v115 = xmmword_26C14A8F0;
    v115[16] = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v17 = v9;
    v18 = v8;
    goto LABEL_8;
  }

  sub_26C0DE248(v15, &v109);
  if (v110 >> 60 == 15)
  {
LABEL_10:
    sub_26C0BB9B0(v9, v8);
    sub_26C0CF2F4(v115);
    v19 = *&v115[112];
    *(a4 + 96) = *&v115[96];
    *(a4 + 112) = v19;
    *(a4 + 128) = v115[128];
    v20 = *&v115[48];
    *(a4 + 32) = *&v115[32];
    *(a4 + 48) = v20;
    v21 = *&v115[80];
    *(a4 + 64) = *&v115[64];
    *(a4 + 80) = v21;
    v22 = *&v115[16];
    *a4 = *v115;
    *(a4 + 16) = v22;
    return;
  }

  v23 = v111;
  v112 = v109;
  v113 = v110;
  v114 = v111;
  if (v12 <= 0xAu)
  {
    if (v12 <= 3u)
    {
      if (v12 == 1)
      {
        *(a2 + 24) = 1;
        if (qword_28047A738 != -1)
        {
          swift_once();
        }

        v50 = sub_26C148A9C();
        __swift_project_value_buffer(v50, qword_28047AAE0);
        v51 = sub_26C148A7C();
        v52 = sub_26C148FFC();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_26C0B5000, v51, v52, "clientHello", v53, 2u);
          MEMORY[0x26D69C3A0](v53, -1, -1);
        }

        sub_26C120724(&v112, v115, v119);
        if (!v4)
        {
          v107 = v119[4];
          *v108 = v119[5];
          *&v108[16] = v120;
          *v104 = v119[0];
          *&v104[16] = v119[1];
          v105 = v119[2];
          v106 = v119[3];
          v108[24] = 0;
          goto LABEL_90;
        }

LABEL_53:
        sub_26C0BB9B0(v9, v8);
        sub_26C0BB9B0(v112, v113);
        v54 = v115[16];
        v55 = *v115;
LABEL_72:
        v68 = v122;
        *v122 = v55;
        *(v68 + 16) = v54;
        return;
      }

      if (v12 == 2)
      {
        if (qword_28047A738 != -1)
        {
          swift_once();
        }

        v24 = sub_26C148A9C();
        __swift_project_value_buffer(v24, qword_28047AAE0);
        v25 = sub_26C148A7C();
        v26 = sub_26C148FFC();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_26C0B5000, v25, v26, "serverHello", v27, 2u);
          MEMORY[0x26D69C3A0](v27, -1, -1);
        }

        sub_26C1219BC(&v112, v115, v121);
        if (!v4)
        {
          v105 = v121[2];
          v106 = v121[3];
          v107 = v121[4];
          *v108 = v121[5];
          *v104 = v121[0];
          *&v104[16] = v121[1];
          v28 = 1;
LABEL_84:
          v108[24] = v28;
          goto LABEL_90;
        }

        goto LABEL_53;
      }

LABEL_73:
      v6 = v109;
      v23 = v110;
      if (qword_28047A738 == -1)
      {
LABEL_74:
        v69 = sub_26C148A9C();
        __swift_project_value_buffer(v69, qword_28047AAE0);
        v70 = sub_26C148A7C();
        v71 = sub_26C148FFC();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v115 = v73;
          *v72 = 136315138;
          LOBYTE(v102) = v12;
          v74 = HandshakeType.description.getter();
          v76 = sub_26C0E5DE8(v74, v75, v115);

          *(v72 + 4) = v76;
          _os_log_impl(&dword_26C0B5000, v70, v71, "Unsupported handshake message: %s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v73);
          MEMORY[0x26D69C3A0](v73, -1, -1);
          MEMORY[0x26D69C3A0](v72, -1, -1);

          v9 = v116;
          v8 = v117;
          v77 = v112;
          v23 = v113;
        }

        else
        {

          v77 = v6;
        }

        v78 = v122;
        *v122 = xmmword_26C14A8F0;
        *(v78 + 16) = 2;
        *v115 = xmmword_26C14A8F0;
        v115[16] = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        sub_26C0BB9B0(v9, v8);
        v17 = v77;
        v18 = v23;
        goto LABEL_8;
      }

LABEL_118:
      swift_once();
      goto LABEL_74;
    }

    if (v12 != 4)
    {
      if (v12 == 8)
      {
        v100 = v109;
        v33 = v110;
        if (qword_28047A738 != -1)
        {
          swift_once();
        }

        v34 = sub_26C148A9C();
        __swift_project_value_buffer(v34, qword_28047AAE0);
        v35 = sub_26C148A7C();
        v36 = sub_26C148FFC();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_26C0B5000, v35, v36, "encryptedExtensions", v37, 2u);
          MEMORY[0x26D69C3A0](v37, -1, -1);
        }

        v38 = v33;
        sub_26C0BBAA4(v100, v33);
        v39 = sub_26C0DF318(&v112, v115);
        if (v4)
        {
          sub_26C0BB9B0(v112, v113);
          v40 = v33;
          v42 = *&v115[8];
          v41 = *v115;
          v43 = v115[16];
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0BB9B0(v9, v8);
          sub_26C0BB9B0(v100, v40);
        }

        else
        {
          if (v39)
          {
            v79 = v39;
            sub_26C0BB9B0(v100, v38);
            *v104 = v79;
            v28 = 2;
            goto LABEL_84;
          }

          sub_26C0BB9B0(v112, v113);
          *v115 = 0uLL;
          v43 = 2;
          v115[16] = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0BB9B0(v9, v8);
          sub_26C0BB9B0(v100, v38);
          v41 = 0;
          v42 = 0;
        }

        v44 = v122;
        *v122 = v41;
        *(v44 + 1) = v42;
        *(v44 + 16) = v43;
        return;
      }

      goto LABEL_73;
    }

    if (qword_28047A738 != -1)
    {
      swift_once();
    }

    v60 = sub_26C148A9C();
    __swift_project_value_buffer(v60, qword_28047AAE0);
    v61 = sub_26C148A7C();
    v62 = sub_26C148FFC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26C0B5000, v61, v62, "newSessionTicket", v63, 2u);
      MEMORY[0x26D69C3A0](v63, -1, -1);
    }

    sub_26C0BBF8C(&v112, &v102, v115);
    if (!v4)
    {
      *v104 = *v115;
      *&v104[16] = *&v115[16];
      v105 = *&v115[32];
      v106 = *&v115[48];
      v28 = 7;
      goto LABEL_84;
    }

LABEL_71:
    sub_26C0BB9B0(v9, v8);
    sub_26C0BB9B0(v112, v113);
    v54 = v103;
    v55 = v102;
    goto LABEL_72;
  }

  if (v12 <= 0xEu)
  {
    if (v12 == 11)
    {
      if (qword_28047A738 != -1)
      {
        swift_once();
      }

      v56 = sub_26C148A9C();
      __swift_project_value_buffer(v56, qword_28047AAE0);
      v57 = sub_26C148A7C();
      v58 = sub_26C148FFC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_26C0B5000, v57, v58, "certificate", v59, 2u);
        MEMORY[0x26D69C3A0](v59, -1, -1);
      }

      sub_26C0C02D0(&v112, &v102, v115);
      if (!v4)
      {
        *v104 = *v115;
        *&v104[16] = *&v115[16];
        v28 = 4;
        goto LABEL_84;
      }
    }

    else
    {
      if (v12 != 13)
      {
        goto LABEL_73;
      }

      if (qword_28047A738 != -1)
      {
        swift_once();
      }

      v29 = sub_26C148A9C();
      __swift_project_value_buffer(v29, qword_28047AAE0);
      v30 = sub_26C148A7C();
      v31 = sub_26C148FFC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_26C0B5000, v30, v31, "certificateRequest", v32, 2u);
        MEMORY[0x26D69C3A0](v32, -1, -1);
      }

      sub_26C123774(&v112, &v102, v115);
      if (!v4)
      {
        *v104 = *v115;
        *&v104[16] = *&v115[16];
        v28 = 3;
        goto LABEL_84;
      }
    }

    goto LABEL_71;
  }

  if (v12 == 15)
  {
    if (qword_28047A738 != -1)
    {
      swift_once();
    }

    v64 = sub_26C148A9C();
    __swift_project_value_buffer(v64, qword_28047AAE0);
    v65 = sub_26C148A7C();
    v66 = sub_26C148FFC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26C0B5000, v65, v66, "certificateVerify", v67, 2u);
      MEMORY[0x26D69C3A0](v67, -1, -1);
    }

    sub_26C0BB8DC(&v112, &v102, v115);
    if (!v4)
    {
      *v104 = *v115;
      *&v104[8] = *&v115[8];
      *&v104[24] = *&v115[24];
      v28 = 5;
      goto LABEL_84;
    }

    goto LABEL_71;
  }

  if (v12 != 20)
  {
    goto LABEL_73;
  }

  v45 = v109;
  v12 = v110;
  if (qword_28047A738 != -1)
  {
    swift_once();
  }

  v46 = sub_26C148A9C();
  __swift_project_value_buffer(v46, qword_28047AAE0);
  v47 = sub_26C148A7C();
  v8 = sub_26C148FFC();
  if (os_log_type_enabled(v47, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26C0B5000, v47, v8, "finished", v9, 2u);
    MEMORY[0x26D69C3A0](v9, -1, -1);
  }

  v48 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v48 == 2)
    {
      v49 = *(v45 + 24);
    }

    else
    {
      v49 = 0;
    }
  }

  else if (v48)
  {
    v49 = v45 >> 32;
  }

  else
  {
    v49 = BYTE6(v12);
  }

  if (__OFSUB__(v49, v23))
  {
    __break(1u);
    goto LABEL_118;
  }

  sub_26C0DE248(v49 - v23, v115);
  if (*&v115[8] >> 60 != 15)
  {
    *v104 = *v115;
    *&v104[16] = *&v115[16];
    v108[24] = 6;
LABEL_90:
    v80 = v112;
    v81 = v113;
    v82 = v114;
    v83 = v113 >> 62;
    if ((v113 >> 62) > 1)
    {
      if (v83 == 2)
      {
        v84 = *(v112 + 24);
      }

      else
      {
        v84 = 0;
      }
    }

    else if (v83)
    {
      v84 = v112 >> 32;
    }

    else
    {
      v84 = BYTE6(v113);
    }

    if (__OFSUB__(v84, v114))
    {
      __break(1u);
    }

    else
    {
      if (v84 != v114)
      {
        if (qword_28047A738 == -1)
        {
          goto LABEL_103;
        }

        goto LABEL_116;
      }

      v85 = *(v6 + 16);
      if (!__OFSUB__(v85, v101))
      {
        sub_26C0DE248(v85 - v101, &v102);
        v86 = *(&v102 + 1);
        if (*(&v102 + 1) >> 60 != 15)
        {
          v87 = v103;
          v88 = v102;
          sub_26C0BB9B0(v116, v117);
          sub_26C0BB9B0(v80, v81);
          *&v115[72] = v106;
          *&v115[88] = v107;
          *&v115[104] = *v108;
          *&v115[113] = *&v108[9];
          *&v115[24] = *v104;
          *&v115[40] = *&v104[16];
          *&v115[56] = v105;
          *v115 = v88;
          *&v115[8] = v86;
          *&v115[16] = v87;
          nullsub_1();
          v89 = *&v115[112];
          *(a4 + 96) = *&v115[96];
          *(a4 + 112) = v89;
          *(a4 + 128) = v115[128];
          v90 = *&v115[48];
          *(a4 + 32) = *&v115[32];
          *(a4 + 48) = v90;
          v91 = *&v115[80];
          *(a4 + 64) = *&v115[64];
          *(a4 + 80) = v91;
          v92 = *&v115[16];
          *a4 = *v115;
          *(a4 + 16) = v92;
          return;
        }

        goto LABEL_120;
      }
    }

    __break(1u);
LABEL_116:
    swift_once();
LABEL_103:
    v93 = sub_26C148A9C();
    __swift_project_value_buffer(v93, qword_28047AAE0);
    v94 = sub_26C148A7C();
    v95 = sub_26C148FFC();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 134217984;
      swift_beginAccess();
      v97 = v113 >> 62;
      if ((v113 >> 62) > 1)
      {
        v98 = 0;
        if (v97 == 2)
        {
          v98 = *(v112 + 24);
        }
      }

      else if (v97)
      {
        v98 = v112 >> 32;
      }

      else
      {
        v98 = BYTE6(v113);
      }

      if (__OFSUB__(v98, v82))
      {
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      *(v96 + 4) = v98 - v82;
      _os_log_impl(&dword_26C0B5000, v94, v95, "ExcessBytes: %ld", v96, 0xCu);
      MEMORY[0x26D69C3A0](v96, -1, -1);
    }

    v99 = v122;
    *v122 = xmmword_26C149860;
    *(v99 + 16) = 2;
    v102 = xmmword_26C149860;
    LOBYTE(v103) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BF5D0(v104);
    sub_26C0BB9B0(v116, v117);
    v17 = v112;
    v18 = v113;
LABEL_8:
    sub_26C0BB9B0(v17, v18);
    return;
  }

LABEL_121:
  __break(1u);
}

uint64_t SwiftTLSFeatureFlags.hashValue.getter()
{
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](0);
  return sub_26C14920C();
}

uint64_t sub_26C0E1C10()
{
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](0);
  return sub_26C14920C();
}

uint64_t sub_26C0E1C7C(uint64_t a1)
{
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](0);
  return sub_26C14920C();
}

unint64_t sub_26C0E1CC0()
{
  result = qword_28047AAF8;
  if (!qword_28047AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AAF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SwiftTLSFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SwiftTLSFeatureFlags(_WORD *result, int a2, int a3)
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

uint64_t sub_26C0E1E48(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v13[3] = MEMORY[0x277CC9318];
  v13[4] = MEMORY[0x277CC9300];
  v13[0] = a1;
  v13[1] = a2;
  v6 = __swift_project_boxed_opaque_existential_1(v13, MEMORY[0x277CC9318]);
  v7 = *v6;
  v8 = v6[1];
  sub_26C0BBAA4(a1, a2);
  sub_26C135114(v7, v8, v3);
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      return BYTE6(a2);
    }

    goto LABEL_8;
  }

  result = 0;
  if (v10 == 2)
  {
    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    result = v11 - v12;
    if (__OFSUB__(v11, v12))
    {
      __break(1u);
LABEL_8:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
      }

      else
      {
        return HIDWORD(a1) - a1;
      }
    }
  }

  return result;
}

uint64_t sub_26C0E1F1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = *(v5 + 16);
  v8(v16 - v6, a1, v4);
  v18 = v4;
  v19 = sub_26C0E66CC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  v8(boxed_opaque_existential_1, v7, v4);
  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_26C14880C();
  v10 = *(v5 + 8);
  v10(a1, v4);
  v10(v7, v4);
  v11 = v16[1];
  v12 = v16[2];
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  v14 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    v15 = 0;
    if (v14 == 2)
    {
      v15 = *(v11 + 16);
    }
  }

  else
  {
    v15 = v11;
    if (!v14)
    {
      v15 = 0;
    }
  }

  *a2 = v11;
  a2[1] = v12;
  a2[2] = v15;
  return result;
}

uint64_t sub_26C0E20DC()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AB00);
  __swift_project_value_buffer(v0, qword_28047AB00);
  return sub_26C148A8C();
}

uint64_t _s8SwiftTLS21ExportedAuthenticatorV13authenticator21handshakeStateMachineAcA10ByteBufferVz_AA09HandshakegH0VtAA8TLSErrorOYKcfC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_26C14A540;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  sub_26C0E0B74(a1);
  v5 = type metadata accessor for ExportedAuthenticator(0);
  return sub_26C0E61A0(a2, a3 + *(v5 + 24), type metadata accessor for HandshakeStateMachine);
}

uint64_t type metadata accessor for ExportedAuthenticator(uint64_t a1)
{
  result = qword_28047AB20;
  if (!qword_28047AB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *_s8SwiftTLS21ExportedAuthenticatorV8validate9keyParserSay10Foundation4DataVGAHSgAHXE_tAA8TLSErrorOYKF(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v246 = a2;
  v247 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  MEMORY[0x28223BE20](v7 - 8);
  v241 = &v226 - v8;
  v9 = sub_26C148DBC();
  v244 = *(v9 - 8);
  v245 = v9;
  MEMORY[0x28223BE20](v9);
  v248 = &v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9F0, &qword_26C14A9C0);
  MEMORY[0x28223BE20](v11 - 8);
  v251 = &v226 - v12;
  v252 = sub_26C148E2C();
  v250 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v249 = &v226 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready);
  *&v257 = &v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HandshakeState(0);
  v16 = MEMORY[0x28223BE20](v15);
  v242 = &v226 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v243 = &v226 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v253 = &v226 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v353 = &v226 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v226 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v254 = &v226 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v226 - v29;
  v259 = sub_26C148BDC();
  v31 = *(v259 - 8);
  v32 = MEMORY[0x28223BE20](v259);
  v255 = &v226 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v258 = &v226 - v34;
  if (v3[1] >> 60 == 15)
  {
    v240 = v31;
    sub_26C0CF2F4(&v344);
  }

  else
  {
    sub_26C0DE9B4(v3, v3, &v335, &v344);
    if (v4)
    {
      v35 = v336;
      v36 = v335;
LABEL_5:
      *a3 = v36;
      *(a3 + 16) = v35;
      return v3;
    }

    v6 = 0;
    v240 = v31;
  }

  v331 = v349;
  v332 = v350;
  v333 = v351;
  v328 = v346;
  v329 = v347;
  v330 = v348;
  v326 = v344;
  v327 = v345;
  v340 = v349;
  v341 = v350;
  v342 = v351;
  v336 = v345;
  v337 = v346;
  v338 = v347;
  v339 = v348;
  v334 = v352;
  v343 = v352;
  v335 = v344;
  if (sub_26C0CF284(&v335) == 1)
  {
    v37 = a3;
    if (qword_28047A740 != -1)
    {
      swift_once();
    }

    v38 = sub_26C148A9C();
    __swift_project_value_buffer(v38, qword_28047AB00);
    v3 = sub_26C148A7C();
    v39 = sub_26C14900C();
    if (os_log_type_enabled(v3, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26C0B5000, v3, v39, "incomplete message, invalid", v40, 2u);
      MEMORY[0x26D69C3A0](v40, -1, -1);
    }

    *v37 = xmmword_26C14C0F0;
    *(v37 + 16) = 2;
    v317 = xmmword_26C14C0F0;
    LOBYTE(v318) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return v3;
  }

  if (v343 != 4)
  {
    v42 = a3;
    if (qword_28047A740 != -1)
    {
      swift_once();
    }

    v43 = sub_26C148A9C();
    __swift_project_value_buffer(v43, qword_28047AB00);
    v323 = v332;
    v324 = v333;
    v325 = v334;
    v319 = v328;
    v320 = v329;
    v321 = v330;
    v322 = v331;
    v317 = v326;
    v318 = v327;
    sub_26C0E5D8C(&v317, &v308);
    v3 = sub_26C148A7C();
    v44 = sub_26C14900C();
    sub_26C0CF5C4(&v326, &qword_28047A940, &qword_26C14A7E8);
    if (os_log_type_enabled(v3, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v308 = v46;
      *v45 = 136315138;
      if (v343 > 3u)
      {
        if (v343 > 5u)
        {
          if (v343 == 6)
          {
            v47 = 0xE800000000000000;
            v48 = 0x64656873696E6966;
          }

          else
          {
            v48 = 0xD000000000000010;
            v47 = 0x800000026C15A4C0;
          }
        }

        else if (v343 == 4)
        {
          v48 = 0x6369666974726563;
          v47 = 0xEB00000000657461;
        }

        else
        {
          v47 = 0x800000026C15A4E0;
          v48 = 0xD000000000000011;
        }
      }

      else if (v343 > 1u)
      {
        if (v343 == 2)
        {
          v47 = 0x800000026C15A520;
          v48 = 0xD000000000000013;
        }

        else
        {
          v47 = 0x800000026C15A500;
          v48 = 0xD000000000000012;
        }
      }

      else
      {
        v47 = 0xEB000000006F6C6CLL;
        if (v343)
        {
          v48 = 0x6548726576726573;
        }

        else
        {
          v48 = 0x6548746E65696C63;
        }
      }

      v63 = sub_26C0E5DE8(v48, v47, &v308);

      *(v45 + 4) = v63;
      _os_log_impl(&dword_26C0B5000, v3, v44, "unexpected message %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69C3A0](v46, -1, -1);
      MEMORY[0x26D69C3A0](v45, -1, -1);
    }

    *v42 = xmmword_26C14C0F0;
    *(v42 + 16) = 2;
    v308 = xmmword_26C14C0F0;
    LOBYTE(v309) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    goto LABEL_58;
  }

  v239 = v15;
  v41 = v338;
  if (v3[1] >> 60 == 15)
  {
    v238 = v338;
    sub_26C0CF2F4(&v308);
    v323 = v314;
    v324 = v315;
    v325 = v316;
    v319 = v310;
    v320 = v311;
    v321 = v312;
    v322 = v313;
    v317 = v308;
    v318 = v309;
    sub_26C0BBAA4(*(&v336 + 1), v337);

    goto LABEL_29;
  }

  sub_26C0BBAA4(*(&v336 + 1), v337);

  sub_26C0DE9B4(v3, v3, &v308, &v317);
  if (v6)
  {
    sub_26C0BF5D0(&v336 + 8);
    sub_26C0CF5C4(&v326, &qword_28047A940, &qword_26C14A7E8);
    v35 = v309;
    v36 = v308;
    goto LABEL_5;
  }

  v6 = 0;
  v238 = v41;
LABEL_29:
  v305 = v323;
  v306 = v324;
  v301 = v319;
  v302 = v320;
  v303 = v321;
  v304 = v322;
  v299 = v317;
  v300 = v318;
  v314 = v323;
  v315 = v324;
  v310 = v319;
  v311 = v320;
  v312 = v321;
  v313 = v322;
  v307 = v325;
  v316 = v325;
  v308 = v317;
  v309 = v318;
  if (sub_26C0CF284(&v308) == 1)
  {
    v49 = a3;
    if (qword_28047A740 != -1)
    {
      swift_once();
    }

    v50 = sub_26C148A9C();
    __swift_project_value_buffer(v50, qword_28047AB00);
    v3 = sub_26C148A7C();
    v51 = sub_26C14900C();
    if (os_log_type_enabled(v3, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26C0B5000, v3, v51, "incomplete message, invalid", v52, 2u);
      MEMORY[0x26D69C3A0](v52, -1, -1);
    }

    *v49 = xmmword_26C14C0F0;
    *(v49 + 16) = 2;
    v290 = xmmword_26C14C0F0;
    LOBYTE(v291) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BF5D0(&v336 + 8);
    goto LABEL_58;
  }

  if (v316 != 5)
  {
    v54 = a3;
    if (qword_28047A740 != -1)
    {
      swift_once();
    }

    v55 = sub_26C148A9C();
    __swift_project_value_buffer(v55, qword_28047AB00);
    v296 = v305;
    v297 = v306;
    v298 = v307;
    v292 = v301;
    v293 = v302;
    v294 = v303;
    v295 = v304;
    v290 = v299;
    v291 = v300;
    sub_26C0E5D8C(&v290, &v281);
    v56 = sub_26C148A7C();
    v57 = sub_26C14900C();
    sub_26C0CF5C4(&v299, &qword_28047A940, &qword_26C14A7E8);
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v281 = v59;
      *v58 = 136315138;
      if (v316 > 3u)
      {
        if (v316 > 5u)
        {
          if (v316 == 6)
          {
            v60 = 0xE800000000000000;
            v61 = 0x64656873696E6966;
          }

          else
          {
            v61 = 0xD000000000000010;
            v60 = 0x800000026C15A4C0;
          }
        }

        else if (v316 == 4)
        {
          v61 = 0x6369666974726563;
          v60 = 0xEB00000000657461;
        }

        else
        {
          v60 = 0x800000026C15A4E0;
          v61 = 0xD000000000000011;
        }
      }

      else if (v316 > 1u)
      {
        if (v316 == 2)
        {
          v60 = 0x800000026C15A520;
          v61 = 0xD000000000000013;
        }

        else
        {
          v60 = 0x800000026C15A500;
          v61 = 0xD000000000000012;
        }
      }

      else
      {
        v60 = 0xEB000000006F6C6CLL;
        if (v316)
        {
          v61 = 0x6548726576726573;
        }

        else
        {
          v61 = 0x6548746E65696C63;
        }
      }

      v93 = sub_26C0E5DE8(v61, v60, &v281);

      *(v58 + 4) = v93;
      _os_log_impl(&dword_26C0B5000, v56, v57, "unexpected message %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x26D69C3A0](v59, -1, -1);
      MEMORY[0x26D69C3A0](v58, -1, -1);
    }

    else
    {
    }

    *v54 = xmmword_26C14C0F0;
    *(v54 + 16) = 2;
    v281 = xmmword_26C14C0F0;
    LOBYTE(v282) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v3 = &qword_28047A940;
    sub_26C0CF5C4(&v299, &qword_28047A940, &qword_26C14A7E8);
    sub_26C0BF5D0(&v336 + 8);
    goto LABEL_58;
  }

  v53 = v310;
  v236 = v311;
  v237 = *(&v310 + 1);
  if (v3[1] >> 60 == 15)
  {
    v235 = v310;
    sub_26C0CF2F4(&v281);
    v296 = v287;
    v297 = v288;
    v298 = v289;
    v292 = v283;
    v293 = v284;
    v294 = v285;
    v295 = v286;
    v290 = v281;
    v291 = v282;
    sub_26C0BBAA4(v310, *(&v310 + 1));
  }

  else
  {
    sub_26C0BBAA4(v310, *(&v310 + 1));
    sub_26C0DE9B4(v3, v3, &v281, &v290);
    if (v6)
    {
      sub_26C0BF5D0(&v309 + 8);
      sub_26C0BF5D0(&v336 + 8);
      v3 = &qword_28047A940;
      sub_26C0CF5C4(&v299, &qword_28047A940, &qword_26C14A7E8);
      sub_26C0CF5C4(&v326, &qword_28047A940, &qword_26C14A7E8);
      v62 = v282;
      *a3 = v281;
      *(a3 + 16) = v62;
      return v3;
    }

    v6 = 0;
    v235 = v53;
  }

  v278 = v296;
  v279 = v297;
  v274 = v292;
  v275 = v293;
  v276 = v294;
  v277 = v295;
  v272 = v290;
  v273 = v291;
  v287 = v296;
  v288 = v297;
  v283 = v292;
  v284 = v293;
  v285 = v294;
  v286 = v295;
  v280 = v298;
  v289 = v298;
  v281 = v290;
  v282 = v291;
  v65 = sub_26C0CF284(&v281);
  v66 = v353;
  if (v65 == 1)
  {
    v67 = a3;
    if (qword_28047A740 != -1)
    {
      swift_once();
    }

    v68 = sub_26C148A9C();
    __swift_project_value_buffer(v68, qword_28047AB00);
    v69 = sub_26C148A7C();
    v70 = sub_26C14900C();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_26C0B5000, v69, v70, "incomplete message, invalid", v71, 2u);
      MEMORY[0x26D69C3A0](v71, -1, -1);
    }

    *v67 = xmmword_26C14C0F0;
    *(v67 + 16) = 2;
    v263 = xmmword_26C14C0F0;
    LOBYTE(v264) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BF5D0(&v309 + 8);
    sub_26C0BF5D0(&v336 + 8);
    v3 = &qword_28047A940;
LABEL_133:
    sub_26C0CF5C4(&v299, &qword_28047A940, &qword_26C14A7E8);
LABEL_58:
    sub_26C0CF5C4(&v326, &qword_28047A940, &qword_26C14A7E8);
    return v3;
  }

  if (v289 != 6)
  {
    v78 = a3;
    if (qword_28047A740 != -1)
    {
      swift_once();
    }

    v79 = sub_26C148A9C();
    __swift_project_value_buffer(v79, qword_28047AB00);
    v269 = v278;
    v270 = v279;
    v271 = v280;
    v265 = v274;
    v266 = v275;
    v267 = v276;
    v268 = v277;
    v263 = v272;
    v264 = v273;
    sub_26C0E5D8C(&v263, v262);
    v80 = sub_26C148A7C();
    v81 = sub_26C14900C();
    sub_26C0CF5C4(&v272, &qword_28047A940, &qword_26C14A7E8);
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v262 = v83;
      *v82 = 136315138;
      if (v289 > 3u)
      {
        if (v289 > 5u)
        {
          if (v289 == 6)
          {
            v84 = 0xE800000000000000;
            v85 = 0x64656873696E6966;
          }

          else
          {
            v85 = 0xD000000000000010;
            v84 = 0x800000026C15A4C0;
          }
        }

        else if (v289 == 4)
        {
          v85 = 0x6369666974726563;
          v84 = 0xEB00000000657461;
        }

        else
        {
          v84 = 0x800000026C15A4E0;
          v85 = 0xD000000000000011;
        }
      }

      else if (v289 > 1u)
      {
        if (v289 == 2)
        {
          v84 = 0x800000026C15A520;
          v85 = 0xD000000000000013;
        }

        else
        {
          v84 = 0x800000026C15A500;
          v85 = 0xD000000000000012;
        }
      }

      else
      {
        v84 = 0xEB000000006F6C6CLL;
        if (v289)
        {
          v85 = 0x6548726576726573;
        }

        else
        {
          v85 = 0x6548746E65696C63;
        }
      }

      v129 = sub_26C0E5DE8(v85, v84, v262);

      *(v82 + 4) = v129;
      _os_log_impl(&dword_26C0B5000, v80, v81, "unexpected message %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x26D69C3A0](v83, -1, -1);
      MEMORY[0x26D69C3A0](v82, -1, -1);
    }

    else
    {
    }

    *v78 = xmmword_26C14C0F0;
    *(v78 + 16) = 2;
    *v262 = xmmword_26C14C0F0;
    v262[16] = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BF5D0(&v309 + 8);
    v3 = &qword_28047A940;
    sub_26C0CF5C4(&v272, &qword_28047A940, &qword_26C14A7E8);
    sub_26C0BF5D0(&v336 + 8);
    goto LABEL_133;
  }

  v231 = v283;
  v229 = *(&v282 + 1);
  v230 = *(&v283 + 1);
  v72 = v3 + *(type metadata accessor for ExportedAuthenticator(0) + 24);
  v232 = *(type metadata accessor for HandshakeStateMachine(0) + 24);
  v233 = v72;
  sub_26C0E5EB4(&v72[v232], v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v234 = a3;
  if (EnumCaseMultiPayload == 6)
  {
    v74 = v25;
    v75 = v257;
    sub_26C0E61A0(v74, v257, type metadata accessor for HandshakeState.ReadyState);
    sub_26C0BBAA4(*(&v282 + 1), v283);
    sub_26C0E5438(0xD00000000000002FLL, 0x800000026C15AAE0, v30);
    sub_26C0E6208(v75, type metadata accessor for HandshakeState.ReadyState);
    v76 = v240;
    v77 = v259;
  }

  else
  {
    v76 = v240;
    v77 = v259;
    (v240[7])(v30, 1, 1, v259);
    sub_26C0BBAA4(*(&v282 + 1), v283);
    sub_26C0E6208(v25, type metadata accessor for HandshakeState);
  }

  v86 = v76[6];
  if (v86(v30, 1, v77) != 1)
  {
    v227 = v76[4];
    *&v228 = v76 + 4;
    v227(v258, v30, v77);
    sub_26C0E5EB4(&v233[v232], v66);
    v88 = swift_getEnumCaseMultiPayload();
    v89 = v77;
    v240 = v76;
    if (v88 == 6)
    {
      v90 = v257;
      sub_26C0E61A0(v66, v257, type metadata accessor for HandshakeState.ReadyState);
      v66 = v254;
      sub_26C0E5438(0xD00000000000002ALL, 0x800000026C15AB10, v254);
      v87 = v66;
      v91 = type metadata accessor for HandshakeState.ReadyState;
      v92 = v90;
    }

    else
    {
      v94 = v76[7];
      v87 = v254;
      v94(v254, 1, 1, v77);
      v91 = type metadata accessor for HandshakeState;
      v92 = v66;
    }

    sub_26C0E6208(v92, v91);
    v95 = &v308;
    if (v86(v87, 1, v89) == 1)
    {
      (v240[1])(v258, v89);
      goto LABEL_102;
    }

    v101 = (v227)(v255, v87, v89);
    v263 = xmmword_26C14A1B0;
    *&v264 = 0;
    MEMORY[0x28223BE20](v101);
    *(&v226 - 2) = &v263;
    v102 = v6;
    sub_26C148B8C();
    v103 = v6;
    v104 = *(&v335 + 1) >> 62;
    if ((*(&v335 + 1) >> 62) > 1)
    {
      v105 = 0;
      if (v104 == 2)
      {
        v105 = *(v335 + 24);
      }
    }

    else if (v104)
    {
      v105 = v335 >> 32;
    }

    else
    {
      v105 = BYTE14(v335);
    }

    if (v105 < v336)
    {
      __break(1u);
    }

    else
    {
      v106 = sub_26C14889C();
      v108 = v107;
      sub_26C0E1E48(v106, v107);
      sub_26C0BB9B0(v106, v108);
      v109 = v263;
      v110 = v264;
      v111 = v253;
      sub_26C0E5EB4(&v233[v232], v253);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v112 = v257;
        sub_26C0E61A0(v111, v257, type metadata accessor for HandshakeState.ReadyState);
        sub_26C0E59EC(v109, *(&v109 + 1), v110, v262);
        sub_26C0E6208(v112, type metadata accessor for HandshakeState.ReadyState);
        v113 = *v262;
        v260 = *v262;
        v228 = *&v262[8];
        v261 = *&v262[8];
        sub_26C0E4F18(&v260, v262);
        v254 = *v262;
        v353 = *&v262[8];
        v114 = *&v262[16];
        v115 = v238[2];
        v253 = v113;
        if (!v115)
        {
          sub_26C0BBAA4(*(&v336 + 1), v337);

          v130 = 1;
          v131 = v250;
          goto LABEL_147;
        }

        v95 = v238[4];
        v116 = v238[5];
        v117 = v238[6];
        v118 = v116 >> 62;
        if ((v116 >> 62) > 1)
        {
          if (v118 != 2)
          {
            v119 = 0;
            goto LABEL_140;
          }

          v119 = *(v95 + 24);
        }

        else
        {
          if (!v118)
          {
            v119 = BYTE6(v116);
LABEL_140:
            if (v119 < v117)
            {
              __break(1u);
              goto LABEL_247;
            }

            sub_26C0BBAA4(*(&v336 + 1), v337);

            v132 = sub_26C14889C();
            v134 = v133;
            v135 = v247();
            v137 = v136;
            sub_26C0BB9B0(v132, v134);
            if (v137 >> 60 == 15)
            {
              sub_26C0BB9B0(v95, v116);
              v130 = 1;
            }

            else
            {
              *v262 = v135;
              *&v262[8] = v137;
              sub_26C0BBAA4(v135, v137);
              sub_26C148E1C();
              if (v103)
              {

                v257 = xmmword_26C14A900;
                *v262 = xmmword_26C14A900;
                v262[16] = 2;
                sub_26C0BBAF8();
                swift_willThrowTypedImpl();
                sub_26C0BB9B0(v253, v228);
                sub_26C0BB9B0(v254, v353);
                sub_26C0BB9B0(v95, v116);
                sub_26C0BB344(v135, v137);
                sub_26C0BF5D0(&v309 + 8);
                sub_26C0BF5D0(&v336 + 8);
                sub_26C0CF5C4(&v272, &qword_28047A940, &qword_26C14A7E8);
                sub_26C0CF5C4(&v299, &qword_28047A940, &qword_26C14A7E8);
                sub_26C0CF5C4(&v326, &qword_28047A940, &qword_26C14A7E8);
                v3 = v240[1];
                v138 = v259;
                (v3)(v255, v259);
                (v3)(v258, v138);
                sub_26C0BF5D0(&v336 + 8);
LABEL_163:
                sub_26C0BF5D0(&v282 + 8);
                v153 = v234;
                *v234 = v257;
                *(v153 + 16) = 2;
LABEL_243:
                sub_26C0BB9B0(v263, *(&v263 + 1));
                return v3;
              }

              sub_26C0BB9B0(v95, v116);
              sub_26C0BB344(v135, v137);
              v130 = 0;
            }

            v95 = &v308;
            v131 = v250;
LABEL_147:
            v140 = v251;
            v139 = v252;
            (*(v131 + 56))(v251, v130, 1, v252);
            v66 = &v335;
            v141 = v140;
            sub_26C0BF5D0(&v336 + 8);
            v142 = (*(v131 + 48))(v140, 1, v139);
            v116 = v259;
            if (v142 == 1)
            {
              sub_26C0CF5C4(v141, &qword_28047A9F0, &qword_26C14A9C0);
              if (qword_28047A740 == -1)
              {
LABEL_149:
                v143 = sub_26C148A9C();
                __swift_project_value_buffer(v143, qword_28047AB00);
                v144 = sub_26C148A7C();
                v145 = sub_26C14900C();
                v146 = os_log_type_enabled(v144, v145);
                v147 = v253;
                if (v146)
                {
                  v148 = swift_slowAlloc();
                  *v148 = 0;
                  _os_log_impl(&dword_26C0B5000, v144, v145, "failed to extract key from certificate", v148, 2u);
                  MEMORY[0x26D69C3A0](v148, -1, -1);
                }

                v149 = v234;
                *v234 = xmmword_26C14C0F0;
                *(v149 + 16) = 2;
                *v262 = xmmword_26C14C0F0;
                v262[16] = 2;
                sub_26C0BBAF8();
                swift_willThrowTypedImpl();
                sub_26C0BB9B0(v147, v228);
                sub_26C0BB9B0(v254, v353);
                sub_26C0BF5D0(v95 + 24);
                sub_26C0BF5D0(v66 + 24);
                sub_26C0CF5C4(&v272, &qword_28047A940, &qword_26C14A7E8);
                sub_26C0CF5C4(&v299, &qword_28047A940, &qword_26C14A7E8);
                sub_26C0CF5C4(&v326, &qword_28047A940, &qword_26C14A7E8);
                v3 = v240[1];
                (v3)(v255, v116);
                v127 = v258;
                v128 = v116;
                goto LABEL_196;
              }

LABEL_247:
              swift_once();
              goto LABEL_149;
            }

            (*(v131 + 32))(v249, v141, v139);
            v150 = v237 >> 62;
            if ((v237 >> 62) > 1)
            {
              if (v150 != 2)
              {
                v151 = 0;
LABEL_160:
                if (v151 < v236)
                {
                  __break(1u);
LABEL_249:
                  __break(1u);
LABEL_250:
                  __break(1u);
                  goto LABEL_251;
                }

                *v262 = sub_26C14889C();
                *&v262[8] = v152;
                sub_26C0BE710();
                sub_26C148DAC();
                if (v103)
                {

                  sub_26C0BF5D0(&v309 + 8);
                  v257 = xmmword_26C14A900;
                  *v262 = xmmword_26C14A900;
                  v262[16] = 2;
                  sub_26C0BBAF8();
                  swift_willThrowTypedImpl();
                  sub_26C0BB9B0(v253, v228);
                  sub_26C0BB9B0(v254, v353);
                  sub_26C0BF5D0(&v309 + 8);
                  sub_26C0BF5D0(&v336 + 8);
                  sub_26C0CF5C4(&v272, &qword_28047A940, &qword_26C14A7E8);
                  sub_26C0CF5C4(&v299, &qword_28047A940, &qword_26C14A7E8);
                  sub_26C0CF5C4(&v326, &qword_28047A940, &qword_26C14A7E8);
                  (*(v131 + 8))(v249, v252);
                  v3 = v240[1];
                  (v3)(v255, v116);
                  (v3)(v258, v116);
                  goto LABEL_163;
                }

                sub_26C0BF5D0(&v309 + 8);
                v154 = v353 >> 62;
                if ((v353 >> 62) > 1)
                {
                  if (v154 == 2)
                  {
                    v155 = *(v254 + 24);
                  }

                  else
                  {
                    v155 = 0;
                  }
                }

                else if (v154)
                {
                  v155 = v254 >> 32;
                }

                else
                {
                  v155 = BYTE6(v353);
                }

                if (v155 < v114)
                {
                  goto LABEL_250;
                }

                *v262 = sub_26C14889C();
                *&v262[8] = v156;
                v157 = sub_26C148DCC();
                sub_26C0BB9B0(*v262, *&v262[8]);
                if ((v157 & 1) == 0)
                {
                  if (qword_28047A740 == -1)
                  {
LABEL_177:
                    v160 = sub_26C148A9C();
                    __swift_project_value_buffer(v160, qword_28047AB00);
                    v161 = sub_26C148A7C();
                    v162 = sub_26C14900C();
                    if (os_log_type_enabled(v161, v162))
                    {
                      v163 = swift_slowAlloc();
                      *v163 = 0;
                      _os_log_impl(&dword_26C0B5000, v161, v162, "signature validation failed", v163, 2u);
                      MEMORY[0x26D69C3A0](v163, -1, -1);
                    }

                    v164 = xmmword_26C14C0F0;
LABEL_194:
                    v180 = v234;
                    *v234 = v164;
                    *(v180 + 16) = 2;
                    *v262 = v164;
                    v262[16] = 2;
                    sub_26C0BBAF8();
                    swift_willThrowTypedImpl();
                    v181 = v228;
                    v182 = v253;
LABEL_195:
                    sub_26C0BB9B0(v182, v181);
                    sub_26C0BB9B0(v254, v353);
                    sub_26C0BF5D0(&v309 + 8);
                    sub_26C0BF5D0(&v336 + 8);
                    sub_26C0CF5C4(&v272, &qword_28047A940, &qword_26C14A7E8);
                    sub_26C0CF5C4(&v299, &qword_28047A940, &qword_26C14A7E8);
                    sub_26C0CF5C4(&v326, &qword_28047A940, &qword_26C14A7E8);
                    (*(v244 + 8))(v248, v245);
                    (*(v250 + 8))(v249, v252);
                    v3 = v240[1];
                    v183 = v259;
                    (v3)(v255, v259);
                    v127 = v258;
                    v128 = v183;
LABEL_196:
                    (v3)(v127, v128);
                    sub_26C0BF5D0(&v282 + 8);
                    goto LABEL_243;
                  }

LABEL_251:
                  swift_once();
                  goto LABEL_177;
                }

                v158 = *(&v308 + 1) >> 62;
                if ((*(&v308 + 1) >> 62) > 1)
                {
                  if (v158 == 2)
                  {
                    v159 = *(v308 + 24);
                  }

                  else
                  {
                    v159 = 0;
                  }
                }

                else if (v158)
                {
                  v159 = v308 >> 32;
                }

                else
                {
                  v159 = BYTE14(v308);
                }

                if (v159 < v309)
                {
                  __break(1u);
                }

                else
                {
                  v165 = sub_26C14889C();
                  v167 = v166;
                  sub_26C0E1E48(v165, v166);
                  sub_26C0BB9B0(v165, v167);
                  v168 = v263;
                  v169 = v264;
                  sub_26C0E5EB4(&v233[v232], v243);
                  if (swift_getEnumCaseMultiPayload() == 6)
                  {
                    v170 = v257;
                    sub_26C0E61A0(v243, v257, type metadata accessor for HandshakeState.ReadyState);
                    sub_26C0E59EC(v168, *(&v168 + 1), v169, v262);
                    sub_26C0E6208(v170, type metadata accessor for HandshakeState.ReadyState);
                    ready = *v262;
                    *&v257 = *&v262[8];
                    v171 = *&v262[16];
                    v172 = v242;
                    sub_26C0E5EB4(&v233[v232], v242);
                    v173 = swift_getEnumCaseMultiPayload();
                    sub_26C0E6208(v172, type metadata accessor for HandshakeState);
                    if (v173 != 6)
                    {
                      if (qword_28047A740 != -1)
                      {
                        swift_once();
                      }

                      v184 = sub_26C148A9C();
                      __swift_project_value_buffer(v184, qword_28047AB00);
                      v185 = sub_26C148A7C();
                      v186 = sub_26C14900C();
                      if (os_log_type_enabled(v185, v186))
                      {
                        v187 = swift_slowAlloc();
                        *v187 = 0;
                        _os_log_impl(&dword_26C0B5000, v185, v186, "failed to create finished authenticator HMAC", v187, 2u);
                        MEMORY[0x26D69C3A0](v187, -1, -1);
                      }

                      v188 = v234;
                      *v234 = xmmword_26C14C100;
                      *(v188 + 16) = 2;
                      *v262 = xmmword_26C14C100;
                      v262[16] = 2;
                      sub_26C0BBAF8();
                      swift_willThrowTypedImpl();
                      sub_26C0BB9B0(v253, v228);
                      v182 = ready;
                      v181 = v257;
                      goto LABEL_195;
                    }

                    v174 = v257 >> 62;
                    if ((v257 >> 62) > 1)
                    {
                      if (v174 == 2)
                      {
                        v175 = *(ready + 24);
                      }

                      else
                      {
                        v175 = 0;
                      }
                    }

                    else if (v174)
                    {
                      v175 = ready >> 32;
                    }

                    else
                    {
                      v175 = BYTE6(v257);
                    }

                    if (v175 < v171)
                    {
                      __break(1u);
                    }

                    else
                    {
                      v189 = sub_26C14889C();
                      v191 = v190;
                      MEMORY[0x28223BE20](v189);
                      *(&v226 - 2) = v255;
                      v192 = v241;
                      sub_26C0E6284(sub_26C0E6268, (&v226 - 4), v189, v191);
                      v246 = 0;
                      sub_26C0BB9B0(v189, v191);
                      sub_26C0E1F1C(v192, v262);
                      v251 = *v262;
                      v247 = *&v262[8];
                      v193 = *&v262[8] >> 62;
                      if ((*&v262[8] >> 62) > 1)
                      {
                        if (v193 == 2)
                        {
                          v194 = *(v251 + 24);
                        }

                        else
                        {
                          v194 = 0;
                        }
                      }

                      else if (v193)
                      {
                        v194 = v251 >> 32;
                      }

                      else
                      {
                        v194 = BYTE6(v247);
                      }

                      if (v194 >= *&v262[16])
                      {
                        v195 = sub_26C14889C();
                        v197 = v196;
                        v198 = v231 >> 62;
                        if ((v231 >> 62) > 1)
                        {
                          if (v198 == 2)
                          {
                            v199 = *(v229 + 24);
                          }

                          else
                          {
                            v199 = 0;
                          }
                        }

                        else if (v198)
                        {
                          v199 = v229 >> 32;
                        }

                        else
                        {
                          v199 = BYTE6(v231);
                        }

                        if (v199 >= v230)
                        {
                          v200 = sub_26C14889C();
                          v202 = v201;
                          v203 = sub_26C0E6464(v195, v197, v200, v201);
                          sub_26C0BB9B0(v200, v202);
                          sub_26C0BB9B0(v195, v197);
                          if (v203)
                          {
                            v204 = v238[2];
                            if (!v204)
                            {
                              sub_26C0BB9B0(v253, v228);
                              sub_26C0BB9B0(ready, v257);
                              sub_26C0BB9B0(v251, v247);
                              sub_26C0BB9B0(v254, v353);
                              sub_26C0BF5D0(&v309 + 8);
                              sub_26C0BF5D0(&v336 + 8);
                              sub_26C0CF5C4(&v272, &qword_28047A940, &qword_26C14A7E8);
                              sub_26C0CF5C4(&v299, &qword_28047A940, &qword_26C14A7E8);
                              sub_26C0CF5C4(&v326, &qword_28047A940, &qword_26C14A7E8);
                              (*(v244 + 8))(v248, v245);
                              (*(v250 + 8))(v249, v252);
                              v224 = v240[1];
                              v225 = v259;
                              v224(v255, v259);
                              v224(v258, v225);
                              sub_26C0BF5D0(&v282 + 8);
                              v3 = MEMORY[0x277D84F90];
                              goto LABEL_243;
                            }

                            *v262 = MEMORY[0x277D84F90];
                            v205 = v238;

                            sub_26C0CEB7C(0, v204, 0);
                            v3 = *v262;
                            v206 = v205 + 7;
                            while (1)
                            {
                              v208 = *(v206 - 3);
                              v207 = *(v206 - 2);
                              v209 = v207 >> 62;
                              if ((v207 >> 62) > 1)
                              {
                                v210 = v209 == 2 ? *(v208 + 24) : 0;
                              }

                              else
                              {
                                v210 = v209 ? v208 >> 32 : BYTE6(v207);
                              }

                              if (v210 < *(v206 - 1))
                              {
                                goto LABEL_249;
                              }

                              sub_26C0BBAA4(*(v206 - 3), *(v206 - 2));

                              v211 = sub_26C14889C();
                              v213 = v212;
                              sub_26C0BB9B0(v208, v207);

                              *v262 = v3;
                              v215 = v3[2];
                              v214 = v3[3];
                              if (v215 >= v214 >> 1)
                              {
                                sub_26C0CEB7C((v214 > 1), v215 + 1, 1);
                                v3 = *v262;
                              }

                              v3[2] = v215 + 1;
                              v216 = &v3[2 * v215];
                              v216[4] = v211;
                              v216[5] = v213;
                              v206 += 4;
                              if (!--v204)
                              {
                                sub_26C0BB9B0(v253, v228);
                                sub_26C0BB9B0(ready, v257);
                                sub_26C0BB9B0(v251, v247);
                                sub_26C0BB9B0(v254, v353);

                                sub_26C0BF5D0(&v309 + 8);
                                sub_26C0BF5D0(&v336 + 8);
                                sub_26C0CF5C4(&v272, &qword_28047A940, &qword_26C14A7E8);
                                sub_26C0CF5C4(&v299, &qword_28047A940, &qword_26C14A7E8);
                                sub_26C0CF5C4(&v326, &qword_28047A940, &qword_26C14A7E8);
                                (*(v244 + 8))(v248, v245);
                                (*(v250 + 8))(v249, v252);
                                v222 = v240[1];
                                v223 = v259;
                                v222(v255, v259);
                                v222(v258, v223);
                                sub_26C0BF5D0(&v282 + 8);
                                goto LABEL_243;
                              }
                            }
                          }

                          if (qword_28047A740 == -1)
                          {
LABEL_239:
                            v217 = sub_26C148A9C();
                            __swift_project_value_buffer(v217, qword_28047AB00);
                            v218 = sub_26C148A7C();
                            v219 = sub_26C14900C();
                            if (os_log_type_enabled(v218, v219))
                            {
                              v220 = swift_slowAlloc();
                              *v220 = 0;
                              _os_log_impl(&dword_26C0B5000, v218, v219, "invalid finished payload", v220, 2u);
                              MEMORY[0x26D69C3A0](v220, -1, -1);
                            }

                            v221 = v234;
                            *v234 = xmmword_26C14C0F0;
                            *(v221 + 16) = 2;
                            *v262 = xmmword_26C14C0F0;
                            v262[16] = 2;
                            sub_26C0BBAF8();
                            swift_willThrowTypedImpl();
                            sub_26C0BB9B0(v253, v228);
                            sub_26C0BB9B0(ready, v257);
                            v182 = v251;
                            v181 = v247;
                            goto LABEL_195;
                          }

LABEL_257:
                          swift_once();
                          goto LABEL_239;
                        }

LABEL_256:
                        __break(1u);
                        goto LABEL_257;
                      }
                    }

                    __break(1u);
                    goto LABEL_256;
                  }

                  sub_26C0E6208(v243, type metadata accessor for HandshakeState);
                  if (qword_28047A740 == -1)
                  {
LABEL_191:
                    v176 = sub_26C148A9C();
                    __swift_project_value_buffer(v176, qword_28047AB00);
                    v177 = sub_26C148A7C();
                    v178 = sub_26C14900C();
                    if (os_log_type_enabled(v177, v178))
                    {
                      v179 = swift_slowAlloc();
                      *v179 = 0;
                      _os_log_impl(&dword_26C0B5000, v177, v178, "failed to create finished authenticator hash", v179, 2u);
                      MEMORY[0x26D69C3A0](v179, -1, -1);
                    }

                    v164 = xmmword_26C14C100;
                    goto LABEL_194;
                  }
                }

                swift_once();
                goto LABEL_191;
              }

              v151 = *(v235 + 24);
            }

            else
            {
              if (!v150)
              {
                v151 = BYTE6(v237);
                goto LABEL_160;
              }

              v151 = v235 >> 32;
            }

            sub_26C0BBAA4(v310, *(&v310 + 1));
            goto LABEL_160;
          }

          v119 = v95 >> 32;
        }

        sub_26C0BBAA4(v238[4], v238[5]);
        goto LABEL_140;
      }

      sub_26C0E6208(v111, type metadata accessor for HandshakeState);
      v89 = &v335;
      if (qword_28047A740 == -1)
      {
LABEL_126:
        v120 = sub_26C148A9C();
        __swift_project_value_buffer(v120, qword_28047AB00);
        v121 = sub_26C148A7C();
        v122 = sub_26C14900C();
        v123 = os_log_type_enabled(v121, v122);
        v124 = v259;
        if (v123)
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&dword_26C0B5000, v121, v122, "failed to create authenticator hash", v125, 2u);
          MEMORY[0x26D69C3A0](v125, -1, -1);
        }

        v126 = v234;
        *v234 = xmmword_26C14C100;
        *(v126 + 16) = 2;
        *v262 = xmmword_26C14C100;
        v262[16] = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        sub_26C0BF5D0(&v309 + 8);
        sub_26C0BF5D0(v89 + 24);
        sub_26C0CF5C4(&v272, &qword_28047A940, &qword_26C14A7E8);
        sub_26C0CF5C4(&v299, &qword_28047A940, &qword_26C14A7E8);
        sub_26C0CF5C4(&v326, &qword_28047A940, &qword_26C14A7E8);
        v3 = v240[1];
        (v3)(v255, v124);
        v127 = v258;
        v128 = v124;
        goto LABEL_196;
      }
    }

    swift_once();
    goto LABEL_126;
  }

  v87 = v30;
LABEL_102:
  sub_26C0CF5C4(v87, &qword_28047A930, qword_26C14C120);
  if (qword_28047A740 != -1)
  {
    swift_once();
  }

  v96 = sub_26C148A9C();
  __swift_project_value_buffer(v96, qword_28047AB00);
  v97 = sub_26C148A7C();
  v98 = sub_26C14900C();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_26C0B5000, v97, v98, "failed to export keys", v99, 2u);
    MEMORY[0x26D69C3A0](v99, -1, -1);
  }

  v100 = v234;
  *v234 = xmmword_26C14C100;
  *(v100 + 16) = 2;
  v263 = xmmword_26C14C100;
  LOBYTE(v264) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0BF5D0(&v309 + 8);
  sub_26C0BF5D0(&v336 + 8);
  v3 = &qword_28047A940;
  sub_26C0CF5C4(&v272, &qword_28047A940, &qword_26C14A7E8);
  sub_26C0CF5C4(&v299, &qword_28047A940, &qword_26C14A7E8);
  sub_26C0CF5C4(&v326, &qword_28047A940, &qword_26C14A7E8);
  sub_26C0BF5D0(&v282 + 8);
  return v3;
}

uint64_t sub_26C0E4F18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *a2 = xmmword_26C14A1B0;
  *(a2 + 16) = 0;
  sub_26C0D21F8(64, 32);
  sub_26C0D1D1C(0xD000000000000016, 0x800000026C15AB40);
  if (("authenticator finished key" & 0x1000000000000000) != 0)
  {
    sub_26C148F6C();
  }

  v11 = 0;
  v12[3] = MEMORY[0x277D838B0];
  v12[4] = MEMORY[0x277CC9C18];
  v12[0] = &v11;
  v12[1] = v12;
  __swift_project_boxed_opaque_existential_1(v12, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v12);
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v2 >> 32;
  }

  else
  {
    v6 = BYTE6(v3);
  }

  if (v6 < v4)
  {
    __break(1u);
  }

  v7 = sub_26C14889C();
  v9 = v8;
  sub_26C0E1E48(v7, v8);
  return sub_26C0BB9B0(v7, v9);
}