uint64_t sub_21E53EAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(*a5 + 16);

  if (!v10 || (v11 = OUTLINED_FUNCTION_20_0(), sub_21E52F880(v11, v12, v13, v14), (v15 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8958, &unk_21E57C580);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_21E57B62C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a5;
    sub_21E545CBC(v17, v16, a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    *a5 = v20;
  }

  return OUTLINED_FUNCTION_20_0();
}

uint64_t sub_21E53EBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 16);
  if (!*(v9 + 16))
  {
    return 0;
  }

  v11 = sub_21E52F880(a3, a4, a5, a6);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (!*(*(*(v9 + 56) + 16 * v11) + 16))
  {

    return a1;
  }

  sub_21E53ED94();
  v14 = v13;
  if (!v15)
  {
LABEL_12:

    return v14;
  }

  v16 = sub_21E5351EC();

  if (!v16)
  {
    return 0;
  }

  v18 = 0;
  v20 = *(v16 + 16);
  for (i = v16 + 40; ; i += 16)
  {
    if (v20 == v18)
    {

      return 0;
    }

    if (v18 >= *(v16 + 16))
    {
      break;
    }

    v14 = *(i - 8);
    sub_21E534DE8();

    if (!sub_21E57B8BC())
    {
      goto LABEL_12;
    }

    ++v18;
  }

  __break(1u);
  return result;
}

void sub_21E53ED94()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v4 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  if (sub_21E57B70C() & 1) != 0 || (sub_21E57B70C())
  {
  }

  else
  {

    v11 = sub_21E56E134(2, v3, v1);
    MEMORY[0x223D5CB90](v11);

    OUTLINED_FUNCTION_9_1();
    if (sub_21E57B6BC() != 2)
    {

      sub_21E57B5BC();

      v12 = sub_21E57B5DC();
      v13 = sub_21E57B85C();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v18 = OUTLINED_FUNCTION_43();
        *v14 = 136315138;
        v15 = OUTLINED_FUNCTION_15_0();
        *(v14 + 4) = sub_21E5553D8(v15, v16, v17);
        _os_log_impl(&dword_21E527000, v12, v13, "getLanguageKeyForApprovedPhrase: Failed to extract language code from {%s}, return nil", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();
      }

      (*(v6 + 8))(v10, v4);
    }
  }

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_21E53EF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(v4 + 16) + 16) && (sub_21E52F880(a1, a2, a3, a4), (v5 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

void sub_21E53EFE0()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v4 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AA8, &qword_21E57CBF0);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = sub_21E57AC6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14();
  v19 = v18 - v17;
  v20 = *(v3 + 16);
  if (v20)
  {
    v44 = v16;
    sub_21E53FF1C(v1, v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_21E53FF8C(v13, &qword_27CEC8AA8, &qword_21E57CBF0);
    }

    else
    {
      v43 = v10;
      v21 = v44;
      (*(v44 + 32))(v19, v13, v14);
      sub_21E53F358();
      if (v23)
      {
        v24 = v22;
        v25 = v23;
        v41 = v6;
        v42 = v4;
        v26 = v3 + 40;
        v27 = v20 + 1;
        do
        {
          if (!--v27)
          {
            break;
          }

          v28 = v26 + 16;
          v31 = v26 - 8;
          v29 = *(v26 - 8);
          v30 = *(v31 + 8);
          v47[0] = v24;
          v47[1] = v25;
          v45 = v29;
          v46 = v30;
          sub_21E534DE8();
          v32 = sub_21E57B8DC();
          v26 = v28;
        }

        while ((v32 & 1) == 0);
        v33 = v43;
        sub_21E57B5BC();

        v34 = sub_21E57B5DC();
        v35 = sub_21E57B85C();

        if (os_log_type_enabled(v34, v35))
        {
          v40 = v27 != 0;
          v36 = swift_slowAlloc();
          v37 = OUTLINED_FUNCTION_43();
          v47[0] = v37;
          *v36 = 136315394;
          v38 = sub_21E5553D8(v24, v25, v47);

          *(v36 + 4) = v38;
          *(v36 + 12) = 1024;
          *(v36 + 14) = v40;
          _os_log_impl(&dword_21E527000, v34, v35, "isParameterApproved: Parameter {%s} approved: %{BOOL}d", v36, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_39();
        }

        else
        {
        }

        (*(v41 + 8))(v33, v42);
        (*(v44 + 8))(v19, v14);
      }

      else
      {
        (*(v21 + 8))(v19, v14);
      }
    }
  }

  OUTLINED_FUNCTION_100();
}

void sub_21E53F358()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v65[1] = *MEMORY[0x277D85DE8];
  v3 = sub_21E57AC6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - v9;
  sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v63 = v12;
  v64 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v61 = (&v60 - v17);
  v18 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AB0, &unk_21E57CBF8);
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21E57C390;
  v62 = v4;
  v21 = *(v4 + 16);
  v21(v20 + v19, v2, v3);
  v22 = sub_21E57B77C();

  v65[0] = 0;
  v23 = [v18 propertiesForIdentifiers:v22 error:v65];

  v24 = v65[0];
  if (v23)
  {
    sub_21E53FFEC();
    sub_21E540030(&qword_27CEC8990);
    v25 = sub_21E57B60C();
    v26 = v24;

    v27 = sub_21E52D28C(v2, v25);

    if (v27 && (v28 = [v27 value], v27, v28))
    {
      v29 = [v28 description];
      sub_21E57B67C();
    }

    else
    {
      v30 = v61;
      sub_21E57B5BC();
      v21(v10, v2, v3);
      v31 = v30;
      v32 = sub_21E57B5DC();
      v33 = sub_21E57B86C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = OUTLINED_FUNCTION_43();
        v65[0] = v35;
        *v34 = 136315138;
        OUTLINED_FUNCTION_4_1(&unk_27CEC8AB8);
        v36 = sub_21E57BB2C();
        v38 = v37;
        OUTLINED_FUNCTION_22_0();
        v39 = OUTLINED_FUNCTION_15_0();
        v40(v39);
        v41 = sub_21E5553D8(v36, v38, v65);

        *(v34 + 4) = v41;
        _os_log_impl(&dword_21E527000, v32, v33, "convertParameterIdToValue: Cannot convert parameter UUID {%s} to parameter value", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();
      }

      else
      {

        OUTLINED_FUNCTION_22_0();
        v57 = OUTLINED_FUNCTION_15_0();
        v58(v57);
      }

      (*(v63 + 8))(v31, v64);
    }
  }

  else
  {
    v42 = v65[0];
    v43 = sub_21E57ABAC();

    swift_willThrow();
    sub_21E57B5BC();
    v21(v7, v2, v3);
    v44 = v43;
    v45 = sub_21E57B5DC();
    v46 = sub_21E57B86C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v48 = OUTLINED_FUNCTION_43();
      v65[0] = v48;
      *v47 = 136315394;
      OUTLINED_FUNCTION_4_1(&unk_27CEC8AB8);
      v49 = sub_21E57BB2C();
      v51 = v50;
      OUTLINED_FUNCTION_22_0();
      v52(v7, v3);
      v53 = sub_21E5553D8(v49, v51, v65);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2112;
      v54 = v43;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 14) = v55;
      v56 = v61;
      *v61 = v55;
      _os_log_impl(&dword_21E527000, v45, v46, "convertParameterIdToValue: error processing {%s}: %@", v47, 0x16u);
      sub_21E53FF8C(v56, &qword_27CEC88E8, &qword_21E57C660);
      OUTLINED_FUNCTION_39();
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    else
    {

      OUTLINED_FUNCTION_22_0();
      v59(v7, v3);
    }

    (*(v63 + 8))(v15, v64);
  }

  OUTLINED_FUNCTION_100();
}

BOOL sub_21E53F970(uint64_t a1, unint64_t a2)
{
  v14 = a1;
  v15 = a2;
  v13 = &v14;
  if (sub_21E56E084(sub_21E540070, v12, &unk_282F921D0))
  {
    return 1;
  }

  else
  {

    v5 = sub_21E56E134(2, a1, a2);
    v6 = MEMORY[0x223D5CB90](v5);
    v8 = v7;

    v14 = v6;
    v15 = v8;
    MEMORY[0x28223BE20](v9);
    v11[2] = &v14;
    v4 = sub_21E56E084(sub_21E540C2C, v11, &unk_282F921D0);
  }

  return v4;
}

uint64_t sub_21E53FA7C()
{

  return v0;
}

uint64_t sub_21E53FAA4()
{
  sub_21E53FA7C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_21E53FB30()
{
  result = qword_2812261B0;
  if (!qword_2812261B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812261B0);
  }

  return result;
}

unint64_t sub_21E53FB88()
{
  result = qword_27CEC8AA0;
  if (!qword_27CEC8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8AA0);
  }

  return result;
}

uint64_t sub_21E53FBDC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(v3 + 48) + 16 * v12);
      v14 = *(*(v3 + 56) + 8 * v12);

      v15 = sub_21E52F7C4(v13);
      v17 = v16;

      if ((v17 & 1) == 0 || (v18 = *(*(a2 + 56) + 8 * v15), v19 = *(v18 + 16), v19 != *(v14 + 16)))
      {
LABEL_29:

        return 0;
      }

      if (v19 && v18 != v14)
      {
        break;
      }

LABEL_26:

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v21 = (v18 + 40);
    v22 = (v14 + 40);
    while (v19)
    {
      result = *(v21 - 1);
      if (result != *(v22 - 1) || *v21 != *v22)
      {
        result = sub_21E57BB3C();
        if ((result & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v21 += 2;
      v22 += 2;
      if (!--v19)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
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
        return 1;
      }

      v11 = *(v3 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E53FD84(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 = result ^ v16)
  {
    v16 = v9;
LABEL_9:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (i << 6)));
    memcpy(__dst, a1, sizeof(__dst));

    sub_21E57B6AC();

    MEMORY[0x223D5D090](*(v12 + 16));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v12 + 40;
      do
      {

        sub_21E57B6AC();

        v14 += 16;
        --v13;
      }

      while (v13);
    }

    v6 &= v6 - 1;

    result = sub_21E57BBCC();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x223D5D090](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      v16 = v9;
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E53FF1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8AA8, &qword_21E57CBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E53FF8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_21E53FFEC()
{
  result = qword_27CEC8AC0;
  if (!qword_27CEC8AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEC8AC0);
  }

  return result;
}

unint64_t sub_21E540030(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    sub_21E57AC6C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21E540090()
{
  result = qword_2812261E8;
  if (!qword_2812261E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812261E8);
  }

  return result;
}

uint64_t sub_21E5400E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21E5400F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21E540134(uint64_t result, int a2, int a3)
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

unint64_t sub_21E54017C()
{
  result = qword_281226200;
  if (!qword_281226200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226200);
  }

  return result;
}

unint64_t sub_21E5401D0()
{
  result = qword_281226368;
  if (!qword_281226368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226368);
  }

  return result;
}

unint64_t sub_21E540224(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8AE0, &qword_21E57CC88);
    v2();
    result = OUTLINED_FUNCTION_24_0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21E540284()
{
  result = qword_281226388;
  if (!qword_281226388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226388);
  }

  return result;
}

unint64_t sub_21E5402D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8AD8, &qword_21E57CC80);
    v2();
    result = OUTLINED_FUNCTION_24_0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21E540338()
{
  result = qword_27CEC8AF8;
  if (!qword_27CEC8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8AF8);
  }

  return result;
}

unint64_t sub_21E54038C()
{
  result = qword_27CEC8B08;
  if (!qword_27CEC8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B08);
  }

  return result;
}

uint64_t sub_21E5403F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21E540430(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21E540498(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_21E5404D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E540534()
{
  result = qword_27CEC8B10;
  if (!qword_27CEC8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B10);
  }

  return result;
}

unint64_t sub_21E54058C()
{
  result = qword_2812261F0;
  if (!qword_2812261F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812261F0);
  }

  return result;
}

unint64_t sub_21E5405E4()
{
  result = qword_2812261F8;
  if (!qword_2812261F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812261F8);
  }

  return result;
}

unint64_t sub_21E540638()
{
  result = qword_281226380;
  if (!qword_281226380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226380);
  }

  return result;
}

unint64_t sub_21E54068C()
{
  result = qword_2812263A0;
  if (!qword_2812263A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812263A0);
  }

  return result;
}

unint64_t sub_21E5406E0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8A70, &qword_21E57CEB0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppIntentInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_21E5407CC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ApprovedPhrase.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ApprovedPhrase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21E540A10()
{
  result = qword_27CEC8B38;
  if (!qword_27CEC8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B38);
  }

  return result;
}

unint64_t sub_21E540A68()
{
  result = qword_27CEC8B40;
  if (!qword_27CEC8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B40);
  }

  return result;
}

unint64_t sub_21E540AC0()
{
  result = qword_281226390;
  if (!qword_281226390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226390);
  }

  return result;
}

unint64_t sub_21E540B18()
{
  result = qword_281226398;
  if (!qword_281226398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226398);
  }

  return result;
}

unint64_t sub_21E540B70()
{
  result = qword_281226370;
  if (!qword_281226370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226370);
  }

  return result;
}

unint64_t sub_21E540BC8()
{
  result = qword_281226378;
  if (!qword_281226378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281226378);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return sub_21E57BAFC();
}

unint64_t OUTLINED_FUNCTION_4_1(uint64_t a1)
{

  return sub_21E540030(a1);
}

void *OUTLINED_FUNCTION_7_0()
{

  return sub_21E57BABC();
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21E57BBDC();
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_getWitnessTable();
}

uint64_t (*OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27))()
{

  return sub_21E5369AC((v27 - 128), a25, a27, a24, a26);
}

