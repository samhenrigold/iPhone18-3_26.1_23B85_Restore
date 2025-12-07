uint64_t sub_231CC66B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_231CC51F0(a5, a4);
  sub_231E12220();
  sub_231E116E0();
  result = sub_231E12250();
  v8 = 1 << *a1;
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = v10 & result;
    v12 = sub_231E0FBC0();

    if (!v12)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v15 = v12;
      v13 = sub_231E0FC00();
      if ((v14 & 1) == 0 && v13 == a5)
      {
        break;
      }

      sub_231E0FC20();
    }

    while (!v15)
    {
LABEL_6:
      __break(1u);
    }

    return v11;
  }

  return result;
}

void *sub_231CC684C(void *a1, int64_t a2, char a3)
{
  result = sub_231CC63F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_231CC686C(char *a1, int64_t a2, char a3)
{
  result = sub_231CC65A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_231CC688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 8);
  while (a4 != v7)
  {
    v9 = *(v8 - 1) == a1 && *v8 == a2;
    if (v9 || (sub_231E12100() & 1) != 0)
    {
      return v7;
    }

    ++v7;
    v8 += 2;
  }

  return 0;
}

uint64_t sub_231CC6918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  v9 = a4[1];
  if (a3)
  {

    v11 = sub_231CC5E18(v8, v9, a1, a2, (a3 + 16), a3 + 32);
    v13 = v12;
    v15 = v14;
  }

  else
  {
    result = sub_231CC688C(*a4, a4[1], a1, a2);
    v11 = result;
    v13 = v17;
    v15 = 0;
  }

  *a5 = v11;
  *(a5 + 8) = v13 & 1;
  *(a5 + 16) = v15;
  return result;
}

uint64_t sub_231CC69F4(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CC6A58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_26_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_231CC6AA8()
{
  OUTLINED_FUNCTION_29();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_7(v1);

  return v3(v2);
}

uint64_t sub_231CC6B44()
{
  OUTLINED_FUNCTION_29();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_7(v1);

  return v3(v2);
}

uint64_t OUTLINED_FUNCTION_16_3()
{

  return sub_231E12190();
}

void OUTLINED_FUNCTION_22_0(__n128 a1)
{
  *v1 = a1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_231CC6C88(void *a1, uint64_t a2)
{
  v4 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - v14;
  v16 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
LABEL_6:

    return a2;
  }

  sub_231CC2C10(a1);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_231CC7038(v15);
    v22 = sub_231CB4EEC();
    (*(v6 + 16))(v10, v22, v4);
    v23 = sub_231E10E10();
    v24 = sub_231E11AD0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_231CAE000, v23, v24, "Could not fall back to me card or account information for recipient details", v25, 2u);
      MEMORY[0x23837E1D0](v25, -1, -1);
    }

    (*(v6 + 8))(v10, v4);
    goto LABEL_6;
  }

  v33 = *(v18 + 32);
  v33(v21, v15, v16);
  v27 = sub_231CB4EEC();
  (*(v6 + 16))(v12, v27, v4);
  v28 = sub_231E10E10();
  v29 = sub_231E11AC0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_231CAE000, v28, v29, "Falling back to me card or account information for recipient details", v30, 2u);
    MEMORY[0x23837E1D0](v30, -1, -1);
  }

  (*(v6 + 8))(v12, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
  v31 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  a2 = swift_allocObject();
  *(a2 + 16) = xmmword_231E138E0;
  v33((a2 + v31), v21, v16);
  return a2;
}

uint64_t sub_231CC7038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231CC7180()
{
  v5 = &unk_2846F07A0;
  v0 = sub_231CC7270();
  v6 = v0;
  LOBYTE(v4[0]) = 8;
  v1 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v4);
  if (v1)
  {
    return 0;
  }

  v5 = &unk_2846F07A0;
  v6 = v0;
  LOBYTE(v4[0]) = 3;
  v3 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v4);
  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_231CC7218(char a1)
{
  v4[3] = &unk_2846F07A0;
  v4[4] = sub_231CC7270();
  LOBYTE(v4[0]) = a1;
  v2 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_231CC7270()
{
  result = qword_2814CCA70;
  if (!qword_2814CCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CCA70);
  }

  return result;
}

uint64_t sub_231CC731C()
{
  sub_231E12220();
  MEMORY[0x23837D730](0);
  return sub_231E12250();
}

uint64_t sub_231CC7370(uint64_t a1)
{
  sub_231E12220();
  MEMORY[0x23837D730](0);
  return sub_231E12250();
}

unint64_t sub_231CC73B4()
{
  result = qword_27DD741C8;
  if (!qword_27DD741C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD741C8);
  }

  return result;
}

unint64_t sub_231CC740C()
{
  result = qword_27DD741D0;
  if (!qword_27DD741D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD741D0);
  }

  return result;
}

unint64_t sub_231CC7464()
{
  result = qword_27DD741D8;
  if (!qword_27DD741D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD741D8);
  }

  return result;
}

uint64_t sub_231CC74D8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_231CC7560(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationXPCServer.Entitlement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_231CC76C0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InMemoryContactNameCache.InMemoryContactNameCacheError(unsigned int *a1, int a2)
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

_BYTE *sub_231CC77EC(_BYTE *result, int a2, int a3)
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

id sub_231CC78F0()
{
  v3[3] = &unk_2846F08C0;
  v3[4] = sub_231CC7FD4();
  v0 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v3);
  v1 = MEMORY[0x277CCA1A0];
  if ((v0 & 1) == 0)
  {
    v1 = MEMORY[0x277CCA190];
  }

  result = *v1;
  qword_2814CE750 = result;
  return result;
}

uint64_t *sub_231CC7964()
{
  if (qword_2814CDF98 != -1)
  {
    swift_once();
  }

  return &qword_2814CE750;
}

uint64_t *sub_231CC79CC()
{
  if (qword_2814CDF88 != -1)
  {
    swift_once();
  }

  return &qword_2814CE740;
}

uint64_t *sub_231CC7A34()
{
  if (qword_2814CDF90 != -1)
  {
    swift_once();
  }

  return &qword_2814CE748;
}

uint64_t *sub_231CC7A9C()
{
  if (qword_2814CDF80 != -1)
  {
    swift_once();
  }

  return &qword_2814CE738;
}

unint64_t sub_231CC7AEC()
{
  result = sub_231DE8A04(1);
  qword_2814CE7C8 = result;
  unk_2814CE7D0 = v1;
  return result;
}

uint64_t *sub_231CC7B14()
{
  if (qword_2814CE0D0 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_2814CE0D0);
  }

  return &qword_2814CE7C8;
}

uint64_t sub_231CC7B54()
{
  if (qword_2814CE0D0 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_2814CE0D0);
  }

  return OUTLINED_FUNCTION_4_2(unk_2814CE7D0, qword_2814CE7E0);
}

void *sub_231CC7BA0()
{
  if (qword_2814CE100 != -1)
  {
    swift_once();
  }

  return qword_2814CE7E0;
}

unint64_t sub_231CC7BF0()
{
  result = sub_231DE8A04(0);
  qword_2814CE788 = result;
  unk_2814CE790 = v1;
  return result;
}

uint64_t *sub_231CC7C18()
{
  if (qword_2814CE0B0 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_2814CE0B0);
  }

  return &qword_2814CE788;
}

uint64_t sub_231CC7C58()
{
  if (qword_2814CE0B0 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_2814CE0B0);
  }

  return OUTLINED_FUNCTION_4_2(unk_2814CE790, qword_2814CE798);
}

void *sub_231CC7CA4()
{
  if (qword_2814CE0B8 != -1)
  {
    swift_once();
  }

  return qword_2814CE798;
}

unint64_t sub_231CC7CF4()
{
  result = sub_231DE8A04(2);
  qword_2814CE7A8 = result;
  unk_2814CE7B0 = v1;
  return result;
}

uint64_t *sub_231CC7D1C()
{
  if (qword_2814CE0C0 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_2814CE0C0);
  }

  return &qword_2814CE7A8;
}

uint64_t sub_231CC7D5C()
{
  if (qword_2814CE0C0 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_2814CE0C0);
  }

  return OUTLINED_FUNCTION_4_2(unk_2814CE7B0, qword_2814CE7B8);
}

void *sub_231CC7DA8()
{
  if (qword_2814CE0C8 != -1)
  {
    swift_once();
  }

  return qword_2814CE7B8;
}

void *sub_231CC7E14()
{
  if (qword_2814CD6A0 != -1)
  {
    swift_once();
  }

  return &unk_2814CE620;
}

uint64_t sub_231CC7E80(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, void *a4)
{
  v7 = sub_231E0FD90();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  v12 = sub_231E0FD00();
  v14 = v13;
  result = (*(v8 + 8))(v11, v7);
  *a3 = v12;
  *a4 = v14;
  return result;
}

void *sub_231CC7F78()
{
  if (qword_2814CD6A8 != -1)
  {
    swift_once();
  }

  return &unk_2814CE630;
}

unint64_t sub_231CC7FD4()
{
  result = qword_2814CC6B0;
  if (!qword_2814CC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CC6B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_231CC8098(uint64_t a1, uint64_t a2)
{
  v2 = sub_231CC8D80();
  if (!v2)
  {
    OUTLINED_FUNCTION_6_3();
LABEL_9:
    sub_231CC8E60(v35);
    return 0;
  }

  v3 = v2;
  v4 = sub_231E115F0();
  v5 = OUTLINED_FUNCTION_1_4();
  v7 = [v5 v6];

  if (v7)
  {
    OUTLINED_FUNCTION_5_1();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_3();
  }

  OUTLINED_FUNCTION_3_5(v8, v9, v10, v11, v12, v13, v14, v15, v27, v30, v32);
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = sub_231CC8EC8();
  if (OUTLINED_FUNCTION_2_2(v17, v18, v19, v17, v20, v21, v22, v23, v28, v31, v33, v34, v35[0]))
  {
    [v29 doubleValue];
    v25 = v24;

    return v25;
  }

  return 0;
}

id sub_231CC8220()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

id sub_231CC82DC()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

id sub_231CC8398()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

id sub_231CC8454()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

double sub_231CC8510()
{
  v0 = sub_231CC8D80();
  if (!v0)
  {
    OUTLINED_FUNCTION_6_3();
LABEL_9:
    sub_231CC8E60(v33);
    return 0.0;
  }

  v1 = v0;
  OUTLINED_FUNCTION_0();
  v2 = sub_231E115F0();
  v3 = OUTLINED_FUNCTION_1_4();
  v5 = [v3 v4];

  if (v5)
  {
    OUTLINED_FUNCTION_5_1();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_3();
  }

  OUTLINED_FUNCTION_3_5(v6, v7, v8, v9, v10, v11, v12, v13, v25, v28, v30);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = sub_231CC8EC8();
  if ((OUTLINED_FUNCTION_2_2(v15, v16, v17, v15, v18, v19, v20, v21, v26, v29, v31, v32, v33[0]) & 1) == 0)
  {
    return 0.0;
  }

  [v27 doubleValue];
  v23 = v22;

  return v23;
}

id sub_231CC8604()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

id sub_231CC86C4()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

uint64_t sub_231CC8780()
{
  v0 = sub_231CC8D80();
  if (!v0)
  {
    OUTLINED_FUNCTION_6_3();
LABEL_9:
    sub_231CC8E60(v32);
    return 2;
  }

  v1 = v0;
  OUTLINED_FUNCTION_0();
  v2 = sub_231E115F0();
  v3 = OUTLINED_FUNCTION_1_4();
  v5 = [v3 v4];

  if (v5)
  {
    OUTLINED_FUNCTION_5_1();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_3();
  }

  OUTLINED_FUNCTION_3_5(v6, v7, v8, v9, v10, v11, v12, v13, v24, v27, v29);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = sub_231CC8EC8();
  if ((OUTLINED_FUNCTION_2_2(v15, v16, v17, v15, v18, v19, v20, v21, v25, v28, v30, v31, v32[0]) & 1) == 0)
  {
    return 2;
  }

  v22 = [v26 BOOLValue];

  return v22;
}

unint64_t sub_231CC886C()
{
  v0 = sub_231CC8D80();
  if (!v0)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_9:
    sub_231CC8E60(&v13);
    goto LABEL_10;
  }

  v1 = v0;
  OUTLINED_FUNCTION_0();
  v2 = sub_231E115F0();
  v3 = OUTLINED_FUNCTION_1_4();
  v5 = [v3 v4];

  if (v5)
  {
    OUTLINED_FUNCTION_5_1();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_3();
  }

  v13 = *v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

  sub_231CC8EC8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v9 = 0;
    v8 = 1;
    return v9 | (v8 << 32);
  }

  [v11[0] floatValue];
  v7 = v6;

  v8 = 0;
  v9 = v7;
  return v9 | (v8 << 32);
}

unint64_t sub_231CC8990@<X0>(uint64_t a1@<X8>)
{
  result = sub_231CC8A28(0x646469727265766FLL, 0xED0000536F516E65);
  if ((v3 & 1) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result <= 0xFF)
    {
      sub_231E119D0();
      v4 = 0;
      goto LABEL_6;
    }

    __break(1u);
    return result;
  }

  v4 = 1;
LABEL_6:
  v5 = sub_231E119F0();

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

id sub_231CC8A28(uint64_t a1, uint64_t a2)
{
  v2 = sub_231CC8D80();
  if (!v2)
  {
    OUTLINED_FUNCTION_6_3();
LABEL_9:
    sub_231CC8E60(v34);
    return 0;
  }

  v3 = v2;
  v4 = sub_231E115F0();
  v5 = OUTLINED_FUNCTION_1_4();
  v7 = [v5 v6];

  if (v7)
  {
    OUTLINED_FUNCTION_5_1();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_4_3();
  }

  OUTLINED_FUNCTION_3_5(v8, v9, v10, v11, v12, v13, v14, v15, v26, v29, v31);
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = sub_231CC8EC8();
  if ((OUTLINED_FUNCTION_2_2(v17, v18, v19, v17, v20, v21, v22, v23, v27, v30, v32, v33, v34[0]) & 1) == 0)
  {
    return 0;
  }

  v24 = [v28 integerValue];

  return v24;
}

id sub_231CC8B78()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

id sub_231CC8CC4()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0();
  v3 = sub_231E115F0();
  v4 = OUTLINED_FUNCTION_1_4();
  v6 = [v4 v5];

  return v6;
}

id sub_231CC8D80()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  return sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
}

id sub_231CC8DEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_231E115F0();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_231CC8E60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD741E0, &qword_231E15D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231CC8EC8()
{
  result = qword_2814CBD70;
  if (!qword_2814CBD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814CBD70);
  }

  return result;
}

void sub_231CC8F48(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 27:
    case 28:
      OUTLINED_FUNCTION_22_1();
      break;
    case 4:
    case 17:
    case 21:
    case 29:
      OUTLINED_FUNCTION_0();
      break;
    default:
      return;
  }
}

