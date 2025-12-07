char *sub_22EE20078(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95918, &qword_22EE43FC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_22EE2017C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
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
      v14 = __clz(__rbit64(v7)) | (v9 << 6);
      v15 = *(*(a4 + 48) + 2 * v14);
      v16 = *(*(a4 + 56) + 8 * v14);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v16;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
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
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22EE20280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95668, &qword_22EE435B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE202F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE2037C(uint64_t a1)
{
  result = type metadata accessor for RecordingOptions.Options(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22EE20400()
{
  result = qword_27DA95900;
  if (!qword_27DA95900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95900);
  }

  return result;
}

unint64_t sub_22EE20468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95928, &qword_22EE43FD8);
    v3 = sub_22EE3C9D4();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;

      result = sub_22EE1F4C8(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

uint64_t sub_22EE20564()
{
  sub_22EE3CC74();
  sub_22EE3CCB4();
  sub_22EE3CCA4();
  return sub_22EE3CCC4();
}

uint64_t sub_22EE20604(uint64_t a1)
{
  sub_22EE3CC74();
  sub_22EE3CCB4();
  sub_22EE3CCA4();
  return sub_22EE3CCC4();
}

unint64_t sub_22EE2068C(unint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(result + 48) != 117571592)
  {
    goto LABEL_7;
  }

  if (*(v2 + 72) == 2)
  {
    result = ktrace_get_earliest_timestamp(a2);
    if (*v4 < result)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    ktrace_get_ns_from_timestamp(a2, *v4 - result);
    result = sub_22EDF1508(1);
    *(v2 + 72) = result & 1;
    *(v2 + 80) = v5;
    *(v2 + 88) = v6;
  }

  v7 = *(v2 + 64);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v2 + 64) = v9;
LABEL_7:
  result = sub_22EDECD7C(v4);
  v10 = *v4;
  if (*v4 < *(v2 + 32))
  {
    result = sub_22EE20B74(v11, *(v4 + 52) | (HIWORD(*(v4 + 48)) << 32));
    v10 = *v4;
  }

  if (*(v2 + 24) == 1)
  {
    result = ktrace_get_ns_from_timestamp(a2, v10);
    *(v2 + 16) = result;
    *(v2 + 24) = 0;
    v10 = *v4;
  }

  *(v2 + 32) = v10;
  return result;
}

unint64_t sub_22EE207A4(const void *a1, uint64_t a2)
{
  v5 = type metadata accessor for RecordingOptions.Options(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for KdebugAdvice(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  memcpy(v28, a1, 0x141uLL);
  v11 = *(v2 + 64);
  v12 = *(*(v2 + 56) + 16);
  if (v12)
  {
    v13 = 0xD000000000000063;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = 0x800000022EE4A3B0;
  }

  else
  {
    v14 = 0;
  }

  if (v11 >= 1 && *(v2 + 72) != 2)
  {
    v16 = *v2;
    v15 = *(v2 + 8);
    v25 = v12;
    memcpy(v27, a1, 0x141uLL);
    sub_22EE1E744(a2, v7);

    sub_22ED80E90(v28, v26);
    sub_22EE1F46C(v27, v16, v15, v7, v10);
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_22EE3C864();
    MEMORY[0x2318F58F0](0x206572656854, 0xE600000000000000);
    if (v11 == 1)
    {
      v17 = 0xE000000000000000;
    }

    else
    {
      v17 = 0xE100000000000000;
    }

    if (v11 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = 115;
    }

    if (v11 == 1)
    {
      v19 = 7561591;
    }

    else
    {
      v19 = 1701995895;
    }

    if (v11 == 1)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    MEMORY[0x2318F58F0](v19, v20);

    MEMORY[0x2318F58F0](32, 0xE100000000000000);
    v26[0] = v11;
    v21 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v21);

    MEMORY[0x2318F58F0](0x636E6174736E6920, 0xE900000000000065);
    MEMORY[0x2318F58F0](v18, v17);

    MEMORY[0x2318F58F0](0xD000000000000020, 0x800000022EE4A420);
    sub_22EE3C424();
    MEMORY[0x2318F58F0](0xD00000000000002CLL, 0x800000022EE4A450);
    if (!v25)
    {
      v14 = 0xE000000000000000;
    }

    MEMORY[0x2318F58F0](v13, v14);

    MEMORY[0x2318F58F0](10, 0xE100000000000000);
    v22 = sub_22EE1E7A8();
    MEMORY[0x2318F58F0](v22);

    v13 = v27[0];
    sub_22EE20C9C(v10);
  }

  return v13;
}

double sub_22EE20AE8@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_22EDECED4();
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = MEMORY[0x277D84FA0];
  result = 0.0;
  *(a1 + 64) = xmmword_22EE43FE0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  return result;
}

uint64_t sub_22EE20B74(uint64_t a1, unint64_t a2)
{
  v5 = HIDWORD(a2);
  v6 = *v2;
  sub_22EE3CC74();
  sub_22EE3CCB4();
  sub_22EE3CCA4();
  v7 = sub_22EE3CCC4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v6 + 48) + 8 * v9;
      if (*v11 == a2 && *(v11 + 4) == v5)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    result = 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_22EE21120(a2 & 0xFFFFFFFFFFFFLL, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 4) = v5;
  return result;
}

uint64_t sub_22EE20C9C(uint64_t a1)
{
  v2 = type metadata accessor for KdebugAdvice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22EE20CFC()
{
  result = qword_27DA95930;
  if (!qword_27DA95930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95930);
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RetrogradeEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RetrogradeEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_22EE20DF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_22EE20E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22EE20EB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95938, &qword_22EE440C8);
  result = sub_22EE3C824();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 8 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 4);
      sub_22EE3CC74();
      sub_22EE3CCB4();
      sub_22EE3CCA4();
      result = sub_22EE3CCC4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 8 * v13;
      *v14 = v19;
      *(v14 + 4) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22EE21120(unint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = HIDWORD(result);
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    sub_22EE20EB0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_22EE212A0();
      a2 = v8;
      goto LABEL_14;
    }

    sub_22EE213F4(v6 + 1);
  }

  v9 = *v3;
  sub_22EE3CC74();
  sub_22EE3CCB4();
  sub_22EE3CCA4();
  result = sub_22EE3CCC4();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (1)
    {
      v12 = *(v9 + 48) + 8 * a2;
      if (*v12 == v4 && *(v12 + 4) == v5)
      {
        break;
      }

      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    result = sub_22EE3CBD4();
    __break(1u);
  }

LABEL_14:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 8 * a2;
  *v14 = v4;
  *(v14 + 4) = v5;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v17;
  }

  return result;
}

void *sub_22EE212A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95938, &qword_22EE440C8);
  v2 = *v0;
  v3 = sub_22EE3C814();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 4) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOWORD(v18) = *(v18 + 4);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
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

uint64_t sub_22EE213F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95938, &qword_22EE440C8);
  result = sub_22EE3C824();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 8 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 4);
      sub_22EE3CC74();
      sub_22EE3CCB4();
      sub_22EE3CCA4();
      result = sub_22EE3CCC4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 8 * v12;
      *v13 = v18;
      *(v13 + 4) = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t *sub_22EE21670(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a1 + 16);
  *(v2 + 1) = *a1;
  *(v2 + 2) = v4;
  *(v2 + 48) = *(a1 + 32);
  v5 = *(a1 + 8);
  v2[7] = *&asc_22EE44788[8 * v5];
  v6 = *a1;
  v7 = v3;
  result = ktrace_chunk_size_t(*a1, a2);
  v9 = v2[7];
  if (__OFSUB__(result, v9))
  {
    __break(1u);
  }

  else
  {
    result = ktrace_chunk_map_data(v6, v9, result - v9);
    if (!result)
    {
      type metadata accessor for EventChunkData(0, *(v7 + 80), v10, v11);
      swift_deallocPartialClassInstance();
      return 0;
    }

    if (v5 <= 1u || v5 == 4)
    {
      v2[8] = sub_22EE3C5F4();
      v2[9] = v12;
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE21794(uint64_t (*a1)(char *))
{
  v18 = a1;
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v16 - v5;
  v7 = *(v1 + 24);
  if (v7 <= 1)
  {
    if (*(v1 + 24))
    {
      v9 = 64;
    }

    else
    {
      v9 = 32;
    }
  }

  else
  {
    if (v7 - 2 < 2)
    {
      return 0;
    }

    v9 = 48;
  }

  result = ktrace_chunk_size_t(*(v1 + 16), v4);
  v11 = result / v9;
  if (result / v9 < 1)
  {
    return 0;
  }

  v8 = 0;
  v12 = *(v1 + 64);
  v16[1] = v3 + 16;
  v17 = v12;
  while (1)
  {
    v13 = v11 >> 1;
    v14 = v8 + (v11 >> 1);
    if (__OFADD__(v8, v11 >> 1))
    {
      break;
    }

    (*(v3 + 16))(v6, v17 + *(v3 + 72) * v14, v2);
    v15 = v18(v6);
    result = (*(v3 + 8))(v6, v2);
    if ((v15 & 1) == 0)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return 0;
      }

      v13 = v11 + ~v13;
    }

    v11 = v13;
    if (v13 <= 0)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE21958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v42 = a4;
  v43 = a5;
  v44 = a2;
  v45 = a3;
  v11 = *(*v5 + 120);
  v12 = v11(sub_22EE28DB4, v41);
  v34 = v13;
  v37 = a4;
  v38 = a5;
  v39 = a2;
  v40 = a3;
  result = v11(sub_22EE28E08, v36);
  v16 = v5[8];
  if (!v16)
  {
    goto LABEL_24;
  }

  if (v34)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  if (v15)
  {
    goto LABEL_26;
  }

  v17 = result;
  if (v12 < result)
  {
    while (1)
    {
      v18 = v5[2];
      v19 = ktrace_chunk_tag(v18, v15);
      v20 = ktrace_chunk_version_major(v18);
      v21 = ktrace_chunk_version_minor(v18);
      appended = ktrace_file_append_start(a1, v19, v20, v21);
      if (!appended)
      {
        v28 = MEMORY[0x2318F5610]();
        sub_22EE22678();
        swift_allocError();
        *v29 = 0xD000000000000015;
        *(v29 + 8) = 0x800000022EE4A480;
        *(v29 + 16) = v28;
        *(v29 + 20) = 1;
        return swift_willThrow();
      }

      v23 = appended;
      if (v5[7] > 0)
      {
        *bytes = 0;
        v24 = ktrace_file_append_data(a1, appended, bytes, 8);
        if (v24)
        {
          break;
        }
      }

      if (__OFSUB__(v17, v12))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v17 - v12 >= 0x1FFFFFF)
      {
        v25 = 0x1FFFFFFLL;
      }

      else
      {
        v25 = v17 - v12;
      }

      if ((v25 - 0x200000000000000) >> 58 != 63)
      {
        goto LABEL_22;
      }

      v26 = ktrace_file_append_data(a1, v23, (v16 + (v12 << 6)), v25 << 6);
      if (v26)
      {
        v30 = 0x800000022EE4A4A0;
        v31 = v26;
        sub_22EE22678();
        swift_allocError();
        v33 = 0xD000000000000014;
        goto LABEL_20;
      }

      v27 = __OFADD__(v12, v25);
      v12 += v25;
      if (v27)
      {
        goto LABEL_23;
      }

      result = ktrace_file_append_finish(a1, v23);
      if (v12 >= v17)
      {
        return result;
      }
    }

    v30 = 0x800000022EE4A4C0;
    v31 = v24;
    sub_22EE22678();
    swift_allocError();
    v33 = 0xD000000000000016;
LABEL_20:
    *v32 = v33;
    *(v32 + 8) = v30;
    *(v32 + 16) = v31;
    *(v32 + 20) = 1;
    swift_willThrow();
    return ktrace_file_append_finish(a1, v23);
  }

  return result;
}

uint64_t sub_22EE21C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v42 = a4;
  v43 = a5;
  v44 = a2;
  v45 = a3;
  v11 = *(*v5 + 120);
  v12 = v11(sub_22EE28E5C, v41);
  v34 = v13;
  v37 = a4;
  v38 = a5;
  v39 = a2;
  v40 = a3;
  result = v11(sub_22EE28EB8, v36);
  v16 = v5[8];
  if (!v16)
  {
    goto LABEL_24;
  }

  if (v34)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  if (v15)
  {
    goto LABEL_26;
  }

  v17 = result;
  if (v12 < result)
  {
    while (1)
    {
      v18 = v5[2];
      v19 = ktrace_chunk_tag(v18, v15);
      v20 = ktrace_chunk_version_major(v18);
      v21 = ktrace_chunk_version_minor(v18);
      appended = ktrace_file_append_start(a1, v19, v20, v21);
      if (!appended)
      {
        v28 = MEMORY[0x2318F5610]();
        sub_22EE22678();
        swift_allocError();
        *v29 = 0xD000000000000015;
        *(v29 + 8) = 0x800000022EE4A480;
        *(v29 + 16) = v28;
        *(v29 + 20) = 1;
        return swift_willThrow();
      }

      v23 = appended;
      if (v5[7] > 0)
      {
        *bytes = 0;
        v24 = ktrace_file_append_data(a1, appended, bytes, 8);
        if (v24)
        {
          break;
        }
      }

      if (__OFSUB__(v17, v12))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v17 - v12 >= 0x3FFFFFF)
      {
        v25 = 0x3FFFFFFLL;
      }

      else
      {
        v25 = v17 - v12;
      }

      if ((v25 - 0x400000000000000) >> 59 != 31)
      {
        goto LABEL_22;
      }

      v26 = ktrace_file_append_data(a1, v23, (v16 + 32 * v12), 32 * v25);
      if (v26)
      {
        v30 = 0x800000022EE4A4A0;
        v31 = v26;
        sub_22EE22678();
        swift_allocError();
        v33 = 0xD000000000000014;
        goto LABEL_20;
      }

      v27 = __OFADD__(v12, v25);
      v12 += v25;
      if (v27)
      {
        goto LABEL_23;
      }

      result = ktrace_file_append_finish(a1, v23);
      if (v12 >= v17)
      {
        return result;
      }
    }

    v30 = 0x800000022EE4A4C0;
    v31 = v24;
    sub_22EE22678();
    swift_allocError();
    v33 = 0xD000000000000016;
LABEL_20:
    *v32 = v33;
    *(v32 + 8) = v30;
    *(v32 + 16) = v31;
    *(v32 + 20) = 1;
    swift_willThrow();
    return ktrace_file_append_finish(a1, v23);
  }

  return result;
}

uint64_t sub_22EE21F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v42 = a4;
  v43 = a5;
  v44 = a2;
  v45 = a3;
  v11 = *(*v5 + 120);
  v12 = v11(sub_22EE28F14, v41);
  v34 = v13;
  v37 = a4;
  v38 = a5;
  v39 = a2;
  v40 = a3;
  result = v11(sub_22EE28F70, v36);
  v16 = v5[8];
  if (!v16)
  {
    goto LABEL_24;
  }

  if (v34)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  if (v15)
  {
    goto LABEL_26;
  }

  v17 = result;
  if (v12 < result)
  {
    while (1)
    {
      v18 = v5[2];
      v19 = ktrace_chunk_tag(v18, v15);
      v20 = ktrace_chunk_version_major(v18);
      v21 = ktrace_chunk_version_minor(v18);
      appended = ktrace_file_append_start(a1, v19, v20, v21);
      if (!appended)
      {
        v28 = MEMORY[0x2318F5610]();
        sub_22EE22678();
        swift_allocError();
        *v29 = 0xD000000000000015;
        *(v29 + 8) = 0x800000022EE4A480;
        *(v29 + 16) = v28;
        *(v29 + 20) = 1;
        return swift_willThrow();
      }

      v23 = appended;
      if (v5[7] > 0)
      {
        *bytes = 0;
        v24 = ktrace_file_append_data(a1, appended, bytes, 8);
        if (v24)
        {
          break;
        }
      }

      if (__OFSUB__(v17, v12))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v17 - v12 >= 44739242)
      {
        v25 = 44739242;
      }

      else
      {
        v25 = v17 - v12;
      }

      if ((v25 * 48) >> 64 != (48 * v25) >> 63)
      {
        goto LABEL_22;
      }

      v26 = ktrace_file_append_data(a1, v23, (v16 + 48 * v12), 48 * v25);
      if (v26)
      {
        v30 = 0x800000022EE4A4A0;
        v31 = v26;
        sub_22EE22678();
        swift_allocError();
        v33 = 0xD000000000000014;
        goto LABEL_20;
      }

      v27 = __OFADD__(v12, v25);
      v12 += v25;
      if (v27)
      {
        goto LABEL_23;
      }

      result = ktrace_file_append_finish(a1, v23);
      if (v12 >= v17)
      {
        return result;
      }
    }

    v30 = 0x800000022EE4A4C0;
    v31 = v24;
    sub_22EE22678();
    swift_allocError();
    v33 = 0xD000000000000016;
