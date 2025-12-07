uint64_t sub_227A45540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_227A45588(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for InGameBannerData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InGameBannerData.BannerType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InGameBannerData.BannerType.YouBeatFriendScoreCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_227A45868(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_227A45928()
{
  result = qword_27D7DE110;
  if (!qword_27D7DE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE110);
  }

  return result;
}

unint64_t sub_227A45980()
{
  result = qword_27D7DE118;
  if (!qword_27D7DE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE118);
  }

  return result;
}

unint64_t sub_227A459D8()
{
  result = qword_27D7DE120;
  if (!qword_27D7DE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE120);
  }

  return result;
}

unint64_t sub_227A45A30()
{
  result = qword_27D7DE128;
  if (!qword_27D7DE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE128);
  }

  return result;
}

unint64_t sub_227A45A88()
{
  result = qword_27D7DE130;
  if (!qword_27D7DE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE130);
  }

  return result;
}

unint64_t sub_227A45AE0()
{
  result = qword_27D7DE138;
  if (!qword_27D7DE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE138);
  }

  return result;
}

unint64_t sub_227A45B38()
{
  result = qword_27D7DE140;
  if (!qword_27D7DE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE140);
  }

  return result;
}

unint64_t sub_227A45B90()
{
  result = qword_27D7DE148;
  if (!qword_27D7DE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE148);
  }

  return result;
}

unint64_t sub_227A45BE8()
{
  result = qword_27D7DE150;
  if (!qword_27D7DE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE150);
  }

  return result;
}

unint64_t sub_227A45C40()
{
  result = qword_27D7DE158;
  if (!qword_27D7DE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE158);
  }

  return result;
}

unint64_t sub_227A45C98()
{
  result = qword_27D7DE160;
  if (!qword_27D7DE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE160);
  }

  return result;
}

unint64_t sub_227A45CF0()
{
  result = qword_27D7DE168;
  if (!qword_27D7DE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE168);
  }

  return result;
}

unint64_t sub_227A45D48()
{
  result = qword_27D7DE170;
  if (!qword_27D7DE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE170);
  }

  return result;
}

unint64_t sub_227A45DA0()
{
  result = qword_27D7DE178;
  if (!qword_27D7DE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE178);
  }

  return result;
}

unint64_t sub_227A45DF8()
{
  result = qword_27D7DE180;
  if (!qword_27D7DE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE180);
  }

  return result;
}

unint64_t sub_227A45E50()
{
  result = qword_27D7DE188;
  if (!qword_27D7DE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE188);
  }

  return result;
}

unint64_t sub_227A45EA8()
{
  result = qword_27D7DE190;
  if (!qword_27D7DE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE190);
  }

  return result;
}

unint64_t sub_227A45F00()
{
  result = qword_27D7DE198;
  if (!qword_27D7DE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE198);
  }

  return result;
}

unint64_t sub_227A45F58()
{
  result = qword_27D7DE1A0;
  if (!qword_27D7DE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE1A0);
  }

  return result;
}

unint64_t sub_227A45FB0()
{
  result = qword_27D7DE1A8;
  if (!qword_27D7DE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE1A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return swift_unknownObjectRelease();
}

__n128 OUTLINED_FUNCTION_17_4@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a1[1].n128_u64[0];
  v7 = a1[1].n128_u8[8];
  result = *a1;
  *a6 = *a1;
  a6[1].n128_u64[0] = v6;
  a6[1].n128_u8[8] = v7;
  a6[2].n128_u64[0] = a2;
  a6[2].n128_u64[1] = a3;
  a6[3].n128_u64[0] = a4;
  a6[3].n128_u64[1] = a5;
  return result;
}

void sub_227A46520(os_log_type_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, const char *a6, uint64_t a7)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  v12 = sub_227A7227C();
  __swift_project_value_buffer(v12, a5);

  oslog = sub_227A7226C();

  if (os_log_type_enabled(oslog, a1))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_227A46730(a2, a3, &v16);
    _os_log_impl(&dword_227904000, oslog, a1, a6, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x22AAA1930](v14, -1, -1);
    MEMORY[0x22AAA1930](v13, -1, -1);
  }
}