uint64_t sub_231CC9304()
{
  sub_231CCC298();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CC933C()
{
  sub_231CCC298();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CC9374(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_20_1();
  v6 = a1 == v4 && a2 == v5;
  if (v6 || (OUTLINED_FUNCTION_15_2(v4, v5) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = a1 == 0xD000000000000010 && 0x8000000231E2E8D0 == a2;
    if (v8 || (OUTLINED_FUNCTION_15_2(0xD000000000000010, 0x8000000231E2E8D0) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == 0xD000000000000015 && 0x8000000231E2E8F0 == a2;
      if (v9 || (OUTLINED_FUNCTION_15_2(0xD000000000000015, 0x8000000231E2E8F0) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0xD000000000000012 && 0x8000000231E2E910 == a2;
        if (v10 || (OUTLINED_FUNCTION_15_2(0xD000000000000012, 0x8000000231E2E910) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0xD000000000000022 && 0x8000000231E2E930 == a2;
          if (v11 || (OUTLINED_FUNCTION_15_2(0xD000000000000022, 0x8000000231E2E930) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 0xD000000000000013 && 0x8000000231E2E960 == a2;
            if (v12 || (OUTLINED_FUNCTION_15_2(0xD000000000000013, 0x8000000231E2E960) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = a1 == 0xD000000000000019 && 0x8000000231E2E980 == a2;
              if (v13 || (OUTLINED_FUNCTION_15_2(0xD000000000000019, 0x8000000231E2E980) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v14 = a1 == 0xD000000000000011 && 0x8000000231E2E9A0 == a2;
                if (v14 || (OUTLINED_FUNCTION_15_2(0xD000000000000011, 0x8000000231E2E9A0) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v15 = a1 == 0xD000000000000015 && 0x8000000231E2E9C0 == a2;
                  if (v15 || (OUTLINED_FUNCTION_15_2(0xD000000000000015, 0x8000000231E2E9C0) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v16 = a1 == 0xD000000000000018 && 0x8000000231E2E9E0 == a2;
                    if (v16 || (OUTLINED_FUNCTION_15_2(0xD000000000000018, 0x8000000231E2E9E0) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v17 = a1 == 0xD000000000000013 && 0x8000000231E2EA00 == a2;
                      if (v17 || (OUTLINED_FUNCTION_15_2(0xD000000000000013, 0x8000000231E2EA00) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v18 = a1 == 0xD000000000000015 && 0x8000000231E2EA20 == a2;
                        if (v18 || (OUTLINED_FUNCTION_15_2(0xD000000000000015, 0x8000000231E2EA20) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v19 = a1 == 0xD00000000000001ALL && 0x8000000231E2EA40 == a2;
                          if (v19 || (OUTLINED_FUNCTION_15_2(0xD00000000000001ALL, 0x8000000231E2EA40) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v20 = a1 == 0xD000000000000025 && 0x8000000231E2EA60 == a2;
                            if (v20 || (OUTLINED_FUNCTION_15_2(0xD000000000000025, 0x8000000231E2EA60) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v21 = a1 == 0xD000000000000016 && 0x8000000231E2EA90 == a2;
                              if (v21 || (OUTLINED_FUNCTION_15_2(0xD000000000000016, 0x8000000231E2EA90) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v22 = a1 == 0xD000000000000018 && 0x8000000231E2EAB0 == a2;
                                if (v22 || (OUTLINED_FUNCTION_15_2(0xD000000000000018, 0x8000000231E2EAB0) & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v23 = a1 == 0xD000000000000026 && 0x8000000231E2EAD0 == a2;
                                  if (v23 || (OUTLINED_FUNCTION_15_2(0xD000000000000026, 0x8000000231E2EAD0) & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v24 = a1 == 0xD000000000000022 && 0x8000000231E2EB00 == a2;
                                    if (v24 || (OUTLINED_FUNCTION_15_2(0xD000000000000022, 0x8000000231E2EB00) & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v25 = a1 == 0xD00000000000002ALL && 0x8000000231E2EB30 == a2;
                                      if (v25 || (OUTLINED_FUNCTION_15_2(0xD00000000000002ALL, 0x8000000231E2EB30) & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v26 = a1 == 0xD00000000000001BLL && 0x8000000231E2EB60 == a2;
                                        if (v26 || (OUTLINED_FUNCTION_15_2(0xD00000000000001BLL, 0x8000000231E2EB60) & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v27 = a1 == 0xD00000000000001CLL && 0x8000000231E2EB80 == a2;
                                          if (v27 || (OUTLINED_FUNCTION_15_2(0xD00000000000001CLL, 0x8000000231E2EB80) & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v28 = a1 == 0xD000000000000023 && 0x8000000231E2EBA0 == a2;
                                            if (v28 || (OUTLINED_FUNCTION_15_2(0xD000000000000023, 0x8000000231E2EBA0) & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v29 = a1 == 0xD00000000000002BLL && 0x8000000231E2EBD0 == a2;
                                              if (v29 || (OUTLINED_FUNCTION_15_2(0xD00000000000002BLL, 0x8000000231E2EBD0) & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v30 = a1 == 0x5F6567617373656DLL && a2 == 0xEF676F6C6B636162;
                                                if (v30 || (OUTLINED_FUNCTION_15_2(0x5F6567617373656DLL, 0xEF676F6C6B636162) & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v31 = OUTLINED_FUNCTION_30_0();
                                                  v33 = a1 == v31 && a2 == v32;
                                                  if (v33 || (OUTLINED_FUNCTION_15_2(v31, v32) & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v34 = a1 == 0x6165725F6C69616DLL && a2 == 0xE900000000000064;
                                                    if (v34 || (OUTLINED_FUNCTION_15_2(0x6165725F6C69616DLL, 0xE900000000000064) & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v35 = a1 == 0x5F6567617373656DLL && a2 == 0xEC00000064616572;
                                                      if (v35 || (OUTLINED_FUNCTION_15_2(0x5F6567617373656DLL, 0xEC00000064616572) & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v36 = a1 == 0xD00000000000001BLL && 0x8000000231E2EC00 == a2;
                                                        if (v36 || (OUTLINED_FUNCTION_15_2(0xD00000000000001BLL, 0x8000000231E2EC00) & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v37 = a1 == 0xD00000000000002DLL && 0x8000000231E2EC20 == a2;
                                                          if (v37 || (OUTLINED_FUNCTION_15_2(0xD00000000000002DLL, 0x8000000231E2EC20) & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v38 = a1 == 0xD000000000000022 && 0x8000000231E2EC50 == a2;
                                                            if (v38 || (OUTLINED_FUNCTION_15_2(0xD000000000000022, 0x8000000231E2EC50) & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else if (a1 == 0xD000000000000027 && 0x8000000231E2EC80 == a2)
                                                            {

                                                              return 30;
                                                            }

                                                            else
                                                            {
                                                              v40 = OUTLINED_FUNCTION_15_2(0xD000000000000027, 0x8000000231E2EC80);

                                                              if (v40)
                                                              {
                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                return 31;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_231CC9AA8()
{
  OUTLINED_FUNCTION_20_1();
  switch(v0)
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 27:
    case 28:
    case 29:
    case 30:
      OUTLINED_FUNCTION_21_0();
      break;
    case 2:
    case 8:
    case 11:
      OUTLINED_FUNCTION_0();
      break;
    case 24:
      OUTLINED_FUNCTION_30_0();
      break;
    default:
      return;
  }
}

uint64_t sub_231CC9E4C()
{
  sub_231CCC2EC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CC9E84()
{
  sub_231CCC2EC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CC9EBC()
{
  sub_231CCC244();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CC9EF4()
{
  sub_231CCC244();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CC9F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231CC9374(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231CC9F64()
{
  sub_231CCC19C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CC9F9C()
{
  sub_231CCC19C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CC9FD4()
{
  sub_231CCCA78();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA00C()
{
  sub_231CCCA78();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA044()
{
  sub_231CCC9D0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA07C()
{
  sub_231CCC9D0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA0B4()
{
  sub_231CCC3E8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA0EC()
{
  sub_231CCC3E8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA124()
{
  sub_231CCCB20();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA15C()
{
  sub_231CCCB20();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA194()
{
  sub_231CCCA24();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA1CC()
{
  sub_231CCCA24();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA204()
{
  sub_231CCCB74();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA23C()
{
  sub_231CCCB74();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA274()
{
  sub_231CCCBC8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA2AC()
{
  sub_231CCCBC8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA2E4()
{
  sub_231CCCACC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA31C()
{
  sub_231CCCACC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA354()
{
  sub_231CCC394();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA38C()
{
  sub_231CCC394();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA3C4()
{
  sub_231CCC784();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA3FC()
{
  sub_231CCC784();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA434()
{
  sub_231CCC8D4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA46C()
{
  sub_231CCC8D4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA4A4()
{
  sub_231CCC43C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA4DC()
{
  sub_231CCC43C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA514()
{
  sub_231CCC880();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA54C()
{
  sub_231CCC880();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA584()
{
  sub_231CCC928();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA5BC()
{
  sub_231CCC928();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA5F4()
{
  sub_231CCC97C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA62C()
{
  sub_231CCC97C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA664()
{
  sub_231CCC82C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA69C()
{
  sub_231CCC82C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA6D4()
{
  sub_231CCC7D8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA70C()
{
  sub_231CCC7D8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA744()
{
  sub_231CCC340();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA77C()
{
  sub_231CCC340();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA7B4()
{
  sub_231CCC4E4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA7EC()
{
  sub_231CCC4E4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA824()
{
  sub_231CCC490();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA85C()
{
  sub_231CCC490();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA894()
{
  sub_231CCC58C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA8CC()
{
  sub_231CCC58C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA904()
{
  sub_231CCC538();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA93C()
{
  sub_231CCC538();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA974()
{
  sub_231CCC5E0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCA9AC()
{
  sub_231CCC5E0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCA9E4()
{
  sub_231CCC634();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCAA1C()
{
  sub_231CCC634();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCAA54()
{
  sub_231CCC688();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCAA8C()
{
  sub_231CCC688();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCAAC4()
{
  sub_231CCC6DC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCAAFC()
{
  sub_231CCC6DC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCAB34()
{
  sub_231CCC730();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCAB6C()
{
  sub_231CCC730();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCABA4()
{
  sub_231CCC1F0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCABDC()
{
  sub_231CCC1F0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

void sub_231CCAC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35_1();
  a19 = v20;
  a20 = v21;
  v199 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741E8, &qword_231E13B10);
  OUTLINED_FUNCTION_24();
  v195 = v26;
  v196 = v25;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_1();
  v194 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741F0, &qword_231E13B18);
  OUTLINED_FUNCTION_24();
  v192 = v30;
  v193 = v29;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_1();
  v191 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741F8, &qword_231E13B20);
  OUTLINED_FUNCTION_24();
  v189 = v34;
  v190 = v33;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_1();
  v188 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74200, &qword_231E13B28);
  OUTLINED_FUNCTION_24();
  v186 = v38;
  v187 = v37;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_12_1();
  v185 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74208, &qword_231E13B30);
  OUTLINED_FUNCTION_24();
  v183 = v42;
  v184 = v41;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12_1();
  v182 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74210, &qword_231E13B38);
  OUTLINED_FUNCTION_24();
  v180 = v46;
  v181 = v45;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74218, &qword_231E13B40);
  OUTLINED_FUNCTION_0_7(v49, &a17);
  v179[0] = v50;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74220, &qword_231E13B48);
  OUTLINED_FUNCTION_0_7(v53, &a14);
  v178[0] = v54;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74228, &qword_231E13B50);
  OUTLINED_FUNCTION_0_7(v57, &a11);
  v177[0] = v58;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74230, &qword_231E13B58);
  OUTLINED_FUNCTION_0_7(v61, &v200);
  v176[0] = v62;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74238, &qword_231E13B60);
  OUTLINED_FUNCTION_0_7(v65, v198);
  v175[0] = v66;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74240, &qword_231E13B68);
  OUTLINED_FUNCTION_0_7(v69, &v195);
  v174[0] = v70;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74248, &qword_231E13B70);
  OUTLINED_FUNCTION_0_7(v73, &v192);
  v173[0] = v74;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74250, &qword_231E13B78);
  OUTLINED_FUNCTION_0_7(v77, &v189);
  v172[0] = v78;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74258, &qword_231E13B80);
  OUTLINED_FUNCTION_0_7(v81, &v186);
  v171[0] = v82;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74260, &qword_231E13B88);
  OUTLINED_FUNCTION_0_7(v85, &v183);
  v170[0] = v86;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74268, &qword_231E13B90);
  OUTLINED_FUNCTION_0_7(v89, &v180);
  v169[0] = v90;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74270, &qword_231E13B98);
  OUTLINED_FUNCTION_0_7(v93, v179);
  v168 = v94;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74278, &qword_231E13BA0);
  OUTLINED_FUNCTION_0_7(v97, v178);
  v167[33] = v98;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74280, &qword_231E13BA8);
  OUTLINED_FUNCTION_0_7(v101, v177);
  v167[30] = v102;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74288, &qword_231E13BB0);
  OUTLINED_FUNCTION_0_7(v105, v176);
  v167[27] = v106;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74290, &qword_231E13BB8);
  OUTLINED_FUNCTION_0_7(v109, v175);
  v167[24] = v110;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74298, &qword_231E13BC0);
  OUTLINED_FUNCTION_0_7(v113, v174);
  v167[21] = v114;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742A0, &qword_231E13BC8);
  OUTLINED_FUNCTION_0_7(v117, v173);
  v167[18] = v118;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742A8, &qword_231E13BD0);
  OUTLINED_FUNCTION_0_7(v121, v172);
  v167[15] = v122;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v124);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742B0, &qword_231E13BD8);
  OUTLINED_FUNCTION_0_7(v125, v171);
  v167[12] = v126;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742B8, &qword_231E13BE0);
  OUTLINED_FUNCTION_0_7(v129, v170);
  v167[9] = v130;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742C0, &qword_231E13BE8);
  OUTLINED_FUNCTION_0_7(v133, v169);
  v167[6] = v134;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v136);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742C8, &qword_231E13BF0);
  OUTLINED_FUNCTION_0_7(v137, &v168);
  v167[3] = v138;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742D0, &qword_231E13BF8);
  OUTLINED_FUNCTION_24();
  v167[1] = v142;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v143);
  v145 = v167 - v144;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742D8, &qword_231E13C00);
  OUTLINED_FUNCTION_24();
  v167[0] = v147;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v148);
  v150 = v167 - v149;
  v198[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742E0, &qword_231E13C08);
  OUTLINED_FUNCTION_24();
  v152 = v151;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v153);
  v155 = v167 - v154;
  v156 = __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  sub_231CCC19C();
  v197 = v155;
  sub_231E12270();
  v157 = (v152 + 8);
  switch(v199)
  {
    case 1:
      OUTLINED_FUNCTION_31_0();
      sub_231CCCB74();
      v156 = v197;
      v155 = v198[0];
      sub_231E12000();
      OUTLINED_FUNCTION_13();
      v159 = v145;
      v160 = v141;
      break;
    case 2:
      HIBYTE(a10) = 2;
      sub_231CCCB20();
      v163 = v167[2];
      v164 = v197;
      v165 = v198[0];
      sub_231E12000();
      OUTLINED_FUNCTION_13();
      v166(v163, v167[4]);
      (*v157)(v164, v165);
      goto LABEL_36;
    case 3:
      HIBYTE(a10) = 3;
      sub_231CCCACC();
      OUTLINED_FUNCTION_5_2(&unk_2846F0C50, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = v169;
      goto LABEL_30;
    case 4:
      HIBYTE(a10) = 4;
      sub_231CCCA78();
      OUTLINED_FUNCTION_5_2(&unk_2846F0C70, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = v170;
      goto LABEL_30;
    case 5:
      HIBYTE(a10) = 5;
      sub_231CCCA24();
      OUTLINED_FUNCTION_5_2(&unk_2846F0C90, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = v171;
      goto LABEL_30;
    case 6:
      HIBYTE(a10) = 6;
      sub_231CCC9D0();
      OUTLINED_FUNCTION_5_2(&unk_2846F0CB0, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = v172;
      goto LABEL_30;
    case 7:
      HIBYTE(a10) = 7;
      sub_231CCC97C();
      OUTLINED_FUNCTION_5_2(&unk_2846F0CD0, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = v173;
      goto LABEL_30;
    case 8:
      HIBYTE(a10) = 8;
      sub_231CCC928();
      OUTLINED_FUNCTION_5_2(&unk_2846F0CF0, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = v174;
      goto LABEL_30;
    case 9:
      HIBYTE(a10) = 9;
      sub_231CCC8D4();
      OUTLINED_FUNCTION_5_2(&unk_2846F0D10, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = v175;
      goto LABEL_30;
    case 10:
      HIBYTE(a10) = 10;
      sub_231CCC880();
      OUTLINED_FUNCTION_5_2(&unk_2846F0D30, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = v176;
      goto LABEL_30;
    case 11:
      HIBYTE(a10) = 11;
      sub_231CCC82C();
      OUTLINED_FUNCTION_5_2(&unk_2846F0D50, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = v177;
      goto LABEL_30;
    case 12:
      HIBYTE(a10) = 12;
      sub_231CCC7D8();
      OUTLINED_FUNCTION_5_2(&unk_2846F0D70, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = v178;
      goto LABEL_30;
    case 13:
      HIBYTE(a10) = 13;
      sub_231CCC784();
      OUTLINED_FUNCTION_5_2(&unk_2846F0D90, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = v179;
      goto LABEL_30;
    case 14:
      HIBYTE(a10) = 14;
      sub_231CCC730();
      OUTLINED_FUNCTION_5_2(&unk_2846F0DB0, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = &v180;
      goto LABEL_30;
    case 15:
      HIBYTE(a10) = 15;
      sub_231CCC6DC();
      OUTLINED_FUNCTION_5_2(&unk_2846F0DD0, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = &v183;
      goto LABEL_30;
    case 16:
      HIBYTE(a10) = 16;
      sub_231CCC688();
      OUTLINED_FUNCTION_5_2(&unk_2846F0DF0, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = &v186;
      goto LABEL_30;
    case 17:
      HIBYTE(a10) = 17;
      sub_231CCC634();
      OUTLINED_FUNCTION_5_2(&unk_2846F0E10, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = &v189;
      goto LABEL_30;
    case 18:
      HIBYTE(a10) = 18;
      sub_231CCC5E0();
      OUTLINED_FUNCTION_5_2(&unk_2846F0E30, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = &v192;
      goto LABEL_30;
    case 19:
      HIBYTE(a10) = 19;
      sub_231CCC58C();
      OUTLINED_FUNCTION_5_2(&unk_2846F0E50, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = &v195;
      goto LABEL_30;
    case 20:
      HIBYTE(a10) = 20;
      sub_231CCC538();
      OUTLINED_FUNCTION_5_2(&unk_2846F0E70, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = v198;
      goto LABEL_30;
    case 21:
      HIBYTE(a10) = 21;
      sub_231CCC4E4();
      OUTLINED_FUNCTION_5_2(&unk_2846F0E90, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = &v200;
      goto LABEL_30;
    case 22:
      HIBYTE(a10) = 22;
      sub_231CCC490();
      OUTLINED_FUNCTION_5_2(&unk_2846F0EB0, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = &a11;
      goto LABEL_30;
    case 23:
      HIBYTE(a10) = 23;
      sub_231CCC43C();
      OUTLINED_FUNCTION_5_2(&unk_2846F0ED0, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = &a14;
      goto LABEL_30;
    case 24:
      HIBYTE(a10) = 24;
      sub_231CCC3E8();
      OUTLINED_FUNCTION_5_2(&unk_2846F0EF0, &a10 + 7);
      v159 = OUTLINED_FUNCTION_7_2();
      v162 = &a17;
LABEL_30:
      v160 = *(v162 - 32);
      break;
    case 25:
      HIBYTE(a10) = 25;
      sub_231CCC394();
      OUTLINED_FUNCTION_5_2(&unk_2846F0F10, &a10 + 7);
      v161 = v180;
      v160 = v181;
      goto LABEL_34;
    case 26:
      HIBYTE(a10) = 26;
      sub_231CCC340();
      v141 = v182;
      OUTLINED_FUNCTION_9_2(&unk_2846F0F30, &a10 + 7);
      v161 = v183;
      v160 = v184;
      goto LABEL_34;
    case 27:
      HIBYTE(a10) = 27;
      sub_231CCC2EC();
      v141 = v185;
      OUTLINED_FUNCTION_9_2(&unk_2846F0F50, &a10 + 7);
      v161 = v186;
      v160 = v187;
      goto LABEL_34;
    case 28:
      HIBYTE(a10) = 28;
      sub_231CCC298();
      v141 = v188;
      OUTLINED_FUNCTION_9_2(&unk_2846F0F70, &a10 + 7);
      v161 = v189;
      v160 = v190;
      goto LABEL_34;
    case 29:
      HIBYTE(a10) = 29;
      sub_231CCC244();
      v141 = v191;
      OUTLINED_FUNCTION_9_2(&unk_2846F0F90, &a10 + 7);
      v161 = v192;
      v160 = v193;
      goto LABEL_34;
    case 30:
      HIBYTE(a10) = 30;
      sub_231CCC1F0();
      v141 = v194;
      OUTLINED_FUNCTION_9_2(&unk_2846F0FB0, &a10 + 7);
      v161 = v195;
      v160 = v196;
LABEL_34:
      v158 = *(v161 + 8);
      v159 = v141;
      break;
    default:
      HIBYTE(a10) = 0;
      sub_231CCCBC8();
      v156 = v197;
      v155 = v198[0];
      sub_231E12000();
      OUTLINED_FUNCTION_13();
      v159 = v150;
      v160 = v146;
      break;
  }

  v158(v159, v160);
  (*v157)(v156, v155);
LABEL_36:
  OUTLINED_FUNCTION_33_0();
}

unint64_t sub_231CCC19C()
{
  result = qword_27DD75FE0;
  if (!qword_27DD75FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75FE0);
  }

  return result;
}

unint64_t sub_231CCC1F0()
{
  result = qword_27DD75FE8;
  if (!qword_27DD75FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75FE8);
  }

  return result;
}

unint64_t sub_231CCC244()
{
  result = qword_27DD75FF0;
  if (!qword_27DD75FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75FF0);
  }

  return result;
}

unint64_t sub_231CCC298()
{
  result = qword_27DD75FF8;
  if (!qword_27DD75FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75FF8);
  }

  return result;
}

unint64_t sub_231CCC2EC()
{
  result = qword_27DD76000;
  if (!qword_27DD76000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76000);
  }

  return result;
}

unint64_t sub_231CCC340()
{
  result = qword_27DD76008;
  if (!qword_27DD76008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76008);
  }

  return result;
}

unint64_t sub_231CCC394()
{
  result = qword_27DD76010;
  if (!qword_27DD76010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76010);
  }

  return result;
}

unint64_t sub_231CCC3E8()
{
  result = qword_27DD76018;
  if (!qword_27DD76018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76018);
  }

  return result;
}

unint64_t sub_231CCC43C()
{
  result = qword_27DD76020;
  if (!qword_27DD76020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76020);
  }

  return result;
}

unint64_t sub_231CCC490()
{
  result = qword_27DD76028;
  if (!qword_27DD76028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76028);
  }

  return result;
}

unint64_t sub_231CCC4E4()
{
  result = qword_27DD76030;
  if (!qword_27DD76030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76030);
  }

  return result;
}

unint64_t sub_231CCC538()
{
  result = qword_27DD76038;
  if (!qword_27DD76038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76038);
  }

  return result;
}

unint64_t sub_231CCC58C()
{
  result = qword_27DD76040;
  if (!qword_27DD76040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76040);
  }

  return result;
}

unint64_t sub_231CCC5E0()
{
  result = qword_27DD76048;
  if (!qword_27DD76048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76048);
  }

  return result;
}

unint64_t sub_231CCC634()
{
  result = qword_27DD76050;
  if (!qword_27DD76050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76050);
  }

  return result;
}

unint64_t sub_231CCC688()
{
  result = qword_27DD76058;
  if (!qword_27DD76058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76058);
  }

  return result;
}

unint64_t sub_231CCC6DC()
{
  result = qword_27DD76060;
  if (!qword_27DD76060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76060);
  }

  return result;
}

unint64_t sub_231CCC730()
{
  result = qword_27DD76068;
  if (!qword_27DD76068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76068);
  }

  return result;
}

unint64_t sub_231CCC784()
{
  result = qword_27DD76070;
  if (!qword_27DD76070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76070);
  }

  return result;
}

unint64_t sub_231CCC7D8()
{
  result = qword_27DD76078;
  if (!qword_27DD76078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76078);
  }

  return result;
}

unint64_t sub_231CCC82C()
{
  result = qword_27DD76080;
  if (!qword_27DD76080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76080);
  }

  return result;
}

unint64_t sub_231CCC880()
{
  result = qword_27DD76088;
  if (!qword_27DD76088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76088);
  }

  return result;
}

unint64_t sub_231CCC8D4()
{
  result = qword_27DD76090;
  if (!qword_27DD76090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76090);
  }

  return result;
}

unint64_t sub_231CCC928()
{
  result = qword_27DD76098;
  if (!qword_27DD76098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD76098);
  }

  return result;
}

unint64_t sub_231CCC97C()
{
  result = qword_27DD760A0;
  if (!qword_27DD760A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760A0);
  }

  return result;
}

unint64_t sub_231CCC9D0()
{
  result = qword_27DD760A8;
  if (!qword_27DD760A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760A8);
  }

  return result;
}

unint64_t sub_231CCCA24()
{
  result = qword_27DD760B0;
  if (!qword_27DD760B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760B0);
  }

  return result;
}

unint64_t sub_231CCCA78()
{
  result = qword_27DD760B8;
  if (!qword_27DD760B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760B8);
  }

  return result;
}

unint64_t sub_231CCCACC()
{
  result = qword_27DD760C0;
  if (!qword_27DD760C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760C0);
  }

  return result;
}

unint64_t sub_231CCCB20()
{
  result = qword_27DD760C8;
  if (!qword_27DD760C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760C8);
  }

  return result;
}

unint64_t sub_231CCCB74()
{
  result = qword_27DD760D0;
  if (!qword_27DD760D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760D0);
  }

  return result;
}

unint64_t sub_231CCCBC8()
{
  result = qword_27DD760D8;
  if (!qword_27DD760D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760D8);
  }

  return result;
}

void sub_231CCCC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_35_1();
  a22 = v24;
  a23 = v25;
  v217 = v23;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742E8, &qword_231E13C10);
  OUTLINED_FUNCTION_0_7(v28, &v218);
  v199[1] = v29;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_1();
  v213 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742F0, &qword_231E13C18);
  OUTLINED_FUNCTION_0_7(v32, &v216);
  v198[1] = v33;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_1();
  v212[1] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD742F8, &qword_231E13C20);
  OUTLINED_FUNCTION_0_7(v36, v215);
  v197[1] = v37;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12_1();
  v212[0] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74300, &qword_231E13C28);
  OUTLINED_FUNCTION_0_7(v40, &v213);
  v196[1] = v41;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_12_1();
  v211[1] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74308, &qword_231E13C30);
  OUTLINED_FUNCTION_0_7(v44, v212);
  v195[1] = v45;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_12_1();
  v211[0] = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74310, &qword_231E13C38);
  OUTLINED_FUNCTION_0_7(v48, v211);
  v194[1] = v49;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12_1();
  v210[1] = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74318, &qword_231E13C40);
  OUTLINED_FUNCTION_0_7(v52, v210);
  v193[1] = v53;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_12_1();
  v210[0] = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74320, &qword_231E13C48);
  OUTLINED_FUNCTION_0_7(v56, v209);
  v192[1] = v57;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_12_1();
  v209[1] = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74328, &qword_231E13C50);
  OUTLINED_FUNCTION_0_7(v60, v208);
  v191[1] = v61;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_12_1();
  v209[0] = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74330, &qword_231E13C58);
  OUTLINED_FUNCTION_0_7(v64, v207);
  v190[1] = v65;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_12_1();
  v208[1] = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74338, &qword_231E13C60);
  OUTLINED_FUNCTION_0_7(v68, v206);
  v189[1] = v69;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_12_1();
  v208[0] = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74340, &qword_231E13C68);
  OUTLINED_FUNCTION_0_7(v72, v205);
  v188[1] = v73;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_12_1();
  v207[1] = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74348, &qword_231E13C70);
  OUTLINED_FUNCTION_0_7(v76, v204);
  v187[1] = v77;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_12_1();
  v207[0] = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74350, &qword_231E13C78);
  OUTLINED_FUNCTION_0_7(v80, v203);
  v186[4] = v81;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_12_1();
  v206[1] = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74358, &qword_231E13C80);
  OUTLINED_FUNCTION_0_7(v84, v202);
  v186[2] = v85;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_12_1();
  v206[0] = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74360, &qword_231E13C88);
  OUTLINED_FUNCTION_0_7(v88, v201);
  v186[0] = v89;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_12_1();
  v205[1] = v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74368, &qword_231E13C90);
  OUTLINED_FUNCTION_0_7(v92, v200);
  v185[32] = v93;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74370, &qword_231E13C98);
  OUTLINED_FUNCTION_0_7(v96, v199);
  v185[30] = v97;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74378, &qword_231E13CA0);
  OUTLINED_FUNCTION_0_7(v100, v198);
  v185[28] = v101;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74380, &qword_231E13CA8);
  OUTLINED_FUNCTION_0_7(v104, v197);
  v185[26] = v105;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v107);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74388, &qword_231E13CB0);
  OUTLINED_FUNCTION_0_7(v108, v196);
  v185[24] = v109;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74390, &qword_231E13CB8);
  OUTLINED_FUNCTION_0_7(v112, v195);
  v185[22] = v113;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_12_1();
  v215[1] = v115;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74398, &qword_231E13CC0);
  OUTLINED_FUNCTION_0_7(v116, v194);
  v185[20] = v117;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_12_1();
  v215[0] = v119;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743A0, &qword_231E13CC8);
  OUTLINED_FUNCTION_0_7(v120, v193);
  v185[18] = v121;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743A8, &qword_231E13CD0);
  OUTLINED_FUNCTION_0_7(v124, v192);
  v185[16] = v125;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v127);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743B0, &qword_231E13CD8);
  OUTLINED_FUNCTION_0_7(v128, v191);
  v185[14] = v129;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_12_1();
  v214 = v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743B8, &qword_231E13CE0);
  OUTLINED_FUNCTION_0_7(v132, v190);
  v185[12] = v133;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v135);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743C0, &qword_231E13CE8);
  OUTLINED_FUNCTION_0_7(v136, v189);
  v185[10] = v137;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v139);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743C8, &qword_231E13CF0);
  OUTLINED_FUNCTION_0_7(v140, v188);
  v185[8] = v141;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v143);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743D0, &qword_231E13CF8);
  OUTLINED_FUNCTION_0_7(v144, v187);
  v185[6] = v145;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v146);
  v148 = v185 - v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743D8, &qword_231E13D00);
  OUTLINED_FUNCTION_24();
  v185[5] = v150;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v151);
  v153 = v185 - v152;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E0, &qword_231E13D08);
  OUTLINED_FUNCTION_24();
  v156 = v155;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v157);
  v159 = v185 - v158;
  v160 = v27[3];
  v216 = v27;
  __swift_project_boxed_opaque_existential_0(v27, v160);
  sub_231CCC19C();
  v161 = v217;
  sub_231E12260();
  if (v161)
  {
    goto LABEL_10;
  }

  v185[3] = v153;
  v185[2] = v149;
  v185[4] = v148;
  v162 = v214;
  v217 = v156;
  v163 = sub_231E11FE0();
  v164 = sub_231CCF16C(v163, 0);
  v168 = v154;
  if (v166 == v167 >> 1)
  {
    v169 = v159;
    v170 = v217;
LABEL_9:
    v181 = sub_231E11DC0();
    swift_allocError();
    v183 = v182;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E8, &qword_231E13D10);
    *v183 = &unk_2846F0A00;
    v184 = sub_231E11F40();
    OUTLINED_FUNCTION_32_0(v184);
    (*(*(v181 - 8) + 104))(v183, *MEMORY[0x277D84160], v181);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v170 + 8))(v169, v168);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v216);
LABEL_11:
    OUTLINED_FUNCTION_33_0();
    return;
  }

  v185[1] = 0;
  if (v166 < (v167 >> 1))
  {
    v171 = *(v165 + v166);
    v172 = sub_231CCF304(v166 + 1, v167 >> 1, v164, v165, v166, v167);
    v174 = v173;
    v176 = v175;
    swift_unknownObjectRelease();
    if (v174 == v176 >> 1)
    {
      v177 = v217;
      v185[0] = v172;
      switch(v171)
      {
        case 1:
          OUTLINED_FUNCTION_31_0();
          sub_231CCCB74();
          OUTLINED_FUNCTION_4_4(&unk_2846F0C10, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v187;
          break;
        case 2:
          a13 = 2;
          sub_231CCCB20();
          OUTLINED_FUNCTION_4_4(&unk_2846F0C30, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v188;
          break;
        case 3:
          a13 = 3;
          sub_231CCCACC();
          OUTLINED_FUNCTION_4_4(&unk_2846F0C50, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v189;
          break;
        case 4:
          a13 = 4;
          sub_231CCCA78();
          OUTLINED_FUNCTION_4_4(&unk_2846F0C70, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v190;
          break;
        case 5:
          a13 = 5;
          sub_231CCCA24();
          OUTLINED_FUNCTION_8_2(&unk_2846F0C90, &a13);
          OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_13();
          v178 = v162;
          v180 = v191;
          break;
        case 6:
          a13 = 6;
          sub_231CCC9D0();
          OUTLINED_FUNCTION_4_4(&unk_2846F0CB0, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v192;
          break;
        case 7:
          a13 = 7;
          sub_231CCC97C();
          OUTLINED_FUNCTION_4_4(&unk_2846F0CD0, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v193;
          break;
        case 8:
          a13 = 8;
          sub_231CCC928();
          OUTLINED_FUNCTION_8_2(&unk_2846F0CF0, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v194;
          break;
        case 9:
          a13 = 9;
          sub_231CCC8D4();
          OUTLINED_FUNCTION_4_4(&unk_2846F0D10, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v195;
          break;
        case 10:
          a13 = 10;
          sub_231CCC880();
          OUTLINED_FUNCTION_4_4(&unk_2846F0D30, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v196;
          break;
        case 11:
          a13 = 11;
          sub_231CCC82C();
          OUTLINED_FUNCTION_4_4(&unk_2846F0D50, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v197;
          break;
        case 12:
          a13 = 12;
          sub_231CCC7D8();
          OUTLINED_FUNCTION_4_4(&unk_2846F0D70, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v198;
          break;
        case 13:
          a13 = 13;
          sub_231CCC784();
          OUTLINED_FUNCTION_4_4(&unk_2846F0D90, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v199;
          break;
        case 14:
          a13 = 14;
          sub_231CCC730();
          OUTLINED_FUNCTION_4_4(&unk_2846F0DB0, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v200;
          break;
        case 15:
          a13 = 15;
          sub_231CCC6DC();
          OUTLINED_FUNCTION_4_4(&unk_2846F0DD0, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v201;
          break;
        case 16:
          a13 = 16;
          sub_231CCC688();
          OUTLINED_FUNCTION_4_4(&unk_2846F0DF0, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v202;
          break;
        case 17:
          a13 = 17;
          sub_231CCC634();
          OUTLINED_FUNCTION_4_4(&unk_2846F0E10, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v203;
          break;
        case 18:
          a13 = 18;
          sub_231CCC5E0();
          OUTLINED_FUNCTION_4_4(&unk_2846F0E30, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v204;
          break;
        case 19:
          a13 = 19;
          sub_231CCC58C();
          OUTLINED_FUNCTION_4_4(&unk_2846F0E50, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v205;
          break;
        case 20:
          a13 = 20;
          sub_231CCC538();
          OUTLINED_FUNCTION_4_4(&unk_2846F0E70, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v206;
          break;
        case 21:
          a13 = 21;
          sub_231CCC4E4();
          OUTLINED_FUNCTION_4_4(&unk_2846F0E90, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v207;
          break;
        case 22:
          a13 = 22;
          sub_231CCC490();
          OUTLINED_FUNCTION_4_4(&unk_2846F0EB0, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v208;
          break;
        case 23:
          a13 = 23;
          sub_231CCC43C();
          OUTLINED_FUNCTION_4_4(&unk_2846F0ED0, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v209;
          break;
        case 24:
          a13 = 24;
          sub_231CCC3E8();
          OUTLINED_FUNCTION_4_4(&unk_2846F0EF0, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v210;
          break;
        case 25:
          a13 = 25;
          sub_231CCC394();
          OUTLINED_FUNCTION_4_4(&unk_2846F0F10, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v211;
          break;
        case 26:
          a13 = 26;
          sub_231CCC340();
          OUTLINED_FUNCTION_4_4(&unk_2846F0F30, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v212;
          break;
        case 27:
          a13 = 27;
          sub_231CCC2EC();
          OUTLINED_FUNCTION_4_4(&unk_2846F0F50, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = &v213;
          break;
        case 28:
          a13 = 28;
          sub_231CCC298();
          OUTLINED_FUNCTION_4_4(&unk_2846F0F70, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v215;
          break;
        case 29:
          a13 = 29;
          sub_231CCC244();
          OUTLINED_FUNCTION_4_4(&unk_2846F0F90, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = &v216;
          break;
        case 30:
          a13 = 30;
          sub_231CCC1F0();
          OUTLINED_FUNCTION_4_4(&unk_2846F0FB0, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = &v218;
          break;
        default:
          a13 = 0;
          sub_231CCCBC8();
          OUTLINED_FUNCTION_4_4(&unk_2846F0BF0, &a13);
          OUTLINED_FUNCTION_17_3();
          v178 = OUTLINED_FUNCTION_6_4();
          v180 = v186;
          break;
      }

      v179(v178, *(v180 - 32));
      (*(v177 + 8))(v159, v154);
      __swift_destroy_boxed_opaque_existential_0(v216);
      goto LABEL_11;
    }

    v169 = v159;
    v170 = v217;
    v168 = v154;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_231CCE530(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C6176 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_15_2(0x64696C6176, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15_2(0x64696C61766E69, 0xE700000000000000);

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_231CCE614(char a1)
{
  sub_231E12220();
  MEMORY[0x23837D730](a1 & 1);
  return sub_231E12250();
}

uint64_t sub_231CCE65C(char a1)
{
  if (a1)
  {
    return 0x64696C61766E69;
  }

  else
  {
    return 0x64696C6176;
  }
}

uint64_t sub_231CCE690(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_231E12100();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231CCE770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231CCE530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231CCE7A0()
{
  sub_231CCF1B4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCE7D8()
{
  sub_231CCF1B4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCE810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231CCE690(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231CCE83C()
{
  sub_231CCF208();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCE874()
{
  sub_231CCF208();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231CCE8AC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = j__swift_bridgeObjectRelease(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_231CCE8E4()
{
  sub_231CCF2B0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231CCE91C()
{
  sub_231CCF2B0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

void sub_231CCE954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_35_1();
  v50 = v24;
  v26 = v25;
  v47 = v27;
  v51 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743F0, &qword_231E13D18);
  OUTLINED_FUNCTION_24();
  v48 = v29;
  v49 = v28;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v30);
  v32 = &v45 - v31;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743F8, &qword_231E13D20);
  OUTLINED_FUNCTION_24();
  v34 = v33;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v35);
  v37 = &v45 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74400, &qword_231E13D28);
  OUTLINED_FUNCTION_24();
  v40 = v39;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v41);
  v43 = &v45 - v42;
  __swift_project_boxed_opaque_existential_0(v26, v26[3]);
  sub_231CCF1B4();
  sub_231E12270();
  if (v51 == 31)
  {
    sub_231CCF2B0();
    sub_231E12000();
    (*(v34 + 8))(v37, v46);
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    sub_231CCF208();
    sub_231E12000();
    sub_231CCF25C();
    v44 = v49;
    sub_231E12090();
    (*(v48 + 8))(v32, v44);
  }

  (*(v40 + 8))(v43, v38);
  OUTLINED_FUNCTION_33_0();
}

void sub_231CCEC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, unsigned __int8 a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_35_1();
  a24 = v26;
  a25 = v27;
  v72 = v25;
  v29 = v28;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74410, &qword_231E13D30);
  OUTLINED_FUNCTION_24();
  v69 = v30;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v31);
  v33 = &v65 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74418, &qword_231E13D38);
  OUTLINED_FUNCTION_24();
  v68 = v35;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v36);
  v38 = &v65 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74420, &qword_231E13D40);
  OUTLINED_FUNCTION_24();
  v70 = v39;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v40);
  __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  sub_231CCF1B4();
  v41 = v72;
  sub_231E12260();
  if (v41)
  {
    goto LABEL_9;
  }

  v66 = v34;
  v67 = v38;
  v72 = v33;
  v42 = v71;
  v43 = sub_231E11FE0();
  v44 = sub_231CCF16C(v43, 0);
  if (v46 == v47 >> 1)
  {
    v48 = v29;
LABEL_8:
    v56 = sub_231E11DC0();
    swift_allocError();
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E8, &qword_231E13D10);
    *v58 = &unk_2846F0970;
    v59 = sub_231E11F40();
    OUTLINED_FUNCTION_32_0(v59);
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_19_1();
    v61(v60);
    v29 = v48;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v29);
LABEL_10:
    OUTLINED_FUNCTION_33_0();
    return;
  }

  if (v46 < (v47 >> 1))
  {
    v48 = v29;
    a10 = *(v45 + v46);
    v49 = sub_231CCF304(v46 + 1, v47 >> 1, v44, v45, v46, v47);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    v54 = v69;
    if (v51 == v53 >> 1)
    {
      v65 = v49;
      if (a10)
      {
        OUTLINED_FUNCTION_31_0();
        sub_231CCF208();
        v55 = v72;
        OUTLINED_FUNCTION_34_0(&unk_2846F0B40, &a15);
        sub_231CCF380();
        sub_231E11FD0();
        swift_unknownObjectRelease();
        (*(v54 + 8))(v55, v42);
      }

      else
      {
        a13 = 0;
        sub_231CCF2B0();
        v62 = v67;
        OUTLINED_FUNCTION_34_0(&unk_2846F0AB0, &a13);
        swift_unknownObjectRelease();
        (*(v68 + 8))(v62, v66);
      }

      v63 = OUTLINED_FUNCTION_19_1();
      v64(v63);
      __swift_destroy_boxed_opaque_existential_0(v48);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_231CCF16C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_231CCF1B4()
{
  result = qword_27DD760E0;
  if (!qword_27DD760E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760E0);
  }

  return result;
}

unint64_t sub_231CCF208()
{
  result = qword_27DD760E8;
  if (!qword_27DD760E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD760E8);
  }

  return result;
}

unint64_t sub_231CCF25C()
{
  result = qword_27DD74408;
  if (!qword_27DD74408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74408);
  }

  return result;
}

unint64_t sub_231CCF2B0()
{
  result = qword_27DD760F0[0];
  if (!qword_27DD760F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD760F0);
  }

  return result;
}

uint64_t sub_231CCF304(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_231CCF380()
{
  result = qword_27DD74428;
  if (!qword_27DD74428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74428);
  }

  return result;
}

unint64_t sub_231CCF3D8()
{
  result = qword_27DD74430;
  if (!qword_27DD74430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74430);
  }

  return result;
}

uint64_t sub_231CCF42C(uint64_t result, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_155();
  }

  if (a2 < 0xE1)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 0x1F;
    v8 = v6 - 31;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 31;
    if (a2 + 31 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = (*result | (v5 << 8)) - 31;
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_231CCF4D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 31;
  if (a3 + 31 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xE1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xE0)
  {
    v7 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    switch(v6)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v7);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v7);
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v7);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          result = OUTLINED_FUNCTION_18_1(result, a2 + 31);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231CCF598(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x1F)
  {
    return v1 - 30;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_231CCF5AC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 30;
  }

  return result;
}

uint64_t _s6OriginOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_231CCF65C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
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
          result = OUTLINED_FUNCTION_18_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t _s22ProactiveSummarization22SummarizationAnalyticsC8IntervalO18CompleteCodingKeysOwet_0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_155();
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

  return OUTLINED_FUNCTION_156(a1);
}

_BYTE *sub_231CCF780(_BYTE *result, int a2, int a3)
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

uint64_t sub_231CCF830(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_231CCF8BC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_26_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_23_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_24_0(result, v6);
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
          result = OUTLINED_FUNCTION_18_1(result, a2 + 30);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231CCFAFC()
{
  result = qword_27DD78400[0];
  if (!qword_27DD78400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78400);
  }

  return result;
}

unint64_t sub_231CCFB54()
{
  result = qword_27DD78610[0];
  if (!qword_27DD78610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78610);
  }

  return result;
}

unint64_t sub_231CCFBAC()
{
  result = qword_27DD78920[0];
  if (!qword_27DD78920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78920);
  }

  return result;
}

unint64_t sub_231CCFC04()
{
  result = qword_27DD78A30;
  if (!qword_27DD78A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78A30);
  }

  return result;
}

unint64_t sub_231CCFC5C()
{
  result = qword_27DD78A38[0];
  if (!qword_27DD78A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78A38);
  }

  return result;
}

unint64_t sub_231CCFCB4()
{
  result = qword_27DD78AC0;
  if (!qword_27DD78AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78AC0);
  }

  return result;
}

unint64_t sub_231CCFD0C()
{
  result = qword_27DD78AC8[0];
  if (!qword_27DD78AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78AC8);
  }

  return result;
}

unint64_t sub_231CCFD64()
{
  result = qword_27DD78B50;
  if (!qword_27DD78B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78B50);
  }

  return result;
}

unint64_t sub_231CCFDBC()
{
  result = qword_27DD78B58[0];
  if (!qword_27DD78B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78B58);
  }

  return result;
}

unint64_t sub_231CCFE14()
{
  result = qword_27DD78BE0;
  if (!qword_27DD78BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78BE0);
  }

  return result;
}

unint64_t sub_231CCFE6C()
{
  result = qword_27DD78BE8[0];
  if (!qword_27DD78BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78BE8);
  }

  return result;
}

unint64_t sub_231CCFEC4()
{
  result = qword_27DD78C70;
  if (!qword_27DD78C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78C70);
  }

  return result;
}

unint64_t sub_231CCFF1C()
{
  result = qword_27DD78C78;
  if (!qword_27DD78C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78C78);
  }

  return result;
}

unint64_t sub_231CCFF74()
{
  result = qword_27DD78D00;
  if (!qword_27DD78D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78D00);
  }

  return result;
}

unint64_t sub_231CCFFCC()
{
  result = qword_27DD78D08[0];
  if (!qword_27DD78D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78D08);
  }

  return result;
}

unint64_t sub_231CD0024()
{
  result = qword_27DD78D90;
  if (!qword_27DD78D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78D90);
  }

  return result;
}

unint64_t sub_231CD007C()
{
  result = qword_27DD78D98[0];
  if (!qword_27DD78D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78D98);
  }

  return result;
}

unint64_t sub_231CD00D4()
{
  result = qword_27DD78E20;
  if (!qword_27DD78E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78E20);
  }

  return result;
}

unint64_t sub_231CD012C()
{
  result = qword_27DD78E28[0];
  if (!qword_27DD78E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78E28);
  }

  return result;
}

unint64_t sub_231CD0184()
{
  result = qword_27DD78EB0;
  if (!qword_27DD78EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78EB0);
  }

  return result;
}

unint64_t sub_231CD01DC()
{
  result = qword_27DD78EB8[0];
  if (!qword_27DD78EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78EB8);
  }

  return result;
}

unint64_t sub_231CD0234()
{
  result = qword_27DD78F40;
  if (!qword_27DD78F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78F40);
  }

  return result;
}

unint64_t sub_231CD028C()
{
  result = qword_27DD78F48[0];
  if (!qword_27DD78F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78F48);
  }

  return result;
}

unint64_t sub_231CD02E4()
{
  result = qword_27DD78FD0;
  if (!qword_27DD78FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD78FD0);
  }

  return result;
}

unint64_t sub_231CD033C()
{
  result = qword_27DD78FD8[0];
  if (!qword_27DD78FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD78FD8);
  }

  return result;
}

unint64_t sub_231CD0394()
{
  result = qword_27DD79060;
  if (!qword_27DD79060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79060);
  }

  return result;
}

unint64_t sub_231CD03EC()
{
  result = qword_27DD79068[0];
  if (!qword_27DD79068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79068);
  }

  return result;
}

unint64_t sub_231CD0444()
{
  result = qword_27DD790F0;
  if (!qword_27DD790F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD790F0);
  }

  return result;
}

unint64_t sub_231CD049C()
{
  result = qword_27DD790F8[0];
  if (!qword_27DD790F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD790F8);
  }

  return result;
}

unint64_t sub_231CD04F4()
{
  result = qword_27DD79180;
  if (!qword_27DD79180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79180);
  }

  return result;
}

unint64_t sub_231CD054C()
{
  result = qword_27DD79188[0];
  if (!qword_27DD79188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79188);
  }

  return result;
}

unint64_t sub_231CD05A4()
{
  result = qword_27DD79210;
  if (!qword_27DD79210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79210);
  }

  return result;
}

unint64_t sub_231CD05FC()
{
  result = qword_27DD79218[0];
  if (!qword_27DD79218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79218);
  }

  return result;
}

unint64_t sub_231CD0654()
{
  result = qword_27DD792A0;
  if (!qword_27DD792A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD792A0);
  }

  return result;
}

unint64_t sub_231CD06AC()
{
  result = qword_27DD792A8[0];
  if (!qword_27DD792A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD792A8);
  }

  return result;
}

unint64_t sub_231CD0704()
{
  result = qword_27DD79330;
  if (!qword_27DD79330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79330);
  }

  return result;
}

unint64_t sub_231CD075C()
{
  result = qword_27DD79338[0];
  if (!qword_27DD79338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79338);
  }

  return result;
}

unint64_t sub_231CD07B4()
{
  result = qword_27DD793C0;
  if (!qword_27DD793C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD793C0);
  }

  return result;
}

unint64_t sub_231CD080C()
{
  result = qword_27DD793C8[0];
  if (!qword_27DD793C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD793C8);
  }

  return result;
}

unint64_t sub_231CD0864()
{
  result = qword_27DD79450;
  if (!qword_27DD79450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79450);
  }

  return result;
}

unint64_t sub_231CD08BC()
{
  result = qword_27DD79458[0];
  if (!qword_27DD79458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79458);
  }

  return result;
}

unint64_t sub_231CD0914()
{
  result = qword_27DD794E0;
  if (!qword_27DD794E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD794E0);
  }

  return result;
}

unint64_t sub_231CD096C()
{
  result = qword_27DD794E8[0];
  if (!qword_27DD794E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD794E8);
  }

  return result;
}

unint64_t sub_231CD09C4()
{
  result = qword_27DD79570;
  if (!qword_27DD79570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79570);
  }

  return result;
}

unint64_t sub_231CD0A1C()
{
  result = qword_27DD79578;
  if (!qword_27DD79578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79578);
  }

  return result;
}

unint64_t sub_231CD0A74()
{
  result = qword_27DD79600;
  if (!qword_27DD79600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79600);
  }

  return result;
}

unint64_t sub_231CD0ACC()
{
  result = qword_27DD79608[0];
  if (!qword_27DD79608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79608);
  }

  return result;
}

unint64_t sub_231CD0B24()
{
  result = qword_27DD79690;
  if (!qword_27DD79690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79690);
  }

  return result;
}

unint64_t sub_231CD0B7C()
{
  result = qword_27DD79698[0];
  if (!qword_27DD79698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79698);
  }

  return result;
}

unint64_t sub_231CD0BD4()
{
  result = qword_27DD79720;
  if (!qword_27DD79720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79720);
  }

  return result;
}

unint64_t sub_231CD0C2C()
{
  result = qword_27DD79728[0];
  if (!qword_27DD79728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79728);
  }

  return result;
}

unint64_t sub_231CD0C84()
{
  result = qword_27DD797B0;
  if (!qword_27DD797B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD797B0);
  }

  return result;
}

unint64_t sub_231CD0CDC()
{
  result = qword_27DD797B8[0];
  if (!qword_27DD797B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD797B8);
  }

  return result;
}

unint64_t sub_231CD0D34()
{
  result = qword_27DD79840;
  if (!qword_27DD79840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79840);
  }

  return result;
}

unint64_t sub_231CD0D8C()
{
  result = qword_27DD79848[0];
  if (!qword_27DD79848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79848);
  }

  return result;
}

unint64_t sub_231CD0DE4()
{
  result = qword_27DD798D0;
  if (!qword_27DD798D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD798D0);
  }

  return result;
}