LABEL_20:
    *v32 = v33;
    *(v32 + 8) = v30;
    *(v32 + 16) = v31;
    *(v32 + 20) = 1;
    swift_willThrow();
    return ktrace_file_append_finish(a1, v23);
  }

  return result;
}

uint64_t sub_22EE2228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v11 = *(*v5 + 120);
  v50 = *(*v5 + 80);
  v12 = v50;
  v51 = a4;
  v52 = a5;
  v53 = a2;
  v54 = a3;
  v13 = v11(sub_22EE22608, v49);
  v14 = v11;
  v15 = v13;
  v39 = v16;
  v44 = v12;
  v45 = a4;
  v46 = a5;
  v47 = a2;
  v48 = a3;
  v17 = v14(sub_22EE22640, v43);
  v19 = v18;
  result = sub_22EE3C5E4();
  v41 = result;
  if (!result)
  {
    goto LABEL_26;
  }

  v40 = *(v12 - 8);
  v22 = *(v40 + 64);
  if (!v22)
  {
    goto LABEL_25;
  }

  if (v39)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  if (v19)
  {
    goto LABEL_28;
  }

  if (v15 < v17)
  {
    while (1)
    {
      v23 = v5[2];
      v24 = ktrace_chunk_tag(v23, v21);
      v25 = ktrace_chunk_version_major(v23);
      v26 = ktrace_chunk_version_minor(v23);
      appended = ktrace_file_append_start(a1, v24, v25, v26);
      if (!appended)
      {
        v33 = MEMORY[0x2318F5610]();
        sub_22EE22678();
        swift_allocError();
        *v34 = 0xD000000000000015;
        *(v34 + 8) = 0x800000022EE4A480;
        *(v34 + 16) = v33;
        *(v34 + 20) = 1;
        return swift_willThrow();
      }

      v28 = appended;
      if (v5[7] >= 1)
      {
        *bytes = 0;
        v29 = ktrace_file_append_data(a1, appended, bytes, 8);
        if (v29)
        {
          break;
        }
      }

      if (__OFSUB__(v17, v15))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (0x7FFFFFFF / v22 >= v17 - v15)
      {
        v30 = v17 - v15;
      }

      else
      {
        v30 = 0x7FFFFFFF / v22;
      }

      if ((v30 * v22) >> 64 != (v30 * v22) >> 63)
      {
        goto LABEL_23;
      }

      v31 = ktrace_file_append_data(a1, v28, (v41 + *(v40 + 72) * v15), v30 * v22);
      if (v31)
      {
        v35 = 0x800000022EE4A4A0;
        v36 = v31;
        sub_22EE22678();
        swift_allocError();
        v38 = 0xD000000000000014;
        goto LABEL_21;
      }

      v32 = __OFADD__(v15, v30);
      v15 += v30;
      if (v32)
      {
        goto LABEL_24;
      }

      result = ktrace_file_append_finish(a1, v28);
      if (v15 >= v17)
      {
        return result;
      }
    }

    v35 = 0x800000022EE4A4C0;
    v36 = v29;
    sub_22EE22678();
    swift_allocError();
    v38 = 0xD000000000000016;
LABEL_21:
    *v37 = v38;
    *(v37 + 8) = v35;
    *(v37 + 16) = v36;
    *(v37 + 20) = 1;
    swift_willThrow();
    return ktrace_file_append_finish(a1, v28);
  }

  return result;
}

unint64_t sub_22EE22678()
{
  result = qword_27DA95940;
  if (!qword_27DA95940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95940);
  }

  return result;
}

unint64_t sub_22EE226CC(uint64_t a1, uint64_t a2)
{
  result = ktrace_chunk_size_t(*(v2 + 16), a2);
  v4 = *(v2 + 56);
  v5 = result - v4;
  if (__OFSUB__(result, v4))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    result = sub_22EE3C5E4();
    if (result)
    {
      ktrace_chunk_unmap_data(v6, result, v5);
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE2275C(uint64_t a1, uint64_t a2)
{
  sub_22EE226CC(a1, a2);

  return swift_deallocClassInstance();
}

uint64_t sub_22EE22790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) != 0)
  {
    sub_22EE3C864();

    strcpy(v7, "file I/O for ");
    HIWORD(v7[1]) = -4864;
    MEMORY[0x2318F58F0](a1, a2);
    MEMORY[0x2318F58F0](0x3A64656C69616620, 0xE900000000000020);
    v5 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v5);
  }

  else
  {
    sub_22EE3C864();

    v7[0] = 0xD000000000000018;
    v7[1] = 0x800000022EE4A4E0;
    MEMORY[0x2318F58F0](a1, a2);
  }

  return v7[0];
}

uint64_t sub_22EE228E0(uint64_t a1, uint64_t a2)
{
  sub_22EE3C864();

  MEMORY[0x2318F58F0](0xD000000000000010, 0x800000022EE4A500);
  v3 = sub_22EE3CB84();
  MEMORY[0x2318F58F0](v3);

  return a1;
}

uint64_t sub_22EE229A4(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v2 = ktrace_file_earliest_timestamp(a1, v10);
  if (v2)
  {
    v3 = v2;
    v4 = 0x800000022EE4A520;
    sub_22EE27184();
    swift_allocError();
    v6 = 0xD000000000000012;
LABEL_5:
    *v5 = v6;
    *(v5 + 8) = v4;
    *(v5 + 16) = v3;
    return swift_willThrow();
  }

  v9 = 0;
  v7 = ktrace_file_latest_timestamp(a1, &v9);
  if (v7)
  {
    v3 = v7;
    v4 = 0x800000022EE4A540;
    sub_22EE27184();
    swift_allocError();
    v6 = 0xD000000000000010;
    goto LABEL_5;
  }

  return v10[0];
}

unint64_t sub_22EE22AC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  v5 = a4;
  v6 = a2;
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      if (a4)
      {
        return a2;
      }

      else
      {
        return a1;
      }
    }

    result = sub_22EE13DF4(a4, a3);
    v5 = v6 - result;
    if (v6 >= result)
    {
      if (v5 < a1)
      {
        v10 = "latest timestamp";
        v9 = 0xD000000000000023;
        v6 = a1;
        goto LABEL_10;
      }

      return v5;
    }
  }

  else
  {
    if (!a5)
    {
      return v5;
    }

    result = sub_22EE13DF4(a4, a3);
    v5 = a1 + result;
    if (!__CFADD__(a1, result))
    {
      if (v5 > v6)
      {
        v9 = 0xD00000000000001FLL;
        v10 = "efore start of file";
LABEL_10:
        type metadata accessor for TrimError(0);
        sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
        swift_allocError();
        *v11 = v9;
        v11[1] = v10 | 0x8000000000000000;
        v11[2] = v5;
        v11[3] = v6;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return v5;
      }

      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE22C28(unint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      v5 = 64;
      v2 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v2);

      return v5;
    }

    v5 = 0;
    v3 = 43;
LABEL_7:
    MEMORY[0x2318F58F0](v3, 0xE100000000000000);
    sub_22EE3C424();
    return v5;
  }

  if (a2 == 2)
  {
    v5 = 0;
    v3 = 45;
    goto LABEL_7;
  }

  if (a1)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_22EE22D30(unint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      sub_22EE3C864();

      v6 = 0xD000000000000010;
      v2 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v2);

      return v6;
    }

    v6 = 0;
    sub_22EE3C424();
    v3 = 0x2065636E69732073;
    v4 = 0xED00007472617473;
LABEL_7:
    MEMORY[0x2318F58F0](v3, v4);
    return v6;
  }

  if (a2 == 2)
  {
    v6 = 0;
    sub_22EE3C424();
    v3 = 0x65726F6665622073;
    v4 = 0xEC000000646E6520;
    goto LABEL_7;
  }

  if (a1)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

unint64_t sub_22EE22EE0()
{
  v1 = v0;
  v2 = sub_22EE3BFD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrimError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22EE27CF0(v1, v8, type metadata accessor for TrimError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v11 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95960, &qword_22EE440E8) + 48)];
        (*(v3 + 32))(v5, v8, v2);
        v49 = 0;
        v50 = 0xE000000000000000;
        sub_22EE3C864();
        sub_22EE27AB4(&qword_27DA95958, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
        v38 = sub_22EE3CB84();
        v40 = v39;

        v49 = v38;
        v50 = v40;
        v15 = "usage: invalid arguments: ";
        v16 = 0xD00000000000002BLL;
        goto LABEL_18;
      }

      v17 = *v8;
      v18 = *(v8 + 1);
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_22EE3C864();
      LODWORD(v48) = v17;
      v19 = sub_22EE3CB84();
      v21 = v20;

      v49 = v19;
      v50 = v21;
      v22 = 0x800000022EE4A690;
      v23 = 0xD000000000000026;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v11 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95960, &qword_22EE440E8) + 48)];
        (*(v3 + 32))(v5, v8, v2);
        v49 = 0;
        v50 = 0xE000000000000000;
        sub_22EE3C864();
        sub_22EE27AB4(&qword_27DA95958, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
        v12 = sub_22EE3CB84();
        v14 = v13;

        v49 = v12;
        v50 = v14;
        v15 = "data from chunk: ";
        v16 = 0xD000000000000023;
LABEL_18:
        MEMORY[0x2318F58F0](v16, v15 | 0x8000000000000000);
        LODWORD(v48) = v11;
        v41 = sub_22EE3CB84();
        MEMORY[0x2318F58F0](v41);

LABEL_20:
        v45 = v49;
        (*(v3 + 8))(v5, v2);
        return v45;
      }

      v33 = *v8;
      v18 = *(v8 + 1);
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_22EE3C864();
      LODWORD(v48) = v33;
      v34 = sub_22EE3CB84();
      v36 = v35;

      v49 = v34;
      v50 = v36;
      v23 = 0xD000000000000021;
      v22 = 0x800000022EE4A6C0;
    }

    MEMORY[0x2318F58F0](v23, v22);
    LODWORD(v48) = v18;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v24 = *v8;
    v25 = *(v8 + 1);
    v49 = 0;
    v50 = 0xE000000000000000;
    if (EnumCaseMultiPayload == 4)
    {
      sub_22EE3C864();

      v26 = 0x800000022EE4A640;
      v27 = 0xD00000000000001ALL;
    }

    else
    {
      sub_22EE3C864();

      v26 = 0x800000022EE4A620;
      v27 = 0xD000000000000015;
    }

    v49 = v27;
    v50 = v26;
    MEMORY[0x2318F58F0](v24, v25);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v28 = *v8;
    v29 = *(v8 + 1);
    v30 = *(v8 + 2);
    v31 = *(v8 + 3);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_22EE3C864();

    v49 = v28;
    v50 = v29;
    MEMORY[0x2318F58F0](0x206D6F7266203ALL, 0xE700000000000000);
    v48 = v30;
    v32 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v32);

    MEMORY[0x2318F58F0](544175136, 0xE400000000000000);
    v48 = v31;
LABEL_16:
    v37 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v37);
LABEL_23:

    return v49;
  }

  if (EnumCaseMultiPayload != 7)
  {
    (*(v3 + 32))(v5, v8, v2);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_22EE3C864();
    sub_22EE27AB4(&qword_27DA95958, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v42 = sub_22EE3CB84();
    v44 = v43;

    v49 = v42;
    v50 = v44;
    MEMORY[0x2318F58F0](0xD000000000000026, 0x800000022EE4A5D0);
    goto LABEL_20;
  }

  v10 = *v8;
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_22EE3C864();
  MEMORY[0x2318F58F0](0xD000000000000014, 0x800000022EE4A600);
  LOBYTE(v48) = v10;
  sub_22EE3C924();
  return v49;
}