uint64_t sub_227A46660(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_227A466D4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_227A46730(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_227A46730(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_227A467F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2279F4900(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_227A467F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_227A468F4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_227A72B6C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_227A468F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_227A46940(a1, a2);
  sub_227A46A58(&unk_283AF9510);
  return v3;
}

uint64_t sub_227A46940(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_227A7259C())
  {
    result = sub_227A46B3C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_227A72B0C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_227A72B6C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_227A46A58(uint64_t result)
{
  v2 = *(result + 16);
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_227A46BAC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_227A46B3C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE2B8, &unk_227AA5990);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_227A46BAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE2B8, &unk_227AA5990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_227A46CA0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for GKLog(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

BOOL sub_227A46D70(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  sub_227A72F2C();
  sub_227A7255C();
  sub_227A72F4C();
  OUTLINED_FUNCTION_55_1();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_227A72E5C();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

void sub_227A46E58(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_8:
      v8 = (*(a1 + 48) + ((v7 << 11) | (32 * __clz(__rbit64(v4)))));
      v9 = *v8;
      v10 = v8[1];
      v12 = v8[2];
      v11 = v8[3];
      objc_allocWithZone(GKTransportParticipant);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v13 = sub_227A58A48(v9, v10, v12, v11);
      if (!v13)
      {
        break;
      }

      v4 &= v4 - 1;
      sub_227A20D6C(&v16, v13);
      v14 = v16;

      v6 = v7;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        return;
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_227A46FEC(uint64_t a1)
{
  v34 = sub_227A7212C();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v27 = v1;
  v37 = MEMORY[0x277D84F90];
  sub_227A204C8(0, v5, 0);
  v6 = v37;
  result = sub_227A5B380();
  v10 = result;
  v11 = 0;
  v12 = a1 + 56;
  v32 = v3 + 32;
  v33 = v3;
  v28 = a1 + 64;
  v13 = v29;
  v30 = v5;
  v31 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_26;
      }

      v36 = v9;
      v35 = v8;
      v15 = a1;

      sub_227A7211C();
      v37 = v6;
      v16 = v13;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_227A204C8(v17 > 1, v18 + 1, 1);
        v6 = v37;
      }

      *(v6 + 16) = v18 + 1;
      result = (*(v33 + 32))(v6 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v18, v16, v34);
      if (v36)
      {
        goto LABEL_30;
      }

      v19 = 1 << *(v15 + 32);
      if (v10 >= v19)
      {
        goto LABEL_27;
      }

      v13 = v16;
      a1 = v15;
      v12 = v31;
      v20 = *(v31 + 8 * v14);
      if ((v20 & (1 << v10)) == 0)
      {
        goto LABEL_28;
      }

      if (*(a1 + 36) != v35)
      {
        goto LABEL_29;
      }

      v21 = v20 & (-2 << (v10 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v14 << 6;
        v23 = v14 + 1;
        v24 = (v28 + 8 * v14);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_227A24020(v10, v35, 0);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = sub_227A24020(v10, v35, 0);
LABEL_19:
        v13 = v29;
      }

      if (++v11 == v30)
      {
        return v6;
      }

      v9 = 0;
      v8 = *(a1 + 36);
      v10 = v19;
      if (v19 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_227A47304()
{
  OUTLINED_FUNCTION_41_0();
  v49 = v1;
  v3 = v2;
  v48 = v4(0);
  OUTLINED_FUNCTION_92();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v47 = &v39 - v8;
  v9 = *(v3 + 16);
  if (v9)
  {
    v39 = v0;
    v53 = MEMORY[0x277D84F90];
    sub_227A20388(0, v9, 0);
    v12 = sub_227A5B380();
    v13 = v53;
    v14 = 0;
    v15 = v3 + 56;
    v44 = v6 + 8;
    v45 = v6 + 16;
    v40 = v3 + 64;
    v41 = v9;
    v42 = v6;
    v43 = v3;
    v46 = v3 + 56;
    if ((v12 & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(v3 + 32))
      {
        v16 = v12 >> 6;
        if ((*(v15 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v3 + 36) != v10)
        {
          goto LABEL_25;
        }

        v52 = v11;
        v50 = v14;
        v51 = v10;
        v17 = v13;
        v18 = (*(v6 + 16))(v47, *(v3 + 48) + *(v6 + 72) * v12, v48);
        v19 = v49(v18);
        v21 = v20;
        v22 = OUTLINED_FUNCTION_124_0();
        v23(v22);
        v13 = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_227A20388(v24 > 1, v25 + 1, 1);
          v13 = v17;
        }

        *(v13 + 16) = v25 + 1;
        v26 = v13 + 16 * v25;
        *(v26 + 32) = v19;
        *(v26 + 40) = v21;
        v15 = v46;
        if (v52)
        {
          goto LABEL_29;
        }

        v6 = v42;
        v3 = v43;
        v27 = 1 << *(v43 + 32);
        if (v12 >= v27)
        {
          goto LABEL_26;
        }

        v28 = *(v46 + 8 * v16);
        if ((v28 & (1 << v12)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v43 + 36) != v51)
        {
          goto LABEL_28;
        }

        v29 = v28 & (-2 << (v12 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v12 & 0x7FFFFFFFFFFFFFC0;
          v30 = v41;
        }

        else
        {
          v31 = v16 << 6;
          v32 = v16 + 1;
          v30 = v41;
          v33 = (v40 + 8 * v16);
          while (v32 < (v27 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              v36 = OUTLINED_FUNCTION_112_1();
              sub_227A24020(v36, v37, 0);
              v13 = v27;
              v27 = __clz(__rbit64(v34)) + v31;
              goto LABEL_19;
            }
          }

          v38 = v13;
          sub_227A24020(v12, v51, 0);
          v13 = v38;
        }

LABEL_19:
        v14 = v50 + 1;
        if (v50 + 1 == v30)
        {
          goto LABEL_22;
        }

        v11 = 0;
        v10 = *(v3 + 36);
        v12 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:
    OUTLINED_FUNCTION_40_0();
  }
}

void sub_227A47618(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_227A72A3C();
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    sub_227A7285C();
    v3 = v38;
    v35 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v35 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a1 + 56);

    v6 = v10;
    v5 = 0;
  }

  v33 = MEMORY[0x277D84F90];
  v34 = v3;
LABEL_8:
  v11 = v5;
  v12 = v6;
LABEL_9:
  while (v3 < 0)
  {
    if (!sub_227A72A7C() || (sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78), swift_dynamicCast(), v15 = v37, v5 = v11, v36 = v12, !v37))
    {
LABEL_35:
      sub_2279F34F8(v34);

      return;
    }

LABEL_18:
    v16 = sub_227A5B280(v15, &selRef_playerID);
    if (!v17)
    {
      goto LABEL_37;
    }

    v18 = v17;
    if (*(a2 + 16))
    {
      v19 = v16;
      sub_227A72F2C();
      sub_227A7255C();
      v20 = sub_227A72F4C();
      v21 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v22 = v20 & v21;
        if (((*(a2 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          break;
        }

        v23 = (*(a2 + 48) + 16 * v22);
        if (*v23 != v19 || v18 != v23[1])
        {
          v25 = sub_227A72E5C();
          v20 = v22 + 1;
          if ((v25 & 1) == 0)
          {
            continue;
          }
        }

        v26 = sub_227A5B280(v15, &selRef_pseudonym);
        v28 = v27;

        v11 = v5;
        v12 = v36;
        v3 = v34;
        if (!v28)
        {
          goto LABEL_9;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2279FD74C();
          v33 = v31;
        }

        v29 = *(v33 + 16);
        v6 = v36;
        if (v29 >= *(v33 + 24) >> 1)
        {
          sub_2279FD74C();
          v6 = v36;
          v33 = v32;
        }

        *(v33 + 16) = v29 + 1;
        v30 = v33 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v28;
        goto LABEL_8;
      }
    }

    v11 = v5;
    v12 = v36;
    v3 = v34;
  }

  v13 = v11;
  v14 = v12;
  v5 = v11;
  if (v12)
  {
LABEL_14:
    v36 = (v14 - 1) & v14;
    v15 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_35;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_35;
    }

    v14 = *(v35 + 8 * v5);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_227A4799C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_227A72A3C();
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    sub_227A7285C();
    v1 = v24;
    v2 = v25;
    v4 = v26;
    v3 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  v22 = MEMORY[0x277D84F90];
  v23 = v1;
LABEL_8:
  v9 = v3;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_227A72A7C())
      {
        goto LABEL_24;
      }

      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      swift_dynamicCast();
      v13 = v29;
      v3 = v9;
      v5 = v10;
      if (!v29)
      {
LABEL_25:
        v1 = v23;
LABEL_24:
        sub_2279F34F8(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v3 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_25;
    }

LABEL_18:
    v14 = sub_227A5B280(v13, &selRef_pseudonym);
    v16 = v15;

    v9 = v3;
    v10 = v5;
    v1 = v23;
    if (v16)
    {
      v17 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2279FD74C();
        v17 = v20;
      }

      v18 = *(v17 + 16);
      if (v18 >= *(v17 + 24) >> 1)
      {
        sub_2279FD74C();
        v17 = v21;
      }

      *(v17 + 16) = v18 + 1;
      v22 = v17;
      v19 = v17 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v1 = v23;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v3);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_227A47C2C()
{
  OUTLINED_FUNCTION_31();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_227A47CB8;

  return sub_227A4C968();
}

uint64_t sub_227A47CB8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v1 = *v0;
  OUTLINED_FUNCTION_32();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227A480F4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_32();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_32();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227A481F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_90_1();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_60();
  a16 = v18;

  v21 = sub_227A7226C();
  sub_227A7289C();

  v22 = OUTLINED_FUNCTION_143();
  v23 = *(v18 + 32);
  if (v22)
  {
    v24 = *(v18 + 16);
    OUTLINED_FUNCTION_48_2();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_50_2();
    a9 = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_227A46730(*(v24 + 24), *(v24 + 32), &a9);
    *(v25 + 12) = 2080;
    v26 = *(v23 + 16);
    v27 = *(v23 + 24);

    v28 = sub_227A46730(v26, v27, &a9);

    *(v25 + 14) = v28;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v29, v30, v31, v32, v25, 0x16u);
    OUTLINED_FUNCTION_72_2();
    swift_arrayDestroy();
    v33 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x22AAA1930](v33);
    v34 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x22AAA1930](v34);
  }

  else
  {
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_79_1();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_227A48360()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_227A483BC(uint64_t a1)
{
  if (!a1)
  {
    return 7105633;
  }

  v2 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](0x73726579616C7020, 0xE800000000000000);
  return v2;
}

void sub_227A4843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_41_0();
  a19 = v22;
  a20 = v23;
  v122 = v24;
  v25 = v20;
  v115 = v26;
  v116 = v27;
  v120 = v28;
  v30 = v29;
  sub_227A71C6C();
  OUTLINED_FUNCTION_92();
  v121 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_2();
  sub_227A7210C();
  OUTLINED_FUNCTION_92();
  v118 = v33;
  v119 = v32;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_2();
  v117 = (v35 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE330, &qword_227AA5C88);
  OUTLINED_FUNCTION_92();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_0_22();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_97_0();
  v44 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionState;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  (*(v38 + 16))(v21, &v25[v44], v36);
  (*(v38 + 104))(v42, *MEMORY[0x277CCB200], v36);
  type metadata accessor for FastSyncActivity(0);
  sub_227A589A8(&qword_27D7DC990, type metadata accessor for FastSyncActivity, &protocol conformance descriptor for FastSyncActivity);
  LOBYTE(v44) = sub_227A7200C();
  v45 = *(v38 + 8);
  v45(v42, v36);
  v45(v21, v36);
  if (v44)
  {
    if (!*(v25 + 15))
    {
      v123[0] = 0;
      v123[1] = 0xE000000000000000;
      sub_227A72B1C();
      MEMORY[0x22AA9FE40](0xD000000000000017, 0x8000000227A9F890);
      v71 = v122[4];
      __swift_project_boxed_opaque_existential_1(v122, v122[3]);
      v72 = OUTLINED_FUNCTION_13();
      v73(v72, v71);
      OUTLINED_FUNCTION_3_12();
      sub_227A589A8(v74, v75, MEMORY[0x277CC9628]);
      v76 = sub_227A72E1C();
      MEMORY[0x22AA9FE40](v76);

      v77 = OUTLINED_FUNCTION_100_1();
      v78(v77, v121);
      MEMORY[0x22AA9FE40](0xD000000000000022, 0x8000000227A9F8B0);
      OUTLINED_FUNCTION_125_0();
      if (v80)
      {
        v81 = v79 + 1;
      }

      else
      {
        v81 = v79;
      }

      sub_227A1387C();
      OUTLINED_FUNCTION_95_0();
      swift_allocError();
      *v82 = 0;
      *(v82 + 8) = 0xE000000000000000;
      *(v82 + 16) = v120;
      *(v82 + 24) = v81;
      *(v82 + 32) = 99;
      swift_willThrow();
      goto LABEL_44;
    }

    if (!v30)
    {
      (*(v118 + 104))(v117, *MEMORY[0x277CCB260], v119);

      v48 = v120;
LABEL_30:
      if (qword_27D7DC4E0 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      v94 = sub_227A7227C();
      __swift_project_value_buffer(v94, qword_27D7DE210);
      sub_2279F4B58(v122, v123);

      v95 = sub_227A7226C();
      v96 = sub_227A728AC();

      if (os_log_type_enabled(v95, v96))
      {
        OUTLINED_FUNCTION_55_2();
        v97 = swift_slowAlloc();
        a10 = swift_slowAlloc();
        *v97 = 136315650;
        *(v97 + 4) = sub_227A46730(*(v25 + 3), *(v25 + 4), &a10);
        *(v97 + 12) = 2080;
        v98 = 0xE700000000000000;
        v99 = 0x6E776F6E6B6E75;
        if (v48 == 1)
        {
          v99 = 0x6261696C65726E75;
          v98 = 0xEA0000000000656CLL;
        }

        if (v48)
        {
          v100 = v99;
        }

        else
        {
          v100 = 0x656C6261696C6572;
        }

        if (v48)
        {
          v101 = v98;
        }

        else
        {
          v101 = 0xE800000000000000;
        }

        v102 = sub_227A46730(v100, v101, &a10);

        *(v97 + 14) = v102;
        *(v97 + 22) = 2080;
        v103 = v125;
        __swift_project_boxed_opaque_existential_1(v123, v124);
        v104 = OUTLINED_FUNCTION_82_1();
        v105(v104, v103);
        OUTLINED_FUNCTION_3_12();
        sub_227A589A8(v106, v107, MEMORY[0x277CC9628]);
        v108 = sub_227A72E1C();
        v109 = OUTLINED_FUNCTION_100_1();
        v110(v109, v121);
        __swift_destroy_boxed_opaque_existential_0Tm(v123);
        v111 = OUTLINED_FUNCTION_124_0();
        sub_227A46730(v111, v112, v113);
        OUTLINED_FUNCTION_82_1();

        *(v97 + 24) = v108;
        _os_log_impl(&dword_227904000, v95, v96, "%s-> %s message[id:%s] queued.", v97, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x22AAA1930]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v123);
      }

      sub_227A135F8(v122, v117, v48, v115, v116);

      (*(v118 + 8))(v117, v119);
      goto LABEL_44;
    }

    v46 = sub_227A4E32C(v30);
    v47 = v46[2];
    if (v47)
    {
      v48 = v120;
      if (v47 != *(v30 + 16))
      {
        if (qword_27D7DC4E0 != -1)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        v49 = sub_227A7227C();
        __swift_project_value_buffer(v49, qword_27D7DE210);
        OUTLINED_FUNCTION_112_1();

        v50 = sub_227A7226C();
        v51 = sub_227A728AC();

        if (os_log_type_enabled(v50, v51))
        {
          OUTLINED_FUNCTION_55_2();
          v114 = v51;
          v52 = swift_slowAlloc();
          OUTLINED_FUNCTION_50_2();
          v123[0] = swift_slowAlloc();
          *v52 = 136315650;
          *(v52 + 4) = sub_227A46730(*(v25 + 3), *(v25 + 4), v123);
          *(v52 + 12) = 2048;
          *(v52 + 14) = v46[2];

          *(v52 + 22) = 2080;
          v53 = sub_227A7283C();
          v55 = sub_227A46730(v53, v54, v123);

          *(v52 + 24) = v55;
          _os_log_impl(&dword_227904000, v50, v114, "%s-> Sending data to only %ld active participants found for playerIDs: %s", v52, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_2();
          MEMORY[0x22AAA1930]();
          OUTLINED_FUNCTION_13_2();
          MEMORY[0x22AAA1930]();
        }

        else
        {
        }
      }

      *v117 = v46;
      (*(v118 + 104))();
      goto LABEL_30;
    }

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v83 = sub_227A7227C();
    __swift_project_value_buffer(v83, qword_27D7DE210);
    OUTLINED_FUNCTION_82_1();

    v84 = sub_227A7226C();
    v85 = sub_227A728AC();

    if (os_log_type_enabled(v84, v85))
    {
      OUTLINED_FUNCTION_48_2();
      v86 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_2();
      v123[0] = swift_slowAlloc();
      *v86 = 136315394;
      *(v86 + 4) = sub_227A46730(*(v25 + 3), *(v25 + 4), v123);
      *(v86 + 12) = 2080;
      v87 = sub_227A7283C();
      v89 = sub_227A46730(v87, v88, v123);

      *(v86 + 14) = v89;
      _os_log_impl(&dword_227904000, v84, v85, "%s-> Skipping send data because no active participant found for playerIDs: %s", v86, 0x16u);
      OUTLINED_FUNCTION_72_2();
      swift_arrayDestroy();
      v90 = OUTLINED_FUNCTION_25_3();
      MEMORY[0x22AAA1930](v90);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    OUTLINED_FUNCTION_125_0();
    if (v80)
    {
      v92 = v91 + 1;
    }

    else
    {
      v92 = v91;
    }

    sub_227A1387C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    *v93 = 0xD00000000000001CLL;
    *(v93 + 8) = 0x8000000227A9F8E0;
    *(v93 + 16) = v120;
    *(v93 + 24) = v92;
    *(v93 + 32) = 100;
    swift_willThrow();
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v56 = sub_227A7227C();
    __swift_project_value_buffer(v56, qword_27D7DE210);
    sub_2279F4B58(v122, v123);

    v57 = sub_227A7226C();
    v58 = sub_227A728AC();

    if (os_log_type_enabled(v57, v58))
    {
      OUTLINED_FUNCTION_48_2();
      v59 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_2();
      a10 = swift_slowAlloc();
      *v59 = 136315394;
      *(v59 + 4) = sub_227A46730(*(v25 + 3), *(v25 + 4), &a10);
      *(v59 + 12) = 2080;
      v60 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      v61 = OUTLINED_FUNCTION_82_1();
      v62(v61, v60);
      OUTLINED_FUNCTION_3_12();
      sub_227A589A8(v63, v64, MEMORY[0x277CC9628]);
      v65 = sub_227A72E1C();
      v66 = OUTLINED_FUNCTION_100_1();
      v67(v66, v121);
      __swift_destroy_boxed_opaque_existential_0Tm(v123);
      v68 = OUTLINED_FUNCTION_124_0();
      sub_227A46730(v68, v69, v70);
      OUTLINED_FUNCTION_82_1();

      *(v59 + 14) = v65;
      _os_log_impl(&dword_227904000, v57, v58, "%s-> Session is not in .joined state. Skip sending message[id:%s].", v59, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v123);
    }
  }

LABEL_44:
  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A4901C()
{
  *(v1 + 96) = v0;
  v2 = OUTLINED_FUNCTION_47();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227A49044()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 104) = sub_227A4B9D0();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_227A490DC;

  return sub_227A2FA4C();
}

uint64_t sub_227A490DC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  *v4 = *v1;
  v3[15] = v5;
  v3[16] = v6;
  v3[17] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227A491E8()
{
  v69 = v0;
  v1 = sub_227A4C78C();
  if (v2)
  {
    if (*(v0 + 120) == v1 && v2 == *(v0 + 128))
    {
    }

    else
    {
      v4 = sub_227A72E5C();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v12 = [objc_opt_self() local];
    v13 = [v12 internal];

    v14 = [v13 playerID];
    sub_227A724EC();

    goto LABEL_11;
  }

LABEL_7:
  v5 = *(v0 + 96);
  v6 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v7 = *(v5 + v6);
  if ((v7 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_227A72A3C();
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    OUTLINED_FUNCTION_76();
    sub_227A7285C();
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 48);
  }

  else
  {
    OUTLINED_FUNCTION_55_1();
    v8 = v7 + 56;
    v10 = ~v17;
    OUTLINED_FUNCTION_68_2();
    v11 = v18 & v19;
    swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  v66 = *(v0 + 128);
  v67 = v0;
  if (v7 < 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  v20 = v9;
  v21 = v9;
  if (!v11)
  {
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= ((v10 + 64) >> 6))
      {
        goto LABEL_32;
      }

      ++v20;
      if (*(v8 + 8 * v21))
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_47:
    OUTLINED_FUNCTION_0_15();
    swift_once();
LABEL_33:
    v32 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v32, qword_27D7DE210);

    v33 = sub_227A7226C();
    sub_227A728BC();

    v34 = OUTLINED_FUNCTION_94_1();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 128);
    if (v36)
    {
      v38 = *(v0 + 120);
      v39 = *(v0 + 96);
      OUTLINED_FUNCTION_48_2();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_2();
      v68[0] = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_227A46730(*(v39 + 24), *(v39 + 32), v68);
      *(v40 + 12) = 2080;
      v41 = sub_227A46730(v38, v37, v68);

      *(v40 + 14) = v41;
      OUTLINED_FUNCTION_10_4();
      _os_log_impl(v42, v43, v44, v45, v46, 0x16u);
      swift_arrayDestroy();
      v47 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x22AAA1930](v47);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    else
    {
    }

    sub_227A1387C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    OUTLINED_FUNCTION_108_1(v48, 128);
    swift_willThrow();
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_68_1();

    __asm { BRAA            X1, X16 }
  }

LABEL_20:
  OUTLINED_FUNCTION_43_1();
  v24 = v23 & v22;
  v26 = *(*(v7 + 48) + ((v21 << 9) | (8 * v25)));
  if (!v26)
  {
LABEL_32:
    sub_2279F34F8(v7);

    v0 = v67;
    if (qword_27D7DC4E0 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

  while (1)
  {
    v0 = v7;
    v28 = sub_227A5B280(v26, &selRef_pseudonym);
    if (v29)
    {
      break;
    }

LABEL_30:

    v9 = v21;
    v11 = v24;
    v7 = v0;
    if ((v0 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    v27 = sub_227A72A7C();
    if (v27)
    {
      v67[11] = v27;
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      swift_dynamicCast();
      v26 = v67[10];
      v21 = v9;
      v24 = v11;
      if (v26)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if (v28 != v67[15] || v29 != v66)
  {
    v31 = sub_227A72E5C();

    if (v31)
    {
      goto LABEL_40;
    }

    goto LABEL_30;
  }

LABEL_40:
  v51 = OUTLINED_FUNCTION_111_1();
  sub_2279F34F8(v51);

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v52 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v52, qword_27D7DE210);

  v53 = v26;
  v54 = sub_227A7226C();
  v55 = sub_227A7289C();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = v67[12];
    OUTLINED_FUNCTION_48_2();
    v57 = swift_slowAlloc();
    v58 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_55_2();
    v59 = swift_slowAlloc();
    v68[0] = v59;
    *v57 = 136315394;
    *(v57 + 4) = sub_227A46730(*(v56 + 24), *(v56 + 32), v68);
    *(v57 + 12) = 2112;
    *(v57 + 14) = v53;
    *v58 = v26;
    v60 = v53;
    OUTLINED_FUNCTION_139_0(&dword_227904000, v61, v62, "%s-> Best host is: %@");
    sub_2279F3774(v58, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    v63 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x22AAA1930](v63);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  result = sub_227A5B280(v53, &selRef_playerID);
  if (v65)
  {

LABEL_11:
    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_68_1();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_227A49864()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

id sub_227A498C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((sub_227A4B830() & 1) == 0)
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v18 = sub_227A7227C();
    __swift_project_value_buffer(v18, qword_27D7DE210);
    OUTLINED_FUNCTION_13();

    v19 = sub_227A7226C();
    sub_227A7289C();

    v20 = OUTLINED_FUNCTION_126_0();
    v56 = a1;
    v57 = a2;
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_55_2();
      v22 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v22 = 136315650;
      v23 = sub_227A46730(v4[3], v4[4], v60);
      OUTLINED_FUNCTION_98_1(v23);
      OUTLINED_FUNCTION_9_2();
      swift_beginAccess();
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      sub_227A23DEC();

      v24 = sub_227A7283C();
      v26 = v25;

      v27 = sub_227A46730(v24, v26, v60);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2080;
      OUTLINED_FUNCTION_104_1();
      v28 = sub_227A7283C();
      v30 = sub_227A46730(v28, v29, v60);

      *(v22 + 24) = v30;
      OUTLINED_FUNCTION_138_0(&dword_227904000, v31, v32, "%s-> Found diff in participants. transportParticipants:\n%s,\nremoteParticipants:\n%s.");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_227A72A3C();
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      sub_227A23DEC();
      OUTLINED_FUNCTION_76();
      sub_227A7285C();
      a3 = v60[0];
      v33 = v60[1];
      v35 = v60[2];
      v34 = v60[3];
      v36 = v60[4];
    }

    else
    {
      OUTLINED_FUNCTION_55_1();
      v33 = a3 + 56;
      v35 = ~v37;
      OUTLINED_FUNCTION_68_2();
      v36 = v38 & v39;

      v34 = 0;
    }

    if (a3 < 0)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v40 = v34;
      v41 = v34;
      if (!v36)
      {
        break;
      }

LABEL_18:
      OUTLINED_FUNCTION_43_1();
      v44 = v43 & v42;
      v46 = *(*(a3 + 48) + ((v41 << 9) | (8 * v45)));
      if (!v46)
      {
LABEL_24:
        v49 = OUTLINED_FUNCTION_109();
        sub_2279F34F8(v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC658, &qword_227AA4120);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_227AA00F0;
        *(inited + 32) = v56;
        *(inited + 40) = v57;

        v59 = sub_227A17C58(inited);
        OUTLINED_FUNCTION_9_2();
        swift_beginAccess();

        sub_227A4799C(v51);
        v53 = v52;

        v54 = sub_227A17C58(v53);
        sub_227A4DAE0(v54);
        v17 = v59;
        if (v4[17])
        {
          sub_227A4DBE4(v59);
        }

        return v17;
      }

      while (1)
      {
        swift_beginAccess();
        v48 = v46;
        sub_227A20D6C(&v59, v48);
        swift_endAccess();

        v34 = v41;
        v36 = v44;
        if ((a3 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_20:
        v47 = sub_227A72A7C();
        if (v47)
        {
          v59 = v47;
          sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
          swift_dynamicCast();
          v46 = v58;
          v41 = v34;
          v44 = v36;
          if (v58)
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= ((v35 + 64) >> 6))
      {
        goto LABEL_24;
      }

      ++v40;
      if (*(v33 + 8 * v41))
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  if (qword_27D7DC4E0 != -1)
  {
LABEL_28:
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v8 = sub_227A7227C();
  __swift_project_value_buffer(v8, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v9 = sub_227A7226C();
  sub_227A7289C();

  if (OUTLINED_FUNCTION_143())
  {
    OUTLINED_FUNCTION_29_2();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_55_2();
    v11 = swift_slowAlloc();
    v60[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_227A46730(v4[3], v4[4], v60);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v12, v13, v14, v15, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    v16 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x22AAA1930](v16);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  return 0;
}

uint64_t sub_227A49E0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0x5B656D6147;
  }

  else
  {
    v3 = 0x5B7962626F4CLL;
  }

  v5 = v3;
  MEMORY[0x22AA9FE40](a1, a2);
  MEMORY[0x22AA9FE40](93, 0xE100000000000000);
  return v5;
}

uint64_t sub_227A49E78()
{
  v1 = v0;
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v2 = sub_227A7227C();
  __swift_project_value_buffer(v2, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v3 = sub_227A7226C();
  sub_227A7289C();

  if (OUTLINED_FUNCTION_143())
  {
    OUTLINED_FUNCTION_29_2();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_55_2();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_227A46730(*(v1 + 24), *(v1 + 32), &v12);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v6, v7, v8, v9, v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    v10 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x22AAA1930](v10);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  return swift_unknownObjectWeakAssign();
}

void sub_227A49FA0()
{
  OUTLINED_FUNCTION_96_1();
  v85 = v1;
  v86 = v0;
  v84 = v2;
  v4 = v3;
  v6 = v5;
  v82 = v7;
  v9 = v8;
  v11 = v10;
  v12 = sub_227A7232C();
  OUTLINED_FUNCTION_92();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_2();
  v18 = v17 - v16;
  v19 = sub_227A7237C();
  OUTLINED_FUNCTION_92();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_2();
  v83 = v24 - v23;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v80 = v4;
    v81 = Strong;
    v77 = v21;
    v78 = v19;
    v79 = v12;
    v26 = MEMORY[0x277D84F98];
    v27 = MEMORY[0x277D837D0];
    if (v9)
    {
      v28 = sub_227A724EC();
      v30 = v29;
      v31 = v27;
      v92 = v27;
      *&v90 = v11;
      *(&v90 + 1) = v9;
      sub_2279FF11C(&v90, v89);

      swift_isUniquelyReferenced_nonNull_native();
      v32 = OUTLINED_FUNCTION_21_2();
      sub_227A623E4(v32, v28, v30);

      v26 = v88;
      if (!v6)
      {
LABEL_5:
        v37 = v18;
        if (v80)
        {
          v38 = sub_227A724EC();
          v40 = v39;
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE350, &unk_227AA5CD0);
          OUTLINED_FUNCTION_51_3(v41);
          swift_isUniquelyReferenced_nonNull_native();
          v42 = OUTLINED_FUNCTION_21_2();
          sub_227A623E4(v42, v38, v40);

          v26 = v88;
        }

        if (v84)
        {
          v43 = sub_227A724EC();
          v45 = v44;
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE350, &unk_227AA5CD0);
          OUTLINED_FUNCTION_51_3(v46);
          swift_isUniquelyReferenced_nonNull_native();
          v47 = OUTLINED_FUNCTION_21_2();
          sub_227A623E4(v47, v43, v45);

          v26 = v88;
        }

        if (v85)
        {
          v48 = sub_227A724EC();
          v50 = v49;
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE350, &unk_227AA5CD0);
          OUTLINED_FUNCTION_51_3(v51);
          swift_isUniquelyReferenced_nonNull_native();
          v52 = OUTLINED_FUNCTION_21_2();
          sub_227A623E4(v52, v48, v50);

          v26 = v88;
        }

        if (v86)
        {
          v53 = sub_227A724EC();
          v55 = v54;
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE350, &unk_227AA5CD0);
          OUTLINED_FUNCTION_51_3(v56);
          swift_isUniquelyReferenced_nonNull_native();
          v57 = OUTLINED_FUNCTION_21_2();
          sub_227A623E4(v57, v53, v55);

          v26 = v88;
        }

        if (*(v26 + 16))
        {
          if (qword_27D7DC4E0 != -1)
          {
            OUTLINED_FUNCTION_0_15();
            swift_once();
          }

          v58 = sub_227A7227C();
          OUTLINED_FUNCTION_104(v58, qword_27D7DE210);
          v59 = sub_227A7226C();
          v60 = sub_227A7289C();
          if (os_log_type_enabled(v59, v60))
          {
            OUTLINED_FUNCTION_29_2();
            v61 = swift_slowAlloc();
            OUTLINED_FUNCTION_55_2();
            v62 = swift_slowAlloc();
            *&v90 = v62;
            *v61 = 136315138;

            sub_227A7242C();

            v63 = OUTLINED_FUNCTION_109();
            v66 = sub_227A46730(v63, v64, v65);

            *(v61 + 4) = v66;
            _os_log_impl(&dword_227904000, v59, v60, "Updating transport context with info: %s", v61, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v62);
            OUTLINED_FUNCTION_13_2();
            MEMORY[0x22AAA1930]();
            OUTLINED_FUNCTION_13_2();
            MEMORY[0x22AAA1930]();
          }

          sub_2279FF044(0, &qword_27D7DC828, 0x277D85C78);
          v67 = sub_227A7292C();
          v68 = swift_allocObject();
          *(v68 + 16) = v81;
          *(v68 + 24) = v26;
          v93 = sub_227A60084;
          v94 = v68;
          *&v90 = MEMORY[0x277D85DD0];
          *(&v90 + 1) = 1107296256;
          v91 = sub_227A01434;
          v92 = &block_descriptor_9;
          v69 = _Block_copy(&v90);

          swift_unknownObjectRetain();

          sub_227A7235C();
          *&v90 = MEMORY[0x277D84F90];
          sub_227A589A8(&qword_27D7DC910, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          v70 = OUTLINED_FUNCTION_124_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(v70, v71);
          sub_2279F4CBC(&qword_27D7DC920, &qword_27D7DC918, &qword_227AA0EA0, MEMORY[0x277D83970]);
          sub_227A729FC();
          MEMORY[0x22AAA01F0](0, v83, v37, v69);
          _Block_release(v69);
          swift_unknownObjectRelease();

          (*(v14 + 8))(v37, v79);
          (*(v77 + 8))(v83, v78);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_91();
        return;
      }
    }

    else
    {
      v31 = MEMORY[0x277D837D0];
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v33 = sub_227A724EC();
    v35 = v34;
    v92 = v31;
    *&v90 = v82;
    *(&v90 + 1) = v6;
    sub_2279FF11C(&v90, v89);

    swift_isUniquelyReferenced_nonNull_native();
    v36 = OUTLINED_FUNCTION_21_2();
    sub_227A623E4(v36, v33, v35);

    v26 = v88;
    goto LABEL_5;
  }

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v72 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v72, qword_27D7DE210);
  v87 = sub_227A7226C();
  v73 = sub_227A728AC();
  if (os_log_type_enabled(v87, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_227904000, v87, v73, "Client delegate not found. Skip sending updates of transport context.", v74, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  OUTLINED_FUNCTION_91();
}

uint64_t sub_227A4AD64(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 16) == a1 && *(v3 + 24) == a2)
  {
    return 0;
  }

  v5 = v2;
  OUTLINED_FUNCTION_111_1();
  if (sub_227A72E5C())
  {
    return 0;
  }

  v7 = qword_27D7DC4E0;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v8 = sub_227A7227C();
  __swift_project_value_buffer(v8, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v9 = sub_227A7226C();
  sub_227A7289C();

  v10 = OUTLINED_FUNCTION_126_0();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_55_2();
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_227A46730(*(v5 + 24), *(v5 + 32), &v22);
    *(v12 + 12) = 2080;

    v13 = OUTLINED_FUNCTION_104_1();
    v16 = sub_227A46730(v13, v14, v15);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2080;
    v17 = OUTLINED_FUNCTION_111_1();
    *(v12 + 24) = sub_227A46730(v17, v18, v19);
    OUTLINED_FUNCTION_138_0(&dword_227904000, v20, v21, "%s-> Need to migrate from %s to %s. A new provider will be created.");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {
  }

  return 1;
}

BOOL sub_227A4B350()
{
  v1 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_132_0();
    sub_227A72A4C();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    v0 = *(v2 + 16);
  }

  return v0 == 0;
}

void sub_227A4B3BC()
{
  OUTLINED_FUNCTION_41_0();
  v4 = v1;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_105_0();
  v10 = type metadata accessor for JoinChannelActionMessage(v9);
  OUTLINED_FUNCTION_92();
  v70 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_84_0(v13, v14, v15, v16, v17, v18, v19, v20, v65);
  MEMORY[0x28223BE20](v21);
  v69 = &v65 - v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_97_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_114_1();
  if (v25)
  {
    v68 = v25;
    v26 = *(v1 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
    sub_227A71C5C();
    *(v2 + v10[5]) = v26 | 0x40;
    v27 = (v2 + v10[6]);
    *v27 = v0;
    v27[1] = v8;
    *(v2 + v10[7]) = v6;
    v28 = qword_27D7DC4E0;

    if (v28 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v29 = sub_227A7227C();
    __swift_project_value_buffer(v29, qword_27D7DE210);
    OUTLINED_FUNCTION_62_1();
    v30 = OUTLINED_FUNCTION_104_1();
    sub_227A60604(v30);

    v31 = sub_227A7226C();
    v32 = sub_227A7289C();

    v33 = OUTLINED_FUNCTION_94_1();
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_48_2();
      v35 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_2();
      v67 = swift_slowAlloc();
      v72[0] = v67;
      *v35 = 136315394;
      *(v35 + 4) = OUTLINED_FUNCTION_121_0();
      *(v35 + 12) = 2080;
      OUTLINED_FUNCTION_62_1();
      HIDWORD(v66) = v32;
      sub_227A60604(v3);
      sub_227A7251C();
      OUTLINED_FUNCTION_14_6();
      sub_227A605B0();
      v36 = OUTLINED_FUNCTION_92_0();
      v39 = sub_227A46730(v36, v37, v38);

      *(v35 + 14) = v39;
      OUTLINED_FUNCTION_128_0();
      _os_log_impl(v40, v41, v42, v43, v44, v45);
      OUTLINED_FUNCTION_135_0();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      v46 = OUTLINED_FUNCTION_25_3();
      MEMORY[0x22AAA1930](v46);
    }

    else
    {

      OUTLINED_FUNCTION_14_6();
      sub_227A605B0();
    }

    v73 = v10;
    v74 = sub_227A589A8(&qword_27D7DCA98, type metadata accessor for JoinChannelActionMessage, &unk_227AA197C);
    __swift_allocate_boxed_opaque_existential_1(v72);
    sub_227A60604(v2);
    v56 = v71;
    sub_227A60604(v2);
    v57 = swift_allocObject();
    *(v57 + 16) = v4;
    OUTLINED_FUNCTION_61_1();
    sub_227A6055C(v56);

    v58 = OUTLINED_FUNCTION_71_2();
    sub_227A4843C(v58, v59, v60, v61, v62, v63, v57, v64, v65, v66, v67, v68, v69, v70, v71, v72[0], v72[1], v72[2], v73, v74);
    OUTLINED_FUNCTION_14_6();
    sub_227A605B0();

    __swift_destroy_boxed_opaque_existential_0Tm(v72);
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v47 = sub_227A7227C();
    __swift_project_value_buffer(v47, qword_27D7DE210);
    OUTLINED_FUNCTION_112_1();

    v48 = sub_227A7226C();
    v49 = sub_227A728BC();

    if (os_log_type_enabled(v48, v49))
    {
      OUTLINED_FUNCTION_29_2();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_55_2();
      v51 = swift_slowAlloc();
      v72[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_134_0(&dword_227904000, v52, v53, "%s-> Cannot send join channel message because the local participant handle is nil.");
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      v54 = OUTLINED_FUNCTION_25_3();
      MEMORY[0x22AAA1930](v54);
      v55 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x22AAA1930](v55);
    }
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A4B830()
{
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();

  v0 = OUTLINED_FUNCTION_86();
  sub_227A4D358(v0, v1);
  v3 = v2;

  return v3 & 1;
}

uint64_t GKMatchSendDataMode.debugDescription.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x6261696C65726E75;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x656C6261696C6572;
  }
}

uint64_t sub_227A4B970(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_227A72E5C();
  }
}

uint64_t sub_227A4B9D0()
{
  if (v0[18])
  {
    v1 = v0[18];
  }

  else
  {
    v2 = v0;
    type metadata accessor for FastSyncLeaderElector(0);
    v3 = swift_allocObject();

    v1 = sub_227A5FEDC(v4, 1000000000000000000, 0, v3, 15.0);
    v2[18] = v1;

    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v5 = sub_227A7227C();
    __swift_project_value_buffer(v5, qword_27D7DE210);

    v6 = sub_227A7226C();
    v7 = sub_227A7289C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315394;
      v11 = v2[3];
      v10 = v2[4];
      *(v8 + 4) = sub_227A46730(v11, v10, &v13);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_227A46730(v11, v10, &v13);
      _os_log_impl(&dword_227904000, v6, v7, "%s-> Leader elector setup for: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v9, -1, -1);
      MEMORY[0x22AAA1930](v8, -1, -1);
    }
  }

  return v1;
}

uint64_t sub_227A4BBF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE508, &qword_227AA5F10);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  *(a2 + 56) = sub_227A60BCC;
  *(a2 + 64) = v10;
  return sub_22790D4C0(v11, v12);
}

uint64_t sub_227A4BD38(uint64_t a1)
{
  v2 = type metadata accessor for ChannelMigrationActionMessage(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE510, &qword_227AA5F18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_227A60604(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE508, &qword_227AA5F10);
  sub_227A7277C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_227A4BE90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4A0, &qword_227AA5E68);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  *(a2 + 72) = sub_227A6087C;
  *(a2 + 80) = v10;
  return sub_22790D4C0(v11, v12);
}

uint64_t sub_227A4BFD0(uint64_t a1)
{
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  MEMORY[0x28223BE20](ScoresActionMessage - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4A8, &qword_227AA5E70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_227A60604(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4A0, &qword_227AA5E68);
  sub_227A7277C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_227A4C164(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, __n128), uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_92();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  a3(0, v9);
  (*(v7 + 104))(v11, *MEMORY[0x277D85778], v5);
  return sub_227A727AC();
}

uint64_t sub_227A4C25C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE340, &qword_227AA5C98);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  *(a2 + 88) = sub_227A5B2E4;
  *(a2 + 96) = v10;
  return sub_22790D4C0(v11, v12);
}

uint64_t sub_227A4C39C(uint64_t a1)
{
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  MEMORY[0x28223BE20](ScoresResponseActionMessage - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE348, &qword_227AA5CA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_227A60604(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE340, &qword_227AA5C98);
  sub_227A7277C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_227A4C4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4F0, &qword_227AA5EF8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  *(a2 + 104) = sub_227A60B20;
  *(a2 + 112) = v10;
  return sub_22790D4C0(v11, v12);
}

uint64_t sub_227A4C634(uint64_t a1)
{
  v2 = type metadata accessor for JoinChannelActionMessage(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4F8, &qword_227AA5F00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  sub_227A60604(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4F0, &qword_227AA5EF8);
  sub_227A7277C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_227A4C78C()
{
  if (*(v0 + 136))
  {
  }

  return OUTLINED_FUNCTION_86();
}

void sub_227A4C7E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_96_1();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x277D84FA0];
  *(v2 + 16) = MEMORY[0x277D84FA0];
  swift_unknownObjectWeakInit();
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  v12 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionState;
  v13 = *MEMORY[0x277CCB208];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE330, &qword_227AA5C88);
  OUTLINED_FUNCTION_51();
  (*(v14 + 104))(v2 + v12, v13);
  if (sub_227A06998())
  {
    v15 = sub_227A59430(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = v11;
  }

  *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_providerSubscriptions) = v15;
  *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionObserverTask) = 0;
  *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_tasks) = v11;
  if (sub_227A06998())
  {
    v11 = sub_227A5926C(MEMORY[0x277D84F90]);
  }

  *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants) = v11;
  v16 = v6 & 1;
  *(v2 + 24) = sub_227A49E0C(v10, v8, v16);
  *(v2 + 32) = v17;
  v18 = v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type;
  *v18 = v10;
  *(v18 + 8) = v8;
  *(v18 + 16) = v16;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v2 + 40) = v4;
  OUTLINED_FUNCTION_91();
}

uint64_t sub_227A4CC14()
{
  OUTLINED_FUNCTION_31();
  sub_227A2F02C();

  v0 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_227A4CC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_131_0();
  v16 = *(v12 + 64);
  v17 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_providerSubscriptions;
  swift_beginAccess();
  *(v16 + v17) = MEMORY[0x277D84FA0];

  if (*(v16 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionObserverTask))
  {

    sub_227A727DC();
  }

  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  result = OUTLINED_FUNCTION_54_2();
  v19 = 0;
  if (v15)
  {
    while (1)
    {
LABEL_7:
      OUTLINED_FUNCTION_83_0();
      sub_227A727DC();
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v14)
    {
      break;
    }

    ++v19;
    if (*(v13 + 8 * v20))
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_69_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

char *sub_227A4CDE0()
{

  swift_unknownObjectRelease();
  sub_2279FF2CC((v0 + 6));
  sub_22790D4C0(v0[7], v0[8]);
  sub_22790D4C0(v0[9], v0[10]);
  sub_22790D4C0(v0[11], v0[12]);
  sub_22790D4C0(v0[13], v0[14]);

  v1 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE330, &qword_227AA5C88);
  OUTLINED_FUNCTION_51();
  (*(v2 + 8))(v0 + v1);

  sub_227A23E5C();
  return v0;
}

uint64_t sub_227A4CEFC()
{
  sub_227A4CDE0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_227A4CF78(double a1)
{
  v4 = v1;
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  OUTLINED_FUNCTION_92();
  v56 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_84_0(v9, v10, v11, v12, v13, v14, v15, v16, v51);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_97_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_114_1();
  if (v23)
  {
    v24 = v22;
    v25 = v23;

    sub_227A71C5C();
    v26 = (v3 + ScoresActionMessage[5]);
    *v26 = v24;
    v26[1] = v25;
    *(v3 + ScoresActionMessage[6]) = a1;
    *(v3 + ScoresActionMessage[7]) = -127;
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v55 = v25;
    v27 = sub_227A7227C();
    __swift_project_value_buffer(v27, qword_27D7DE210);
    OUTLINED_FUNCTION_59_2();
    v28 = OUTLINED_FUNCTION_30_1();
    sub_227A60604(v28);

    v29 = sub_227A7226C();
    v30 = sub_227A7289C();

    v31 = OUTLINED_FUNCTION_126_0();
    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_48_2();
      v33 = swift_slowAlloc();
      v54 = v2;
      v34 = v33;
      OUTLINED_FUNCTION_50_2();
      v53 = swift_slowAlloc();
      v58[0] = v53;
      *v34 = 136315394;
      v35 = OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_98_1(v35);
      OUTLINED_FUNCTION_59_2();
      sub_227A60604(v20);
      v36 = sub_227A7251C();
      HIDWORD(v52) = v30;
      v38 = v37;
      OUTLINED_FUNCTION_6_10();
      sub_227A605B0();
      v39 = sub_227A46730(v36, v38, v58);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_227904000, v29, BYTE4(v52), "%s-> Sending leader query message: %s", v34, 0x16u);
      OUTLINED_FUNCTION_135_0();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    else
    {

      OUTLINED_FUNCTION_6_10();
      sub_227A605B0();
    }

    v59 = ScoresActionMessage;
    v60 = sub_227A589A8(&qword_27D7DCA58, type metadata accessor for QueryScoresActionMessage, &unk_227AA170C);
    __swift_allocate_boxed_opaque_existential_1(v58);
    sub_227A60604(v3);
    v42 = v57;
    sub_227A60604(v3);
    v43 = swift_allocObject();
    *(v43 + 16) = v4;
    OUTLINED_FUNCTION_58_2();
    sub_227A6055C(v42);

    v44 = OUTLINED_FUNCTION_71_2();
    sub_227A4843C(v44, v45, v46, v47, v48, v49, v43, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v59, v60);
    OUTLINED_FUNCTION_6_10();
    sub_227A605B0();

    return __swift_destroy_boxed_opaque_existential_0Tm(v58);
  }

  else
  {
    sub_227A1387C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    OUTLINED_FUNCTION_108_1(v40, 64);
    return swift_willThrow();
  }
}

void sub_227A4D358(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (a2 < 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_42:
      MEMORY[0x2821FCF40](v6, v5);
      return;
    }

    v7 = v5;
    v8 = a2;
    goto LABEL_18;
  }

  if (v4)
  {
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a1;
LABEL_18:

    sub_227A5916C(v7, v8);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v23 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(a1 + 56);
    v6 = sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v24 = v13;
    if (v11)
    {
      while (2)
      {
        v14 = __clz(__rbit64(v11));
        v25 = (v11 - 1) & v11;
LABEL_33:
        v17 = *(*(a1 + 48) + 8 * (v14 | (v12 << 6)));
        v18 = sub_227A7298C();
        v19 = ~(-1 << *(a2 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(a2 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return;
          }

          v21 = *(*(a2 + 48) + 8 * v20);
          v22 = sub_227A7299C();

          v18 = v20 + 1;
        }

        while ((v22 & 1) == 0);

        v13 = v24;
        v11 = v25;
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        return;
      }

      v16 = *(v23 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v25 = (v16 - 1) & v16;
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_42;
  }
}

void sub_227A4D5B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_99_0();
  v3 = sub_227A71F6C();
  OUTLINED_FUNCTION_92();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_22();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v15 = sub_227A7227C();
    __swift_project_value_buffer(v15, qword_27D7DE210);
    v16 = *(v5 + 16);
    v16(v12, v2, v3);

    v17 = sub_227A7226C();
    v18 = sub_227A7289C();

    v19 = OUTLINED_FUNCTION_126_0();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_48_2();
      v21 = swift_slowAlloc();
      v43 = v18;
      v22 = v21;
      OUTLINED_FUNCTION_50_2();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v22 = 136315394;
      v42 = v16;
      v23 = *(v14 + 24);
      v24 = *(v14 + 32);

      v25 = sub_227A46730(v23, v24, &v45);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v42(v9, v12, v3);
      sub_227A7251C();
      v26 = OUTLINED_FUNCTION_111_1();
      v27(v26);
      v28 = OUTLINED_FUNCTION_104_1();
      v31 = sub_227A46730(v28, v29, v30);

      *(v22 + 14) = v31;
      OUTLINED_FUNCTION_128_0();
      _os_log_impl(v32, v33, v34, v35, v36, v37);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      v38 = OUTLINED_FUNCTION_25_3();
      MEMORY[0x22AAA1930](v38);
    }

    else
    {

      v39 = OUTLINED_FUNCTION_111_1();
      v40(v39);
    }
  }

  OUTLINED_FUNCTION_91();
}

void sub_227A4D850(uint64_t a1)
{
  OUTLINED_FUNCTION_96_1();
  v3 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for FastSyncActivity(v3);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  v2[16] = v1;

  sub_227A4E554();
  v5 = sub_227A4E7DC();
  swift_beginAccess();
  sub_227A2111C(&v16, v5);
  swift_endAccess();

  type metadata accessor for FastSyncMessenger();
  swift_allocObject();
  OUTLINED_FUNCTION_13();

  v2[15] = sub_227A134A4(v6);

  sub_227A4E8D4();
  sub_227A4EAFC();
  sub_227A4EE6C();
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v7 = sub_227A7227C();
  __swift_project_value_buffer(v7, qword_27D7DE210);
  OUTLINED_FUNCTION_13();

  v8 = sub_227A7226C();
  v9 = sub_227A7289C();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_48_2();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_50_2();
    v15 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_227A46730(v2[3], v2[4], &v15);
    *(v10 + 12) = 2080;
    sub_227A7206C();

    sub_227A605B0();
    v11 = OUTLINED_FUNCTION_76();
    v14 = sub_227A46730(v11, v12, v13);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_227904000, v8, v9, "%s-> Joining session for activity with name %s.", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  sub_227A71FFC();

  OUTLINED_FUNCTION_91();
}

uint64_t sub_227A4DAE0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_227A2095C(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_227A4DBE4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE330, &qword_227AA5C88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41[-1] - v9;
  v11 = *(v2 + 17);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionState;
    swift_beginAccess();
    (*(v5 + 16))(v10, &v2[v12], v4);
    (*(v5 + 104))(v7, *MEMORY[0x277CCB200], v4);
    sub_2279F4CBC(&qword_27D7DE4E0, &qword_27D7DE330, &qword_227AA5C88, MEMORY[0x277CCB210]);

    LOBYTE(v12) = sub_227A7248C();
    v13 = *(v5 + 8);
    v13(v7, v4);
    v13(v10, v4);
    if ((v12 & 1) == 0)
    {
      if (qword_27D7DC4E0 != -1)
      {
        swift_once();
      }

      v14 = sub_227A7227C();
      __swift_project_value_buffer(v14, qword_27D7DE210);

      v15 = sub_227A7226C();
      v16 = sub_227A728AC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v41[0] = v18;
        *v17 = 136315394;
        *(v17 + 4) = sub_227A46730(*(v2 + 3), *(v2 + 4), v41);
        *(v17 + 12) = 2080;
        v19 = sub_227A7283C();
        v21 = sub_227A46730(v19, v20, v41);

        *(v17 + 14) = v21;
        _os_log_impl(&dword_227904000, v15, v16, "%s-> The local participant has not joined a valid session yet, but let's still try permitting handles: %s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAA1930](v18, -1, -1);
        MEMORY[0x22AAA1930](v17, -1, -1);
      }
    }

    sub_227A46FEC(a1);
    v22 = sub_227A17D18();
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v23 = sub_227A7227C();
    __swift_project_value_buffer(v23, qword_27D7DE210);

    v24 = sub_227A7226C();
    v25 = sub_227A7289C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41[0] = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_227A46730(*(v2 + 3), *(v2 + 4), v41);
      *(v26 + 12) = 2080;
      sub_227A47304();
      v28 = MEMORY[0x22AA9FF60]();
      v30 = v29;

      v31 = sub_227A46730(v28, v30, v41);

      *(v26 + 14) = v31;
      *(v26 + 22) = 2080;
      v32 = *(v11 + 16);
      v33 = *(v11 + 24);

      v34 = sub_227A46730(v32, v33, v41);

      *(v26 + 24) = v34;
      _os_log_impl(&dword_227904000, v24, v25, "%s-> Permit updated members: %s for provider ID: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v27, -1, -1);
      MEMORY[0x22AAA1930](v26, -1, -1);
    }

    v41[0] = v22;

    sub_227A722DC();
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v35 = sub_227A7227C();
    __swift_project_value_buffer(v35, qword_27D7DE210);

    v40 = sub_227A7226C();
    v36 = sub_227A728BC();

    if (os_log_type_enabled(v40, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_227A46730(*(v2 + 3), *(v2 + 4), v42);
      _os_log_impl(&dword_227904000, v40, v36, "%s-> Cannot add members without a group session provider.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x22AAA1930](v38, -1, -1);
      MEMORY[0x22AAA1930](v37, -1, -1);
    }

    else
    {
      v39 = v40;
    }
  }
}

void sub_227A4E2A4(void *a1, uint64_t a2)
{
  sub_227A25094(a2);
  v3 = sub_227A7240C();

  [a1 transportDidUpdateWithInfo_];
}

void *sub_227A4E32C(uint64_t a1)
{
  swift_beginAccess();

  sub_227A47618(v2, a1);
  v4 = v3;

  v5 = sub_227A17C58(v4);

  return sub_227A59AC0(v6, v5);
}

void sub_227A4E3C0(void *a1, uint64_t a2, const char *a3)
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v6 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v6, qword_27D7DE210);

  v7 = a1;
  oslog = sub_227A7226C();
  v8 = sub_227A7289C();

  if (os_log_type_enabled(oslog, v8))
  {
    OUTLINED_FUNCTION_48_2();
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_55_2();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_227A46730(*(a2 + 24), *(a2 + 32), &v16);
    *(v9 + 12) = 2112;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_227904000, oslog, v8, a3, v9, 0x16u);
    sub_2279F3774(v10, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    v14 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x22AAA1930](v14);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }
}

void sub_227A4E554()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15[-v2];
  v4 = *(v0 + 128);
  if (v4)
  {
    v5 = sub_227A7276C();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    sub_227A7273C();
    swift_retain_n();

    v7 = sub_227A7272C();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    v8[5] = v4;

    v10 = sub_227A2EC1C(0, 0, v3, &unk_227AA5E80, v8);
    swift_beginAccess();
    sub_227A2111C(&v16, v10);
    swift_endAccess();

    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    v11 = swift_allocObject();
    swift_weakInit();

    v12 = sub_227A7272C();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v9;
    v13[4] = v11;
    v13[5] = v4;

    v14 = sub_227A2EC1C(0, 0, v3, &unk_227AA5E90, v13);
    swift_beginAccess();
    sub_227A2111C(&v16, v14);
    swift_endAccess();
  }
}

uint64_t sub_227A4E7DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_227A7276C();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  return sub_227A2EC1C(0, 0, v2, &unk_227AA5E40, v5);
}

void sub_227A4E8D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  v5 = *(v0 + 120);
  if (v5)
  {
    v6 = sub_227A7276C();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
    sub_227A7273C();
    swift_retain_n();

    v7 = sub_227A7272C();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v5;
    v8[5] = v1;
    v10 = sub_227A2EC1C(0, 0, v4, &unk_227AA5E00, v8);
    swift_beginAccess();
    sub_227A2111C(&v15, v10);
    swift_endAccess();

    __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);

    v11 = sub_227A7272C();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v9;
    v12[4] = v5;
    v12[5] = v1;
    v13 = sub_227A2EC1C(0, 0, v4, &unk_227AA5E10, v12);
    swift_beginAccess();
    sub_227A2111C(&v15, v13);
    swift_endAccess();
  }
}

void sub_227A4EAFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19[-v2];
  v4 = *(v0 + 120);
  if (v4)
  {
    v5 = sub_227A7276C();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    sub_227A7273C();
    swift_retain_n();

    v7 = sub_227A7272C();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    v8[5] = v4;

    v10 = sub_227A2EC1C(0, 0, v3, &unk_227AA5D70, v8);
    swift_beginAccess();
    sub_227A2111C(&v20, v10);
    swift_endAccess();

    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    v11 = swift_allocObject();
    swift_weakInit();

    v12 = sub_227A7272C();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v9;
    v13[4] = v11;
    v13[5] = v4;

    v14 = sub_227A2EC1C(0, 0, v3, &unk_227AA5D80, v13);
    swift_beginAccess();
    sub_227A2111C(&v20, v14);
    swift_endAccess();

    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    v15 = swift_allocObject();
    swift_weakInit();

    v16 = sub_227A7272C();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = MEMORY[0x277D85700];
    v17[4] = v15;
    v17[5] = v4;

    v18 = sub_227A2EC1C(0, 0, v3, &unk_227AA5D90, v17);
    swift_beginAccess();
    sub_227A2111C(&v20, v18);
    swift_endAccess();
  }
}

void sub_227A4EE6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15[-v2];
  v4 = *(v0 + 120);
  if (v4)
  {
    v5 = sub_227A7276C();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    sub_227A7273C();
    swift_retain_n();

    v7 = sub_227A7272C();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    v8[5] = v4;

    v10 = sub_227A2EC1C(0, 0, v3, &unk_227AA5CE8, v8);
    swift_beginAccess();
    sub_227A2111C(&v16, v10);
    swift_endAccess();

    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    v11 = swift_allocObject();
    swift_weakInit();

    v12 = sub_227A7272C();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v9;
    v13[4] = v11;
    v13[5] = v4;

    v14 = sub_227A2EC1C(0, 0, v3, &unk_227AA5CF8, v13);
    swift_beginAccess();
    sub_227A2111C(&v16, v14);
    swift_endAccess();
  }
}

