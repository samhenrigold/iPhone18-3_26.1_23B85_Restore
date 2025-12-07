uint64_t sub_1DCC5D8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC5D8E4, 0, 0);
}

uint64_t sub_1DCC5D8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v55 = MEMORY[0x1E69E7CC8];

  v15 = OUTLINED_FUNCTION_76_0();
  sub_1DCC51870(v15, v16, v17);
  OUTLINED_FUNCTION_5_20();
  v20 = v19 & v18;
  OUTLINED_FUNCTION_74_4();
  v22 = v21 >> 6;

  v23 = 0;
  while (v20)
  {
    v24 = v23;
LABEL_8:
    OUTLINED_FUNCTION_46_7(v24);
    __swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
    v25 = OUTLINED_FUNCTION_44_5();
    v27 = v26(v25);

    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 16));
    if (v27)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v28 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v30 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_97_0(v32);
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v33, v34, "Parser indicates that it will produce an event for the current input. Will process input.");
        v35 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E12A8390](v35);
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v24 >= v22)
    {
      break;
    }

    v20 = *(v55 + 64 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      goto LABEL_8;
    }
  }

  if (qword_1EDE4F900 == -1)
  {
    goto LABEL_15;
  }

LABEL_22:
  OUTLINED_FUNCTION_1_2();
  swift_once();
LABEL_15:
  v36 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v36, qword_1EDE57E00);
  v37 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v38 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v40);
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v41, v42, v43, v44, v45, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

LABEL_18:
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_76();

  return v49(v46, v47, v48, v49, v50, v51, v52, v53, a9, v55, a11, a12, a13, a14);
}

uint64_t sub_1DCC5DB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = type metadata accessor for FlowLocatorWrapper();
  v15 = &off_1F585B768;
  *&v13 = a4;
  sub_1DCC5DD14();
  v10 = swift_allocError();
  *v11 = 0;
  *(a5 + 16) = v10;
  *(a5 + 24) = 64;
  *(a5 + 96) = 1;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  sub_1DCAFF9E8(&v13, a5 + 56);
  return a5;
}

uint64_t sub_1DCC5DBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = type metadata accessor for FlowLocatorWrapper();
  v18 = &off_1F585B768;
  v16[0] = a4;
  type metadata accessor for DirectInvocationExecutingFlow();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  MEMORY[0x1EEE9AC00](v9, v9);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_1DCC5DB34(a1, a2, a3, *v11, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13;
}

unint64_t sub_1DCC5DD14()
{
  result = qword_1ECCA2738;
  if (!qword_1ECCA2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2738);
  }

  return result;
}

uint64_t sub_1DCC5DD68(uint64_t a1)
{
  v2 = type metadata accessor for PresentationElements(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCC5DDC4()
{
  OUTLINED_FUNCTION_39();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_63_2(v1);

  return sub_1DCC59480(v3, v4, v5, v6);
}

void sub_1DCC5DE5C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

uint64_t sub_1DCC5DEBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_75_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *destroy for AuthoredFlowRunner.ProcessingAction(void *result)
{
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(result);
  }

  return result;
}

uint64_t initializeWithCopy for AuthoredFlowRunner.ProcessingAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 < 0xFFFFFFFF)
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

uint64_t assignWithCopy for AuthoredFlowRunner.ProcessingAction(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 5);

      return a1;
    }

LABEL_7:
    v5 = *a2;
    v6 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v6;
    *a1 = v5;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 5);

  return a1;
}

uint64_t assignWithTake for AuthoredFlowRunner.ProcessingAction(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (v4 < 0xFFFFFFFF)
  {

LABEL_5:
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 32);
    return a1;
  }

  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for AuthoredFlowRunner.ProcessingAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AuthoredFlowRunner.ProcessingAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1DCC5E330(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_1DCC5E370(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {

    v6 = a3;
  }
}

uint64_t sub_1DCC5E400(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{

  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t initializeWithCopy for AuthoredFlowRunner.AuthoredFlowError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_1DCC5E370(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t assignWithCopy for AuthoredFlowRunner.AuthoredFlowError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_1DCC5E370(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  sub_1DCC5E400(v9, v10, v11, v12, v13, v14);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for AuthoredFlowRunner.AuthoredFlowError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  sub_1DCC5E400(v5, v7, v6, v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for AuthoredFlowRunner.AuthoredFlowError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for AuthoredFlowRunner.AuthoredFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void destroy for NextAction(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 >= 4)
  {
    v2 = *a1 + 4;
  }

  switch(v2)
  {
    case 0u:
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));

      break;
    case 1u:
    case 2u:
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      break;
    case 3u:
      v3 = *a1;

      break;
    default:
      return;
  }
}

void *initializeWithCopy for NextAction(void *__dst, void *__src)
{
  v4 = *(__src + 88);
  if (v4 >= 4)
  {
    v4 = *__src + 4;
  }

  switch(v4)
  {
    case 0u:
      v5 = __src[3];
      if (v5)
      {
        v6 = __src[4];
        __dst[3] = v5;
        __dst[4] = v6;
        (**(v5 - 8))(__dst, __src);
      }

      else
      {
        v16 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v16;
        __dst[4] = __src[4];
      }

      v17 = *(__src + 4);
      *(__dst + 4) = v17;
      (**(v17 - 8))(__dst + 5, __src + 5);
      __dst[10] = __src[10];
      *(__dst + 88) = 0;

      goto LABEL_21;
    case 1u:
      v12 = __src[3];
      if (v12)
      {
        v13 = __src[4];
        __dst[3] = v12;
        __dst[4] = v13;
        (**(v12 - 8))(__dst, __src);
      }

      else
      {
        v18 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v18;
        __dst[4] = __src[4];
      }

      v11 = 1;
      goto LABEL_20;
    case 2u:
      v7 = __src[3];
      if (v7)
      {
        v8 = __src[4];
        __dst[3] = v7;
        __dst[4] = v8;
        (**(v7 - 8))(__dst, __src);
      }

      else
      {
        v15 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v15;
        __dst[4] = __src[4];
      }

      v11 = 2;
      goto LABEL_20;
    case 3u:
      v9 = *__src;
      v10 = *__src;
      *__dst = v9;
      *(__dst + 8) = *(__src + 8);
      v11 = 3;
LABEL_20:
      *(__dst + 88) = v11;
LABEL_21:
      result = __dst;
      break;
    default:

      result = memcpy(__dst, __src, 0x59uLL);
      break;
  }

  return result;
}

void *assignWithCopy for NextAction(void *__dst, void *__src)
{
  if (__dst != __src)
  {
    v4 = *(__dst + 88);
    if (v4 >= 4)
    {
      v4 = *__dst + 4;
    }

    switch(v4)
    {
      case 0u:
        if (__dst[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(__dst);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(__dst + 5);

        break;
      case 1u:
      case 2u:
        if (__dst[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(__dst);
        }

        break;
      case 3u:

        break;
      default:
        break;
    }

    v5 = *(__src + 88);
    if (v5 >= 4)
    {
      v5 = *__src + 4;
    }

    switch(v5)
    {
      case 0u:
        v6 = __src[3];
        if (v6)
        {
          __dst[3] = v6;
          __dst[4] = __src[4];
          (**(v6 - 8))(__dst, __src);
        }

        else
        {
          v15 = *__src;
          v16 = *(__src + 1);
          __dst[4] = __src[4];
          *__dst = v15;
          *(__dst + 1) = v16;
        }

        v17 = __src[8];
        __dst[8] = v17;
        __dst[9] = __src[9];
        (**(v17 - 8))(__dst + 5, __src + 5);
        __dst[10] = __src[10];
        *(__dst + 88) = 0;

        return __dst;
      case 1u:
        v11 = __src[3];
        if (v11)
        {
          __dst[3] = v11;
          __dst[4] = __src[4];
          (**(v11 - 8))(__dst, __src);
        }

        else
        {
          v18 = *__src;
          v19 = *(__src + 1);
          __dst[4] = __src[4];
          *__dst = v18;
          *(__dst + 1) = v19;
        }

        v10 = 1;
        goto LABEL_30;
      case 2u:
        v7 = __src[3];
        if (v7)
        {
          __dst[3] = v7;
          __dst[4] = __src[4];
          (**(v7 - 8))(__dst, __src);
        }

        else
        {
          v13 = *__src;
          v14 = *(__src + 1);
          __dst[4] = __src[4];
          *__dst = v13;
          *(__dst + 1) = v14;
        }

        v10 = 2;
        goto LABEL_30;
      case 3u:
        v8 = *__src;
        v9 = *__src;
        *__dst = v8;
        *(__dst + 8) = *(__src + 8);
        v10 = 3;
LABEL_30:
        *(__dst + 88) = v10;
        return __dst;
      default:

        return memcpy(__dst, __src, 0x59uLL);
    }
  }

  return __dst;
}

unsigned __int8 *assignWithTake for NextAction(unsigned __int8 *__dst, unsigned __int8 *__src)
{
  if (__dst != __src)
  {
    v4 = __dst[88];
    if (v4 >= 4)
    {
      v4 = *__dst + 4;
    }

    switch(v4)
    {
      case 0u:
        if (*(__dst + 3))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(__dst);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(__dst + 5);

        break;
      case 1u:
      case 2u:
        if (*(__dst + 3))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(__dst);
        }

        break;
      case 3u:

        break;
      default:
        break;
    }

    v5 = __src[88];
    if (v5 >= 4)
    {
      v5 = *__src + 4;
    }

    switch(v5)
    {
      case 0u:
        memcpy(__dst, __src, 0x58uLL);
        __dst[88] = 0;
        return __dst;
      case 1u:
        v8 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v8;
        *(__dst + 4) = *(__src + 4);
        v7 = 1;
        goto LABEL_18;
      case 2u:
        v6 = *(__src + 1);
        *__dst = *__src;
        *(__dst + 1) = v6;
        *(__dst + 4) = *(__src + 4);
        v7 = 2;
        goto LABEL_18;
      case 3u:
        *__dst = *__src;
        __dst[8] = __src[8];
        v7 = 3;
LABEL_18:
        __dst[88] = v7;
        return __dst;
      default:

        return memcpy(__dst, __src, 0x59uLL);
    }
  }

  return __dst;
}

uint64_t getEnumTagSinglePayload for NextAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 89))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 88);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NextAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCC5EE24(uint64_t a1)
{
  result = *(a1 + 88);
  if (result >= 4)
  {
    return (*a1 + 4);
  }

  return result;
}

uint64_t sub_1DCC5EE40(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = a2 - 4;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_2(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_105_4()
{

  return sub_1DD0DF2AC();
}

uint64_t static AuthoredValueProvidingResult.taskComplete()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "Building result based on a completed task", v5, 2u);
    OUTLINED_FUNCTION_80();
  }

  result = sub_1DD0DDE9C();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

double static AuthoredValueProvidingResult.authoredVariables(variables:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);

  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_1DD0DDEAC();
    v11 = sub_1DCB10E9C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "Building result based on a variables with keys '%s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  *a2 = a1;
  *(a2 + 8) = 0;

  return result;
}

id static AuthoredValueProvidingResult.error(error:handled:)@<X0>(id a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2 | 0x40;
  return a1;
}

BOOL static AuthoredValueProvidingResult.== infix(_:_:)(void **a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!(v2 >> 6))
  {
    if (v4 < 0x40)
    {
      v5 = *a1;
      sub_1DCC5F868(*a2, *(a2 + 8));
      sub_1DCC5F868(v5, v2);
      sub_1DCC5F21C();
      v7 = v6;
      sub_1DCC5F884(v5, v2);
      sub_1DCC5F884(v3, v4);
      return v7 & 1;
    }

    return 0;
  }

  if (v2 >> 6 != 1)
  {
    v9 = (v4 & 0xC0) == 0x80 && v3 == 0;
    return v9 && v4 == 128;
  }

  return (v4 & 0xC0) == 0x40;
}