uint64_t sub_21E540E54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, double *a5@<X8>)
{
  v6 = v5;
  v125 = *v5;
  v126 = a1;
  sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v127 = v11;
  v128 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v118 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v118 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v118 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v118 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v124 = &v118 - v29;
  MEMORY[0x28223BE20](v28);
  v123 = &v118 - v30;
  sub_21E52D180(0x656C746974, a3, &v131);
  if (!v132)
  {
    sub_21E5420D4(&v131);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_4_2();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_21E57B5BC();

    v53 = sub_21E57B5DC();
    v54 = sub_21E57B85C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_57();
      *&v131 = swift_slowAlloc();
      *v55 = 136315394;
      v56 = OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_7_1(v56, v57);
      OUTLINED_FUNCTION_9_2();
      *(v55 + 4) = v21;
      *(v55 + 12) = 2080;
      *(v55 + 14) = OUTLINED_FUNCTION_0_1();
      _os_log_impl(&dword_21E527000, v53, v54, "%s > Missing 'title' attribute; no phrase generated for generic intent from: %s", v55, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_3_3();
    v52 = v15;
    goto LABEL_44;
  }

  v31 = v130;
  v121 = *&v129;
  sub_21E52D180(0x746E656D656C65, a3, &v131);
  if (!v132)
  {

    sub_21E5420D4(&v131);
LABEL_19:
    sub_21E57B5BC();

    v58 = sub_21E57B5DC();
    v59 = sub_21E57B85C();

    if (os_log_type_enabled(v58, v59))
    {
      OUTLINED_FUNCTION_57();
      *&v131 = OUTLINED_FUNCTION_6_2();
      *a4 = 136315394;
      v60 = OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_7_1(v60, v61);
      OUTLINED_FUNCTION_9_2();
      *(a4 + 4) = v21;
      *(a4 + 6) = 2080;
      *(a4 + 14) = OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_2_3(&dword_21E527000, v62, v63, "%s > Missing 'element' attribute; no phrase generated for generic intent from: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_3_3();
    v52 = v18;
    goto LABEL_44;
  }

  v122 = v31;
  OUTLINED_FUNCTION_4_2();
  if ((OUTLINED_FUNCTION_10_2() & 1) == 0)
  {

    goto LABEL_19;
  }

  v33 = *&v129;
  v32 = v130;
  sub_21E52D180(0xD000000000000014, a3, &v131);
  if (!v132)
  {

    sub_21E5420D4(&v131);
LABEL_24:
    sub_21E57B5BC();

    v64 = sub_21E57B5DC();
    v65 = sub_21E57B85C();

    if (os_log_type_enabled(v64, v65))
    {
      OUTLINED_FUNCTION_57();
      *&v131 = OUTLINED_FUNCTION_6_2();
      *a4 = 136315394;
      v66 = OUTLINED_FUNCTION_5_2();
      v68 = sub_21E5553D8(v66, v67, &v131);

      *(a4 + 4) = v68;
      *(a4 + 6) = 2080;
      *(a4 + 14) = OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_2_3(&dword_21E527000, v69, v70, "%s > Missing 'compatibilityVersion' attribute; no phrase generated for generic intent from: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_3_3();
    v52 = v21;
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_4_2();
  if ((OUTLINED_FUNCTION_10_2() & 1) == 0)
  {

    goto LABEL_24;
  }

  v34 = v129;
  sub_21E52D180(0x656C61636F6CLL, a3, &v131);
  if (!v132)
  {

    sub_21E5420D4(&v131);
LABEL_29:
    sub_21E57B5BC();

    v71 = sub_21E57B5DC();
    v72 = sub_21E57B85C();

    if (os_log_type_enabled(v71, v72))
    {
      OUTLINED_FUNCTION_57();
      *&v131 = OUTLINED_FUNCTION_6_2();
      *a4 = 136315394;
      v73 = OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_7_1(v73, v74);
      OUTLINED_FUNCTION_9_2();
      *(a4 + 4) = v21;
      *(a4 + 6) = 2080;
      *(a4 + 14) = OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_2_3(&dword_21E527000, v75, v76, "%s > Missing 'locale' attribute; no phrase generated for generic intent from: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();
    }

    OUTLINED_FUNCTION_3_3();
    v52 = v24;
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_4_2();
  if ((OUTLINED_FUNCTION_10_2() & 1) == 0)
  {

    goto LABEL_29;
  }

  v118 = v33;
  v36 = *&v129;
  v35 = v130;
  v37 = v6[3];
  v119 = v6[2];
  v120 = v32;
  if ((sub_21E541C6C(*&v129, v130, v119, v37) & 1) == 0)
  {

    sub_21E57B5BC();
    v77 = v122;

    v78 = sub_21E57B5DC();
    v79 = sub_21E57B85C();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      LODWORD(v123) = v79;
      v81 = v80;
      v124 = swift_slowAlloc();
      *&v131 = v124;
      *v81 = 136316162;
      v82 = OUTLINED_FUNCTION_5_2();
      v84 = sub_21E5553D8(v82, v83, &v131);
      v125 = v78;
      v85 = v77;
      v86 = v84;

      *(v81 + 4) = v86;
      *(v81 + 12) = 2080;
      v87 = sub_21E5553D8(v36, v35, &v131);

      *(v81 + 14) = v87;
      *(v81 + 22) = 2080;
      *(v81 + 24) = sub_21E5553D8(v119, v37, &v131);
      *(v81 + 32) = 2080;
      v88 = sub_21E5553D8(v121, v85, &v131);

      *(v81 + 34) = v88;
      *(v81 + 42) = 2080;
      *(v81 + 44) = OUTLINED_FUNCTION_0_1();
      v89 = v125;
      _os_log_impl(&dword_21E527000, v125, v123, "%s > Language mismatch between intent locale (%s) and Siri locale (%s); not indexing %s for %s", v81, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

LABEL_43:
      OUTLINED_FUNCTION_3_3();
      v52 = v27;
      goto LABEL_44;
    }

LABEL_42:

    goto LABEL_43;
  }

  if (v34 < 1.0)
  {
LABEL_11:

    v27 = v124;
    sub_21E57B5BC();

    v38 = a4;
    v39 = v120;

    v40 = sub_21E57B5DC();
    v41 = sub_21E57B85C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *&v131 = swift_slowAlloc();
      *v42 = 136317186;
      v43 = OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_7_1(v43, v44);
      OUTLINED_FUNCTION_9_2();
      *(v42 + 4) = v37;
      *(v42 + 12) = 2080;
      *(v42 + 14) = OUTLINED_FUNCTION_0_1();
      *(v42 + 22) = 2048;
      *(v42 + 24) = v34;
      *(v42 + 32) = 2048;
      *(v42 + 34) = 0x3FF0000000000000;
      *(v42 + 42) = 2080;
      v45 = [v38 domain];
      v46 = sub_21E57B67C();
      v48 = v47;

      v49 = sub_21E5553D8(v46, v48, &v131);

      *(v42 + 44) = v49;
      *(v42 + 52) = 2080;
      *(v42 + 54) = sub_21E5553D8(1936744781, 0xE400000000000000, &v131);
      *(v42 + 62) = 2080;
      v50 = sub_21E5553D8(v118, v39, &v131);

      *(v42 + 64) = v50;
      *(v42 + 72) = 2080;
      *(v42 + 74) = sub_21E5553D8(0x455249445F544547, 0xEE00534E4F495443, &v131);
      *(v42 + 82) = 2080;
      *(v42 + 84) = sub_21E5553D8(0x414E5F5452415453, 0xE900000000000056, &v131);
      _os_log_impl(&dword_21E527000, v40, v41, "%s not indexing generic intent for bundleId %s\ncompatibilityVersion = %f. Required: %f and above\nintent.domain = %s. Required: %s\nelement = %s. Required: %s or %s", v42, 0x5Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_39();

      OUTLINED_FUNCTION_3_3();
      v52 = v124;
LABEL_44:
      result = v51(v52, v127);
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v37 = 0;
      v100 = 0;
      a2 = 0;
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v104 = 0;
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v90 = [a4 domain];
  v91 = sub_21E57B67C();
  v93 = v92;

  if (v91 == 1936744781 && v93 == 0xE400000000000000)
  {
  }

  else
  {
    v95 = sub_21E57BB3C();

    if ((v95 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v105 = v118;
  v106 = v120;
  v107 = v118 == 0x455249445F544547 && v120 == 0xEE00534E4F495443;
  if (!v107 && (sub_21E57BB3C() & 1) == 0)
  {
    v108 = v105 == 0x414E5F5452415453 && v106 == 0xE900000000000056;
    if (!v108 && (sub_21E57BB3C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_21E52D180(1701667150, a3, &v131);
  v109 = v123;
  if (!v132)
  {
    sub_21E5420D4(&v131);
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_4_2();
  if ((OUTLINED_FUNCTION_10_2() & 1) == 0)
  {
LABEL_61:
    v103 = 0;
    v104 = 0;
    goto LABEL_62;
  }

  v103 = *&v129;
  v104 = v130;
LABEL_62:
  sub_21E57B5BC();
  v110 = v122;

  v111 = sub_21E57B5DC();
  v112 = sub_21E57B85C();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    LODWORD(v120) = v112;
    v114 = v113;
    v124 = swift_slowAlloc();
    *&v131 = v124;
    *v114 = 136315650;
    v115 = OUTLINED_FUNCTION_5_2();
    v117 = OUTLINED_FUNCTION_7_1(v115, v116);

    *(v114 + 4) = v117;
    *(v114 + 12) = 2080;
    v97 = v121;
    *(v114 + 14) = sub_21E5553D8(v121, v110, &v131);
    *(v114 + 22) = 2080;
    v100 = v126;
    *(v114 + 24) = sub_21E5553D8(v126, a2, &v131);
    _os_log_impl(&dword_21E527000, v111, v120, "%s > Returning %s for %s", v114, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();

    (*(v128 + 8))(v123, v127);
  }

  else
  {

    (*(v128 + 8))(v109, v127);
    v100 = v126;
    v97 = v121;
  }

  v102 = 0x800000021E57F4E0;

  v101 = 0xD000000000000025;
  v98 = v122;
  v99 = v119;
LABEL_45:
  *a5 = v97;
  *(a5 + 1) = v98;
  *(a5 + 2) = v99;
  *(a5 + 3) = v37;
  *(a5 + 4) = v100;
  *(a5 + 5) = a2;
  *(a5 + 6) = v101;
  *(a5 + 7) = v102;
  a5[8] = 0.0;
  a5[9] = 0.0;
  *(a5 + 10) = v103;
  *(a5 + 11) = v104;
  return result;
}

uint64_t sub_21E541C6C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = *v4;
  v10 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3 == 0x4E432D687ALL && a4 == 0xE500000000000000;
  if (v16 || (sub_21E57BB3C() & 1) != 0)
  {

    return sub_21E57B70C();
  }

  else
  {
    v37[1] = v9;
    v41 = v12;
    v42 = v10;

    v18 = sub_21E56E134(2, a1, a2);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = sub_21E56E134(2, a3, a4);
    v39 = v26;
    v40 = v25;
    v38 = v27;
    v29 = v28;
    v37[0] = v22;
    if (sub_21E57B8AC() == 2 && sub_21E57B8AC() == 2)
    {
      v30 = sub_21E542004(v18, v20, v37[0], v24, v40, v39, v38, v29);

      return v30 & 1;
    }

    else
    {

      sub_21E57B5BC();

      v31 = sub_21E57B5DC();
      v32 = sub_21E57B85C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43 = v40;
        *v33 = 136315650;
        v34 = sub_21E57BC2C();
        v36 = sub_21E5553D8(v34, v35, &v43);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_21E5553D8(a1, a2, &v43);
        *(v33 + 22) = 2080;
        *(v33 + 24) = sub_21E5553D8(a3, a4, &v43);
        _os_log_impl(&dword_21E527000, v31, v32, "%s > cannot get proper language code from intentLocale (%s) or currentSiriLocale (%s)", v33, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();
      }

      (*(v41 + 8))(v15, v42);
      return 0;
    }
  }
}

uint64_t sub_21E542004(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_21E57BB1C() & 1;
  }
}

uint64_t sub_21E542078()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21E5420D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8968, qword_21E57D170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_1()
{
  v3 = *(v1 - 176);

  return sub_21E5553D8(v3, v0, (v1 - 136));
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return sub_21E57BC2C();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, unint64_t a2)
{

  return sub_21E5553D8(a1, a2, (v2 - 136));
}

uint64_t OUTLINED_FUNCTION_9_2()
{
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return swift_dynamicCast();
}

uint64_t sub_21E54222C(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000068;
  v3 = 0x636E75614C707061;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x4974694B69726973;
    }

    else
    {
      v5 = 0x6E65746E49707061;
    }

    if (v4 == 1)
    {
      v6 = 0xED0000746E65746ELL;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  else
  {
    v5 = 0x636E75614C707061;
    v6 = 0xE900000000000068;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x4974694B69726973;
    }

    else
    {
      v3 = 0x6E65746E49707061;
    }

    if (a2 == 1)
    {
      v2 = 0xED0000746E65746ELL;
    }

    else
    {
      v2 = 0xE900000000000074;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21E57BB3C();
  }

  return v8 & 1;
}

uint64_t sub_21E542350(uint64_t a1, unsigned __int8 a2)
{
  sub_21E57B6AC();
}

uint64_t sub_21E5423EC(uint64_t a1, char a2)
{
  sub_21E57BB8C();
  sub_21E57B6AC();

  return sub_21E57BBCC();
}

unint64_t sub_21E54249C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21E57BA7C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21E5424E8(char a1)
{
  if (!a1)
  {
    return 0x636E75614C707061;
  }

  if (a1 == 1)
  {
    return 0x4974694B69726973;
  }

  return 0x6E65746E49707061;
}

unint64_t sub_21E542574@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21E54249C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21E5425A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E5424E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21E542680(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 16);

  v9 = COERCE_DOUBLE(sub_21E52D1E4(a1, a2, v8));
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    a3 = v9 + a3;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v4 + 16);
  sub_21E545B9C(a1, a2, isUniquelyReferenced_nonNull_native, a3);
  *(v4 + 16) = v14;
  return swift_endAccess();
}

double sub_21E542764(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!*(v3 + 16))
  {
    return 0.0;
  }

  v4 = sub_21E52F7C4(a1);
  v5 = 0.0;
  if (v6)
  {
    v5 = *(*(v3 + 56) + 8 * v4);
  }

  return v5;
}

uint64_t sub_21E5427F8(uint64_t a1)
{
  v3 = sub_21E5351E4();
  v4 = v3;
  if (v3)
  {
    if (v3 < 1)
    {
      __break(1u);
      goto LABEL_25;
    }

    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D5CE50](v5, a1);
      }

      else
      {
      }

      v7 = sub_21E542A24();
      v8 = sub_21E542764(v7);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E543828();
        v6 = v10;
      }

      v9 = *(v6 + 16);
      if (v9 >= *(v6 + 24) >> 1)
      {
        sub_21E543828();
        v6 = v11;
      }

      ++v5;

      *(v6 + 16) = v9 + 1;
      *(v6 + 8 * v9 + 32) = v8;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v16 = v6;

  sub_21E571410(&v16);

  v1 = v16;
  if (v4)
  {
    if (v4 >= 1)
    {
      v12 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223D5CE50](v12, a1);
        }

        else
        {
        }

        ++v12;
        v13 = sub_21E542A24();
        v14 = sub_21E542764(v13);

        sub_21E57A72C(v1, v14);
        sub_21E57B3FC();
      }

      while (v4 != v12);
      goto LABEL_21;
    }

LABEL_25:
    __break(1u);

    __break(1u);
    return result;
  }

LABEL_21:
}

uint64_t sub_21E542A24()
{
  v1 = sub_21E57B3DC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  if (!*(v0 + 24))
  {

    return sub_21E57B47C();
  }

  v8 = sub_21E57BB3C();

  if (v8)
  {
    return sub_21E57B47C();
  }

  sub_21E57B46C();
  (*(v2 + 104))(v5, *MEMORY[0x277D55840], v1);
  sub_21E542E98();
  sub_21E57B73C();
  sub_21E57B73C();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v7, v1);
  if (v18 != v20)
  {
    return sub_21E57B45C();
  }

  v10 = sub_21E57B47C();
  v12 = v11;
  v13 = sub_21E57B40C();
  v15 = v14;
  v18 = v10;
  v19 = v12;

  MEMORY[0x223D5CBD0](95, 0xE100000000000000);

  MEMORY[0x223D5CBD0](v13, v15);

  return v18;
}

uint64_t sub_21E542CB4()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

_BYTE *storeEnumTagSinglePayload for SiriAutoCompleteHistogramType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21E542DF0()
{
  result = qword_27CEC8B48;
  if (!qword_27CEC8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B48);
  }

  return result;
}

unint64_t sub_21E542E44()
{
  result = qword_27CEC8B50;
  if (!qword_27CEC8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B50);
  }

  return result;
}

unint64_t sub_21E542E98()
{
  result = qword_281225558;
  if (!qword_281225558)
  {
    sub_21E57B3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225558);
  }

  return result;
}

uint64_t sub_21E542EF0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B58, &qword_21E57D300);
  sub_21E543D84();
  v2 = MEMORY[0x277D84F90];
  v3 = sub_21E57B62C();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (a1 + 32);
    v7 = v2;
    do
    {
      memcpy(__dst, v6, 0x60uLL);
      v8 = __dst[11];
      if (__dst[11])
      {
        v9 = __dst[10];
        sub_21E534CEC(__dst, v48);

        sub_21E5400E4(v5, 0);
        swift_isUniquelyReferenced_nonNull_native();
        v48[0] = v3;
        v10 = sub_21E52F81C(v9);
        if (__OFADD__(v3[2], (v11 & 1) == 0))
        {
          goto LABEL_44;
        }

        v12 = v10;
        v13 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B68, &qword_21E57D308);
        v14 = sub_21E57BA1C();
        v3 = v48[0];
        if (v14)
        {
          v15 = sub_21E52F81C(v9);
          if ((v13 & 1) != (v16 & 1))
          {
            goto LABEL_49;
          }

          v12 = v15;
        }

        if (v13)
        {
        }

        else
        {
          v3[(v12 >> 6) + 8] |= 1 << v12;
          v21 = (v3[6] + 16 * v12);
          *v21 = v9;
          v21[1] = v8;
          *(v3[7] + 8 * v12) = MEMORY[0x277D84F90];
          v22 = v3[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_45;
          }

          v3[2] = v24;
        }

        v25 = v3[7];
        v20 = *(v25 + 8 * v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v25 + 8 * v12) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21E543754();
          v20 = v28;
          *(v25 + 8 * v12) = v28;
        }

        v18 = *(v20 + 16);
        v27 = *(v20 + 24);
        v19 = v18 + 1;
        if (v18 >= v27 >> 1)
        {
          OUTLINED_FUNCTION_10_3(v27);
          sub_21E543754();
          v20 = v29;
          *(v25 + 8 * v12) = v29;
        }

        v5 = sub_21E53EBE4;
      }

      else
      {
        sub_21E534CEC(__dst, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21E543754();
          v7 = v30;
        }

        v18 = *(v7 + 16);
        v17 = *(v7 + 24);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          OUTLINED_FUNCTION_10_3(v17);
          sub_21E543754();
          v20 = v31;
          v7 = v31;
        }

        else
        {
          v20 = v7;
        }
      }

      *(v20 + 16) = v19;
      memcpy((v20 + 96 * v18 + 32), __dst, 0x60uLL);
      v6 += 96;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v7 = v2;
  }

  v32 = 0;
  OUTLINED_FUNCTION_2_4();
  v35 = v34 & v33;
  v37 = (v36 + 63) >> 6;
  v47 = v5;
  while (v35)
  {
LABEL_31:

    v40 = sub_21E56064C(v39);

    v41 = v40[2];
    v42 = *(v7 + 16);
    if (__OFADD__(v42, v41))
    {
      goto LABEL_46;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v42 + v41 > *(v7 + 24) >> 1)
    {
      sub_21E543754();
      v7 = v43;
    }

    v35 &= v35 - 1;
    if (v40[2])
    {
      if ((*(v7 + 24) >> 1) - *(v7 + 16) < v41)
      {
        goto LABEL_47;
      }

      swift_arrayInitWithCopy();

      v5 = v47;
      if (v41)
      {
        v44 = *(v7 + 16);
        v23 = __OFADD__(v44, v41);
        v45 = v44 + v41;
        if (v23)
        {
          goto LABEL_48;
        }

        *(v7 + 16) = v45;
      }
    }

    else
    {

      v5 = v47;
      if (v41)
      {
        __break(1u);
LABEL_42:

        sub_21E5400E4(v5, 0);
        return v7;
      }
    }
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v37)
    {
      goto LABEL_42;
    }

    v35 = v3[v38 + 8];
    ++v32;
    if (v35)
    {
      v32 = v38;
      goto LABEL_31;
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
  result = sub_21E57BB6C();
  __break(1u);
  return result;
}