uint64_t sub_227A4F0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_227A71C6C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE330, &qword_227AA5C88);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4B0, &qword_227AA5ED0);
  v5[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4B8, &qword_227AA5ED8);
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4C0, &qword_227AA5EE0);
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE4C8, &qword_227AA5EE8);
  v5[21] = v10;
  v5[22] = *(v10 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = sub_227A7273C();
  v5[25] = sub_227A7272C();
  v12 = sub_227A726EC();
  v5[26] = v12;
  v5[27] = v11;

  return MEMORY[0x2822009F8](sub_227A4F3C4, v12, v11);
}

uint64_t sub_227A4F3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_33_3();
  Strong = swift_weakLoadStrong();
  v10[28] = Strong;
  if (Strong)
  {
    v13 = v10[19];
    v12 = v10[20];
    v15 = v10[17];
    v14 = v10[18];
    v16 = v10[15];
    v17 = v10[16];
    sub_227A7203C();
    OUTLINED_FUNCTION_27(&qword_27D7DE4D0, &qword_27D7DE4B8, &qword_227AA5ED8);
    OUTLINED_FUNCTION_136_0();
    (*(v17 + 8))(v15, v16);
    OUTLINED_FUNCTION_139();
    sub_227A722CC();
    (*(v13 + 8))(v12, v14);
    v10[29] = sub_227A7272C();
    OUTLINED_FUNCTION_4_1(&qword_27D7DE4D8, &qword_27D7DE4C8, &qword_227AA5EE8);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    v10[30] = v18;
    *v18 = v19;
    v18[1] = sub_227A4F57C;
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v20);
  }

  else
  {

    OUTLINED_FUNCTION_118_0();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_227A4F57C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v0;

  OUTLINED_FUNCTION_74_2();
  v5 = *(v4 + 232);
  if (v0)
  {
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
LABEL_5:
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A4F6E0()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_227A4F740, v1, v2);
}