unint64_t sub_231CD0E3C()
{
  result = qword_27DD798D8[0];
  if (!qword_27DD798D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD798D8);
  }

  return result;
}

unint64_t sub_231CD0E94()
{
  result = qword_27DD79960;
  if (!qword_27DD79960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79960);
  }

  return result;
}

unint64_t sub_231CD0EEC()
{
  result = qword_27DD79968[0];
  if (!qword_27DD79968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79968);
  }

  return result;
}

unint64_t sub_231CD0F44()
{
  result = qword_27DD799F0;
  if (!qword_27DD799F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD799F0);
  }

  return result;
}

unint64_t sub_231CD0F9C()
{
  result = qword_27DD799F8[0];
  if (!qword_27DD799F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD799F8);
  }

  return result;
}

unint64_t sub_231CD0FF4()
{
  result = qword_27DD79A80;
  if (!qword_27DD79A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79A80);
  }

  return result;
}

unint64_t sub_231CD104C()
{
  result = qword_27DD79A88[0];
  if (!qword_27DD79A88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79A88);
  }

  return result;
}

unint64_t sub_231CD10A4()
{
  result = qword_27DD79B10;
  if (!qword_27DD79B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79B10);
  }

  return result;
}

unint64_t sub_231CD10FC()
{
  result = qword_27DD79B18[0];
  if (!qword_27DD79B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79B18);
  }

  return result;
}