uint64_t sub_22EE235A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v101 = a3;
  v100 = a2;
  v98 = a6;
  v9 = sub_22EE3BFD4();
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v93 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95968, &qword_22EE440F0);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v89 - v14;
  v15 = type metadata accessor for TrimOptions(0);
  v97 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v16;
  v19 = *(v16 + 32);
  v96 = v18;
  v18[v19] = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v132 = a5;

  v21 = sub_22EDEBE84();
  v22 = sub_22EDEBE90();
  v23 = sub_22EDEBE90();
  v88.n128_u64[1] = v22;
  *(&v87 + 1) = v20;
  v88.n128_u64[0] = v21;
  *&v87 = sub_22EE27B1C;
  *&v86 = 0xD000000000000049;
  *(&v86 + 1) = 0x800000022EE4A810;
  sub_22EDEBE9C(a1, v100, sub_22EE24500, 0, 0xD000000000000024, 0x800000022EE4A720, 0xD0000000000000BFLL, 0x800000022EE4A750, &v114, v86, 0, v87, v88, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = (v24 + 16);
  *(v24 + 24) = 3;

  v26 = sub_22ED808E4();
  sub_22EDE98AC(1836020326, 0xE400000000000000, 0xD00000000000001FLL, 0x800000022EE4A860, 0, 0, v26 & 1, sub_22EE27B44, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = 1;
  v28 = (v27 + 16);
  *(v27 + 24) = 3;

  v29 = sub_22ED808E4();
  sub_22EDE98AC(28532, 0xE200000000000000, 0xD000000000000020, 0x800000022EE4A880, 0, 0, v29 & 1, sub_22EE29064, v27);

  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = (v30 + 16);
  *(v30 + 24) = 0;

  v32 = sub_22ED808E4();
  sub_22EDE98AC(0x74757074756FLL, 0xE600000000000000, 0xD00000000000001CLL, 0x800000022EE4A8B0, 111, 0xE100000000000000, v32 & 1, sub_22EE27BD4, v30);

  v129 = v120;
  v130 = v121;
  v131 = v122;
  v125 = v116;
  v126 = v117;
  v127 = v118;
  v128 = v119;
  v123 = v114;
  v124 = v115;
  v33 = v102;
  sub_22EDEA6A8(v101);
  if (v33)
  {

    v111 = v120;
    v112 = v121;
    v113 = v122;
    v107 = v116;
    v108 = v117;
    v109 = v118;
    v110 = v119;
    v105 = v114;
    v106 = v115;
    sub_22EE27C38(&v105);
  }

  v102 = v30;
  v36 = v34;

  if (!v36)
  {

    v111 = v120;
    v112 = v121;
    v113 = v122;
    v107 = v116;
    v108 = v117;
    v109 = v118;
    v110 = v119;
    v105 = v114;
    v106 = v115;
    sub_22EE27C38(&v105);

    return (*(v97 + 56))(v98, 1, 1, v99);
  }

  v101 = v27;
  v37 = v36[2];
  if (!v37)
  {

    type metadata accessor for TrimError(0);
    sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
    swift_allocError();
    v41 = 0x800000022EE4A930;
    v42 = 0xD000000000000020;
    goto LABEL_15;
  }

  v100 = v24;
  if (v37 == 1)
  {
    v90 = v36[4];
    v38 = v36[5];

    swift_beginAccess();
    v39 = v100;
    if (*(v100 + 24) >= 3u && !*v25)
    {
      swift_beginAccess();
      if (*(v101 + 24) >= 3u)
      {
        if (*v28)
        {

          type metadata accessor for TrimError(0);
          sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
          swift_allocError();
          v41 = 0x800000022EE4A910;
          v42 = 0xD00000000000001FLL;
LABEL_15:
          *v40 = v42;
          v40[1] = v41;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v111 = v120;
          v112 = v121;
          v113 = v122;
          v107 = v116;
          v108 = v117;
          v109 = v118;
          v110 = v119;
          v105 = v114;
          v106 = v115;
          sub_22EE27C38(&v105);
        }
      }
    }

    v49 = v96;
    MEMORY[0x2318F56D0](v90, v38);
    v50 = *(v39 + 24);
    v51 = v99;
    v52 = v49 + *(v99 + 24);
    *v52 = *(v39 + 16);
    *(v52 + 8) = v50;
    swift_beginAccess();
    v53 = *(v101 + 24);
    v54 = v49 + *(v51 + 28);
    *v54 = *(v101 + 16);
    *(v54 + 8) = v53;
    swift_beginAccess();
    v55 = *(v102 + 24);
    v89 = 0;
    if (v55)
    {
      v56 = *v31;

      MEMORY[0x2318F56D0](v56, v55);
LABEL_20:

      v111 = v120;
      v112 = v121;
      v113 = v122;
      v107 = v116;
      v108 = v117;
      v109 = v118;
      v110 = v119;
      v105 = v114;
      v106 = v115;
      sub_22EE27C38(&v105);

      v57 = v98;
      sub_22EE27CF0(v49, v98, type metadata accessor for TrimOptions);
      (*(v97 + 56))(v57, 0, 1, v51);
      return sub_22EE27E0C(v49, type metadata accessor for TrimOptions);
    }

    v58 = sub_22EE3BFC4();
    if (v59)
    {
      *&v105 = 46;
      *(&v105 + 1) = 0xE100000000000000;
      MEMORY[0x2318F58F0](v58);

      v60 = *(&v105 + 1);
      v61 = v105;
    }

    else
    {
      v61 = 0;
      v60 = 0xE000000000000000;
    }

    v63 = v92;
    v62 = v93;
    MEMORY[0x2318F5650](v58);
    v64 = sub_22EE3BFA4();
    v65 = *(v64 - 8);
    LODWORD(v93) = (*(v65 + 48))(v63, 1, v64);
    if (v93 == 1)
    {

      sub_22EDDBA48(v63, &qword_27DA95968, &qword_22EE440F0);
      type metadata accessor for TrimError(0);
      sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
      swift_allocError();
      v67 = v66;
      *&v105 = 0;
      *(&v105 + 1) = 0xE000000000000000;
      sub_22EE3C864();
      sub_22EE27AB4(&qword_27DA95958, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v68 = v95;
      v69 = sub_22EE3CB84();
      v71 = v70;

      *&v105 = v69;
      *(&v105 + 1) = v71;
      MEMORY[0x2318F58F0](0xD000000000000014, 0x800000022EE4A8F0);
      v72 = *(&v105 + 1);
      *v67 = v105;
      v67[1] = v72;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v111 = v120;
      v112 = v121;
      v113 = v122;
      v107 = v116;
      v108 = v117;
      v109 = v118;
      v110 = v119;
      v105 = v114;
      v106 = v115;
      sub_22EE27C38(&v105);
    }

    else
    {
      v73 = sub_22EE3BF94();
      v74 = v63;
      v76 = v75;
      (*(v65 + 8))(v74, v64);
      *&v105 = v73;
      *(&v105 + 1) = v76;
      MEMORY[0x2318F58F0](0x2D6D6972742DLL, 0xE600000000000000);
      v77 = sub_22EE22C28(*(v100 + 16), *(v100 + 24));
      MEMORY[0x2318F58F0](v77);

      MEMORY[0x2318F58F0](44, 0xE100000000000000);
      v78 = sub_22EE22C28(*(v101 + 16), *(v101 + 24));
      MEMORY[0x2318F58F0](v78);

      MEMORY[0x2318F58F0](v61, v60);

      v79 = *(v94 + 16);
      v92 = (v94 + 16);
      v90 = v79;
      v79(v62, v49, v95);
      sub_22EE3BF74();
      v51 = v99;
      v80 = *(v99 + 20);
      sub_22EE3BFB4();
      v81 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
      v91 = v80;
      sub_22EE3BF84();
      v82 = sub_22EE3C0F4();

      LODWORD(v73) = [v81 fileExistsAtPath_];

      if (!v73)
      {
        goto LABEL_20;
      }

      type metadata accessor for TrimError(0);
      sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
      swift_allocError();
      v83 = v95;
      v90(v84, &v91[v49], v95);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v111 = v120;
      v112 = v121;
      v113 = v122;
      v107 = v116;
      v108 = v117;
      v109 = v118;
      v110 = v119;
      v105 = v114;
      v106 = v115;
      sub_22EE27C38(&v105);

      v68 = v83;
    }

    v85 = *(v94 + 8);
    result = v85(v49, v68);
    if (v93 != 1)
    {
      return v85(v49 + *(v99 + 20), v68);
    }
  }

  else
  {
    type metadata accessor for TrimError(0);
    sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
    swift_allocError();
    v44 = v43;
    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    sub_22EE3C864();

    v103 = 0xD000000000000011;
    v104 = 0x800000022EE4A8D0;
    if (v36[2] < v37)
    {
      __break(1u);
    }

    else
    {
      *&v105 = v36;
      *(&v105 + 1) = v36 + 4;
      *&v106 = 1;
      *(&v106 + 1) = (2 * v37) | 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95970, &unk_22EE447C0);
      sub_22EE27C8C();
      v45 = sub_22EE3C0B4();
      v47 = v46;

      MEMORY[0x2318F58F0](v45, v47);

      v48 = v104;
      *v44 = v103;
      v44[1] = v48;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v111 = v120;
      v112 = v121;
      v113 = v122;
      v107 = v116;
      v108 = v117;
      v109 = v118;
      v110 = v119;
      v105 = v114;
      v106 = v115;
      sub_22EE27C38(&v105);
    }
  }

  return result;
}

uint64_t sub_22EE2451C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = sub_22EE3BDF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22EE3BDE4();
  v21 = sub_22EE3BDD4();
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v16 = ktrace_file_uuid(a1, &v21);
  if (v16)
  {
    v17 = v16;
    sub_22EE22678();
    swift_allocError();
    *v18 = xmmword_22EE440D0;
    *(v18 + 16) = v17;
    *(v18 + 20) = 1;
    swift_willThrow();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 32))(a2, v7, v4);
    return (*(v5 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_22EE2475C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6946656372756F73 && a2 == 0xEE0044495555656CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22EE3CBA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22EE247EC(uint64_t a1)
{
  v2 = sub_22EE27D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EE24828(uint64_t a1)
{
  v2 = sub_22EE27D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EE24864(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95980, &qword_22EE440F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE27D58();
  sub_22EE3CCE4();
  sub_22EE3CB04();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Trimming.toolName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Trimming.notify.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Trimming.init(toolName:interactive:notify:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Trimming.trim(arguments:)(Swift::OpaquePointer arguments)
{
  rawValue = arguments._rawValue;
  v2 = v1;
  v217 = *MEMORY[0x277D85DE8];
  v194 = sub_22EE3B9A4();
  v192 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v193 = &v177 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DB0, &unk_22EE3FAE0);
  MEMORY[0x28223BE20](v4 - 8);
  v197 = &v177 - v5;
  v196 = sub_22EE3BDF4();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v191 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for TrimNote(0);
  MEMORY[0x28223BE20](v203);
  v204 = (&v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v198 = sub_22EE3C154();
  v202 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v199 = &v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for TrimOptions(0);
  v200 = *(v201 - 8);
  v9 = *(v200 + 64);
  v10 = MEMORY[0x28223BE20](v201);
  MEMORY[0x28223BE20](v10);
  v12 = &v177 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95988, &unk_22EE44100);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v177 - v17;
  v19 = v2[1];
  v207 = *v2;
  v208 = v19;
  v209 = *(v2 + 4);
  v21 = *(&v207 + 1);
  v20 = v207;
  v22 = swift_allocObject();
  v23 = v2[1];
  *(v22 + 16) = *v2;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(v2 + 4);

  v24 = rawValue;

  sub_22EE27DD4(&v207, &aBlock);
  v25 = v206;
  sub_22EE235A0(v20, v21, v24, sub_22EE27DCC, v22, v18);
  v26 = v25;
  if (v25)
  {
    goto LABEL_16;
  }

  v27 = v199;
  v28 = v202;
  v189 = v9;
  rawValue = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v12;
  sub_22EE27E6C(v18, v16);
  if ((*(v200 + 48))(v16, 1, v201) == 1)
  {
    sub_22EDDBA48(v18, &qword_27DA95988, &unk_22EE44100);
    v29 = v16;
LABEL_4:
    sub_22EDDBA48(v29, &qword_27DA95988, &unk_22EE44100);
    return;
  }

  v206 = v18;
  v30 = v190;
  sub_22EE27EDC(v16, v190);
  *&aBlock = sub_22EE3BF84();
  *(&aBlock + 1) = v31;
  sub_22EE3C144();
  v188 = sub_22ED80FA0();
  v32 = sub_22EE3C694();
  v35 = v28[1];
  v34 = v28 + 1;
  v33 = v35;
  v35(v27, v198);

  if (!v32)
  {
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v36 = ktrace_file_open((v32 + 32), 0);

  if (!v36)
  {
    type metadata accessor for TrimError(0);
    sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
    v26 = swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95960, &qword_22EE440E8) + 48);
    v47 = sub_22EE3BFD4();
    v48 = (*(*(v47 - 8) + 16))(v45, v30, v47);
    *(v45 + v46) = MEMORY[0x2318F5610](v48);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v49 = v30;
LABEL_14:
    sub_22EE27E0C(v49, type metadata accessor for TrimOptions);
    v79 = v206;
LABEL_15:
    sub_22EDDBA48(v79, &qword_27DA95988, &unk_22EE44100);
LABEL_16:
    v80 = *(&v208 + 1);
    v81 = v204;
    *v204 = v26;
    swift_storeEnumTagMultiPayload();
    v82 = v26;
    v80(v81);
    sub_22EE27E0C(v81, type metadata accessor for TrimNote);
    swift_willThrow();
    return;
  }

  v37 = sub_22EE229A4(v36);
  v39 = v38;
  v40 = v37;
  LODWORD(aBlock) = 0;
  v211 = 0;
  v41 = ktrace_file_timebase(v36, &aBlock, &v211);
  if (v41)
  {
    v42 = v41;
    sub_22EE27184();
    v26 = swift_allocError();
    *v43 = 0x65736162656D6974;
    *(v43 + 8) = 0xE800000000000000;
    *(v43 + 16) = v42;
    swift_willThrow();
LABEL_13:
    v49 = v190;
    goto LABEL_14;
  }

  v202 = v34;
  v178 = v36;
  v187 = 0;
  v50 = sub_22EE13E84(aBlock, v211);
  v183 = v40;
  v184 = v39;
  if (v39 < v40)
  {
    __break(1u);
LABEL_83:
    type metadata accessor for TrimError(0);
    sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
    v26 = swift_allocError();
    *v176 = v32;
LABEL_84:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v118 = v202;
    goto LABEL_21;
  }

  v51 = sub_22EE13E54(v39 - v40, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
  v52 = swift_allocObject();
  v53 = MEMORY[0x277D839F8];
  *(v52 + 16) = xmmword_22EE3F500;
  v54 = MEMORY[0x277D83A80];
  *(v52 + 56) = v53;
  *(v52 + 64) = v54;
  *(v52 + 32) = v51;
  v55 = sub_22EE3C134();
  v57 = v56;
  v186 = *(&v208 + 1);
  v185 = v209;
  v58 = sub_22EE3BFD4();
  sub_22EE27AB4(&qword_27DA95958, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
  v59 = v190;
  v177 = v58;
  *&aBlock = sub_22EE3CB84();
  *(&aBlock + 1) = v60;
  MEMORY[0x2318F58F0](10272, 0xE200000000000000);
  v182 = v57;
  MEMORY[0x2318F58F0](v55, v57);
  MEMORY[0x2318F58F0](41, 0xE100000000000000);
  v180 = *(&aBlock + 1);
  v61 = aBlock;
  v62 = v201;
  v63 = v59 + *(v201 + 24);
  v181 = *v63;
  LOBYTE(v58) = *(v63 + 8);
  v64 = v50;
  v65 = sub_22EE22D30(v181, v58);
  v67 = v66;
  v68 = v59 + *(v62 + 28);
  v69 = *v68;
  v70 = *v68;
  v179 = *(v68 + 8);
  v71 = sub_22EE22D30(v70, v179);
  v72 = v204;
  *v204 = v61;
  v72[1] = v180;
  v72[2] = v65;
  v73 = v64;
  v72[3] = v67;
  v72[4] = v71;
  v72[5] = v74;
  swift_storeEnumTagMultiPayload();
  v186(v72);
  sub_22EE27E0C(v72, type metadata accessor for TrimNote);
  v75 = v183;
  v76 = v184;
  v77 = v187;
  v78 = sub_22EE22AC4(v183, v184, v73, v181, v58);
  v26 = v77;
  if (v77)
  {

    goto LABEL_13;
  }

  v83 = v76;
  v84 = v78;
  v85 = sub_22EE22AC4(v75, v83, v73, v69, v179);
  v86 = v206;
  if (v84 >= v85)
  {
    v93 = v85;

    type metadata accessor for TrimError(0);
    sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
    v26 = swift_allocError();
    *v94 = 0xD000000000000028;
    v94[1] = 0x800000022EE4A960;
    v94[2] = v84;
    v94[3] = v93;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22EE27E0C(v190, type metadata accessor for TrimOptions);
    v79 = v86;
    goto LABEL_15;
  }

  v184 = v85;
  v201 = *(v201 + 20);
  *&aBlock = sub_22EE3BF84();
  *(&aBlock + 1) = v87;
  sub_22EE3C144();
  v88 = sub_22EE3C694();
  v33(v27, v198);

  if (v88)
  {

    v89 = v178;
    v90 = ktrace_file_create(v178, (v88 + 32));

    v91 = v177;
    if (!v90)
    {
      type metadata accessor for TrimError(0);
      sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
      v26 = swift_allocError();
      v96 = v95;
      v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95960, &qword_22EE440E8) + 48);
      v98 = v190;
      v99 = (*(*(v91 - 8) + 16))(v96, &v190[v201], v91);
      *(v96 + v97) = MEMORY[0x2318F5610](v99);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v49 = v98;
      goto LABEL_14;
    }

    v92 = v197;
    sub_22EE2451C(v89, v197);
    v100 = v195;
    v101 = v196;
    v102 = (*(v195 + 48))(v92, 1, v196);
    v202 = v90;
    if (v102 == 1)
    {
      v199 = v84;
      v187 = 0;
      sub_22EDDBA48(v92, &qword_27DA94DB0, &unk_22EE3FAE0);
LABEL_26:
      v103 = v190;
      v104 = swift_allocObject();
      *(v104 + 16) = 0;
      v198 = v104 + 16;
      v105 = swift_allocObject();
      *(v105 + 16) = MEMORY[0x277D84F90];
      v196 = v105 + 16;
      v106 = swift_allocObject();
      *(v106 + 16) = 0;
      v197 = (v106 + 16);
      v107 = v103;
      v108 = rawValue;
      sub_22EE27CF0(v107, rawValue, type metadata accessor for TrimOptions);
      v109 = (*(v200 + 80) + 32) & ~*(v200 + 80);
      v110 = (v189 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
      v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
      v112 = swift_allocObject();
      *(v112 + 16) = v184;
      *(v112 + 24) = v105;
      sub_22EE27EDC(v108, v112 + v109);
      *(v112 + v110) = v106;
      v113 = v105;
      v114 = v202;
      *(v112 + v111) = v202;
      *(v112 + ((v111 + 15) & 0xFFFFFFFFFFFFFFF8)) = v104;
      v215 = sub_22EE27F40;
      v216 = v112;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v213 = sub_22EE18D60;
      v214 = &block_descriptor_2;
      v115 = _Block_copy(&aBlock);

      ktrace_file_iterate(v178, 0, v115);
      _Block_release(v115);
      v116 = v198;
      swift_beginAccess();
      v26 = *v116;
      if (*v116)
      {
        swift_willThrow();
        v117 = v26;

        v118 = v114;
LABEL_21:
        ktrace_file_close(v118);
        goto LABEL_13;
      }

      v195 = v104;
      v198 = v113;
      v200 = v106;
      v123 = v197;
      swift_beginAccess();
      if ((*v123 & 1) == 0)
      {
        v210 = v184;
        ktrace_file_append_chunk(v202, 32775, 0, 1, &v210, 8);
      }

      v124 = v196;
      swift_beginAccess();
      rawValue = *v124;
      v122 = *(rawValue + 2);
      if (!v122)
      {
LABEL_35:
        v129 = 0;
LABEL_50:

        if (v129 == v122)
        {
LABEL_67:

          v167 = v190;
          v168 = v204;
          (*(*(v177 - 8) + 16))(v204, &v190[v201]);
          swift_storeEnumTagMultiPayload();
          v186(v168);
          sub_22EE27E0C(v168, type metadata accessor for TrimNote);

          ktrace_file_close(v202);
          sub_22EE27E0C(v167, type metadata accessor for TrimOptions);
          v29 = v206;
          goto LABEL_4;
        }

        v142 = 40 * v129;
        v143 = v122;
        while (v129 < v143)
        {
          v144 = *&rawValue[v142 + 32];
          LODWORD(v32) = rawValue[v142 + 40];
          v145 = *&rawValue[v142 + 48];
          v146 = *&rawValue[v142 + 56];
          v147 = rawValue[v142 + 64];
          if (rawValue[v142 + 40])
          {
            if (v32 == 4)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95990, &qword_22EE44110);
              v155 = swift_allocObject();
              *(v155 + 16) = v144;
              *(v155 + 24) = 4;
              *(v155 + 32) = v145;
              *(v155 + 40) = v146;
              *(v155 + 48) = v147;
              *(v155 + 56) = 0;
              v157 = ktrace_chunk_size_t(v144, v156);
              v158 = *(v155 + 56);
              v159 = v157 - v158;
              if (__OFSUB__(v157, v158))
              {
                goto LABEL_89;
              }

              v160 = ktrace_chunk_map_data(v144, v158, v159);
              if (!v160)
              {
                goto LABEL_79;
              }

              *(v155 + 64) = v160;
              *(v155 + 72) = v159 / 48;
              v154 = v187;
              sub_22EE21F78(v202, v199, v184, sub_22EE264FC, 0);
            }

            else
            {
              if (v32 != 1)
              {
                goto LABEL_83;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA959A0, qword_22EE44120);
              v148 = swift_allocObject();
              *(v148 + 16) = v144;
              *(v148 + 24) = 1;
              *(v148 + 32) = v145;
              *(v148 + 40) = v146;
              *(v148 + 48) = v147;
              *(v148 + 56) = 8;
              v150 = ktrace_chunk_size_t(v144, v149);
              v151 = *(v148 + 56);
              v152 = v150 - v151;
              if (__OFSUB__(v150, v151))
              {
                goto LABEL_87;
              }

              v153 = ktrace_chunk_map_data(v144, v151, v152);
              if (!v153)
              {
LABEL_79:
                swift_deallocPartialClassInstance();
                type metadata accessor for TrimError(0);
                sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
                v26 = swift_allocError();
                v175 = v174;
                *v174 = ktrace_chunk_tag(v144, v174);
                v175[1] = 0;
                goto LABEL_84;
              }

              *(v148 + 64) = v153;
              *(v148 + 72) = v152 / 64;
              v154 = v187;
              sub_22EE21958(v202, v199, v184, sub_22EE264F4, 0);
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95998, &qword_22EE44118);
            v161 = swift_allocObject();
            *(v161 + 16) = v144;
            *(v161 + 24) = 0;
            *(v161 + 32) = v145;
            *(v161 + 40) = v146;
            *(v161 + 48) = v147;
            *(v161 + 56) = 8;
            v163 = ktrace_chunk_size_t(v144, v162);
            v164 = *(v161 + 56);
            v165 = v163 - v164;
            if (__OFSUB__(v163, v164))
            {
              goto LABEL_88;
            }

            v166 = ktrace_chunk_map_data(v144, v164, v165);
            if (!v166)
            {
              goto LABEL_79;
            }

            *(v161 + 64) = v166;
            *(v161 + 72) = v165 / 32;
            v154 = v187;
            sub_22EE21C68(v202, v199, v184, sub_22EE264FC, 0);
          }

          v187 = v154;
          if (v154)
          {

            goto LABEL_81;
          }

          v143 = v122;
          ++v129;

          v142 += 40;
          if (v122 == v129)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_86;
      }

      v125 = 0;
      v126 = (rawValue + 48);
      v127 = *(rawValue + 2);
      while (1)
      {
        v128 = *v126;
        v126 += 5;
        if (v128 >= v199)
        {
          break;
        }

        ++v125;
        if (!--v127)
        {
          goto LABEL_35;
        }
      }

LABEL_46:
      v140 = v125 != 0;
      v141 = v125 - 1;
      if (v140)
      {
        v129 = v141;
      }

      else
      {
        v129 = 0;
      }

      if (v122 < v129)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      goto LABEL_50;
    }

    v119 = v191;
    (*(v100 + 32))(v191, v92, v101);
    v120 = sub_22EE3BDB4();
    v122 = v121;
    (*(v100 + 8))(v119, v101);
    sub_22EE3B9E4();
    swift_allocObject();
    sub_22EE3B9D4();
    (*(v192 + 104))(v193, *MEMORY[0x277CC8748], v194);
    sub_22EE3B9B4();
    *&aBlock = v120;
    *(&aBlock + 1) = v122;
    sub_22EE28248();
    v130 = sub_22EE3B9C4();
    v132 = v131;
    v199 = v84;
    v187 = 0;

    v133 = v132 >> 62;
    if ((v132 >> 62) > 1)
    {
      if (v133 != 2)
      {
        *(&aBlock + 6) = 0;
        *&aBlock = 0;
        v135 = v202;
        v134 = 0;
        goto LABEL_75;
      }

      v136 = *(v130 + 16);
      v137 = *(v130 + 24);
      v138 = sub_22EE3BAA4();
      if (v138)
      {
        v139 = sub_22EE3BAD4();
        v125 = v136 - v139;
        if (__OFSUB__(v136, v139))
        {
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v138 += v125;
      }

      if (__OFSUB__(v137, v136))
      {
        __break(1u);
        goto LABEL_46;
      }
    }

    else
    {
      if (!v133)
      {
        *&aBlock = v130;
        WORD4(aBlock) = v132;
        BYTE10(aBlock) = BYTE2(v132);
        BYTE11(aBlock) = BYTE3(v132);
        BYTE12(aBlock) = BYTE4(v132);
        v134 = BYTE6(v132);
        BYTE13(aBlock) = BYTE5(v132);
        v135 = v202;
LABEL_75:
        if (ktrace_file_header_append_chunk(v135, 35842, 1, 0, &aBlock, v134))
        {
LABEL_76:

          sub_22EDD4074(v130, v132);
          goto LABEL_26;
        }

        v171 = MEMORY[0x2318F5610]();
        sub_22EE22678();
        v172 = swift_allocError();
        *v173 = 0xD000000000000017;
        *(v173 + 8) = 0x800000022EE4A990;
        *(v173 + 16) = v171;
        *(v173 + 20) = 1;
        v187 = v172;
        swift_willThrow();
LABEL_78:

        sub_22EDD4074(v130, v132);
LABEL_81:
        ktrace_file_close(v202);
        sub_22EE27E0C(v190, type metadata accessor for TrimOptions);
        sub_22EDDBA48(v206, &qword_27DA95988, &unk_22EE44100);
        v26 = v187;
        goto LABEL_16;
      }

      if (v130 > v130 >> 32)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v138 = sub_22EE3BAA4();
      if (v138)
      {
        v169 = sub_22EE3BAD4();
        if (__OFSUB__(v130, v169))
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        v138 += v130 - v169;
      }
    }

    sub_22EE3BAC4();
    v170 = v187;
    sub_22EE26400(v138, v202, v130, v132);
    v187 = v170;
    if (!v170)
    {
      goto LABEL_76;
    }

    goto LABEL_78;
  }

LABEL_94:
  __break(1u);
}

uint64_t sub_22EE26334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TrimNote(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a3 + 24);
  *v8 = a1;
  v8[1] = a2;
  swift_storeEnumTagMultiPayload();

  v9(v8);
  return sub_22EE27E0C(v8, type metadata accessor for TrimNote);
}

UInt8 *sub_22EE26400(UInt8 *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v4 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a4);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v7 = *(a3 + 16);
    v6 = *(a3 + 24);
    v5 = v6 - v7;
    if (__OFSUB__(v6, v7))
    {
      __break(1u);
LABEL_9:
      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v5 = HIDWORD(a3) - a3;
        goto LABEL_12;
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_12:
  result = ktrace_file_header_append_chunk(a2, 35842, 1, 0, result, v5);
  if (!result)
  {
    v8 = MEMORY[0x2318F5610]();
    sub_22EE22678();
    swift_allocError();
    *v9 = 0xD000000000000017;
    *(v9 + 8) = 0x800000022EE4A990;
    *(v9 + 16) = v8;
    *(v9 + 20) = 1;
    return swift_willThrow();
  }

  return result;
}

char *sub_22EE26508(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA959F8, &unk_22EE44758);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unsigned __int8 *sub_22EE26618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_22EE28FCC();

  result = sub_22EE3C304();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22EE12EBC(result, v7);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22EE3C8C4();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_22EE26BA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22EE3C8C4();
  }

  result = sub_22EE271D8(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

size_t sub_22EE26C74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v51 = *MEMORY[0x277D85DE8];
  result = ktrace_chunk_tag(a1, a2);
  v6 = result;
  if (result != 20982 && result != 7936)
  {
    if (result == 7680)
    {
      is_64_bit = ktrace_chunk_is_64_bit(v3);
      v9 = is_64_bit ? 64 : 32;
      result = ktrace_chunk_size(v3, v7);
      if (result >= (v9 | 8))
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v10 = ktrace_chunk_copy_data(v3, 8, &v43, v9);
        if (v10)
        {
          v12 = v10;
          v13 = 0x800000022EE4AB20;
          sub_22EE22678();
          swift_allocError();
          v15 = 0xD000000000000017;
LABEL_30:
          *v14 = v15;
          *(v14 + 8) = v13;
          *(v14 + 16) = v12;
LABEL_41:
          *(v14 + 20) = 1;
          return swift_willThrow();
        }

        v24 = is_64_bit;
        if (is_64_bit)
        {
          v25 = v43;
        }

        else
        {
          v25 = v43 & 0xFFFFFFFFFFFFFFLL;
        }

        v33 = ktrace_chunk_size_t(v3, v11);
        if (!__OFSUB__(v33, v9))
        {
          result = ktrace_chunk_copy_data(v3, v33 - v9, &v43, v9);
          if (result)
          {
            v19 = result;
            v20 = 0x800000022EE4AB40;
            sub_22EE22678();
            swift_allocError();
            v21 = 0xD000000000000016;
            goto LABEL_40;
          }

          v27 = 0;
          v26 = v43;
          if (!v24)
          {
            v26 = v43 & 0xFFFFFFFFFFFFFFLL;
          }

LABEL_23:
          *a3 = v3;
          *(a3 + 8) = v24;
          *(a3 + 16) = v25;
          *(a3 + 24) = v26;
          *(a3 + 32) = v27;
          return result;
        }

        goto LABEL_55;
      }
    }

LABEL_22:
    v3 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v24 = 5;
    goto LABEL_23;
  }

  result = ktrace_chunk_is_64_bit(v3);
  if (v6 != 7936)
  {
    if (v6 == 20982)
    {
      result = ktrace_chunk_size(v3, v16);
      if (result >= 0x30)
      {
        v44 = 0u;
        v45 = 0u;
        v43 = 0u;
        v17 = ktrace_chunk_copy_data(v3, 0, &v43, 0x30uLL);
        if (v17)
        {
          v19 = v17;
          v20 = 0x800000022EE4AAE0;
          sub_22EE22678();
          swift_allocError();
          v21 = 0xD00000000000001BLL;
LABEL_40:
          *v14 = v21;
          *(v14 + 8) = v20;
          *(v14 + 16) = v19;
          goto LABEL_41;
        }

        v34 = v43;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v35 = ktrace_chunk_size_t(v3, v18);
        if (!__OFSUB__(v35, 48))
        {
          result = ktrace_chunk_copy_data(v3, v35 - 48, &v47, 0x30uLL);
          if (result)
          {
            v19 = result;
            v20 = 0x800000022EE4AB00;
            sub_22EE22678();
            swift_allocError();
            v21 = 0xD00000000000001ALL;
            goto LABEL_40;
          }

          v27 = 0;
          v25 = v34 & 0xFFFFFFFFFFFFFFLL;
          v26 = v47 & 0xFFFFFFFFFFFFFFLL;
          v24 = 4;
          goto LABEL_23;
        }

        goto LABEL_56;
      }
    }

    goto LABEL_22;
  }

  v22 = result;
  if (result)
  {
    v23 = 64;
  }

  else
  {
    v23 = 32;
  }

  if (result)
  {
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  result = ktrace_chunk_size(v3, v16);
  if (result < 0xC)
  {
    goto LABEL_22;
  }

  v28 = swift_slowAlloc();
  v30 = ktrace_chunk_size_t(v3, v29);
  if (__OFSUB__(v30, 12))
  {
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v30 - 12 >= 64)
  {
    v31 = 64;
  }

  else
  {
    v31 = v30 - 12;
  }

  v42 = v31;
  v32 = ktrace_chunk_copy_data(v3, 12, v28, v31);
  if (v32)
  {
    v12 = v32;
    v13 = 0x800000022EE4AA90;
    sub_22EE22678();
    swift_allocError();
    v15 = 0xD00000000000001ELL;
    goto LABEL_30;
  }

  bzero(&v43, 0x388uLL);
  ktrace_compressor_reset(&v43);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  type metadata accessor for ktrace_point(0);
  v36 = sub_22EE3C404();
  *(v36 + 16) = 1;
  v37 = v48;
  *(v36 + 32) = v47;
  *(v36 + 48) = v37;
  v38 = v50;
  *(v36 + 64) = v49;
  *(v36 + 80) = v38;
  if (decompress_64(&v43, v28, &v42, v36 + 32, v23) == v23)
  {
    v39 = *(v36 + 16);
    if (v22)
    {
      if (!v39)
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
      }

      v25 = *(v36 + 32);
    }

    else
    {
      if (!v39)
      {
        goto LABEL_58;
      }

      v41 = *(v36 + 32);

      v25 = v41 & 0xFFFFFFFFFFFFFFLL;
    }

    v26 = 0;
    v27 = 1;
    goto LABEL_23;
  }

  sub_22EE22678();
  swift_allocError();
  *v40 = 0xD000000000000022;
  *(v40 + 8) = 0x800000022EE4AAB0;
  *(v40 + 16) = 0;
  *(v40 + 20) = 0;
  swift_willThrow();
}

unint64_t sub_22EE27184()
{
  result = qword_27DA95948;
  if (!qword_27DA95948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95948);
  }

  return result;
}

uint64_t sub_22EE271D8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22EE132B4(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22EE3C264();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22EE132B4(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22EE132B4(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_22EE3C264();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unsigned __int8 *sub_22EE27644(uint64_t a1, unint64_t a2, __n128 a3)
{
  if ((sub_22EE3C2A4() & 1) == 0)
  {
    if ((sub_22EE3C2A4() & 1) == 0)
    {
      if (sub_22EE3C2A4())
      {

        v32 = sub_22EDEC670(1uLL, a1, a2);
        v34 = v33;
        v36 = v35;
        v38 = v37;

        if ((v32 ^ v34) >> 14)
        {
          v39 = sub_22EE26BA8(v32, v34, v36, v38, 10);
          if ((v40 & 0x100) != 0)
          {
            v18 = sub_22EE26618(v32, v34, v36, v38, 10);
            v47 = v46;

            if ((v47 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v41 = v40;
            v18 = v39;

            if ((v41 & 1) == 0)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
        }

        type metadata accessor for TrimError(0);
        sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
        swift_allocError();
        v43 = v48;
        sub_22EE3C864();

        v49 = a1;
        v50 = a2;
        v45 = 0x800000022EE4AA60;
        v44 = 0xD000000000000029;
      }

      else
      {
        type metadata accessor for TrimError(0);
        sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
        swift_allocError();
        v43 = v42;
        v49 = 0;
        v50 = 0xE000000000000000;
        sub_22EE3C864();
        MEMORY[0x2318F58F0](a1, a2);

        v44 = 0xD000000000000032;
        v45 = 0x800000022EE4AA20;
      }

      MEMORY[0x2318F58F0](v44, v45);
      *v43 = v49;
      v43[1] = v50;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v19 = sub_22EDEC670(1uLL, a1, a2);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = MEMORY[0x2318F5880](v19, v21, v23, v25);
    v28 = v27;

    v29 = sub_22ED808E4();
    v30 = sub_22EE10DF0(v26, v28, v29 & 1);
    if (!v3)
    {
      v18 = v30;
      goto LABEL_17;
    }
  }

  v6 = sub_22EDEC670(1uLL, a1, a2);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x2318F5880](v6, v8, v10, v12);
  v15 = v14;

  v16 = sub_22ED808E4();
  v17 = sub_22EE10DF0(v13, v15, v16 & 1);
  if (v3)
  {
  }

  v18 = v17;
LABEL_17:

  return v18;
}

BOOL sub_22EE27A34(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      if (a1)
      {
        if (a4 != 3 || a3 != 1)
        {
          return 0;
        }
      }

      else if (a4 != 3 || a3)
      {
        return 0;
      }

      return 1;
    }

    if (a4 == 2)
    {
      return a1 == a3;
    }
  }

  else
  {
    if (!a2)
    {
      if (!a4)
      {
        return a1 == a3;
      }

      return 0;
    }

    if (a4 == 1)
    {
      return a1 == a3;
    }
  }

  return 0;
}

uint64_t sub_22EE27AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22EE27B5C(uint64_t a1, unint64_t a2)
{

  result = sub_22EE27644(a1, a2, v6);
  if (!v3)
  {
    v9 = result;
    v10 = v8;
    result = swift_beginAccess();
    *(v2 + 16) = v9;
    *(v2 + 24) = v10;
  }

  return result;
}

double sub_22EE27BD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

unint64_t sub_22EE27C8C()
{
  result = qword_27DA95978;
  if (!qword_27DA95978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95970, &unk_22EE447C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95978);
  }

  return result;
}

uint64_t sub_22EE27CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22EE27D58()
{
  result = qword_27DA9BB00[0];
  if (!qword_27DA9BB00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9BB00);
  }

  return result;
}

uint64_t sub_22EE27E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22EE27E6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95988, &unk_22EE44100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE27EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrimOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE27F40(uint64_t *a1)
{
  v3 = type metadata accessor for TrimOptions(0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_22EE26C74(a1, v12, &v34);
  v16 = v35;
  if (v35 == 5)
  {
    v17 = ktrace_chunk_tag(a1, v13);
    v18 = v1 + v4 + *(v3 + 28);
    if (*(v18 + 8) >= 3u)
    {
      if (*v18)
      {
        v28 = 0;
      }

      else
      {
        v28 = v17 == 32775;
      }

      if (v28)
      {
        goto LABEL_6;
      }
    }

    else if (v17 == 32775)
    {
LABEL_6:
      v19 = 1;
      swift_beginAccess();
      *(v9 + 16) = 1;
      return v19;
    }

    if (!ktrace_file_append(v10, a1))
    {
      type metadata accessor for TrimError(0);
      sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError, &unk_22EE44338);
      v29 = swift_allocError();
      v31 = v30;
      v32 = ktrace_chunk_tag(a1, v30);
      v33 = MEMORY[0x2318F5610]();
      *v31 = v32;
      v31[1] = v33;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_beginAccess();
      v14 = *(v11 + 16);
      *(v11 + 16) = v29;

      return 0;
    }

    return 1;
  }

  v20 = v34;
  v21 = v36;
  v39 = v37;
  v40 = v38;
  if (v36 > v8)
  {
    return 1;
  }

  swift_beginAccess();
  v22 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_22EE26508(0, *(v22 + 2) + 1, 1, v22);
    *(v7 + 16) = v22;
  }

  v25 = *(v22 + 2);
  v24 = *(v22 + 3);
  if (v25 >= v24 >> 1)
  {
    v22 = sub_22EE26508((v24 > 1), v25 + 1, 1, v22);
  }

  *(v22 + 2) = v25 + 1;
  v26 = &v22[40 * v25];
  *(v26 + 4) = v20;
  *(v26 + 5) = v16;
  *(v26 + 6) = v21;
  v27 = v40;
  *(v26 + 7) = v39;
  v26[64] = v27;
  *(v7 + 16) = v22;
  swift_endAccess();
  return 1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22EE28248()
{
  result = qword_27DA959A8;
  if (!qword_27DA959A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA959A8);
  }

  return result;
}

unint64_t sub_22EE282A4()
{
  result = qword_27DA959B0;
  if (!qword_27DA959B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA959B0);
  }

  return result;
}

uint64_t sub_22EE283A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22EE283E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_22EE28460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 21))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EE284A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventChunk.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventChunk.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_22EE28670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_22EE286B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TrimLocation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TrimLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22EE287A8(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_22EE287C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

void sub_22EE287E8(uint64_t a1)
{
  sub_22EE288A0(319);
  if (v1 <= 0x3F)
  {
    sub_22EE28908();
    if (v2 <= 0x3F)
    {
      sub_22EE28968();
      if (v3 <= 0x3F)
      {
        sub_22EE3BFD4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_22EE288A0(uint64_t a1)
{
  if (!qword_27DA959B8)
  {
    sub_22EE3BFD4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DA959B8);
    }
  }
}

void sub_22EE28908()
{
  if (!qword_27DA959C0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DA959C0);
    }
  }
}

void sub_22EE28968()
{
  if (!qword_27DA959C8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DA959C8);
    }
  }
}