uint64_t sub_227A4F740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_131_0();
  v13 = v12[14];
  v14 = v12[11];
  if (OUTLINED_FUNCTION_115_1() == 1)
  {
    (*(v12[22] + 8))(v12[23], v12[21]);

    OUTLINED_FUNCTION_118_0();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_69_1();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    v24 = v12[13];
    v26 = v12[9];
    v25 = v12[10];
    v27 = v12[8];
    (*(v12[12] + 32))(v24, v13, v14);
    sub_227A71FDC();
    sub_227A4F998(v25, v24);
    (*(v26 + 8))(v25, v27);
    v28 = OUTLINED_FUNCTION_30_1();
    v29(v28);
    v12[29] = sub_227A7272C();
    OUTLINED_FUNCTION_4_1(&qword_27D7DE4D8, &qword_27D7DE4C8, &qword_227AA5EE8);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    v12[30] = v30;
    *v30 = v31;
    v30[1] = sub_227A4F57C;
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_69_1();

    return MEMORY[0x282200308](v32);
  }
}

uint64_t sub_227A4F920()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 40) = *(v0 + 248);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v2 = MEMORY[0x277D84A98];
  v3 = OUTLINED_FUNCTION_69(v1);
  v4 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v3, v2, v4);
}

void sub_227A4F998(uint64_t a1, char *a2)
{
  v84 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE330, &qword_227AA5C88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v82 = (&v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v74 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v13 = sub_227A71C6C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v74 - v18;
  v85 = v2;
  if (v2[16])
  {
    v80 = v9;
    v83 = v5;

    sub_227A71FDC();
    v81 = a1;
    v21 = sub_227A71C4C();
    v22 = *(v14 + 8);
    v22(v19, v13);
    if (v21)
    {
      v78 = v20;
      if (qword_27D7DC4E0 != -1)
      {
        swift_once();
      }

      v23 = sub_227A7227C();
      __swift_project_value_buffer(v23, qword_27D7DE210);
      (*(v14 + 16))(v16, v81, v13);
      v24 = *(v83 + 16);
      v77 = v83 + 16;
      v24(v12, v84, v4);
      v25 = v85;

      v26 = sub_227A7226C();
      v27 = sub_227A7289C();

      v76 = v27;
      v28 = os_log_type_enabled(v26, v27);
      v79 = v24;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v87 = v30;
        *v29 = 136315650;
        *(v29 + 4) = sub_227A46730(v25[3], v25[4], &v87);
        *(v29 + 12) = 2080;
        v75 = v26;
        v31 = sub_227A71C3C();
        v33 = v32;
        v22(v16, v13);
        v34 = sub_227A46730(v31, v33, &v87);

        *(v29 + 14) = v34;
        *(v29 + 22) = 2080;
        v35 = v80;
        v79(v80, v12, v4);
        v36 = sub_227A7251C();
        v38 = v37;
        v39 = *(v83 + 8);
        v39(v12, v4);
        v40 = sub_227A46730(v36, v38, &v87);

        *(v29 + 24) = v40;
        v41 = v75;
        _os_log_impl(&dword_227904000, v75, v76, "%s-> Group session[%s] state changed to %s", v29, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAA1930](v30, -1, -1);
        v42 = v29;
        v43 = v39;
        MEMORY[0x22AAA1930](v42, -1, -1);
      }

      else
      {

        v43 = *(v83 + 8);
        v43(v12, v4);
        v22(v16, v13);
        v35 = v80;
      }

      (*(v83 + 104))(v35, *MEMORY[0x277CCB200], v4);
      type metadata accessor for FastSyncActivity(0);
      sub_227A589A8(&qword_27D7DC990, type metadata accessor for FastSyncActivity, &protocol conformance descriptor for FastSyncActivity);
      v50 = sub_227A7200C();
      v51 = v43;
      v43(v35, v4);
      v52 = v85;
      if (v50)
      {
        v53 = v85[5];
        v87 = 0;
        v88 = 0xE000000000000000;
        sub_227A72B1C();

        v87 = 0xD000000000000016;
        v88 = 0x8000000227A9F950;
        v54 = sub_227A71C3C();
        MEMORY[0x22AA9FE40](v54);

        v55 = sub_227A724BC();

        [v53 emitMultiplayerMessage_];
      }

      v56 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionState;
      swift_beginAccess();
      v57 = v83;
      v58 = v84;
      (*(v83 + 24))(&v52[v56], v84, v4);
      swift_endAccess();
      v59 = v82;
      v79(v82, v58, v4);
      if ((*(v57 + 88))(v59, v4) == *MEMORY[0x277CCB1F8])
      {
        (*(v57 + 96))(v59, v4);
        v60 = *v59;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v62 = Strong;
          v87 = 0;
          v88 = 0xE000000000000000;
          sub_227A72B1C();
          v63 = *(v52 + 3);
          v64 = *(v52 + 4);

          v87 = v63;
          v88 = v64;
          MEMORY[0x22AA9FE40](0x6E6F697373657320, 0xE90000000000005BLL);
          v65 = sub_227A71C3C();
          MEMORY[0x22AA9FE40](v65);

          MEMORY[0x22AA9FE40](0xD00000000000001FLL, 0x8000000227A9F900);
          v66 = v87;
          v67 = v88;
          sub_227A1387C();
          v68 = swift_allocError();
          *v69 = v66;
          *(v69 + 8) = v67;
          *(v69 + 16) = v60;
          *(v69 + 24) = 0;
          *(v69 + 32) = 0x80;
          v70 = v60;
          v71 = sub_227A71A4C();

          [v62 transportDidFailWithError_];
          swift_unknownObjectRelease();
        }

        v72 = *(v52 + 5);
        v87 = 0;
        v88 = 0xE000000000000000;
        sub_227A72B1C();
        MEMORY[0x22AA9FE40](0xD000000000000023, 0x8000000227A9F920);
        v86 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
        sub_227A72C1C();
        v73 = sub_227A724BC();

        [v72 emitMultiplayerMessage_];
      }

      else
      {

        v51(v59, v4);
      }

      return;
    }
  }

  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v44 = sub_227A7227C();
  __swift_project_value_buffer(v44, qword_27D7DE210);
  v45 = v85;

  v46 = sub_227A7226C();
  v47 = sub_227A728AC();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v87 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_227A46730(v45[3], v45[4], &v87);
    _os_log_impl(&dword_227904000, v46, v47, "%s-> State changes not from the current session. Ignored.", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    MEMORY[0x22AAA1930](v49, -1, -1);
    MEMORY[0x22AAA1930](v48, -1, -1);
  }
}

uint64_t sub_227A502DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_227A71C6C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC678, &qword_227AA0690);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC670, &unk_227AA5EA0);
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC680, &qword_227AA0698);
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = sub_227A7273C();
  v5[22] = sub_227A7272C();
  v11 = sub_227A726EC();
  v5[23] = v11;
  v5[24] = v10;

  return MEMORY[0x2822009F8](sub_227A5050C, v11, v10);
}

uint64_t sub_227A5050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_36_2();
  Strong = swift_weakLoadStrong();
  v10[25] = Strong;
  if (Strong)
  {
    v13 = v10[16];
    v12 = v10[17];
    v15 = v10[14];
    v14 = v10[15];
    v16 = v10[12];
    v17 = v10[13];
    sub_227A71FCC();
    OUTLINED_FUNCTION_27(&qword_27D7DC688, &qword_27D7DC678, &qword_227AA0690);
    OUTLINED_FUNCTION_136_0();
    (*(v17 + 8))(v15, v16);
    OUTLINED_FUNCTION_139();
    sub_227A722CC();
    (*(v13 + 8))(v12, v14);
    v10[26] = sub_227A7272C();
    OUTLINED_FUNCTION_4_1(&qword_27D7DC690, &qword_27D7DC680, &qword_227AA0698);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    v10[27] = v18;
    *v18 = v19;
    v18[1] = sub_227A506B8;
    OUTLINED_FUNCTION_44_2();
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v20);
  }

  else
  {

    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_227A506B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_74_2();
  v5 = *(v4 + 208);
  if (v0)
  {
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
LABEL_5:
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A5081C()
{
  OUTLINED_FUNCTION_31();

  v0[29] = v0[5];
  v1 = v0[23];
  v2 = v0[24];

  return MEMORY[0x2822009F8](sub_227A50884, v1, v2);
}

uint64_t sub_227A50884()
{
  OUTLINED_FUNCTION_56();
  if (v0[29])
  {
    sub_227A71FDC();
    v1 = OUTLINED_FUNCTION_30_1();
    sub_227A50A94(v1, v2);

    v3 = OUTLINED_FUNCTION_109();
    v4(v3);
    v0[26] = sub_227A7272C();
    OUTLINED_FUNCTION_4_1(&qword_27D7DC690, &qword_27D7DC680, &qword_227AA0698);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    v0[27] = v5;
    *v5 = v6;
    v5[1] = sub_227A506B8;
    OUTLINED_FUNCTION_44_2();

    return MEMORY[0x282200308](v7);
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_41();

    return v8();
  }
}

uint64_t sub_227A50A1C()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 48) = *(v0 + 224);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v2 = MEMORY[0x277D84A98];
  v3 = OUTLINED_FUNCTION_69(v1);
  v4 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v3, v2, v4);
}