void sub_1DCC5F21C()
{
  OUTLINED_FUNCTION_20_10();
  if (v0 == v1 || (v2 = v1, v3 = v0, *(v0 + 16) != *(v1 + 16)))
  {
LABEL_14:
    OUTLINED_FUNCTION_15_5();
  }

  else
  {
    v4 = v0 + 64;
    OUTLINED_FUNCTION_10_16();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;

    v10 = 0;
    while (v7)
    {
LABEL_9:
      if (*(v2 + 16))
      {
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v13 = (*(v3 + 48) + ((v10 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        sub_1DCB21038(v15, v14);
        LOBYTE(v15) = v16;

        if (v15)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        goto LABEL_14;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t static AuthoredValueProvidingResult.authoredVariableAsEntity(entityName:entityAttributes:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);

  v9 = sub_1DD0DD8EC();
  v10 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1DCB10E9C(a1, a2, &v15);
    _os_log_impl(&dword_1DCAFC000, v9, v10, "Building result based on a single entity named '%s'", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  *(inited + 48) = a3;

  result = sub_1DD0DDE9C();
  *a4 = result;
  *(a4 + 8) = 0;
  return result;
}

void *AuthoredValueProvidingResult.extractVariables(variableNameMap:)(uint64_t a1)
{
  if (*(v1 + 8) > 0x3Fu)
  {

    return sub_1DD0DDE9C();
  }

  v3 = *v1;
  v4 = sub_1DD0DDE9C();
  v5 = v3 + 64;
  OUTLINED_FUNCTION_10_16();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v38 = v3;

  v11 = 0;
  v36 = v3 + 64;
  v37 = a1;
  if (!v8)
  {
    goto LABEL_4;
  }

  do
  {
    v12 = v11;
LABEL_7:
    v13 = __clz(__rbit64(v8)) | (v12 << 6);
    v14 = (*(v38 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DCB0DF6C(*(v38 + 56) + 32 * v13, &v44);
    v43[0] = v16;
    v43[1] = v15;
    sub_1DCC60138(v43, v41);
    v17 = v41[1];
    if (*(a1 + 16))
    {
      v18 = v41[0];

      v19 = sub_1DCB21038(v18, v17);
      LOBYTE(v18) = v20;

      if (v18)
      {
        v21 = (*(a1 + 56) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];

        goto LABEL_12;
      }
    }

    else
    {
    }

    sub_1DCC60138(v43, &v39);
    v23 = *(&v39 + 1);
    v22 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    sub_1DCC60138(v43, v41);

    sub_1DCB20B30(v42, &v39);
    swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1DCB21038(v22, v23);
    if (__OFADD__(v4[2], (v25 & 1) == 0))
    {
      goto LABEL_27;
    }

    v26 = v24;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2750, &qword_1DD0E6878);
    if (sub_1DD0DEDCC())
    {
      v28 = sub_1DCB21038(v22, v23);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_29;
      }

      v26 = v28;
    }

    v8 &= v8 - 1;
    if (v27)
    {

      v30 = (v4[7] + 32 * v26);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      sub_1DCB20B30(&v39, v30);
      sub_1DCC60A8C(v43);
    }

    else
    {
      v4[(v26 >> 6) + 8] |= 1 << v26;
      v31 = (v4[6] + 16 * v26);
      *v31 = v22;
      v31[1] = v23;
      sub_1DCB20B30(&v39, (v4[7] + 32 * v26));
      sub_1DCC60A8C(v43);
      v32 = v4[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_28;
      }

      v4[2] = v34;
    }

    v11 = v12;
    v5 = v36;
    a1 = v37;
  }

  while (v8);
LABEL_4:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return v4;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1DD0DF12C();
  __break(1u);
  return result;
}

void sub_1DCC5F868(void *a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    v2 = a1;
  }

  else if (!(a2 >> 6))
  {
  }
}

void sub_1DCC5F884(void *a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
  }

  else if (!(a2 >> 6))
  {
  }
}

unint64_t sub_1DCC5F8A0(uint64_t a1)
{
  v2 = sub_1DD0DEB9C();

  return sub_1DCC5FA40(a1, v2);
}

uint64_t sub_1DCC5F8E4()
{
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x1E12A7840](0);
  v0 = sub_1DD0DF20C();

  return sub_1DCC5FB04(v0);
}

unint64_t sub_1DCC5F934(uint64_t a1)
{
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x1E12A7840](a1);
  v2 = sub_1DD0DF20C();

  return sub_1DCC5FB30(a1, v2);
}

unint64_t sub_1DCC5F998(uint64_t a1)
{
  v2 = sub_1DD0DE8DC();

  return sub_1DCC5FB90(a1, v2);
}

unint64_t sub_1DCC5F9DC(char a1)
{
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x1E12A7840](a1 & 1);
  v2 = sub_1DD0DF20C();

  return sub_1DCC5FC50(a1 & 1, v2);
}

unint64_t sub_1DCC5FA40(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1DCC60FBC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1E12A7200](v8, a1);
    sub_1DCC61018(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DCC5FB30(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1DCC5FB90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1DCC60D38();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1DD0DE8EC();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DCC5FC50(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

void sub_1DCC5FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DCB21038(a3, a4);
  OUTLINED_FUNCTION_0_17();
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_1DD0DF12C();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2810, &qword_1DD0F4B30);
  if (OUTLINED_FUNCTION_19_11(v14))
  {
    sub_1DCB21038(a3, a4);
    OUTLINED_FUNCTION_7_21();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  v17 = *v4;
  if (v13)
  {
    v18 = (v17[7] + 16 * v12);
    *v18 = a1;
    v18[1] = a2;
    OUTLINED_FUNCTION_49();
  }

  else
  {
    sub_1DCC608E8(v12, a3, a4, a1, a2, v17);
    OUTLINED_FUNCTION_49();
  }
}

void sub_1DCC5FDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_6_16(v11, v12, v13);
  OUTLINED_FUNCTION_0_17();
  if (v15)
  {
    __break(1u);
LABEL_13:
    sub_1DD0DF12C();
    __break(1u);
    return;
  }

  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27E8, &unk_1DD0E6B10);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v17 = OUTLINED_FUNCTION_9_16();
    sub_1DCB21038(v17, v10);
    OUTLINED_FUNCTION_7_21();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v16)
  {
    type metadata accessor for Input(0);
    OUTLINED_FUNCTION_15_5();

    sub_1DCC60EC8(v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    sub_1DCC60934(v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_15_5();
  }
}

_OWORD *sub_1DCC5FF18(_OWORD *a1, uint64_t a2, char a3)
{
  sub_1DCC5F8A0(a2);
  OUTLINED_FUNCTION_0_17();
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = sub_1DD0DF12C();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2818, &qword_1DD0E6B48);
  if (sub_1DD0DEDCC())
  {
    sub_1DCC5F8A0(a2);
    OUTLINED_FUNCTION_5_21();
    if (!v12)
    {
      goto LABEL_12;
    }

    v9 = v11;
  }

  v13 = *v3;
  if (v10)
  {
    v14 = (v13[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);

    return sub_1DCB20B30(a1, v14);
  }

  else
  {
    sub_1DCC60FBC(a2, v16);
    return sub_1DCC609CC(v9, v16, a1, v13);
  }
}

void sub_1DCC60044()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_6_16(v4, v5, v6);
  OUTLINED_FUNCTION_0_17();
  if (v7)
  {
    __break(1u);
LABEL_14:
    sub_1DD0DF12C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_18_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2750, &qword_1DD0E6878);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v8 = OUTLINED_FUNCTION_9_16();
    sub_1DCB21038(v8, v1);
    OUTLINED_FUNCTION_5_21();
    if (!v10)
    {
      goto LABEL_14;
    }

    v3 = v9;
  }

  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(*v0 + 56) + 32 * v3));
    OUTLINED_FUNCTION_15_5();

    sub_1DCB20B30(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    sub_1DCC60A48(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_15_5();
  }
}

uint64_t sub_1DCC60138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2760, &unk_1DD0E6A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DCC601A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_6_16(v12, v13, v14);
  OUTLINED_FUNCTION_0_17();
  if (v16)
  {
    __break(1u);
LABEL_13:
    sub_1DD0DF12C();
    __break(1u);
    return;
  }

  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27C8, &qword_1DD0E6AE8);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    sub_1DCB21038(v11, v10);
    OUTLINED_FUNCTION_7_21();
    if (!v18)
    {
      goto LABEL_13;
    }
  }

  if (v17)
  {
    sub_1DD0DAFDC();
    OUTLINED_FUNCTION_15_5();

    v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    sub_1DCC60C88(v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_15_5();
  }
}

void sub_1DCC60320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  sub_1DCB21038(a2, a3);
  OUTLINED_FUNCTION_0_17();
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v14;
  v18 = v15;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (OUTLINED_FUNCTION_19_11(v19))
  {
    v20 = sub_1DCB21038(a2, a3);
    if ((v18 & 1) == (v21 & 1))
    {
      v17 = v20;
      goto LABEL_5;
    }

LABEL_13:
    sub_1DD0DF12C();
    __break(1u);
    return;
  }

LABEL_5:
  v22 = *v8;
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(v22 + 56) + 40 * v17));
    OUTLINED_FUNCTION_12_1();

    __asm { BRAA            X2, X16 }
  }

  sub_1DCC60D7C(v17, a2, a3, a1, v22);
  OUTLINED_FUNCTION_12_1();
}

void sub_1DCC60528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_2_30(a1, a2, a3);
  OUTLINED_FUNCTION_0_17();
  if (v14)
  {
    __break(1u);
LABEL_14:
    sub_1DD0DF12C();
    __break(1u);
    return;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v17 = OUTLINED_FUNCTION_9_16();
    sub_1DCB21038(v17, v6);
    OUTLINED_FUNCTION_7_21();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_12_1();

    __asm { BRAA            X2, X16 }
  }

  sub_1DCC60E28(v15, v8, v6, v7, *v9);
  OUTLINED_FUNCTION_12_1();
}

void sub_1DCC60648()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_2_30(v5, v6, v7);
  OUTLINED_FUNCTION_0_17();
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_1DD0DF12C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_18_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2800, &qword_1DD0E6B28);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v9 = OUTLINED_FUNCTION_9_16();
    sub_1DCB21038(v9, v0);
    OUTLINED_FUNCTION_5_21();
    if (!v11)
    {
      goto LABEL_14;
    }

    v4 = v10;
  }

  if (v3)
  {
    *(*(*v2 + 56) + 8 * v4) = v1;
    OUTLINED_FUNCTION_15_5();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_8_22();
    sub_1DCC60F2C(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_15_5();
  }
}

void sub_1DCC60728()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_2_30(v5, v6, v7);
  OUTLINED_FUNCTION_0_17();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_1DD0DF12C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_18_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27F8, &qword_1DD0E6B20);
  OUTLINED_FUNCTION_4_17();
  if (sub_1DD0DEDCC())
  {
    v9 = OUTLINED_FUNCTION_9_16();
    sub_1DCB21038(v9, v0);
    OUTLINED_FUNCTION_5_21();
    if (!v11)
    {
      goto LABEL_12;
    }

    v4 = v10;
  }

  if (v3)
  {
    *(*(*v2 + 56) + 8 * v4) = v1;
    OUTLINED_FUNCTION_15_5();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_8_22();
    sub_1DCC60F2C(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_15_5();
  }
}

void sub_1DCC607F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_20_10();
  v12 = v11;
  v14 = v13;
  sub_1DCC5F9DC(v11 & 1);
  OUTLINED_FUNCTION_0_17();
  if (v17)
  {
    __break(1u);
LABEL_12:
    sub_1DD0DF12C();
    __break(1u);
    return;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27F0, &unk_1DD1097F0);
  if (sub_1DD0DEDCC())
  {
    sub_1DCC5F9DC(v12 & 1);
    OUTLINED_FUNCTION_5_21();
    if (!v21)
    {
      goto LABEL_12;
    }

    v18 = v20;
  }

  if (v19)
  {
    *(*(*v10 + 56) + v18) = v14 & 1;
    OUTLINED_FUNCTION_15_5();
  }

  else
  {
    OUTLINED_FUNCTION_15_5();

    sub_1DCC60F74(v22, v23, v24, v25);
  }
}

unint64_t sub_1DCC608E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1DCC60934(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Input(0);
  result = sub_1DCC333DC(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_1DCC609CC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1DCB20B30(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1DCC60A48(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5);
  result = sub_1DCB20B30(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

uint64_t sub_1DCC60A8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2760, &unk_1DD0E6A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCC60B40(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_14_17(a1, a2);
  v5 = *v2;
  *v2 = v3;
  v6 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_1DCC5F884(v5, v6);
  return v2;
}

uint64_t sub_1DCC60B80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCC60BCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCC60C20(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DCC60C50(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    v2 = 0x80;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1DCC60C88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DD0DAFDC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1DCC60D38()
{
  result = qword_1ECCA27D0;
  if (!qword_1ECCA27D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA27D0);
  }

  return result;
}

uint64_t sub_1DCC60D7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5);
  result = v9(v8, v7 + 40 * v6);
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

unint64_t sub_1DCC60E28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5);
  v8 = (v7 + 48 * result);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v8[2] = v9[2];
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v13;
  }

  return result;
}

uint64_t sub_1DCC60EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCC60F2C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1DCC60F74(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1DCC6106C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DDFBC();
  v4 = v3;
  if (v2 == sub_1DD0DDFBC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();
  }

  return v7 & 1;
}

uint64_t sub_1DCC61108()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E6B70;
  sub_1DCB10E5C(0, &qword_1ECCA2830, 0x1E696E820);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(ObjCClassFromMetadata);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = v2;
  }

  *(inited + 32) = v3;
  *(inited + 40) = v5;
  sub_1DCB10E5C(0, &qword_1ECCA2838, 0x1E696EA18);
  v6 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v6);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = v7;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_1DCB10E5C(0, &qword_1ECCA2840, 0x1E696E710);
  v10 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v10);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v13 = 0xE000000000000000;
  }

  else
  {
    v13 = v11;
  }

  *(inited + 64) = v12;
  *(inited + 72) = v13;
  sub_1DCB10E5C(0, &qword_1ECCA2848, 0x1E696E7C0);
  v14 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v14);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v17 = 0xE000000000000000;
  }

  else
  {
    v17 = v15;
  }

  *(inited + 80) = v16;
  *(inited + 88) = v17;
  sub_1DCB10E5C(0, &qword_1ECCA2850, 0x1E696EA40);
  v18 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v18);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v21 = 0xE000000000000000;
  }

  else
  {
    v21 = v19;
  }

  *(inited + 96) = v20;
  *(inited + 104) = v21;
  sub_1DCB10E5C(0, &qword_1ECCA2858, 0x1E696E7C8);
  v22 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v22);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v25 = 0xE000000000000000;
  }

  else
  {
    v25 = v23;
  }

  *(inited + 112) = v24;
  *(inited + 120) = v25;
  sub_1DCB10E5C(0, &qword_1ECCA2860, 0x1E696E758);
  v26 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v26);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v29 = 0xE000000000000000;
  }

  else
  {
    v29 = v27;
  }

  *(inited + 128) = v28;
  *(inited + 136) = v29;
  sub_1DCB10E5C(0, &qword_1ECCA2868, 0x1E696E9D8);
  v30 = swift_getObjCClassFromMetadata();
  sub_1DCC615E8(v30);
  OUTLINED_FUNCTION_0_18();
  if (v4)
  {
    v33 = 0xE000000000000000;
  }

  else
  {
    v33 = v31;
  }

  *(inited + 144) = v32;
  *(inited + 152) = v33;
  result = sub_1DCB18D80(inited);
  qword_1ECCA2828 = result;
  return result;
}

uint64_t sub_1DCC612CC(uint64_t a1)
{
  v2 = sub_1DD0DB14C();
  v34 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v38 = &v29 - v8;
  if (!*(a1 + 16))
  {
    v10 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2878, &qword_1DD0E6B88);
  result = sub_1DD0DEBFC();
  v10 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v10;
  }

  v11 = 0;
  v37 = result + 56;
  v12 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v12 + 32) & ~v12);
  v36 = v34 + 16;
  v13 = (v34 + 8);
  v30 = (v34 + 32);
  while (v11 < *(a1 + 16))
  {
    v14 = *(v34 + 72);
    v35 = v11 + 1;
    v15 = *(v34 + 16);
    v15(v38, v32 + v14 * v11, v2);
    sub_1DCC6164C(&qword_1ECCA2880, MEMORY[0x1E6969AD8]);
    v16 = sub_1DD0DDF0C();
    v17 = ~(-1 << *(v10 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v10;
      v15(v6, *(v10 + 48) + v18 * v14, v2);
      sub_1DCC6164C(&qword_1ECCA2888, MEMORY[0x1E6969AE0]);
      v23 = sub_1DD0DDF7C();
      v24 = *v13;
      (*v13)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v10 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v10 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v10 + 48) + v18 * v14, v25, v2);
    v26 = *(v10 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v10 + 16) = v28;
LABEL_12:
    v11 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DCC615E8(void *a1)
{
  v1 = [a1 typeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCC6164C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DD0DB14C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BaseConcept.conceptType.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t BaseConcept.deinit()
{

  return v0;
}

uint64_t BaseConcept.__deallocating_deinit()
{
  BaseConcept.deinit();

  return swift_deallocClassInstance();
}

double static BehaviorResponseResult.complete()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 3;
  return result;
}

uint64_t static BehaviorResponseResult.executeFlow(flow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCB17CA0(a1, a2);
  *(a2 + 40) = 1;
  return result;
}

double static BehaviorResponseResult.executeDirectInvocation(invocation:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 40) = 0;

  return result;
}

double static BehaviorResponseResult.setAuthoredFlowVariables(variables:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 40) = 2;

  return result;
}