void sub_22EE289D4(uint64_t a1)
{
  sub_22EE28A68();
  if (v1 <= 0x3F)
  {
    sub_22EE28ACC();
    if (v2 <= 0x3F)
    {
      sub_22EE3BFD4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t sub_22EE28A68()
{
  result = qword_27DA959D0;
  if (!qword_27DA959D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DA959D0);
  }

  return result;
}

void sub_22EE28ACC()
{
  if (!qword_27DA959D8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DA959D8);
    }
  }
}

uint64_t sub_22EE28B58(uint64_t a1)
{
  result = sub_22EE3BFD4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22EE28C14(uint64_t a1, int a2)
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

uint64_t sub_22EE28C34(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

unint64_t sub_22EE28CB0()
{
  result = qword_27DA9C240[0];
  if (!qword_27DA9C240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9C240);
  }

  return result;
}

unint64_t sub_22EE28D08()
{
  result = qword_27DA9C350;
  if (!qword_27DA9C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9C350);
  }

  return result;
}

unint64_t sub_22EE28D60()
{
  result = qword_27DA9C358[0];
  if (!qword_27DA9C358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9C358);
  }

  return result;
}

BOOL sub_22EE28DB4(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  return v2(v7) > v3;
}

BOOL sub_22EE28E08(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  return v2(v7) > v3;
}