void sub_227A50A94(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v233 - v7;
  v253 = sub_227A720EC();
  v255 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v246 = &v233 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v247 = &v233 - v11;
  MEMORY[0x28223BE20](v12);
  v252 = &v233 - v13;
  MEMORY[0x28223BE20](v14);
  v254 = &v233 - v15;
  v16 = sub_227A71C6C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v233 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v233 - v21;
  v256 = v2;
  v23 = v2[16];
  if (!v23)
  {
LABEL_9:
    if (qword_27D7DC4E0 != -1)
    {
      goto LABEL_169;
    }

    goto LABEL_10;
  }

  v250 = v5;
  v251 = a2;
  v249 = v8;

  sub_227A71FDC();
  v24 = sub_227A71C4C();
  v25 = *(v17 + 8);
  v25(v22, v16);
  if ((v24 & 1) == 0)
  {

    goto LABEL_9;
  }

  v235 = v23;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v46 = sub_227A7227C();
    __swift_project_value_buffer(v46, qword_27D7DE210);
    v47 = v256;

    v48 = sub_227A7226C();
    v49 = sub_227A7289C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v264[0] = v51;
      *v50 = 136315394;
      *(v50 + 4) = sub_227A46730(v47[3], v47[4], v264);
      *(v50 + 12) = 2080;
      v259 = v47;

      v52 = sub_227A7251C();
      v54 = sub_227A46730(v52, v53, v264);

      *(v50 + 14) = v54;
      _os_log_impl(&dword_227904000, v48, v49, "%s Participants changed but there is no client delegate set for the transport: %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v51, -1, -1);
      MEMORY[0x22AAA1930](v50, -1, -1);
    }

LABEL_160:

    return;
  }

  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v26 = sub_227A7227C();
  v27 = __swift_project_value_buffer(v26, qword_27D7DE210);
  (*(v17 + 16))(v19, a1, v16);
  v28 = v256;

  v243 = v27;
  v29 = sub_227A7226C();
  v30 = sub_227A7289C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v250 = swift_slowAlloc();
    v264[0] = v250;
    *v31 = 136315650;
    *(v31 + 4) = sub_227A46730(*(v28 + 24), *(v28 + 32), v264);
    *(v31 + 12) = 2080;
    LODWORD(v248) = v30;
    v32 = sub_227A71C3C();
    v34 = v33;
    v25(v19, v16);
    v35 = sub_227A46730(v32, v34, v264);

    *(v31 + 14) = v35;
    *(v31 + 22) = 2080;
    sub_227A589A8(&qword_27D7DC560, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
    v36 = sub_227A7283C();
    v38 = sub_227A46730(v36, v37, v264);

    *(v31 + 24) = v38;
    _os_log_impl(&dword_227904000, v29, v248, "%s-> Session[%s] active participants changed to %s", v31, 0x20u);
    v39 = v250;
    swift_arrayDestroy();
    MEMORY[0x22AAA1930](v39, -1, -1);
    MEMORY[0x22AAA1930](v31, -1, -1);
  }

  else
  {

    v25(v19, v16);
  }

  v56 = sub_227A59F4C(v55, v28);
  v234 = 0;

  sub_227A58280(v57, v56);
  v59 = v58;

  v60 = *(v28 + 16);

  sub_227A58280(v56, v60);
  v62 = v61;
  *(v28 + 16) = v56;
  v233 = v56;

  v63 = *(v62 + 16);
  v250 = v59;
  v248 = v62;
  if (v63)
  {
    v64 = v62 + 56;
    v65 = 1 << *(v62 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & *(v62 + 56);
    v68 = (v65 + 63) >> 6;
    v251 = v255 + 16;
    v245 = v255 + 8;

    v69 = 0;
    v70 = MEMORY[0x277D84F90];
    if (v67)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_165;
      }

      if (v71 >= v68)
      {
        break;
      }

      v67 = *(v64 + 8 * v71);
      ++v69;
      if (v67)
      {
        v69 = v71;
        do
        {
LABEL_27:
          v72 = v255;
          v73 = v254;
          v74 = v253;
          (*(v255 + 16))(v254, *(v248 + 48) + *(v255 + 72) * (__clz(__rbit64(v67)) | (v69 << 6)), v253);
          v75 = sub_227A720DC();
          v77 = v76;
          (*(v72 + 8))(v73, v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2279FD74C();
            v70 = v80;
          }

          v78 = *(v70 + 16);
          if (v78 >= *(v70 + 24) >> 1)
          {
            sub_2279FD74C();
            v70 = v81;
          }

          v67 &= v67 - 1;
          *(v70 + 16) = v78 + 1;
          v79 = v70 + 16 * v78;
          *(v79 + 32) = v75;
          *(v79 + 40) = v77;
        }

        while (v67);
      }
    }

    v82 = 0;
    v83 = *(v70 + 16);
    v84 = MEMORY[0x277D84F90];
LABEL_34:
    v85 = (v70 + 40 + 16 * v82);
    while (v83 != v82)
    {
      if (v82 >= *(v70 + 16))
      {
        goto LABEL_167;
      }

      ++v82;
      v87 = *(v85 - 1);
      v86 = *v85;
      v85 += 2;
      v88 = HIBYTE(v86) & 0xF;
      if ((v86 & 0x2000000000000000) == 0)
      {
        v88 = v87 & 0xFFFFFFFFFFFFLL;
      }

      if (v88)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v264[0] = v84;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_227A20388(0, *(v84 + 16) + 1, 1);
          v84 = v264[0];
        }

        v91 = *(v84 + 16);
        v90 = *(v84 + 24);
        if (v91 >= v90 >> 1)
        {
          sub_227A20388(v90 > 1, v91 + 1, 1);
          v84 = v264[0];
        }

        *(v84 + 16) = v91 + 1;
        v92 = v84 + 16 * v91;
        *(v92 + 32) = v87;
        *(v92 + 40) = v86;
        goto LABEL_34;
      }
    }

    v28 = v256;
    sub_227A56D5C(v84);

    v59 = v250;
  }

  if (*(v59 + 16))
  {
    v93 = v59 + 56;
    v94 = 1 << *(v59 + 32);
    v95 = -1;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    v96 = v95 & *(v59 + 56);
    v97 = (v94 + 63) >> 6;
    v254 = (v255 + 16);
    v251 = v255 + 8;

    v98 = 0;
    v99 = MEMORY[0x277D84F90];
    if (v96)
    {
      goto LABEL_54;
    }

    while (1)
    {
      v100 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        goto LABEL_166;
      }

      if (v100 >= v97)
      {
        break;
      }

      v96 = *(v93 + 8 * v100);
      ++v98;
      if (v96)
      {
        v98 = v100;
        do
        {
LABEL_54:
          v101 = v255;
          v102 = v252;
          v103 = v253;
          (*(v255 + 16))(v252, *(v250 + 48) + *(v255 + 72) * (__clz(__rbit64(v96)) | (v98 << 6)), v253);
          v104 = sub_227A720DC();
          v106 = v105;
          (*(v101 + 8))(v102, v103);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2279FD74C();
            v99 = v109;
          }

          v107 = *(v99 + 16);
          if (v107 >= *(v99 + 24) >> 1)
          {
            sub_2279FD74C();
            v99 = v110;
          }

          v96 &= v96 - 1;
          *(v99 + 16) = v107 + 1;
          v108 = v99 + 16 * v107;
          *(v108 + 32) = v104;
          *(v108 + 40) = v106;
        }

        while (v96);
      }
    }

    v111 = 0;
    v112 = *(v99 + 16);
    v113 = MEMORY[0x277D84F90];
LABEL_61:
    v114 = (v99 + 40 + 16 * v111);
    while (v112 != v111)
    {
      if (v111 >= *(v99 + 16))
      {
        goto LABEL_168;
      }

      ++v111;
      v116 = *(v114 - 1);
      v115 = *v114;
      v114 += 2;
      v117 = HIBYTE(v115) & 0xF;
      if ((v115 & 0x2000000000000000) == 0)
      {
        v117 = v116 & 0xFFFFFFFFFFFFLL;
      }

      if (v117)
      {

        v118 = swift_isUniquelyReferenced_nonNull_native();
        v264[0] = v113;
        if ((v118 & 1) == 0)
        {
          sub_227A20388(0, *(v113 + 16) + 1, 1);
          v113 = v264[0];
        }

        v120 = *(v113 + 16);
        v119 = *(v113 + 24);
        if (v120 >= v119 >> 1)
        {
          sub_227A20388(v119 > 1, v120 + 1, 1);
          v113 = v264[0];
        }

        *(v113 + 16) = v120 + 1;
        v121 = v113 + 16 * v120;
        *(v121 + 32) = v116;
        *(v121 + 40) = v115;
        goto LABEL_61;
      }
    }

    v28 = v256;
    sub_227A56ABC(v113);

    v59 = v250;
    if (*(v250 + 16))
    {
      goto LABEL_74;
    }
  }

  if (*(v248 + 16))
  {
LABEL_74:
    v122 = sub_227A7276C();
    v123 = v249;
    __swift_storeEnumTagSinglePayload(v249, 1, 1, v122);
    v124 = swift_allocObject();
    v124[2] = 0;
    v124[3] = 0;
    v124[4] = v28;

    sub_227A2EC1C(0, 0, v123, &unk_227AA5EB8, v124);
  }

  v125 = sub_227A7226C();
  v126 = sub_227A7289C();

  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v254 = swift_slowAlloc();
    v264[0] = v254;
    *v127 = 136315650;
    *(v127 + 4) = sub_227A46730(*(v28 + 24), *(v28 + 32), v264);
    *(v127 + 12) = 2080;
    v128 = v234;
    sub_227A47304();
    v129 = MEMORY[0x22AA9FF60]();
    v131 = v130;

    v132 = sub_227A46730(v129, v131, v264);

    *(v127 + 14) = v132;
    v28 = v256;
    *(v127 + 22) = 2080;
    sub_227A47304();
    v234 = v128;
    v133 = MEMORY[0x22AA9FF60]();
    v135 = v134;

    v136 = v133;
    v59 = v250;
    v137 = sub_227A46730(v136, v135, v264);

    *(v127 + 24) = v137;
    _os_log_impl(&dword_227904000, v125, v126, "%s Participants changed. Added: %s, removed: %s", v127, 0x20u);
    v138 = v254;
    swift_arrayDestroy();
    MEMORY[0x22AAA1930](v138, -1, -1);
    v139 = v127;
    v140 = "Close the challenge received alert without further action" + 16;
    MEMORY[0x22AAA1930](v139, -1, -1);
  }

  else
  {

    v140 = "nge received alert without further action";
  }

  v141 = v59 + 56;
  v142 = -1 << *(v59 + 32);
  if (-v142 < 64)
  {
    v143 = ~(-1 << -v142);
  }

  else
  {
    v143 = -1;
  }

  v144 = v143 & *(v59 + 56);
  v145 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;

  v249 = v145;
  swift_beginAccess();
  v146 = 0;
  v147 = (63 - v142) >> 6;
  v245 = v255 + 16;
  v244 = v255 + 8;
  *&v148 = *(v140 + 461);
  v237 = v148;
  v239 = v59 + 56;
  v238 = v147;
  if (!v144)
  {
    while (1)
    {
LABEL_83:
      v149 = v146 + 1;
      if (__OFADD__(v146, 1))
      {
        goto LABEL_163;
      }

      if (v149 >= v147)
      {
        break;
      }

      v144 = *(v141 + 8 * v149);
      ++v146;
      if (v144)
      {
        goto LABEL_86;
      }
    }

    v187 = v248 + 56;
    v188 = -1 << *(v248 + 32);
    if (-v188 < 64)
    {
      v189 = ~(-1 << -v188);
    }

    else
    {
      v189 = -1;
    }

    v190 = v189 & *(v248 + 56);

    swift_beginAccess();
    v191 = 0;
    v192 = (63 - v188) >> 6;
    v240 = v187;
    v239 = v192;
    if (!v190)
    {
LABEL_123:
      v194 = v256;
      v195 = v248;
      while (1)
      {
        v193 = v191 + 1;
        if (__OFADD__(v191, 1))
        {
          goto LABEL_164;
        }

        if (v193 >= v192)
        {

          swift_unknownObjectRelease();
          goto LABEL_160;
        }

        v190 = *(v187 + 8 * v193);
        ++v191;
        if (v190)
        {
          goto LABEL_127;
        }
      }
    }

    while (1)
    {
      v193 = v191;
      v194 = v256;
      v195 = v248;
LABEL_127:
      v196 = v255;
      v197 = *(v195 + 48) + *(v255 + 72) * (__clz(__rbit64(v190)) | (v193 << 6));
      v198 = v246;
      v199 = v253;
      (*(v255 + 16))(v246, v197, v253);
      v251 = sub_227A720DC();
      v254 = v200;
      (*(v196 + 8))(v198, v199);
      v247 = *&v249[v194];
      v201 = v247;
      if ((v247 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        sub_227A72A3C();
        sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
        sub_227A23DEC();
        sub_227A7285C();
        v201 = v264[0];
        v202 = v264[1];
        v204 = v264[2];
        v203 = v264[3];
        v205 = v264[4];
      }

      else
      {
        v206 = -1 << *(v247 + 32);
        v202 = v247 + 56;
        v204 = ~v206;
        v207 = -v206;
        if (v207 < 64)
        {
          v208 = ~(-1 << v207);
        }

        else
        {
          v208 = -1;
        }

        v205 = v208 & *(v247 + 56);
        swift_bridgeObjectRetain_n();
        v203 = 0;
      }

      v241 = (v190 - 1) & v190;
      v242 = v204;
      v209 = (v204 + 64) >> 6;
      v210 = v203;
      if (v201 < 0)
      {
        while (1)
        {
          v216 = sub_227A72A7C();
          if (!v216)
          {
            break;
          }

          v257 = v216;
          sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
          swift_dynamicCast();
          v215 = v258[0];
          v213 = v210;
          v214 = v205;
          if (!v258[0])
          {
            break;
          }

LABEL_142:
          v252 = v210;
          v217 = sub_227A5B280(v215, &selRef_pseudonym);
          if (v218)
          {
            if (v217 == v251 && v218 == v254)
            {

LABEL_154:
              sub_2279F34F8(v201);

              sub_227A5B280(v215, &selRef_playerID);
              if (!v231)
              {
                goto LABEL_171;
              }

              v232 = sub_227A724BC();

              [Strong connectionDidChangeWithState:3 playerID:v232];

LABEL_156:
              goto LABEL_157;
            }

            v220 = sub_227A72E5C();

            if (v220)
            {
              goto LABEL_154;
            }
          }

          v210 = v213;
          v205 = v214;
          if ((v201 & 0x8000000000000000) == 0)
          {
            goto LABEL_134;
          }
        }
      }

      else
      {
LABEL_134:
        v211 = v210;
        v212 = v205;
        v213 = v210;
        if (v205)
        {
LABEL_138:
          v214 = (v212 - 1) & v212;
          v215 = *(*(v201 + 48) + ((v213 << 9) | (8 * __clz(__rbit64(v212)))));
          if (!v215)
          {
            goto LABEL_150;
          }

          goto LABEL_142;
        }

        while (1)
        {
          v213 = (v211 + 1);
          if (__OFADD__(v211, 1))
          {
            goto LABEL_162;
          }

          if (v213 >= v209)
          {
            break;
          }

          v212 = *(v202 + 8 * v213);
          ++v211;
          if (v212)
          {
            goto LABEL_138;
          }
        }
      }

LABEL_150:
      sub_2279F34F8(v201);

      v221 = v256;

      v222 = v254;

      v215 = sub_227A7226C();
      v223 = sub_227A728AC();

      if (os_log_type_enabled(v215, v223))
      {
        v224 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        v258[0] = v225;
        *v224 = v237;
        *(v224 + 4) = sub_227A46730(v221[3], v221[4], v258);
        *(v224 + 12) = 2080;
        v226 = sub_227A46730(v251, v222, v258);

        *(v224 + 14) = v226;
        *(v224 + 22) = 2080;
        sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
        sub_227A23DEC();

        v227 = sub_227A7283C();
        v229 = v228;

        v230 = sub_227A46730(v227, v229, v258);

        *(v224 + 24) = v230;
        _os_log_impl(&dword_227904000, v215, v223, "%s Cannot find %s and send stateDisconnected to clientDelegate. Current participants: %s", v224, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAA1930](v225, -1, -1);
        MEMORY[0x22AAA1930](v224, -1, -1);
        goto LABEL_156;
      }

LABEL_157:
      v191 = v193;
      v187 = v240;
      v190 = v241;
      v192 = v239;
      if (!v241)
      {
        goto LABEL_123;
      }
    }
  }

  while (1)
  {
    v149 = v146;
LABEL_86:
    v150 = *(v59 + 48);
    v151 = v255;
    v152 = v247;
    v153 = v253;
    (*(v255 + 16))(v247, v150 + *(v255 + 72) * (__clz(__rbit64(v144)) | (v149 << 6)), v253);
    v251 = sub_227A720DC();
    v254 = v154;
    (*(v151 + 8))(v152, v153);
    v242 = *&v249[v28];
    v155 = v242;
    if ((v242 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_227A72A3C();
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      sub_227A23DEC();
      sub_227A7285C();
      v155 = v259;
      v156 = v260;
      v158 = v261;
      v157 = v262;
      v159 = v263;
    }

    else
    {
      v160 = -1 << *(v242 + 32);
      v156 = v242 + 56;
      v158 = ~v160;
      v161 = -v160;
      v162 = v161 < 64 ? ~(-1 << v161) : -1;
      v159 = v162 & *(v242 + 56);
      swift_bridgeObjectRetain_n();
      v157 = 0;
    }

    v240 = (v144 - 1) & v144;
    v241 = v158;
    v163 = (v158 + 64) >> 6;
    v164 = v157;
    if ((v155 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v170 = sub_227A72A7C();
      if (!v170)
      {
        goto LABEL_109;
      }

      v258[1] = v170;
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      swift_dynamicCast();
      v169 = v264[0];
      v167 = v164;
      v168 = v159;
      if (!v264[0])
      {
        goto LABEL_109;
      }

LABEL_101:
      v252 = v164;
      v171 = sub_227A5B280(v169, &selRef_pseudonym);
      if (v172)
      {
        break;
      }

LABEL_107:

      v164 = v167;
      v159 = v168;
      if ((v155 & 0x8000000000000000) == 0)
      {
        goto LABEL_93;
      }
    }

    if (v171 != v251 || v172 != v254)
    {
      v174 = sub_227A72E5C();

      if (v174)
      {
        goto LABEL_116;
      }

      goto LABEL_107;
    }

LABEL_116:
    sub_2279F34F8(v155);

    sub_227A5B280(v169, &selRef_playerID);
    if (!v185)
    {
      __break(1u);
LABEL_171:
      __break(1u);
      return;
    }

    v186 = sub_227A724BC();

    [Strong connectionDidChangeWithState:2 playerID:v186];

    v146 = v149;
    v28 = v256;
LABEL_113:
    v59 = v250;
    v141 = v239;
    v144 = v240;
    v147 = v238;
    if (!v240)
    {
      goto LABEL_83;
    }
  }

LABEL_93:
  v165 = v164;
  v166 = v159;
  v167 = v164;
  if (v159)
  {
LABEL_97:
    v168 = (v166 - 1) & v166;
    v169 = *(*(v155 + 48) + ((v167 << 9) | (8 * __clz(__rbit64(v166)))));
    if (v169)
    {
      goto LABEL_101;
    }

LABEL_109:
    sub_2279F34F8(v155);

    v28 = v256;

    v175 = v254;

    v176 = sub_227A7226C();
    v177 = sub_227A728AC();

    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v264[0] = v179;
      *v178 = v237;
      *(v178 + 4) = sub_227A46730(*(v28 + 24), *(v28 + 32), v264);
      *(v178 + 12) = 2080;
      v180 = sub_227A46730(v251, v175, v264);

      *(v178 + 14) = v180;
      *(v178 + 22) = 2080;
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      sub_227A23DEC();

      v181 = sub_227A7283C();
      v183 = v182;

      v184 = sub_227A46730(v181, v183, v264);

      *(v178 + 24) = v184;
      _os_log_impl(&dword_227904000, v176, v177, "%s Cannot find %s and send stateConnected to clientDelegate. Current participants: %s", v178, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v179, -1, -1);
      MEMORY[0x22AAA1930](v178, -1, -1);
    }

    else
    {
    }

    v146 = v149;
    goto LABEL_113;
  }

  while (1)
  {
    v167 = (v165 + 1);
    if (__OFADD__(v165, 1))
    {
      break;
    }

    if (v167 >= v163)
    {
      goto LABEL_109;
    }

    v166 = *(v156 + 8 * v167);
    ++v165;
    if (v166)
    {
      goto LABEL_97;
    }
  }

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
  swift_once();
LABEL_10:
  v40 = sub_227A7227C();
  __swift_project_value_buffer(v40, qword_27D7DE210);
  v41 = v256;

  v42 = sub_227A7226C();
  v43 = sub_227A728AC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v264[0] = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_227A46730(v41[3], v41[4], v264);
    _os_log_impl(&dword_227904000, v42, v43, "%s-> Participant changes not from the current session. Ignored.", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x22AAA1930](v45, -1, -1);
    MEMORY[0x22AAA1930](v44, -1, -1);
  }
}