uint64_t sub_21E54335C(uint64_t a1)
{
  result = MEMORY[0x223D5CD20](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_21E576044(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_21E54341C(uint64_t a1)
{
  v2 = 0;
  v14 = MEMORY[0x223D5CD20](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_2_4();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  if ((v4 & v3) != 0)
  {
    do
    {
      v8 = v2;
LABEL_7:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_21E576044(v13, v11, v12);
    }

    while (v5);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_21E543524()
{
  result = sub_21E54335C(&unk_282F920F8);
  qword_27CEC8DC8 = result;
  return result;
}

uint64_t sub_21E54354C(uint64_t a1, uint64_t a2)
{
  if (qword_27CEC88D0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v2 = qword_27CEC8DC8 + 56;
  OUTLINED_FUNCTION_2_4();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  do
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          v10 = 0;
          goto LABEL_11;
        }

        v5 = *(v2 + 8 * v9);
        ++v8;
        if (v5)
        {
          v8 = v9;
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_8:
    v5 &= v5 - 1;
    sub_21E534DE8();
  }

  while ((sub_21E57B8DC() & 1) == 0);
  v10 = 1;
LABEL_11:

  return v10;
}

void sub_21E543698()
{
  OUTLINED_FUNCTION_8_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_3();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B70, &unk_21E57DF10);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v6);
      OUTLINED_FUNCTION_6_3(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_4();
        sub_21E565598(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_7_2();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_3();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21E543754()
{
  OUTLINED_FUNCTION_8_1();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_1_2(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_3();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8928, &qword_21E57C4A8);
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v7);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v8 / 96);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3_4();
        sub_21E562708(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_2();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21E543828()
{
  OUTLINED_FUNCTION_8_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_3();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B80, &qword_21E57DF30);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v6);
      OUTLINED_FUNCTION_6_3(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_4();
        sub_21E5626D0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_7_2();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_3();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21E543924()
{
  OUTLINED_FUNCTION_8_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_3();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8940, &qword_21E57C4C0);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v6);
      OUTLINED_FUNCTION_6_3(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_4();
        sub_21E52981C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_2();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_3();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21E5439E8()
{
  OUTLINED_FUNCTION_8_1();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_1_2(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_3();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B78, &qword_21E57D310);
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_9_3(v7);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v8 / 24);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_3_4();
        sub_21E562808(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_2();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_2();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21E543ABC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  v10 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_1_2();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_5_3();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (v10)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_21E543BC8()
{
  OUTLINED_FUNCTION_11_2();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v0;
  if (result)
  {
    if ((v0 & 0x8000000000000000) == 0 && (v0 & 0x4000000000000000) == 0)
    {
      if (v2 <= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v0 & 0x8000000000000000) == 0 && (v0 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21E57BA4C();
LABEL_9:
  result = sub_21E57B96C();
  *v1 = result;
  return result;
}

uint64_t sub_21E543C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_21E543CEC()
{
  OUTLINED_FUNCTION_11_2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (!isUniquelyReferenced_nonNull_native || v3 > *(v0 + 24) >> 1)
  {
    if (*(v0 + 16) <= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *(v0 + 16);
    }

    sub_21E543ABC(isUniquelyReferenced_nonNull_native, v5, v2 & 1, v0, sub_21E52F478, MEMORY[0x277D606E0], sub_21E5626F0);
    *v1 = v6;
  }
}

unint64_t sub_21E543D84()
{
  result = qword_27CEC8B60;
  if (!qword_27CEC8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8B60);
  }

  return result;
}

BOOL sub_21E543EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21E57BB8C();
  sub_21E57B6AC();
  v6 = sub_21E57BBCC();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_21E57BB3C();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

BOOL sub_21E543F9C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_21E57BB8C();
  sub_21E546408(__src, a1);
  v4 = sub_21E57BBCC();
  v5 = ~(-1 << *(a2 + 32));
  do
  {
    v6 = v4 & v5;
    v7 = (1 << (v4 & v5)) & *(a2 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8));
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v10 = sub_21E54655C(v9, a1);

    v4 = v6 + 1;
  }

  while ((v10 & 1) == 0);
  return v8;
}

uint64_t sub_21E544080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  sub_21E57BB8C();
  sub_21E57B6AC();
  sub_21E57B6AC();
  v10 = sub_21E57BBCC();
  v11 = a5 + 56;
  v12 = -1 << *(a5 + 32);
  v13 = v10 & ~v12;
  if (((*(a5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  v15 = *(a5 + 48);
  while (1)
  {
    v16 = (v15 + 32 * v13);
    v17 = v16[2];
    v18 = v16[3];
    v19 = *v16 == a1 && v16[1] == a2;
    if (v19 || (sub_21E57BB3C() & 1) != 0)
    {
      v20 = v17 == a3 && v18 == a4;
      if (v20 || (sub_21E57BB3C() & 1) != 0)
      {
        break;
      }
    }

    v13 = (v13 + 1) & v14;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_21E5441CC()
{
  v0 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = sub_21E57ABEC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_21E546314(0xD00000000000001CLL, 0x800000021E57D3C0, 0x7473696C70, 0xE500000000000000, v17);

  if (v18)
  {
    sub_21E57ABDC();

    (*(v9 + 32))(v15, v13, v7);
    sub_21E57AB9C();
    swift_allocObject();
    sub_21E57AB8C();
    v19 = sub_21E57ABFC();
    v21 = v20;
    sub_21E548BD8();
    sub_21E57AB7C();
    (*(v9 + 8))(v15, v7);
    sub_21E53505C(v19, v21);
  }

  else
  {
    sub_21E57B5BC();
    v22 = sub_21E57B5DC();
    v23 = sub_21E57B86C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21E527000, v22, v23, "AppIntentTranscriptSource: unable to get URL to AppIntentTranscriptAllowList.plist filePath. Returning 0 phrases", v24, 2u);
      OUTLINED_FUNCTION_39();
    }

    (*(v2 + 8))(v6, v0);
  }

  OUTLINED_FUNCTION_100();
}

id sub_21E544610(void *a1)
{
  v2 = sub_21E57B5EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v7 = result;
    sub_21E57B5BC();
    v8 = v7;
    v9 = sub_21E57B5DC();
    v10 = sub_21E57B86C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_21E57BB7C();
      v15 = sub_21E5553D8(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21E527000, v9, v10, "Error encountered while fetching the link transcript for phrases %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x223D5D740](v12, -1, -1);
      MEMORY[0x223D5D740](v11, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_21E544808(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v14 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_21E5477F0(a1, *v14, a4, a5, a6, (a7 + 16), a2);
  return swift_endAccess();
}

void sub_21E5448A8(void *a1)
{
  v3 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_4();
  if ([a1 source] >= 0xB)
  {
    sub_21E57B5BC();
    v7 = a1;
    v8 = sub_21E57B5DC();
    v9 = sub_21E57B86C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 33554688;
      *(v10 + 4) = [v7 source];

      _os_log_impl(&dword_21E527000, v8, v9, "Unexpected source not covered by switch statement: %hu", v10, 6u);
      OUTLINED_FUNCTION_39();
    }

    else
    {

      v8 = v7;
    }

    (*(v5 + 8))(v1, v3);
  }

  OUTLINED_FUNCTION_25_1();
}

void sub_21E544A2C(uint64_t a1)
{
  v3 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_4();
  sub_21E57B5BC();
  v7 = sub_21E57B5DC();
  v8 = sub_21E57B84C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21E527000, v7, v8, "Ranking App Intent transcript phrases", v9, 2u);
    OUTLINED_FUNCTION_39();
  }

  (*(v5 + 8))(v1, v3);

  sub_21E5427F8(a1);

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_21E544B6C()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_source;
  sub_21E57B3DC();
  OUTLINED_FUNCTION_82();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_suggestionsForIntentProvider));
  return v0;
}

uint64_t sub_21E544BE0()
{
  sub_21E544B6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AppIntentTranscriptSource(uint64_t a1)
{
  result = qword_281225A40;
  if (!qword_281225A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E544C8C(uint64_t a1)
{
  result = sub_21E57B3DC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21E544D40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x800000021E57F360 == a2;
  if (v3 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000021E57F5D0 == a2;
    if (v6 || (sub_21E57BB3C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x800000021E57F5F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_21E57BB3C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_21E544E60(char a1)
{
  if (!a1)
  {
    return 0xD000000000000017;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000014;
}

void sub_21E544EB8()
{
  OUTLINED_FUNCTION_25_0();
  v10 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BB8, &qword_21E57D510);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v10 - v8;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21E548D60();
  sub_21E57BBEC();
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BB0, &qword_21E57D508);
  sub_21E548E08(&qword_27CEC8BC0, sub_21E548E80, MEMORY[0x277D83B50]);
  OUTLINED_FUNCTION_4_4();
  if (!v0)
  {
    v11 = 1;
    OUTLINED_FUNCTION_4_4();
    v11 = 2;
    OUTLINED_FUNCTION_4_4();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_28_0();
}

void sub_21E545058()
{
  OUTLINED_FUNCTION_25_0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BA8, &qword_21E57D500);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_0();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_21E548D60();
  OUTLINED_FUNCTION_16_0(&type metadata for AppIntentTranscriptAllowList.CodingKeys, v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BB0, &qword_21E57D508);
  sub_21E548E08(&qword_281225530, sub_21E548DB4, MEMORY[0x277D83B70]);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_18_1();
  sub_21E57BABC();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_18_1();
  sub_21E57BABC();
  OUTLINED_FUNCTION_3_5();
  sub_21E57BABC();
  v5 = OUTLINED_FUNCTION_2_1();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v1);
  OUTLINED_FUNCTION_28_0();
}

uint64_t sub_21E545264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E57BB3C();

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

uint64_t sub_21E545338(char a1)
{
  if (a1)
  {
    return 0x6C646E7542707061;
  }

  else
  {
    return 0x614E746E65746E69;
  }
}

void sub_21E54537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_0();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BE0, &qword_21E57D728);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14_0();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_21E549120();
  sub_21E57BBEC();
  sub_21E57BAEC();
  if (!v23)
  {
    sub_21E57BAEC();
  }

  (*(v29 + 8))(v24, v27);
  OUTLINED_FUNCTION_28_0();
}

uint64_t sub_21E5454CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21E57BB8C();
  sub_21E57B6AC();
  sub_21E57B6AC();
  return sub_21E57BBCC();
}

void sub_21E54553C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_0();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BD8, &qword_21E57D720);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_14_0();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v27 = sub_21E549120();
  OUTLINED_FUNCTION_16_0(&type metadata for AppIntentInfo.CodingKeys, v28, v27);
  if (!v23)
  {
    OUTLINED_FUNCTION_18_1();
    sub_21E57BAAC();
    OUTLINED_FUNCTION_18_1();
    sub_21E57BAAC();
    v29 = OUTLINED_FUNCTION_2_1();
    v30(v29);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  OUTLINED_FUNCTION_28_0();
}

uint64_t sub_21E5456C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E545740(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E539DD0;

  return sub_21E548158(v8, a2, a3, v7);
}

uint64_t sub_21E545840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E544D40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E545868(uint64_t a1)
{
  v2 = sub_21E548D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E5458A4(uint64_t a1)
{
  v2 = sub_21E548D60();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21E5458E0(void *a1@<X8>)
{
  sub_21E545058();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

uint64_t sub_21E545940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E545264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E545968(uint64_t a1)
{
  v2 = sub_21E549120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E5459A4(uint64_t a1)
{
  v2 = sub_21E549120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E545A54(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_21E545AB0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2);
  OUTLINED_FUNCTION_1_3();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89A8, &unk_21E57C560);
  if ((OUTLINED_FUNCTION_20_1(v10) & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_21E52F7C4(v3);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  if (v9)
  {
    *(*(*v4 + 56) + 8 * v8) = v2;
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_17_0();
    sub_21E5461B8(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_25_1();
  }
}

uint64_t sub_21E545B9C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  sub_21E52F7C4(a1);
  OUTLINED_FUNCTION_1_3();
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B98, &unk_21E57D410);
  result = sub_21E57BA1C();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_21E52F7C4(a1);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + 8 * v11) = a4;
  }

  else
  {
    sub_21E5461DC(v11, a1, a2, v15, a4);
  }

  return result;
}

uint64_t sub_21E545CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_21E52F880(a3, a4, a5, a6);
  OUTLINED_FUNCTION_1_3();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89C0, &qword_21E57D420);
  if ((sub_21E57BA1C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_21E52F880(a3, a4, a5, a6);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v7;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    sub_21E546224(v16, a3, a4, a5, a6, a1, a2, v20);
  }
}

uint64_t sub_21E545E44(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_4(a1, a2);
  OUTLINED_FUNCTION_1_3();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B88, &unk_21E57D3D0);
  if ((OUTLINED_FUNCTION_20_1(v10) & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_21E52F7C4(v3);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  if (v9)
  {
    *(*(*v4 + 56) + 8 * v8) = v2;
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_17_0();
    sub_21E5461B8(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_25_1();
  }
}

uint64_t sub_21E545F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_21E52F7C4(a3);
  OUTLINED_FUNCTION_1_3();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8B90, &qword_21E57D408);
  if ((sub_21E57BA1C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_21E52F7C4(a3);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
    OUTLINED_FUNCTION_100();
  }

  else
  {
    sub_21E546274(v13, a3, a4, a1, a2, v17);
    OUTLINED_FUNCTION_100();
  }
}

uint64_t sub_21E546068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_21E52F7C4(a4);
  OUTLINED_FUNCTION_1_3();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BA0, &qword_21E57D428);
  if ((sub_21E57BA1C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_21E52F7C4(a4);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_21E57BB6C();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *v6;
  if (v16)
  {
    v20 = (v19[7] + 24 * v15);
    *v20 = a1;
    v20[1] = a2;
    v20[2] = a3;

    OUTLINED_FUNCTION_100();
  }

  else
  {
    sub_21E5462C0(v15, a4, a5, a1, a2, a3, v19);
    OUTLINED_FUNCTION_100();
  }
}

unint64_t sub_21E5461B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_6_4(a1, a2, a3, a4, a5);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v7;
  }

  return result;
}

unint64_t sub_21E5461DC(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_21E546224(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 32 * result);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v9 = (a8[7] + 16 * result);
  *v9 = a6;
  v9[1] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

unint64_t sub_21E546274(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

unint64_t sub_21E5462C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

id sub_21E546314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_21E57B66C();

  v7 = sub_21E57B66C();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_21E5463A8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_21E57B67C();

  return v4;
}

uint64_t sub_21E546408(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_21E57BBCC();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x223D5D090](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_21E57BB8C();

        sub_21E57B6AC();
        v11 = sub_21E57BBCC();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E54655C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_21E57BB8C();

      sub_21E57B6AC();
      v15 = sub_21E57BBCC();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_21E57BB3C();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E546704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v3[13] = a3;
  sub_21E57B03C();
  v3[14] = swift_task_alloc();
  v5 = sub_21E57B06C();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = sub_21E57B08C();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = sub_21E57B09C();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480);
  v3[28] = swift_task_alloc();
  v8 = sub_21E57B3DC();
  v3[29] = v8;
  v3[30] = *(v8 - 8);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89E0, &unk_21E57D3C0);
  v3[32] = swift_task_alloc();
  v9 = sub_21E57B23C();
  v3[33] = v9;
  v3[34] = *(v9 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v10 = sub_21E57AFDC();
  v3[37] = v10;
  v3[38] = *(v10 - 8);
  v3[39] = swift_task_alloc();
  v11 = sub_21E57AF9C();
  v3[40] = v11;
  v3[41] = *(v11 - 8);
  v3[42] = swift_task_alloc();
  v12 = sub_21E57B5EC();
  v3[43] = v12;
  v3[44] = *(v12 - 8);
  v3[45] = swift_task_alloc();
  v13 = type metadata accessor for DefaultEligibilityCriteria();
  v3[46] = v13;
  v3[5] = v13;
  v3[6] = &off_282F92F38;
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_21E546BD0);
}

uint64_t sub_21E546BD0(uint64_t a1)
{
  sub_21E57B5BC();

  v2 = sub_21E57B5DC();
  v3 = sub_21E57B85C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_23_0(v4, 3.852e-34);
    OUTLINED_FUNCTION_44(&dword_21E527000, v5, v6, "AppIntentTranscriptSource: Getting Suggestion results for %ld eligible transcript action records");
    OUTLINED_FUNCTION_39();
  }

  else
  {
  }

  v7 = v1[12];
  (*(v1[44] + 8))(v1[45], v1[43]);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v1[23];
    v42 = v1[24];
    v10 = v1[20];
    v40 = *MEMORY[0x277D60948];
    v39 = (v9 + 104);
    v38 = (v9 + 16);
    v37 = *MEMORY[0x277D60920];
    v36 = (v10 + 104);
    v35 = (v1[16] + 16);
    v34 = (v10 + 8);
    v41 = v1[16];
    v33 = (v9 + 8);
    v11 = (v1[12] + 48);
    v12 = MEMORY[0x277D84F90];
    do
    {
      v48 = v8;
      v13 = v1[24];
      v14 = v1[21];
      v15 = v1[22];
      v16 = v1[18];
      v43 = v1[19];
      v44 = v1[17];
      v46 = v1[15];
      v17 = *(v11 - 2);
      v18 = *(v11 - 1);
      v19 = *v11;

      v47 = v19;
      *v13 = [v47 resolvedAction];
      *(v42 + 8) = v17;
      *(v42 + 16) = v18;
      (*v39)(v13, v40, v15);
      (*v38)(v14, v13, v15);
      (*v36)(v14, v37, v43);

      sub_21E57B07C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8980, &qword_21E57C500);
      sub_21E57B62C();
      v20 = v12;
      sub_21E57B05C();
      (*v35)(v44, v16, v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E5438E4(0, *(v12 + 16) + 1, 1, v12);
        v20 = v29;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_21E5438E4(v21 > 1, v22 + 1, 1, v20);
        v49 = v30;
      }

      else
      {
        v49 = v20;
      }

      v23 = v1[24];
      v25 = v1[21];
      v24 = v1[22];
      v27 = v1[18];
      v26 = v1[19];
      v45 = v1[17];
      v28 = v1[15];

      (*(v41 + 8))(v27, v28);
      (*v34)(v25, v26);
      (*v33)(v23, v24);
      v12 = v49;
      *(v49 + 16) = v22 + 1;
      (*(v41 + 32))(v49 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v22, v45, v28);
      v11 += 3;
      v8 = v48 - 1;
    }

    while (v48 != 1);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v1[47] = v12;
  __swift_project_boxed_opaque_existential_1((v1[13] + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_suggestionsForIntentProvider), *(v1[13] + OBJC_IVAR____TtC16SiriAutoComplete25AppIntentTranscriptSource_suggestionsForIntentProvider + 24));
  v31 = swift_task_alloc();
  v1[48] = v31;
  *v31 = v1;
  v31[1] = sub_21E547028;

  return sub_21E5615B8();
}

uint64_t sub_21E547028()
{
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 392) = v3;

  return MEMORY[0x2822009F8](sub_21E547124);
}

uint64_t sub_21E547124()
{
  v1 = v0[49];
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {

LABEL_17:

    sub_21E57B4AC();
    v72 = sub_21E57B62C();
    goto LABEL_18;
  }

  v3 = v0[41];
  v4 = v0[38];
  v5 = v0[34];
  v6 = v0[30];
  sub_21E57B4AC();
  v7 = sub_21E57B62C();
  v8 = *(v3 + 16);
  v3 += 16;
  v69 = v8;
  v9 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v68 = *(v3 + 56);
  v75 = (v4 + 8);
  v62 = (v5 + 8);
  v10 = (v3 - 8);
  v60 = *MEMORY[0x277D55858];
  v59 = (v6 + 104);
  v61 = (v3 - 8);
  do
  {
    v11 = v7;
    v12 = v10;
    v13 = v0[46];
    v14 = v0[39];
    v15 = v0[37];
    v76 = v9;
    v69(v0[42]);
    sub_21E57AF5C();
    v16 = sub_21E57AFAC();
    v18 = v17;
    v73 = *v75;
    (*v75)(v14, v15);
    v19 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[10] = v13;
    v0[11] = &off_282F92F38;
    v0[7] = v19;
    __swift_project_boxed_opaque_existential_1(v0 + 7, v13);

    if (sub_21E54A0B4(v16, v18))
    {
      v10 = v12;
      (*v12)(v0[42], v0[40]);

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v7 = v11;
    }

    else
    {
      v67 = v2;
      v70 = v11;
      v21 = v0[35];
      v20 = v0[36];
      v22 = v0[32];
      v23 = v0[33];
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

      v74 = v16;
      sub_21E542680(v16, v18, 1.0);

      sub_21E57AF6C();
      sub_21E57B22C();
      v24 = *v62;
      (*v62)(v20, v23);
      sub_21E57AF6C();
      sub_21E57B20C();
      v24(v21, v23);
      v25 = sub_21E57B0CC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v25);
      v27 = v0[32];
      if (EnumTagSinglePayload == 1)
      {
        sub_21E5350C0(v0[32], &qword_27CEC89E0, &unk_21E57D3C0);
      }

      else
      {
        sub_21E57B0BC();
        (*(*(v25 - 8) + 8))(v27, v25);
      }

      v7 = v70;
      v10 = v61;
      if (*(v70 + 16) && (, sub_21E52F7C4(v74), v34 = v33, , (v34 & 1) != 0))
      {
        (*v61)(v0[42], v0[40]);
      }

      else
      {
        v66 = v0[42];
        v35 = v0[39];
        v71 = v0[40];
        v36 = v0[28];
        v65 = v0[31];
        v37 = v0[26];
        v38 = v0[27];
        v63 = v0[37];
        v64 = v0[25];
        (*v59)(v65, v60, v0[29], v28, v29, v30, v31, v32, v54, v55, v56, v57, v58);
        v39 = sub_21E57B1FC();
        OUTLINED_FUNCTION_11_0(v36, v40, v41, v39);
        v42 = sub_21E57AC4C();
        OUTLINED_FUNCTION_11_0(v38, v43, v44, v42);
        v45 = sub_21E57B5FC();
        OUTLINED_FUNCTION_11_0(v37, v46, v47, v45);
        sub_21E57AF5C();
        sub_21E57AFCC();
        v73(v35, v63);
        v48 = sub_21E57B04C();
        OUTLINED_FUNCTION_11_0(v64, v49, v50, v48);
        sub_21E57B5AC();
        sub_21E57B59C();
        swift_allocObject();

        v56 = 0;
        v57 = 0;
        v58 = 0;
        v54 = v65;
        v55 = v36;
        v51 = sub_21E57B44C();

        swift_isUniquelyReferenced_nonNull_native();
        sub_21E545E44(v51, v74);

        (*v61)(v66, v71);
      }

      v2 = v67;
    }

    v9 = v76 + v68;
    --v2;
  }

  while (v2);

  v72 = v7;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  OUTLINED_FUNCTION_9_0();

  return v52(v72);
}

uint64_t sub_21E5477F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v85 = a7;
  v86 = a4;
  v11 = sub_21E57B5EC();
  v12 = *(v11 - 8);
  v87 = v11;
  v88 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v82 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v82 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v82 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v82 - v25;
  v27 = type metadata accessor for DefaultEligibilityCriteria();
  v91[3] = v27;
  v91[4] = &off_282F92F38;
  v91[0] = a2;

  v28 = [a1 eventBody];
  if (v28)
  {
    v29 = v28;
    v83 = v21;
    v84 = a6;
    v30 = [v28 action];
    v31 = [v30 identifier];

    v32 = sub_21E57B67C();
    v34 = v33;

    v35 = sub_21E5463A8(v29, &selRef_bundleIdentifier);
    if (v36)
    {
      v37 = v35;
      v38 = v36;
      if (sub_21E544080(v32, v34, v35, v36, a3) & 1) != 0 || (sub_21E544080(v32, v34, v37, v38, v86))
      {
        v86 = v32;
        __swift_project_boxed_opaque_existential_1(v91, v27);
        v39 = v37;
        v40 = sub_21E54A03C(v37);
        v41 = [v29 source];
        if ((v40 & 1) == 0 && v41 != 3)
        {
          sub_21E57B5BC();

          v42 = sub_21E57B5DC();
          v43 = sub_21E57B85C();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v89 = v45;
            *v44 = 136315394;
            v46 = sub_21E5553D8(v37, v38, &v89);

            *(v44 + 4) = v46;
            *(v44 + 12) = 2080;
            v47 = sub_21E5553D8(v86, v34, &v89);

            *(v44 + 14) = v47;
            _os_log_impl(&dword_21E527000, v42, v43, "AppIntentTranscript %s.%s: Not eligible for autocomplete. Correlated app is not installed.", v44, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D5D740](v45, -1, -1);
            MEMORY[0x223D5D740](v44, -1, -1);
          }

          else
          {
          }

          (*(v88 + 8))(v18, v87);
          return __swift_destroy_boxed_opaque_existential_0Tm(v91);
        }

        sub_21E5448A8(v29);
        if (v56)
        {
          v57 = sub_21E5463A8(v29, &selRef_clientLabel);
          if (v58)
          {
            if (v57 == 0x74756374726F6853 && v58 == 0xE900000000000073)
            {
            }

            else
            {
              v60 = sub_21E57BB3C();

              if ((v60 & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v89 = v37;
            v90 = v38;

            MEMORY[0x223D5CBD0](95, 0xE100000000000000);

            MEMORY[0x223D5CBD0](v86, v34);

            v76 = v89;
            v77 = v90;

            sub_21E542680(v76, v77, 1.0);

            goto LABEL_37;
          }

LABEL_21:

LABEL_37:
          v78 = v84;
          sub_21E545A54(sub_21E5439E8);
          v79 = *(*v78 + 16);
          sub_21E52F39C(v79);
          v80 = *v78;
          *(v80 + 16) = v79 + 1;
          v81 = (v80 + 24 * v79);
          v81[4] = v37;
          v81[5] = v38;
          v81[6] = v29;
          *v78 = v80;
          return __swift_destroy_boxed_opaque_existential_0Tm(v91);
        }

        v68 = v83;
        sub_21E57B5BC();

        v69 = sub_21E57B5DC();
        v70 = sub_21E57B85C();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v89 = v72;
          *v71 = 136315394;
          v73 = sub_21E5553D8(v39, v38, &v89);

          *(v71 + 4) = v73;
          *(v71 + 12) = 2080;
          v74 = sub_21E5553D8(v86, v34, &v89);

          *(v71 + 14) = v74;
          _os_log_impl(&dword_21E527000, v69, v70, "AppIntentTranscript %s.%s: Not eligible for autocomplete. Record does not have eligible source", v71, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D5D740](v72, -1, -1);
          MEMORY[0x223D5D740](v71, -1, -1);
        }

        else
        {
        }

        (*(v88 + 8))(v68, v87);
      }

      else
      {
        v61 = v32;
        sub_21E57B5BC();

        v62 = sub_21E57B5DC();
        v63 = sub_21E57B85C();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v89 = v65;
          *v64 = 136315394;
          v66 = sub_21E5553D8(v37, v38, &v89);

          *(v64 + 4) = v66;
          *(v64 + 12) = 2080;
          v67 = sub_21E5553D8(v61, v34, &v89);

          *(v64 + 14) = v67;
          _os_log_impl(&dword_21E527000, v62, v63, "AppIntentTranscript %s.%s: not in our allowlist. Skipping processing.", v64, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D5D740](v65, -1, -1);
          MEMORY[0x223D5D740](v64, -1, -1);
        }

        else
        {
        }

        (*(v88 + 8))(v15, v87);
      }
    }

    else
    {
      sub_21E57B5BC();

      v51 = sub_21E57B5DC();
      v52 = sub_21E57B86C();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v89 = v54;
        *v53 = 136315138;
        v55 = sub_21E5553D8(v32, v34, &v89);

        *(v53 + 4) = v55;
        _os_log_impl(&dword_21E527000, v51, v52, "AppIntentTranscript %s: nil bundleId for lnTranscriptActionRecord. Skipping processing.", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        MEMORY[0x223D5D740](v54, -1, -1);
        MEMORY[0x223D5D740](v53, -1, -1);
      }

      else
      {
      }

      (*(v88 + 8))(v24, v87);
    }
  }

  else
  {
    sub_21E57B5BC();
    v48 = sub_21E57B5DC();
    v49 = sub_21E57B86C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_21E527000, v48, v49, "AppIntentTranscript: nil eventBody for lnTranscriptActionRecord", v50, 2u);
      MEMORY[0x223D5D740](v50, -1, -1);
    }

    (*(v88 + 8))(v26, v87);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v91);
}

uint64_t sub_21E548158(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[32] = a4;
  v4[33] = *a4;
  v6 = sub_21E57B5EC();
  v4[34] = v6;
  v4[35] = *(v6 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[17] = type metadata accessor for DefaultEligibilityCriteria();
  v4[18] = &off_282F92F38;
  v4[14] = a1;

  return MEMORY[0x2822009F8](sub_21E5482B4);
}

uint64_t sub_21E5482B4(uint64_t a1)
{
  v58 = v1;
  v57[1] = *MEMORY[0x277D85DE8];
  sub_21E57B5BC();
  v2 = sub_21E57B5DC();
  v3 = sub_21E57B84C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[38];
  v6 = v1[34];
  v7 = v1[35];
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_50();
    v9 = swift_slowAlloc();
    v57[0] = v9;
    *v8 = 136315138;
    v10 = sub_21E57BC2C();
    v12 = sub_21E5553D8(v10, v11, v57);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21E527000, v2, v3, "%s: Fetching phrases", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[39] = v13;
  sub_21E5441CC();
  if (v14)
  {
    v17 = v14;
    v18 = v16;
    v55 = v15;
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D84F90];
    v1[40] = v19;
    *(v19 + 16) = v20;
    v56 = (v19 + 16);
    v21 = [objc_allocWithZone(MEMORY[0x277D23CC0]) init];
    v22 = sub_21E57B66C();
    v23 = sub_21E57B83C();
    v1[30] = 0;
    v24 = [v21 transcriptPublisherWithStreamName:v22 fromDate:0 toDate:0 maxEvents:v23 reversed:1 error:v1 + 30];

    v25 = v1[30];
    if (v24)
    {
      v26 = v18;
      v27 = v1[32];
      v1[6] = sub_21E544610;
      v1[7] = 0;
      v1[2] = MEMORY[0x277D85DD0];
      v1[3] = 1107296256;
      v1[4] = sub_21E529A78;
      v1[5] = &block_descriptor_0;
      v28 = _Block_copy(v1 + 2);
      sub_21E534F3C((v1 + 14), (v1 + 19));
      v29 = swift_allocObject();
      v29[2] = v27;
      sub_21E529804((v1 + 19), (v29 + 3));
      v29[8] = v17;
      v29[9] = v55;
      v29[10] = v26;
      v29[11] = v19;
      v1[12] = sub_21E548BC4;
      v1[13] = v29;
      v1[8] = MEMORY[0x277D85DD0];
      v1[9] = 1107296256;
      v1[10] = sub_21E529A78;
      v1[11] = &block_descriptor_18;
      v30 = _Block_copy(v1 + 8);
      v31 = v25;

      _Block_release(v30);
      _Block_release(v28);
    }

    else
    {
      v35 = v25;

      v36 = sub_21E57ABAC();

      swift_willThrow();
      sub_21E57B5BC();
      v37 = v36;
      v38 = sub_21E57B5DC();
      v39 = sub_21E57B86C();

      v40 = os_log_type_enabled(v38, v39);
      v41 = v1[37];
      v42 = v1[34];
      if (v40)
      {
        v43 = OUTLINED_FUNCTION_50();
        v44 = swift_slowAlloc();
        v57[0] = v44;
        *v43 = 136315138;
        swift_getErrorValue();
        v45 = sub_21E57BB7C();
        v54 = v42;
        v47 = sub_21E5553D8(v45, v46, v57);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_21E527000, v38, v39, "Unexpected error while attempting to read the App Intent Transcript: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();

        v49 = v54;
        v48 = v41;
      }

      else
      {

        v48 = v41;
        v49 = v42;
      }

      v13(v48, v49);
    }

    swift_beginAccess();
    v50 = *v56;
    v1[41] = *v56;
    v51 = *__swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);

    v52 = swift_task_alloc();
    v1[42] = v52;
    *v52 = v1;
    v52[1] = sub_21E5488F0;
    v53 = v1[32];

    return sub_21E546704(v50, v51, v53);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v1 + 14);

    OUTLINED_FUNCTION_9_0();
    v33 = MEMORY[0x277D84F90];

    return v32(v33);
  }
}