unint64_t sub_231CD1154()
{
  result = qword_27DD79BA0;
  if (!qword_27DD79BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79BA0);
  }

  return result;
}

unint64_t sub_231CD11AC()
{
  result = qword_27DD79BA8[0];
  if (!qword_27DD79BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79BA8);
  }

  return result;
}

unint64_t sub_231CD1204()
{
  result = qword_27DD79C30;
  if (!qword_27DD79C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79C30);
  }

  return result;
}

unint64_t sub_231CD125C()
{
  result = qword_27DD79C38[0];
  if (!qword_27DD79C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79C38);
  }

  return result;
}

unint64_t sub_231CD12B4()
{
  result = qword_27DD79CC0;
  if (!qword_27DD79CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79CC0);
  }

  return result;
}

unint64_t sub_231CD130C()
{
  result = qword_27DD79CC8[0];
  if (!qword_27DD79CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79CC8);
  }

  return result;
}

unint64_t sub_231CD1364()
{
  result = qword_27DD79D50;
  if (!qword_27DD79D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD79D50);
  }

  return result;
}

unint64_t sub_231CD13BC()
{
  result = qword_27DD79D58[0];
  if (!qword_27DD79D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD79D58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t a1, uint64_t a2)
{

  return sub_231E11F30();
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1)
{

  return sub_231E11DB0();
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2)
{

  return sub_231E11F30();
}

uint64_t sub_231CD1550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v80 = sub_231E107F0();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  v79 = v9 - v8;
  OUTLINED_FUNCTION_3_0();
  v78 = sub_231E10EE0();
  OUTLINED_FUNCTION_24();
  v81 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_1();
  v65 = v13 - v12;
  OUTLINED_FUNCTION_3_0();
  sub_231E10210();
  OUTLINED_FUNCTION_24();
  v76 = v15;
  v77 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_1();
  v67 = (v17 - v16);
  OUTLINED_FUNCTION_3_0();
  v18 = sub_231E0F950();
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_4_1();
  v74 = v20 - v19;
  OUTLINED_FUNCTION_3_0();
  v72 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_1();
  v26 = v25 - v24;
  v27 = sub_231E113F0();
  OUTLINED_FUNCTION_24();
  v75 = v28;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v63 - v33;
  sub_231E100E0();
  (*(*a1 + 168))(v26, a2);
  (*(v22 + 8))(v26, v72);
  v35 = sub_231E10150();
  v83 = a1;
  v84 = a2;
  v36 = sub_231CD1BA8(sub_231CD1B30, v82, v35);

  v37 = sub_231E102B0();
  v38 = sub_231E10000();
  v68 = v39;
  v69 = v38;
  v40 = *(v75 + 16);
  v70 = v32;
  v71 = v34;
  v72 = v27;
  v40(v32, v34, v27);
  sub_231E101B0();
  v41 = sub_231E102D0();
  v43 = v42;
  v44 = v67;
  sub_231E10220();
  v45 = sub_231E10200();
  v66 = v46;
  (*(v76 + 8))(v44, v77);
  v47 = sub_231E100A0();
  v48 = *(v47 + 16);
  if (v48)
  {
    v63[1] = v45;
    v63[2] = v43;
    v63[3] = v41;
    v64 = v37;
    v67 = v36;
    v85 = MEMORY[0x277D84F90];
    v49 = v47;
    sub_231CD25B8(0, v48, 0);
    v50 = v65;
    v51 = v85;
    v53 = *(v6 + 16);
    v52 = v6 + 16;
    v77 = v53;
    v54 = (*(v52 + 64) + 32) & ~*(v52 + 64);
    v63[0] = v49;
    v55 = v49 + v54;
    v76 = *(v52 + 56);
    v56 = (v52 - 8);
    do
    {
      v57 = v79;
      v58 = v80;
      v59 = v52;
      v77(v79, v55, v80);
      sub_231DC4964();
      (*v56)(v57, v58);
      v85 = v51;
      v61 = *(v51 + 16);
      v60 = *(v51 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_231CD25B8((v60 > 1), v61 + 1, 1);
        v51 = v85;
      }

      *(v51 + 16) = v61 + 1;
      (*(v81 + 32))(v51 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v61, v50, v78);
      v55 += v76;
      --v48;
      v52 = v59;
    }

    while (v48);
  }

  sub_231E10F60();
  return (*(v75 + 8))(v71, v72);
}