BOOL sub_22EE28E5C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = a1[3];
  return v2(&v5) > v3;
}

BOOL sub_22EE28EB8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = a1[3];
  return v2(&v5) > v3;
}

BOOL sub_22EE28F14(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v6[0] = *a1;
  v6[1] = *(a1 + 8);
  v4 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = v4;
  return v2(v6) > v3;
}

BOOL sub_22EE28F70(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v6[0] = *a1;
  v6[1] = *(a1 + 8);
  v4 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = v4;
  return v2(v6) > v3;
}

unint64_t sub_22EE28FCC()
{
  result = qword_27DA95A00;
  if (!qword_27DA95A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95A00);
  }

  return result;
}

unint64_t AmendmentError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 1)
  {
    if (*(v0 + 16))
    {
      sub_22EE3C864();

      v9 = v1;
      v6 = 0x696C61766E69203ALL;
      v7 = 0xEE00656C69662064;
      goto LABEL_11;
    }

    sub_22EE3C864();

    v5 = 0xD000000000000013;
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    sub_22EE3C864();

    v5 = 0xD000000000000010;
LABEL_8:
    v9 = v5;
    v6 = v1;
    v7 = v2;
LABEL_11:
    MEMORY[0x2318F58F0](v6, v7);
    return v9;
  }

  if (v3 != 3)
  {
    sub_22EE3C864();

    v9 = v1;
    v6 = 0xD000000000000012;
    v7 = 0x800000022EE4AB60;
    goto LABEL_11;
  }

  sub_22EE3C864();

  v9 = 0xD00000000000001BLL;
  swift_getErrorValue();
  v4 = sub_22EE3CBF4();
  MEMORY[0x2318F58F0](v4);

  return v9;
}

uint64_t Amending.toolName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Amending.notify.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Amending.init(toolName:interactive:notify:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = a5;
  *(a6 + 40) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Amending.amend(arguments:)(Swift::OpaquePointer arguments)
{
  rawValue = arguments._rawValue;
  v3 = sub_22EE3BFF4();
  v134 = *(v3 - 8);
  v135 = v3;
  MEMORY[0x28223BE20](v3);
  v133 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22EE3C504();
  isa = v5[-1].isa;
  v140 = v5;
  MEMORY[0x28223BE20](v5);
  v138 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_22EE3C4E4();
  MEMORY[0x28223BE20](v136);
  v137 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22EE3C014();
  v131 = *(v8 - 8);
  v132 = v8;
  MEMORY[0x28223BE20](v8);
  v141 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[1];
  v167 = *v1;
  v168 = v10;
  v169 = v1[2];
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84FA0];
  v142 = (v11 + 16);
  *(v11 + 24) = MEMORY[0x277D84F90];
  *(v11 + 32) = 0;
  v12 = v167;
  v13 = swift_allocObject();
  v14 = v1[1];
  v13[1] = *v1;
  v13[2] = v14;
  v13[3] = v1[2];

  sub_22EE2B314(&v167, &v149);
  v15 = sub_22EDEBE84();
  v16 = sub_22EDEBE90();
  v17 = sub_22EDEBE90();
  v119.n128_u64[1] = v16;
  *(&v118 + 1) = v13;
  v119.n128_u64[0] = v15;
  *&v118 = sub_22EE2B2B8;
  *&v117 = 0xD000000000000049;
  *(&v117 + 1) = 0x800000022EE4A810;
  sub_22EDEBE9C(v12, *(&v12 + 1), sub_22EE2AFD4, v11, 0xD000000000000039, 0x800000022EE4ABC0, 0, 0, &v158, v117, 0, v118, v119, v17);

  v18 = sub_22ED808E4();
  sub_22EDE98AC(6579297, 0xE300000000000000, 0xD000000000000017, 0x800000022EE4AC00, 0, 0, v18 & 1, sub_22EE2B34C, v11);

  v19 = sub_22ED808E4();
  sub_22EDE987C(0x656D697265707865, 0xEC0000006C61746ELL, 0xD000000000000026, 0x800000022EE4AC20, 0, 0, v19 & 1, sub_22EE2B4FC, v11);

  v20 = v163;

  sub_22ED97EE0(v20, *(&v20 + 1));
  *&v163 = sub_22EE2B544;
  *(&v163 + 1) = v11;
  v176 = v164;
  v177 = v165;
  v178 = v166;
  v172 = v160;
  v173 = v161;
  v170 = v158;
  v171 = v159;
  v174 = v162;
  v175 = v163;
  v21 = v144;
  sub_22EDEA6A8(rawValue);
  v23 = v21;
  if (v21)
  {
    goto LABEL_2;
  }

  v144 = MEMORY[0x277D84F90];
  if (!v22)
  {
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v151 = v160;
    v152 = v161;
    v153 = v162;
    v154 = v163;
    v149 = v158;
    v150 = v159;
    sub_22EE27C38(&v149);

    v28 = 0;
    v29 = 0;
    goto LABEL_5;
  }

  v24 = v22[2];
  if (!v24)
  {

    sub_22EE2B714();
    v23 = swift_allocError();
    *v34 = 0xD000000000000024;
    *(v34 + 8) = 0x800000022EE4AE30;
    *(v34 + 16) = 0;
    swift_willThrow();
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v151 = v160;
    v152 = v161;
    v153 = v162;
    v154 = v163;
    v149 = v158;
    v150 = v159;
    sub_22EE27C38(&v149);

    goto LABEL_3;
  }

  v30 = v22 + 4;
  v31 = v22[4];
  if (v24 != 1)
  {
    *&v149 = 0;
    *(&v149 + 1) = 0xE000000000000000;
    v23 = v22;
    sub_22EE3C864();

    v145 = 0xD000000000000011;
    v146 = 0x800000022EE4A8D0;
    if (v23[2] < v24)
    {
      __break(1u);
      goto LABEL_49;
    }

    *&v149 = v23;
    *(&v149 + 1) = v30;
    *&v150 = 1;
    *(&v150 + 1) = (2 * v24) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95970, &unk_22EE447C0);
    sub_22EE0D944(&qword_27DA95978, &qword_27DA95970, &unk_22EE447C0, MEMORY[0x277D83FA0]);
    v35 = sub_22EE3C0B4();
    v37 = v36;

    MEMORY[0x2318F58F0](v35, v37);

    v38 = v145;
    v39 = v146;
    sub_22EE2B714();
    v23 = swift_allocError();
    *v40 = v38;
    *(v40 + 8) = v39;
    *(v40 + 16) = 0;
    goto LABEL_15;
  }

  rawValue = v22;
  v32 = v22[5];
  v33 = *(&v169 + 1);
  if (*(&v169 + 1))
  {

    goto LABEL_17;
  }

  v41 = sub_22EE3C184();

  v33 = ktrace_file_open((v41 + 32), 1);

  if (!v33)
  {
    *&v149 = 0;
    *(&v149 + 1) = 0xE000000000000000;
    sub_22EE3C864();

    v145 = v31;
    v146 = v32;
    v48 = MEMORY[0x2318F58F0](0xD00000000000001DLL, 0x800000022EE4AC50);
    v49 = MEMORY[0x2318F5610](v48);
    if (!strerror(v49))
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v50 = sub_22EE3C214();
    MEMORY[0x2318F58F0](v50);

    v51 = v145;
    v52 = v146;
    sub_22EE2B714();
    v23 = swift_allocError();
    *v53 = v51;
    *(v53 + 8) = v52;
    *(v53 + 16) = 1;
LABEL_15:
    swift_willThrow();
LABEL_2:
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v151 = v160;
    v152 = v161;
    v153 = v162;
    v154 = v163;
    v149 = v158;
    v150 = v159;
    sub_22EE27C38(&v149);

    v24 = 0;
LABEL_3:
    v25 = 0;
LABEL_4:
    v26 = *(&v168 + 1);
    v158 = v23;
    LOBYTE(v159) = 1;
    v27 = v23;
    v26(&v158);
    sub_22EE2B6E8(v158, *(&v158 + 1), v159);
    swift_willThrow();
    v28 = v24;
    v29 = v25;
LABEL_5:
    sub_22ED97EE0(v28, v29);
    return;
  }

LABEL_17:
  if (ktrace_file_get_format(v33) != 4)
  {

    *&v149 = 0;
    *(&v149 + 1) = 0xE000000000000000;
    sub_22EE3C864();

    *&v149 = v31;
    *(&v149 + 1) = v32;
    MEMORY[0x2318F58F0](0xD000000000000021, 0x800000022EE4AC70);
    v44 = v149;
    sub_22EE2B714();
    v23 = swift_allocError();
    *v45 = v44;
    *(v45 + 16) = 1;
    swift_willThrow();
LABEL_20:
    ktrace_file_close(v33);
    goto LABEL_2;
  }

  v42 = v142;
  swift_beginAccess();

  v46 = sub_22EE15A60(v43);

  v148 = v46;

  v54 = sub_22EE2ACAC(v47, v42, &v148);

  if (!*(v54 + 16))
  {

    sub_22EE2B714();
    v23 = swift_allocError();
    *v65 = 0xD000000000000024;
    *(v65 + 8) = 0x800000022EE4AE00;
    *(v65 + 16) = 0;
    swift_willThrow();

    goto LABEL_20;
  }

  v130 = v54;
  v128 = v32;
  v147 = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = &v147;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_22EE2B768;
  *(v55 + 24) = v25;
  *&v151 = sub_22EDDC48C;
  *(&v151 + 1) = v55;
  *&v149 = MEMORY[0x277D85DD0];
  v2 = 1107296256;
  *(&v149 + 1) = 1107296256;
  *&v150 = sub_22EDD6F98;
  *(&v150 + 1) = &block_descriptor_3;
  v56 = v33;
  v57 = _Block_copy(&v149);

  v129._rawValue = v56;
  v58 = ktrace_file_header_iterate(v56, 0, v57);
  _Block_release(v57);
  LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

  if (v57)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v58)
  {
    *&v149 = 0;
    *(&v149 + 1) = 0xE000000000000000;
    sub_22EE3C864();

    v145 = 0xD00000000000001DLL;
    v146 = 0x800000022EE4ACA0;
    v59 = strerror(v58);
    v60 = v129._rawValue;
    if (v59)
    {

      v61 = sub_22EE3C214();
      MEMORY[0x2318F58F0](v61);

      v62 = v145;
      v63 = v146;
      sub_22EE2B714();
      v23 = swift_allocError();
      *v64 = v62;
      *(v64 + 8) = v63;
LABEL_28:
      *(v64 + 16) = 2;
      swift_willThrow();
LABEL_40:

      ktrace_file_close(v60);
      v155 = v164;
      v156 = v165;
      v157 = v166;
      v151 = v160;
      v152 = v161;
      v153 = v162;
      v154 = v163;
      v149 = v158;
      v150 = v159;
      sub_22EE27C38(&v149);

      v24 = sub_22EE2B768;
      goto LABEL_4;
    }

    goto LABEL_70;
  }

  v66 = v147;
  v60 = v129._rawValue;
  if (!v147)
  {

    sub_22EE2B714();
    v23 = swift_allocError();
    *v64 = 0xD000000000000024;
    *(v64 + 8) = 0x800000022EE4ACC0;
    goto LABEL_28;
  }

  v67 = ktrace_session_create_with_flags(0);
  if (!v67)
  {
    *&v149 = 0;
    *(&v149 + 1) = 0xE000000000000000;
    sub_22EE3C864();

    v145 = 0xD00000000000002ALL;
    v146 = 0x800000022EE4ACF0;
    v77 = MEMORY[0x2318F5610](v76);
    if (!strerror(v77))
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v78 = sub_22EE3C214();
    MEMORY[0x2318F58F0](v78);

    v79 = v145;
    v80 = v146;
    sub_22EE2B714();
    v23 = swift_allocError();
    *v81 = v79;
    *(v81 + 8) = v80;
    *(v81 + 16) = 2;
    swift_willThrow();
    v75 = v66;
LABEL_39:
    ktrace_machine_destroy(v75);
    goto LABEL_40;
  }

  v68 = v67;
  v127 = v66;
  v69 = ktrace_set_ktrace_file(v67, v60, 0);
  if (v69)
  {
    v70 = v69;
    *&v149 = 0;
    *(&v149 + 1) = 0xE000000000000000;
    sub_22EE3C864();

    v145 = 0xD000000000000023;
    v146 = 0x800000022EE4AD20;
    if (!strerror(v70))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v71 = sub_22EE3C214();
    MEMORY[0x2318F58F0](v71);

    v72 = v145;
    v73 = v146;
    sub_22EE2B714();
    v23 = swift_allocError();
    *v74 = v72;
    *(v74 + 8) = v73;
    goto LABEL_35;
  }

  v82 = sub_22EE101C0(0x6C756E2F7665642FLL, 0xE90000000000006CLL, 4u);
  if (!v82)
  {

    sub_22EE2B714();
    v23 = swift_allocError();
    *v74 = 0xD000000000000019;
    *(v74 + 8) = 0x800000022EE4AD50;
LABEL_35:
    *(v74 + 16) = 2;
    swift_willThrow();
    v75 = v127;
    goto LABEL_39;
  }

  v121 = v68;
  v123 = v25;
  v124 = v11;
  if (v168)
  {
    v83 = sub_22EE0FD20();
    swift_beginAccess();
    v84 = *v83;
    v85 = sub_22EE0FCB0();
    swift_beginAccess();
    v86 = *v85;
  }

  else
  {
    v86 = v82;
    v84 = v82;
  }

  type metadata accessor for Reporter(0);
  v122 = sub_22EDE8AD8(v84, v86, 0x676E69646E656D41, 0xE800000000000000, 1);