uint64_t sub_21E5488F0()
{
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v4 = v3;
  *(v6 + 344) = v5;

  return MEMORY[0x2822009F8](sub_21E548A34);
}

uint64_t sub_21E548A34(uint64_t a1)
{
  sub_21E57B5BC();

  v2 = sub_21E57B5DC();
  v3 = sub_21E57B84C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_23_0(v4, 3.852e-34);
    OUTLINED_FUNCTION_44(&dword_21E527000, v5, v6, "AppIntentTranscriptSource: created %ld phrases");
    OUTLINED_FUNCTION_39();
  }

  else
  {
  }

  v7 = *(v1 + 344);
  (*(v1 + 312))(*(v1 + 288), *(v1 + 272));
  v8 = sub_21E529E80(v7);
  sub_21E544A2C(v8);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 112));

  OUTLINED_FUNCTION_9_0();

  return v9(v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21E548BD8()
{
  result = qword_2812257B8;
  if (!qword_2812257B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257B8);
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

uint64_t sub_21E548C40(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21E548C80(uint64_t result, int a2, int a3)
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

uint64_t sub_21E548CD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21E548D10(uint64_t result, int a2, int a3)
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

unint64_t sub_21E548D60()
{
  result = qword_2812257D0;
  if (!qword_2812257D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257D0);
  }

  return result;
}

unint64_t sub_21E548DB4()
{
  result = qword_281225DF0;
  if (!qword_281225DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DF0);
  }

  return result;
}

uint64_t sub_21E548E08(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8BB0, &qword_21E57D508);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E548E80()
{
  result = qword_27CEC8BC8;
  if (!qword_27CEC8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8BC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppIntentTranscriptAllowList.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21E548FC4()
{
  result = qword_281225DF8;
  if (!qword_281225DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DF8);
  }

  return result;
}

unint64_t sub_21E54901C()
{
  result = qword_27CEC8BD0;
  if (!qword_27CEC8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8BD0);
  }

  return result;
}

unint64_t sub_21E549074()
{
  result = qword_2812257C0;
  if (!qword_2812257C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257C0);
  }

  return result;
}

unint64_t sub_21E5490CC()
{
  result = qword_2812257C8;
  if (!qword_2812257C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257C8);
  }

  return result;
}

unint64_t sub_21E549120()
{
  result = qword_281225E10;
  if (!qword_281225E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225E10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppIntentInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21E549254()
{
  result = qword_27CEC8BE8;
  if (!qword_27CEC8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8BE8);
  }

  return result;
}

unint64_t sub_21E5492AC()
{
  result = qword_281225E00;
  if (!qword_281225E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225E00);
  }

  return result;
}

unint64_t sub_21E549304()
{
  result = qword_281225E08;
  if (!qword_281225E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225E08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_21E57BAFC();
}

unint64_t OUTLINED_FUNCTION_5_4(uint64_t a1, uint64_t a2)
{

  return sub_21E52F7C4(a2);
}

unint64_t OUTLINED_FUNCTION_6_4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(*(a5 + 56) + 8 * result) = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1)
{

  return sub_21E57BA1C();
}

uint64_t OUTLINED_FUNCTION_23_0(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t sub_21E5494B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E5495E4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21E5495E4()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_21E5496DC()
{
  OUTLINED_FUNCTION_29();
  v0[6] = v1;
  v0[7] = v2;
  v3 = sub_21E57B5EC();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E549798);
}

uint64_t sub_21E549798()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_21E549890;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 14, 0, 0, 0xD000000000000021, 0x800000021E57F650, sub_21E549F54, v3, v5);
}

uint64_t sub_21E549890()
{
  OUTLINED_FUNCTION_29();
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21E549A0C;
  }

  else
  {

    v2 = sub_21E5499A8;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_21E5499A8()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21E549A0C()
{
  v22 = v0;
  v1 = *(v0 + 104);

  sub_21E57B5BC();

  v2 = v1;
  v3 = sub_21E57B5DC();
  v4 = sub_21E57B86C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 72);
    v20 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_21E5553D8(v9, v7, &v21);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v12 = sub_21E57BB7C();
    v14 = sub_21E5553D8(v12, v13, &v21);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_21E527000, v3, v4, "DefaultSiriShortcutsEnablementProvider: Could not determine if App Shortcuts for %s are enabled %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D5D740](v11, -1, -1);
    MEMORY[0x223D5D740](v10, -1, -1);

    (*(v6 + 8))(v20, v8);
  }

  else
  {
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 8);

  return v18(0);
}

void sub_21E549C30(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF0, qword_21E57D8D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() standardClient];
  v8 = sub_21E57B66C();
  (*(v4 + 16))(v6, a1, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v6, v3);
  aBlock[4] = sub_21E549F5C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E549EA8;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  [v7 getSiriAutoShortcutsEnablementForBundleIdentifier:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_21E549E24(char a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF0, qword_21E57D8D0);
    return sub_21E57B7EC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF0, qword_21E57D8D0);
    return sub_21E57B7FC();
  }
}