uint64_t sub_231CD1B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(v2 + 16) + 168))(a1, *(v2 + 24));
  v4 = sub_231E113F0();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

void *sub_231CD1BA8(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74448, &unk_231E171C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_231E113F0();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v27 - v13;
  v14 = 0;
  v15 = *(a3 + 16);
  v29 = v16;
  v32 = (v16 + 32);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v14)
    {
      return v33;
    }

    v17 = *(sub_231E10400() - 8);
    a1(a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_231CD2860(v8);
      ++v14;
    }

    else
    {
      v30 = *v32;
      v30(v31, v8, v9);
      v30(v12, v31, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_231CD22F4(0, v33[2] + 1, 1, v33);
      }

      v20 = v33[2];
      v19 = v33[3];
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v27 = v20 + 1;
        v24 = sub_231CD22F4((v19 > 1), v20 + 1, 1, v33);
        v21 = v27;
        v33 = v24;
      }

      ++v14;
      v22 = v33;
      v33[2] = v21;
      v23 = v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v20;
      v12 = v28;
      v30(v23, v28, v9);
    }
  }

  v25 = v33;

  return v25;
}

uint64_t sub_231CD1EC0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_231E113F0();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x277D84F90];
  sub_231CD2650(0, v9, 0);
  v10 = v22;
  v11 = *(sub_231E10400() - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = v6 + 32;
  v17 = *(v11 + 72);
  while (1)
  {
    v20(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_231CD2650((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v19);
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231CD20C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_231E0F950();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_4_1();
  v5 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  v11 = v10 - v9;
  v12 = sub_231E113F0();
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_4_1();
  sub_231E10000();
  sub_231E0FF80();
  (*(*a1 + 168))(v11, a2);
  (*(v7 + 8))(v11, v5);
  v13 = sub_231E0FF90();
  v16 = a1;
  v17 = a2;
  sub_231CD1EC0(sub_231CD2600, v15, v13);

  sub_231E0FFA0();
  sub_231E0FFC0();
  sub_231E0FFE0();
  sub_231E0FFB0();
  return sub_231E10F60();
}

void *sub_231CD22F4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_231CD23F4(v8, v7);
  v10 = *(sub_231E113F0() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_231CD24F0(a4 + v11, v8, v9 + v11, MEMORY[0x277D4B3B8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_231CD23F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74438, &qword_231E15C08);
  v4 = *(sub_231E113F0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231CD24F0(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_231CD25B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_231CD2698(a1, a2, a3, *v3, &qword_27DD74440, &unk_231E15C10, MEMORY[0x277D4AF58], MEMORY[0x277D4AF58]);
  *v3 = result;
  return result;
}

void *sub_231CD2650(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_231CD2698(a1, a2, a3, *v3, &qword_27DD74438, &qword_231E15C08, MEMORY[0x277D4B3B8], MEMORY[0x277D4B3B8]);
  *v3 = result;
  return result;
}

void *sub_231CD2698(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    sub_231CD24F0(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_231CD2860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74448, &unk_231E171C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_231CD28C8@<X0>(void *__src@<X0>, float *a2@<X8>, float a3@<S0>)
{
  memcpy(&__srca[4], __src, 0x60uLL);
  *a2 = a3;
  return memcpy(a2 + 1, __srca, 0x64uLL);
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization24InferenceEnvironmentInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231CD2950(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 104))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231CD29B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_231CD2A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v9 = a3;
  v13 = a3 >> 8;
  OUTLINED_FUNCTION_148(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, __src[0], *&__src[3]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v9;
  *(a9 + 17) = v13;
  return memcpy((a9 + 18), __src, 0x66uLL);
}

void *sub_231CD2A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v9 = a5;
  v10 = a3;
  v14 = a3 >> 8;
  OUTLINED_FUNCTION_148(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, __src[0], *&__src[3]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v10;
  *(a9 + 17) = v14;
  result = memcpy((a9 + 18), __src, 0x66uLL);
  *(a9 + 120) = v9;
  return result;
}

void *sub_231CD2B00@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  memcpy(__dst, a1 + 32, sizeof(__dst));
  v4 = *a1;
  __src[0] = *(a1 + 8);
  LOWORD(__src[1]) = *(a1 + 12);
  memcpy(&__src[1] + 8, a1 + 32, 0x60uLL);
  sub_231CD2BC0(&v9, v6);
  sub_231CE1054(__dst, v6, &qword_27DD74450, &qword_231E15C20);
  sub_231CD2C1C(a1);
  result = memcpy(a2, __src, 0x78uLL);
  a2[120] = v4;
  return result;
}

void *sub_231CD2C70@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  memcpy(&__dst[120], a2, 0x79uLL);
  memcpy(__dst, a1, 0x78uLL);
  result = memcpy(a5, __dst, 0xF8uLL);
  *(a5 + 248) = a6;
  *(a5 + 256) = a3;
  *(a5 + 264) = a4;
  return result;
}

uint64_t sub_231CD2CF8(const void *a1)
{
  v2 = swift_allocObject();
  sub_231CD2D38(a1);
  return v2;
}

uint64_t sub_231CD2D38(const void *a1)
{
  _s14descr2846EFBA1C23InMemoryMailResultCacheCMa();
  *(v1 + 144) = sub_231CC364C(10000, 150.0, 300.0);
  memcpy((v1 + 16), a1, 0x80uLL);
  return v1;
}

uint64_t sub_231CD2DA0()
{
  OUTLINED_FUNCTION_18();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  OUTLINED_FUNCTION_127(v7);
  v8 = sub_231E10AE0();
  v1[9] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[10] = v9;
  v1[11] = OUTLINED_FUNCTION_55();
  v10 = sub_231E10BE0();
  v1[12] = v10;
  OUTLINED_FUNCTION_6(v10);
  v1[13] = v11;
  v1[14] = OUTLINED_FUNCTION_55();
  v12 = sub_231E10A30();
  v1[15] = v12;
  OUTLINED_FUNCTION_6(v12);
  v1[16] = v13;
  v1[17] = OUTLINED_FUNCTION_55();
  v14 = sub_231E106A0();
  v1[18] = v14;
  OUTLINED_FUNCTION_6(v14);
  v1[19] = v15;
  v1[20] = OUTLINED_FUNCTION_55();
  v16 = sub_231E10340();
  v1[21] = v16;
  OUTLINED_FUNCTION_6(v16);
  v1[22] = v17;
  v1[23] = OUTLINED_FUNCTION_55();
  v18 = type metadata accessor for EntityKind(0);
  v1[24] = v18;
  OUTLINED_FUNCTION_47(v18);
  v1[25] = OUTLINED_FUNCTION_55();
  v19 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_231CD2FA0()
{
  OUTLINED_FUNCTION_29();
  sub_231CD3AE0(v0[3], v0[25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[25];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v0[19] + 32))(v0[20], v2, v0[18]);
      v26 = swift_task_alloc();
      v0[27] = v26;
      *v26 = v0;
      v26[1] = sub_231CD346C;
      v27 = OUTLINED_FUNCTION_13_2();

      result = sub_231CD3E20(v27, v28, v29, v30, v31, v32);
      break;
    case 2:
      v18 = OUTLINED_FUNCTION_126();
      v19(v18);
      sub_231E10A20();
      OUTLINED_FUNCTION_81_0();
      v0[28] = v20;
      v21 = swift_task_alloc();
      v0[29] = v21;
      *v21 = v0;
      v21[1] = sub_231CD35FC;
      OUTLINED_FUNCTION_9_3();

      result = sub_231CD45F4();
      break;
    case 3:
      v22 = OUTLINED_FUNCTION_126();
      v23(v22);
      sub_231E10BC0();
      OUTLINED_FUNCTION_81_0();
      v0[30] = v24;
      v25 = swift_task_alloc();
      v0[31] = v25;
      *v25 = v0;
      v25[1] = sub_231CD37A0;
      OUTLINED_FUNCTION_9_3();

      result = sub_231CD48E0();
      break;
    case 4:
      (*(v0[10] + 32))(v0[11], v2, v0[9]);
      v11 = swift_task_alloc();
      v0[32] = v11;
      *v11 = v0;
      v11[1] = sub_231CD394C;
      v12 = OUTLINED_FUNCTION_13_2();

      result = sub_231CD4364(v12, v13, v14, v15, v16, v17);
      break;
    default:
      (*(v0[22] + 32))(v0[23], v2, v0[21]);
      v3 = swift_task_alloc();
      v0[26] = v3;
      *v3 = v0;
      v3[1] = sub_231CD32DC;
      v4 = OUTLINED_FUNCTION_13_2();

      result = sub_231CD3B44(v4, v5, v6, v7, v8, v9);
      break;
  }

  return result;
}

uint64_t sub_231CD32DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231CD33C0()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v0 = OUTLINED_FUNCTION_88();
  v1(v0);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_231CD346C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231CD3550()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v0 = OUTLINED_FUNCTION_88();
  v1(v0);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_231CD35FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231CD36FC()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_89();
  v0 = OUTLINED_FUNCTION_88();
  v1(v0);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_231CD37A0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231CD38A0()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_89();
  (*(v2 + 8))(v1, *(v0 + 96));

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_231CD394C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231CD3A30()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_89();
  (*(v2 + 8))(v1);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_231CD3AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CD3B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231CD3B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, char a12)
{
  OUTLINED_FUNCTION_59_1();
  v13 = v12[5];
  sub_231E10120();
  v15 = v14;
  sub_231E10000();
  v17 = v16;
  sub_231E102F0();
  v19 = v18;
  if (v13)
  {
    v21 = v12[6];
    v20 = v12[7];
    v22 = v12[5];
  }

  else
  {
    v23 = v12[8];
    v22 = v23[7];
    v21 = v23[8];
    v20 = v23[9];
  }

  v12[9] = v21;
  v12[10] = v22;
  v12[11] = v20;
  v12[12] = v19;
  v12[13] = v17;
  v12[14] = v15;
  v24 = v20;
  v25 = v21;
  v26 = swift_task_alloc();
  v12[15] = v26;
  *v26 = v12;
  OUTLINED_FUNCTION_41_0(v26);
  OUTLINED_FUNCTION_27_1(v27);
  OUTLINED_FUNCTION_35();

  return sub_231CD4CF4(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_231CD3C98()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 88);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_231CD3E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231CD3E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  sub_231E10560();
  if (!v16)
  {
    sub_231E10690();
  }

  v14[9] = v16;
  sub_231E10560();
  if (v17)
  {

    v15 = 0;
  }

  else
  {
    sub_231E10660();
    OUTLINED_FUNCTION_131();
  }

  v14[10] = v15;
  v18 = v14[5];
  if (v18)
  {
    v20 = v14[6];
    v19 = v14[7];
  }

  else
  {
    v21 = v14[8];
    v18 = v21[11];
    v20 = v21[12];
    v19 = v21[13];
  }

  v14[12] = v18;
  v14[13] = v19;
  v14[11] = v20;
  v22 = v19;
  v23 = v20;
  v24 = swift_task_alloc();
  v14[14] = v24;
  *v24 = v14;
  OUTLINED_FUNCTION_41_0(v24);
  OUTLINED_FUNCTION_27_1(v25);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_44();

  return sub_231CD58D0(v26, v27, v28, v29, v30, v31, v32, v33, a9);
}

uint64_t sub_231CD3F7C()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 104);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_231CD40F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231CD4108()
{
  OUTLINED_FUNCTION_29();
  sub_231E10A20();
  OUTLINED_FUNCTION_81_0();
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_231CD41AC;
  OUTLINED_FUNCTION_9_3();

  return sub_231CD45F4();
}

uint64_t sub_231CD41AC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_231CD42A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231CD42C0()
{
  OUTLINED_FUNCTION_29();
  sub_231E10BC0();
  OUTLINED_FUNCTION_81_0();
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_231CE177C;
  OUTLINED_FUNCTION_9_3();

  return sub_231CD48E0();
}

uint64_t sub_231CD4364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231CD4384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  v16 = v14[5];
  sub_231E10AD0();
  v18 = v17;
  sub_231E10AB0();
  OUTLINED_FUNCTION_131();
  if (v16)
  {
    v20 = v14[6];
    v19 = v14[7];
    v21 = v14[5];
  }

  else
  {
    v22 = v14[8];
    v21 = v22[15];
    v20 = v22[16];
    v19 = v22[17];
  }

  v14[9] = v20;
  v14[10] = v21;
  v14[11] = v19;
  v14[12] = v15;
  v14[13] = v18;
  v23 = v19;
  v24 = v20;
  v25 = swift_task_alloc();
  v14[14] = v25;
  *v25 = v14;
  OUTLINED_FUNCTION_41_0(v25);
  OUTLINED_FUNCTION_27_1(v26);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_44();

  return sub_231CD545C(v27, v28, v29, v30, v31, v32, v33, v34, a9);
}

uint64_t sub_231CD4480()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 88);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_231CD45F4()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_231E0FD90();
  v1[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CD469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_47_0();
  v10[9] = *(sub_231CC78B4() + 1);

  sub_231E0FD40();
  v11 = swift_task_alloc();
  v10[10] = v11;
  *v11 = v10;
  v11[1] = sub_231CD4784;
  OUTLINED_FUNCTION_27_1(v10[2]);
  OUTLINED_FUNCTION_66_0();

  return sub_231CD5DE8(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_231CD4784()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_25();
  v4(v3);

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231CD48E0()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  OUTLINED_FUNCTION_47(v5);
  v1[6] = OUTLINED_FUNCTION_69();
  v1[7] = swift_task_alloc();
  v6 = sub_231E0FD90();
  v1[8] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231CD49C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  v12 = v10[7];
  v11 = v10[8];
  v10[11] = *(sub_231CC78C0() + 1);

  sub_231CC78D8();

  sub_231E0FDA0();
  if (__swift_getEnumTagSinglePayload(v12, 1, v11) == 1)
  {
    v14 = v10[7];
    v13 = v10[8];
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);

    sub_231E0FD10();
    if (__swift_getEnumTagSinglePayload(v14, 1, v13) != 1)
    {
      sub_231CE1118(v10[7], &qword_27DD74458, &qword_231E15D38);
    }
  }

  else
  {
    (*(v10[9] + 32))(v10[10], v10[7], v10[8]);
  }

  v18 = swift_task_alloc();
  v10[12] = v18;
  *v18 = v10;
  v18[1] = sub_231CD4B60;
  OUTLINED_FUNCTION_27_1(v10[2]);
  OUTLINED_FUNCTION_44();

  return sub_231CD5DE8(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_231CD4B60()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_25();
  v4(v3);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_231CD4CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, char a12)
{
  OUTLINED_FUNCTION_18();
  *(v13 + 240) = a12;
  *(v13 + 112) = a11;
  *(v13 + 120) = v12;
  *(v13 + 80) = a9;
  *(v13 + 96) = a10;
  *(v13 + 64) = v14;
  *(v13 + 72) = v15;
  *(v13 + 48) = v16;
  *(v13 + 56) = v17;
  *(v13 + 32) = v18;
  *(v13 + 40) = v19;
  *(v13 + 16) = v20;
  *(v13 + 24) = v21;
  *(v13 + 128) = *v12;
  v22 = sub_231E10E30();
  *(v13 + 136) = v22;
  OUTLINED_FUNCTION_6(v22);
  *(v13 + 144) = v23;
  *(v13 + 152) = OUTLINED_FUNCTION_55();
  v24 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
  OUTLINED_FUNCTION_47(v24);
  *(v13 + 160) = OUTLINED_FUNCTION_55();
  v25 = sub_231E0FD90();
  *(v13 + 168) = v25;
  OUTLINED_FUNCTION_6(v25);
  *(v13 + 176) = v26;
  *(v13 + 184) = OUTLINED_FUNCTION_55();
  v27 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_144(v27, v28, v29);
}

uint64_t sub_231CD4E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50_0();
  v11 = v10[10];
  sub_231E0FD20();
  if (v11)
  {
    v12 = v10[11];
    v13 = v10[12];
    v14 = v10[10];
  }

  else
  {
    v15 = v10[15];
    v14 = v15[7];
    v12 = v15[8];
    v13 = v15[9];
  }

  v10[25] = v14;
  v10[26] = v13;
  v10[24] = v12;
  v13;
  v16 = v12;
  OUTLINED_FUNCTION_49();
  v17 = swift_task_alloc();
  v10[27] = v17;
  *v17 = v10;
  v17[1] = sub_231CD4F44;
  OUTLINED_FUNCTION_27_1(v10[2]);
  OUTLINED_FUNCTION_106();

  return sub_231CD5DE8(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_231CD4F44()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 208);
  v3 = *(v1 + 192);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_25();
  v7(v6);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_106();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231CD50CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v14 = *(v12 + 32);
  if (v14 && (v15 = *(v12 + 24), v16 = sub_231DE8A04(1), sub_231CD6294(v16, v17, v15, v14), v19 = v18, v21 = v20, , (*(v12 + 224) = v21) != 0))
  {
    v22 = *(v12 + 160);
    v23 = *(*(v12 + 120) + 144);
    sub_231CD62F8(*(v12 + 104), *(v12 + 112), *(v12 + 240), *(v12 + 16), v22);
    (*(*v23 + 128))(v22, v19, v21);
    sub_231CB4E90(v22);
    v24 = swift_task_alloc();
    *(v12 + 232) = v24;
    *v24 = v12;
    v24[1] = sub_231CD52FC;
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_44();

    return sub_231CD45F4();
  }

  else
  {
    sub_231CB4EEC();
    v27 = OUTLINED_FUNCTION_18_2();
    v28(v27);

    v29 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_153();
    if (OUTLINED_FUNCTION_85())
    {
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a9 = OUTLINED_FUNCTION_28();
      *v13 = 136446210;
      v30 = OUTLINED_FUNCTION_54_0();
      *(v13 + 4) = sub_231CB5000(v30, v31, v32);
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v33, v34, "SpotlightWriter: Not writing mail result to notification, missing notification id, mail uniqueId: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v35 = OUTLINED_FUNCTION_25();
    v36(v35);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_44();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }
}

uint64_t sub_231CD52FC()
{
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_231CD545C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v10[10] = a9;
  v10[11] = v9;
  v10[8] = v11;
  v10[9] = v12;
  v10[6] = v13;
  v10[7] = v14;
  v10[4] = v15;
  v10[5] = v16;
  v10[2] = v17;
  v10[3] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  OUTLINED_FUNCTION_47(v19);
  v10[12] = OUTLINED_FUNCTION_69();
  v10[13] = swift_task_alloc();
  v20 = sub_231E0FD90();
  v10[14] = v20;
  OUTLINED_FUNCTION_6(v20);
  v10[15] = v21;
  v10[16] = OUTLINED_FUNCTION_55();
  v22 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v22, v23, v24);
}

uint64_t sub_231CD5540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50_0();
  v12 = v10[13];
  v11 = v10[14];
  sub_231CC7FC8();

  OUTLINED_FUNCTION_70();
  sub_231E0FDA0();
  if (__swift_getEnumTagSinglePayload(v12, 1, v11) == 1)
  {
    v14 = v10[13];
    v13 = v10[14];
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);

    sub_231E0FD10();
    if (__swift_getEnumTagSinglePayload(v14, 1, v13) != 1)
    {
      sub_231CE1118(v10[13], &qword_27DD74458, &qword_231E15D38);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_126();
    v19(v18);
  }

  v20 = v10[8];
  if (v20)
  {
    v21 = v10[9];
    v22 = v10[10];
  }

  else
  {
    v23 = v10[11];
    v20 = v23[15];
    v21 = v23[16];
    v22 = v23[17];
  }

  v10[18] = v20;
  v10[19] = v22;
  v10[17] = v21;
  v22;
  v24 = v21;
  OUTLINED_FUNCTION_49();
  v25 = swift_task_alloc();
  v10[20] = v25;
  *v25 = v10;
  v25[1] = sub_231CD56FC;
  OUTLINED_FUNCTION_27_1(v10[2]);
  OUTLINED_FUNCTION_106();

  return sub_231CD5DE8(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_231CD56FC()
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 152);
  v3 = *(v1 + 136);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_25();
  v7(v6);

  OUTLINED_FUNCTION_19();

  return v8();
}

uint64_t sub_231CD58D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v10[10] = a9;
  v10[11] = v9;
  v10[8] = v11;
  v10[9] = v12;
  v10[6] = v13;
  v10[7] = v14;
  v10[4] = v15;
  v10[5] = v16;
  v10[2] = v17;
  v10[3] = v18;
  v10[12] = *v9;
  v19 = sub_231E0FD90();
  v10[13] = v19;
  OUTLINED_FUNCTION_6(v19);
  v10[14] = v20;
  v10[15] = OUTLINED_FUNCTION_55();
  v21 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v21, v22, v23);
}