uint64_t dispatch thunk of BehaviorResponseHandler.handle(parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB193FC;

  return v11(a1, a2, a3, a4);
}

uint64_t destroy for BehaviorResponseResult(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 == 2)
  {
LABEL_8:
  }

  if (v1 != 1)
  {
    if (*(result + 40))
    {
      return result;
    }

    goto LABEL_8;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(result);
}

uint64_t initializeWithCopy for BehaviorResponseResult(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 == 2)
  {
    *a1 = *a2;
    *(a1 + 40) = 2;
LABEL_7:

    return a1;
  }

  if (v3 != 1)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 25) = *(a2 + 25);
      return a1;
    }

    v4 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v4;
    *(a1 + 16) = a2[2];
    *(a1 + 40) = 0;

    goto LABEL_7;
  }

  v5 = *(a2 + 3);
  *(a1 + 24) = v5;
  (**(v5 - 8))(a1);
  *(a1 + 40) = 1;
  return a1;
}

uint64_t assignWithCopy for BehaviorResponseResult(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    sub_1DCC61BC4(a1);
    v4 = *(a2 + 40);
    if (v4 == 2)
    {
      *a1 = *a2;
      *(a1 + 40) = 2;
LABEL_8:

      return a1;
    }

    if (v4 != 1)
    {
      if (*(a2 + 40))
      {
        v6 = *a2;
        v7 = *(a2 + 1);
        *(a1 + 25) = *(a2 + 25);
        *a1 = v6;
        *(a1 + 16) = v7;
        return a1;
      }

      *a1 = *a2;
      *(a1 + 8) = a2[1];
      *(a1 + 16) = a2[2];
      *(a1 + 40) = 0;

      goto LABEL_8;
    }

    v5 = a2[3];
    *(a1 + 24) = v5;
    *(a1 + 32) = a2[4];
    (**(v5 - 8))(a1, a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

_OWORD *assignWithTake for BehaviorResponseResult(_OWORD *a1, _OWORD *a2)
{
  if (a1 != a2)
  {
    sub_1DCC61BC4(a1);
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
    *(a1 + 25) = *(a2 + 25);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for BehaviorResponseResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 41))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for BehaviorResponseResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destroy for BehaviorResponseResult.BehaviorResponseResultType(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >= 3)
  {
    v1 = *result + 3;
  }

  if (v1 == 2)
  {
LABEL_10:
  }

  if (v1 != 1)
  {
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(result);
}

uint64_t initializeWithCopy for BehaviorResponseResult.BehaviorResponseResultType(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    *a1 = *a2;
    *(a1 + 40) = 2;
LABEL_9:

    return a1;
  }

  if (v3 != 1)
  {
    if (v3)
    {
      v6 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 25) = *(a2 + 25);
      return a1;
    }

    v4 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v4;
    *(a1 + 16) = a2[2];
    *(a1 + 40) = 0;

    goto LABEL_9;
  }

  v5 = *(a2 + 3);
  *(a1 + 24) = v5;
  (**(v5 - 8))(a1);
  *(a1 + 40) = 1;
  return a1;
}

uint64_t assignWithCopy for BehaviorResponseResult.BehaviorResponseResultType(uint64_t a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 40);
  if (v4 >= 3)
  {
    v4 = *a1 + 3;
  }

  switch(v4)
  {
    case 2u:
      goto LABEL_9;
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      break;
    case 0u:

LABEL_9:

      break;
  }

  v5 = *(a2 + 40);
  if (v5 >= 3)
  {
    v5 = *a2 + 3;
  }

  if (v5 == 2)
  {
    *a1 = *a2;
    *(a1 + 40) = 2;
LABEL_18:

    return a1;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      *(a1 + 25) = *(a2 + 25);
      *a1 = v7;
      *(a1 + 16) = v8;
      return a1;
    }

    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = a2[2];
    *(a1 + 40) = 0;

    goto LABEL_18;
  }

  v6 = a2[3];
  *(a1 + 24) = v6;
  *(a1 + 32) = a2[4];
  (**(v6 - 8))(a1, a2);
  *(a1 + 40) = 1;
  return a1;
}

uint64_t assignWithTake for BehaviorResponseResult.BehaviorResponseResultType(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 != 2)
    {
      if (v4 == 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        goto LABEL_10;
      }

      if (v4)
      {
        goto LABEL_10;
      }
    }

LABEL_10:
    v5 = *(a2 + 40);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      *a1 = *a2;
      v7 = 2;
    }

    else
    {
      if (v5 != 1)
      {
        if (v5)
        {
          v8 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v8;
          *(a1 + 25) = *(a2 + 25);
        }

        else
        {
          *a1 = *a2;
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 40) = 0;
        }

        return a1;
      }

      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 32) = *(a2 + 32);
      v7 = 1;
    }

    *(a1 + 40) = v7;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for BehaviorResponseResult.BehaviorResponseResultType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BehaviorResponseResult.BehaviorResponseResultType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCC62104(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t sub_1DCC62120(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

id sub_1DCC62158(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_1DD0DEB3C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_1DCB35460(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1E12A72C0](0, a1);
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t sub_1DCC6221C(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  a2(0);
  if (v2)
  {
    OUTLINED_FUNCTION_112();
    v3 = OUTLINED_FUNCTION_8_23();
    v4(v3);
  }

  v5 = OUTLINED_FUNCTION_6_17();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void *sub_1DCC622AC(uint64_t a1)
{
  result = sub_1DCC63250(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_1DCC63290(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_1DCC62390@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    sub_1DCC63324(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  v9 = OUTLINED_FUNCTION_6_17();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_1DCC62440(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  if (v1)
  {
    OUTLINED_FUNCTION_112();
    v2 = OUTLINED_FUNCTION_8_23();
    v3(v2);
  }

  v4 = OUTLINED_FUNCTION_6_17();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1DCC624D8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1DD0DE1CC();
  }

  else
  {
    return 0;
  }
}

void SiriEnvironment.callState.setter(uint64_t a1)
{
  type metadata accessor for CallStateEnvironmentProvider();
  OUTLINED_FUNCTION_0_19(&qword_1EDE4DB38);

  sub_1DD0DCA8C();
}

void SiriEnvironment.callState.modify(void *a1)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for CallStateEnvironmentProvider();
  a1[3] = OUTLINED_FUNCTION_0_19(&qword_1EDE4DB38);
  sub_1DD0DCA7C();
}

void sub_1DCC62620(void *a1, char a2)
{
  if (a2)
  {
    sub_1DD0DCF8C();
  }

  sub_1DD0DCA8C();
}

uint64_t sub_1DCC626CC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void sub_1DCC62804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28B8, &qword_1DD0E6E88);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_4(v0 + 24);
  v3 = OUTLINED_FUNCTION_3_8();
  v4(v3);
  sub_1DD0DCF8C();
}

void sub_1DCC629A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28B0, &qword_1DD0E6E80);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_4(v0 + 32);
  v3 = OUTLINED_FUNCTION_3_8();
  v4(v3);
  sub_1DD0DCF8C();
}

void sub_1DCC62AF0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2898, &qword_1DD0E6C90);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_24(&qword_1EDE4DB40);
  sub_1DD0DCEDC();
}

uint64_t sub_1DCC62B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_1();
  (*(v12 + 16))(v7, a1);
  return a7(v7);
}

void sub_1DCC62C98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28B0, &qword_1DD0E6E80);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_4(v0 + 40);
  v3 = OUTLINED_FUNCTION_3_8();
  v4(v3);
  sub_1DD0DCF8C();
}

void CallStateEnvironmentProvider.init(storage:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_10_9(v2 + 24, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2890, &qword_1DD0E6C40);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void *CallStateEnvironmentProvider.deinit()
{

  return v0;
}

uint64_t CallStateEnvironmentProvider.__deallocating_deinit()
{
  CallStateEnvironmentProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCC62FF8()
{
  type metadata accessor for CallStateEnvironmentProvider();

    ;
  }
}

void sub_1DCC63044(uint64_t a1)
{
  type metadata accessor for CallStateEnvironmentProvider();

  sub_1DD0DCF8C();
}

void *sub_1DCC63290(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_1DCC63324(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_112();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1DCC633A8()
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC634C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1DCC63650;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_1DCC635E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC635E8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_1DCC63650()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

_BYTE *storeEnumTagSinglePayload for CamDirectInvocationIdentifiers(_BYTE *result, int a2, int a3)
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

id static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69CA348]) init];
  v3 = [a1 aceId];
  v4 = OUTLINED_FUNCTION_76_0();
  [v4 v5];

  v6 = [objc_allocWithZone(MEMORY[0x1E69C9FA8]) init];
  [v6 setReferentialCommand_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69C9E60]) init];
  [v7 setType_];
  [v7 setValue_];

  return v7;
}

void static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39_7();
  v28 = v27;
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_37_11();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v29);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_34_0();
  v32 = OUTLINED_FUNCTION_10_17();
  v39 = sub_1DCC648A4(v32, v33, v34, v35, v36, v37, v38, 0);
  if (v24 && *(v24 + 16))
  {
    v40 = [objc_allocWithZone(MEMORY[0x1E69C9FC0]) init];
    sub_1DCC65CE0(v24, v40);
    OUTLINED_FUNCTION_41_8(v40);
    OUTLINED_FUNCTION_12_16();
    [v40 v41];
    v42 = OUTLINED_FUNCTION_76_0();
    [v42 v43];

LABEL_19:
    goto LABEL_20;
  }

  if (a24)
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E69CA260]) init];
    v45 = OUTLINED_FUNCTION_21_5();
    sub_1DCC65C8C(v45, v46, v47);
    [v44 setMonogramStyle_];
    OUTLINED_FUNCTION_40_10(v44);
    OUTLINED_FUNCTION_12_16();
    [v44 v48];
    [v39 setImage_];
  }

  else if (v28)
  {
    v49 = objc_allocWithZone(MEMORY[0x1E69CA548]);
    v50 = v28;
    [v49 init];
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_16_10();
    if (!v52 & v51)
    {
      sub_1DCC65BC8(v50);
      if (v53)
      {
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_1_25(v54, v55, v56, &selRef_setContentType_);
        OUTLINED_FUNCTION_138();
        sub_1DD0DAEBC();

        v57 = sub_1DD0DAECC();
        v58 = OUTLINED_FUNCTION_2_31(v57);
        if (!v52)
        {
          sub_1DD0DAE6C();
          OUTLINED_FUNCTION_3_26();
          v59 = OUTLINED_FUNCTION_17_11();
          v58 = v60(v59);
        }

        OUTLINED_FUNCTION_26_4(v58, sel_setUrlValue_);
      }
    }

    else
    {
      v61 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_6_18(v61);

      v62 = OUTLINED_FUNCTION_124();
      sub_1DCB2C520(v62, v63);
    }

    v40 = 0;
    OUTLINED_FUNCTION_12_16();
    v66 = [v64 v65];
    if (!v26)
    {
      OUTLINED_FUNCTION_24_11(v50);
      if (v67 <= 0.0 || (OUTLINED_FUNCTION_20_11(), v68 <= 0.0))
      {
      }

      else
      {
        OUTLINED_FUNCTION_20_11();
        OUTLINED_FUNCTION_20_11();
      }
    }

    OUTLINED_FUNCTION_28_8(v66, sel_setSize_);
    v69 = OUTLINED_FUNCTION_76_0();
    [v69 v70];

    OUTLINED_FUNCTION_27_8(v71, sel_setImageIsRightAligned_);
    goto LABEL_19;
  }

LABEL_20:
  OUTLINED_FUNCTION_38_9();
}

void static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:maxLines:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v25;
  a20 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_23_7();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v33);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &a9 - v36;
  sub_1DCC648A4(v24, v23, v22, v21, v20, v32, v28, 0);
  if (v30)
  {
    v38 = objc_allocWithZone(MEMORY[0x1E69CA548]);
    v39 = v30;
    [v38 init];
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_16_10();
    if (!v41 & v40)
    {
      sub_1DCC65BC8(v39);
      if (v42)
      {
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_1_25(v43, v44, v45, &selRef_setContentType_);
        OUTLINED_FUNCTION_138();
        sub_1DD0DAEBC();

        v46 = sub_1DD0DAECC();
        v47 = OUTLINED_FUNCTION_2_31(v46);
        if (!v41)
        {
          sub_1DD0DAE6C();
          OUTLINED_FUNCTION_3_26();
          v48 = OUTLINED_FUNCTION_17_11();
          v47 = v49(v48);
        }

        OUTLINED_FUNCTION_26_4(v47, sel_setUrlValue_);
      }
    }

    else
    {
      v50 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_6_18(v50);

      v51 = OUTLINED_FUNCTION_124();
      sub_1DCB2C520(v51, v52);
    }

    v53 = v38;
    [v53 setShouldCropToCircle_];
    [v53 setSize_];
    v54 = OUTLINED_FUNCTION_76_0();
    [v54 v55];

    OUTLINED_FUNCTION_27_8(v56, sel_setImageIsRightAligned_);
  }

  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleImageUri:maxLines:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v66 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v39);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v65 - v42;
  sub_1DCC648A4(v38, v36, v34, v32, v30, v28, a24, 0);
  if (a21)
  {
    v44 = [objc_allocWithZone(MEMORY[0x1E69CA260]) init];
    sub_1DCC65C8C(v66, a21, v44);
    [v44 setMonogramStyle_];
    v45 = v44;
    [v45 setSize_];
    [v45 setShouldCropToCircle_];
    v46 = OUTLINED_FUNCTION_76_0();
    [v46 v47];

LABEL_11:
    goto LABEL_12;
  }

  if (v26)
  {
    v48 = objc_allocWithZone(MEMORY[0x1E69CA548]);
    v49 = v26;
    [v48 init];
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_16_10();
    if (!v51 & v50)
    {
      sub_1DCC65BC8(v49);
      if (v52)
      {
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_1_25(v53, v54, v55, &selRef_setContentType_);
        OUTLINED_FUNCTION_138();
        sub_1DD0DAEBC();

        v56 = sub_1DD0DAECC();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v56);
        if (EnumTagSinglePayload != 1)
        {
          sub_1DD0DAE6C();
          OUTLINED_FUNCTION_3_26();
          EnumTagSinglePayload = (*(v58 + 8))(v43, v56);
        }

        OUTLINED_FUNCTION_26_4(EnumTagSinglePayload, sel_setUrlValue_);
      }
    }

    else
    {
      v59 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_6_18(v59);

      v60 = OUTLINED_FUNCTION_124();
      sub_1DCB2C520(v60, v61);
    }

    v45 = v26;
    [v45 setShouldCropToCircle_];
    [v45 setSize_];
    v62 = OUTLINED_FUNCTION_76_0();
    [v62 v63];

    OUTLINED_FUNCTION_27_8(v64, sel_setImageIsRightAligned_);
    goto LABEL_11;
  }