void sub_21E549EA8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_21E549F5C(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF0, qword_21E57D8D0);

  return sub_21E549E24(a1, a2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E54A03C(uint64_t a1)
{
  if (*(*(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + 16) + 16))
  {

    sub_21E52F7C4(a1);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL sub_21E54A0B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_21E57B5EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 56);
  if (v9)
  {
    v10 = v9;
    v11 = sub_21E57B66C();
    v12 = [v10 matchesInString:v11 options:0 range:{0, MEMORY[0x223D5CBF0](a1, a2)}];

    sub_21E54A300();
    sub_21E57B78C();

    v13 = sub_21E5351E4();

    return v13 != 0;
  }

  else
  {
    sub_21E57B5BC();
    v15 = sub_21E57B5DC();
    v16 = sub_21E57B86C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21E527000, v15, v16, "Was not able to initialize an NSDataDetector with checking type 'phoneNumber'", v17, 2u);
      MEMORY[0x223D5D740](v17, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }
}

uint64_t sub_21E54A294()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_21E54A300()
{
  result = qword_2812254E0;
  if (!qword_2812254E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812254E0);
  }

  return result;
}

void sub_21E54A344(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_97_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_21E543BB0(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_233();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_21E54A3EC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_21E54A4B4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_97_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_21E543C5C(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_233();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_21E54A558(uint64_t a1)
{
  result = OUTLINED_FUNCTION_97_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_21E543CEC();
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_21E57AF9C();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_21E54A648@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_21E54AD24(v1 + 192, &v4);
  if (v5)
  {
    return sub_21E529804(&v4, a1);
  }

  sub_21E53FF8C(&v4, &qword_27CEC8BF8, &qword_21E57D9A0);
  sub_21E54A700(v1, a1);
  sub_21E534F3C(a1, &v4);
  swift_beginAccess();
  sub_21E55BDFC(&v4, v1 + 192);
  return swift_endAccess();
}

uint64_t sub_21E54A700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DefaultInstalledAppProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21E55D538();
  sub_21E534F3C(a1 + 72, v8);

  v6 = sub_21E555E9C(v5, v8);
  a2[3] = type metadata accessor for DefaultEligibilityCriteria();
  a2[4] = &off_282F92F38;

  *a2 = v6;
  return result;
}

uint64_t sub_21E54A798()
{
  result = sub_21E57B2BC();
  qword_281226A08 = result;
  return result;
}

uint64_t sub_21E54A7B8()
{
  result = sub_21E54A7DC();
  qword_281226920 = result;
  *algn_281226928 = v1;
  return result;
}

uint64_t sub_21E54A7DC()
{
  v0 = sub_21E57B0EC();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;

  MEMORY[0x223D5CBD0](46, 0xE100000000000000);

  MEMORY[0x223D5CBD0](49, 0xE100000000000000);

  return v4;
}

uint64_t static SiriAutoCompleteIndexBuilder.currentOSBuildVersion.getter()
{
  if (qword_281226918 != -1)
  {
    OUTLINED_FUNCTION_130(&qword_281226918);
  }

  v0 = qword_281226920;

  return v0;
}

void sub_21E54A8BC()
{
  dword_281226A40 = 0;
  qword_281226A48 = 0;
  qword_281226A50 = 0xE000000000000000;
}

uint64_t SiriAutoCompleteIndexBuilder.__allocating_init()()
{
  v0 = sub_21E57B28C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  sub_21E57B27C();
  v7 = sub_21E57B2AC();
  v8 = sub_21E57B29C();
  v9 = sub_21E57B1CC();
  v32 = v10;
  v33 = v9;
  v11 = sub_21E57B56C();
  v12 = sub_21E57B55C();
  v13 = type metadata accessor for DefaultAutoCompleteSourceRunnerProvider();
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v14 = swift_allocObject();
  v41[3] = v7;
  v41[4] = MEMORY[0x277D55800];
  v41[0] = v8;
  v15 = v0;
  v40[3] = v0;
  v40[4] = MEMORY[0x277D557F8];
  boxed_opaque_existential_3 = __swift_allocate_boxed_opaque_existential_3(v40);
  (*(v2 + 16))(boxed_opaque_existential_3, v6, v0);
  v39[3] = v11;
  v39[4] = MEMORY[0x277D55890];
  v39[0] = v12;
  v38[3] = v13;
  v38[4] = &off_282F930C8;
  v38[0] = v14;
  type metadata accessor for SiriAutoCompleteIndexBuilder();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v38, v13);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v21;
  v37[3] = v13;
  v37[4] = &off_282F930C8;
  v37[0] = v23;
  *(v17 + 192) = 0u;
  *(v17 + 208) = 0u;
  *(v17 + 224) = 0;
  sub_21E534F3C(v41, v17 + 16);
  *(v17 + 56) = v33;
  *(v17 + 64) = v32;
  sub_21E534F3C(v40, v17 + 72);
  sub_21E534F3C(v39, v17 + 112);
  *(v17 + 232) = 0x4056800000000000;
  sub_21E534F3C(v37, v17 + 152);
  sub_21E54AD24(v42, &v34);
  if (v35)
  {
    sub_21E529804(&v34, v36);
    sub_21E534F3C(v36, &v34);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
    MEMORY[0x28223BE20](v24);
    OUTLINED_FUNCTION_14();
    v27 = (v26 - v25);
    (*(v28 + 16))(v26 - v25);
    sub_21E555FB8(*v27, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    sub_21E53FF8C(v42, &qword_27CEC8BF8, &qword_21E57D9A0);
    (*(v2 + 8))(v6, v15);
    v29 = OUTLINED_FUNCTION_213();
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    sub_21E53FF8C(v42, &qword_27CEC8BF8, &qword_21E57D9A0);
    (*(v2 + 8))(v6, v0);
    v30 = OUTLINED_FUNCTION_213();
    sub_21E53FF8C(v30, &qword_27CEC8BF8, &qword_21E57D9A0);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return v17;
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

uint64_t sub_21E54AD24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8BF8, &qword_21E57D9A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E54AD94()
{
  OUTLINED_FUNCTION_29();
  v1[12] = v2;
  v1[13] = v0;
  v1[14] = *v0;
  v3 = sub_21E57B53C();
  v1[15] = v3;
  OUTLINED_FUNCTION_6(v3);
  v1[16] = v4;
  v1[17] = OUTLINED_FUNCTION_159();
  v5 = sub_21E57B5EC();
  v1[18] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[19] = v6;
  v1[20] = OUTLINED_FUNCTION_187();
  v1[21] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E54AEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_190();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_225();
  a22 = v24;
  OUTLINED_FUNCTION_38_0((v24[13] + 72));
  v28 = sub_21E57B2CC();
  if (v28)
  {
    OUTLINED_FUNCTION_38_0((v24[13] + 112));
    v29 = sub_21E57B4BC();
    v31 = v30;
    v24[22] = v30;
    if (qword_281226930 != -1)
    {
      OUTLINED_FUNCTION_23_1(&qword_281226930);
    }

    os_unfair_lock_lock(&dword_281226A40);

    qword_281226A48 = v29;
    qword_281226A50 = v31;

    os_unfair_lock_unlock(&dword_281226A40);
    sub_21E57B5BC();

    v32 = sub_21E57B5DC();
    v33 = sub_21E57B85C();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v24[19];
    v36 = v24[18];
    if (v34)
    {
      a11 = v24[20];
      v37 = v24[12];
      v38 = OUTLINED_FUNCTION_57();
      a13 = OUTLINED_FUNCTION_206();
      *v38 = 136315394;
      v39 = sub_21E57BC2C();
      a10 = v36;
      v41 = sub_21E5553D8(v39, v40, &a13);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v42 = MEMORY[0x223D5CC90](v37, MEMORY[0x277D837D0]);
      sub_21E5553D8(v42, v43, &a13);
      OUTLINED_FUNCTION_93_0();

      *(v38 + 14) = v41;
      OUTLINED_FUNCTION_230();
      _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_39();

      (*(v35 + 8))(a11, a10);
    }

    else
    {

      v70 = OUTLINED_FUNCTION_200();
      v72(v70, v71);
    }

    type metadata accessor for AppLaunchSource(0);
    sub_21E54A648(v24 + 2);
    __swift_project_boxed_opaque_existential_1(v24 + 2, v24[5]);
    OUTLINED_FUNCTION_224();
    v24[23] = sub_21E55864C(v73, v74, v75, v76, v77);
    __swift_destroy_boxed_opaque_existential_1Tm(v24 + 2);
    type metadata accessor for AppShortcutsSource(0);
    sub_21E54A648(v24 + 7);
    OUTLINED_FUNCTION_242(v24 + 7, v24[10]);
    OUTLINED_FUNCTION_11(&dword_21E57D9B0);
    v88 = v78;
    v79 = swift_task_alloc();
    v24[24] = v79;
    *v79 = v24;
    v79[1] = sub_21E54B268;
    OUTLINED_FUNCTION_120();

    return v85(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, v88, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_182(v28);
    v49 = sub_21E57B5DC();
    v50 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_75_0(v50))
    {
      v51 = OUTLINED_FUNCTION_50();
      a13 = OUTLINED_FUNCTION_43();
      v52 = OUTLINED_FUNCTION_149(4.8149e-34);
      sub_21E5553D8(v52, v53, &a13);
      OUTLINED_FUNCTION_221();
      *(v51 + 4) = v25;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_30();
    }

    v59 = OUTLINED_FUNCTION_62_0();
    v60(v59);

    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_120();

    return v63(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_21E54B268()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_46_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v2 + 200) = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E54B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_225();
  v41 = v16[23];
  sub_21E54A3EC(v16[25], sub_21E5351E4, sub_21E543DD8, sub_21E555BA4);
  v17 = v41;
  os_unfair_lock_lock(&dword_281226A40);
  v18 = qword_281226A50;
  v39 = qword_281226A48;

  os_unfair_lock_unlock(&dword_281226A40);
  v42 = MEMORY[0x277D84F90];
  v19 = sub_21E529E5C(v17);
  v20 = v19;
  v21 = 0;
  v40 = v18;
  while (v20 != v21)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x223D5CE50](v21, v17);
      v22 = v19;
    }

    else
    {
      if (v21 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v22 = *(v17 + 8 * v21 + 32);
    }

    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return MEMORY[0x2821B7108](v19);
    }

    if (qword_281226988 != -1)
    {
      OUTLINED_FUNCTION_22_1();
      swift_once();
    }

    if ((sub_21E537304(v22) & 1) != 0 || (v23 = sub_21E57B43C(), !v24))
    {

      goto LABEL_21;
    }

    if (v23 == v39 && v24 == v18)
    {

LABEL_19:
      sub_21E57B98C();
      sub_21E57B9AC();
      sub_21E57B9BC();
      v19 = sub_21E57B99C();
      goto LABEL_20;
    }

    v26 = sub_21E57BB3C();

    if (v26)
    {
      goto LABEL_19;
    }

LABEL_20:
    v18 = v40;
LABEL_21:
    ++v21;
  }

  if (sub_21E529E5C(v42) && (sub_21E554A70() & 1) != 0)
  {
    v27 = v16[13];
    sub_21E57B52C();
    sub_21E57B50C();
    OUTLINED_FUNCTION_93_0();

    sub_21E57B51C();

    OUTLINED_FUNCTION_91_0((v27 + 16), *(v27 + 40));
    v28 = swift_task_alloc();
    v16[26] = v28;
    *v28 = v16;
    v28[1] = sub_21E54B6B0;
    OUTLINED_FUNCTION_57_0(v16[17]);
    OUTLINED_FUNCTION_120();

    return MEMORY[0x2821B7108](v19);
  }

  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_120();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, v16, v39, v40, v42, a14, a15, a16);
}

uint64_t sub_21E54B6B0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E54B798()
{
  OUTLINED_FUNCTION_99_0();
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = OUTLINED_FUNCTION_5();

  return v2(v1);
}

uint64_t sub_21E54B828(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_21E54B850()
{
  OUTLINED_FUNCTION_99_0();
  if (sub_21E554A70())
  {
    OUTLINED_FUNCTION_17_1(v2[3]);
    v3 = swift_task_alloc();
    v2[4] = v3;
    *v3 = v2;
    v3[1] = sub_21E54B938;
    v4 = OUTLINED_FUNCTION_57_0(v2[2]);

    return MEMORY[0x2821B7100](v4, v0, v1);
  }

  else
  {
    OUTLINED_FUNCTION_9_0();

    return v5(0);
  }
}

uint64_t sub_21E54B938()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  OUTLINED_FUNCTION_32();
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_9_0();

  return v5(v2);
}

uint64_t sub_21E54BA20()
{
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_114(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_43_0(v1);
  OUTLINED_FUNCTION_76_0();

  return sub_21E54BAB0();
}

uint64_t sub_21E54BAB0()
{
  OUTLINED_FUNCTION_29();
  *(v1 + 489) = v2;
  *(v1 + 488) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v0;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  *(v1 + 96) = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C40, &qword_21E57DBA8);
  *(v1 + 104) = OUTLINED_FUNCTION_159();
  v7 = sub_21E57B3DC();
  *(v1 + 112) = v7;
  OUTLINED_FUNCTION_6(v7);
  *(v1 + 120) = v8;
  *(v1 + 128) = OUTLINED_FUNCTION_187();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  v9 = sub_21E57B5EC();
  *(v1 + 152) = v9;
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 160) = v10;
  *(v1 + 168) = OUTLINED_FUNCTION_187();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_21E54BC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_91();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_231();
  a18 = v20;
  if (v20[10])
  {
    v24 = v20[9];
    v25 = v20[10];
  }

  else
  {
    OUTLINED_FUNCTION_38_0((v20[11] + 112));
    v24 = sub_21E57B4BC();
    v25 = v26;
  }

  v20[27] = v24;
  v20[28] = v25;
  __swift_project_boxed_opaque_existential_1((v20[11] + 72), *(v20[11] + 96));

  if (sub_21E57B2CC())
  {
    if (qword_281226930 != -1)
    {
      OUTLINED_FUNCTION_23_1(&qword_281226930);
    }

    os_unfair_lock_lock(&dword_281226A40);

    qword_281226A48 = v24;
    qword_281226A50 = v25;

    os_unfair_lock_unlock(&dword_281226A40);
    v27 = swift_task_alloc();
    v20[29] = v27;
    *v27 = v20;
    v27[1] = sub_21E54BEDC;
    OUTLINED_FUNCTION_55();

    return sub_21E553CE4();
  }

  else
  {

    sub_21E57B5BC();
    v30 = sub_21E57B5DC();
    v31 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_75_0(v31))
    {
      v32 = OUTLINED_FUNCTION_50();
      a9 = OUTLINED_FUNCTION_43();
      v33 = OUTLINED_FUNCTION_149(4.8149e-34);
      sub_21E5553D8(v33, v34, &a9);
      OUTLINED_FUNCTION_221();
      *(v32 + 4) = v21;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_30();
    }

    v40 = OUTLINED_FUNCTION_62_0();
    v41(v40);

    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_55();

    return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
  }
}