uint64_t sub_231CD59A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_50_0();
  v11 = v10[8];
  sub_231E0FD70();
  if (v11)
  {
    v12 = v10[9];
    v13 = v10[10];
    v14 = v10[8];
  }

  else
  {
    v15 = v10[11];
    v14 = v15[11];
    v12 = v15[12];
    v13 = v15[13];
  }

  v10[17] = v14;
  v10[18] = v13;
  v10[16] = v12;
  v13;
  v16 = v12;
  OUTLINED_FUNCTION_49();
  v17 = swift_task_alloc();
  v10[19] = v17;
  *v17 = v10;
  v17[1] = sub_231CD5AA4;
  OUTLINED_FUNCTION_27_1(v10[2]);
  OUTLINED_FUNCTION_106();

  return sub_231CD5DE8(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_231CD5AA4()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 144);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_25();
  v7(v6);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_106();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231CD5C2C()
{
  OUTLINED_FUNCTION_29();
  sub_231CD65F4(v0[3], v0[4]);
  OUTLINED_FUNCTION_81_0();
  v0[20] = v1;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_231CD5CD0;
  OUTLINED_FUNCTION_9_3();

  return sub_231CD45F4();
}

uint64_t sub_231CD5CD0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_231CD5DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18();
  v12 = *v10;
  v11[11] = a10;
  v11[12] = v12;
  v11[9] = v13;
  v11[10] = a9;
  v11[7] = v14;
  v11[8] = v15;
  v11[5] = v16;
  v11[6] = v17;
  v11[3] = v18;
  v11[4] = v19;
  OUTLINED_FUNCTION_127(v20);
  v21 = sub_231E10E30();
  v11[13] = v21;
  OUTLINED_FUNCTION_6(v21);
  v11[14] = v22;
  v11[15] = OUTLINED_FUNCTION_55();
  v23 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v23, v24, v25);
}

uint64_t sub_231CD5EB8()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = sub_231CD6450(v0[2], v0[7]);
  v0[16] = v1;
  objc_allocWithZone(MEMORY[0x277CC34B0]);

  v2 = v1;
  OUTLINED_FUNCTION_49();

  v3 = OUTLINED_FUNCTION_94();
  v0[17] = v3;
  [v3 setIsUpdate_];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v5 = OUTLINED_FUNCTION_76(v4);
  v0[18] = v5;
  OUTLINED_FUNCTION_48_0(v5, xmmword_231E13420);
  v6 = v3;
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_231CD5FE4;
  OUTLINED_FUNCTION_106();

  return sub_231D5F40C(v8, v9, v10, v11, v12);
}

uint64_t sub_231CD5FE4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CD60E4()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_231CD6148()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[16];

  sub_231CB4EEC();
  v4 = OUTLINED_FUNCTION_17_4();
  v5(v4);
  v6 = v1;
  v7 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_118_0();
  v8 = OUTLINED_FUNCTION_117();
  v9 = v0[20];
  if (v8)
  {
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_116(5.7779e-34);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_97(v11);
    OUTLINED_FUNCTION_40_0(&dword_231CAE000, v12, v13, "Could not write summarization status with error: %@");
    sub_231CE1118(v10, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

void sub_231CD6294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x23837CC20](58, 0xE100000000000000);
  MEMORY[0x23837CC20](a3, a4);
}

uint64_t sub_231CD62F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = ~a3;
  v11 = sub_231E0FD90();
  OUTLINED_FUNCTION_24();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_1();
  v17 = v16 - v15;
  if (v10)
  {
    sub_231CC3500(a1, a2, a3);

    return sub_231CC3610(a1, a2, a3, a5);
  }

  else
  {
    sub_231E0FD20();
    v19 = sub_231CD6450(a4, v17);
    (*(v13 + 8))(v17, v11);
    return sub_231CC3610(v19, 0, 64, a5);
  }
}

id sub_231CD6450(uint64_t a1, uint64_t a2)
{
  v4 = sub_231E0FD90();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  v10 = v9 - v8;
  sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  (*(v6 + 16))(v10, a2, v4);
  v11 = sub_231CD6B44(v10);
  LODWORD(v10) = *(a1 + 240);
  sub_231DE93AC();
  v12 = 0;
  if (v10 != 2)
  {
    v12 = sub_231E11910();
  }

  v13 = OUTLINED_FUNCTION_46_0();
  [v13 v14];

  memcpy(__dst, (a1 + 144), sizeof(__dst));
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_78();
  sub_231DE9728(v15, v16, v17, v18);
  sub_231DE8F6C();
  memcpy(v26, (a1 + 24), sizeof(v26));
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_78();
  sub_231DE9728(v19, v20, v21, v22);
  sub_231DE92E8(*(a1 + 248));
  v23 = *(a1 + 256);
  if (v23)
  {
    sub_231CE0FE4(v23, v11);
  }

  v24 = *(a1 + 264);
  if (v24)
  {
    sub_231CE0F84(v24, v11);
  }

  return v11;
}

uint64_t sub_231CD65F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_231DE8A04(0);
  v6 = v5;
  v7 = sub_231D6F8B8(a1, a2);
  sub_231CD6294(v4, v6, v7, v8);
  v10 = v9;

  return v10;
}

uint64_t sub_231CD6674()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  *(v1 + 104) = v3;
  v4 = sub_231E10E30();
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_6(v4);
  *(v1 + 40) = v5;
  *(v1 + 48) = OUTLINED_FUNCTION_55();
  v6 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v6);
  *(v1 + 56) = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CD673C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v1 = v0[7];
  v2 = sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  sub_231E0FD20();
  v3 = sub_231CD6B44(v1);
  OUTLINED_FUNCTION_150(v3);
  sub_231E10000();
  sub_231E102F0();
  v4 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v5 = OUTLINED_FUNCTION_93(v2);
  v0[9] = v5;
  [v5 setIsUpdate_];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v7 = OUTLINED_FUNCTION_76(v6);
  v0[10] = v7;
  OUTLINED_FUNCTION_48_0(v7, xmmword_231E13420);
  v8 = v5;
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_8_3(v9);
  OUTLINED_FUNCTION_66_0();

  return sub_231D5F40C(v10, v11, v12, v13, v14);
}

uint64_t sub_231CD6894()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CD6994()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_231CD6A00()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_111();

  sub_231DC4AB8();
  v4 = OUTLINED_FUNCTION_17_4();
  v5(v4);
  v6 = v0;
  v7 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_118_0();
  v8 = OUTLINED_FUNCTION_117();
  v9 = v1[12];
  if (v8)
  {
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_116(5.7779e-34);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_97(v11);
    OUTLINED_FUNCTION_40_0(&dword_231CAE000, v12, v13, "Could not write smart replies status with error: %@");
    sub_231CE1118(v10, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v1[5] + 8))(v1[6], v1[4]);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

id sub_231CD6B44(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_231E0FD30();
  v4 = [v2 initWithContentType_];

  v5 = sub_231E0FD90();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_231CD6BE0()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  *(v1 + 104) = v3;
  v4 = sub_231E10E30();
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_6(v4);
  *(v1 + 40) = v5;
  *(v1 + 48) = OUTLINED_FUNCTION_55();
  v6 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v6);
  *(v1 + 56) = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CD6CA8()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v1 = v0[7];
  v2 = sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  sub_231E0FD70();
  v3 = sub_231CD6B44(v1);
  OUTLINED_FUNCTION_150(v3);
  sub_231E10690();
  sub_231E10660();
  v4 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v5 = OUTLINED_FUNCTION_93(v2);
  v0[9] = v5;
  [v5 setIsUpdate_];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v7 = OUTLINED_FUNCTION_76(v6);
  v0[10] = v7;
  OUTLINED_FUNCTION_48_0(v7, xmmword_231E13420);
  v8 = v5;
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_8_3(v9);
  OUTLINED_FUNCTION_66_0();

  return sub_231D5F40C(v10, v11, v12, v13, v14);
}

uint64_t sub_231CD6E00()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CD6F00()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_111();

  sub_231CB4EEC();
  v4 = OUTLINED_FUNCTION_17_4();
  v5(v4);
  v6 = v0;
  v7 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_118_0();
  v8 = OUTLINED_FUNCTION_117();
  v9 = v1[12];
  if (v8)
  {
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_116(5.7779e-34);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_97(v11);
    OUTLINED_FUNCTION_40_0(&dword_231CAE000, v12, v13, "Could not write summarization status with error: %@");
    sub_231CE1118(v10, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v1[5] + 8))(v1[6], v1[4]);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_231CD7044()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v1[3] = v8;
  v9 = sub_231E0FD90();
  v1[10] = v9;
  OUTLINED_FUNCTION_6(v9);
  v1[11] = v10;
  v1[12] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231CD70F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_47_0();
  v13 = sub_231CC78B4();
  v14 = *v13;
  v12[13] = v13[1];

  sub_231E0FD40();
  v15 = sub_231E11530();
  v12[14] = v15;
  v16 = swift_task_alloc();
  v12[15] = v16;
  *v16 = v12;
  v16[1] = sub_231CD722C;
  v17 = OUTLINED_FUNCTION_27_1(v12[2]);

  return sub_231CD73B0(v17, v18, v19, v20, v15, v21, v22, v14, a9, a10, a11, a12);
}

uint64_t sub_231CD722C()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[10];
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_231CD73B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_18();
  *(v13 + 128) = a12;
  *(v13 + 136) = v12;
  *(v13 + 120) = a11;
  *(v13 + 104) = a10;
  *(v13 + 88) = a9;
  OUTLINED_FUNCTION_99(v14, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = sub_231E10E30();
  *(v13 + 144) = v23;
  OUTLINED_FUNCTION_6(v23);
  *(v13 + 152) = v24;
  *(v13 + 160) = OUTLINED_FUNCTION_55();
  v25 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_144(v25, v26, v27);
}

uint64_t sub_231CD7460()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  sub_231CD8860(*(v0 + 16), *(v0 + 24), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 96), *(v0 + 32));
  v2 = v1;
  *(v0 + 168) = v1;
  objc_allocWithZone(MEMORY[0x277CC34B0]);

  v3 = v2;
  OUTLINED_FUNCTION_49();

  v4 = OUTLINED_FUNCTION_94();
  *(v0 + 176) = v4;
  [v4 setIsUpdate_];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v6 = OUTLINED_FUNCTION_76(v5);
  *(v0 + 184) = v6;
  OUTLINED_FUNCTION_48_0(v6, xmmword_231E13420);
  v7 = v4;
  v8 = swift_task_alloc();
  *(v0 + 192) = v8;
  *v8 = v0;
  v8[1] = sub_231CD7598;
  OUTLINED_FUNCTION_106();

  return sub_231D5F40C(v9, v10, v11, v12, v13);
}

uint64_t sub_231CD7598()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CD7698()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_231CD76FC()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[21];

  sub_231CB4EEC();
  v4 = OUTLINED_FUNCTION_17_4();
  v5(v4);
  v6 = v1;
  v7 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_118_0();
  v8 = OUTLINED_FUNCTION_117();
  v9 = v0[25];
  if (v8)
  {
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_116(5.7779e-34);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_97(v11);
    OUTLINED_FUNCTION_40_0(&dword_231CAE000, v12, v13, "Could not write summary with error: %@");
    sub_231CE1118(v10, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v0[19] + 8))(v0[20], v0[18]);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_231CD7848()
{
  OUTLINED_FUNCTION_18();
  v1[39] = v2;
  v1[40] = v0;
  v1[37] = v3;
  v1[38] = v4;
  v1[36] = v5;
  v1[34] = v6;
  v1[35] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  OUTLINED_FUNCTION_47(v8);
  v1[41] = OUTLINED_FUNCTION_69();
  v1[42] = swift_task_alloc();
  v9 = sub_231E0FD90();
  v1[43] = v9;
  OUTLINED_FUNCTION_6(v9);
  v1[44] = v10;
  v1[45] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231CD7930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  v13 = sub_231E11620();
  v15 = v14;
  v16 = sub_231E10B50();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
  *(v12 + 16) = v16;
  *(v12 + 40) = v17;
  sub_231CE1044((v12 + 16), (v12 + 48));
  v18 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_231CE0DD0((v12 + 48), v13, v15, isUniquelyReferenced_nonNull_native);

  v20 = v18;
  v21 = sub_231E11620();
  v23 = v22;
  v24 = sub_231E10B40();
  v26 = MEMORY[0x277D837D0];
  if (v25)
  {
    *(v12 + 104) = MEMORY[0x277D837D0];
    *(v12 + 80) = v24;
    *(v12 + 88) = v25;
    sub_231CE1044((v12 + 80), (v12 + 240));
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_231CE0DD0((v12 + 240), v21, v23, v27);
  }

  else
  {
    v28 = sub_231CE0CA4(v21, v23);
    if (v29)
    {
      v30 = v28;
      swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v18 + 24);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74468, &qword_231E15D78);
      v32 = OUTLINED_FUNCTION_147(v31);
      OUTLINED_FUNCTION_143(v32, v33, v34, v35, v36, v37, v38, v39, v78, v79, v80, v81, v18);
      sub_231CE1044((*(v20 + 56) + 32 * v30), (v12 + 112));
      sub_231E11EB0();
    }

    else
    {
      *(v12 + 112) = 0u;
      *(v12 + 128) = 0u;
    }

    sub_231CE1118(v12 + 112, &dword_27DD741E0, &qword_231E15D70);
  }

  v40 = sub_231E11620();
  v42 = v41;
  v43 = sub_231E10BA0();
  if (v44)
  {
    *(v12 + 168) = v26;
    *(v12 + 144) = v43;
    *(v12 + 152) = v44;
    sub_231CE1044((v12 + 144), (v12 + 208));
    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_231CE0DD0((v12 + 208), v40, v42, v45);
  }

  else
  {
    v46 = sub_231CE0CA4(v40, v42);
    if (v47)
    {
      v48 = v46;
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v20;
      v20 = *(v20 + 24);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74468, &qword_231E15D78);
      v50 = OUTLINED_FUNCTION_147(v49);
      OUTLINED_FUNCTION_143(v50, v51, v52, v53, v54, v55, v56, v57, v78, v79, v80, v81, v82);
      sub_231CE1044((*(v20 + 56) + 32 * v48), (v12 + 176));
      sub_231E11EB0();
    }

    else
    {
      *(v12 + 176) = 0u;
      *(v12 + 192) = 0u;
    }

    sub_231CE1118(v12 + 176, &dword_27DD741E0, &qword_231E15D70);
  }

  *(v12 + 368) = v20;
  v59 = *(v12 + 336);
  v58 = *(v12 + 344);
  sub_231E10BC0();
  v61 = v60;
  *(v12 + 376) = *(sub_231CC78C0() + 1);

  sub_231CC78D8();

  sub_231E0FDA0();
  if (__swift_getEnumTagSinglePayload(v59, 1, v58) == 1)
  {
    v63 = *(v12 + 336);
    v62 = *(v12 + 344);
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v62);

    sub_231E0FD10();
    if (__swift_getEnumTagSinglePayload(v63, 1, v62) != 1)
    {
      sub_231CE1118(*(v12 + 336), &qword_27DD74458, &qword_231E15D38);
    }
  }

  else
  {
    (*(*(v12 + 352) + 32))(*(v12 + 360), *(v12 + 336), *(v12 + 344));
  }

  *(v12 + 384) = v61;
  v67 = swift_task_alloc();
  *(v12 + 392) = v67;
  *v67 = v12;
  v67[1] = sub_231CD7DC8;
  OUTLINED_FUNCTION_27_1(*(v12 + 272));
  OUTLINED_FUNCTION_37();

  return sub_231CD73B0(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12);
}