LABEL_49:
  type metadata accessor for ProviderList();
  v126 = ProviderList.__allocating_init(machine:)(v127);
  v87 = *(v130 + 16);
  if (v87)
  {
    v88 = 0;
    v125 = *(v124 + 32);
    v89 = (v130 + 48);
    v90 = v122;
    while (v88 < *(v130 + 16))
    {
      v91 = *(v89 - 1);
      v92 = *v89;
      v93 = *(v89 - 2);

      sub_22EDDE6A8(v93, v91, v92, v90, v125);
      if (v23)
      {

        goto LABEL_47;
      }

      ++v88;
      v89 += 4;
      if (v87 == v88)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_67;
  }

LABEL_54:
  sub_22EDDF0A0(v129._rawValue);
  if (v23)
  {

    sub_22EE2B714();
    v94 = swift_allocError();
    *v95 = v23;
    *(v95 + 8) = 0;
    *(v95 + 16) = 3;
    swift_willThrow();

    ktrace_machine_destroy(v127);

    ktrace_file_close(v129._rawValue);
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v151 = v160;
    v152 = v161;
    v153 = v162;
    v154 = v163;
    v149 = v158;
    v150 = v159;
    sub_22EE27C38(&v149);

    v24 = sub_22EE2B768;
    v23 = v94;
    v25 = v123;
    goto LABEL_4;
  }

  sub_22EE1DA64(0, &qword_27DA95818, 0x277D85C78);
  sub_22EE3C004();
  *&v149 = MEMORY[0x277D84F90];
  sub_22EE2BAD0(&qword_27DA95820, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95828, &unk_22EE43B90);
  sub_22EE0D944(&qword_27DA95830, &qword_27DA95828, &unk_22EE43B90, MEMORY[0x277D83970]);
  sub_22EE3C7B4();
  (*(isa + 13))(v138, *MEMORY[0x277D85260], v140);
  v140 = sub_22EE3C514();
  v96 = dispatch_semaphore_create(0);
  v97 = swift_allocObject();
  v98 = v168;
  *(v97 + 16) = v167;
  *(v97 + 32) = v98;
  *(v97 + 48) = v169;
  v99 = v121;
  *(v97 + 64) = v121;
  *(v97 + 72) = v96;
  *&v151 = sub_22EE2B7B0;
  *(&v151 + 1) = v97;
  *&v149 = MEMORY[0x277D85DD0];
  *(&v149 + 1) = v2;
  *&v150 = sub_22ED842DC;
  *(&v150 + 1) = &block_descriptor_15;
  v100 = _Block_copy(&v149);
  sub_22EE2B314(&v167, &v145);
  isa = v96;

  ktrace_set_completion_handler(v99, v100);
  _Block_release(v100);
  ProviderList.configurePostprocessing(session:)(v99);
  v101 = *v142;
  v102 = *(*v142 + 16);
  if (v102)
  {
    v144 = sub_22EDF3184(*(*v142 + 16), 0);
    v103 = sub_22EDF3E34(&v149, v144 + 4, v102, v101);
    v104 = v149;

    sub_22ED97F20(v104);
    if (v103 != v102)
    {
      goto LABEL_69;
    }
  }

  v149 = v144;
  LOBYTE(v150) = 2;
  v144 = *(&v168 + 1);
  (*(&v168 + 1))(&v149);
  sub_22EE2B6E8(v149, *(&v149 + 1), v150);
  if (!ktrace_session_has_callbacks(v121))
  {

    (*(*v122 + 224))(0xD000000000000029, 0x800000022EE4ADA0);
LABEL_65:
    v115 = v129._rawValue;
    v116 = v126;
    ProviderList.postprocessingComplete(file:)(v129);
    v149 = xmmword_22EE41ED0;
    LOBYTE(v150) = 3;
    (v144)(&v149);

    ktrace_machine_destroy(v127);

    ktrace_file_close(v115);
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v151 = v160;
    v152 = v161;
    v153 = v162;
    v154 = v163;
    v149 = v158;
    v150 = v159;
    sub_22EE27C38(&v149);

    v28 = sub_22EE2B768;
    v29 = v123;
    goto LABEL_5;
  }

  sub_22EE1DA64(0, &qword_27DA952B0, 0x277D85CA0);
  sub_22EE3C524();
  swift_getObjectType();
  v105 = swift_allocObject();
  v106 = v168;
  *(v105 + 16) = v167;
  *(v105 + 32) = v106;
  *(v105 + 48) = v169;
  v107 = v121;
  *(v105 + 64) = v121;
  *&v151 = sub_22EE2B858;
  *(&v151 + 1) = v105;
  *&v149 = MEMORY[0x277D85DD0];
  *(&v149 + 1) = v2;
  *&v150 = sub_22ED842DC;
  *(&v150 + 1) = &block_descriptor_21;
  v108 = _Block_copy(&v149);
  sub_22EE2B314(&v167, &v145);
  v109 = v141;
  sub_22EE3C004();
  v110 = v133;
  sub_22EDEE074();
  sub_22EE3C534();
  _Block_release(v108);
  (*(v134 + 8))(v110, v135);
  (*(v131 + 8))(v109, v132);

  sub_22EE3C554();
  if (!ktrace_start(v107, v140))
  {

    sub_22EE3C594();
    sub_22EE3C544();
    swift_unknownObjectRelease();
    goto LABEL_65;
  }

  *&v149 = 0;
  *(&v149 + 1) = 0xE000000000000000;
  sub_22EE3C864();

  v145 = 0xD000000000000024;
  v146 = 0x800000022EE4ADD0;
  if (strerror(0))
  {

    v111 = sub_22EE3C214();
    MEMORY[0x2318F58F0](v111);

    v112 = v145;
    v113 = v146;
    sub_22EE2B714();
    v23 = swift_allocError();
    *v114 = v112;
    *(v114 + 8) = v113;
    *(v114 + 16) = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
LABEL_47:
    ktrace_machine_destroy(v127);

    ktrace_file_close(v129._rawValue);
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v151 = v160;
    v152 = v161;
    v153 = v162;
    v154 = v163;
    v149 = v158;
    v150 = v159;
    sub_22EE27C38(&v149);

    v24 = sub_22EE2B768;
    v25 = v123;
    goto LABEL_4;
  }

LABEL_73:
  __break(1u);
}