LABEL_12:
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  OUTLINED_FUNCTION_50();
  v27 = v26;
  OUTLINED_FUNCTION_4_18();
  v28 = a25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v29);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_13();
  if (a22 && *(a22 + 16))
  {
    v28 = [objc_allocWithZone(MEMORY[0x1E69C9FC0]) init];
    sub_1DCC65CE0(a22, v28);
LABEL_6:
    v32 = v28;
    [v32 setSize_];
    [v32 setShouldCropToCircle_];
    v33 = OUTLINED_FUNCTION_76_0();
    [v33 v34];

    goto LABEL_7;
  }

  if (a21)
  {
    OUTLINED_FUNCTION_42_8([objc_allocWithZone(MEMORY[0x1E69CA260]) init]);
    [a25 setMonogramStyle_];
    goto LABEL_6;
  }

  if (!v27)
  {
    goto LABEL_8;
  }

  v35 = objc_allocWithZone(MEMORY[0x1E69CA548]);
  v36 = v27;
  [v35 init];
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_16_10();
  if (!v38 & v37)
  {
    sub_1DCC65BC8(v36);
    if (v39)
    {
      OUTLINED_FUNCTION_15_16();
      OUTLINED_FUNCTION_1_25(v40, v41, v42, &selRef_setContentType_);
      OUTLINED_FUNCTION_138();
      sub_1DD0DAEBC();

      v43 = sub_1DD0DAECC();
      v44 = OUTLINED_FUNCTION_2_31(v43);
      if (!v38)
      {
        sub_1DD0DAE6C();
        OUTLINED_FUNCTION_3_26();
        v45 = OUTLINED_FUNCTION_17_11();
        v44 = v46(v45);
      }

      OUTLINED_FUNCTION_26_4(v44, sel_setUrlValue_);
    }
  }

  else
  {
    v47 = OUTLINED_FUNCTION_29_7();
    OUTLINED_FUNCTION_6_18(v47);

    v48 = OUTLINED_FUNCTION_124();
    sub_1DCB2C520(v48, v49);
  }

  v32 = v27;
  [v32 setShouldCropToCircle_];
  [v32 setSize_];
  v50 = OUTLINED_FUNCTION_76_0();
  [v50 v51];

  OUTLINED_FUNCTION_27_8(v52, sel_setImageIsRightAligned_);
LABEL_7:

LABEL_8:
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:shouldUseDefaultImageSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, char a28, char a29)
{
  OUTLINED_FUNCTION_39_7();
  v31 = v30;
  OUTLINED_FUNCTION_4_18();
  v32 = a27;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v33);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_13();
  if (a24 && *(a24 + 16))
  {
    v32 = [objc_allocWithZone(MEMORY[0x1E69C9FC0]) init];
    sub_1DCC65CE0(a24, v32);
LABEL_6:
    v36 = v32;
    [v36 setSize_];
    OUTLINED_FUNCTION_12_16();
    [v36 v37];
    v38 = OUTLINED_FUNCTION_76_0();
    [v38 v39];

    goto LABEL_7;
  }

  if (a23)
  {
    OUTLINED_FUNCTION_42_8([objc_allocWithZone(MEMORY[0x1E69CA260]) init]);
    [a27 setMonogramStyle_];
    goto LABEL_6;
  }

  if (!v31)
  {
    goto LABEL_8;
  }

  v40 = objc_allocWithZone(MEMORY[0x1E69CA548]);
  v41 = v31;
  [v40 init];
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_16_10();
  if (!v43 & v42)
  {
    sub_1DCC65BC8(v41);
    if (v44)
    {
      OUTLINED_FUNCTION_15_16();
      OUTLINED_FUNCTION_1_25(v45, v46, v47, &selRef_setContentType_);
      OUTLINED_FUNCTION_138();
      sub_1DD0DAEBC();

      v48 = sub_1DD0DAECC();
      v49 = OUTLINED_FUNCTION_2_31(v48);
      if (!v43)
      {
        sub_1DD0DAE6C();
        OUTLINED_FUNCTION_3_26();
        v50 = OUTLINED_FUNCTION_17_11();
        v49 = v51(v50);
      }

      OUTLINED_FUNCTION_26_4(v49, sel_setUrlValue_);
    }
  }

  else
  {
    v52 = OUTLINED_FUNCTION_29_7();
    OUTLINED_FUNCTION_6_18(v52);

    v53 = OUTLINED_FUNCTION_124();
    sub_1DCB2C520(v53, v54);
  }

  v36 = v31;
  OUTLINED_FUNCTION_12_16();
  v57 = [v55 v56];
  if ((a29 & 1) == 0)
  {
    OUTLINED_FUNCTION_24_11(v41);
    if (v58 <= 0.0 || (OUTLINED_FUNCTION_20_11(), v59 <= 0.0))
    {
    }

    else
    {
      OUTLINED_FUNCTION_20_11();
      OUTLINED_FUNCTION_20_11();
    }
  }

  OUTLINED_FUNCTION_28_8(v57, sel_setSize_);
  v60 = OUTLINED_FUNCTION_76_0();
  [v60 v61];

  OUTLINED_FUNCTION_27_8(v62, sel_setImageIsRightAligned_);
LABEL_7:

LABEL_8:
  OUTLINED_FUNCTION_38_9();
}

void static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:withBlueTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, char a30)
{
  OUTLINED_FUNCTION_39_7();
  v77 = v33;
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_37_11();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  OUTLINED_FUNCTION_20_0(v34);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_34_0();
  v37 = OUTLINED_FUNCTION_10_17();
  v44 = sub_1DCC648A4(v37, v38, v39, v40, v41, v42, v43, a30);
  if (v30 && *(v30 + 16))
  {
    v45 = [objc_allocWithZone(MEMORY[0x1E69C9FC0]) init];
    sub_1DCC65CE0(v30, v45);
    OUTLINED_FUNCTION_41_8(v45);
    OUTLINED_FUNCTION_12_16();
    [v45 v46];
    v47 = OUTLINED_FUNCTION_76_0();
    [v47 v48];

LABEL_19:
    goto LABEL_20;
  }

  if (a24)
  {
    v49 = [objc_allocWithZone(MEMORY[0x1E69CA260]) init];
    v50 = OUTLINED_FUNCTION_21_5();
    sub_1DCC65C8C(v50, v51, v52);
    [v49 setMonogramStyle_];
    OUTLINED_FUNCTION_40_10(v49);
    OUTLINED_FUNCTION_12_16();
    [v49 v53];
    [v44 setImage_];
  }

  else if (v77)
  {
    v54 = objc_allocWithZone(MEMORY[0x1E69CA548]);
    v55 = v77;
    [v54 init];
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_16_10();
    if (!v57 & v56)
    {
      sub_1DCC65BC8(v55);
      if (v58)
      {
        OUTLINED_FUNCTION_15_16();
        OUTLINED_FUNCTION_1_25(v59, v60, v61, &selRef_setContentType_);
        OUTLINED_FUNCTION_138();
        sub_1DD0DAEBC();

        v62 = sub_1DD0DAECC();
        v63 = OUTLINED_FUNCTION_2_31(v62);
        if (!v57)
        {
          sub_1DD0DAE6C();
          OUTLINED_FUNCTION_3_26();
          v64 = OUTLINED_FUNCTION_17_11();
          v63 = v65(v64);
        }

        OUTLINED_FUNCTION_26_4(v63, sel_setUrlValue_);
      }
    }

    else
    {
      v66 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_6_18(v66);

      v67 = OUTLINED_FUNCTION_124();
      sub_1DCB2C520(v67, v68);
    }

    v45 = 0;
    OUTLINED_FUNCTION_12_16();
    v71 = [v69 v70];
    if (!v32)
    {
      OUTLINED_FUNCTION_24_11(v55);
      if (v72 <= 0.0 || (OUTLINED_FUNCTION_20_11(), v73 <= 0.0))
      {
      }

      else
      {
        OUTLINED_FUNCTION_20_11();
        OUTLINED_FUNCTION_20_11();
      }
    }

    OUTLINED_FUNCTION_28_8(v71, sel_setSize_);
    v74 = OUTLINED_FUNCTION_76_0();
    [v74 v75];

    OUTLINED_FUNCTION_27_8(v76, sel_setImageIsRightAligned_);
    goto LABEL_19;
  }

LABEL_20:
  OUTLINED_FUNCTION_38_9();
}

id sub_1DCC648A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v13 = [objc_allocWithZone(MEMORY[0x1E69CA3B0]) init];
  [v13 setSeparatorStyle_];
  v14 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  if (a2)
  {
    if (a8)
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }

    v16 = [objc_allocWithZone(MEMORY[0x1E69CA0F0]) &selRef_setCanUseServerTTS_];
    sub_1DCB72D80(a1, a2, v16);
    [v16 setIsBold_];
    if (a7 < 1)
    {
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
      }

      v17 = qword_1EDE57E18;
      v18 = sub_1DD0DE6EC();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
      v20 = OUTLINED_FUNCTION_32_6(v19);
      *(v20 + 16) = xmmword_1DD0E07C0;
      v48[0] = a7;
      sub_1DD0DF03C();
      OUTLINED_FUNCTION_35_1();
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1DCB34060();
      *(v20 + 32) = v48;
      *(v20 + 40) = 0x1E864E000;
      sub_1DD0DD7EC("CasinoFactory makeFormattedText called with invalid maxLines: %@, using 1 instead", 81, 2, &dword_1DCAFC000, v17, v18, v20);

      [v16 setMaxLines_];

      v14 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
    }

    else
    {
      [v16 setMaxLines_];
    }

    [v16 v14[176]];
    v21 = [objc_allocWithZone(MEMORY[0x1E69CA3A0]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DD0E15D0;
    *(v22 + 32) = v16;
    sub_1DCC65A90(v22, v21);
    v23 = OUTLINED_FUNCTION_76_0();
    [v23 v24];
  }

  if (a4)
  {
    v25 = [objc_allocWithZone(MEMORY[0x1E69CA0F0]) init];
    sub_1DCB72D80(a3, a4, v25);
    [v25 setIsBold_];
    v26 = a7;
    if (a7 <= 0)
    {
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
      }

      sub_1DD0DE6EC();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
      v28 = OUTLINED_FUNCTION_32_6(v27);
      *(v28 + 16) = xmmword_1DD0E07C0;
      v48[0] = a7;
      sub_1DD0DF03C();
      OUTLINED_FUNCTION_35_1();
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = sub_1DCB34060();
      *(v28 + 32) = v48;
      *(v28 + 40) = v14;
      OUTLINED_FUNCTION_9_17();
      sub_1DD0DD7EC(v29);

      v26 = 1;
    }

    [v25 setMaxLines_];

    [v25 v14[176]];
    v30 = [objc_allocWithZone(MEMORY[0x1E69CA3A0]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1DD0E15D0;
    *(v31 + 32) = v25;
    sub_1DCC65A90(v31, v30);
    if (a6)
    {
      v48[0] = 2105376;
      v48[1] = 0xE300000000000000;
      MEMORY[0x1E12A6780](a5);
      v32 = [objc_allocWithZone(MEMORY[0x1E69CA0F0]) init];
      v33 = OUTLINED_FUNCTION_17_11();
      sub_1DCB72D80(v33, v34, v32);
      [v32 setIsBold_];
      if (a7 <= 0)
      {
        if (qword_1EDE4F908 != -1)
        {
          OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
        }

        v35 = qword_1EDE57E18;
        v36 = sub_1DD0DE6EC();
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
        v38 = OUTLINED_FUNCTION_32_6(v37);
        *(v38 + 16) = xmmword_1DD0E07C0;
        v48[0] = a7;
        v39 = sub_1DD0DF03C();
        v41 = v40;
        *(v38 + 56) = MEMORY[0x1E69E6158];
        *(v38 + 64) = sub_1DCB34060();
        *(v38 + 32) = v39;
        *(v38 + 40) = v41;
        sub_1DD0DD7EC("CasinoFactory makeFormattedText called with invalid maxLines: %@, using 1 instead", 81, 2, &dword_1DCAFC000, v35, v36, v38);

        a7 = 1;
        v14 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
      }

      [v32 &selRef_operatingSystemVersionString + 3];

      [v32 v14[176]];

      v48[0] = sub_1DCC65B04(v30);
      if (v48[0])
      {
        v42 = v32;
        MEMORY[0x1E12A6920]();
        if (*((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD0DE33C();
        }

        sub_1DD0DE3AC();
        if (v48[0])
        {
          sub_1DCC65E48();
          v43 = sub_1DD0DE2DC();
        }

        else
        {
          v43 = 0;
        }

        [v30 setFormattedTextPieces_];
      }

      else
      {
        [v30 setFormattedTextPieces_];
      }
    }

    [v13 setLeadingSubtitle_];
  }

  return v13;
}

id static CasinoFactory.makeRichText(text:bold:maxLines:textColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_36_11();
  v9 = [objc_allocWithZone(MEMORY[0x1E69CA0F0]) init];
  v10 = OUTLINED_FUNCTION_138();
  sub_1DCB72D80(v10, v11, v9);
  [v9 setIsBold_];
  if (v5 < 1)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    sub_1DD0DE6EC();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v16 = OUTLINED_FUNCTION_32_6(v15);
    *(v16 + 16) = xmmword_1DD0E07C0;
    v21 = v5;
    sub_1DD0DF03C();
    OUTLINED_FUNCTION_35_1();
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1DCB34060();
    *(v16 + 32) = &v21;
    *(v16 + 40) = v7;
    OUTLINED_FUNCTION_9_17();
    sub_1DD0DD7EC(v17);

    v13 = sel_setMaxLines_;
    v12 = v9;
    v14 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_76_0();
  }

  [v12 v13];

  [v9 setTextColor_];
  v18 = [objc_allocWithZone(MEMORY[0x1E69CA3A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DD0E15D0;
  *(v19 + 32) = v9;
  sub_1DCC65A90(v19, v18);
  return v18;
}

id static CasinoFactory.makeFormattedText(textValue:bold:maxLines:textColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_36_11();
  v9 = [objc_allocWithZone(MEMORY[0x1E69CA0F0]) init];
  v10 = OUTLINED_FUNCTION_138();
  sub_1DCB72D80(v10, v11, v9);
  [v9 setIsBold_];
  if (v5 < 1)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    sub_1DD0DE6EC();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v13 = OUTLINED_FUNCTION_32_6(v12);
    *(v13 + 16) = xmmword_1DD0E07C0;
    v16 = v5;
    sub_1DD0DF03C();
    OUTLINED_FUNCTION_35_1();
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1DCB34060();
    *(v13 + 32) = &v16;
    *(v13 + 40) = v7;
    OUTLINED_FUNCTION_9_17();
    sub_1DD0DD7EC(v14);

    [v9 setMaxLines_];
  }

  else
  {
    [v9 setMaxLines_];
  }

  [v9 setTextColor_];
  return v9;
}

id static CasinoFactory.makePlaceholderCardSection()()
{
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E69C9F08]) init];
  sub_1DD0DB03C();
  v8 = sub_1DD0DAFFC();
  v10 = v9;
  (*(v2 + 8))(v6, v0);
  sub_1DCB2C534(v8, v10, v7, &selRef_setCardSectionId_);
  v11 = @"0";
  sub_1DD0DDFBC();

  v12 = OUTLINED_FUNCTION_21_5();
  sub_1DCB2C534(v12, v13, v14, v15);
  return v7;
}

uint64_t static CasinoFactory.makeSendCommandsFromMachineUtterance(machineUtterance:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  static CasinoFactory.makeSendCommandsFromMachineUtterances(machineUtterances:)();
  v6 = v5;
  swift_setDeallocating();
  sub_1DCB19D2C();
  return v6;
}

void static CasinoFactory.makeSendCommandsFromMachineUtterances(machineUtterances:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_22_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  if (v9)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    v12 = (v4 + 8);
    v13 = (v2 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v16 = objc_allocWithZone(MEMORY[0x1E69C7AB0]);

      v17 = [v16 init];
      v18 = sub_1DD0DDFBC();
      sub_1DCB2C534(v18, v19, v17, &selRef_setInputOrigin_);
      v20 = sub_1DD0DDFBC();
      sub_1DCB2C534(v20, v21, v17, &selRef_setOrigin_);
      sub_1DCC65D48(v14, v15, v17);
      v22 = v17;
      sub_1DD0DB03C();
      v23 = sub_1DD0DAFFC();
      v25 = v24;
      (*v12)(v8, v0);
      sub_1DCB2C534(v23, v25, v22, &selRef_setAceId_);

      sub_1DD0DECDC();
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      v13 += 2;
      --v9;
    }

    while (v9);
    v10 = v29;
    v11 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E69C7A48]) v11[37]];

  if (v10 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D8, &qword_1DD106560);
    v27 = sub_1DD0DEE0C();
  }

  else
  {
    sub_1DD0DF0CC();
    v27 = v10;
  }

  sub_1DCC6589C(v27, v26);
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void static CasinoFactory.makeConfirmationOptionFromCommands(commands:label:confirmationType:isActive:iconType:)()
{
  OUTLINED_FUNCTION_50();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_23_7();
  v9 = [objc_allocWithZone(MEMORY[0x1E69C7B28]) init];
  [v9 setActive_];
  sub_1DCC6591C(v1, v0, v9);
  sub_1DCC65970(v2, v9);
  v10 = OUTLINED_FUNCTION_138();
  sub_1DCC659E4(v10, v11, v9);
  if (v4)
  {
    sub_1DCC65A38(v6, v4, v9);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCC65718()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC657A8()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC657E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28F8, &qword_1DD0E6F08);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC65860()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_2();

  return swift_deallocClassInstance();
}