uint64_t sub_227A52678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_227A71EFC();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = type metadata accessor for DataMessage(0);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE460, &qword_227AA5E18);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE468, &qword_227AA5E20);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE470, &qword_227AA5E28);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = sub_227A7273C();
  v5[18] = sub_227A7272C();
  v10 = sub_227A726EC();
  v5[19] = v10;
  v5[20] = v9;

  return MEMORY[0x2822009F8](sub_227A528A8, v10, v9);
}

uint64_t sub_227A528A8()
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_1();
  sub_227A589A8(v2, v1, &unk_227AA2478);
  v3 = OUTLINED_FUNCTION_67_2(&qword_27D7DCCD0);
  OUTLINED_FUNCTION_159(v3);
  OUTLINED_FUNCTION_139();
  sub_227A71F3C();
  v4 = OUTLINED_FUNCTION_35_1();
  v5(v4);
  *(v0 + 168) = sub_227A7272C();
  OUTLINED_FUNCTION_14_0(&qword_27D7DE478, &qword_27D7DE470, &qword_227AA5E28);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  *(v0 + 176) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_22_2(v6);
  OUTLINED_FUNCTION_146();

  return MEMORY[0x282200308](v8);
}

uint64_t sub_227A529C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_74_2();
  v5 = *(v4 + 168);
  if (v0)
  {
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
LABEL_5:
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A52B24()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_227A52B84, v1, v2);
}

uint64_t sub_227A52B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE480, &qword_227AA5E30);
  if (OUTLINED_FUNCTION_115_1() == 1)
  {
    v13 = OUTLINED_FUNCTION_86_1();
    v14(v13);

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_52_2();
    v24 = OUTLINED_FUNCTION_107_1();
    v25(v24);
    sub_227A52D14(v10, 0, v12);
    v26 = OUTLINED_FUNCTION_109();
    v27(v26);
    OUTLINED_FUNCTION_66_1();
    *(v11 + 168) = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE478, &qword_27D7DE470, &qword_227AA5E28);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    *(v11 + 176) = v28;
    *v28 = v29;
    OUTLINED_FUNCTION_22_2(v28);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v30);
  }
}

void sub_227A52D14(unint64_t *a1, uint64_t a2, NSObject *a3)
{
  v4 = v3;
  v151 = a3;
  v144 = *v3;
  v7 = sub_227A71EFC();
  v145 = *(v7 - 8);
  v146 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v148 = &v136 - v11;
  v12 = type metadata accessor for DataMessage(0);
  MEMORY[0x28223BE20](v12);
  v147 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v150 = &v136 - v15;
  v16 = sub_227A720EC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  if (v20 >> 60 == 15)
  {
    if (qword_27D7DC4E0 != -1)
    {
LABEL_94:
      swift_once();
    }

    v21 = sub_227A7227C();
    __swift_project_value_buffer(v21, qword_27D7DE210);

    v152 = sub_227A7226C();
    v22 = sub_227A728BC();

    if (os_log_type_enabled(v152, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v155[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_227A46730(*(v4 + 24), *(v4 + 32), v155);
      _os_log_impl(&dword_227904000, v152, v22, "%s-> Received a data message without valid data.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x22AAA1930](v24, -1, -1);
      MEMORY[0x22AAA1930](v23, -1, -1);
      v25 = v152;
LABEL_28:

      return;
    }

    v25 = v152;
    goto LABEL_26;
  }

  v141 = v12;
  v26 = *a1;
  v149 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_2279E3EE4(v26, v20);
  v152 = v20;
  v143 = Strong;
  if (!Strong)
  {
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v47 = sub_227A7227C();
    __swift_project_value_buffer(v47, qword_27D7DE210);
    v48 = v149;

    v151 = sub_227A7226C();
    v49 = sub_227A728BC();

    v50 = v26;
    if (os_log_type_enabled(v151, v49))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v155[0] = v52;
      *v51 = 136315394;
      *(v51 + 4) = sub_227A46730(*(v48 + 24), *(v48 + 32), v155);
      *(v51 + 12) = 2080;
      v154[1] = v48;

      v53 = sub_227A7251C();
      v55 = sub_227A46730(v53, v54, v155);

      *(v51 + 14) = v55;
      _os_log_impl(&dword_227904000, v151, v49, "%s-> Data received but there is no client delegate set for the transport: %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v52, -1, -1);
      MEMORY[0x22AAA1930](v51, -1, -1);
      sub_2279E3F90(v50, v152);
      v25 = v151;
      goto LABEL_28;
    }

    sub_2279E3F90(v26, v152);
    v25 = v151;
LABEL_26:

    goto LABEL_28;
  }

  v140 = a2;
  sub_227A71EEC();
  v28 = sub_227A720DC();
  v29 = v152;
  v30 = v28;
  v32 = v31;
  (*(v17 + 8))(v19, v16);
  v33 = (v32 >> 56) & 0xF;
  v144 = v30;
  v139 = v29 >> 62;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  v138 = HIDWORD(v26);
  v34 = BYTE6(v29);
  v142 = v26;
  if (!v33)
  {
    v144 = BYTE6(v29);

    v56 = v149;
    if (qword_27D7DC4E0 != -1)
    {
      swift_once();
    }

    v57 = sub_227A7227C();
    __swift_project_value_buffer(v57, qword_27D7DE210);
    v58 = v145;
    v59 = v146;
    v60 = v151;
    v151 = *(v145 + 16);
    (v151)(v148, v60, v146);
    sub_227A60604(a1);
    v61 = v142;
    v62 = v152;
    sub_2279E3ED0(v142, v152);
    sub_2279E3ED0(v61, v62);

    v63 = sub_227A7226C();
    v64 = sub_227A728AC();

    LODWORD(v150) = v64;
    if (os_log_type_enabled(v63, v64))
    {
      v137 = v63;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v155[0] = v66;
      *v65 = 136316162;
      *(v65 + 4) = sub_227A46730(*(v56 + 24), *(v56 + 32), v155);
      *(v65 + 12) = 2080;
      v67 = v148;
      (v151)(v9, v148, v59);
      v68 = sub_227A7251C();
      v70 = v69;
      (*(v58 + 8))(v67, v59);
      v71 = sub_227A46730(v68, v70, v155);

      *(v65 + 14) = v71;
      *(v65 + 22) = 2048;
      v72 = v152;
      v73 = v142;
      switch(v139)
      {
        case 1uLL:
          sub_2279E3F90(v142, v152);
          LODWORD(v74) = v138 - v73;
          if (!__OFSUB__(v138, v73))
          {
            v74 = v74;
            goto LABEL_79;
          }

LABEL_97:
          __break(1u);
          return;
        case 2uLL:
          v123 = *(v142 + 16);
          v122 = *(v142 + 24);
          sub_2279E3F90(v142, v152);
          v74 = v122 - v123;
          if (__OFSUB__(v122, v123))
          {
            __break(1u);
            goto LABEL_76;
          }

LABEL_79:
          v72 = v152;
          goto LABEL_80;
        case 3uLL:
LABEL_76:
          sub_2279E3F90(v73, v72);
          v74 = 0;
          goto LABEL_80;
        default:
          sub_2279E3F90(v142, v152);
          v74 = v144;
LABEL_80:
          *(v65 + 24) = v74;
          sub_2279E3F90(v73, v72);
          *(v65 + 32) = 2080;
          v124 = 0xE700000000000000;
          v125 = 0x6E776F6E6B6E75;
          if (v140 == 1)
          {
            v125 = 0x6261696C65726E75;
            v124 = 0xEA0000000000656CLL;
          }

          if (v140)
          {
            v126 = v125;
          }

          else
          {
            v126 = 0x656C6261696C6572;
          }

          if (v140)
          {
            v127 = v124;
          }

          else
          {
            v127 = 0xE800000000000000;
          }

          v128 = sub_227A46730(v126, v127, v155);

          *(v65 + 34) = v128;
          *(v65 + 42) = 2080;
          sub_227A71C6C();
          sub_227A589A8(&qword_27D7DC568, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v129 = sub_227A72E1C();
          v131 = v130;
          sub_227A605B0();
          v132 = sub_227A46730(v129, v131, v155);

          *(v65 + 44) = v132;
          v133 = v137;
          _os_log_impl(&dword_227904000, v137, v150, "%s-> Unknown senderID from: %s. Dropping %ld %s bytes[id:%s]", v65, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x22AAA1930](v66, -1, -1);
          MEMORY[0x22AAA1930](v65, -1, -1);
          sub_2279E3F90(v73, v72);
          swift_unknownObjectRelease();

          break;
      }
    }

    else
    {
      sub_2279E3F90(v61, v62);
      swift_unknownObjectRelease();

      sub_2279E3F90(v61, v62);
      sub_2279E3F90(v61, v62);
      sub_227A605B0();
      (*(v58 + 8))(v148, v59);
    }

    return;
  }

  v35 = v26;
  v151 = v32;
  v36 = v149;
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v37 = sub_227A7227C();
  v38 = __swift_project_value_buffer(v37, qword_27D7DE210);
  sub_227A60604(a1);
  sub_2279E3ED0(v35, v29);

  v147 = v38;
  v39 = sub_227A7226C();
  v40 = sub_227A728AC();

  v41 = os_log_type_enabled(v39, v40);
  v42 = v140;
  if (v41)
  {
    v43 = v36;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v155[0] = v45;
    *v44 = 136316162;
    *(v44 + 4) = sub_227A46730(*(v43 + 24), *(v43 + 32), v155);
    *(v44 + 12) = 2048;
    v46 = 0;
    switch(v139)
    {
      case 1uLL:
        LODWORD(v46) = v138 - v35;
        if (!__OFSUB__(v138, v35))
        {
          v46 = v46;
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_96;
      case 2uLL:
        v76 = *(v35 + 16);
        v75 = *(v35 + 24);
        v77 = __OFSUB__(v75, v76);
        v46 = v75 - v76;
        if (!v77)
        {
          goto LABEL_33;
        }

LABEL_96:
        __break(1u);
        goto LABEL_97;
      case 3uLL:
        goto LABEL_33;
      default:
        v46 = v34;
LABEL_33:
        *(v44 + 14) = v46;
        sub_2279E3F90(v35, v152);
        *(v44 + 22) = 2080;
        v78 = 0xE700000000000000;
        v79 = 0x6E776F6E6B6E75;
        if (v42 == 1)
        {
          v79 = 0x6261696C65726E75;
          v78 = 0xEA0000000000656CLL;
        }

        if (v42)
        {
          v80 = v79;
        }

        else
        {
          v80 = 0x656C6261696C6572;
        }

        if (v42)
        {
          v81 = v78;
        }

        else
        {
          v81 = 0xE800000000000000;
        }

        v82 = sub_227A46730(v80, v81, v155);

        *(v44 + 24) = v82;
        *(v44 + 32) = 2080;
        sub_227A71C6C();
        sub_227A589A8(&qword_27D7DC568, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v83 = sub_227A72E1C();
        v85 = v84;
        sub_227A605B0();
        v86 = sub_227A46730(v83, v85, v155);

        *(v44 + 34) = v86;
        *(v44 + 42) = 2080;
        *(v44 + 44) = sub_227A46730(v144, v151, v155);
        _os_log_impl(&dword_227904000, v39, v40, "%s-> Received %ld %s bytes[id:%s] from context: %s", v44, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x22AAA1930](v45, -1, -1);
        MEMORY[0x22AAA1930](v44, -1, -1);

        v36 = v149;
        goto LABEL_42;
    }
  }

  sub_2279E3F90(v35, v29);

  sub_227A605B0();
LABEL_42:
  v87 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
  swift_beginAccess();
  v150 = *(v36 + v87);
  v88 = v150;
  if ((v150 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_227A72A3C();
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    sub_227A7285C();
    v88 = v155[0];
    v89 = v155[1];
    v91 = v155[2];
    v90 = v155[3];
    v4 = v155[4];
  }

  else
  {
    v92 = -1 << *(v150 + 32);
    v89 = v150 + 56;
    v91 = ~v92;
    v93 = -v92;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    else
    {
      v94 = -1;
    }

    v4 = v94 & *(v150 + 56);
    swift_bridgeObjectRetain_n();
    v90 = 0;
  }

  v148 = v91;
  v95 = (v91 + 64) >> 6;
  if ((v88 & 0x8000000000000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  v96 = sub_227A72A7C();
  if (!v96 || (v153 = v96, sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78), swift_dynamicCast(), v97 = v154[0], v98 = v90, v99 = v4, !v154[0]))
  {
LABEL_65:
    sub_2279F34F8(v88);

    v106 = v142;
LABEL_66:
    v107 = v149;

    v108 = v151;

    v109 = sub_227A7226C();
    v110 = sub_227A7289C();

    if (!os_log_type_enabled(v109, v110))
    {
      goto LABEL_91;
    }

    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v154[0] = v112;
    *v111 = 136315394;
    *(v111 + 4) = sub_227A46730(*(v107 + 24), *(v107 + 32), v154);
    *(v111 + 12) = 2080;
    v113 = sub_227A46730(v144, v108, v154);

    *(v111 + 14) = v113;
    v114 = "%s-> Received a message from an unknown sender: %s";
LABEL_68:
    _os_log_impl(&dword_227904000, v109, v110, v114, v111, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAA1930](v112, -1, -1);
    MEMORY[0x22AAA1930](v111, -1, -1);
    sub_2279E3F90(v106, v152);
    goto LABEL_92;
  }

  while (1)
  {
    v102 = sub_227A5B280(v97, &selRef_pseudonym);
    if (!v103)
    {
      goto LABEL_63;
    }

    if (v102 == v144 && v103 == v151)
    {
      break;
    }

    v105 = sub_227A72E5C();

    if (v105)
    {
      goto LABEL_70;
    }

LABEL_63:

    v90 = v98;
    v4 = v99;
    if (v88 < 0)
    {
      goto LABEL_49;
    }

LABEL_52:
    v100 = v90;
    v101 = v4;
    v98 = v90;
    if (!v4)
    {
      while (1)
      {
        v98 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          break;
        }

        if (v98 >= v95)
        {
          goto LABEL_65;
        }

        v101 = *(v89 + 8 * v98);
        ++v100;
        if (v101)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
      goto LABEL_94;
    }

LABEL_56:
    v99 = (v101 - 1) & v101;
    v97 = *(*(v88 + 48) + ((v98 << 9) | (8 * __clz(__rbit64(v101)))));
    if (!v97)
    {
      goto LABEL_65;
    }
  }

LABEL_70:
  sub_2279F34F8(v88);

  sub_227A5B30C(v97);
  v106 = v142;
  if (!v115)
  {
    goto LABEL_66;
  }

  v116 = objc_allocWithZone(GKMatchPacket);
  v117 = v152;
  sub_2279E3EE4(v106, v152);
  v118 = sub_227A58AE8(v106, v117);
  v119 = v149;
  if (v118)
  {
    v120 = v118;

    v121 = sub_227A724BC();

    [v143 transportDidReceivePacket:v120 fromPlayerID:v121 remoteRecipientID:0];
    sub_2279E3F90(v106, v117);

    swift_unknownObjectRelease();
    return;
  }

  v134 = v151;

  v109 = sub_227A7226C();
  v110 = sub_227A728BC();

  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v154[0] = v112;
    *v111 = 136315394;
    *(v111 + 4) = sub_227A46730(*(v119 + 24), *(v119 + 32), v154);
    *(v111 + 12) = 2080;
    v135 = sub_227A46730(v144, v134, v154);

    *(v111 + 14) = v135;
    v114 = "%s-> Failed to pack data when received from sender: %s";
    goto LABEL_68;
  }

LABEL_91:
  sub_2279E3F90(v106, v152);

LABEL_92:
  swift_unknownObjectRelease();
}

uint64_t sub_227A53F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_227A71EFC();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = type metadata accessor for DataMessage(0);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE460, &qword_227AA5E18);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE468, &qword_227AA5E20);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE470, &qword_227AA5E28);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = sub_227A7273C();
  v5[18] = sub_227A7272C();
  v10 = sub_227A726EC();
  v5[19] = v10;
  v5[20] = v9;

  return MEMORY[0x2822009F8](sub_227A541A0, v10, v9);
}

uint64_t sub_227A541A0()
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_1();
  sub_227A589A8(v2, v1, &unk_227AA2478);
  v3 = OUTLINED_FUNCTION_67_2(&qword_27D7DCCD0);
  OUTLINED_FUNCTION_159(v3);
  OUTLINED_FUNCTION_139();
  sub_227A71F3C();
  v4 = OUTLINED_FUNCTION_35_1();
  v5(v4);
  *(v0 + 168) = sub_227A7272C();
  OUTLINED_FUNCTION_14_0(&qword_27D7DE478, &qword_27D7DE470, &qword_227AA5E28);
  swift_task_alloc();
  OUTLINED_FUNCTION_50();
  *(v0 + 176) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_22_2(v6);
  OUTLINED_FUNCTION_146();

  return MEMORY[0x282200308](v8);
}

uint64_t sub_227A542B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_74_2();
  v5 = *(v4 + 168);
  if (v0)
  {
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
LABEL_5:
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A5441C()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_227A5447C, v1, v2);
}

uint64_t sub_227A5447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE480, &qword_227AA5E30);
  if (OUTLINED_FUNCTION_115_1() == 1)
  {
    v13 = OUTLINED_FUNCTION_86_1();
    v14(v13);

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_52_2();
    v24 = OUTLINED_FUNCTION_107_1();
    v25(v24);
    sub_227A52D14(v10, 1, v12);
    v26 = OUTLINED_FUNCTION_109();
    v27(v26);
    OUTLINED_FUNCTION_66_1();
    *(v11 + 168) = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE478, &qword_27D7DE470, &qword_227AA5E28);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    *(v11 + 176) = v28;
    *v28 = v29;
    OUTLINED_FUNCTION_22_2(v28);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v30);
  }
}