uint64_t sub_231CD7DC8()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_70();
  v4(v3);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_106();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231CD7F58()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_231CD7FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v10[11] = a9;
  v10[12] = v9;
  v10[9] = v11;
  v10[10] = v12;
  v10[7] = v13;
  v10[8] = v14;
  v10[5] = v15;
  v10[6] = v16;
  v10[4] = v17;
  v10[2] = v18;
  v10[3] = v19;
  v10[13] = *v9;
  v20 = sub_231E0FD90();
  v10[14] = v20;
  OUTLINED_FUNCTION_6(v20);
  v10[15] = v21;
  v10[16] = OUTLINED_FUNCTION_69();
  v10[17] = swift_task_alloc();
  v22 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
  OUTLINED_FUNCTION_47(v22);
  v10[18] = OUTLINED_FUNCTION_55();
  v23 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v23, v24, v25);
}

uint64_t sub_231CD80C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57_0();
  v14 = sub_231E10120();
  if (v15 && (v16 = v14, v17 = v15, v18 = sub_231DE8A04(1), v13 = v19, sub_231CD6294(v18, v19, v16, v17), v21 = v20, v23 = v22, , , (v12[19] = v23) != 0))
  {
    v12[20] = v21;
    v24 = swift_task_alloc();
    v12[21] = v24;
    *v24 = v12;
    v24[1] = sub_231CD82F4;
    OUTLINED_FUNCTION_27_1(v12[2]);

    return sub_231CD7044();
  }

  else
  {
    v26 = v12[9];
    sub_231E10000();
    v28 = v27;
    sub_231E102F0();
    OUTLINED_FUNCTION_131();
    sub_231E0FD20();
    if (v26)
    {
      v29 = v12[10];
      v30 = v12[11];
      v31 = v12[9];
    }

    else
    {
      v32 = v12[12];
      v31 = v32[7];
      v29 = v32[8];
      v30 = v32[9];
    }

    v12[22] = v29;
    v12[23] = v31;
    v12[24] = v30;
    v12[25] = v13;
    v12[26] = v28;
    v33 = v30;
    v34 = v29;
    v12[27] = sub_231E11530();
    v35 = swift_task_alloc();
    v12[28] = v35;
    *v35 = v12;
    OUTLINED_FUNCTION_21_1(v35);
    OUTLINED_FUNCTION_27_1(v36);
    OUTLINED_FUNCTION_44();

    return sub_231CD73B0(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }
}

uint64_t sub_231CD82F4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231CD83D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  v43 = *(v12 + 19);
  v44 = *(v12 + 20);
  v14 = *(v12 + 17);
  v13 = *(v12 + 18);
  v15 = *(v12 + 15);
  v42 = *(v12 + 14);
  v17 = *(v12 + 5);
  v16 = *(v12 + 6);
  v18 = v12[4];
  v19 = *(v12 + 2);
  v20 = *(v12 + 3);
  v21 = *(*(v12 + 12) + 144);
  sub_231E0FD20();
  v22 = sub_231E11530();
  sub_231CD8860(v19, v20, v17, v16, v22, v14, v18);
  v24 = v23;

  (*(v15 + 8))(v14, v42);
  sub_231CC3610(v24, 0, 64, v13);
  (*(*v21 + 128))(v13, v44, v43);

  sub_231CB4E90(v13);
  v25 = *(v12 + 9);
  v45 = sub_231E10000();
  v27 = v26;
  sub_231E102F0();
  OUTLINED_FUNCTION_131();
  sub_231E0FD20();
  if (v25)
  {
    v28 = *(v12 + 10);
    v29 = *(v12 + 11);
    v30 = *(v12 + 9);
  }

  else
  {
    v31 = *(v12 + 12);
    v30 = v31[7];
    v28 = v31[8];
    v29 = v31[9];
  }

  *(v12 + 22) = v28;
  *(v12 + 23) = v30;
  *(v12 + 24) = v29;
  *(v12 + 25) = v24;
  *(v12 + 26) = v27;
  v32 = v29;
  v33 = v28;
  v34 = sub_231E11530();
  *(v12 + 27) = v34;
  v35 = swift_task_alloc();
  *(v12 + 28) = v35;
  *v35 = v12;
  OUTLINED_FUNCTION_21_1(v35);
  v37 = OUTLINED_FUNCTION_27_1(v36);

  return sub_231CD73B0(v37, v38, v39, v40, v34, v45, v27, v20, a9, a10, a11, a12);
}

uint64_t sub_231CD8630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_21();
  v32 = v15[25];
  v16 = v15[24];
  v17 = v15[22];
  v33 = v15[18];
  v34 = v15[17];
  v18 = v15[16];
  v19 = v15[15];
  v20 = v15[14];
  v21 = *v14;
  OUTLINED_FUNCTION_4();
  *v22 = v21;

  (*(v19 + 8))(v18, v20);

  OUTLINED_FUNCTION_35();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, a12, a13, a14);
}

void sub_231CD8860(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v90 = a1;
  v91 = a6;
  v97 = a5;
  v94 = a4;
  v95 = a3;
  v93 = a2;
  v8 = sub_231E0F5F0();
  OUTLINED_FUNCTION_24();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_139();
  v96 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v90 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  v17 = OUTLINED_FUNCTION_47(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_139();
  v92 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v90 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v90 - v23;
  v25 = sub_231E0FD90();
  OUTLINED_FUNCTION_24();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_1();
  v31 = v30 - v29;
  sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  (*(v27 + 16))(v31, v91, v25);
  v32 = v90;
  v33 = v10;
  v34 = sub_231CD6B44(v31);
  sub_231CE1054(v32, v24, &qword_27DD74470, &qword_231E17120);
  if (__swift_getEnumTagSinglePayload(v24, 1, v8) != 1)
  {
    v35 = OUTLINED_FUNCTION_90();
    v36(v35, v24, v8);
    sub_231CC1784(0, &unk_2814CAF10, 0x277CCA898);
    v37 = OUTLINED_FUNCTION_69_0();
    v38(v37);
    sub_231E11B60();
    v39 = OUTLINED_FUNCTION_101();
    v40(v39);
  }

  v41 = OUTLINED_FUNCTION_102();
  [v41 v42];

  v43 = type metadata accessor for SummarizerResult(0);
  sub_231CE1054(v32 + v43[6], v22, &qword_27DD74470, &qword_231E17120);
  if (__swift_getEnumTagSinglePayload(v22, 1, v8) != 1)
  {
    v44 = OUTLINED_FUNCTION_90();
    v45(v44, v22, v8);
    sub_231CC1784(0, &unk_2814CAF10, 0x277CCA898);
    v46 = OUTLINED_FUNCTION_69_0();
    v47(v46);
    sub_231E11B60();
    v48 = OUTLINED_FUNCTION_101();
    v49(v48);
  }

  v50 = OUTLINED_FUNCTION_102();
  [v50 v51];

  v52 = v92;
  sub_231CE1054(v32 + v43[5], v92, &qword_27DD74470, &qword_231E17120);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v8);
  v54 = v93;
  if (EnumTagSinglePayload == 1)
  {
    v55 = 0;
  }

  else
  {
    v56 = OUTLINED_FUNCTION_90();
    v57(v56, v52, v8);
    sub_231CC1784(0, &unk_2814CAF10, 0x277CCA898);
    (*(v33 + 16))(v96, v15, v8);
    v55 = sub_231E11B60();
    (*(v33 + 8))(v15, v8);
  }

  v58 = OUTLINED_FUNCTION_102();
  [v58 v59];

  if ((sub_231DE8F38(*(v54 + 1), *(v54 + 2), *(v54 + 12)) & 1) == 0)
  {
    sub_231DE93AC();
    if (*v54 == 2)
    {
      v60 = 0;
    }

    else
    {
      v60 = sub_231E11910();
    }

    v61 = OUTLINED_FUNCTION_102();
    [v61 v62];

    memcpy(v104, v54 + 32, sizeof(v104));
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_78();
    sub_231DE9728(v63, v64, v65, v66);
  }

  if (*(v32 + v43[9]))
  {
    v67 = sub_231E11850();
    v68 = sub_231E115F0();
    v69 = OUTLINED_FUNCTION_102();
    [v69 v70];
  }

  [v34 setSummarizationStatus_];
  memcpy(__dst, (v32 + v43[8]), sizeof(__dst));
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_78();
  sub_231DE9728(v71, v72, v73, v74);
  sub_231DE92E8(a7);
  sub_231CE0F84(v95, v34);
  if (v94)
  {
    sub_231CE0FE4(v94, v34);
  }

  v75 = v34;
  v76 = v97 + 64;
  v77 = 1 << *(v97 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(v97 + 64);
  v80 = (v77 + 63) >> 6;

  v81 = 0;
  if (v79)
  {
    while (1)
    {
      v82 = v81;
LABEL_25:
      v83 = __clz(__rbit64(v79));
      v79 &= v79 - 1;
      v84 = v83 | (v82 << 6);
      v85 = (*(v97 + 48) + 16 * v84);
      v87 = *v85;
      v86 = v85[1];
      sub_231CB51C4(*(v97 + 56) + 32 * v84, v98);
      *&v99 = v87;
      *(&v99 + 1) = v86;
      sub_231CE1044(v98, &v100);

LABEL_26:
      v102 = v99;
      v103[0] = v100;
      v103[1] = v101;
      if (!*(&v99 + 1))
      {
        break;
      }

      sub_231CE1044(v103, &v99);
      __swift_project_boxed_opaque_existential_0(&v99, *(&v100 + 1));
      v88 = sub_231E120F0();
      __swift_destroy_boxed_opaque_existential_0(&v99);
      v89 = sub_231E115F0();

      [v75 setAttribute:v88 forKey:v89];
      swift_unknownObjectRelease();

      if (!v79)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    while (1)
    {
      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if (v82 >= v80)
      {
        v79 = 0;
        v100 = 0u;
        v101 = 0u;
        v99 = 0u;
        goto LABEL_26;
      }

      v79 = *(v76 + 8 * v82);
      ++v81;
      if (v79)
      {
        v81 = v82;
        goto LABEL_25;
      }
    }

    __break(1u);
  }
}

uint64_t sub_231CD8F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v10[206] = v9;
  v10[205] = a9;
  v10[204] = v11;
  v10[203] = v12;
  v10[202] = v13;
  v10[201] = v14;
  v10[200] = v15;
  v10[199] = v16;
  v10[198] = v17;
  v10[197] = v18;
  v10[196] = v19;
  v10[207] = *v9;
  v20 = sub_231E106A0();
  v10[208] = v20;
  OUTLINED_FUNCTION_6(v20);
  v10[209] = v21;
  v10[210] = OUTLINED_FUNCTION_55();
  v22 = sub_231E10E30();
  v10[211] = v22;
  OUTLINED_FUNCTION_6(v22);
  v10[212] = v23;
  v10[213] = OUTLINED_FUNCTION_55();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74478, &qword_231E15D98);
  OUTLINED_FUNCTION_47(v24);
  v10[214] = OUTLINED_FUNCTION_55();
  v25 = sub_231E10BE0();
  v10[215] = v25;
  OUTLINED_FUNCTION_6(v25);
  v10[216] = v26;
  v10[217] = OUTLINED_FUNCTION_55();
  v27 = sub_231E0FD90();
  v10[218] = v27;
  OUTLINED_FUNCTION_6(v27);
  v10[219] = v28;
  v10[220] = OUTLINED_FUNCTION_55();
  v29 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v29, v30, v31);
}

uint64_t sub_231CD915C(uint64_t a1)
{
  v30 = v1;
  v2 = sub_231E10560();
  if (!v3)
  {
    v2 = sub_231E10690();
  }

  *(v1 + 1776) = v3;
  *(v1 + 1768) = v2;
  sub_231E10560();
  if (v4)
  {

    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = sub_231E10660();
  }

  *(v1 + 1792) = v6;
  *(v1 + 1784) = v5;
  v7 = *(v1 + 1648);
  v8 = *(v1 + 1592);
  v9 = OUTLINED_FUNCTION_25();
  sub_231CD65F4(v9, v10);
  OUTLINED_FUNCTION_81_0();
  *(v1 + 1800) = v11;
  type metadata accessor for SpotlightReader();
  memcpy((v1 + 560), (v7 + 16), 0x80uLL);
  sub_231CE10BC(v1 + 560, v1 + 816);
  *(v1 + 1808) = sub_231DF7564();
  if (*(v8 + 16) >= 2uLL)
  {
    v14 = *(v1 + 1600);
    v15 = *(v1 + 1584);
    v16 = *(v1 + 1576);
    v17 = *(v1 + 1568);
    v18 = *(type metadata accessor for SummarizerResult(0) + 32);
    memcpy((v1 + 1136), (v17 + v18), 0x60uLL);
    memcpy((v1 + 1448), (v17 + v18), 0x60uLL);
    v19 = *(v16 + 24);
    *(v1 + 1424) = *(v16 + 8);
    *(v1 + 1440) = v19;
    memcpy((v1 + 1040), (v16 + 32), 0x60uLL);
    LOBYTE(v17) = *v16;
    v29[0] = *(v16 + 8);
    LOWORD(v29[1]) = *(v16 + 24);
    memcpy(&v29[1] + 8, (v16 + 32), 0x60uLL);
    *(v1 + 288) = xmmword_231E15CC0;
    *(v1 + 304) = 269;
    memcpy((v1 + 306), (v1 + 1442), 0x66uLL);
    memcpy((v1 + 408), v29, 0x78uLL);
    *(v1 + 528) = v17;
    *(v1 + 536) = v15;
    *(v1 + 544) = v14;
    *(v1 + 552) = 0;
    memcpy((v1 + 16), (v1 + 288), 0x110uLL);
    OUTLINED_FUNCTION_124();
    sub_231CE1054(v20, v21, v22, v23);
    sub_231CD2BC0(v1 + 1424, v1 + 1544);
    OUTLINED_FUNCTION_124();
    sub_231CE1054(v24, v25, v26, v27);

    v28 = swift_task_alloc();
    *(v1 + 1816) = v28;
    *v28 = v1;
    v28[1] = sub_231CD9470;

    return sub_231CD45F4();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v1 + 1824) = v12;
    *v12 = v1;
    v12[1] = sub_231CD965C;
    OUTLINED_FUNCTION_32_1();
    OUTLINED_FUNCTION_27_1(*(v1 + 1568));

    return sub_231CD7044();
  }
}

uint64_t sub_231CD9470()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CC4F5C(v2 + 288);
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231CD9570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_50_0();
  v15 = v13[203];
  sub_231E0FD70();
  if (v15)
  {
    OUTLINED_FUNCTION_133();
  }

  else
  {
    OUTLINED_FUNCTION_132();
  }

  v13[231] = v15;
  v13[230] = v14;
  v13[229] = v12;
  v16 = v12;
  v17 = v15;
  v13[232] = sub_231E11530();
  v18 = swift_task_alloc();
  v13[233] = v18;
  *v18 = v13;
  OUTLINED_FUNCTION_25_2(v18);
  OUTLINED_FUNCTION_106();

  return sub_231CD73B0(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_231CD965C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231CD975C()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 1848);
  v3 = *(v1 + 1832);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_80();
  v7(v6);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_44();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231CD9B70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231CD9F04()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  sub_231CD2C1C(v2 + 688);
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231CD9FE8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[217];
  v2 = v0[216];
  v3 = v0[215];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_55_0();

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_231CDA090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v10[11] = a9;
  v10[12] = v9;
  OUTLINED_FUNCTION_99(v11, v12, v13, v14, v15, v16, v17, v18, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  OUTLINED_FUNCTION_47(v20);
  v10[13] = OUTLINED_FUNCTION_55();
  v21 = sub_231E0FD90();
  v10[14] = v21;
  OUTLINED_FUNCTION_6(v21);
  v10[15] = v22;
  v10[16] = OUTLINED_FUNCTION_55();
  v23 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v23, v24, v25);
}

uint64_t sub_231CDA15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_59_1();
  v13 = v12[14];
  v14 = v12[9];
  sub_231E10AD0();
  v16 = v15;
  sub_231E10AB0();
  v18 = v17;
  sub_231CC7FC8();
  OUTLINED_FUNCTION_105();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v13);

  sub_231E0FD10();
  if (v14)
  {
    v22 = v12[10];
    v23 = v12[11];
    v24 = v12[9];
  }

  else
  {
    v25 = v12[12];
    v24 = v25[15];
    v22 = v25[16];
    v23 = v25[17];
  }

  v12[17] = v22;
  v12[18] = v24;
  v12[19] = v23;
  v12[20] = v18;
  v12[21] = v16;
  v26 = v23;
  v27 = v22;
  v12[22] = sub_231E11530();
  v28 = swift_task_alloc();
  v12[23] = v28;
  *v28 = v12;
  OUTLINED_FUNCTION_21_1(v28);
  OUTLINED_FUNCTION_27_1(v29);
  OUTLINED_FUNCTION_35();

  return sub_231CD73B0(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_231CDA2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_21();
  v14 = v13[19];
  v15 = v13[17];
  v16 = v13[16];
  v17 = v13[15];
  v18 = v13[14];
  v30 = v13[13];
  v19 = *v12;
  OUTLINED_FUNCTION_4();
  *v20 = v19;

  (*(v17 + 8))(v16, v18);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_44();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_231CDA4E0()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_231E0FD90();
  v1[6] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CDA588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v15 = v14[2];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v14[7];
    v44 = v14[4];
    v45 = MEMORY[0x277D84F90];
    sub_231E11E30();
    v43 = (v17 + 8);
    v18 = (v15 + 40);
    do
    {
      v19 = v14[8];
      v20 = v14[6];
      v21 = v14[3];
      v23 = *(v18 - 1);
      v22 = *v18;

      sub_231E0FD70();
      v24 = sub_231CDA918(v19);
      (*v43)(v19, v20);
      v25 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      OUTLINED_FUNCTION_129();

      v26 = v24;

      [sub_231CE0AF0(v23 v22];

      sub_231E11E10();
      sub_231E11E40();
      sub_231E11E50();
      sub_231E11E20();
      v18 += 2;
      --v16;
    }

    while (v16);
    v14[9] = v45;
    v27 = swift_task_alloc();
    v14[10] = v27;
    *v27 = v14;
    v27[1] = sub_231CDA790;
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_35();

    return sub_231D5F40C(v28, v29, v30, v31, v32);
  }

  else
  {

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_231CDA790()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_19();

    return v10();
  }
}