void sub_1DCC6589C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D8, &qword_1DD106560);
  v3 = sub_1DD0DE2DC();

  [a2 setCommands_];
}

void sub_1DCC6591C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DD0DDF8C();
  OUTLINED_FUNCTION_14_18();
  [a3 setLabel_];
}

void sub_1DCC65970(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  sub_1DD0DE2DC();
  OUTLINED_FUNCTION_14_18();
  [a2 setCommands_];
}

void sub_1DCC659E4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DD0DDF8C();
  OUTLINED_FUNCTION_14_18();
  [a3 setType_];
}

void sub_1DCC65A38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setIconType_];
}

void sub_1DCC65A90(uint64_t a1, void *a2)
{
  sub_1DCC65E48();
  v3 = sub_1DD0DE2DC();

  [a2 setFormattedTextPieces_];
}

uint64_t sub_1DCC65B04(void *a1)
{
  v1 = [a1 formattedTextPieces];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DCC65E48();
  v3 = sub_1DD0DE2EC();

  return v3;
}

uint64_t sub_1DCC65B64(void *a1)
{
  v1 = [a1 _imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DAF2C();

  return v3;
}

uint64_t sub_1DCC65BC8(void *a1)
{
  v1 = [a1 _identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

void sub_1DCC65C38(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DD0DAEFC();
  OUTLINED_FUNCTION_14_18();
  [a3 setImageData_];
}

void sub_1DCC65C8C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DD0DDF8C();
  OUTLINED_FUNCTION_14_18();
  [a3 setMonogramLetters_];
}

void sub_1DCC65CE0(uint64_t a1, void *a2)
{
  sub_1DD0DE2DC();
  OUTLINED_FUNCTION_14_18();
  [a2 setContactIdentifiers_];
}

void sub_1DCC65D48(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DD0DDF8C();
  OUTLINED_FUNCTION_14_18();
  [a3 setUtterance_];
}

_BYTE *storeEnumTagSinglePayload for CasinoFactory(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCC65E48()
{
  result = qword_1ECCA2918;
  if (!qword_1ECCA2918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA2918);
  }

  return result;
}

uint64_t CATIConfigDefaults.taskAttributeName.setter()
{
  OUTLINED_FUNCTION_60();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t CATIConfigDefaults.verb.setter()
{
  OUTLINED_FUNCTION_60();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t CATIConfigDefaults.entityAttributeName.setter()
{
  OUTLINED_FUNCTION_60();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t CATIConfigDefaults.namespace.setter()
{
  OUTLINED_FUNCTION_60();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t CATIConfigDefaults.init(entityName:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = a1;
  *(a4 + 8) = a2;
  return a3(a4);
}

uint64_t destroy for CATIConfigDefaults()
{
}

void *initializeWithCopy for CATIConfigDefaults(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;

  return a1;
}

void *assignWithCopy for CATIConfigDefaults(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  a1[6] = a2[6];
  a1[7] = a2[7];

  a1[8] = a2[8];
  a1[9] = a2[9];

  return a1;
}

void *assignWithTake for CATIConfigDefaults(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  v7 = a2[7];
  a1[6] = a2[6];
  a1[7] = v7;

  v8 = a2[9];
  a1[8] = a2[8];
  a1[9] = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for CATIConfigDefaults(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CATIConfigDefaults(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DCC663BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DEE9C();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DCC66408(char a1)
{
  result = 0x614E797469746E65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 1651664246;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x63617073656D616ELL;
      break;
    case 5:
      result = 0x696669746E656469;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DCC664F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCC663BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DCC66528@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DCC66408(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CATIParameterNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CATIParameterNames(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCC666BC()
{
  result = qword_1ECCA2920;
  if (!qword_1ECCA2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2920);
  }

  return result;
}

uint64_t sub_1DCC66710(char a1)
{
  if (a1)
  {
    return 0x64656C65636E6143;
  }

  else
  {
    return 0x6F74747542707041;
  }
}

uint64_t sub_1DCC66770@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1DCC66BD0();
  *a2 = result;
  return result;
}

uint64_t sub_1DCC667A8()
{
  v1 = OUTLINED_FUNCTION_6_19();
  result = sub_1DCC66710(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1DCC667D0()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  return OUTLINED_FUNCTION_15_17();
}

BOOL sub_1DCC66818@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC667D0();
  *a1 = result;
  return result;
}

void sub_1DCC66870(char a1)
{
  switch(a1)
  {
    case 3:
      OUTLINED_FUNCTION_57_0();
      break;
    default:
      return;
  }
}

unint64_t sub_1DCC66990()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DCC669F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC66990();
  *a1 = result;
  return result;
}

void sub_1DCC66A24()
{
  v1 = OUTLINED_FUNCTION_6_19();
  sub_1DCC66870(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1DCC66A4C(char a1)
{
  result = 0x6C65636E6143;
  switch(a1)
  {
    case 1:
      result = 0x6D7269666E6F43;
      break;
    case 2:
      result = 28494;
      break;
    case 3:
      result = 19279;
      break;
    case 4:
      result = 0x7070416E65704FLL;
      break;
    case 5:
      result = 7562585;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DCC66ADC()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DCC66B40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC66ADC();
  *a1 = result;
  return result;
}

uint64_t sub_1DCC66B70()
{
  v1 = OUTLINED_FUNCTION_6_19();
  result = sub_1DCC66A4C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1DCC66B98(char a1)
{
  if (a1)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1DCC66BD0()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCC66C38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC66BD0();
  *a1 = result;
  return result;
}

unint64_t sub_1DCC66C70()
{
  v1 = OUTLINED_FUNCTION_6_19();
  result = sub_1DCC66B98(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_1DCC66C98(char a1)
{
  switch(a1)
  {
    case 2:
    case 5:
    case 6:
    case 7:
      return;
    case 3:
    case 11:
    case 12:
      OUTLINED_FUNCTION_57_0();
      break;
    case 4:
    case 8:
      OUTLINED_FUNCTION_5_4();
      break;
    default:
      OUTLINED_FUNCTION_12_17();
      break;
  }
}

unint64_t sub_1DCC66E58()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DCC66EBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC66E58();
  *a1 = result;
  return result;
}

void sub_1DCC66EEC()
{
  v1 = OUTLINED_FUNCTION_6_19();
  sub_1DCC66C98(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_1DCC66F18(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
    case 11:
      result = 0xD000000000000011;
      break;
    case 7:
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD00000000000002ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DCC67024()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DCC67088@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC67024();
  *a1 = result;
  return result;
}

unint64_t sub_1DCC670B8()
{
  v1 = OUTLINED_FUNCTION_6_19();
  result = sub_1DCC66F18(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1DCC670E0()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  return OUTLINED_FUNCTION_15_17();
}

BOOL sub_1DCC67124@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC670E0();
  *a1 = result;
  return result;
}

BOOL sub_1DCC6717C()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  return OUTLINED_FUNCTION_15_17();
}

BOOL sub_1DCC671C0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC6717C();
  *a1 = result;
  return result;
}

unint64_t sub_1DCC6721C(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
    case 3:
    case 6:
    case 8:
      result = 0xD000000000000018;
      break;
    case 2:
    case 4:
    case 9:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DCC67304()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DCC67368@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC67304();
  *a1 = result;
  return result;
}

unint64_t sub_1DCC67398()
{
  v1 = OUTLINED_FUNCTION_6_19();
  result = sub_1DCC6721C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1DCC673DC()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  return OUTLINED_FUNCTION_15_17();
}

BOOL sub_1DCC67420@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC673DC();
  *a1 = result;
  return result;
}

unint64_t sub_1DCC67454@<X0>(void *a1@<X8>)
{
  result = sub_1DCC673C0();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

unint64_t sub_1DCC67488(char a1)
{
  result = 0x546D7269666E6F43;
  switch(a1)
  {
    case 1:
      result = 0x4E746361746E6F43;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x64726143654D6F4ELL;
      break;
    case 4:
      OUTLINED_FUNCTION_12_17();
      result = v3 + 2;
      break;
    case 5:
      result = OUTLINED_FUNCTION_5_4();
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DCC6756C()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DCC675D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC6756C();
  *a1 = result;
  return result;
}

unint64_t sub_1DCC67600()
{
  v1 = OUTLINED_FUNCTION_6_19();
  result = sub_1DCC67488(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_1DCC6762C(char a1)
{
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
      return;
    case 5:
      OUTLINED_FUNCTION_57_0();
      break;
    default:
      OUTLINED_FUNCTION_12_17();
      break;
  }
}

unint64_t sub_1DCC6771C()
{
  OUTLINED_FUNCTION_3_27();
  sub_1DD0DEE9C();
  OUTLINED_FUNCTION_7_22();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DCC67780@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC6771C();
  *a1 = result;
  return result;
}

void sub_1DCC677B0()
{
  v1 = OUTLINED_FUNCTION_6_19();
  sub_1DCC6762C(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_1DCC677D8(unsigned __int8 a1)
{
  switch(a1 >> 4)
  {
    case 1:
      OUTLINED_FUNCTION_8_24();
      v18 = OUTLINED_FUNCTION_14_19();
      sub_1DCC66870(v18);
      goto LABEL_25;
    case 2:
      OUTLINED_FUNCTION_8_24();
      v9 = OUTLINED_FUNCTION_14_19();
      v2 = sub_1DCC66A4C(v9);
      goto LABEL_25;
    case 3:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_1_0();
      v24[0] = v11 + 2;
      v24[1] = v10;
      v12 = v11 | 8;
      v13 = v11 + 21;
      if (a1)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      if (a1)
      {
        v15 = "GenericHandoffNotification";
      }

      else
      {
        v15 = "Confirm";
      }

      MEMORY[0x1E12A6780](v14, v15 | 0x8000000000000000);
      goto LABEL_26;
    case 4:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_1_0();
      v24[0] = v6 - 2;
      v24[1] = v5;
      sub_1DCC66C98(a1 & 0xF);
      goto LABEL_25;
    case 5:
      OUTLINED_FUNCTION_8_24();
      v19 = OUTLINED_FUNCTION_14_19();
      v2 = sub_1DCC66F18(v19);
      goto LABEL_25;
    case 6:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      v20 = OUTLINED_FUNCTION_14_19();
      v2 = sub_1DCC6721C(v20);
      goto LABEL_25;
    case 7:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_1_0();
      v24[0] = v17;
      v24[1] = v16;
      v2 = sub_1DCC67488(a1 & 0xF);
      goto LABEL_25;
    case 8:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_1_0();
      v24[0] = v22;
      v24[1] = v21;
      sub_1DCC6762C(a1 & 0xF);
      goto LABEL_25;
    case 9:
      switch(a1)
      {
        case 0x91u:
        case 0x92u:
          result = 0xD00000000000001BLL;
          break;
        case 0x93u:
          OUTLINED_FUNCTION_13_14();
          result = v23 + 18;
          break;
        default:
          OUTLINED_FUNCTION_13_14();
          result = v7 + 3;
          break;
      }

      return result;
    default:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      strcpy(v24, "AppResolution#");
      HIBYTE(v24[1]) = -18;
      if (a1)
      {
        v2 = 0x64656C65636E6143;
      }

      else
      {
        v2 = 0x6F74747542707041;
      }

      if (a1)
      {
        v3 = 0xE800000000000000;
      }

      else
      {
        v3 = 0xE90000000000006ELL;
      }

      v4 = v3;
LABEL_25:
      MEMORY[0x1E12A6780](v2, v4);
LABEL_26:

      return v24[0];
  }
}

uint64_t sub_1DCC67AD4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 7)
  {
    if (a2 + 249 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 249) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 250;
    return v5 + 1;
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0x9F)
  {
    v5 = -1;
  }

  else
  {
    v5 = (v6 ^ 0xF0) >> 4;
  }

  return v5 + 1;
}

_BYTE *sub_1DCC67B64(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 249 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 249) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 6)
  {
    v6 = ((a2 - 7) >> 8) + 1;
    *result = a2 - 7;
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
          *result = -16 * a2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCC67C30(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x8F)
  {
    return v1 >> 4;
  }

  else
  {
    return (v1 & 0xF) + 9;
  }
}

_BYTE *sub_1DCC67C5C(_BYTE *result, unsigned int a2)
{
  if (a2 < 9)
  {
    v2 = *result & 0xF | (16 * a2);
  }

  else
  {
    v2 = (a2 + 7) & 0xF | 0x90;
  }

  *result = v2;
  return result;
}

uint64_t sub_1DCC67CB4(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_67(a1);
}

_BYTE *sub_1DCC67D00(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCC67DB4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DCC67E3C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          result = OUTLINED_FUNCTION_10_18(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompositionResolutionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DCC67F98(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCC68070(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DCC680F8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCC681D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DCC68258(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DCC6833C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DefaultFlowActivity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DCC6849C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DCC68574(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_10_18(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCC6864C()
{
  result = qword_1ECCA2928;
  if (!qword_1ECCA2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2928);
  }

  return result;
}

unint64_t sub_1DCC686A4()
{
  result = qword_1ECCA2930;
  if (!qword_1ECCA2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2930);
  }

  return result;
}

unint64_t sub_1DCC686FC()
{
  result = qword_1ECCA2938;
  if (!qword_1ECCA2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2938);
  }

  return result;
}

unint64_t sub_1DCC68754()
{
  result = qword_1ECCA2940;
  if (!qword_1ECCA2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2940);
  }

  return result;
}

unint64_t sub_1DCC687AC()
{
  result = qword_1ECCA2948;
  if (!qword_1ECCA2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2948);
  }

  return result;
}

unint64_t sub_1DCC68804()
{
  result = qword_1ECCA2950;
  if (!qword_1ECCA2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2950);
  }

  return result;
}

unint64_t sub_1DCC6885C()
{
  result = qword_1ECCA2958;
  if (!qword_1ECCA2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2958);
  }

  return result;
}

unint64_t sub_1DCC688B4()
{
  result = qword_1ECCA2960;
  if (!qword_1ECCA2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2960);
  }

  return result;
}

unint64_t sub_1DCC6890C()
{
  result = qword_1ECCA2968;
  if (!qword_1ECCA2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2968);
  }

  return result;
}

unint64_t sub_1DCC68964()
{
  result = qword_1ECCA2970;
  if (!qword_1ECCA2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2970);
  }

  return result;
}

unint64_t sub_1DCC689BC()
{
  result = qword_1ECCA2978;
  if (!qword_1ECCA2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2978);
  }

  return result;
}

unint64_t sub_1DCC68A14()
{
  result = qword_1ECCA2980;
  if (!qword_1ECCA2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2980);
  }

  return result;
}

unint64_t sub_1DCC68A6C()
{
  result = qword_1ECCA2988;
  if (!qword_1ECCA2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2988);
  }

  return result;
}

uint64_t sub_1DCC68B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for CATINLRepresentationProducer();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  memcpy(v9 + 4, a3, 0x50uLL);
  a4[3] = v8;
  a4[4] = &off_1F5856130;
  *a4 = v9;

  return sub_1DCC68C68(a3, &v11);
}

uint64_t CATINLRepresentationProducerProviding.makeCATINLRepresentationProducer(name:catiConfig:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = type metadata accessor for CATINLRepresentationProducer();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  memcpy(v9 + 4, __src, 0x50uLL);
  a4[3] = v8;
  a4[4] = &off_1F5856130;
  *a4 = v9;

  return sub_1DCC68C68(__dst, &v11);
}

uint64_t sub_1DCC68DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a1;
  v12 = sub_1DD0DB44C();
  v6[7] = v12;
  v6[8] = *(v12 - 8);
  v13 = swift_task_alloc();
  v6[9] = v13;
  v14 = swift_task_alloc();
  v6[10] = v14;
  *v14 = v6;
  v14[1] = sub_1DCC68EEC;

  return sub_1DCC6921C(v13, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCC68EEC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1DCC69090;
  }

  else
  {
    v2 = sub_1DCC69000;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DCC69000()
{
  (*(v0[8] + 32))(v0[6], v0[9], v0[7]);
  type metadata accessor for NLProducerResult.ProducerResultBase(0);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCC69090()
{
  v12 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 88);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_151();
    v11 = OUTLINED_FUNCTION_52_0();
    *v1 = 136315138;
    swift_getErrorValue();
    v6 = sub_1DD0DF18C();
    v8 = sub_1DCB10E9C(v6, v7, &v11);

    *(v1 + 1) = v8;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Unable to write USO protobuf graph: %s", v1, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  **(v0 + 48) = *(v0 + 88);
  type metadata accessor for NLProducerResult.ProducerResultBase(0);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCC6921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2990, &qword_1DD0E8E30);
  v7[10] = swift_task_alloc();
  v8 = sub_1DD0DBB1C();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCC6931C, 0, 0);
}

void sub_1DCC6931C()
{
  v2 = v0[8];
  v1 = v0[9];
  type metadata accessor for ParameterWrapper();
  inited = swift_initStackObject();
  *(inited + 16) = v2;

  sub_1DCC696A0(inited, 1, v1);
  v4 = sub_1DCC697B8(inited, 0, v0[9]);
  v6 = v5;
  v7 = sub_1DCC698D4(inited, 2, v0[9]);
  v9 = v8;
  sub_1DCC699EC(inited, 4, v0[9]);
  v12 = v0[13];
  v13 = v0[12];
  v14 = v0[11];
  sub_1DCC6A4DC(0x696669746E656469, 0xEF65756C61567265, v0[6], v0[7]);
  sub_1DD0DBC9C();
  swift_allocObject();

  MEMORY[0x1E12A42D0](v4, v6, v7, v9);
  sub_1DD0DBCBC();
  swift_allocObject();
  v10 = MEMORY[0x1E12A4300](v4, v6);
  sub_1DD0DBAEC();
  sub_1DD0DBA0C();
  (*(v13 + 8))(v12, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD0E15D0;
  *(v11 + 32) = v10;
  sub_1DD0DCF8C();
}

_BYTE *sub_1DCC696A0(uint64_t a1, char a2, uint64_t a3)
{
  sub_1DCC66408(a2);
  v5 = sub_1DCC69D70();
  v7 = v6;

  if (!v7)
  {
    memcpy(__dst, (a3 + 32), sizeof(__dst));
    if (!__dst[1] || (v5 = __dst[2], v8 = __dst[3], sub_1DCC6A5EC(__dst, &v11), , , , , !v8))
    {
      sub_1DCC6A65C();
      swift_allocError();
      v5 = v9;
      *(v9 + 24) = &type metadata for CATIParameterNames;
      *(v9 + 32) = sub_1DCC6A6B0();
      *v5 = a2;
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t sub_1DCC697B8(uint64_t a1, char a2, uint64_t a3)
{
  sub_1DCC66408(a2);
  v5 = sub_1DCC69D70();
  v7 = v6;

  if (!v7)
  {
    memcpy(__dst, (a3 + 32), sizeof(__dst));
    if (__dst[1])
    {
      v5 = __dst[0];
      sub_1DCC6A5EC(__dst, &v11);
    }

    else
    {
      sub_1DCC6A65C();
      swift_allocError();
      v9 = v8;
      *(v8 + 24) = &type metadata for CATIParameterNames;
      *(v8 + 32) = sub_1DCC6A6B0();
      *v9 = a2;
      swift_willThrow();
    }
  }

  return v5;
}

_BYTE *sub_1DCC698D4(uint64_t a1, char a2, uint64_t a3)
{
  sub_1DCC66408(a2);
  v5 = sub_1DCC69D70();
  v7 = v6;

  if (!v7)
  {
    memcpy(__dst, (a3 + 32), sizeof(__dst));
    if (!__dst[1] || (v5 = __dst[4], v8 = __dst[5], sub_1DCC6A5EC(__dst, &v11), , , , , !v8))
    {
      sub_1DCC6A65C();
      swift_allocError();
      v5 = v9;
      *(v9 + 24) = &type metadata for CATIParameterNames;
      *(v9 + 32) = sub_1DCC6A6B0();
      *v5 = a2;
      swift_willThrow();
    }
  }

  return v5;
}

_BYTE *sub_1DCC699EC(uint64_t a1, char a2, uint64_t a3)
{
  sub_1DCC66408(a2);
  v5 = sub_1DCC69D70();
  v7 = v6;

  if (!v7)
  {
    memcpy(__dst, (a3 + 32), sizeof(__dst));
    if (!__dst[1] || (v5 = __dst[8], v8 = __dst[9], sub_1DCC6A5EC(__dst, &v11), , , , , !v8))
    {
      sub_1DCC6A65C();
      swift_allocError();
      v5 = v9;
      *(v9 + 24) = &type metadata for CATIParameterNames;
      *(v9 + 32) = sub_1DCC6A6B0();
      *v5 = a2;
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t sub_1DCC69B04()
{
  sub_1DCC6A88C(v0, v7);
  sub_1DCAFF9E8(v7, v6);
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_1DD0DEC1C();
  v4 = 0;
  v5 = 0xE000000000000000;
  MEMORY[0x1E12A6780](0xD000000000000024, 0x80000001DD115D80);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v3[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v3);
  sub_1DD0DE26C();
  sub_1DD0DEDBC();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v1 = v4;
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v1;
}

void *sub_1DCC69C1C()
{

  sub_1DCC6A704(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t sub_1DCC69C60()
{
  sub_1DCC69C1C();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC69C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB3FF64;

  return sub_1DCC68DB4(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCC69D70()
{
  OUTLINED_FUNCTION_2_32();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_86();
    v5 = sub_1DCB21038(v3, v4);
    if (v6)
    {
      OUTLINED_FUNCTION_8_25(v5, v6, v7, v8, v9);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (swift_dynamicCast())
  {
    return v23;
  }

  if (*(v0 + 16))
  {

    v11 = OUTLINED_FUNCTION_86();
    sub_1DCB21038(v11, v12);
    v14 = v13;

    if (v14)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v15 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v15, qword_1EDE57E00);

      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v16, v17))
      {
        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_52_0();
        *v1 = 136315138;
        v18 = OUTLINED_FUNCTION_86();
        *(v1 + 4) = sub_1DCB10E9C(v18, v19, v20);
        OUTLINED_FUNCTION_4_19(&dword_1DCAFC000, v21, v22, "Optional parameter '%s' is present but is not of the expected type.");
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_92_0();
      }
    }
  }

  return 0;
}

uint64_t sub_1DCC69EFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_2_32();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_86();
    v10 = sub_1DCB21038(v8, v9);
    if (v11)
    {
      OUTLINED_FUNCTION_8_25(v10, v11, v12, v13, v14);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    return v28;
  }

  if (*(v4 + 16))
  {

    v16 = OUTLINED_FUNCTION_86();
    sub_1DCB21038(v16, v17);
    v19 = v18;

    if (v19)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v20 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v20, qword_1EDE57E00);

      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_52_0();
        *a3 = 136315138;
        v23 = OUTLINED_FUNCTION_86();
        *(a3 + 4) = sub_1DCB10E9C(v23, v24, v25);
        OUTLINED_FUNCTION_4_19(&dword_1DCAFC000, v26, v27, "Optional parameter '%s' is present but is not of the expected type.");
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_92_0();
      }
    }
  }

  return 0;
}

uint64_t sub_1DCC6A084()
{
  OUTLINED_FUNCTION_2_32();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_86();
    v5 = sub_1DCB21038(v3, v4);
    if (v6)
    {
      OUTLINED_FUNCTION_8_25(v5, v6, v7, v8, v9);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (swift_dynamicCast())
  {
    return v23;
  }

  if (*(v0 + 16))
  {

    v11 = OUTLINED_FUNCTION_86();
    sub_1DCB21038(v11, v12);
    v14 = v13;

    if (v14)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v15 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v15, qword_1EDE57E00);

      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v16, v17))
      {
        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_52_0();
        *v1 = 136315138;
        v18 = OUTLINED_FUNCTION_86();
        *(v1 + 4) = sub_1DCB10E9C(v18, v19, v20);
        OUTLINED_FUNCTION_4_19(&dword_1DCAFC000, v21, v22, "Optional parameter '%s' is present but is not of the expected type.");
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_92_0();
      }
    }
  }

  return 2;
}

uint64_t sub_1DCC6A20C(uint64_t a1, unint64_t a2)
{
  v5 = [v2 parameters];
  sub_1DD0DDE6C();

  sub_1DCB90D40();

  __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B0, &unk_1DD0E7AF0);
  if (swift_dynamicCast())
  {
    return v16;
  }

  v7 = [v2 parameters];
  v8 = sub_1DD0DDE6C();

  if (*(v8 + 16))
  {
    sub_1DCB21038(a1, a2);
    v10 = v9;

    if (v10)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v11 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v11, qword_1EDE57E00);

      v12 = sub_1DD0DD8EC();
      v13 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1DCB10E9C(a1, a2, v17);
        _os_log_impl(&dword_1DCAFC000, v12, v13, "Optional parameter '%s' is present but is not of the expected type.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1E12A8390](v15, -1, -1);
        MEMORY[0x1E12A8390](v14, -1, -1);
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1DCC6A4A0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = sub_1DCC6A20C(a1, a2);
  if (v4)
  {
    return v4;
  }

  return a3;
}

uint64_t sub_1DCC6A4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DCC69D70();
  if (v6)
  {
    return v5;
  }

  return a3;
}

uint64_t sub_1DCC6A540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = sub_1DCC69EFC(a1, a2, a4, a5);
  if (v6)
  {
    return v6;
  }

  return a3;
}

uint64_t sub_1DCC6A584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2990, &qword_1DD0E8E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCC6A5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2998, &qword_1DD0E7AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCC6A65C()
{
  result = qword_1ECCA29A0;
  if (!qword_1ECCA29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29A0);
  }

  return result;
}

unint64_t sub_1DCC6A6B0()
{
  result = qword_1ECCA29A8;
  if (!qword_1ECCA29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29A8);
  }

  return result;
}

uint64_t sub_1DCC6A704(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t assignWithTake for CATINLRepresentationProducer.ProducerError(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for CATINLRepresentationProducer.ProducerError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CATINLRepresentationProducer.ProducerError(uint64_t result, int a2, int a3)
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

double sub_1DCC6A8C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for CATIUserInputParser();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  a5[3] = v10;
  a5[4] = &off_1F58561F0;
  *a5 = v11;

  return result;
}

uint64_t CATIUserInputParserProviding.makeCATIUserInputParser(name:targetEntityName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v12[0] = a3;
  *(&v12[0] + 1) = a4;
  memset(&v12[1], 0, 64);
  v10 = *(a6 + 16);

  v10(a1, a2, v12, a5, a6);
  memcpy(__dst, v12, sizeof(__dst));
  return sub_1DCC6AA08(__dst);
}

uint64_t sub_1DCC6AA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for CATIUserInputParser();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  memcpy(v9 + 4, a3, 0x50uLL);
  a4[3] = v8;
  a4[4] = &off_1F58561F0;
  *a4 = v9;

  return sub_1DCC68C68(a3, &v11);
}

uint64_t CATIUserInputParserProviding.makeCATIUserInputParser(name:catiConfig:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = type metadata accessor for CATIUserInputParser();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  memcpy(v9 + 4, __src, 0x50uLL);
  a4[3] = v8;
  a4[4] = &off_1F58561F0;
  *a4 = v9;

  return sub_1DCC68C68(__dst, &v11);
}

void *sub_1DCC6ACF8(uint64_t a1, unint64_t a2)
{
  v55 = *v2;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for USOParse(0);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v58 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v48 - v14;
  if (qword_1EDE4F900 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v16 = sub_1DD0DD8FC();
    v60 = __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();
    v19 = os_log_type_enabled(v17, v18);
    v54 = v15;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = sub_1DD0DF2AC();
      v23 = a2;
      v24 = sub_1DCB10E9C(v21, v22, &v61);

      *(v20 + 4) = v24;
      a2 = v23;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1DCB10E9C(0xD00000000000002CLL, 0x80000001DD115E10, &v61);
      _os_log_impl(&dword_1DCAFC000, v17, v18, "%s.%s", v20, 0x16u);
      OUTLINED_FUNCTION_8_26();
      OUTLINED_FUNCTION_80();
      v15 = v54;
      OUTLINED_FUNCTION_80();
    }

    v25 = type metadata accessor for Input(0);
    sub_1DCB24628(a1 + *(v25 + 20), v8, type metadata accessor for Parse);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      break;
    }

    sub_1DCC6D300(v8, v15);
    v8 = (a2 + 64);
    v26 = 1 << *(a2 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v56 = v27 & *(a2 + 64);
    v53 = (v26 + 63) >> 6;

    v15 = 0;
    v28.n128_u64[0] = 136315138;
    v52 = v28;
    v28.n128_u64[0] = 136315394;
    v49 = v28;
    v28.n128_u64[0] = 134217984;
    v48 = v28;
    v28.n128_u64[0] = 136315650;
    v50 = v28;
    a1 = v58;
    for (i = (a2 + 64); ; v8 = i)
    {
      v29 = v56;
      if (!v56)
      {
        break;
      }

LABEL_13:
      v56 = (v29 - 1) & v29;
      v31 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v29)) | (v15 << 6)));
      v59 = type metadata accessor for ParameterWrapper();
      inited = swift_initStackObject();
      *(inited + 16) = v31;

      v33 = v54;
      v57 = inited;
      if (sub_1DCC6BC7C(v54, inited))
      {

        sub_1DD0DCF8C();
      }

      sub_1DCB24628(v33, a1, type metadata accessor for USOParse);
      v34 = sub_1DD0DD8EC();
      v35 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v34, v35))
      {
        OUTLINED_FUNCTION_151();
        v36 = OUTLINED_FUNCTION_10_0();
        v61 = v36;
        *a1 = v52.n128_u32[0];
        v37 = USOParse.debugDescription.getter();
        v39 = v38;
        OUTLINED_FUNCTION_0_22();
        sub_1DCB283D8(v58, v40);
        v41 = sub_1DCB10E9C(v37, v39, &v61);

        *(a1 + 4) = v41;
        OUTLINED_FUNCTION_9_18(&dword_1DCAFC000, v34, v35, "Could not extract a unique entity from USO parse: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_2_33();
        OUTLINED_FUNCTION_13_15();
      }

      else
      {
        OUTLINED_FUNCTION_13_15();

        OUTLINED_FUNCTION_0_22();
        sub_1DCB283D8(a1, v42);
      }
    }

    while (1)
    {
      v30 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v30 >= v53)
      {
        OUTLINED_FUNCTION_0_22();
        sub_1DCB283D8(v54, v46);

        return 0;
      }

      v29 = *&v8[8 * v30];
      ++v15;
      if (v29)
      {
        v15 = v30;
        goto LABEL_13;
      }
    }

    __break(1u);
    __break(1u);