uint64_t sub_227A5460C()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 16) = *(v0 + 184);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v2 = MEMORY[0x277D84A98];
  v3 = OUTLINED_FUNCTION_69(v1);
  v4 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v3, v2, v4);
}

uint64_t sub_227A54684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[8] = type metadata accessor for ChannelMigrationActionMessage(0);
  v5[9] = swift_task_alloc();
  v6 = sub_227A71EFC();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE430, &qword_227AA5DD8);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE438, &qword_227AA5DE0);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE440, &qword_227AA5DE8);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = sub_227A7273C();
  v5[21] = sub_227A7272C();
  v10 = sub_227A726EC();
  v5[22] = v10;
  v5[23] = v9;

  return MEMORY[0x2822009F8](sub_227A548B4, v10, v9);
}

uint64_t sub_227A548B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_33_3();
  Strong = swift_weakLoadStrong();
  *(v10 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_16_5();
    sub_227A589A8(&qword_27D7DCA20, type metadata accessor for ChannelMigrationActionMessage, &unk_227AA15EC);
    v12 = OUTLINED_FUNCTION_113_1(&qword_27D7DCA28);
    OUTLINED_FUNCTION_159(v12);
    OUTLINED_FUNCTION_139();
    sub_227A71F3C();
    v13 = OUTLINED_FUNCTION_35_1();
    v14(v13);
    *(v10 + 200) = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE448, &qword_27D7DE440, &qword_227AA5DE8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_26_3(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_4_11(v16);
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v18);
  }

  else
  {

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }
}

uint64_t sub_227A54A54()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_74_2();
  v5 = *(v4 + 200);
  if (v0)
  {
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
LABEL_5:
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A54BB8()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_227A54C18, v1, v2);
}

uint64_t sub_227A54C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE450, &qword_227AA5DF0);
  OUTLINED_FUNCTION_20_2(v11);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_30_2();
    v14(v13);

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_9_9();
    v25(v24);
    v26 = OUTLINED_FUNCTION_92_0();
    sub_227A6055C(v26);
    v27 = OUTLINED_FUNCTION_32_3();
    sub_227A5B3BC(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_93();
    v32(v31);
    OUTLINED_FUNCTION_10_7();
    sub_227A605B0();
    *(v10 + 200) = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE448, &qword_27D7DE440, &qword_227AA5DE8);
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_26_3(v33);
    *v34 = v35;
    OUTLINED_FUNCTION_4_11(v34);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v36);
  }
}

uint64_t sub_227A54DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[8] = type metadata accessor for UpdateParticipantsActionMessage(0);
  v5[9] = swift_task_alloc();
  v6 = sub_227A71EFC();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE400, &qword_227AA5DB8);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE408, &qword_227AA5DC0);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE410, &qword_227AA5DC8);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = sub_227A7273C();
  v5[21] = sub_227A7272C();
  v10 = sub_227A726EC();
  v5[22] = v10;
  v5[23] = v9;

  return MEMORY[0x2822009F8](sub_227A54FE4, v10, v9);
}

uint64_t sub_227A54FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_33_3();
  Strong = swift_weakLoadStrong();
  *(v10 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_16_5();
    sub_227A589A8(&qword_27D7DCCA8, type metadata accessor for UpdateParticipantsActionMessage, &unk_227AA24E4);
    v12 = OUTLINED_FUNCTION_113_1(&qword_27D7DCCB0);
    OUTLINED_FUNCTION_159(v12);
    OUTLINED_FUNCTION_139();
    sub_227A71F3C();
    v13 = OUTLINED_FUNCTION_35_1();
    v14(v13);
    *(v10 + 200) = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE418, &qword_27D7DE410, &qword_227AA5DC8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_26_3(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_4_11(v16);
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v18);
  }

  else
  {

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }
}

uint64_t sub_227A55184()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_74_2();
  v5 = *(v4 + 200);
  if (v0)
  {
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
LABEL_5:
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A552E8()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_227A55348, v1, v2);
}

uint64_t sub_227A55348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE420, &qword_227AA5DD0);
  OUTLINED_FUNCTION_20_2(v11);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_30_2();
    v14(v13);

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_9_9();
    v25(v24);
    v26 = OUTLINED_FUNCTION_92_0();
    sub_227A6055C(v26);
    v27 = OUTLINED_FUNCTION_32_3();
    sub_227A5BB8C(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_93();
    v32(v31);
    OUTLINED_FUNCTION_12_6();
    sub_227A605B0();
    *(v10 + 200) = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE418, &qword_27D7DE410, &qword_227AA5DC8);
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_26_3(v33);
    *v34 = v35;
    OUTLINED_FUNCTION_4_11(v34);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v36);
  }
}

uint64_t sub_227A554E4()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 40) = *(v0 + 216);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v2 = MEMORY[0x277D84A98];
  v3 = OUTLINED_FUNCTION_69(v1);
  v4 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v3, v2, v4);
}

uint64_t sub_227A5555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[8] = type metadata accessor for JoinChannelActionMessage(0);
  v5[9] = swift_task_alloc();
  v6 = sub_227A71EFC();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3D0, &qword_227AA5D98);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3D8, &qword_227AA5DA0);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3E0, &qword_227AA5DA8);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = sub_227A7273C();
  v5[21] = sub_227A7272C();
  v10 = sub_227A726EC();
  v5[22] = v10;
  v5[23] = v9;

  return MEMORY[0x2822009F8](sub_227A5578C, v10, v9);
}

uint64_t sub_227A5578C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_33_3();
  Strong = swift_weakLoadStrong();
  *(v10 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_16_5();
    sub_227A589A8(&qword_27D7DCA80, type metadata accessor for JoinChannelActionMessage, &unk_227AA191C);
    v12 = OUTLINED_FUNCTION_113_1(&qword_27D7DCA88);
    OUTLINED_FUNCTION_159(v12);
    OUTLINED_FUNCTION_139();
    sub_227A71F3C();
    v13 = OUTLINED_FUNCTION_35_1();
    v14(v13);
    *(v10 + 200) = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE3E8, &qword_27D7DE3E0, &qword_227AA5DA8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_26_3(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_4_11(v16);
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v18);
  }

  else
  {

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }
}

uint64_t sub_227A5592C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_74_2();
  v5 = *(v4 + 200);
  if (v0)
  {
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
LABEL_5:
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A55A90()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_227A55AF0, v1, v2);
}

uint64_t sub_227A55AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3F0, &qword_227AA5DB0);
  OUTLINED_FUNCTION_20_2(v11);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_30_2();
    v14(v13);

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_9_9();
    v25(v24);
    OUTLINED_FUNCTION_61_1();
    v26 = OUTLINED_FUNCTION_92_0();
    sub_227A6055C(v26);
    v27 = OUTLINED_FUNCTION_32_3();
    sub_227A5C35C(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_93();
    v32(v31);
    OUTLINED_FUNCTION_14_6();
    sub_227A605B0();
    *(v10 + 200) = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE3E8, &qword_27D7DE3E0, &qword_227AA5DA8);
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_26_3(v33);
    *v34 = v35;
    OUTLINED_FUNCTION_4_11(v34);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v36);
  }
}

uint64_t sub_227A55C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[8] = type metadata accessor for QueryScoresActionMessage(0);
  v5[9] = swift_task_alloc();
  v6 = sub_227A71EFC();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3A0, &qword_227AA5D48);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3A8, &qword_227AA5D50);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3B0, &qword_227AA5D58);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = sub_227A7273C();
  v5[21] = sub_227A7272C();
  v10 = sub_227A726EC();
  v5[22] = v10;
  v5[23] = v9;

  return MEMORY[0x2822009F8](sub_227A55EAC, v10, v9);
}

uint64_t sub_227A55EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_33_3();
  Strong = swift_weakLoadStrong();
  *(v10 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_16_5();
    sub_227A589A8(&qword_27D7DCA40, type metadata accessor for QueryScoresActionMessage, &unk_227AA16AC);
    v12 = OUTLINED_FUNCTION_113_1(&qword_27D7DCA48);
    OUTLINED_FUNCTION_159(v12);
    OUTLINED_FUNCTION_139();
    sub_227A71F3C();
    v13 = OUTLINED_FUNCTION_35_1();
    v14(v13);
    *(v10 + 200) = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE3B8, &qword_27D7DE3B0, &qword_227AA5D58);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_26_3(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_4_11(v16);
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v18);
  }

  else
  {

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }
}

uint64_t sub_227A5604C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_74_2();
  v5 = *(v4 + 200);
  if (v0)
  {
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
LABEL_5:
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A561B0()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_227A56210, v1, v2);
}

uint64_t sub_227A56210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE3C0, &qword_227AA5D60);
  OUTLINED_FUNCTION_20_2(v11);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_30_2();
    v14(v13);

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_9_9();
    v25(v24);
    OUTLINED_FUNCTION_58_2();
    v26 = OUTLINED_FUNCTION_92_0();
    sub_227A6055C(v26);
    v27 = OUTLINED_FUNCTION_32_3();
    sub_227A5CB2C(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_93();
    v32(v31);
    OUTLINED_FUNCTION_6_10();
    sub_227A605B0();
    *(v10 + 200) = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE3B8, &qword_27D7DE3B0, &qword_227AA5D58);
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_26_3(v33);
    *v34 = v35;
    OUTLINED_FUNCTION_4_11(v34);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v36);
  }
}

uint64_t sub_227A5639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[8] = type metadata accessor for QueryScoresResponseActionMessage(0);
  v5[9] = swift_task_alloc();
  v6 = sub_227A71EFC();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE358, &qword_227AA5D00);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE360, &qword_227AA5D08);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE368, &unk_227AA5D10);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = sub_227A7273C();
  v5[21] = sub_227A7272C();
  v10 = sub_227A726EC();
  v5[22] = v10;
  v5[23] = v9;

  return MEMORY[0x2822009F8](sub_227A565CC, v10, v9);
}

uint64_t sub_227A565CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_33_3();
  Strong = swift_weakLoadStrong();
  *(v10 + 192) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_16_5();
    sub_227A589A8(&qword_27D7DCA60, type metadata accessor for QueryScoresResponseActionMessage, &unk_227AA176C);
    v12 = OUTLINED_FUNCTION_113_1(&qword_27D7DCA68);
    OUTLINED_FUNCTION_159(v12);
    OUTLINED_FUNCTION_139();
    sub_227A71F3C();
    v13 = OUTLINED_FUNCTION_35_1();
    v14(v13);
    *(v10 + 200) = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE370, &qword_27D7DE368, &unk_227AA5D10);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_26_3(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_4_11(v16);
    OUTLINED_FUNCTION_146();

    return MEMORY[0x282200308](v18);
  }

  else
  {

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_146();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }
}

uint64_t sub_227A5676C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_74_2();
  v5 = *(v4 + 200);
  if (v0)
  {
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
LABEL_5:
    swift_getObjectType();
    sub_227A726EC();
    OUTLINED_FUNCTION_42_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_2();
LABEL_7:
  OUTLINED_FUNCTION_73_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227A568D0()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_227A56930, v1, v2);
}

uint64_t sub_227A56930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_60();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE378, &unk_227AA5D20);
  OUTLINED_FUNCTION_20_2(v11);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_30_2();
    v14(v13);

    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_79_1();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_9_9();
    v25(v24);
    OUTLINED_FUNCTION_57_2();
    v26 = OUTLINED_FUNCTION_92_0();
    sub_227A6055C(v26);
    v27 = OUTLINED_FUNCTION_32_3();
    sub_227A5D2E8(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_93();
    v32(v31);
    OUTLINED_FUNCTION_5_11();
    sub_227A605B0();
    *(v10 + 200) = sub_227A7272C();
    OUTLINED_FUNCTION_14_0(&qword_27D7DE370, &qword_27D7DE368, &unk_227AA5D10);
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_26_3(v33);
    *v34 = v35;
    OUTLINED_FUNCTION_4_11(v34);
    OUTLINED_FUNCTION_79_1();

    return MEMORY[0x282200308](v36);
  }
}

uint64_t sub_227A56ABC(uint64_t a1)
{
  v2 = v1;
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v4 = sub_227A7227C();
  __swift_project_value_buffer(v4, qword_27D7DE210);

  v5 = sub_227A7226C();
  v6 = sub_227A7289C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_227A46730(*(v2 + 24), *(v2 + 32), &v15);
    *(v7 + 12) = 2080;
    v9 = MEMORY[0x22AA9FF60](a1, MEMORY[0x277D837D0]);
    v11 = sub_227A46730(v9, v10, &v15);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_227904000, v5, v6, "%s-> Adding handles: %s to transport context.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAA1930](v8, -1, -1);
    MEMORY[0x22AAA1930](v7, -1, -1);
  }

  v13 = sub_227A17C58(v12);
  sub_227A56CF0(v13);

  sub_227A49FA0();
}

uint64_t sub_227A56CF0(uint64_t a1)
{
  swift_beginAccess();

  return sub_227A597F8(v2, a1);
}

uint64_t sub_227A56D5C(uint64_t a1)
{
  v2 = v1;
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v4 = sub_227A7227C();
  __swift_project_value_buffer(v4, qword_27D7DE210);

  v5 = sub_227A7226C();
  v6 = sub_227A7289C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_227A46730(*(v2 + 24), *(v2 + 32), &v15);
    *(v7 + 12) = 2080;
    v9 = MEMORY[0x22AA9FF60](a1, MEMORY[0x277D837D0]);
    v11 = sub_227A46730(v9, v10, &v15);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_227904000, v5, v6, "%s-> Removing handles: %s from transport context.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAA1930](v8, -1, -1);
    MEMORY[0x22AAA1930](v7, -1, -1);
  }

  v13 = sub_227A17C58(v12);
  sub_227A56CF0(v13);

  sub_227A49FA0();
}

uint64_t sub_227A56F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE380, &qword_227AA5D30);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE488, &qword_227AA5E48);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE490, &qword_227AA5E50);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A57104, 0, 0);
}

uint64_t sub_227A57104()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_36_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    sub_227A4C164(&qword_27D7DE498, &qword_227AA5E60, type metadata accessor for QueryScoresActionMessage, sub_227A60874);
    sub_227A7278C();
    v2 = OUTLINED_FUNCTION_93_1();
    v3(v2);
    swift_task_alloc();
    OUTLINED_FUNCTION_50();
    *(v0 + 112) = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_56_2(v4);
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_161();

    return MEMORY[0x2822003E8](v6);
  }

  else
  {

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_161();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_227A5726C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v1 = *v0;
  OUTLINED_FUNCTION_32();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227A57354()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[6];
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, ScoresActionMessage) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    OUTLINED_FUNCTION_41();

    return v3();
  }

  else
  {
    v5 = (v1 + *(ScoresActionMessage + 20));
    v6 = *v5;
    v7 = v5[1];
    v0[15] = v7;

    OUTLINED_FUNCTION_6_10();
    sub_227A605B0();
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_227A574AC;

    return sub_227A5761C(v6, v7);
  }
}

uint64_t sub_227A574AC()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  OUTLINED_FUNCTION_32();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 112) = v4;
  *v4 = v3;
  OUTLINED_FUNCTION_56_2(v4);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_161();

  return MEMORY[0x2822003E8](v5);
}

uint64_t sub_227A5761C(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  v3[26] = ScoresResponseActionMessage;
  v5 = *(ScoresResponseActionMessage - 8);
  v3[27] = v5;
  v3[28] = *(v5 + 64);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A57718, 0, 0);
}