uint64_t sub_21E54BEDC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E54BFC4(__n128 a1)
{
  v165 = v3;
  v4 = *(*(v3 + 64) + 16);
  *(v3 + 248) = v4;
  if (!v4)
  {
LABEL_29:

    *(v3 + 424) = 0;
    *(v3 + 432) = 0;
    *(v3 + 440) = 0;
    v95 = *(v3 + 489);
    if (v95 == 2)
    {
      LOBYTE(v95) = sub_21E57B5AC();
      sub_21E57B59C();
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_115();
    }

    v97 = *(v3 + 216);
    v96 = *(v3 + 224);
    os_unfair_lock_lock(&dword_281226A40);
    OUTLINED_FUNCTION_188();
    os_unfair_lock_unlock(&dword_281226A40);
    v98 = v2 == v97 && v1 == v96;
    if (v98)
    {
    }

    else
    {
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_125();

      if ((v2 & 1) == 0)
      {

LABEL_41:
        OUTLINED_FUNCTION_17_1(*(v3 + 88));
        v109 = swift_task_alloc();
        v110 = OUTLINED_FUNCTION_117(v109);
        *v110 = v111;
        OUTLINED_FUNCTION_7_3(v110);
        OUTLINED_FUNCTION_102_0();

        return MEMORY[0x2821B7118](v112);
      }
    }

    sub_21E5502BC(*(v3 + 216), *(v3 + 224), v95 & 1);

    OUTLINED_FUNCTION_182(v99);
    sub_21E57B5DC();
    v100 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_75_0(v100))
    {
      v101 = OUTLINED_FUNCTION_106_0();
      *(OUTLINED_FUNCTION_29_0(v101, 1.5047e-36) + 10) = 0;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v102, v103, v104, v105, v106, 0x12u);
      OUTLINED_FUNCTION_30();
    }

    OUTLINED_FUNCTION_105_0();
    v107 = OUTLINED_FUNCTION_48_0();
    v108(v107);
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_62_0();
    sub_21E57B16C();
    goto LABEL_41;
  }

  v5 = 0;
  *(v3 + 456) = *MEMORY[0x277D55860];
  v6 = MEMORY[0x277D55858];
  *(v3 + 460) = *MEMORY[0x277D55868];
  *(v3 + 464) = *v6;
  *(v3 + 468) = *MEMORY[0x277D55878];
  v7 = MEMORY[0x277D55848];
  *(v3 + 472) = *MEMORY[0x277D55840];
  *(v3 + 476) = *v7;
  *(v3 + 480) = *MEMORY[0x277D55870];
  *(v3 + 484) = *MEMORY[0x277D55850];
  a1.n128_u64[0] = 136315394;
  v159 = a1;
  a1.n128_u64[0] = 136315138;
  v143 = a1;
  while (1)
  {
    *(v3 + 288) = 0;
    *(v3 + 296) = 0;
    *(v3 + 272) = 0;
    *(v3 + 280) = v5;
    *(v3 + 256) = 0;
    *(v3 + 264) = 0;
    v1 = *(v3 + 104);
    v8 = *(*(v3 + 64) + 8 * v5 + 32);
    sub_21E57B3BC();
    OUTLINED_FUNCTION_37_0();
    if (v98)
    {
      v9 = OUTLINED_FUNCTION_147();
      sub_21E53FF8C(v9, &qword_27CEC8C40, &qword_21E57DBA8);
      sub_21E57B5BC();
      v10 = sub_21E57B5DC();
      v11 = sub_21E57B86C();
      OUTLINED_FUNCTION_92_0(v11);
      OUTLINED_FUNCTION_53_0();
      if (v12)
      {
        v2 = *(v3 + 96);
        OUTLINED_FUNCTION_57();
        v13 = OUTLINED_FUNCTION_2_0();
        v21 = OUTLINED_FUNCTION_31_0(v13, v14, v15, v16, v17, v18, v19, v20, v143.n128_i64[0], v143.n128_i64[1], v148, v150, v153, v156, v159.n128_i32[0]);
        OUTLINED_FUNCTION_158(v21, v22);
        v23 = OUTLINED_FUNCTION_183();
        OUTLINED_FUNCTION_13_0(v23, v24, v25, v26, v27, v28, v29, v30, v144, v146, v149, v151, v154, v157, v159.n128_i64[0], v159.n128_i64[1], v160, v161, v162, v8);
        OUTLINED_FUNCTION_179(&dword_21E527000, v10, v31, "%s: buildIndividualSources cannot convert %lld to case in AutoCompletePhraseSource");
        OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_20();
      }

      v32 = OUTLINED_FUNCTION_52_0();
      v33(v32);
      goto LABEL_27;
    }

    (*(*(v3 + 120) + 32))(*(v3 + 144), *(v3 + 104), *(v3 + 112));
    sub_21E57B5BC();
    v34 = OUTLINED_FUNCTION_60();
    v162 = v35;
    v35(v34);
    v36 = sub_21E57B5DC();
    v37 = sub_21E57B85C();
    v38 = os_log_type_enabled(v36, v37);
    v1 = *(v3 + 200);
    v39 = *(v3 + 160);
    v161 = *(v3 + 152);
    v40 = *(v3 + 136);
    v41 = *(v3 + 120);
    if (v38)
    {
      LODWORD(v153) = v37;
      v152 = *(v3 + 112);
      v158 = *(v3 + 200);
      v1 = swift_slowAlloc();
      v42 = OUTLINED_FUNCTION_43();
      *v1 = OUTLINED_FUNCTION_35_0(v42, v43, v44, v45, v46, v47, v48, v49, v143.n128_i64[0], v143.n128_i64[1], v148, v152, v153, v158, *&v159).n128_u32[0];
      v50 = sub_21E57BC2C();
      v163 = v8;
      v52 = sub_21E5553D8(v50, v51, &v164);

      *(v1 + 4) = v52;
      *(v1 + 12) = 2048;
      v53 = sub_21E57B3CC();
      v54 = *(v41 + 8);
      (v54)(v40, v150);
      *(v1 + 14) = v53;
      v8 = v163;
      _os_log_impl(&dword_21E527000, v36, v153, "%s: buildIndividualSources %lld", v1, 0x16u);
      OUTLINED_FUNCTION_25_2();
      OUTLINED_FUNCTION_39();

      v57 = *(v39 + 8);
      v55 = v39 + 8;
      v56 = v57;
      v57(v156, v161);
    }

    else
    {
      v54 = *(v41 + 8);
      (v54)(*(v3 + 136), *(v3 + 112));

      v58 = *(v39 + 8);
      v55 = v39 + 8;
      v56 = v58;
      v58(v1, v161);
    }

    *(v3 + 304) = v54;
    v59 = OUTLINED_FUNCTION_12_1();
    v162(v59);
    v60 = OUTLINED_FUNCTION_51_0();
    v62 = v61(v60);
    if (v62 != v55)
    {
      break;
    }

    OUTLINED_FUNCTION_192(v62);
    v63 = sub_21E57B5DC();
    v64 = sub_21E57B85C();
    v65 = OUTLINED_FUNCTION_92_0(v64);
    v66 = *(v3 + 192);
    v67 = *(v3 + 152);
    v2 = *(v3 + 144);
    v68 = *(v3 + 112);
    if (!v65)
    {

      v56(v66, v67);
      v94 = OUTLINED_FUNCTION_94_0();
LABEL_26:
      v54(v94);
      goto LABEL_27;
    }

    v156 = *(v3 + 144);
    v2 = *(v3 + 96);
    v162 = v54;
    v69 = OUTLINED_FUNCTION_50();
    v161 = v56;
    v164 = OUTLINED_FUNCTION_43();
    v70 = OUTLINED_FUNCTION_107_0(v143.n128_f32[0]);
    v153 = v68;
    v72 = OUTLINED_FUNCTION_158(v70, v71);

    *(v69 + 4) = v72;
    _os_log_impl(&dword_21E527000, v63, v1, "%s: buildIndividualSources AssistantSuggestions source does not support individual rebuild", v69, 0xCu);
    OUTLINED_FUNCTION_25_2();
    OUTLINED_FUNCTION_31();

    v56(v66, v67);
    (v162)(v156, v153);
LABEL_27:
    OUTLINED_FUNCTION_30_0();
    if (v98)
    {
      goto LABEL_29;
    }
  }

  OUTLINED_FUNCTION_145();
  if (!v98)
  {
    OUTLINED_FUNCTION_144();
    if (v98)
    {
      v118 = swift_task_alloc();
      v119 = OUTLINED_FUNCTION_113(v118);
      *v119 = v120;
      OUTLINED_FUNCTION_3_6(v119);
      OUTLINED_FUNCTION_102_0();

      return sub_21E551824();
    }

    OUTLINED_FUNCTION_143();
    if (v98)
    {
      v122 = swift_task_alloc();
      v123 = OUTLINED_FUNCTION_135(v122);
      *v123 = v124;
      OUTLINED_FUNCTION_5_5(v123);
      OUTLINED_FUNCTION_102_0();

      return sub_21E5513E0();
    }

    OUTLINED_FUNCTION_142();
    if (v98)
    {
      v126 = swift_task_alloc();
      v127 = OUTLINED_FUNCTION_109(v126);
      *v127 = v128;
      OUTLINED_FUNCTION_0_3(v127);
      OUTLINED_FUNCTION_102_0();

      return sub_21E552628();
    }

    OUTLINED_FUNCTION_141();
    if (v98)
    {
      v130 = swift_task_alloc();
      v131 = OUTLINED_FUNCTION_137(v130);
      *v131 = v132;
      OUTLINED_FUNCTION_1_4(v131);
      OUTLINED_FUNCTION_102_0();

      return sub_21E553090();
    }

    OUTLINED_FUNCTION_140();
    if (v98)
    {
      v134 = swift_task_alloc();
      v135 = OUTLINED_FUNCTION_134(v134);
      *v135 = v136;
      OUTLINED_FUNCTION_4_5(v135);
      OUTLINED_FUNCTION_102_0();

      return sub_21E552160();
    }

    OUTLINED_FUNCTION_139();
    if (v98)
    {
      v138 = swift_task_alloc();
      v139 = OUTLINED_FUNCTION_136(v138);
      *v139 = v140;
      OUTLINED_FUNCTION_6_5(v139);
      OUTLINED_FUNCTION_102_0();

      return sub_21E553410();
    }

    OUTLINED_FUNCTION_191(v73);
    v74 = sub_21E57B5DC();
    v75 = sub_21E57B86C();
    v76 = OUTLINED_FUNCTION_92_0(v75);
    v156 = *(v3 + 184);
    v77 = *(v3 + 152);
    v2 = *(v3 + 144);
    v78 = *(v3 + 112);
    if (v76)
    {
      v155 = *(v3 + 144);
      v2 = *(v3 + 96);
      v162 = v54;
      v79 = OUTLINED_FUNCTION_57();
      v80 = OUTLINED_FUNCTION_43();
      v161 = v56;
      LODWORD(v88) = OUTLINED_FUNCTION_35_0(v80, v81, v82, v83, v84, v85, v86, v87, v143.n128_i64[0], v143.n128_i64[1], v148, v150, v155, v156, *&v159).n128_u32[0];
      v89 = OUTLINED_FUNCTION_107_0(v88);
      v150 = v78;
      v91 = OUTLINED_FUNCTION_158(v89, v90);

      *(v79 + 4) = v91;
      *(v79 + 12) = 2048;
      *(v79 + 14) = v8;
      OUTLINED_FUNCTION_207(&dword_21E527000, v74, v1, "%s: buildIndividualSources %lld is an unknown source", v145, v147);
      OUTLINED_FUNCTION_25_2();
      v54 = v162;
      OUTLINED_FUNCTION_39();

      v56(v156, v77);
      v93 = v150;
      v92 = v153;
    }

    else
    {

      v56(v156, v77);
      v92 = OUTLINED_FUNCTION_94_0();
    }

    (v54)(v92, v93);
    v94 = OUTLINED_FUNCTION_50_0();
    goto LABEL_26;
  }

  v114 = swift_task_alloc();
  v115 = OUTLINED_FUNCTION_138(v114);
  *v115 = v116;
  OUTLINED_FUNCTION_2_5(v115);
  OUTLINED_FUNCTION_102_0();

  return sub_21E5536A0();
}

uint64_t sub_21E54C8D4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v8 + 320) = v7;

  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E54D0D0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v1[5] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v8 + 336) = v7;

  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E54D8C8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E54E094()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E54E860()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 384) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E54F02C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E54F934()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E550100()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_21E5501E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_231();

  v22 = *(v12 + 424);

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_55();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

void sub_21E5502BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (a3)
  {
    v4 = "tokenAssetNotRegistered";
  }

  else
  {
    v4 = "rationTimeoutSeconds";
  }

  MEMORY[0x223D5CBD0](95, 0xE100000000000000);
  MEMORY[0x223D5CBD0](v3, v4 | 0x8000000000000000);

  MEMORY[0x223D5CBD0](95, 0xE100000000000000);
  if (qword_281226918 != -1)
  {
    OUTLINED_FUNCTION_130(&qword_281226918);
  }

  MEMORY[0x223D5CBD0](qword_281226920, *algn_281226928);
}

uint64_t sub_21E550394()
{
  OUTLINED_FUNCTION_29();
  *(v1 + 104) = v0;
  *(v1 + 352) = v2;
  *(v1 + 112) = *v0;
  v3 = sub_21E57B3DC();
  *(v1 + 120) = v3;
  OUTLINED_FUNCTION_6(v3);
  *(v1 + 128) = v4;
  *(v1 + 136) = OUTLINED_FUNCTION_187();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  v5 = swift_task_alloc();
  OUTLINED_FUNCTION_194(v5);
  v6 = sub_21E57B5EC();
  *(v1 + 192) = v6;
  OUTLINED_FUNCTION_6(v6);
  *(v1 + 200) = v7;
  *(v1 + 208) = OUTLINED_FUNCTION_187();
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_21E550530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_190();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_225();
  a22 = v24;
  OUTLINED_FUNCTION_38_0((*(v24 + 104) + 72));
  if ((sub_21E57B2CC() & 1) == 0)
  {
    sub_21E57B5BC();
    v28 = sub_21E57B5DC();
    v30 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_75_0(v30))
    {
LABEL_6:
      v31 = OUTLINED_FUNCTION_50();
      a13 = OUTLINED_FUNCTION_43();
      v32 = OUTLINED_FUNCTION_149(4.8149e-34);
      sub_21E5553D8(v32, v33, &a13);
      OUTLINED_FUNCTION_221();
      *(v31 + 4) = v25;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_30();
    }

LABEL_7:

    v39 = OUTLINED_FUNCTION_62_0();
    v40(v39);
    goto LABEL_8;
  }

  swift_getObjectType();
  if (sub_21E57B1BC())
  {
    sub_21E57B5BC();
    v28 = sub_21E57B5DC();
    v29 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_75_0(v29))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v50 = *(v24 + 104);
  OUTLINED_FUNCTION_38_0((v50 + 112));
  sub_21E57B4CC();
  if (v51)
  {
    sub_21E57B5BC();
    v52 = sub_21E57B5DC();
    v53 = sub_21E57B85C();
    v54 = OUTLINED_FUNCTION_89_0(v53);
    v55 = *(v24 + 232);
    v57 = *(v24 + 192);
    v56 = *(v24 + 200);
    if (v54)
    {
      v120 = *(v24 + 192);
      v58 = OUTLINED_FUNCTION_50();
      a13 = OUTLINED_FUNCTION_43();
      *v58 = 136315138;
      v59 = sub_21E57BC2C();
      v61 = sub_21E5553D8(v59, v60, &a13);

      *(v58 + 4) = v61;
      OUTLINED_FUNCTION_230();
      _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
      OUTLINED_FUNCTION_25_2();
      OUTLINED_FUNCTION_81_0();

      (*(v56 + 8))(v55, v120);
    }

    else
    {

      (*(v56 + 8))(v55, v57);
    }

    sub_21E57B5AC();
    sub_21E57B59C();
    OUTLINED_FUNCTION_60();
    sub_21E57B57C();
  }

  v67 = *(v24 + 352);
  OUTLINED_FUNCTION_38_0((v50 + 112));
  *(v24 + 256) = sub_21E57B4BC();
  *(v24 + 264) = v68;
  sub_21E57B5AC();
  sub_21E57B59C();
  v69 = sub_21E57B58C();

  if (v67 == 1 && (v69 & 1) == 0)
  {
    sub_21E57B59C();
    OUTLINED_FUNCTION_60();
    sub_21E57B57C();

    sub_21E57B59C();
    v69 = sub_21E57B58C();

    sub_21E57B5BC();

    v70 = sub_21E57B5DC();
    v71 = sub_21E57B85C();

    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v24 + 224);
    v74 = *(v24 + 192);
    v75 = *(v24 + 200);
    if (v72)
    {
      v117 = *(v24 + 224);
      v76 = swift_slowAlloc();
      a13 = OUTLINED_FUNCTION_206();
      *v76 = 136315650;
      v77 = sub_21E57BC2C();
      sub_21E5553D8(v77, v78, &a13);
      OUTLINED_FUNCTION_241();
      *(v76 + 4) = v74;
      *(v76 + 12) = 2080;
      v79 = OUTLINED_FUNCTION_60();
      *(v76 + 14) = sub_21E5553D8(v79, v80, v81);
      *(v76 + 22) = 1024;
      *(v76 + 24) = v69 & 1;
      _os_log_impl(&dword_21E527000, v70, v71, "%s: Attempted to update unregistered Morphun asset for locale %s onStartUpEvent, isAssetRegistered status for this locale: %{BOOL}d", v76, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_31();

      (*(v75 + 8))(v117, v74);
    }

    else
    {

      (*(v75 + 8))(v73, v74);
    }
  }

  *(v24 + 353) = v69 & 1;
  v82 = *(v24 + 352);
  v83 = OUTLINED_FUNCTION_60();
  sub_21E5502BC(v83, v84, v85);
  v88 = v87;
  if (v82 == 1)
  {
    v89 = v86;
    if (sub_21E554464(v86, v87))
    {

      sub_21E57B5BC();

      v90 = sub_21E57B5DC();
      v91 = sub_21E57B85C();

      v92 = os_log_type_enabled(v90, v91);
      v93 = *(v24 + 216);
      v95 = *(v24 + 192);
      v94 = *(v24 + 200);
      if (v92)
      {
        v96 = OUTLINED_FUNCTION_57();
        a13 = OUTLINED_FUNCTION_206();
        *v96 = 136315394;
        v97 = sub_21E57BC2C();
        v118 = v93;
        v99 = sub_21E5553D8(v97, v98, &a13);

        *(v96 + 4) = v99;
        *(v96 + 12) = 2080;
        v100 = sub_21E5553D8(v89, v88, &a13);

        *(v96 + 14) = v100;
        OUTLINED_FUNCTION_230();
        _os_log_impl(v101, v102, v103, v104, v105, 0x16u);
        OUTLINED_FUNCTION_170();
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_81_0();

        (*(v94 + 8))(v118, v95);
      }

      else
      {

        (*(v94 + 8))(v93, v95);
      }

LABEL_8:
      v115 = *(v24 + 152);
      v116 = *(v24 + 144);
      v119 = *(v24 + 136);

      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_120();

      return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, v115, v116, v119, a13, a14, a15, a16);
    }
  }

  *(v24 + 272) = sub_21E57B4FC();
  if (qword_281225EF8 != -1)
  {
    OUTLINED_FUNCTION_129(&qword_281225EF8);
  }

  v106 = *(v24 + 184);
  v107 = *(v24 + 120);
  v108 = *(v24 + 128);
  v109 = *(v24 + 104);
  *(v24 + 280) = qword_281226A08;
  sub_21E57B33C();
  OUTLINED_FUNCTION_199();
  sub_21E57B4EC();
  OUTLINED_FUNCTION_91_0((v109 + 16), *(v109 + 40));
  v110 = *MEMORY[0x277D55860];
  v111 = *(v108 + 104);
  *(v24 + 288) = v111;
  *(v24 + 296) = (v108 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v111(v106, v110, v107);
  v112 = swift_task_alloc();
  *(v24 + 304) = v112;
  *v112 = v24;
  v112[1] = sub_21E550CE0;
  OUTLINED_FUNCTION_57_0(*(v24 + 184));
  OUTLINED_FUNCTION_120();

  return MEMORY[0x2821B7120](v113);
}