LABEL_25:
    swift_once();
  }

  sub_1DCB283D8(v8, type metadata accessor for Parse);
  v43 = sub_1DD0DD8EC();
  v44 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1DCAFC000, v43, v44, "Not a USO Parse...will not process", v45, 2u);
    OUTLINED_FUNCTION_80();
  }

  return 0;
}

uint64_t sub_1DCC6BC7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for USOParse(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v56 - v11;
  v13 = sub_1DD0DB5BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DD0DB46C();
  sub_1DCC621EC(v18);

  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1DCC6D410(v12);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    sub_1DCB24628(a1, v8, type metadata accessor for USOParse);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v57 = v23;
      *v22 = 136315138;
      sub_1DD0DB4BC();
      sub_1DCC6D478(&qword_1EDE4D758, MEMORY[0x1E69D09E0], MEMORY[0x1E69D09D8]);
      v24 = sub_1DD0DD6EC();
      v26 = v25;
      sub_1DCB283D8(v8, type metadata accessor for USOParse);
      v27 = sub_1DCB10E9C(v24, v26, &v57);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1DCAFC000, v20, v21, "Unable to get unique UDA from userParse. Will not parse: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1E12A8390](v23, -1, -1);
      MEMORY[0x1E12A8390](v22, -1, -1);
    }

    else
    {

      sub_1DCB283D8(v8, type metadata accessor for USOParse);
    }

    return 0;
  }

  (*(v14 + 32))(v17, v12, v13);
  if (!sub_1DCC6CED0(v17))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v32 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v32, qword_1EDE57E00);
    v33 = sub_1DD0DD8EC();
    v34 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1DCAFC000, v33, v34, "Unable to find desired task attribute in UsoTask arguements", v35, 2u);
      MEMORY[0x1E12A8390](v35, -1, -1);
    }

    goto LABEL_40;
  }

  v28 = sub_1DCC69D70();
  if (v29)
  {
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v31 = *(v3 + 40);
    if (!v31)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v54 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v54, qword_1EDE57E00);
      v50 = sub_1DD0DD8EC();
      v51 = sub_1DD0DE6DC();
      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_38;
      }

      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "Unable to determine the targetEntityName. Skipping matching.";
      goto LABEL_37;
    }

    v30 = *(v3 + 32);
  }

  v36 = sub_1DD0DC79C();
  if (!v36)
  {

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v49 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v49, qword_1EDE57E00);
    v50 = sub_1DD0DD8EC();
    v51 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_38;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "Unable convert UsoTask attribute to a USOEntity. Skipping matching.";