uint64_t sub_231CDA8B4()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v0();
}

id sub_231CDA918(uint64_t a1)
{
  v2 = sub_231E0FD90();
  OUTLINED_FUNCTION_24();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v8 = v7 - v6;
  sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  (*(v4 + 16))(v8, a1, v2);
  v9 = sub_231CD6B44(v8);
  v10 = OUTLINED_FUNCTION_122([v9 setSummarizationContentTopic_], sel_setSummarizationContentSynopsis_);
  OUTLINED_FUNCTION_122(v10, sel_setSummarizationContentTopLine_);
  [v9 setUrgencyStatus_];
  OUTLINED_FUNCTION_122([v9 setSummarizationStatus_], sel_setIsUrgent_);
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_78();
  sub_231DE9728(v11, v12, v13, v14);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_78();
  sub_231DE9728(v15, v16, v17, v18);
  OUTLINED_FUNCTION_122(v19, sel_setSummarizedIdentifiers_);
  return v9;
}

uint64_t sub_231CDAAA0()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 376) = v2;
  *(v1 + 384) = v0;
  *(v1 + 560) = v3;
  *(v1 + 368) = v4;
  *(v1 + 392) = *v0;
  v5 = sub_231E10E30();
  *(v1 + 400) = v5;
  OUTLINED_FUNCTION_6(v5);
  *(v1 + 408) = v6;
  *(v1 + 416) = OUTLINED_FUNCTION_69();
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  *(v1 + 440) = swift_task_alloc();
  v7 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v7);
  *(v1 + 448) = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231CDABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v14 = sub_231CDBB24(v12[46], v12[47]);
  v12[57] = v14;
  v12[58] = v15;
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    type metadata accessor for SpotlightReader();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_121();
    v12[59] = sub_231DF7564();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
    v19 = OUTLINED_FUNCTION_123(v18);
    v12[60] = v19;
    *(v19 + 16) = xmmword_231E138E0;
    *(v19 + 32) = v16;
    *(v19 + 40) = v17;

    v20 = swift_task_alloc();
    v12[61] = v20;
    *v20 = v12;
    v20[1] = sub_231CDADDC;
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_44();

    return sub_231DFA158(v21, v22, v23, v24, v25);
  }

  else
  {
    sub_231CB4EEC();
    v28 = OUTLINED_FUNCTION_18_2();
    v29(v28);

    v30 = sub_231E10E10();
    sub_231E11AD0();
    OUTLINED_FUNCTION_153();
    if (OUTLINED_FUNCTION_85())
    {
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a9 = OUTLINED_FUNCTION_28();
      *v13 = 136315138;
      v31 = OUTLINED_FUNCTION_54_0();
      *(v13 + 4) = sub_231CB5000(v31, v32, v33);
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v34, v35, "Unable to obtain message id for notification unique id: %s during transfer");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v36 = OUTLINED_FUNCTION_25();
    v37(v36);
    OUTLINED_FUNCTION_112();

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_44();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
  }
}

uint64_t sub_231CDADDC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 496) = v5;
  *(v3 + 504) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231CDAEEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_51_0();
  a22 = v24;
  result = sub_231CBA138(*(v24 + 496));
  v30 = *(v24 + 496);
  if (result)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      goto LABEL_40;
    }

    if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    for (i = *(v30 + 32); ; i = MEMORY[0x23837D2A0](0))
    {
      v32 = i;
      *(v24 + 512) = i;
      v33 = [i attributeSet];
      v34 = [v33 summarizationStatus];

      if (!v34)
      {
        break;
      }

      v35 = sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
      OUTLINED_FUNCTION_156_0(v35);
      v36 = OUTLINED_FUNCTION_152();
      *(v24 + 520) = v36;
      v37 = sub_231CE1178([v32 attributeSet], &selRef_summarizedIdentifiers);
      a12 = v36;
      if (!v37)
      {

        v40 = 0;
        goto LABEL_25;
      }

      v38 = v37;
      a10 = v24;
      v24 = *(v37 + 16);
      if (!v24)
      {
        v24 = a10;

        v40 = MEMORY[0x277D84F90];
LABEL_25:
        v88 = *(v24 + 560);
        v89 = OUTLINED_FUNCTION_119();
        v90 = [v89 urgencyStatus];

        [a12 setUrgencyStatus_];
        v91 = OUTLINED_FUNCTION_119();
        v92 = [v91 isUrgent];

        [a12 setIsUrgent_];
        OUTLINED_FUNCTION_12_2(xmmword_231E13680);
        v93 = OUTLINED_FUNCTION_119();
        v94 = OUTLINED_FUNCTION_2_4();
        sub_231DE9728(v94, v95, v96, v93);

        v97 = OUTLINED_FUNCTION_119();
        v98 = OUTLINED_FUNCTION_1_5();
        sub_231DE9728(v98, v99, v100, v97);

        if (v88 == 5)
        {

          [a12 setSummarizationStatus_];
        }

        else
        {
          v101 = OUTLINED_FUNCTION_119();
          if (sub_231CE1178(v101, &selRef_attachmentCaptions))
          {
            v102 = sub_231E11850();
          }

          else
          {
            v102 = 0;
          }

          [a12 setAttachmentCaptions_];

          if (v40)
          {
            if (*(v40 + 16) >= 2uLL)
            {

              [a12 setSummarizationStatus_];
              goto LABEL_36;
            }

            v103 = OUTLINED_FUNCTION_110();
            v104 = [v103 summarizationStatus];

            [a12 setSummarizationStatus_];
            sub_231E11850();
            OUTLINED_FUNCTION_129();
          }

          else
          {
            v105 = OUTLINED_FUNCTION_110();
            v106 = [v105 summarizationStatus];

            [a12 setSummarizationStatus_];
            v103 = 0;
          }

          [a12 setSummarizedIdentifiers_];

          v107 = OUTLINED_FUNCTION_110();
          v108 = [v107 summarizationContentTopic];

          [a12 setSummarizationContentTopic_];
          v109 = OUTLINED_FUNCTION_110();
          v110 = [v109 summarizationContentTopLine];

          [a12 setSummarizationContentTopLine_];
          v111 = OUTLINED_FUNCTION_110();
          v112 = [v111 summarizationContentSynopsis];

          [a12 setSummarizationContentSynopsis_];
        }

LABEL_36:
        v114 = *(v24 + 368);
        v113 = *(v24 + 376);
        v115 = sub_231CC78B4();
        v116 = *v115;
        v117 = v115[1];
        v118 = objc_allocWithZone(MEMORY[0x277CC34B0]);

        v119 = a12;

        v120 = sub_231CE0AF0(v114, v113, v116, v117, v119);
        *(v24 + 528) = v120;
        [v120 setIsUpdate_];
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
        v122 = OUTLINED_FUNCTION_76(v121);
        *(v24 + 536) = v122;
        OUTLINED_FUNCTION_48_0(v122, xmmword_231E13420);
        v123 = v120;
        v124 = swift_task_alloc();
        *(v24 + 544) = v124;
        *v124 = v24;
        OUTLINED_FUNCTION_28_0(v124);
        OUTLINED_FUNCTION_124();
        OUTLINED_FUNCTION_37();

        return sub_231D5F40C(v125, v126, v127, v128, v129);
      }

      a13 = MEMORY[0x277D84F90];
      sub_231CC686C(0, v24, 0);
      v39 = 0;
      v40 = a13;
      v41 = (v38 + 40);
      while (v39 < *(v38 + 16))
      {
        v42 = sub_231CD65F4(*(v41 - 1), *v41);
        v26 = v43;
        a13 = v40;
        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_231CC686C((v44 > 1), v45 + 1, 1);
          v40 = a13;
        }

        ++v39;
        *(v40 + 16) = v45 + 1;
        v46 = v40 + 16 * v45;
        *(v46 + 32) = v42;
        *(v46 + 40) = v26;
        v41 += 2;
        if (v24 == v39)
        {
          v24 = a10;

          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_40:
      ;
    }

    a11 = v32;
    v65 = *(v24 + 432);
    v66 = v24;
    v67 = *(v24 + 408);
    v68 = v66[50];

    v69 = sub_231CB4EEC();
    (*(v67 + 16))(v65, v69, v68);
    v70 = v66;

    v71 = sub_231E10E10();
    sub_231E11AF0();

    v72 = OUTLINED_FUNCTION_39_0();
    v73 = v66[54];
    v75 = v70[50];
    v74 = v70[51];
    if (v72)
    {
      v77 = v70[46];
      v76 = v70[47];
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_130();
      *v26 = 136446210;
      *(v26 + 4) = sub_231CB5000(v77, v76, &a13);
      OUTLINED_FUNCTION_43_1(&dword_231CAE000, v78, v79, "Not transferring summarization attributes from message to notification (status is unknown); id: %{public}s");
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_31_1();
    }

    (*(v74 + 8))(v73, v75);
  }

  else
  {
    v47 = *(v24 + 424);
    v48 = v24;
    v49 = *(v24 + 408);
    v50 = *(v48 + 400);

    v51 = sub_231CB4EEC();
    (*(v49 + 16))(v47, v51, v50);

    v52 = sub_231E10E10();
    sub_231E11AF0();

    if (OUTLINED_FUNCTION_85())
    {
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_134();
      *(v25 + 4) = OUTLINED_FUNCTION_53_0(4.8751e-34, v53, v54, v55, v56, v57, v58, v59, v60);
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v61, v62, "Not transferring summarization attributes from message to notification (no searchable item); id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v63 = OUTLINED_FUNCTION_25();
    v64(v63);
  }

  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_37();

  return v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231CDB728()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 552) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CDB828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  sub_231CB4EEC();
  v18 = OUTLINED_FUNCTION_18_2();
  v19(v18);

  v20 = sub_231E10E10();
  sub_231E11AF0();

  v21 = OUTLINED_FUNCTION_85();
  v22 = *(v16 + 528);
  v23 = *(v16 + 512);
  if (v21)
  {
    a10 = *(v16 + 528);
    v24 = *(v16 + 408);
    a11 = *(v16 + 400);
    a12 = *(v16 + 440);
    OUTLINED_FUNCTION_30_1();
    v26 = v25;
    swift_slowAlloc();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_134();
    v35 = OUTLINED_FUNCTION_53_0(4.8751e-34, v27, v28, v29, v30, v31, v32, v33, v34);

    *(v17 + 4) = v35;
    OUTLINED_FUNCTION_20_2(&dword_231CAE000, v36, v37, "Transferred summarization attributes from message to notification; id: %{public}s");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    (*(v24 + 8))(a12, a11);
  }

  else
  {

    v38 = OUTLINED_FUNCTION_25();
    v39(v38);
  }

  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_37();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231CDB9C0()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_231CDBA68()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_231CDBB24(uint64_t a1, uint64_t a2)
{
  sub_231CE11D8();
  v2 = sub_231E11C70();
  if (v2[2] == 2)
  {
    v3 = v2[8];
    v4 = v2[9];
    v5 = v2[10];
    v6 = v2[11];

    v7 = MEMORY[0x23837CBB0](v3, v4, v5, v6);
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t sub_231CDBBEC()
{
  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_91(v1, v2, v3, v4, v5, v6, v7);
  v0[53] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[54] = v9;
  v10 = OUTLINED_FUNCTION_69();
  v0[56] = OUTLINED_FUNCTION_155_0(v10);
  v0[57] = swift_task_alloc();
  v11 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v11);
  v0[58] = OUTLINED_FUNCTION_55();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231CDBCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29();
  v14 = v12[46];
  v13 = v12[47];
  type metadata accessor for SpotlightReader();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_121();
  v12[59] = sub_231DF7564();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v16 = OUTLINED_FUNCTION_123(v15);
  v12[60] = v16;
  *(v16 + 16) = xmmword_231E138E0;
  *(v16 + 32) = v14;
  *(v16 + 40) = v13;

  v17 = swift_task_alloc();
  v12[61] = v17;
  *v17 = v12;
  v18 = OUTLINED_FUNCTION_98(v17);

  return sub_231DFA158(v18, v19, v20, v21, v22);
}

uint64_t sub_231CDBDAC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 496) = v5;
  *(v3 + 504) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_231CDBEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v16 = sub_231CBA138(*(v14 + 496));
  v17 = *(v14 + 496);
  if (v16)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
      v19 = v99;
    }

    else
    {
      OUTLINED_FUNCTION_140();
      if (!v18)
      {
        __break(1u);
        return;
      }

      v19 = *(v17 + 32);
    }

    *(v14 + 512) = v19;

    v20 = OUTLINED_FUNCTION_83_0();
    v21 = [v20 summarizationStatus];

    if (v21 == 1)
    {
      v22 = OUTLINED_FUNCTION_83_0();
      v23 = [v22 urgencyStatus];

      if (v23 == 1)
      {
        v100 = *(v14 + 560);
        v24 = sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
        OUTLINED_FUNCTION_156_0(v24);
        v25 = OUTLINED_FUNCTION_152();
        *(v14 + 520) = v25;
        v26 = OUTLINED_FUNCTION_83_0();
        v27 = sub_231CE1178(v26, &selRef_summarizedIdentifiers);
        v28 = OUTLINED_FUNCTION_83_0();
        v29 = [v28 urgencyStatus];

        [v25 setUrgencyStatus_];
        v30 = OUTLINED_FUNCTION_83_0();
        v31 = [v30 isUrgent];

        [v25 setIsUrgent_];
        if (v100 == 5)
        {

          [v25 setSummarizationStatus_];
        }

        else
        {
          v62 = OUTLINED_FUNCTION_83_0();
          v63 = sub_231CE1178(v62, &selRef_attachmentCaptions);
          if (v63)
          {
            v64 = sub_231E11850();
          }

          else
          {
            v64 = 0;
          }

          OUTLINED_FUNCTION_87(v63, sel_setAttachmentCaptions_);

          if (v27)
          {
            if (*(v27 + 16) >= 2uLL)
            {

              [v25 setSummarizationStatus_];
              goto LABEL_27;
            }

            v65 = OUTLINED_FUNCTION_83_0();
            v66 = [v65 summarizationStatus];

            [v25 setSummarizationStatus_];
            sub_231E11850();
            OUTLINED_FUNCTION_141();
          }

          else
          {
            v68 = OUTLINED_FUNCTION_83_0();
            v69 = [v68 summarizationStatus];

            v67 = [v25 setSummarizationStatus_];
            v65 = 0;
          }

          OUTLINED_FUNCTION_87(v67, sel_setSummarizedIdentifiers_);

          v70 = OUTLINED_FUNCTION_83_0();
          v71 = [v70 summarizationContentTopLine];

          OUTLINED_FUNCTION_87(v72, sel_setSummarizationContentTopLine_);
        }

LABEL_27:
        v73 = *(v14 + 368);
        v74 = *(v14 + 376);
        OUTLINED_FUNCTION_12_2(xmmword_231E13680);
        v75 = v19;
        v76 = OUTLINED_FUNCTION_83_0();
        v77 = OUTLINED_FUNCTION_2_4();
        sub_231DE9728(v77, v78, v79, v76);

        v80 = [v75 attributeSet];
        v81 = OUTLINED_FUNCTION_1_5();
        sub_231DE9728(v81, v82, v83, v80);

        v84 = sub_231CC78B4();
        v85 = *v84;
        v86 = v84[1];
        v87 = objc_allocWithZone(MEMORY[0x277CC34B0]);

        v88 = sub_231CE0AF0(v73, v74, v85, v86, v25);
        *(v14 + 528) = v88;
        [v88 setIsUpdate_];
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
        v90 = OUTLINED_FUNCTION_76(v89);
        *(v14 + 536) = v90;
        OUTLINED_FUNCTION_48_0(v90, xmmword_231E13420);
        v91 = v88;
        v92 = swift_task_alloc();
        *(v14 + 544) = v92;
        *v92 = v14;
        OUTLINED_FUNCTION_28_0(v92);
        OUTLINED_FUNCTION_124();
        OUTLINED_FUNCTION_35();

        sub_231D5F40C(v93, v94, v95, v96, v97);
        return;
      }
    }

    sub_231CB4EEC();
    v32 = OUTLINED_FUNCTION_46_0();
    v33(v32);

    v34 = sub_231E10E10();
    sub_231E11AF0();

    v35 = OUTLINED_FUNCTION_39_0();
    v36 = *(v14 + 448);
    v38 = *(v14 + 424);
    v37 = *(v14 + 432);
    if (v35)
    {
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a10 = v19;
      a11 = OUTLINED_FUNCTION_49_0();
      *(&off_278947000 + 4) = OUTLINED_FUNCTION_52_0(4.8751e-34, a11, v39, v40, v41);
      OUTLINED_FUNCTION_43_1(&dword_231CAE000, v42, v43, "Not transferring summarization attributes from message to notification (status is not succeeded); id: %{public}s");
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_31_1();
    }

    (*(v37 + 8))(v36, v38);
  }

  else
  {
    OUTLINED_FUNCTION_149();
    sub_231CB4EEC();
    v44 = OUTLINED_FUNCTION_136();
    v45(v44);

    v46 = sub_231E10E10();
    sub_231E11AF0();

    if (OUTLINED_FUNCTION_85())
    {
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_28();
      *v15 = 136446210;
      v47 = OUTLINED_FUNCTION_54_0();
      *(v15 + 4) = sub_231CB5000(v47, v48, v49);
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v50, v51, "Not transferring summarization attributes from message to notification (no searchable item); id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v52 = OUTLINED_FUNCTION_25();
    v53(v52);
  }

  OUTLINED_FUNCTION_71_0();

  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_35();

  v56(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
}