uint64_t sub_22EE2ACAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v8 = a1;
  v51 = MEMORY[0x277D84F90];
  sub_22EE02370(0, v5, 0);
  v6 = v51;
  v9 = v8 + 56;
  v10 = sub_22EE3C7C4();
  v11 = *(v8 + 36);
  result = swift_beginAccess();
  if (v10 < 0 || (v13 = v10, v10 >= 1 << *(v8 + 32)))
  {
LABEL_28:
    __break(1u);
  }

  else
  {
    v41 = v8 + 64;
    v42 = v5;
    v14 = 1;
    v43 = a2;
    v44 = v8 + 56;
    v45 = v8;
    while (1)
    {
      v49 = v11;
      v15 = 1 << v13;
      if ((*(v9 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        break;
      }

      v47 = v14;
      v48 = v13 >> 6;
      v16 = v6;
      v50 = v13;
      v17 = (*(v8 + 48) + 16 * v13);
      v6 = *v17;
      v18 = v17[1];
      v19 = *(a2 + 16);

      v20 = sub_22EDFCB40(v6, v18, v19, a3);
      if (v4)
      {

        return v6;
      }

      v24 = v21;
      if (!v21)
      {
        sub_22EE2B714();
        swift_allocError();
        *v40 = v6;
        *(v40 + 8) = v18;
        *(v40 + 16) = 4;
        swift_willThrow();

        return v6;
      }

      v25 = v20;
      v26 = v22;
      v27 = v23;

      v6 = v16;
      v52 = v16;
      v28 = *(v16 + 16);
      v29 = *(v6 + 24);
      if (v28 >= v29 >> 1)
      {
        sub_22EE02370((v29 > 1), v28 + 1, 1);
        v6 = v52;
      }

      *(v6 + 16) = v28 + 1;
      v30 = v6 + 32 * v28;
      *(v30 + 32) = v25;
      *(v30 + 40) = v24;
      *(v30 + 48) = v26;
      *(v30 + 56) = v27 & 1;
      v8 = v45;
      v31 = 1 << *(v45 + 32);
      result = v50;
      if (v50 >= v31)
      {
        goto LABEL_30;
      }

      v9 = v44;
      v32 = *(v44 + 8 * v48);
      if ((v32 & v15) == 0)
      {
        goto LABEL_31;
      }

      if (v49 != *(v45 + 36))
      {
        goto LABEL_32;
      }

      v33 = v32 & (-2 << (v50 & 0x3F));
      if (v33)
      {
        v13 = __clz(__rbit64(v33)) | v50 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v6;
        v35 = v48 << 6;
        v36 = v48 + 1;
        v37 = (v41 + 8 * v48);
        while (v36 < (v31 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_22EE0FC54(v50, v49, 0);
            v13 = __clz(__rbit64(v38)) + v35;
            goto LABEL_20;
          }
        }

        result = sub_22EE0FC54(v50, v49, 0);
        v13 = v31;
LABEL_20:
        v6 = v34;
        v4 = 0;
      }

      a2 = v43;
      if (v47 == v42)
      {
        return v6;
      }

      if ((v13 & 0x8000000000000000) == 0)
      {
        v11 = *(v45 + 36);
        v14 = v47 + 1;
        if (v13 < 1 << *(v45 + 32))
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22EE2AFD4()
{
  swift_beginAccess();
  result = sub_22EDDCDC8();
  v18 = *(result + 16);
  if (v18)
  {
    v1 = 0;
    v2 = (result + 56);
    v3 = MEMORY[0x277D84F90];
    v17 = result;
    while (v1 < *(result + 16))
    {
      v4 = *(v2 - 3);
      v5 = *(v2 - 2);
      v6 = v2[1];
      if (v6)
      {
        v7 = *(v2 - 3);
        v8 = *v2;

        MEMORY[0x2318F58F0](v8, v6);
        v4 = v7;
        v10 = 539831584;
        v9 = 0xE400000000000000;
      }

      else
      {

        v10 = 0;
        v9 = 0xE000000000000000;
      }

      MEMORY[0x2318F58F0](v4, v5);
      MEMORY[0x2318F58F0](v10, v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_22EDDA224(0, *(v3 + 2) + 1, 1, v3);
      }

      result = v17;
      v12 = *(v3 + 2);
      v11 = *(v3 + 3);
      if (v12 >= v11 >> 1)
      {
        v3 = sub_22EDDA224((v11 > 1), v12 + 1, 1, v3);
        result = v17;
      }

      ++v1;
      *(v3 + 2) = v12 + 1;
      v13 = &v3[16 * v12];
      *(v13 + 4) = 9;
      *(v13 + 5) = 0xE100000000000000;
      v2 += 8;
      if (v18 == v1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60, MEMORY[0x277D83958]);
    v14 = sub_22EE3C0B4();
    v16 = v15;

    sub_22EE3C864();

    MEMORY[0x2318F58F0](v14, v16);

    return 0xD00000000000002DLL;
  }

  return result;
}

void sub_22EE2B2B8(uint64_t a1, void *a2)
{
  v3 = *(v2 + 40);
  v7 = a1;
  v8 = a2;
  v9 = 0;

  v3(&v7);
  v4 = v7;
  v5 = v8;
  v6 = v9;

  sub_22EE2B6E8(v4, v5, v6);
}

uint64_t sub_22EE2B34C(uint64_t a1, unint64_t a2)
{
  v23[0] = 44;
  v23[1] = 0xE100000000000000;
  v22 = v23;

  v6 = sub_22EDD1FA0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22EDD4544, v21, a1, a2, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v23[4] = v2;
    v23[0] = MEMORY[0x277D84F90];
    sub_22EDD2DD4(0, v7, 0);
    v8 = v23[0];
    v9 = (v6 + 56);
    do
    {
      v11 = *(v9 - 3);
      v10 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;

      v14 = MEMORY[0x2318F5880](v11, v10, v12, v13);
      v16 = v15;

      v23[0] = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22EDD2DD4((v17 > 1), v18 + 1, 1);
        v8 = v23[0];
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  sub_22EE1C928(v8);
  swift_endAccess();
}

uint64_t sub_22EE2B4FC()
{
  result = swift_beginAccess();
  *(v0 + 32) = 1;
  return result;
}

uint64_t sub_22EE2B544(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22ED80FA0();
  if (sub_22EE3C6A4())
  {
    swift_beginAccess();
    v6 = *(v2 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 24) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_22EDDA224(0, *(v6 + 2) + 1, 1, v6);
      *(v3 + 24) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_22EDDA224((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[16 * v9];
    *(v10 + 4) = a1;
    *(v10 + 5) = a2;
    *(v3 + 24) = v6;
    return swift_endAccess();
  }

  else
  {
    sub_22EE3C864();

    MEMORY[0x2318F58F0](a1, a2);
    sub_22EE2B714();
    swift_allocError();
    *v12 = 0xD000000000000010;
    *(v12 + 8) = 0x800000022EE4AE60;
    *(v12 + 16) = 0;
    return swift_willThrow();
  }
}

void sub_22EE2B6E8(id a1, id a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

unint64_t sub_22EE2B714()
{
  result = qword_27DA95A10;
  if (!qword_27DA95A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95A10);
  }

  return result;
}

BOOL sub_22EE2B768(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = ktrace_machine_create(a1, a2);
  *v3 = v4;
  return v4 == 0;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22EE2B7B0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v4[0] = 0;
  v4[1] = 0;
  v5 = 3;
  v2(v4);
  ktrace_session_destroy(v1);
  return sub_22EE3C5A4();
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_22EE2B858()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = xmmword_22EE447B0;
  v4 = 3;
  v2(&v3);

  ktrace_end(v1, 0);
}

uint64_t sub_22EE2B8CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EE2B914(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t get_enum_tag_for_layout_string_6ktrace13AmendmentNoteO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22EE2B994(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22EE2B9DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22EE2BA2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22EE2BA74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22EE2BAD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_22EE2BB78(void *a1, uint64_t *a2)
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

void *sub_22EE2BBA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_22EE2BBD4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_22EE2BCA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22EE2BCCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22EE2E9D0(a1);

  *a2 = v3;
  return result;
}

void sub_22EE2BD2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a3;
  v34 = a1;
  v28 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = sub_22EE3BCB4();
  v16 = *(v15 - 8);
  v17 = 1;
  v32 = *(v16 + 56);
  v33 = v16 + 56;
  v32(v14, 1, 1, v15);
  v31 = objc_opt_self();
  v37 = (v16 + 48);
  v27 = v16;
  v18 = (v16 + 8);
  v30 = xmmword_22EE3F500;
  do
  {
    if (v17 == 1000)
    {
      __break(1u);
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    v38 = v35;
    v39 = v36;

    MEMORY[0x2318F58F0](45, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
    v19 = swift_allocObject();
    *(v19 + 16) = v30;
    *(v19 + 56) = MEMORY[0x277D83B88];
    *(v19 + 64) = MEMORY[0x277D83C10];
    *(v19 + 32) = v17;
    v20 = sub_22EE3C134();
    MEMORY[0x2318F58F0](v20);

    MEMORY[0x2318F58F0](0x637274612ELL, 0xE500000000000000);
    sub_22EE3BC44();

    sub_22EE2C0BC(v14);
    v32(v12, 0, 1, v15);
    sub_22EE2C124(v12, v14);
    v21 = [v31 defaultManager];
    sub_22EE1B424(v14, v9);
    v22 = *v37;
    if ((*v37)(v9, 1, v15) == 1)
    {
      goto LABEL_8;
    }

    sub_22EE3BC94();
    v23 = sub_22EE3C0F4();

    (*v18)(v9, v15);
    v24 = [v21 fileExistsAtPath_];

    ++v17;
  }

  while ((v24 & 1) != 0);
  v25 = v29;
  sub_22EE1B424(v14, v29);
  if (v22(v25, 1, v15) != 1)
  {
    sub_22EE2C0BC(v14);
    (*(v27 + 32))(v28, v25, v15);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_22EE2C0BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22EE2C124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE2C194@<X0>(uint64_t a1@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = sub_22EE3BCB4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = &v1[*(type metadata accessor for RecordingOptions.Options(0) + 124)];
  v14 = v13[1];
  if (!v14)
  {
    __break(1u);
  }

  v15 = *v13;

  sub_22EE3BBF4();
  v16 = sub_22EE3C2B4();
  v33 = a1;
  if ((v16 & 1) == 0)
  {

    v22 = sub_22EE3BC04();
    v24 = v23;
    sub_22EE3BC64();
    if (sub_22EE3BC94())
    {
      v26 = 0;
    }

    else
    {
      v26 = v25 == 0xE000000000000000;
    }

    if (v26)
    {
    }

    else
    {
      v27 = sub_22EE3CBA4();

      if ((v27 & 1) == 0)
      {
        (*(v4 + 16))(v7, v10, v3);
LABEL_16:
        sub_22EE2BD2C(v7, v22, v24, v33);

        v30 = *(v4 + 8);
        v30(v7, v3);
        v30(v10, v3);
        return (v30)(v12, v3);
      }
    }

    v28 = [objc_opt_self() defaultManager];
    v29 = [v28 currentDirectoryPath];

    sub_22EE3C124();
    v32 = v10;

    sub_22EE3BBF4();
    v10 = v32;

    goto LABEL_16;
  }

  v34 = 0;
  v17 = [objc_opt_self() defaultManager];
  v18 = sub_22EE3C0F4();
  v19 = [v17 fileExistsAtPath:v18 isDirectory:&v34];

  if ((v34 & 1) != 0 || v19 && (*v1 & 1) == 0)
  {
    type metadata accessor for KTraceRecordError(0);
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
    swift_allocError();
    *v20 = v15;
    v20[1] = v14;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v4 + 8))(v12, v3);
  }

  else
  {

    return (*(v4 + 32))(v33, v12, v3);
  }
}

uint64_t sub_22EE2C5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a3;
  v5 = type metadata accessor for RecordingOptions.Options(0);
  MEMORY[0x28223BE20](v5);
  v116 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  MEMORY[0x28223BE20](v7 - 8);
  v115 = &v112 - v8;
  v9 = type metadata accessor for RecordingOptions(0);
  v119 = *(v9 - 8);
  v120 = v9;
  MEMORY[0x28223BE20](v9);
  v129 = (&v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocBox();
  v13 = v12;
  *v12 = 0;
  v14 = v5[5];
  v15 = sub_22EE3BCB4();
  v16 = *(v15 - 8);
  v113 = *(v16 + 56);
  v114 = v15;
  v112 = v16 + 56;
  v113(&v13[v14], 1, 1);
  v17 = MEMORY[0x277D84F90];
  *&v13[v5[6]] = MEMORY[0x277D84F90];
  v122 = v5[7];
  *&v13[v122] = v17;
  *&v13[v5[8]] = v17;
  v18 = &v13[v5[9]];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v13[v5[10]];
  *v19 = 0;
  v19[4] = 1;
  v20 = &v13[v5[11]];
  *v20 = 0;
  v20[8] = 1;
  *&v13[v5[12]] = v17;
  *&v13[v5[13]] = v17;
  v13[v5[14]] = 0;
  v21 = &v13[v5[15]];
  *v21 = 0;
  v21[8] = 1;
  v13[v5[16]] = 0;
  v13[v5[17]] = 0;
  v13[v5[18]] = 1;
  v22 = &v13[v5[19]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v13[v5[20]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v13[v5[21]];
  *v24 = 0;
  v24[8] = 1;
  v13[v5[22]] = 0;
  v25 = &v13[v5[23]];
  *v25 = 0;
  v25[4] = 1;
  v26 = MEMORY[0x277D84FA0];
  *&v13[v5[24]] = MEMORY[0x277D84FA0];
  *&v13[v5[25]] = v26;
  *&v13[v5[26]] = v17;
  v13[v5[27]] = 0;
  v13[v5[28]] = 0;
  *&v13[v5[29]] = v17;
  v27 = &v13[v5[30]];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v13[v5[31]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v118 = v5;
  v29 = v5[32];
  v123 = v13;
  v30 = &v13[v29];
  *v30 = 0x746C7561666564;
  *(v30 + 1) = 0xE700000000000000;
  v31 = swift_allocObject();
  v161 = v31;
  *(v31 + 16) = 0;
  v117 = (v31 + 16);
  result = *a1;
  if (*a1)
  {
    v127 = sub_22EE3C214();
    v125 = v33;
    v34 = swift_allocObject();
    v35 = *(a1 + 16);
    *(v34 + 24) = *a1;
    *(v34 + 16) = a2;
    *(v34 + 40) = v35;
    *(v34 + 56) = *(a1 + 32);
    *(v34 + 72) = *(a1 + 48);
    v124 = "le with providers\n\nProviders:";
    v36 = swift_allocObject();
    v37 = *(a1 + 16);
    *(v36 + 16) = *a1;
    *(v36 + 32) = v37;
    *(v36 + 48) = *(a1 + 32);
    *(v36 + 64) = *(a1 + 48);

    v38 = sub_22EDEBE84();
    v39 = sub_22EDEBE90();
    v40 = sub_22EDEBE90();
    v111.n128_u64[1] = v39;
    *(&v110 + 1) = v36;
    v111.n128_u64[0] = v38;
    *&v110 = sub_22EE2EFFC;
    *&v109 = 0xD000000000000049;
    *(&v109 + 1) = 0x800000022EE4A810;
    sub_22EDEBE9C(v127, v125, sub_22EE2EFD8, v34, 0xD000000000000010, v124 | 0x8000000000000000, 0, 0, &v143, v109, 0, v110, v111, v40);
    *v129 = a2;
    v126 = a2;
    v127 = a1;
    if (*(a1 + 48))
    {
      *&v134 = MEMORY[0x277D84F90];

      sub_22EE2E220(0, 2, 0);
      v42 = v134;
      v44 = *(v134 + 16);
      v43 = *(v134 + 24);
      v45 = v43 >> 1;
      v46 = v44 + 1;
      if (v43 >> 1 <= v44)
      {
        sub_22EE2E220((v43 > 1), v44 + 1, 1);
        v42 = v134;
        v43 = *(v134 + 24);
        v45 = v43 >> 1;
      }

      v41 = v161;
      *(v42 + 16) = v46;
      v47 = v42 + 24 * v44;
      *(v47 + 32) = xmmword_22EE41ED0;
      *(v47 + 48) = 0;
      if (v45 <= v46)
      {
        sub_22EE2E220((v43 > 1), v44 + 2, 1);
        v42 = v134;
      }

      *(v42 + 16) = v44 + 2;
      v48 = v42 + 24 * v46;
      *(v48 + 32) = xmmword_22EE44A70;
      *(v48 + 48) = 0;
      sub_22EE2E35C(v42);
    }

    else
    {

      v41 = v161;
    }

    sub_22EDE9774(sub_22EE2F0DC, v11);

    sub_22EDE9774(sub_22EE2F16C, v11);

    v49 = sub_22ED808E4();
    sub_22EDE98AC(1851878512, 0xE400000000000000, 0xD000000000000023, 0x800000022EE4AED0, 0, 0, v49 & 1, sub_22EE2F1FC, v11);

    v50 = sub_22ED808E4();
    sub_22EDE98AC(6579297, 0xE300000000000000, 0xD00000000000002ALL, 0x800000022EE4AF00, 0, 0, v50 & 1, sub_22EE2F288, v11);

    v51 = sub_22ED808E4();
    sub_22EDE98AC(1953066351, 0xE400000000000000, 0xD00000000000002CLL, 0x800000022EE4AF30, 0, 0, v51 & 1, sub_22EE2F45C, v11);

    v52 = swift_allocObject();
    *(v52 + 16) = v41;
    *(v52 + 24) = v11;
    v53 = v148;

    sub_22EDECBBC(v53, *(&v53 + 1));
    *&v148 = sub_22EE2F630;
    *(&v148 + 1) = v52;

    v54 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000012, 0x800000022EE4AF60, 0xD00000000000003BLL, 0x800000022EE4AF80, 0, 0, v54 & 1, sub_22EE2F854, v11);

    v55 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000010, 0x800000022EE4AFC0, 0xD00000000000003ELL, 0x800000022EE4AFE0, 0, 0, v55 & 1, sub_22EE2F958, v11);

    v56 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000012, 0x800000022EE4B020, 0xD000000000000032, 0x800000022EE4B040, 0, 0, v56 & 1, sub_22EE2FA5C, v11);

    v57 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000013, 0x800000022EE4B080, 0xD000000000000038, 0x800000022EE4B0A0, 0, 0, v57 & 1, sub_22EE2FCA4, v11);

    v58 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000013, 0x800000022EE49B50, 0xD00000000000002FLL, 0x800000022EE4B0E0, 0, 0, v58 & 1, sub_22EE2FDC8, v11);

    v59 = sub_22ED808E4();
    sub_22EDE98AC(0xD00000000000001CLL, 0x800000022EE49B30, 0xD000000000000041, 0x800000022EE4B110, 0, 0, v59 & 1, sub_22EE2FF14, v11);

    v60 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000015, 0x800000022EE4B160, 0xD000000000000037, 0x800000022EE4B180, 0, 0, v60 & 1, sub_22EE300F4, v11);

    v61 = sub_22ED808E4();
    sub_22EDE987C(0x746972777265766FLL, 0xE900000000000065, 0xD000000000000023, 0x800000022EE4B1C0, 0, 0, v61 & 1, sub_22EE301F8, v11);

    v62 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000012, 0x800000022EE4B1F0, 0xD000000000000026, 0x800000022EE4B210, 0, 0, v62 & 1, sub_22EE30258, v11);

    v63 = sub_22ED808E4();
    sub_22EDE987C(0x73736572706D6F63, 0xE800000000000000, 0xD000000000000021, 0x800000022EE4B240, 0, 0, v63 & 1, sub_22EE304C4, v11);

    v64 = sub_22ED808E4();
    sub_22EDE987C(0x73736572706D6F63, 0xEF676E697275642DLL, 0xD000000000000022, 0x800000022EE4B270, 0, 0, v64 & 1, sub_22EE3052C, v11);

    v65 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000011, 0x800000022EE4B2A0, 0xD000000000000040, 0x800000022EE4B2C0, 0, 0, v65 & 1, sub_22EE30594, v11);

    v66 = sub_22ED808E4();
    sub_22EDE987C(0x656D697265707865, 0xEC0000006C61746ELL, 0xD000000000000019, 0x800000022EE4B310, 0, 0, v66 & 1, sub_22EE30764, v11);

    v67 = sub_22EDE9760();
    swift_beginAccess();
    v69 = *v67;
    v68 = v67[1];

    v70 = sub_22ED808E4();
    sub_22EDE987C(v69, v68, 0xD000000000000015, 0x800000022EE4B330, 0, 0, v70 & 1, sub_22EE307CC, v11);

    sub_22EDE98AC(0xD000000000000012, 0x800000022EE4B350, 0xD000000000000028, 0x800000022EE4B370, 0, 0, 1, sub_22EE30834, v11);

    sub_22EDE98AC(0xD000000000000015, 0x800000022EE4B3A0, 0xD00000000000002BLL, 0x800000022EE4B3C0, 0, 0, 1, sub_22EE30A04, v11);

    sub_22EDE98AC(0xD000000000000015, 0x800000022EE4B3F0, 0xD000000000000025, 0x800000022EE4B410, 0, 0, 1, sub_22EE30A90, v11);

    sub_22EDE987C(0xD000000000000015, 0x800000022EE4B440, 0xD000000000000089, 0x800000022EE4B460, 0, 0, 1, sub_22EE30B1C, v11);

    sub_22EDE98AC(0xD000000000000013, 0x800000022EE4B4F0, 0xD000000000000049, 0x800000022EE4B510, 0, 0, 1, sub_22EE30B84, v11);

    sub_22EDE987C(0xD000000000000016, 0x800000022EE4B560, 0xD000000000000025, 0x800000022EE4B580, 0, 0, 1, sub_22EE30FC4, v11);

    v158 = v149;
    v159 = v150;
    v160 = v151;
    v154 = v145;
    v155 = v146;
    v156 = v147;
    v157 = v148;
    v152 = v143;
    v153 = v144;
    v71 = v128;
    sub_22EDEA6A8(v126);
    v73 = v71;
    if (v71)
    {

LABEL_11:
      v130 = v73;
      v74 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
      if (swift_dynamicCast())
      {

        v75 = v131;
        v76 = v132;
        v77 = v133;
        type metadata accessor for KTraceRecordError(0);
        sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
        swift_allocError();
        *v78 = v75;
        *(v78 + 8) = v76;
        *(v78 + 16) = v77;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      sub_22EE31028(v127, type metadata accessor for ktrace_recording);

      v140 = v149;
      v141 = v150;
      v142 = v151;
      v136 = v145;
      v137 = v146;
      v138 = v147;
      v139 = v148;
      v134 = v143;
      v135 = v144;
      sub_22EE27C38(&v134);
    }

    v79 = v72;

    if (v79)
    {
      if (*(v79 + 16))
      {
        type metadata accessor for KTraceRecordError(0);
        sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
        v73 = swift_allocError();
        v81 = v80;
        *&v134 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
        sub_22EDD3F74();
        v82 = sub_22EE3C0B4();
        v84 = v83;

        *v81 = v82;
        v81[1] = v84;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        goto LABEL_11;
      }

      v85 = v123;
      swift_beginAccess();
      v86 = v118;
      if ((*(v85 + v118[28]) & 1) == 0 && *(v85 + v118[17]) == 1)
      {
        type metadata accessor for KTraceRecordError(0);
        sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
        swift_allocError();
        *v87 = 0xD000000000000011;
        v87[1] = 0x800000022EE4B5E0;
LABEL_30:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_22EE31028(v127, type metadata accessor for ktrace_recording);
        v140 = v149;
        v141 = v150;
        v142 = v151;
        v136 = v145;
        v137 = v146;
        v138 = v147;
        v139 = v148;
        v134 = v143;
        v135 = v144;
        sub_22EE27C38(&v134);

LABEL_31:
      }

      v88 = (v85 + v118[31]);
      v89 = v88[1];
      if (!v89)
      {
        type metadata accessor for KTraceRecordError(0);
        sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
        swift_allocError();
        *v99 = 0xD00000000000002ELL;
        v99[1] = 0x800000022EE4B5B0;
        goto LABEL_30;
      }

      v90 = *v88;
      v91 = v117;
      swift_beginAccess();
      if (*v91 == 1)
      {

        if ((sub_22EE3C2B4() & 1) == 0)
        {
          type metadata accessor for KTraceRecordError(0);
          sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
          swift_allocError();
          *v105 = v90;
          v105[1] = v89;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_22EE31028(v127, type metadata accessor for ktrace_recording);
          v140 = v149;
          v141 = v150;
          v142 = v151;
          v136 = v145;
          v137 = v146;
          v138 = v147;
          v139 = v148;
          v134 = v143;
          v135 = v144;
          sub_22EE27C38(&v134);

          goto LABEL_31;
        }
      }

      v92 = *(v123 + v86[24]);
      v93 = v123;

      sub_22EE15DB8(v94, v92);
      v96 = v95;

      if ((v96 & 1) == 0)
      {
        type metadata accessor for KTraceRecordError(0);
        sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
        swift_allocError();
        v101 = v100;
        v102 = *(v93 + v86[24]);

        v104 = sub_22EE1B918(v103, v102);

        *v101 = v104;
        goto LABEL_30;
      }

      v97 = v116;
      sub_22EE31088(v93, v116, type metadata accessor for RecordingOptions.Options);
      v98 = v115;
      sub_22EE2C194(v115);
      sub_22EE31028(v97, type metadata accessor for RecordingOptions.Options);
      sub_22EE31028(v127, type metadata accessor for ktrace_recording);
      (v113)(v98, 0, 1, v114);
      sub_22EE1B494(v98, v93 + v86[5]);
      v106 = v120;
      v107 = v129;
      sub_22EE31088(v93, v129 + *(v120 + 20), type metadata accessor for RecordingOptions.Options);
      v140 = v149;
      v141 = v150;
      v142 = v151;
      v136 = v145;
      v137 = v146;
      v138 = v147;
      v139 = v148;
      v134 = v143;
      v135 = v144;
      sub_22EE27C38(&v134);

      v108 = v121;
      sub_22EE31088(v107, v121, type metadata accessor for RecordingOptions);
      (*(v119 + 56))(v108, 0, 1, v106);
      return sub_22EE31028(v107, type metadata accessor for RecordingOptions);
    }

    else
    {
      sub_22EE31028(v127, type metadata accessor for ktrace_recording);
      v140 = v149;
      v141 = v150;
      v142 = v151;
      v136 = v145;
      v137 = v146;
      v138 = v147;
      v139 = v148;
      v134 = v143;
      v135 = v144;
      sub_22EE27C38(&v134);

      return (*(v119 + 56))(v121, 1, 1, v120);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22EE2DE94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22EDF3E20(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22EE2DF00(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22EE2DF00(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22EE3CB64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22EE3C404();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22EE08B9C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22EDF3300(0, v2, 1, a1);
  }

  return result;
}

char *sub_22EE2DFF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95A38, &qword_22EE44C78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EE2E114(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95A40, &qword_22EE44C80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EE2E220(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EE2E240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EE2E240(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95A38, &qword_22EE44C78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EE2E35C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_22EE2DFF8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unsigned __int8 *sub_22EE2E454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_22EE3C304();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22EE12EBC(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      result = sub_22EE3C8C4();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
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
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
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
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
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

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22EE2E9D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_22EE2EA08(uint64_t a1, int a2)
{
  v3 = v2;
  v56 = a2;
  v5 = sub_22EE3BCB4();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v57 = v7 != 0;
  if (v7)
  {
    v8 = (a1 + 40);
    v9 = v7;
    do
    {
      if (*(v8 - 1) == 0x6972657078652D2DLL && *v8 == 0xEE006C61746E656DLL)
      {
        break;
      }

      if (sub_22EE3CBA4())
      {
        break;
      }

      v8 += 2;
      v57 = --v9 != 0;
    }

    while (v9);
  }

  v11 = 0x746C7561666564;
  if (!v7)
  {
    v20 = 0xE700000000000000;
    v17 = v56;
    v18 = v57;
LABEL_24:
    v21 = sub_22EE0099C(v18, v17 & 1);
    v22 = v2;
    if (!v2)
    {
      v48 = v20;
      v23 = v21;

      v24 = *(v23 + 2);
      if (v24)
      {
        v44 = v11;
        v45 = 0;
        v46 = v5;
        v55[0] = MEMORY[0x277D84F90];
        v47 = v23;
        sub_22EDD2DD4(0, v24, 0);
        v25 = v55[0];
        v26 = (v47 + 40);
        do
        {
          v27 = *(v26 - 1);
          v28 = *v26;
          v55[0] = v25;
          v30 = *(v25 + 16);
          v29 = *(v25 + 24);

          if (v30 >= v29 >> 1)
          {
            sub_22EDD2DD4((v29 > 1), v30 + 1, 1);
            v25 = v55[0];
          }

          *(v25 + 16) = v30 + 1;
          v31 = v25 + 16 * v30;
          *(v31 + 32) = v27;
          *(v31 + 40) = v28;
          v26 += 41;
          --v24;
        }

        while (v24);

        v22 = v45;
        v5 = v46;
        v17 = v56;
        v18 = v57;
        v11 = v44;
      }

      else
      {

        v25 = MEMORY[0x277D84F90];
      }

      v3 = v50;
      sub_22EE00518(v50, v11, v48, v18, v17 & 1, 0, 0);
      if (!v22)
      {

        sub_22EDFC60C(v55);
        memcpy(v54, v55, 0x141uLL);
        v51[0] = 0;
        v51[1] = 0xE000000000000000;
        sub_22EE3C864();

        v51[0] = 0x6020202020;
        v51[1] = 0xE500000000000000;
        v33 = v54[0];
        v34 = v54[1];

        MEMORY[0x2318F58F0](v33, v34);

        MEMORY[0x2318F58F0](0x203A6E616C702027, 0xE800000000000000);
        v35 = v54[10];
        v36 = v54[11];

        MEMORY[0x2318F58F0](v35, v36);

        MEMORY[0x2318F58F0](10, 0xE100000000000000);
        v52 = v51[0];
        v53 = v51[1];
        memcpy(v51, v54, 0x141uLL);
        v37 = sub_22EDFE0AC(0x2020202020202020, 0xE800000000000000);
        MEMORY[0x2318F58F0](v37);

        MEMORY[0x2318F58F0](10, 0xE100000000000000);
        sub_22ED80F70(v54);
        v39 = v52;
        v38 = v53;
        v55[0] = 0;
        v55[1] = 0xE000000000000000;
        sub_22EE3C864();

        v55[0] = 0xD00000000000002FLL;
        v55[1] = 0x800000022EE4B6E0;
        MEMORY[0x2318F58F0](v39, v38);

        MEMORY[0x2318F58F0](0xD000000000000015, 0x800000022EE4B710);
        v54[0] = v25;

        sub_22EE2DE94(v54);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
        sub_22EDD3F74();
        v40 = sub_22EE3C0B4();
        v42 = v41;

        MEMORY[0x2318F58F0](v40, v42);

        v3 = v55[0];
        (*(v49 + 8))(v50, v5);
        return v3;
      }
    }

    return v3;
  }

  v12 = 0;
  v13 = a1 + 32;
  v14 = (a1 + 40);
  while (1)
  {
    v15 = *(v14 - 1) == 0x6E616C702D2DLL && *v14 == 0xE600000000000000;
    if (v15 || (sub_22EE3CBA4() & 1) != 0)
    {
      break;
    }

    ++v12;
    v14 += 2;
    if (v7 == v12)
    {
      goto LABEL_22;
    }
  }

  v16 = (v12 + 1);
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    if (v16 >= v7)
    {
LABEL_22:
      v20 = 0xE700000000000000;
      v17 = v56;
      v18 = v57;
      v11 = 0x746C7561666564;
      goto LABEL_24;
    }

    v17 = v56;
    v18 = v57;
    if ((v16 & 0x8000000000000000) == 0)
    {
      v19 = (v13 + 16 * v16);
      v11 = *v19;
      v20 = v19[1];

      goto LABEL_24;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22EE2EFFC(uint64_t a1, uint64_t a2)
{
  sub_22EE18DB0();
  result = *(v2 + 40);
  if (result)
  {
    nullsub_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FF8, &unk_22EE40510);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22EE3F500;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    sub_22ED82560();

    sub_22EE3CC44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22EE2F0DC(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for RecordingOptions.Options(0);
  if (a2)
  {
    v5 = result;
    v6 = swift_projectBox();
    swift_beginAccess();
    v7 = (v6 + *(v5 + 124));
    *v7 = a1;
    v7[1] = a2;
  }

  return result;
}

uint64_t sub_22EE2F16C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for RecordingOptions.Options(0);
  if (a2)
  {
    v5 = result;
    v6 = swift_projectBox();
    swift_beginAccess();
    v7 = (v6 + *(v5 + 128));
    *v7 = a1;
    v7[1] = a2;
  }

  return result;
}

uint64_t sub_22EE2F1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = (v5 + *(v4 + 128));
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_22EE2F288(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  swift_projectBox();
  v23[0] = 44;
  v23[1] = 0xE100000000000000;
  v22 = v23;

  v6 = sub_22EDD1FA0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22EE1DF80, v21, a1, a2, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v23[4] = v4;
    v23[0] = MEMORY[0x277D84F90];
    sub_22EDD2DD4(0, v7, 0);
    v8 = v23[0];
    v9 = (v6 + 56);
    do
    {
      v11 = *(v9 - 3);
      v10 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;

      v14 = MEMORY[0x2318F5880](v11, v10, v12, v13);
      v16 = v15;

      v23[0] = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22EDD2DD4((v17 > 1), v18 + 1, 1);
        v8 = v23[0];
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  sub_22EE1C928(v8);
  swift_endAccess();
}

uint64_t sub_22EE2F45C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  swift_projectBox();
  v23[0] = 44;
  v23[1] = 0xE100000000000000;
  v22 = v23;

  v6 = sub_22EDD1FA0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22EE1DD00, v21, a1, a2, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v23[4] = v4;
    v23[0] = MEMORY[0x277D84F90];
    sub_22EDD2DD4(0, v7, 0);
    v8 = v23[0];
    v9 = (v6 + 56);
    do
    {
      v11 = *(v9 - 3);
      v10 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;

      v14 = MEMORY[0x2318F5880](v11, v10, v12, v13);
      v16 = v15;

      v23[0] = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22EDD2DD4((v17 > 1), v18 + 1, 1);
        v8 = v23[0];
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  sub_22EE1C928(v8);
  swift_endAccess();
}

void sub_22EE2F630(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for RecordingOptions.Options(0);
  v7 = swift_projectBox();
  if (a1 == 0x687461702D6F74 && a2 == 0xE700000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {
    swift_beginAccess();
    *(v5 + 16) = 1;
  }

  else
  {
    sub_22ED80FA0();
    if (sub_22EE3C6A4())
    {
      swift_beginAccess();
      v8 = *(v6 + 104);
      v9 = *(v7 + v8);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + v8) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_22EDDA224(0, *(v9 + 2) + 1, 1, v9);
        *(v7 + v8) = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_22EDDA224((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[16 * v12];
      *(v13 + 4) = a1;
      *(v13 + 5) = a2;
      *(v7 + v8) = v9;
      swift_endAccess();
    }

    else
    {
      type metadata accessor for KTraceRecordError(0);
      sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
      swift_allocError();
      *v14 = a1;
      *(v14 + 8) = a2;
      *(v14 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }
}

uint64_t sub_22EE2F854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = *(v4 + 48);
  v7 = *(v5 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_22EDDA224(0, *(v7 + 2) + 1, 1, v7);
    *(v5 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_22EDDA224((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(v5 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_22EE2F958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = *(v4 + 52);
  v7 = *(v5 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_22EDDA224(0, *(v7 + 2) + 1, 1, v7);
    *(v5 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_22EDDA224((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(v5 + v6) = v7;
  return swift_endAccess();
}

void sub_22EE2FA5C(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for RecordingOptions.Options(0);
  v6 = swift_projectBox();
  v7 = sub_22EE10DF0(a1, a2, 1);
  if (v2)
  {
    v27 = v2;
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:

      return;
    }

    v25[0] = v22;
    v25[1] = v23;
    v26 = v24;
    type metadata accessor for KTraceRecordError(0);
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
    swift_allocError();
    v10 = v9;
    v11 = sub_22EE10C98();
    if (v12)
    {
      v13 = v11;
      v14 = v12;

      sub_22EE31668(v25);
      *v10 = 0xD000000000000014;
      v10[1] = 0x800000022EE4B6C0;
      v10[2] = v13;
      v10[3] = v14;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
    swift_beginAccess();
    v16 = *(v5 + 32);
    v17 = *(v6 + v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_22EE2DFF8(0, *(v17 + 2) + 1, 1, v17);
      *(v6 + v16) = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_22EE2DFF8((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[24 * v20];
    *(v21 + 4) = v15;
    *(v21 + 5) = 0;
    v21[48] = 1;
    *(v6 + v16) = v17;
    swift_endAccess();
  }
}

uint64_t sub_22EE2FCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = *(v4 + 28);
  v7 = *(v5 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_22EE2DFF8(0, *(v7 + 2) + 1, 1, v7);
    *(v5 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_22EE2DFF8((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  v11[48] = 2;
  *(v5 + v6) = v7;
  *(v5 + *(v4 + 56)) = 1;
  return swift_endAccess();
}

void sub_22EE2FDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  v6 = sub_22ED80FA0();
  v7 = sub_22EE11A98(MEMORY[0x277D837D0], v6);
  if (v8)
  {
    type metadata accessor for KTraceRecordError(0);
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
    swift_allocError();
    *v9 = 0xD000000000000015;
    v9[1] = 0x800000022EE4B6A0;
    v9[2] = a1;
    v9[3] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v10 = v7;
    if (HIDWORD(v7))
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v11 = v5 + *(v4 + 40);
      *v11 = v10;
      *(v11 + 4) = 0;
    }
  }
}

void sub_22EE2FF14(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for RecordingOptions.Options(0);
  v6 = swift_projectBox();
  v7 = sub_22EE11334(a1, a2);
  if (v2)
  {
    v22 = v2;
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:

      return;
    }

    v20[0] = v17;
    v20[1] = v18;
    v21 = v19;
    type metadata accessor for KTraceRecordError(0);
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
    swift_allocError();
    v10 = v9;
    v11 = sub_22EE10C98();
    if (v12)
    {
      v13 = v11;
      v14 = v12;

      sub_22EE31668(v20);
      *v10 = 0xD00000000000001ELL;
      v10[1] = 0x800000022EE4B680;
      v10[2] = v13;
      v10[3] = v14;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_5;
    }
  }

  else
  {
    if (v7 >> 54)
    {
      __break(1u);
    }

    else if (!(v7 >> 44))
    {
      v15 = v7 << 14;
      swift_beginAccess();
      v16 = v6 + *(v5 + 44);
      *v16 = v15;
      *(v16 + 8) = 0;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22EE300F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = *(v4 + 24);
  v7 = *(v5 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_22EE2E114(0, *(v7 + 2) + 1, 1, v7);
    *(v5 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_22EE2E114((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(v5 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_22EE301F8()
{
  type metadata accessor for RecordingOptions.Options(0);
  v0 = swift_projectBox();
  result = swift_beginAccess();
  if ((*v0 & 1) == 0)
  {
    *v0 |= 1uLL;
  }

  return result;
}

void sub_22EE30258(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for RecordingOptions.Options(0);
  v7 = swift_projectBox();
  v8 = sub_22ED808E4();
  v9 = sub_22EE10DF0(a1, a2, v8 & 1);
  if (!v2)
  {
    if (v9 >> 4 > 0xC34)
    {
      v19 = v9 / 0x3E8;
      swift_beginAccess();
      v20 = v7 + *(v6 + 60);
      *v20 = v19;
      *(v20 + 8) = 0;
      return;
    }

    v10 = v9;
    type metadata accessor for KTraceRecordError(0);
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
    v3 = swift_allocError();
    *v11 = v10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v26 = v3;
  v12 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
  if (!swift_dynamicCast())
  {
LABEL_7:

    return;
  }

  v24[0] = v21;
  v24[1] = v22;
  v25 = v23;
  type metadata accessor for KTraceRecordError(0);
  sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
  swift_allocError();
  v14 = v13;
  v15 = sub_22EE10C98();
  if (v16)
  {
    v17 = v15;
    v18 = v16;

    sub_22EE31668(v24);
    *v14 = 0xD000000000000014;
    v14[1] = 0x800000022EE4B660;
    v14[2] = v17;
    v14[3] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22EE304C4()
{
  v0 = type metadata accessor for RecordingOptions.Options(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + *(v0 + 64)) = 1;
  return result;
}

uint64_t sub_22EE3052C()
{
  v0 = type metadata accessor for RecordingOptions.Options(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + *(v0 + 68)) = 1;
  return result;
}

void sub_22EE30594(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for RecordingOptions.Options(0);
  v6 = swift_projectBox();
  v7 = sub_22ED808E4();
  v8 = sub_22EE10DF0(a1, a2, v7 & 1);
  if (v2)
  {
    v23 = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:

      return;
    }

    v21[0] = v18;
    v21[1] = v19;
    v22 = v20;
    type metadata accessor for KTraceRecordError(0);
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError, &unk_22EE43AF0);
    swift_allocError();
    v11 = v10;
    v12 = sub_22EE10C98();
    if (v13)
    {
      v14 = v12;
      v15 = v13;

      sub_22EE31668(v21);
      *v11 = 0xD000000000000013;
      v11[1] = 0x800000022EE4B640;
      v11[2] = v14;
      v11[3] = v15;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    v16 = v8;
    swift_beginAccess();
    v17 = v6 + *(v5 + 120);
    *v17 = v16;
    *(v17 + 8) = 0;
  }
}