uint64_t sub_21E550CE0()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_46_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;

  *(v2 + 312) = *(v5 + 8);
  *(v2 + 320) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = OUTLINED_FUNCTION_62_0();
  v9(v8);
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_21E550E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_234();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  sub_21E57B5BC();

  v31 = sub_21E57B5DC();
  v32 = sub_21E57B85C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v28 + 256);
    v34 = *(v28 + 200);
    v75 = *(v28 + 208);
    v72 = *(v28 + 264);
    v74 = *(v28 + 192);
    v35 = *(v28 + 352);
    v36 = swift_slowAlloc();
    a17 = OUTLINED_FUNCTION_206();
    *v36 = 136315650;
    v37 = sub_21E57BC2C();
    v39 = sub_21E5553D8(v37, v38, &a17);

    *(v36 + 4) = v39;
    *(v36 + 12) = 1024;
    *(v36 + 14) = v35;
    *(v36 + 18) = 2080;
    *(v36 + 20) = sub_21E5553D8(v33, v72, &a17);
    OUTLINED_FUNCTION_12();
    _os_log_impl(v40, v41, v42, v43, v44, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_30();

    (*(v34 + 8))(v75, v74);
  }

  else
  {
    OUTLINED_FUNCTION_229();

    v45 = OUTLINED_FUNCTION_59_0();
    v46(v45);
  }

  v47 = *(v28 + 312);
  v48 = *(v28 + 288);
  v50 = *(v28 + 176);
  v49 = *(v28 + 184);
  v68 = *(v28 + 168);
  v69 = *(v28 + 160);
  v70 = *(v28 + 152);
  v71 = *(v28 + 144);
  v73 = *(v28 + 136);
  v51 = *(v28 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C00, &qword_21E57DF60);
  inited = swift_initStackObject();
  *(v28 + 328) = inited;
  *(inited + 16) = xmmword_21E57D980;
  (v48)(v49, *MEMORY[0x277D55878], v51);
  v53 = sub_21E57B3CC();
  v47(v49, v51);
  *(inited + 32) = v53;
  v54 = OUTLINED_FUNCTION_202();
  v48(v54);
  sub_21E57B3CC();
  v55 = OUTLINED_FUNCTION_96_0();
  (v47)(v55);
  *(inited + 40) = v50;
  v56 = OUTLINED_FUNCTION_202();
  v48(v56);
  sub_21E57B3CC();
  v57 = OUTLINED_FUNCTION_96_0();
  (v47)(v57);
  *(inited + 48) = v68;
  v58 = OUTLINED_FUNCTION_202();
  v48(v58);
  sub_21E57B3CC();
  v59 = OUTLINED_FUNCTION_96_0();
  (v47)(v59);
  *(inited + 56) = v69;
  v60 = OUTLINED_FUNCTION_202();
  v48(v60);
  sub_21E57B3CC();
  v61 = OUTLINED_FUNCTION_96_0();
  (v47)(v61);
  *(inited + 64) = v70;
  v62 = OUTLINED_FUNCTION_202();
  v48(v62);
  sub_21E57B3CC();
  v63 = OUTLINED_FUNCTION_96_0();
  (v47)(v63);
  *(inited + 72) = v71;
  (v48)(v73, *MEMORY[0x277D55868], v51);
  v64 = sub_21E57B3CC();
  v47(v73, v51);
  *(inited + 80) = v64;
  v65 = swift_task_alloc();
  *(v28 + 336) = v65;
  *v65 = v28;
  v65[1] = sub_21E5511B4;
  OUTLINED_FUNCTION_162();

  return sub_21E54BAB0();
}

uint64_t sub_21E5511B4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *(v6 + 344) = v5;

  swift_setDeallocating();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E5512D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_225();
  sub_21E57B33C();
  OUTLINED_FUNCTION_199();
  sub_21E57B4DC();
  v26 = v16[19];
  v27 = v16[18];
  v28 = v16[17];
  v29 = v16[43];

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_120();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, v27, v28, v29, a14, a15, a16);
}

uint64_t sub_21E5513E0()
{
  OUTLINED_FUNCTION_29();
  v4 = OUTLINED_FUNCTION_173(v1, v2, v3);
  v0[21] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[22] = v5;
  v6 = OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_194(v6);
  v7 = sub_21E57B3DC();
  v0[24] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[25] = v8;
  v0[26] = OUTLINED_FUNCTION_159();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E5514C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_155();
  v12 = v10[25];
  v11 = v10[26];
  v13 = v10[24];
  v14 = v10[20];
  type metadata accessor for AppLaunchHistogramBuilder();
  v10[27] = sub_21E5687D0();
  OUTLINED_FUNCTION_91_0((v14 + 152), *(v14 + 176));
  (*(v12 + 104))(v11, *MEMORY[0x277D55878], v13);

  v15 = OUTLINED_FUNCTION_200();
  sub_21E55F2C0(v15, v16, v17);

  v18 = OUTLINED_FUNCTION_62_0();
  v19(v18);
  if (v10[10])
  {
    OUTLINED_FUNCTION_124();
    sub_21E57B34C();
    OUTLINED_FUNCTION_18_2();
    v20 = swift_task_alloc();
    v10[28] = v20;
    *v20 = v10;
    v20[1] = sub_21E5516BC;
    OUTLINED_FUNCTION_8_2(v10[20]);
    OUTLINED_FUNCTION_126();

    return sub_21E55A0E4(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    sub_21E53FF8C((v10 + 7), &qword_27CEC8C18, &qword_21E57DB60);
    sub_21E57B5BC();
    v31 = sub_21E57B5DC();
    v32 = sub_21E57B85C();
    OUTLINED_FUNCTION_75_0(v32);
    OUTLINED_FUNCTION_226();
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_176(v34);
      OUTLINED_FUNCTION_12();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_30();
    }

    v40 = OUTLINED_FUNCTION_62_0();
    v41(v40);
    OUTLINED_FUNCTION_239();

    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_172();

    return v45(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10);
  }
}

uint64_t sub_21E5516BC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_46_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 232) = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E5517AC()
{
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[29];

  OUTLINED_FUNCTION_201();
  v3 = v0[27];

  return v2(v3, v1);
}

uint64_t sub_21E551824()
{
  OUTLINED_FUNCTION_29();
  v1[36] = v2;
  v1[37] = v0;
  v1[34] = v3;
  v1[35] = v4;
  v1[38] = *v0;
  v5 = sub_21E57B5EC();
  v1[39] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[40] = v6;
  v1[41] = OUTLINED_FUNCTION_187();
  v1[42] = swift_task_alloc();
  v7 = sub_21E57B3DC();
  v1[43] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[44] = v8;
  v1[45] = OUTLINED_FUNCTION_159();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E55194C()
{
  v2 = *(v0 + 360);
  OUTLINED_FUNCTION_90_0(*(v0 + 296));
  v3 = OUTLINED_FUNCTION_49_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_157();
  sub_21E55F2C0(v5, v6, v7);
  v8 = OUTLINED_FUNCTION_59_0();
  v9(v8);
  if (*(v0 + 136))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C20, &qword_21E57DB78);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C38, &qword_21E57DBA0);
    if (OUTLINED_FUNCTION_215(v10))
    {
      if (*(v0 + 88))
      {
        v11 = *(v0 + 296);
        sub_21E53C0D0((v0 + 64), (v0 + 16));
        OUTLINED_FUNCTION_38_0((v11 + 72));
        if (sub_21E57B2DC())
        {
          OUTLINED_FUNCTION_238();
          sub_21E54A648((v0 + 232));
          sub_21E57B39C();
          __swift_project_boxed_opaque_existential_1((v0 + 232), *(v0 + 256));
          v12 = swift_task_alloc();
          *(v0 + 368) = v12;
          *v12 = v0;
          v12[1] = sub_21E551E10;
          OUTLINED_FUNCTION_54();

          return sub_21E55A0E4(v13, v14, v15, v16, v17, v18, v19, v20);
        }

        else
        {
          sub_21E57B5BC();
          v30 = sub_21E57B5DC();
          v31 = sub_21E57B85C();
          v32 = OUTLINED_FUNCTION_75_0(v31);
          v33 = *(v0 + 312);
          if (v32)
          {
            v34 = OUTLINED_FUNCTION_50();
            v49 = OUTLINED_FUNCTION_43();
            v35 = OUTLINED_FUNCTION_149(4.8149e-34);
            sub_21E5553D8(v35, v36, &v49);
            OUTLINED_FUNCTION_221();
            *(v34 + 4) = v1;
            OUTLINED_FUNCTION_12();
            _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
            OUTLINED_FUNCTION_41_0();
            OUTLINED_FUNCTION_30();
          }

          v42 = OUTLINED_FUNCTION_62_0();
          v43(v42);
          sub_21E54A648((v0 + 152));
          sub_21E57B39C();
          OUTLINED_FUNCTION_242((v0 + 152), *(v0 + 176));
          v44 = type metadata accessor for DefaultEligibilityCriteria();
          OUTLINED_FUNCTION_210(v44, &off_282F92F38);
          OUTLINED_FUNCTION_91_0((v0 + 16), v33);
          OUTLINED_FUNCTION_73_0();
          v47 = (v45 + *v45);
          v46 = swift_task_alloc();
          *(v0 + 384) = v46;
          *v46 = v0;
          v46[1] = sub_21E551FB0;
          OUTLINED_FUNCTION_224();

          return v47();
        }
      }
    }

    else
    {
      *(v0 + 80) = 0u;
      *(v0 + 96) = 0u;
      *(v0 + 64) = 0u;
    }
  }

  else
  {
    sub_21E53FF8C(v0 + 112, &qword_27CEC8C18, &qword_21E57DB60);
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
  }

  sub_21E53FF8C(v0 + 64, &qword_27CEC8C30, &qword_21E57DB98);
  sub_21E57B5BC();
  v23 = sub_21E57B5DC();
  v24 = sub_21E57B85C();
  if (OUTLINED_FUNCTION_92_0(v24))
  {
    v25 = OUTLINED_FUNCTION_178();
    *v25 = 0;
    _os_log_impl(&dword_21E527000, v23, v2, "Could not get AppIntentTranscriptSource runner in order to fetch phrases. Returning 0 AppIntentTranscript phrases", v25, 2u);
    OUTLINED_FUNCTION_86_0();
  }

  v26 = OUTLINED_FUNCTION_59_0();
  v27(v26);
  type metadata accessor for SiriAutoCompleteHistogram();
  v28 = swift_allocObject();
  *(v28 + 16) = MEMORY[0x277D84F98];
  *(v28 + 24) = 2;

  OUTLINED_FUNCTION_201();

  return v29(v28, 0);
}

uint64_t sub_21E551E10()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_46_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 376) = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 232));
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E551F00()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_238();
  v1 = OUTLINED_FUNCTION_62_0();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_201();
  v3 = OUTLINED_FUNCTION_90();

  return v4(v3);
}

uint64_t sub_21E551FB0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_21E5520A0()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_238();
  v1 = OUTLINED_FUNCTION_62_0();
  v3 = v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_201();

  return v4(v3, 0);
}

uint64_t sub_21E552160()
{
  OUTLINED_FUNCTION_29();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = sub_21E57B5EC();
  v1[22] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[23] = v7;
  v1[24] = OUTLINED_FUNCTION_159();
  v8 = sub_21E57B3DC();
  v1[25] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[26] = v9;
  v1[27] = OUTLINED_FUNCTION_159();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_21E552258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_38_0((*(v10 + 168) + 72));
  if (sub_21E57B2DC())
  {
    if (*(v10 + 144))
    {
      v11 = *(v10 + 144);
    }

    else
    {
      type metadata accessor for AppLaunchHistogramBuilder();
      v11 = sub_21E5687D0();
    }

    *(v10 + 224) = v11;
    v13 = *(v10 + 208);
    v12 = *(v10 + 216);
    v14 = *(v10 + 200);
    __swift_project_boxed_opaque_existential_1((*(v10 + 168) + 152), *(*(v10 + 168) + 176));
    (*(v13 + 104))(v12, *MEMORY[0x277D55870], v14);

    v15 = OUTLINED_FUNCTION_60();
    sub_21E55F2C0(v15, v16, v17);

    v18 = OUTLINED_FUNCTION_94_0();
    v19(v18);
    if (*(v10 + 80))
    {
      sub_21E529804((v10 + 56), v10 + 16);
      sub_21E54A648((v10 + 96));
      sub_21E57B3AC();
      OUTLINED_FUNCTION_18_2();
      v20 = swift_task_alloc();
      *(v10 + 232) = v20;
      *v20 = v10;
      v20[1] = sub_21E5524C0;
      OUTLINED_FUNCTION_8_2(*(v10 + 168));
      OUTLINED_FUNCTION_126();

      return sub_21E55A0E4(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    sub_21E53FF8C(v10 + 56, &qword_27CEC8C18, &qword_21E57DB60);
    sub_21E57B5BC();
    v31 = sub_21E57B5DC();
    v32 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_48(v32))
    {
      *OUTLINED_FUNCTION_178() = 0;
      OUTLINED_FUNCTION_35();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_20();
    }

    else
    {
    }

    v38 = OUTLINED_FUNCTION_94_0();
    v39(v38);
  }

  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_172();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_21E5524C0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_46_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 240) = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E5525B0()
{
  OUTLINED_FUNCTION_29();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OUTLINED_FUNCTION_5();

  return v2(v1);
}

uint64_t sub_21E552628()
{
  OUTLINED_FUNCTION_29();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v1[44] = v5;
  v6 = sub_21E57B5EC();
  v1[49] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[50] = v7;
  v1[51] = OUTLINED_FUNCTION_187();
  v1[52] = swift_task_alloc();
  v8 = sub_21E57B3DC();
  v1[53] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[54] = v9;
  v1[55] = OUTLINED_FUNCTION_159();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_21E55272C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_155();
  v15 = *(v14 + 360);
  if (v15)
  {
    *(v14 + 456) = v15;
    v17 = *(v14 + 432);
    v16 = *(v14 + 440);
    v18 = *(v14 + 424);
    OUTLINED_FUNCTION_90_0(*(v14 + 384));
    (*(v17 + 104))(v16, *MEMORY[0x277D55840], v18);
    swift_retain_n();
    v19 = OUTLINED_FUNCTION_60();
    sub_21E55F2C0(v19, v20, v21);

    v22 = OUTLINED_FUNCTION_94_0();
    v23(v22);
    if (*(v14 + 296))
    {
      sub_21E529804((v14 + 272), v14 + 232);
      sub_21E54A648((v14 + 312));
      sub_21E57B35C();
      OUTLINED_FUNCTION_175();
      v24 = swift_task_alloc();
      *(v14 + 464) = v24;
      *v24 = v14;
      v24[1] = sub_21E552F18;
      OUTLINED_FUNCTION_8_2(*(v14 + 384));
      OUTLINED_FUNCTION_126();

      return sub_21E55A0E4(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    sub_21E53FF8C(v14 + 272, &qword_27CEC8C18, &qword_21E57DB60);
    sub_21E57B5BC();
    v57 = sub_21E57B5DC();
    v58 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_48(v58))
    {
      *OUTLINED_FUNCTION_178() = 0;
      OUTLINED_FUNCTION_35();
      _os_log_impl(v59, v60, v61, v62, v63, 2u);
      OUTLINED_FUNCTION_20();
    }

    v64 = OUTLINED_FUNCTION_94_0();
    v65(v64);
    goto LABEL_20;
  }

  v35 = *(v14 + 432);
  v36 = *(v14 + 424);
  OUTLINED_FUNCTION_90_0(*(v14 + 384));
  v37 = OUTLINED_FUNCTION_49_0();
  v38(v37);
  v39 = OUTLINED_FUNCTION_157();
  sub_21E55F2C0(v39, v40, v41);
  v42 = OUTLINED_FUNCTION_59_0();
  v43(v42);
  if (!*(v14 + 136))
  {
    sub_21E53FF8C(v14 + 112, &qword_27CEC8C18, &qword_21E57DB60);
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C20, &qword_21E57DB78);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C38, &qword_21E57DBA0);
  if ((OUTLINED_FUNCTION_215(v44) & 1) == 0)
  {
    *(v14 + 80) = 0u;
    *(v14 + 96) = 0u;
    *(v14 + 64) = 0u;
    goto LABEL_17;
  }

  if (!*(v14 + 88))
  {
LABEL_17:
    sub_21E53FF8C(v14 + 64, &qword_27CEC8C30, &qword_21E57DB98);
    sub_21E57B5BC();
    v66 = sub_21E57B5DC();
    v67 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_75_0(v67))
    {
      v68 = OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_176(v68);
      OUTLINED_FUNCTION_12();
      _os_log_impl(v69, v70, v71, v72, v73, 2u);
      OUTLINED_FUNCTION_30();
    }

    v74 = OUTLINED_FUNCTION_62_0();
    v75(v74);
LABEL_20:

    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_172();

    return v78(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10);
  }

  sub_21E53C0D0((v14 + 64), (v14 + 16));
  sub_21E54A648((v14 + 152));
  sub_21E57B39C();
  OUTLINED_FUNCTION_242((v14 + 152), *(v14 + 176));
  v45 = type metadata accessor for DefaultEligibilityCriteria();
  OUTLINED_FUNCTION_210(v45, &off_282F92F38);
  OUTLINED_FUNCTION_91_0((v14 + 16), v36);
  OUTLINED_FUNCTION_73_0();
  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_117(v46);
  *v47 = v48;
  v47[1] = sub_21E552BBC;
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_172();

  return v54(v49, v50, v51, v52, v53, v54, v55, v56, v35 + 16, a10, a11, a12, a13, a14);
}

uint64_t sub_21E552BBC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_21E552CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_238();
  v11 = OUTLINED_FUNCTION_200();
  v13 = v12(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 19);
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 2);
  v10[57] = v13;
  v15 = v10[54];
  v14 = v10[55];
  v16 = v10[53];
  v17 = v10[48];

  OUTLINED_FUNCTION_91_0((v17 + 152), *(v17 + 176));
  (*(v15 + 104))(v14, *MEMORY[0x277D55840], v16);
  swift_retain_n();
  sub_21E55F2C0(v14, v13, v10 + 34);

  v18 = OUTLINED_FUNCTION_48_0();
  v19(v18);
  if (v10[37])
  {
    sub_21E529804(v10 + 17, (v10 + 29));
    sub_21E54A648(v10 + 39);
    sub_21E57B35C();
    OUTLINED_FUNCTION_175();
    v20 = swift_task_alloc();
    v10[58] = v20;
    *v20 = v10;
    v20[1] = sub_21E552F18;
    OUTLINED_FUNCTION_8_2(v10[48]);
    OUTLINED_FUNCTION_126();

    return sub_21E55A0E4(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    sub_21E53FF8C((v10 + 34), &qword_27CEC8C18, &qword_21E57DB60);
    sub_21E57B5BC();
    v31 = sub_21E57B5DC();
    v32 = sub_21E57B85C();
    if (OUTLINED_FUNCTION_48(v32))
    {
      *OUTLINED_FUNCTION_178() = 0;
      OUTLINED_FUNCTION_35();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_20();
    }

    v38 = OUTLINED_FUNCTION_94_0();
    v39(v38);

    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_172();

    return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
  }
}