uint64_t sub_227A578CC()
{
  OUTLINED_FUNCTION_31();

  v0 = OUTLINED_FUNCTION_47();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_227A57928()
{
  v76 = v0;
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v5 = v0[25];
  v4 = v0[26];

  sub_227A71C5C();
  v6 = (v3 + v4[5]);
  *v6 = v2;
  v6[1] = v1;
  *(v3 + v4[7]) = 0;
  *(v3 + v4[6]) = -64;
  v7 = OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_transportParticipants;
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v8 = *(v5 + v7);
  v71 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_132_0();
    swift_unknownObjectRetain();
    sub_227A72A3C();
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    OUTLINED_FUNCTION_76();
    sub_227A7285C();
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[12];
  }

  else
  {
    OUTLINED_FUNCTION_55_1();
    v9 = v8 + 56;
    v10 = ~v13;
    OUTLINED_FUNCTION_68_2();
    v12 = v14 & v15;
    swift_bridgeObjectRetain_n();
    v11 = 0;
  }

  v72 = v0[24];
  v70 = v10;
  for (i = v0; ; v0 = i)
  {
    if (v8 < 0)
    {
      v22 = sub_227A72A7C();
      if (!v22 || (v0[22] = v22, sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78), swift_dynamicCast(), v21 = v0[21], v19 = v12, !v21))
      {
LABEL_21:

        v27 = OUTLINED_FUNCTION_93_1();
        sub_2279F34F8(v27);

        if (qword_27D7DC4E0 == -1)
        {
LABEL_22:
          v28 = sub_227A7227C();
          __swift_project_value_buffer(v28, qword_27D7DE210);
          OUTLINED_FUNCTION_13();

          v29 = sub_227A7226C();
          sub_227A728BC();

          if (OUTLINED_FUNCTION_143())
          {
            v30 = v0[25];
            OUTLINED_FUNCTION_29_2();
            v31 = swift_slowAlloc();
            OUTLINED_FUNCTION_55_2();
            v32 = swift_slowAlloc();
            v75[0] = v32;
            *v31 = 136315138;
            *(v31 + 4) = sub_227A46730(*(v30 + 24), *(v30 + 32), v75);
            OUTLINED_FUNCTION_57();
            _os_log_impl(v33, v34, v35, v36, v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v32);
            OUTLINED_FUNCTION_13_2();
            MEMORY[0x22AAA1930]();
            v37 = OUTLINED_FUNCTION_4_5();
            MEMORY[0x22AAA1930](v37);
          }

          OUTLINED_FUNCTION_5_11();
          sub_227A605B0();
LABEL_25:

          OUTLINED_FUNCTION_41();
          OUTLINED_FUNCTION_68_1();

          __asm { BRAA            X1, X16 }
        }

LABEL_37:
        OUTLINED_FUNCTION_0_15();
        swift_once();
        goto LABEL_22;
      }
    }

    else
    {
      v16 = v11;
      if (!v12)
      {
        while (1)
        {
          v11 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v11 >= ((v10 + 64) >> 6))
          {
            goto LABEL_21;
          }

          ++v16;
          if (*(v9 + 8 * v11))
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_10:
      OUTLINED_FUNCTION_43_1();
      v19 = v18 & v17;
      v21 = *(*(v8 + 48) + ((v11 << 9) | (8 * v20)));
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    v23 = sub_227A5B280(v21, &selRef_pseudonym);
    if (v24)
    {
      break;
    }

LABEL_20:

    v12 = v19;
  }

  if (v23 != i[23] || v24 != v72)
  {
    v26 = sub_227A72E5C();

    if (v26)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

LABEL_29:
  v40 = OUTLINED_FUNCTION_93_1();
  sub_2279F34F8(v40);

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v41 = i;
  v42 = i[33];
  v43 = sub_227A7227C();
  v44 = __swift_project_value_buffer(v43, qword_27D7DE210);
  OUTLINED_FUNCTION_7_11();
  sub_227A60604(v42);

  v45 = v21;
  v73 = v44;
  v46 = sub_227A7226C();
  v47 = sub_227A7289C();

  v48 = os_log_type_enabled(v46, v47);
  v49 = i[32];
  if (v48)
  {
    v50 = i[25];
    OUTLINED_FUNCTION_55_2();
    v51 = swift_slowAlloc();
    v52 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_50_2();
    v72 = swift_slowAlloc();
    v75[0] = v72;
    *v51 = 136315650;
    *(v51 + 4) = sub_227A46730(*(v50 + 24), *(v50 + 32), v75);
    *(v51 + 12) = 2080;
    OUTLINED_FUNCTION_7_11();
    sub_227A60604(v49);
    OUTLINED_FUNCTION_30_1();
    sub_227A7251C();
    OUTLINED_FUNCTION_5_11();
    sub_227A605B0();
    v53 = OUTLINED_FUNCTION_93_1();
    v56 = sub_227A46730(v53, v54, v55);

    *(v51 + 14) = v56;
    *(v51 + 22) = 2112;
    *(v51 + 24) = v45;
    *v52 = v21;
    v57 = v45;
    _os_log_impl(&dword_227904000, v46, v47, "%s-> Sending leader query response message: %s, only to %@", v51, 0x20u);
    sub_2279F3774(v52, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    v41 = i;
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {

    OUTLINED_FUNCTION_5_11();
    sub_227A605B0();
  }

  v58 = v41[33];
  v41[16] = v41[26];
  v41[17] = sub_227A589A8(&qword_27D7DCA78, type metadata accessor for QueryScoresResponseActionMessage, &unk_227AA17CC);
  __swift_allocate_boxed_opaque_existential_1(v41 + 13);
  OUTLINED_FUNCTION_7_11();
  sub_227A60604(v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC658, &qword_227AA4120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA00F0;
  result = sub_227A5B280(v45, &selRef_playerID);
  if (v61)
  {
    v62 = v41[30];
    v63 = v41[25];
    *(inited + 32) = result;
    *(inited + 40) = v61;
    v64 = sub_227A59668(inited);
    OUTLINED_FUNCTION_7_11();
    v65 = OUTLINED_FUNCTION_93_1();
    sub_227A60604(v65);
    v66 = swift_allocObject();
    *(v66 + 16) = v63;
    OUTLINED_FUNCTION_57_2();
    sub_227A6055C(v62);

    sub_227A4843C((v41 + 13), v67, v68, v64, 0, sub_227A607D8, v66, v69, v70, v71, v72, v73, i, v75[0], v75[1], v75[2], v75[3], v75[4], v75[5], v75[6]);
    OUTLINED_FUNCTION_5_11();
    sub_227A605B0();

    __swift_destroy_boxed_opaque_existential_0Tm(v41 + 13);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_227A58280(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_227A5B04C(a1);
  }

  else
  {

    sub_2279F06B8(a1, a2);
  }
}

uint64_t sub_227A582F4()
{
  OUTLINED_FUNCTION_31();
  v1 = sub_227A4B9D0();
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_227A5835C, v1, 0);
}

uint64_t sub_227A5835C()
{
  OUTLINED_FUNCTION_31();
  sub_227A2F25C();

  OUTLINED_FUNCTION_41();

  return v0();
}

void sub_227A583BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_96_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10(0);
  v12 = OUTLINED_FUNCTION_149(v11);
  MEMORY[0x28223BE20](v12);
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v13 = sub_227A7227C();
  __swift_project_value_buffer(v13, qword_27D7DE210);
  sub_227A60604(v5);

  v14 = v9;
  v15 = sub_227A7226C();
  v16 = sub_227A7289C();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_55_2();
    v28 = v3;
    v17 = swift_slowAlloc();
    v18 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_50_2();
    v29 = swift_slowAlloc();
    *v17 = 136315650;
    v19 = sub_227A46730(*(v7 + 24), *(v7 + 32), &v29);
    OUTLINED_FUNCTION_98_1(v19);
    sub_227A71C6C();
    OUTLINED_FUNCTION_3_12();
    sub_227A589A8(v20, v21, MEMORY[0x277CC9628]);
    v22 = sub_227A72E1C();
    v24 = v23;
    sub_227A605B0();
    v25 = sub_227A46730(v22, v24, &v29);

    *(v17 + 14) = v25;
    *(v17 + 22) = 2112;
    v26 = v9;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v27;
    *v18 = v27;
    _os_log_impl(&dword_227904000, v15, v16, v28, v17, 0x20u);
    sub_2279F3774(v18, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {

    sub_227A605B0();
  }

  OUTLINED_FUNCTION_91();
}

uint64_t type metadata accessor for FastSyncChannel(uint64_t a1)
{
  result = qword_27D7DE2E8;
  if (!qword_27D7DE2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227A58698(uint64_t a1)
{
  sub_227A58788(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_227A58788(uint64_t a1)
{
  if (!qword_27D7DE2F8)
  {
    type metadata accessor for FastSyncActivity(255);
    sub_227A589A8(&qword_27D7DC990, type metadata accessor for FastSyncActivity, &protocol conformance descriptor for FastSyncActivity);
    v1 = sub_227A7201C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7DE2F8);
    }
  }
}

uint64_t sub_227A58828(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227A58868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_227A58950(uint64_t a1)
{
  result = sub_227A589A8(&qword_27D7DE320, type metadata accessor for FastSyncChannel, &unk_227AA5BF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227A589A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227A589F0(uint64_t a1)
{
  result = sub_227A589A8(&qword_27D7DE328, type metadata accessor for FastSyncChannel, &unk_227AA5C18);
  *(a1 + 8) = result;
  return result;
}

id sub_227A58A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_227A724BC();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_227A724BC();

LABEL_6:
  v8 = [v4 initWithPlayerID:v6 pseudonym:v7];

  return v8;
}

id sub_227A58AE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_227A71B8C();
    sub_2279E3F90(a1, a2);
  }

  v6 = [v2 initWithMessage_];

  return v6;
}

void sub_227A58B5C()
{
  v1 = OUTLINED_FUNCTION_105_0();
  ScoresActionMessage = type metadata accessor for QueryScoresActionMessage(v1);
  OUTLINED_FUNCTION_149(ScoresActionMessage);
  OUTLINED_FUNCTION_102_1();
  sub_227A583BC(v0, v3);
}

uint64_t sub_227A58BF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_227A58C28(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_227AA59A0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_227A58C8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_96_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v38 = sub_227A720EC();
  OUTLINED_FUNCTION_92();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_2();
  v37 = v14 - v13;
  if (!v5)
  {
LABEL_27:

LABEL_28:
    OUTLINED_FUNCTION_91();
    return;
  }

  if (*(v3 + 16) == v5)
  {
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD098, &qword_227AA3630);
  v15 = sub_227A72AFC();
  v16 = v15;
  if (v7 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v9;
  }

  v18 = 0;
  v19 = v15 + 56;
  v34 = v3;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v35 = (v17 - 1) & v17;
LABEL_16:
    v36 = *(v11 + 72);
    (*(v11 + 16))(v37, *(v3 + 48) + v36 * (v20 | (v18 << 6)), v38);
    sub_227A589A8(&qword_27D7DC560, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
    v24 = sub_227A7244C();
    v25 = -1 << *(v16 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v19 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v19 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v19 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v19 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    (*(v11 + 32))(*(v16 + 48) + v28 * v36, v37, v38);
    ++*(v16 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v3 = v34;
    v17 = v35;
    if (!v5)
    {
      goto LABEL_27;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= v7)
    {
      goto LABEL_27;
    }

    ++v21;
    if (v9[v18])
    {
      OUTLINED_FUNCTION_43_1();
      v35 = v23 & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_227A58F80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD088, &unk_227AA5EC0);
  result = sub_227A72AFC();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_227A7298C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_227A5916C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_227A72A4C())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_227A72A8C();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_227A5926C(uint64_t a1)
{
  if (sub_227A06998())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD088, &unk_227AA5EC0);
    v2 = sub_227A72AFC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v20 = sub_227A06998();
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = a1;
    v19 = a1 & 0xC000000000000001;
    v17 = a1 + 32;
    while (1)
    {
      sub_227A133F4();
      result = v19 ? MEMORY[0x22AAA03F0](v3, a1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_227A7298C();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_227A7299C();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      a1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_227A59430(uint64_t a1)
{
  if (sub_227A06998())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE518, qword_227AA5F20);
    v2 = sub_227A72AFC();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v18 = sub_227A06998();
  if (v18)
  {
    v3 = 0;
    v4 = v2 + 56;
    v16 = a1;
    v17 = a1 & 0xC000000000000001;
    v15 = a1 + 32;
    while (1)
    {
      sub_227A133F4();
      if (v17)
      {
        result = MEMORY[0x22AAA03F0](v3, a1);
        v6 = result;
      }

      else
      {
        v6 = *(v15 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_227A722BC();
      sub_227A589A8(&qword_27D7DE520, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      result = sub_227A7244C();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_227A589A8(&qword_27D7DE528, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
        if (sub_227A7248C())
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v13 = *(v2 + 16);
      v7 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v14;
LABEL_17:
      a1 = v16;
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_227A59668(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD020, &qword_227AA35B0);
  result = sub_227A72AFC();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_227A72F2C();

    sub_227A7255C();
    result = sub_227A72F4C();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_227A72E5C() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_227A597F8(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v27 = MEMORY[0x277D84FA0];

    sub_227A72A3C();
    while (1)
    {
LABEL_3:
      if (!sub_227A72A7C())
      {
        swift_bridgeObjectRelease_n();

        return v4;
      }

      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      swift_dynamicCast();
      result = sub_227A5B280(v26, &selRef_pseudonym);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      if (*(a2 + 16))
      {
        v8 = result;
        sub_227A72F2C();
        sub_227A7255C();
        v9 = sub_227A72F4C();
        v10 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v11 = v9 & v10;
          if (((*(a2 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
          {
            break;
          }

          v12 = (*(a2 + 48) + 16 * v11);
          if (*v12 != v8 || v7 != v12[1])
          {
            v14 = sub_227A72E5C();
            v9 = v11 + 1;
            if ((v14 & 1) == 0)
            {
              continue;
            }
          }

          v15 = *(v4 + 16);
          if (*(v4 + 24) <= v15)
          {
            sub_227A21A18(v15 + 1);
          }

          v4 = v27;
          result = sub_227A7298C();
          v16 = v27 + 56;
          v17 = -1 << *(v27 + 32);
          v18 = result & ~v17;
          v19 = v18 >> 6;
          if (((-1 << v18) & ~*(v27 + 56 + 8 * (v18 >> 6))) != 0)
          {
            v20 = __clz(__rbit64((-1 << v18) & ~*(v27 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
            *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
            *(*(v27 + 48) + 8 * v20) = v26;
            ++*(v27 + 16);
            goto LABEL_3;
          }

          v21 = 0;
          v22 = (63 - v17) >> 6;
          while (++v19 != v22 || (v21 & 1) == 0)
          {
            v23 = v19 == v22;
            if (v19 == v22)
            {
              v19 = 0;
            }

            v21 |= v23;
            v24 = *(v16 + 8 * v19);
            if (v24 != -1)
            {
              v20 = __clz(__rbit64(~v24)) + (v19 << 6);
              goto LABEL_25;
            }
          }

          __break(1u);
          goto LABEL_29;
        }
      }
    }

LABEL_29:
    __break(1u);
  }

  else
  {

    v25 = sub_227A5A3A8(a1, a2);

    return v25;
  }

  return result;
}

void *sub_227A59AC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = *MEMORY[0x277D85DE8];
  v6 = sub_227A720EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v41 = v3;
    v39 = &v39;
    MEMORY[0x28223BE20](v12);
    v40 = v10;
    v42 = &v39 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_227A58C28(0, v10, v42);
    v48 = 0;
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = v7 + 16;
    v19 = v7;
    v7 = a2 + 56;
    v44 = v18;
    v45 = v19;
    v43 = (v19 + 8);
    v46 = v6;
    v47 = a1;
LABEL_6:
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v50 = (v16 - 1) & v16;
LABEL_13:
      v23 = v20 | (v10 << 6);
      v24 = *(a1 + 48);
      v25 = *(v45 + 72);
      v49 = v23;
      v11 = v51;
      (*(v45 + 16))(v51, v24 + v25 * v23, v6);
      v26 = sub_227A720DC();
      v28 = v27;
      if (*(a2 + 16))
      {
        v3 = v26;
        sub_227A72F2C();
        sub_227A7255C();
        v29 = sub_227A72F4C();
        v30 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v11 = v29 & v30;
          if (((*(v7 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
          {
            break;
          }

          v31 = (*(a2 + 48) + 16 * v11);
          if (*v31 != v3 || v31[1] != v28)
          {
            v33 = sub_227A72E5C();
            v29 = v11 + 1;
            if ((v33 & 1) == 0)
            {
              continue;
            }
          }

          v6 = v46;
          (*v43)(v51, v46);
          *(v42 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
          a1 = v47;
          v34 = __OFADD__(v48++, 1);
          v16 = v50;
          if (v34)
          {
            goto LABEL_28;
          }

          goto LABEL_6;
        }
      }

      v6 = v46;
      (*v43)(v51, v46);
      a1 = v47;
      v16 = v50;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        sub_227A58C8C(v42, v40);
        v36 = v35;
        swift_bridgeObjectRelease_n();
        return v36;
      }

      v22 = *(v13 + 8 * v10);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v50 = (v22 - 1) & v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v38 = swift_slowAlloc();

  v36 = sub_227A5AF8C(v38, v10, a1, a2, MEMORY[0x277D84FD0], sub_227A5A744, MEMORY[0x277D84FC0]);

  MEMORY[0x22AAA1930](v38, -1, -1);
  swift_bridgeObjectRelease_n();
  return v36;
}

void *sub_227A59F4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = *MEMORY[0x277D85DE8];
  v46 = sub_227A720EC();
  v6 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;
  v41 = a2;

  if (v9 > 0xD)
  {
    goto LABEL_31;
  }

  while (2)
  {
    v38 = v3;
    v36 = &v36;
    MEMORY[0x28223BE20](v12);
    v37 = v10;
    v39 = &v36 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_227A58C28(0, v10, v39);
    v40 = 0;
    v13 = 0;
    v44 = v6;
    v45 = a1;
    v15 = *(a1 + 56);
    a1 += 56;
    v14 = v15;
    v16 = 1 << *(a1 - 24);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v14;
    v3 = (v16 + 63) >> 6;
    v42 = (v6 + 8);
    v43 = v6 + 16;
    while (v18)
    {
      v19 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_12:
      v6 = v19 | (v13 << 6);
      (*(v44 + 16))(v8, *(v45 + 48) + *(v44 + 72) * v6, v46);
      v11 = sub_227A720DC();
      v23 = v22;

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        v10 = sub_227A720DC();
        v11 = v25;
        v26 = sub_227A4C78C();
        if (v27)
        {
          if (v10 == v26 && v27 == v11)
          {

            goto LABEL_23;
          }

          v10 = sub_227A72E5C();

          (*v42)(v8, v46);
          if ((v10 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {

          (*v42)(v8, v46);
LABEL_25:
          *(v39 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
          if (__OFADD__(v40++, 1))
          {
            __break(1u);
LABEL_28:
            sub_227A58C8C(v39, v37);
            v31 = v30;

            return v31;
          }
        }
      }

      else
      {
LABEL_23:
        (*v42)(v8, v46);
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v3)
      {
        goto LABEL_28;
      }

      v21 = *(a1 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v18 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v33 = swift_slowAlloc();
  v34 = a1;
  v35 = v41;

  v31 = sub_227A5AF8C(v33, v10, v34, v35, MEMORY[0x277D85018], sub_227A5AA50, MEMORY[0x277D85010]);

  MEMORY[0x22AAA1930](v33, -1, -1);

  return v31;
}

uint64_t sub_227A5A3A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v43 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v36 = v3;
    v34[1] = v34;
    MEMORY[0x28223BE20](v10);
    v35 = v8;
    v37 = (v34 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_227A58C28(0, v8, v37);
    v38 = v5;
    v39 = 0;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = a2;
    v42 = a2 + 56;
LABEL_6:
    while (v14)
    {
      v17 = __clz(__rbit64(v14));
      v41 = (v14 - 1) & v14;
LABEL_13:
      v20 = v17 | (v11 << 6);
      v21 = *(v5 + 48);
      v40 = v20;
      v22 = *(v21 + 8 * v20);
      v23 = sub_227A5B280(v22, &selRef_pseudonym);
      if (!v24)
      {
        __break(1u);
      }

      v9 = v24;
      if (*(v16 + 16))
      {
        a2 = v23;
        sub_227A72F2C();
        sub_227A7255C();
        v25 = sub_227A72F4C();
        v26 = ~(-1 << *(v16 + 32));
        while (1)
        {
          v3 = v25 & v26;
          if (((*(v42 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
          {
            break;
          }

          v27 = (*(v16 + 48) + 16 * v3);
          if (*v27 != a2 || v9 != v27[1])
          {
            v29 = sub_227A72E5C();
            v25 = v3 + 1;
            if ((v29 & 1) == 0)
            {
              continue;
            }
          }

          v5 = v38;
          *(v37 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
          v30 = __OFADD__(v39++, 1);
          v14 = v41;
          if (v30)
          {
            goto LABEL_29;
          }

          goto LABEL_6;
        }
      }

      v5 = v38;
      v14 = v41;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        v31 = sub_227A58F80(v37, v35, v39, v5);
        goto LABEL_27;
      }

      v19 = *(v8 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v31 = sub_227A5AF8C(v33, v8, v5, a2, MEMORY[0x277D84FD0], sub_227A5AD54, MEMORY[0x277D84FC0]);

  MEMORY[0x22AAA1930](v33, -1, -1);
LABEL_27:
  swift_bridgeObjectRelease_n();
  return v31;
}