LABEL_37:
    _os_log_impl(&dword_1DCAFC000, v50, v51, v53, v52, 2u);
    MEMORY[0x1E12A8390](v52, -1, -1);
LABEL_38:

    goto LABEL_39;
  }

  v37 = v36;
  if (sub_1DD0DC6EC() == v30 && v38 == v31)
  {
  }

  else
  {
    v40 = sub_1DD0DF0AC();

    if ((v40 & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v41 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v41, qword_1EDE57E00);

      v42 = sub_1DD0DD8EC();
      v43 = sub_1DD0DE6DC();

      if (!os_log_type_enabled(v42, v43))
      {

        goto LABEL_40;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v42;
      v57 = v45;
      v46 = v45;
      *v44 = 136315138;
      v47 = sub_1DCB10E9C(v30, v31, &v57);

      *(v44 + 4) = v47;
      v48 = v56;
      _os_log_impl(&dword_1DCAFC000, v56, v43, "Entity does not match targetEntityName '%s'. Continuing", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1E12A8390](v46, -1, -1);
      MEMORY[0x1E12A8390](v44, -1, -1);

LABEL_39:

LABEL_40:
      (*(v14 + 8))(v17, v13);
      return 0;
    }
  }

  (*(v14 + 8))(v17, v13);

  return v37;
}

uint64_t sub_1DCC6C444(uint64_t a1)
{
  v3 = sub_1DCC69D70();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
  }

  else
  {
    if (!v1[5] || (v6 = v1[11]) == 0)
    {
      sub_1DCC622AC(a1);
      if (!v16)
      {
        return 0;
      }

      v17 = v15;

      if (sub_1DCB08B14(v17))
      {
        sub_1DCB35460(0, (v17 & 0xC000000000000001) == 0, v17);
        if ((v17 & 0xC000000000000001) == 0)
        {
          sub_1DD0DCF8C();
        }

        v18 = MEMORY[0x1E12A72C0](0, v17);
        goto LABEL_10;
      }

LABEL_15:

      return 0;
    }

    v5 = v1[10];
  }

  v7 = sub_1DCB90DA0(v5, v6, a1);
  if (!v7)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);

    v10 = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v14 = sub_1DCB10E9C(v5, v6, &v20);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_1DCAFC000, v10, v11, "Cannot find attribute '%s'. No match.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A8390](v13, -1, -1);
      MEMORY[0x1E12A8390](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v8 = v7;

  if (!sub_1DCB08B14(v8))
  {
    goto LABEL_15;
  }

  sub_1DCB35460(0, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) == 0)
  {
    sub_1DD0DCF8C();
  }

  v18 = MEMORY[0x1E12A72C0](0, v8);
LABEL_10:

  return v18;
}

uint64_t sub_1DCC6C6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a4;
  v73 = a5;
  v70 = a2;
  v71 = a3;
  v6 = sub_1DD0DBB1C();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v67 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v63 - v12;
  v68 = *(a1 + 16);
  if (!v68)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v46 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v46, qword_1EDE57E00);
    v47 = sub_1DD0DD8EC();
    v48 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DCAFC000, v47, v48, "Identifiers are empty. Cannot match anything. Returning nil", v49, 2u);
      MEMORY[0x1E12A8390](v49, -1, -1);
    }

    return 0;
  }

  v14 = 0;
  v16 = *(v11 + 16);
  v15 = v11 + 16;
  v17 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v18 = *(v15 + 56);
  v74 = v16;
  v75 = 0x80000001DD115D60;
  v65 = v17;
  v66 = (v15 + 16);
  v19 = (v15 - 8);
  v63 = a1;
  v20 = a1 + v17;
  v69 = MEMORY[0x1E69E7CC0];
  for (i = v20; ; v20 = i)
  {
    v21 = ~v14;
    v22 = v18;
    v23 = v20 + v18 * v14;
    v24 = v68 - v14;
    if (v68 == v14)
    {
      break;
    }

    while (1)
    {
      v25 = v6;
      v26 = v15;
      v74(v13, v23, v6);
      if (sub_1DD0DBADC() == 0xD000000000000013 && v75 == v27)
      {
      }

      else
      {
        v29 = sub_1DD0DF0AC();

        if ((v29 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v30 = sub_1DD0DBB0C();
      if (v31)
      {
        break;
      }

LABEL_24:
      v6 = v25;
      (*v19)(v13, v25);
      --v21;
      v23 += v22;
      --v24;
      v15 = v26;
      if (!v24)
      {
        goto LABEL_32;
      }
    }

    if (v30 == v72 && v31 == v73)
    {
    }

    else
    {
      v33 = sub_1DD0DF0AC();

      if ((v33 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (sub_1DD0DBAFC() != v70 || v34 != v71)
    {
      v36 = sub_1DD0DF0AC();

      if (v36)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

LABEL_27:
    v37 = *v66;
    (*v66)(v67, v13, v25);
    v38 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DCE06BA8(0, *(v38 + 16) + 1, 1);
      v38 = v76;
    }

    v41 = *(v38 + 16);
    v40 = *(v38 + 24);
    v42 = v38;
    if (v41 >= v40 >> 1)
    {
      sub_1DCE06BA8(v40 > 1, v41 + 1, 1);
      v42 = v76;
    }

    v14 = -v21;
    *(v42 + 16) = v41 + 1;
    v69 = v42;
    v18 = v22;
    v43 = v42 + v65 + v41 * v22;
    v6 = v25;
    v37(v43, v67, v25);
    v15 = v26;
  }

LABEL_32:
  v44 = *(v69 + 16);
  if (!v44)
  {

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v50 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v50, qword_1EDE57E00);
    v51 = v73;

    v52 = v71;

    v53 = v63;

    v54 = sub_1DD0DD8EC();
    v55 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v6;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v76 = v58;
      *v57 = 136315906;
      *(v57 + 4) = sub_1DCB10E9C(0xD000000000000013, v75, &v76);
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_1DCB10E9C(v72, v51, &v76);
      *(v57 + 22) = 2080;
      *(v57 + 24) = sub_1DCB10E9C(v70, v52, &v76);
      *(v57 + 32) = 2080;
      v59 = MEMORY[0x1E12A6960](v53, v56);
      v61 = sub_1DCB10E9C(v59, v60, &v76);

      *(v57 + 34) = v61;
      _os_log_impl(&dword_1DCAFC000, v54, v55, "Matches are empty. Cannot match appBundleId: %s namespace: %s value: %s in identifiers: %s", v57, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v58, -1, -1);
      MEMORY[0x1E12A8390](v57, -1, -1);
    }

    return 0;
  }

  if (v44 != 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v62 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v62, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  return 1;
}

uint64_t sub_1DCC6CE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC6CE24, 0, 0);
}

uint64_t sub_1DCC6CE24()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_1DD0DDE9C();
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = v4;
  *(v3 + 24) = 0;
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DCC6CED0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DD0DB5BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DD0DB7DC();
  if (!sub_1DCB08B14(v18))
  {

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    (*(v5 + 16))(v8, a1, v4);
    v10 = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30[0] = v13;
      *v12 = 136315138;
      sub_1DCC6D478(&qword_1ECCA29C0, MEMORY[0x1E69D0A68], MEMORY[0x1E69D0A58]);
      v14 = sub_1DD0DD6EC();
      v16 = v15;
      (*(v5 + 8))(v8, v4);
      v17 = sub_1DCB10E9C(v14, v16, v30);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1DCAFC000, v10, v11, "No task in userDialogAct. Will not parse: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A8390](v13, -1, -1);
      MEMORY[0x1E12A8390](v12, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return 0;
  }

  sub_1DCB35460(0, (v18 & 0xC000000000000001) == 0, v18);
  if ((v18 & 0xC000000000000001) == 0)
  {
    sub_1DD0DCF8C();
  }

  MEMORY[0x1E12A72C0](0, v18);

  v19 = sub_1DCC69D70();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    goto LABEL_16;
  }

  if (v2[5])
  {
    v22 = v2[7];
    if (v22)
    {
      v21 = v2[6];

LABEL_16:
      v23 = sub_1DD0DC70C();
      v24 = sub_1DCB90DA0(v21, v22, v23);

      if (!v24)
      {
LABEL_22:

        return 0;
      }

LABEL_17:
      if (sub_1DCB08B14(v24))
      {
        sub_1DCB35460(0, (v24 & 0xC000000000000001) == 0, v24);
        if ((v24 & 0xC000000000000001) == 0)
        {
          sub_1DD0DCF8C();
        }

        v25 = MEMORY[0x1E12A72C0](0, v24);

        goto LABEL_20;
      }

      goto LABEL_22;
    }
  }

  v27 = sub_1DD0DC70C();
  sub_1DCC622AC(v27);
  v25 = v28;
  v24 = v29;

  if (v25)
  {

    goto LABEL_17;
  }

LABEL_20:

  return v25;
}

uint64_t sub_1DCC6D300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for USOParse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC6D364(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DCB193FC;

  return sub_1DCC6CE00(a1, v5, v4);
}

uint64_t sub_1DCC6D410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCC6D478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DCC6D4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[4] = *MEMORY[0x1E69E9840];
  if (qword_1ECCA1250 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DAADC();
  v5 = v4;
  v6 = objc_opt_self();
  v7 = sub_1DD0DAEFC();
  v15[0] = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:v15];

  if (!v8)
  {
    v11 = v15[0];
    v10 = sub_1DD0DAE0C();

    swift_willThrow();
LABEL_8:
    sub_1DCB21A14(v3, v5);
    return v10;
  }

  v9 = v15[0];
  sub_1DD0DEA6C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  if (!swift_dynamicCast())
  {
    sub_1DCC6D7A0();
    v10 = swift_allocError();
    *v12 = 0xD00000000000002ALL;
    v12[1] = 0x80000001DD115E40;
    goto LABEL_8;
  }

  sub_1DCB21A14(v3, v5);
  return v14;
}