uint64_t sub_21E552F18()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_46_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 472) = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 312));
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E553008()
{
  OUTLINED_FUNCTION_99_0();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));

  v1 = OUTLINED_FUNCTION_5();

  return v2(v1);
}

uint64_t sub_21E553090()
{
  OUTLINED_FUNCTION_29();
  v4 = OUTLINED_FUNCTION_173(v1, v2, v3);
  v0[21] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[22] = v5;
  v6 = OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_194(v6);
  v7 = sub_21E57B3DC();
  v0[24] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[25] = v8;
  v0[26] = OUTLINED_FUNCTION_159();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E553174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_90_0(v10[20]);
  v11 = OUTLINED_FUNCTION_49_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_157();
  sub_21E55F2C0(v13, v14, v15);
  v16 = OUTLINED_FUNCTION_59_0();
  v17(v16);
  if (v10[10])
  {
    OUTLINED_FUNCTION_124();
    sub_21E57B37C();
    OUTLINED_FUNCTION_18_2();
    v18 = swift_task_alloc();
    v10[27] = v18;
    *v18 = v10;
    v18[1] = sub_21E553320;
    OUTLINED_FUNCTION_8_2(v10[20]);
    OUTLINED_FUNCTION_126();

    return sub_21E55A0E4(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    sub_21E53FF8C((v10 + 7), &qword_27CEC8C18, &qword_21E57DB60);
    sub_21E57B5BC();
    v29 = sub_21E57B5DC();
    v30 = sub_21E57B85C();
    OUTLINED_FUNCTION_75_0(v30);
    OUTLINED_FUNCTION_226();
    if (v31)
    {
      v32 = OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_176(v32);
      OUTLINED_FUNCTION_12();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_30();
    }

    v38 = OUTLINED_FUNCTION_62_0();
    v39(v38);
    OUTLINED_FUNCTION_239();

    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_172();

    return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
  }
}

uint64_t sub_21E553320()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_46_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 224) = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E553410()
{
  OUTLINED_FUNCTION_29();
  v4 = OUTLINED_FUNCTION_173(v1, v2, v3);
  v0[21] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[22] = v5;
  v6 = OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_194(v6);
  v7 = sub_21E57B3DC();
  v0[24] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[25] = v8;
  v0[26] = OUTLINED_FUNCTION_159();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E5534F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_90_0(v10[20]);
  v11 = OUTLINED_FUNCTION_49_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_157();
  sub_21E55F2C0(v13, v14, v15);
  v16 = OUTLINED_FUNCTION_59_0();
  v17(v16);
  if (v10[10])
  {
    OUTLINED_FUNCTION_124();
    sub_21E57B38C();
    OUTLINED_FUNCTION_18_2();
    v18 = swift_task_alloc();
    v10[27] = v18;
    *v18 = v10;
    v18[1] = sub_21E553320;
    OUTLINED_FUNCTION_8_2(v10[20]);
    OUTLINED_FUNCTION_126();

    return sub_21E55A0E4(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    sub_21E53FF8C((v10 + 7), &qword_27CEC8C18, &qword_21E57DB60);
    sub_21E57B5BC();
    v29 = sub_21E57B5DC();
    v30 = sub_21E57B85C();
    OUTLINED_FUNCTION_75_0(v30);
    OUTLINED_FUNCTION_226();
    if (v31)
    {
      v32 = OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_176(v32);
      OUTLINED_FUNCTION_12();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_30();
    }

    v38 = OUTLINED_FUNCTION_62_0();
    v39(v38);
    OUTLINED_FUNCTION_239();

    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_172();

    return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
  }
}

uint64_t sub_21E5536A0()
{
  OUTLINED_FUNCTION_29();
  v4 = OUTLINED_FUNCTION_173(v1, v2, v3);
  v0[21] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[22] = v5;
  v6 = OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_194(v6);
  v7 = sub_21E57B3DC();
  v0[24] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[25] = v8;
  v0[26] = OUTLINED_FUNCTION_159();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_21E553784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_90_0(v10[20]);
  v11 = OUTLINED_FUNCTION_49_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_157();
  sub_21E55F2C0(v13, v14, v15);
  v16 = OUTLINED_FUNCTION_59_0();
  v17(v16);
  if (v10[10])
  {
    OUTLINED_FUNCTION_124();
    sub_21E57B36C();
    OUTLINED_FUNCTION_18_2();
    v18 = swift_task_alloc();
    v10[27] = v18;
    *v18 = v10;
    v18[1] = sub_21E553930;
    OUTLINED_FUNCTION_8_2(v10[20]);
    OUTLINED_FUNCTION_126();

    return sub_21E55A0E4(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    sub_21E53FF8C((v10 + 7), &qword_27CEC8C18, &qword_21E57DB60);
    sub_21E57B5BC();
    v29 = sub_21E57B5DC();
    v30 = sub_21E57B85C();
    OUTLINED_FUNCTION_75_0(v30);
    OUTLINED_FUNCTION_226();
    if (v31)
    {
      v32 = OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_176(v32);
      OUTLINED_FUNCTION_12();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_30();
    }

    v38 = OUTLINED_FUNCTION_62_0();
    v39(v38);
    OUTLINED_FUNCTION_239();

    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_172();

    return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
  }
}

uint64_t sub_21E553930()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_46_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 224) = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_21E553A20()
{
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OUTLINED_FUNCTION_5();

  return v2(v1);
}

uint64_t sub_21E553A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21E553AB8);
}

uint64_t sub_21E553AB8()
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_91_0(*(v0 + 24), *(*(v0 + 24) + 24));
  OUTLINED_FUNCTION_73_0();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_21E553BD8;
  v3 = OUTLINED_FUNCTION_57_0(*(v0 + 32));

  return v5(v3);
}

uint64_t sub_21E553BD8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E553CE4()
{
  OUTLINED_FUNCTION_29();
  v1[2] = v0;
  v2 = sub_21E57B5EC();
  v1[3] = v2;
  OUTLINED_FUNCTION_6(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_159();
  v4 = type metadata accessor for SiriAutoCompleteIndexBuilder.TapCountInfo(0);
  v1[6] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_187();
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C08, &qword_21E57DB50);
  v1[10] = OUTLINED_FUNCTION_159();
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_21E553E10()
{
  OUTLINED_FUNCTION_99_0();
  v1 = v0[2];
  v2 = MEMORY[0x277D84F90];
  v0[11] = sub_21E57B62C();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_87_0(v5);

  return MEMORY[0x2821B7110](v2, v3, v4);
}

uint64_t sub_21E553EF0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

void sub_21E553FD8()
{
  v52 = v0;
  v49 = sub_21E529E5C(v0[13]);
  if (!v49)
  {
LABEL_25:

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_102_0();

    __asm { BRAA            X2, X16 }
  }

  v1 = 0;
  v48 = v0[13] & 0xC000000000000001;
  v47 = (v0[4] + 8);
  v2 = v0[11];
  v46 = 136315138;
  v50 = v0;
  while (1)
  {
    if (v48)
    {
      MEMORY[0x223D5CE50](v1, v0[13]);
    }

    else
    {
      OUTLINED_FUNCTION_232();
      if (v1 >= v3)
      {
        goto LABEL_33;
      }
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    v5 = sub_21E57B45C();
    if (*(v2 + 16))
    {
      sub_21E52F7C4(v5);
      v7 = v6;

      if (v7)
      {
        v8 = v0[10];
        v9 = v0[6];
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_208(v10);
        __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
        sub_21E53FF8C(v8, &qword_27CEC8C08, &qword_21E57DB50);
        sub_21E57B5BC();

        v11 = sub_21E57B5DC();
        v12 = sub_21E57B86C();

        v13 = os_log_type_enabled(v11, v12);
        v14 = v0[5];
        v15 = v0[3];
        if (v13)
        {
          v16 = OUTLINED_FUNCTION_50();
          v51 = OUTLINED_FUNCTION_43();
          *v16 = v46;
          v17 = sub_21E57B45C();
          v19 = sub_21E5553D8(v17, v18, &v51);

          *(v16 + 4) = v19;
          v4 = v1 + 1;
          OUTLINED_FUNCTION_237(&dword_21E527000, v11, v12, "[warning] Duplicates in index, phrase: %s", v46);
          OUTLINED_FUNCTION_95_0();
          OUTLINED_FUNCTION_39();
        }

        else
        {
        }

        (*v47)(v14, v15);
        goto LABEL_24;
      }
    }

    else
    {
    }

    v20 = v0[9];
    v21 = v0[10];
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v0[6]);
    sub_21E53FF8C(v21, &qword_27CEC8C08, &qword_21E57DB50);
    v22 = sub_21E57B45C();
    v24 = v23;
    v25 = sub_21E57B48C();
    sub_21E57B41C();
    *v20 = v25;
    v26 = OUTLINED_FUNCTION_200();
    sub_21E559FB8(v26, v27);
    swift_isUniquelyReferenced_nonNull_native();
    v51 = v2;
    v28 = sub_21E52F7C4(v22);
    if (__OFADD__(*(v2 + 16), (v29 & 1) == 0))
    {
      goto LABEL_32;
    }

    v30 = v28;
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C10, &qword_21E57DB58);
    if (sub_21E57BA1C())
    {
      v32 = sub_21E52F7C4(v22);
      if ((v31 & 1) != (v33 & 1))
      {
        OUTLINED_FUNCTION_102_0();

        sub_21E57BB6C();
        return;
      }

      v30 = v32;
    }

    v34 = v50[8];
    if (v31)
    {

      v2 = v51;
      OUTLINED_FUNCTION_60_0();
      sub_21E55A01C(v34, v35 + v36 * v30);
    }

    else
    {
      v2 = v51;
      *(v51 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v37 = (*(v2 + 48) + 16 * v30);
      *v37 = v22;
      v37[1] = v24;
      OUTLINED_FUNCTION_60_0();
      sub_21E559FB8(v34, v38 + v39 * v30);

      v40 = *(v2 + 16);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_34;
      }

      *(v2 + 16) = v42;
    }

    v4 = v1 + 1;
LABEL_24:
    v0 = v50;
    ++v1;
    if (v4 == v49)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_21E554464(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E57AC4C();
  OUTLINED_FUNCTION_0();
  v58 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v59 = v11;
  v60 = v10;
  v12 = MEMORY[0x28223BE20](v10);
  v57 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v56 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  swift_getObjectType();
  v18 = sub_21E57B15C();
  v20 = v19;
  if (v18 != a1 || v19 != a2)
  {
    v22 = v18;
    if ((sub_21E57BB3C() & 1) == 0)
    {
      sub_21E57B5BC();

      v41 = sub_21E57B5DC();
      v42 = sub_21E57B85C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_57();
        v61 = OUTLINED_FUNCTION_206();
        *v43 = 136315394;
        v44 = sub_21E5553D8(v22, v20, &v61);

        *(v43 + 4) = v44;
        *(v43 + 12) = 2080;
        v45 = OUTLINED_FUNCTION_98_0();
        *(v43 + 14) = sub_21E5553D8(v45, v46, v47);
        _os_log_impl(&dword_21E527000, v41, v42, "Current index version is: %s, and we want to build new index with version: %s. Index is not up-to-date and needs rebuilding", v43, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_81_0();
        OUTLINED_FUNCTION_39();
      }

      else
      {
      }

LABEL_17:
      (*(v59 + 8))(v17, v60);
      return 0;
    }
  }

  v23 = sub_21E57B1AC();
  v24 = OUTLINED_FUNCTION_98_0();
  v26 = COERCE_DOUBLE(sub_21E52D1E4(v24, v25, v23));
  v28 = v27;

  if (v28)
  {
    return 0;
  }

  sub_21E57AC3C();
  sub_21E57AC2C();
  v30 = v29;
  (*(v58 + 8))(v9, v4);
  if (v30 - v26 >= 604800.0)
  {
    v17 = v57;
    sub_21E57B5BC();

    v48 = sub_21E57B5DC();
    v49 = sub_21E57B85C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_50();
      v61 = OUTLINED_FUNCTION_43();
      *v50 = 136315138;
      v51 = OUTLINED_FUNCTION_98_0();
      *(v50 + 4) = sub_21E5553D8(v51, v52, v53);
      OUTLINED_FUNCTION_236(&dword_21E527000, v54, v55, "IndexVersion %s is current but was built awhile ago. Index needs rebuilding");
      OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_39();
    }

    goto LABEL_17;
  }

  v31 = v56;
  sub_21E57B5BC();

  v32 = sub_21E57B5DC();
  v33 = sub_21E57B85C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_50();
    v61 = OUTLINED_FUNCTION_43();
    *v34 = 136315138;
    v35 = OUTLINED_FUNCTION_98_0();
    *(v34 + 4) = sub_21E5553D8(v35, v36, v37);
    OUTLINED_FUNCTION_236(&dword_21E527000, v38, v39, "IndexVersion %s is current and was built recently. Index does not need rebuilding");
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_39();
  }

  (*(v59 + 8))(v31, v60);
  return 1;
}

uint64_t sub_21E554900(uint64_t a1, uint64_t a2)
{
  v2 = sub_21E57AC4C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  swift_getObjectType();

  OUTLINED_FUNCTION_60();
  sub_21E57B16C();
  sub_21E57AC3C();
  sub_21E57AC2C();
  (*(v4 + 8))(v8, v2);
  v9 = sub_21E57B19C();
  v11 = v10;
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *v11;
  v12 = OUTLINED_FUNCTION_60();
  sub_21E545B9C(v12, v13, v14, v15);
  *v11 = v17;
  return v9(v18, 0);
}

uint64_t sub_21E554A70()
{
  sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v26 = v1;
  v27 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_14();
  v25 = v3 - v2;
  v4 = sub_21E57ACDC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  sub_21E57AC4C();
  OUTLINED_FUNCTION_0();
  v28 = v12;
  v29 = v11;
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  swift_getObjectType();
  sub_21E57B13C();
  v16 = sub_21E57B17C();
  sub_21E57ACBC();
  v17 = sub_21E57AC8C();
  (*(v6 + 8))(v10, v4);
  if ((v17 & 1) == 0)
  {
    sub_21E57AC3C();
    sub_21E57B14C();
    goto LABEL_8;
  }

  result = v16 + 1;
  if (!__OFADD__(v16, 1))
  {
    if (result > 300)
    {
      v19 = v25;
      sub_21E57B5BC();
      v20 = sub_21E57B5DC();
      v21 = sub_21E57B84C();
      if (OUTLINED_FUNCTION_48(v21))
      {
        v22 = OUTLINED_FUNCTION_50();
        *v22 = 134217984;
        *(v22 + 4) = 300;
        OUTLINED_FUNCTION_237(&dword_21E527000, v20, v21, "[warning] Number of app install/uninstall notifications for today exceeded daily limit: %ld. Will NOT update autocomplete index for this request.", v24);
        OUTLINED_FUNCTION_39();
      }

      (*(v26 + 8))(v19, v27);
      v23 = 0;
      goto LABEL_9;
    }

LABEL_8:
    sub_21E57B18C();
    v23 = 1;
LABEL_9:
    (*(v28 + 8))(v15, v29);
    return v23;
  }

  __break(1u);
  return result;
}

void *SiriAutoCompleteIndexBuilder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);
  sub_21E53FF8C((v0 + 24), &qword_27CEC8BF8, &qword_21E57D9A0);
  return v0;
}

uint64_t SiriAutoCompleteIndexBuilder.__deallocating_deinit()
{
  SiriAutoCompleteIndexBuilder.deinit();

  return MEMORY[0x2821FE8D8](v0, 240, 7);
}

uint64_t sub_21E554DE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E55BF70;

  return sub_21E550394();
}

uint64_t sub_21E554E7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E55BF70;

  return sub_21E54BA20();
}

uint64_t sub_21E554F14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E55BF70;

  return sub_21E54AD94();
}

uint64_t sub_21E554FAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21E555044;

  return sub_21E54B828(a1);
}

uint64_t sub_21E555044()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  OUTLINED_FUNCTION_32();
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_9_0();

  return v5(v2);
}

uint64_t sub_21E55512C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_21E56575C(v4, v5);
  }

  else
  {
    sub_21E535114(0, &qword_2812264D0, 0x277D23B58);
    v7 = sub_21E57B78C();

    return sub_21E5657CC(v4, v7);
  }
}

id sub_21E5551D4(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_21E57ABAC();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_21E555288(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_21E5552D4()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21E555318(uint64_t (*a1)(void))
{
  a1();

  return sub_21E57BC2C();
}

uint64_t sub_21E55537C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_21E5553D8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_21E5553D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_76_0();
  v9 = sub_21E555498(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_21E534EE0(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v10;
}

unint64_t sub_21E555498(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21E555598(a5, a6);
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
    result = sub_21E57B97C();
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

uint64_t sub_21E555598(uint64_t a1, unint64_t a2)
{
  v3 = sub_21E5555E4(a1, a2);
  sub_21E5556FC(&unk_282F92030);
  return v3;
}

uint64_t sub_21E5555E4(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_21E57B6EC())
  {
    result = sub_21E5557E0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21E57B93C();
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
          result = sub_21E57B97C();
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

uint64_t sub_21E5556FC(uint64_t result)
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

    result = sub_21E555850(result, v7, 1, v3);
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

void *sub_21E5557E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C78, &qword_21E57DBE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_21E555850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C78, &qword_21E57DBE0);
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