uint64_t sub_1DCC6D720()
{
  sub_1DD0DAAFC();
  swift_allocObject();
  result = sub_1DD0DAAEC();
  qword_1ECCA29C8 = result;
  return result;
}

unint64_t sub_1DCC6D7A0()
{
  result = qword_1ECCA29D0;
  if (!qword_1ECCA29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29D0);
  }

  return result;
}

void sub_1DCC6D7F4(char a1)
{
  switch(a1)
  {
    case 2:
    case 9:
    case 10:
      OUTLINED_FUNCTION_3_28();
      break;
    case 3:
    case 7:
      OUTLINED_FUNCTION_5_4();
      break;
    default:
      return;
  }
}

unint64_t sub_1DCC6D960(char a1)
{
  result = 0x546D7269666E6F43;
  switch(a1)
  {
    case 1:
      result = 0x4E746361746E6F43;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x64726143654D6F4ELL;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = OUTLINED_FUNCTION_5_4();
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DCC6DA40(unsigned __int8 a1)
{
  switch(a1 >> 5)
  {
    case 1:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_74();
      v17[0] = v12;
      v17[1] = v11;
      sub_1DCC6D7F4(a1 & 0x1F);
      goto LABEL_22;
    case 2:
      strcpy(v17, "CommonTCC#");
      BYTE3(v17[1]) = 0;
      HIDWORD(v17[1]) = -369098752;
      v6 = a1 & 0x1F;
      if ((a1 & 0x1F) != 0)
      {
        if (v6 == 1)
        {
          v7 = 0xD000000000000014;
        }

        else
        {
          v7 = 0xD000000000000011;
        }

        if (v6 == 1)
        {
          v8 = "ConfirmationCancelled";
        }

        else
        {
          v8 = "eciseLocationBySiriOneTime";
        }
      }

      else
      {
        v7 = 0xD000000000000015;
        v8 = "AccessLocationUsingSiri";
      }

      MEMORY[0x1E12A6780](v7, v8 | 0x8000000000000000);
      goto LABEL_23;
    case 3:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_74();
      v17[0] = v10 | 2;
      v17[1] = v9;
      v3 = sub_1DCC6D960(a1 & 0x1F);
      goto LABEL_22;
    case 4:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_74();
      v17[0] = v5 | 2;
      v17[1] = v4;
      if (a1)
      {
        v3 = 0x4974736575716552;
      }

      else
      {
        v3 = 0x496D7269666E6F43;
      }

      goto LABEL_22;
    case 5:
      switch(a1)
      {
        case 0xA1u:
          v16 = 5;
          goto LABEL_28;
        case 0xA2u:
        case 0xA3u:
          v16 = 11;
LABEL_28:
          result = v16 | 0xD000000000000010;
          break;
        case 0xA4u:
          OUTLINED_FUNCTION_6_21();
          result = v15 + 20;
          break;
        default:
          OUTLINED_FUNCTION_6_21();
          result = v13 | 6;
          break;
      }

      return result;
    default:
      strcpy(v17, "CommonErrors#");
      HIWORD(v17[1]) = -4864;
      if (a1)
      {
        OUTLINED_FUNCTION_5_23();
        v3 = OUTLINED_FUNCTION_4_20(v2);
      }

      else
      {
        v3 = 0xD000000000000010;
      }

LABEL_22:
      MEMORY[0x1E12A6780](v3);
LABEL_23:

      return v17[0];
  }
}

void CATPerson.init(person:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DCB35468(a1, &selRef_firstName);
  v20 = v5;
  v21 = v4;
  v19 = sub_1DCB35468(a1, &selRef_middleName);
  v7 = v6;
  v8 = sub_1DCB35468(a1, &selRef_lastName);
  v10 = v9;
  v11 = sub_1DCB35468(a1, &selRef_nickName);
  v13 = v12;
  v14 = [a1 fullName];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1DD0DDFBC();
    v18 = v17;
  }

  else
  {

    v16 = 0;
    v18 = 0;
  }

  *a2 = v8;
  a2[1] = v10;
  a2[2] = v19;
  a2[3] = v7;
  a2[4] = v21;
  a2[5] = v20;
  a2[6] = v11;
  a2[7] = v13;
  a2[8] = v16;
  a2[9] = v18;
}

void sub_1DCC6DDEC(void *a1@<X0>, void *a2@<X8>)
{
  v6 = [a1 phoneticGivenName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_3_29();

  v7 = [a1 givenName];
  sub_1DD0DDFBC();

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_2_34();

  a2[4] = v7;
  a2[5] = v2;
  v8 = [a1 phoneticMiddleName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_3_29();

  v9 = [a1 middleName];
  sub_1DD0DDFBC();

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_2_34();

  a2[2] = v9;
  a2[3] = v2;
  v10 = [a1 phoneticFamilyName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_3_29();

  v11 = [a1 familyName];
  sub_1DD0DDFBC();

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_2_34();

  *a2 = v11;
  a2[1] = v2;
  v12 = [a1 nickname];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_3_29();

  a2[6] = v2;
  a2[7] = v3;
  a2[8] = 0;
  a2[9] = 0;
}

uint64_t sub_1DCC6DF90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    a1 = a3;
  }

  return a1;
}

uint64_t sub_1DCC6DFD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E6B63696ELL && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD0DF0AC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD0DF0AC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DCC6E1A4(char a1)
{
  result = 0x614E796C696D6166;
  switch(a1)
  {
    case 1:
      result = 0x614E656C6464696DLL;
      break;
    case 2:
      result = 0x6D614E6E65766967;
      break;
    case 3:
      result = 0x656D614E6B63696ELL;
      break;
    case 4:
      result = 0x656D614E6C6C7566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCC6E24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCC6DFD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCC6E294@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC6E190();
  *a1 = result;
  return result;
}

uint64_t sub_1DCC6E2BC(uint64_t a1)
{
  v2 = sub_1DCC6E564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCC6E2F8(uint64_t a1)
{
  v2 = sub_1DCC6E564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CATPerson.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29D8, &qword_1DD0E7CB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - v6;
  v8 = v1[2];
  v25 = v1[3];
  v26 = v8;
  v9 = v1[4];
  v23 = v1[5];
  v24 = v9;
  v10 = v1[6];
  v21 = v1[7];
  v22 = v10;
  v11 = v1[9];
  v19 = v1[8];
  v20 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCC6E564();
  sub_1DD0DF24C();
  v31[1] = 0;
  v12 = v27;
  sub_1DD0DEF8C();
  if (!v12)
  {
    v13 = v23;
    v14 = v24;
    v16 = v21;
    v15 = v22;
    v31[0] = 1;
    OUTLINED_FUNCTION_1_27(v26, v25, v31);
    v30 = 2;
    OUTLINED_FUNCTION_1_27(v14, v13, &v30);
    v29 = 3;
    OUTLINED_FUNCTION_1_27(v15, v16, &v29);
    v28 = 4;
    OUTLINED_FUNCTION_1_27(v19, v20, &v28);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DCC6E564()
{
  result = qword_1ECCA29E0;
  if (!qword_1ECCA29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CATPerson(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CATPerson(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CATPerson.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CATPerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCC6E7EC()
{
  result = qword_1ECCA29E8;
  if (!qword_1ECCA29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29E8);
  }

  return result;
}

unint64_t sub_1DCC6E844()
{
  result = qword_1ECCA29F0;
  if (!qword_1ECCA29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29F0);
  }

  return result;
}

unint64_t sub_1DCC6E89C()
{
  result = qword_1ECCA29F8;
  if (!qword_1ECCA29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29F8);
  }

  return result;
}

void sub_1DCC6E8F0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E699A0B8]) init];
  v3 = [v0 catId];
  v4 = v3;
  if (!v3)
  {
    sub_1DD0DDFBC();
    v4 = sub_1DD0DDF8C();
  }

  OUTLINED_FUNCTION_3_30(v3, sel_setCatId_);

  v5 = [v1 meta];
  sub_1DD0DDE6C();

  v6 = sub_1DD0DDE4C();

  OUTLINED_FUNCTION_3_30(v7, sel_setMeta_);

  v8 = [v1 print];
  v9 = sub_1DD0DE2EC();

  v10 = *(v9 + 16);

  if (v10)
  {
    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v11 = 4;
    v12 = 40;
    v69 = v1;
    v70 = v2;
    while (1)
    {
      v13 = [objc_allocWithZone(MEMORY[0x1E699A0B0]) init];
      v14 = [v1 print];
      v15 = sub_1DD0DE2EC();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        break;
      }

      v18 = *(v15 + v12 - 8);
      v17 = *(v15 + v12);

      v19 = sub_1DD0DDF8C();

      OUTLINED_FUNCTION_3_30(v20, sel_setFullPrint_);

      v21 = OUTLINED_FUNCTION_4_21([v1 speak]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v22 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v22, sel_setFullSpeak_);

      v23 = OUTLINED_FUNCTION_4_21([v1 captionPrint]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v24 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v24, sel_setSupportingPrint_);

      v25 = OUTLINED_FUNCTION_4_21([v1 captionSpeak]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v26 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v26, sel_setSupportingSpeak_);

      v27 = OUTLINED_FUNCTION_4_21([v1 unfilteredPrint]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v28 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v28, sel_setUnfilteredFullPrint_);

      v29 = OUTLINED_FUNCTION_4_21([v1 unfilteredSpeak]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v30 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v30, sel_setUnfilteredFullSpeak_);

      v31 = OUTLINED_FUNCTION_4_21([v1 unfilteredCaptionPrint]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v32 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v32, sel_setUnfilteredSupportingPrint_);

      v33 = OUTLINED_FUNCTION_4_21([v1 unfilteredCaptionSpeak]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v34 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v34, sel_setUnfilteredSupportingSpeak_);

      v35 = OUTLINED_FUNCTION_4_21([v1 redactedPrint]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v36 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v36, sel_setRedactedFullPrint_);

      v37 = OUTLINED_FUNCTION_4_21([v1 redactedSpeak]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v38 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v38, sel_setRedactedFullSpeak_);

      v39 = OUTLINED_FUNCTION_4_21([v1 redactedCaptionPrint]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v40 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v40, sel_setRedactedSupportingPrint_);

      v41 = OUTLINED_FUNCTION_4_21([v1 redactedCaptionSpeak]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v42 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v42, sel_setRedactedSupportingSpeak_);

      v43 = OUTLINED_FUNCTION_4_21([v1 redactedPrint]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v44 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v44, sel_setUnfilteredRedactedFullPrint_);

      v45 = OUTLINED_FUNCTION_4_21([v1 redactedSpeak]);
      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v46 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v46, sel_setUnfilteredRedactedFullSpeak_);

      v47 = [v1 spokenOnlyDefined];
      v48 = sub_1DD0DE2EC();

      OUTLINED_FUNCTION_2_35();
      if (v47)
      {
        OUTLINED_FUNCTION_8_27();
      }

      else
      {
        v49 = *(v48 + 8 * v11);
      }

      OUTLINED_FUNCTION_7_23();
      v50 = [v18 BOOLValue];

      [v13 setSpokenOnlyDefined_];
      if ([v13 spokenOnlyDefined])
      {
        v47 = [v1 spokenOnly];
        v51 = sub_1DD0DE2EC();

        OUTLINED_FUNCTION_2_35();
        if (v47)
        {
          OUTLINED_FUNCTION_8_27();
        }

        else
        {
          v52 = *(v51 + 8 * v11);
        }

        OUTLINED_FUNCTION_7_23();
        v53 = [v18 BOOLValue];
      }

      else
      {
        v53 = 0;
      }

      [v13 setSpokenOnly_];
      v54 = OUTLINED_FUNCTION_4_21([v1 printOnly]);

      OUTLINED_FUNCTION_2_35();
      if (v47)
      {
        OUTLINED_FUNCTION_8_27();
      }

      else
      {
        v55 = *(v54 + 8 * v11);
      }

      OUTLINED_FUNCTION_7_23();
      v56 = sub_1DD0DE8CC();
      v57 = sub_1DD0DE8EC();

      [v13 setPrintOnly_];
      v58 = OUTLINED_FUNCTION_4_21([v1 isApprovedForGrading]);

      OUTLINED_FUNCTION_2_35();
      if (v56)
      {
        OUTLINED_FUNCTION_8_27();
      }

      else
      {
        v59 = *(v58 + 8 * v11);
      }

      OUTLINED_FUNCTION_7_23();
      v60 = [v18 BOOLValue];

      [v13 setIsApprovedForGrading_];
      v61 = [v1 dialogId];
      sub_1DD0DE2EC();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_54;
      }

      v62 = v10;

      v63 = sub_1DD0DDF8C();

      OUTLINED_FUNCTION_3_30(v64, sel_setId_);

      v65 = v13;
      v66 = [v70 dialog];
      sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
      v67 = sub_1DD0DE2EC();

      MEMORY[0x1E12A6920]();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
      v68 = sub_1DD0DE2DC();

      [v70 setDialog_];

      ++v11;
      v12 += 16;
      v10 = v62 - 1;
      v1 = v69;
      if (v62 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
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
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }
}