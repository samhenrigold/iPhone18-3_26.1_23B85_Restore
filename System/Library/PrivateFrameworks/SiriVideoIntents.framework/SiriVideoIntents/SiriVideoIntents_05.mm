uint64_t sub_269701394(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2697013D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_269701428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2697014D8;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2697014D8(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_2697015EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269701688;

  return sub_2696FDD8C(a1);
}

uint64_t sub_269701688()
{
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  OUTLINED_FUNCTION_7_7();

  return v3();
}

BOOL sub_26970176C@<W0>(uint64_t a1@<X8>)
{
  result = sub_2696FDB38();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

unint64_t sub_2697017A0()
{
  result = qword_2815718B8;
  if (!qword_2815718B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2815718B8);
  }

  return result;
}

unint64_t sub_2697017E4(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

void sub_2697017F4(id a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    sub_269701818(a1);
  }

  else if (a2 <= 1u)
  {
  }
}

unint64_t sub_269701818(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

id sub_269701828(id a1, unsigned __int8 a2)
{
  switch(a2 >> 6)
  {
    case 1:
    case 2:
      result = a1;
      break;
    case 3:
      result = sub_2697017E4(a1);
      break;
    default:

      break;
  }

  return result;
}

uint64_t sub_269701884(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B10, &qword_26985C1F0);
    v2 = sub_2698553B4();
    v17 = v2;
    sub_269855314();
    while (1)
    {
      v3 = sub_269855334();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_269854664();
      swift_dynamicCast();
      sub_269854704();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_26980E594(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_269855054();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_269701A78(unint64_t a1, unint64_t a2, unint64_t a3, char a4, void *a5)
{
  sub_26970203C(a1, a2, a3, &v27);
  v26 = v27;

  while (1)
  {
    sub_2697023F8();
    if (!v7)
    {
      sub_26968E614(v26);
    }

    v9 = v7;
    v10 = v8;
    v11 = *a5;
    v13 = sub_26973D178();
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v12;
    if (v11[3] >= v16)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B18, &qword_26985C1F8);
        sub_2698552F4();
      }
    }

    else
    {
      sub_26980E594(v16, a4 & 1);
      v18 = sub_26973D178();
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_16;
      }

      v13 = v18;
    }

    v20 = *a5;
    if (v17)
    {
      v21 = *(v20[7] + 8 * v13);

      *(v20[7] + 8 * v13) = v21;

      a4 = 1;
    }

    else
    {
      v20[(v13 >> 6) + 8] |= 1 << v13;
      *(v20[6] + 8 * v13) = v9;
      *(v20[7] + 8 * v13) = v10;
      v22 = v20[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_15;
      }

      v20[2] = v24;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_269854664();
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_269701C68(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v23 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v23 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);

    v11 = sub_26973D178();
    v12 = v8[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v15 = v10;
    if (v8[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B18, &qword_26985C1F8);
        sub_2698552F4();
      }
    }

    else
    {
      sub_26980E594(v14, a2 & 1);
      v16 = sub_26973D178();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v11 = v16;
    }

    v18 = *a3;
    if (v15)
    {

      *(v18[7] + 8 * v11) = v7;
    }

    else
    {
      v18[(v11 >> 6) + 8] |= 1 << v11;
      *(v18[6] + 8 * v11) = v9;
      *(v18[7] + 8 * v11) = v7;
      v19 = v18[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_18;
      }

      v18[2] = v21;
    }

    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_269854664();
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_269701E10(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;

  v6 = a4;
  return a2;
}

uint64_t sub_269701E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_269853904();
  OUTLINED_FUNCTION_4_3();
  (*(v7 + 16))(a1, a4);

  return a2;
}

id sub_269701ED0(void *a1, void *a2, uint64_t a3)
{
  *a1 = a3;
  v3 = a2;

  return v3;
}

uint64_t sub_269701F08(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  if ((*a4 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *a4;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = sub_269855324();
    v14 = sub_269701884(v10, v11);
    sub_269701A78(a1, a2, a3, 1, &v14);
    if (v4)
    {
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a4;
    result = sub_269701A78(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v14);
  }

  *a4 = v14;
  return result;
}

uint64_t sub_269702000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

unint64_t sub_26970203C@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_269855314();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = v7 | 0x8000000000000000;
  }

  else
  {
    v11 = -1;
    v12 = -1 << *(result + 32);
    v8 = result + 64;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 64);
  }

  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_2697020D4(uint64_t a1@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - v4;
  v6 = sub_269853904();
  OUTLINED_FUNCTION_3_20();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B30, &qword_26985C368);
  v14 = OUTLINED_FUNCTION_8_9(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12();
  v46 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = *v1;
  v21 = v1[1];
  v22 = v1[2];
  v23 = v1[3];
  v24 = v1[4];
  v41 = v5;
  v45 = v22;
  if (v24)
  {
    v43 = a1;
    v25 = v23;
LABEL_7:
    v42 = (v24 - 1) & v24;
    v26 = __clz(__rbit64(v24)) | (v25 << 6);
    v27 = (*(v20 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    (*(v8 + 16))(v12, *(v20 + 56) + *(v8 + 72) * v26, v6);
    v30 = v44;
    v31 = *(v44 + 48);
    *v19 = v28;
    *(v19 + 1) = v29;
    v32 = v12;
    v33 = v30;
    (*(v8 + 32))(&v19[v31], v32, v6);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v33);

    v34 = v42;
    a1 = v43;
LABEL_8:
    *v1 = v20;
    v1[1] = v21;
    v35 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v34;
    v36 = v1[5];
    sub_269702A58(v19, v35, &qword_280323B30, &qword_26985C368);
    v37 = 1;
    if (__swift_getEnumTagSinglePayload(v35, 1, v33) != 1)
    {
      v38 = v35;
      v39 = v41;
      sub_269702A58(v38, v41, &qword_280323B28, &qword_26985C360);
      v36(v39);
      sub_26969B0C0(v39, &qword_280323B28, &qword_26985C360);
      v37 = 0;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B38, &qword_26985C370);
    __swift_storeEnumTagSinglePayload(a1, v37, 1, v40);
    OUTLINED_FUNCTION_21_0();
  }

  else
  {
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= ((v22 + 64) >> 6))
      {
        v33 = v44;
        __swift_storeEnumTagSinglePayload(&v41 - v18, 1, 1, v44);
        v34 = 0;
        goto LABEL_8;
      }

      v24 = *(v21 + 8 * v25);
      ++v23;
      if (v24)
      {
        v43 = a1;
        v23 = v25;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_2697023F8()
{
  v1 = v0;
  v2 = *v0;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    if (sub_269855334())
    {
      v7 = v6;
      sub_269854664();
      swift_dynamicCast();
      v8 = v15[0];
      v14 = v7;
      sub_269854704();
      swift_dynamicCast();
      v9 = v15[0];
      if (v15[0])
      {
LABEL_13:
        v13 = v1[5];
        v15[0] = v8;
        v15[1] = v9;
        v13(&v14, v15);
      }
    }
  }

  else
  {
    v4 = v0[3];
    v3 = v1[4];
    if (v3)
    {
      v5 = v1[3];
LABEL_11:
      v10 = (v3 - 1) & v3;
      v11 = (v5 << 9) | (8 * __clz(__rbit64(v3)));
      v8 = *(*(v2 + 48) + v11);
      v9 = *(*(v2 + 56) + v11);
      v12 = v8;

LABEL_12:
      v1[3] = v4;
      v1[4] = v10;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      while (1)
      {
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v5 >= ((v1[2] + 64) >> 6))
        {
          v9 = 0;
          v8 = 0;
          v10 = 0;
          goto LABEL_12;
        }

        v3 = *(v1[1] + 8 * v5);
        ++v4;
        if (v3)
        {
          v4 = v5;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

void *sub_269702560(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v6 = type metadata accessor for BaseDialogProvider();
  v18[3] = v6;
  v18[4] = &off_287A3DBA0;
  v18[0] = a2;
  v16 = &type metadata for CoreAnalyticsService;
  v17 = &xmmword_287A41610;
  type metadata accessor for DeviceDisambiguationStrategy();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v18, v6);
  MEMORY[0x28223BE20](v8);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v12 = *v10;
  v7[15] = v6;
  v7[16] = &off_287A3DBA0;
  v7[12] = v12;
  v7[20] = &type metadata for CoreAnalyticsService;
  v7[21] = &xmmword_287A41610;
  sub_2696A73F8(a1, (v7 + 2));
  sub_2696A73F8((v7 + 12), (v7 + 7));
  type metadata accessor for LocUtil();
  v13 = swift_allocObject();
  sub_26968E5D4(a1, v13 + 16);
  v7[22] = v13;
  sub_26968E5D4(a3, (v7 + 23));
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v7;
}

id sub_269702708(id result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    return sub_2697017E4(result);
  }

  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_26970272C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_30_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 16))(v4, v5);
  return v4;
}

void sub_26970277C(id a1, unsigned __int8 a2)
{
  switch(a2 >> 6)
  {
    case 1:
    case 2:

      break;
    case 3:
      sub_269701818(a1);
      break;
    default:

      break;
  }
}

id sub_2697027B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_269701ED0(&v5, *a1, *(a1 + 8));
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2697027F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269702838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents31ExecutionDeviceResolutionResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_2697028C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_269702904(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_269702948(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_26970297C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2697029D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_269702A28(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_269702A58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_30_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_2_14@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *a1 = 3;
  *(a1 + 8) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_269702BDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2698590C0;
  sub_269854794();
  *(v0 + 32) = sub_269854784();
  return v0;
}

uint64_t sub_269702C44()
{
  OUTLINED_FUNCTION_2_7();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  v4 = sub_2698548D4();
  v1[19] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[20] = v5;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_269702D30()
{
  v199 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[20];
  v0[27] = OUTLINED_FUNCTION_33_0(v0[19], qword_28033D910);
  v3 = *(v2 + 16);
  v0[28] = v3;
  v0[29] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v196 = v4;
  v197 = v3;
  (v3)(v1);

  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v6))
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_9_3();
    v198[0] = v9;
    *v8 = 134218242;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_269855324();
    }

    else
    {
      v10 = *(v0[17] + 16);
    }

    v15 = v0[20];
    v188 = v0[19];
    v195 = v0[26];
    *(v8 + 4) = v10;

    *(v8 + 12) = 2080;

    v16 = sub_2697E2660();

    sub_2697F056C(v16, v17, v18, v19, v20, v21, v22, v23, v176, v180, v185, v186, v188, v195, v196, v197, v198[0], v198[1], v198[2], v198[3], v198[4], v198[5], v198[6], v198[7], v198[8], v199);
    v25 = v24;
    v27 = v26;

    v28 = sub_26974F520(v25, v27, v198);

    *(v8 + 14) = v28;
    _os_log_impl(&dword_269684000, v5, v6, "PlayVideoDeviceResolutionStrategy.processDevices() Found %ld video playback capable remote devices: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v14 = *(v15 + 8);
    v14(v194, v189);
  }

  else
  {
    v11 = v0[26];
    v12 = v0[19];
    v13 = v0[20];

    v14 = *(v13 + 8);
    v14(v11, v12);
  }

  v0[30] = v14;
  v29 = v0[17];
  sub_269706734();
  v30 = sub_269792FF4(v0 + 2, v29);
  v0[31] = v30;
  if (v31)
  {
    sub_269706F70((v0 + 2));
    if ((v30 - 1) < 2)
    {
      v32 = swift_task_alloc();
      v0[34] = v32;
      *v32 = v0;
      v32[1] = sub_2697039C4;
      OUTLINED_FUNCTION_84();

      return sub_269706094();
    }

    if (!v30)
    {
      v72 = 0;
      v73 = 1;
LABEL_34:
      sub_269707264(v72, v73);
      goto LABEL_48;
    }

    goto LABEL_48;
  }

  sub_269703DAC();
  v36 = v35;
  v38 = v37;
  if (sub_26975004C() < 2)
  {
    if (!sub_26975004C())
    {

      sub_269706F70((v0 + 2));
      v104 = OUTLINED_FUNCTION_6_16();
      sub_269707264(v104, v105);
      v72 = OUTLINED_FUNCTION_6_16();
      goto LABEL_34;
    }

    sub_269750050();
    if ((v30 & 0xC000000000000001) != 0)
    {
      v74 = MEMORY[0x26D646120](0, v30);
    }

    else
    {
      v74 = *(v30 + 32);
    }

    v75 = v74;
    v76 = OUTLINED_FUNCTION_6_16();
    sub_269707264(v76, v77);
    sub_269703B8C();
    v79 = v78;
    sub_269706F70((v0 + 2));
    if (v36)
    {
      sub_2697017A0();
      v80 = v36;
      v81 = sub_269855064();

      if (v81)
      {
        v79 = v38;
      }
    }

    v197(v0[22], v196, v0[19]);
    v82 = v75;
    v83 = sub_2698548B4();
    v84 = sub_269854F14();

    HIDWORD(v185) = v84;
    v85 = os_log_type_enabled(v83, v84);
    v86 = v0[22];
    v87 = v0[19];
    v187 = v0[20];
    v191 = v82;
    if (v85)
    {
      swift_slowAlloc();
      v182 = v87;
      v88 = OUTLINED_FUNCTION_8_12();
      v198[0] = v88;
      *v36 = 136315394;
      v89 = sub_269854604();
      v97 = v79;
      v98 = OUTLINED_FUNCTION_49_1(v89, v90, v91, v92, v93, v94, v95, v96, v86, v182);

      *(v36 + 1) = v98;
      v79 = v97;
      *(v36 + 6) = 1024;
      *(v36 + 14) = v97 & 1;
      _os_log_impl(&dword_269684000, v83, BYTE4(v185), "PlayVideoDeviceResolutionStrategy.processDevices() isConfirmationRequired for device %s: %{BOOL}d", v36, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v88);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_9_12();

      v99 = v176;
      v100 = v180;
    }

    else
    {

      v99 = v86;
      v100 = v87;
    }

    v14(v99, v100);
    if (v79)
    {

      v135 = OUTLINED_FUNCTION_6_16();
      sub_269707264(v135, v136);
    }

    else
    {
      v197(v0[21], v196, v0[19]);
      v137 = v191;
      v138 = sub_2698548B4();
      v139 = sub_269854F14();

      v140 = os_log_type_enabled(v138, v139);
      v142 = v0[20];
      v141 = v0[21];
      v143 = v0[19];
      if (v140)
      {
        OUTLINED_FUNCTION_27_2();
        v198[0] = OUTLINED_FUNCTION_8_12();
        v144 = v198[0];
        v145 = OUTLINED_FUNCTION_32_1(v198[0], 4.8149e-34);
        v193 = v142;
        v153 = OUTLINED_FUNCTION_49_1(v145, v146, v147, v148, v149, v150, v151, v152, v176, v180);

        *(v36 + 1) = v153;
        OUTLINED_FUNCTION_42_0(&dword_269684000, v154, v155, "PlayVideoDeviceResolutionStrategy.processDevices() Auto-selecting device: %s");
        __swift_destroy_boxed_opaque_existential_0(v144);
        OUTLINED_FUNCTION_16_9();
        OUTLINED_FUNCTION_9_12();

        v164 = OUTLINED_FUNCTION_26_5(v156, v157, v158, v159, v160, v161, v162, v163, v179, v184, v185, v187, v193, v194, v196);
      }

      else
      {

        v164 = v141;
        v165 = v143;
      }

      v14(v164, v165);
      __swift_project_boxed_opaque_existential_1((v0[18] + 56), *(v0[18] + 80));
      OUTLINED_FUNCTION_45_1();

      v172 = OUTLINED_FUNCTION_6_16();
      sub_269707264(v172, v173);
    }

LABEL_48:

    OUTLINED_FUNCTION_84();

    __asm { BRAA            X3, X16 }
  }

  if (v36)
  {
    v39 = v36;
    sub_269706F70((v0 + 2));
    v40 = OUTLINED_FUNCTION_6_16();
    sub_269707264(v40, v41);
    v42 = v0[19];
    if (v38)
    {
      v197(v0[25], v196, v0[19]);
      v43 = v39;
      v44 = sub_2698548B4();
      v45 = sub_269854F14();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v0[25];
      v48 = v0[19];
      v49 = v0[20];
      if (v46)
      {
        OUTLINED_FUNCTION_27_2();
        v198[0] = OUTLINED_FUNCTION_8_12();
        v50 = v198[0];
        v51 = OUTLINED_FUNCTION_32_1(v198[0], 4.8149e-34);
        v190 = v49;
        v59 = OUTLINED_FUNCTION_49_1(v51, v52, v53, v54, v55, v56, v57, v58, v176, v180);

        *(v36 + 1) = v59;
        _os_log_impl(&dword_269684000, v44, v45, "PlayVideoDeviceResolutionStrategy.processDevices() Confirmation is required for auto-selection of device %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_9_12();

        v60 = OUTLINED_FUNCTION_6_16();
        sub_269707264(v60, v61);

        v70 = OUTLINED_FUNCTION_26_5(v62, v63, v64, v65, v66, v67, v68, v69, v177, v181, v185, v186, v190, v194, v196);
      }

      else
      {

        v166 = OUTLINED_FUNCTION_6_16();
        sub_269707264(v166, v167);
        v70 = v47;
        v71 = v48;
      }

      v14(v70, v71);
    }

    else
    {
      v106 = v0[24];

      v197(v106, v196, v42);
      v107 = v39;
      v108 = sub_2698548B4();
      LOBYTE(v106) = sub_269854F14();

      v109 = os_log_type_enabled(v108, v106);
      v110 = v0[24];
      v111 = v0[19];
      v112 = v0[20];
      if (v109)
      {
        OUTLINED_FUNCTION_27_2();
        v198[0] = OUTLINED_FUNCTION_8_12();
        v113 = v198[0];
        v114 = OUTLINED_FUNCTION_32_1(v198[0], 4.8149e-34);
        v192 = v112;
        v122 = OUTLINED_FUNCTION_49_1(v114, v115, v116, v117, v118, v119, v120, v121, v176, v180);

        *(v36 + 1) = v122;
        OUTLINED_FUNCTION_42_0(&dword_269684000, v123, v124, "PlayVideoDeviceResolutionStrategy.processDevices() Auto-selecting device: %s");
        __swift_destroy_boxed_opaque_existential_0(v113);
        OUTLINED_FUNCTION_16_9();
        OUTLINED_FUNCTION_9_12();

        v133 = OUTLINED_FUNCTION_26_5(v125, v126, v127, v128, v129, v130, v131, v132, v178, v183, v185, v186, v192, v194, v196);
      }

      else
      {

        v133 = v110;
        v134 = v111;
      }

      v14(v133, v134);
      v168 = v0[18];
      __swift_project_boxed_opaque_existential_1((v168 + 56), *(v168 + 80));
      OUTLINED_FUNCTION_45_1();
      sub_2696A73F8(v168 + 136, (v0 + 11));
      __swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
      v169 = sub_269854654();
      sub_2697B4540(3, v169);
      v170 = OUTLINED_FUNCTION_6_16();
      sub_269707264(v170, v171);
      __swift_destroy_boxed_opaque_existential_0(v0 + 11);
    }

    goto LABEL_48;
  }

  v101 = swift_task_alloc();
  v0[32] = v101;
  *v101 = v0;
  v101[1] = sub_26970366C;
  OUTLINED_FUNCTION_84();

  return sub_269705490(v102);
}

uint64_t sub_26970366C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = v3;

  v4 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_269703758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t), uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[33];
  v26 = v22[31];
  if (v25)
  {
    v27 = v22[28];
    v28 = v22[27];
    v29 = v22[23];
    v30 = v22[19];
    sub_269707264(v22[31], 0);
    v27(v29, v28, v30);
    v31 = v25;
    v32 = sub_2698548B4();
    v33 = sub_269854F14();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v22[30];
    v36 = v22[23];
    v37 = v22[19];
    if (v34)
    {
      a10 = v22[23];
      v38 = OUTLINED_FUNCTION_27_2();
      v39 = OUTLINED_FUNCTION_9_3();
      a11 = v39;
      *v38 = 136315138;
      a9 = v35;
      v40 = sub_269854604();
      v42 = sub_26974F520(v40, v41, &a11);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_269684000, v32, v33, "PlayVideoDeviceResolutionStrategy.processDevices() Auto-selecting device based on proximity: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v35(a10, v37);
    }

    else
    {

      v35(v36, v37);
    }

    sub_269703B8C();
    v44 = v43;
    sub_269706F70((v22 + 2));
    if ((v44 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1((v22[18] + 56), *(v22[18] + 80));
      sub_2696C78DC(v31, 0, 3);
    }

    v45 = OUTLINED_FUNCTION_6_16();
    sub_269707264(v45, v46);
  }

  else
  {
    sub_269706F70((v22 + 2));
    sub_2697E26D0(v26);
    sub_269707264(v26, 0);
  }

  OUTLINED_FUNCTION_116();

  return v50(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697039C4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = v3;

  v4 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_269703AB0()
{
  v1 = *(v0 + 248);
  v2 = sub_26975004C();

  v3 = 1;
  sub_269707264(v1, 1);
  if (v2)
  {
    v3 = 2;
  }

  v4 = *(v0 + 8);

  return v4(v3, 192);
}

void sub_269703B8C()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  sub_269854634();
  if (v4)
  {
    if (v3[8] && (v5 = sub_269693054(), !OUTLINED_FUNCTION_44_1(v5, MEMORY[0x277D837D0], v6, v5)))
    {
    }

    else if (v3[4])
    {
      v7 = sub_269693054();
      OUTLINED_FUNCTION_44_1(v7, MEMORY[0x277D837D0], v8, v7);
    }

    else
    {
    }
  }

  if (!v3[6])
  {
    sub_269854654();
    v9 = sub_2698547B4();
    if (v9 != sub_2698547B4())
    {
      sub_269854654();
      v10 = sub_2698547B4();
      if (v10 != sub_2698547B4() || (v11 = *(v1 + 40), v12 = __swift_project_boxed_opaque_existential_1((v1 + 16), v11), v13 = *(v11 - 8), MEMORY[0x28223BE20](v12), OUTLINED_FUNCTION_3_1(), v16 = v15 - v14, (*(v13 + 16))(v15 - v14), v17 = sub_269852D14(), (*(v13 + 8))(v16, v11), (v17 & 1) != 0))
      {
        if (v3[4])
        {
          sub_269854654();
          sub_2698547B4();
          sub_2698547B4();
        }
      }
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_269703DAC()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_35_2(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B50, &unk_26985C450);
  v15 = OUTLINED_FUNCTION_8_9(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_13();
  v127 = v19;
  v125 = type metadata accessor for DeviceSelectionDonationAggregations(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_35_2(v28);
  v29 = *(v0 + 40);
  v30 = __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  v34 = v33 - v32;
  v35 = OUTLINED_FUNCTION_38_1();
  v36(v35);
  v37 = sub_269852D14();
  (*(v31 + 8))(v34, v29);
  if (v37)
  {
    v119 = sub_26975004C();
    if (v119)
    {
      v38 = v3;
      v108 = v23;
      v107 = v10;
      v117 = v3 & 0xC000000000000001;
      v131 = (v6 + 16);
      v132 = (v6 + 8);
      v39 = MEMORY[0x277D84F98];
      v142 = MEMORY[0x277D84F90];
      v143 = MEMORY[0x277D84F90];
      v40 = 4;
      v141 = MEMORY[0x277D84F90];
      v118 = v1;
      v110 = MEMORY[0x277D84F90];
      v111 = MEMORY[0x277D84F90];
      v133 = MEMORY[0x277D84F90];
      v116 = v38;
      v41 = v127;
      v42 = v126;
      do
      {
        v43 = v40 - 4;
        sub_269750050();
        v138 = v40;
        if (v117)
        {
          v44 = MEMORY[0x26D646120](v40 - 4, v38);
        }

        else
        {
          v44 = *(v38 + 8 * v40);
        }

        v45 = v44;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
          return;
        }

        v136 = v43 + 1;
        sub_2696A73F8(v118 + 56, v140);
        OUTLINED_FUNCTION_50_1();
        sub_2697F22F8(&unk_287A39840);
        OUTLINED_FUNCTION_19_7();

        OUTLINED_FUNCTION_30_4();
        if (v46)
        {
          sub_26969B0C0(v41, &qword_280323B50, &unk_26985C450);
          __swift_destroy_boxed_opaque_existential_0(v140);
          v134 = 0;
          v135 = 0;
        }

        else
        {
          sub_2697070F4(v41, v42);
          __swift_destroy_boxed_opaque_existential_0(v140);
          v134 = *(v42 + *(v125 + 24));
          v135 = *(v42 + *(v125 + 28));
          v47 = v45;
          MEMORY[0x26D645B90]();
          OUTLINED_FUNCTION_13_9();
          if (v48)
          {
            OUTLINED_FUNCTION_7_19();
          }

          OUTLINED_FUNCTION_24_6();
          sub_269854CF4();
          v133 = v143;
          OUTLINED_FUNCTION_1_15();
          sub_26970720C(v42, v49);
        }

        if (sub_2697B91A8())
        {
          if (qword_2803226E0 != -1)
          {
            OUTLINED_FUNCTION_0_22();
            swift_once();
          }

          OUTLINED_FUNCTION_33_0(v4, qword_28033D910);
          (*v131)();
          v50 = sub_2698548B4();
          v51 = sub_269854F14();
          if (OUTLINED_FUNCTION_19_4(v51))
          {
            v52 = OUTLINED_FUNCTION_16_2();
            *v52 = 0;
            _os_log_impl(&dword_269684000, v50, v51, "PlayVideoDeviceResolutionStrategy.preferredDevice overridding rejectedCounts with default values as deviceHasRejectedDonations is set", v52, 2u);
            OUTLINED_FUNCTION_10();
          }

          (*v132)(v123, v4);
          v53 = v45;
          MEMORY[0x26D645B90]();
          OUTLINED_FUNCTION_13_9();
          if (v48)
          {
            OUTLINED_FUNCTION_7_19();
          }

          OUTLINED_FUNCTION_24_6();
          sub_269854CF4();
          v135 = 1;
          v133 = v143;
          v134 = 1;
        }

        sub_2696A73F8(v118 + 56, v140);
        OUTLINED_FUNCTION_50_1();
        sub_2697F22F8(&unk_287A39868);
        OUTLINED_FUNCTION_19_7();

        OUTLINED_FUNCTION_30_4();
        if (v46)
        {
          sub_26969B0C0(v121, &qword_280323B50, &unk_26985C450);
          __swift_destroy_boxed_opaque_existential_0(v140);
          v129 = 0;
          v130 = 0;
        }

        else
        {
          sub_2697070F4(v121, v112);
          __swift_destroy_boxed_opaque_existential_0(v140);
          v54 = v45;
          MEMORY[0x26D645B90]();
          OUTLINED_FUNCTION_13_9();
          if (v55)
          {
            OUTLINED_FUNCTION_7_19();
          }

          OUTLINED_FUNCTION_24_6();
          sub_269854CF4();
          v110 = v142;
          v129 = *(v112 + *(v125 + 24));
          v130 = *(v112 + *(v125 + 28));
          sub_269707090(v112, v113);
          v56 = v54;
          swift_isUniquelyReferenced_nonNull_native();
          v140[0] = v39;
          v57 = OUTLINED_FUNCTION_24_6();
          sub_26984063C(v57, v58, v59);

          v39 = v140[0];
          OUTLINED_FUNCTION_1_15();
          sub_26970720C(v112, v60);
          v42 = v126;
        }

        sub_2696A73F8(v118 + 56, v140);
        OUTLINED_FUNCTION_50_1();
        sub_2697F22F8(&unk_287A39890);
        OUTLINED_FUNCTION_19_7();

        OUTLINED_FUNCTION_30_4();
        if (v46)
        {
          sub_26969B0C0(v122, &qword_280323B50, &unk_26985C450);
          __swift_destroy_boxed_opaque_existential_0(v140);
          v61 = 0;
          v128 = 0;
        }

        else
        {
          sub_2697070F4(v122, v120);
          __swift_destroy_boxed_opaque_existential_0(v140);
          v62 = v45;
          MEMORY[0x26D645B90]();
          OUTLINED_FUNCTION_13_9();
          if (v63)
          {
            OUTLINED_FUNCTION_7_19();
          }

          OUTLINED_FUNCTION_24_6();
          v64 = sub_269854CF4();
          v111 = v141;
          v65 = *(v120 + *(v125 + 24));
          v61 = *(v120 + *(v125 + 28));
          v140[0] = v62;
          MEMORY[0x28223BE20](v64);
          OUTLINED_FUNCTION_0_3();
          *(v66 - 16) = v140;
          v128 = v65;
          if (sub_26983387C(sub_269707270, v67, v133))
          {
            v68 = v61;
          }

          else
          {
            v68 = v65;
          }

          if (v68 >= 3)
          {
            sub_269707090(v120, v113);
            v69 = v62;
            swift_isUniquelyReferenced_nonNull_native();
            v140[0] = v39;
            v70 = OUTLINED_FUNCTION_24_6();
            sub_26984063C(v70, v71, v72);

            v39 = v140[0];
          }

          OUTLINED_FUNCTION_1_15();
          sub_26970720C(v120, v73);
        }

        v139 = v39;
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_22();
          swift_once();
        }

        OUTLINED_FUNCTION_33_0(v4, qword_28033D910);
        v114 = v74;
        v115 = *v131;
        (*v131)();
        v75 = v45;
        v76 = sub_2698548B4();
        v77 = sub_269854F14();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = v61;
          v79 = swift_slowAlloc();
          v80 = v4;
          v81 = OUTLINED_FUNCTION_9_3();
          v140[0] = v81;
          *v79 = 136316674;
          v82 = sub_269854604();
          v84 = sub_26974F520(v82, v83, v140);

          *(v79 + 4) = v84;
          *(v79 + 12) = 2048;
          *(v79 + 14) = v134;
          *(v79 + 22) = 2048;
          *(v79 + 24) = v135;
          *(v79 + 32) = 2048;
          *(v79 + 34) = v129;
          *(v79 + 42) = 2048;
          *(v79 + 44) = v130;
          *(v79 + 52) = 2048;
          *(v79 + 54) = v128;
          *(v79 + 62) = 2048;
          *(v79 + 64) = v78;
          _os_log_impl(&dword_269684000, v76, v77, "PlayVideoDeviceResolutionStrategy.preferredDevice() device %s donations - rejected (total:%ld seven-days:%ld), auto-selected (total:%ld seven-days:%ld), confirmedOrDisambiguated (total:%ld seven-days:%ld)", v79, 0x48u);
          __swift_destroy_boxed_opaque_existential_0(v81);
          v4 = v80;
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();

          v85 = *v132;
          v42 = v126;
          (*v132)(v124, v80);
        }

        else
        {

          v85 = *v132;
          (*v132)(v124, v4);
        }

        v38 = v116;
        v41 = v127;
        v40 = v138 + 1;
        v39 = v139;
      }

      while (v136 != v119);
      sub_269704B04();
      if (!v86)
      {

        goto LABEL_49;
      }

      v87 = v86;
      sub_26981D2F0(v86, v139);
      if (__swift_getEnumTagSinglePayload(v109, 1, v125) == 1)
      {

        sub_26969B0C0(v109, &qword_280323B50, &unk_26985C450);
LABEL_49:

        goto LABEL_50;
      }

      v88 = sub_2697070F4(v109, v108);
      v140[0] = v87;
      MEMORY[0x28223BE20](v88);
      OUTLINED_FUNCTION_0_3();
      *(v89 - 16) = v140;
      v91 = sub_26983387C(sub_269707270, v90, v110);
      if (v91)
      {

        v92 = 1;
      }

      else
      {
        v140[0] = v87;
        MEMORY[0x28223BE20](v91);
        OUTLINED_FUNCTION_0_3();
        *(v93 - 16) = v140;
        v92 = sub_26983387C(sub_269707270, v94, v111);
      }

      sub_269705008(v108, v92 & 1);
      (v115)(v107, v114, v4);
      v95 = v4;
      v96 = v87;
      v97 = sub_2698548B4();
      v98 = sub_269854F14();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = OUTLINED_FUNCTION_27_2();
        v137 = v95;
        v100 = OUTLINED_FUNCTION_9_3();
        v140[0] = v100;
        *v99 = 136315138;
        v101 = sub_269854604();
        v103 = sub_26974F520(v101, v102, v140);

        *(v99 + 4) = v103;
        _os_log_impl(&dword_269684000, v97, v98, "PlayVideoDeviceResolutionStrategy.preferredDevice() selected: %s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v100);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        v104 = v107;
        v105 = v137;
      }

      else
      {

        v104 = v107;
        v105 = v95;
      }

      v85(v104, v105);
      OUTLINED_FUNCTION_1_15();
      sub_26970720C(v108, v106);
    }
  }

LABEL_50:
  OUTLINED_FUNCTION_21_0();
}

void sub_269704B04()
{
  OUTLINED_FUNCTION_19_1();
  v75 = v0;
  v2 = v1;
  v74 = type metadata accessor for DeviceSelectionDonationAggregations(0);
  OUTLINED_FUNCTION_8();
  v71 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12();
  v77 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_13();
  v70 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B40, &qword_26985C438);
  v10 = OUTLINED_FUNCTION_8_9(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v69 - v15);
  v17 = v2 + 64;
  v18 = 1 << *(v2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v2 + 64);
  v21 = (v18 + 63) >> 6;
  v72 = v2;

  v22 = 0;
  v23 = 0;
  v78 = MEMORY[0x277D84F98];
  v24 = &qword_280323B48;
  v69 = xmmword_2698590C0;
  v76 = v16;
  v73 = v13;
  while (1)
  {
    v79 = v22;
    if (!v20)
    {
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v21)
        {
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B48, &unk_26985C440);
          __swift_storeEnumTagSinglePayload(v13, 1, 1, v66);
          v20 = 0;
          goto LABEL_11;
        }

        v20 = *(v17 + 8 * v25);
        ++v23;
        if (v20)
        {
          v23 = v25;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    v25 = v23;
LABEL_10:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = v26 | (v25 << 6);
    v28 = *(*(v72 + 48) + 8 * v27);
    v29 = v70;
    sub_269707090(*(v72 + 56) + *(v71 + 72) * v27, v70);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B48, &unk_26985C440);
    v31 = *(v30 + 48);
    *v13 = v28;
    sub_2697070F4(v29, v13 + v31);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v30);
    v32 = v28;
    v16 = v76;
LABEL_11:
    sub_269707158(v13, v16);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B48, &unk_26985C440);
    OUTLINED_FUNCTION_20_9(v16);
    if (v34)
    {
      break;
    }

    v35 = *v16;
    v36 = v16 + *(v33 + 48);
    v37 = v77;
    v38 = sub_2697070F4(v36, v77);
    v81 = v35;
    MEMORY[0x28223BE20](v38);
    OUTLINED_FUNCTION_0_3();
    *(v39 - 16) = &v81;
    v41 = sub_26983387C(sub_2697071EC, v40, v75);
    v42 = 24;
    if (v41)
    {
      v42 = 28;
    }

    v43 = *(v37 + *(v74 + v42));
    v44 = v78;
    if (*(v78 + 16) && (v45 = sub_26973ED38(v43), (v46 & 1) != 0))
    {
      v81 = *(*(v44 + 56) + 8 * v45);

      v47 = v35;
      MEMORY[0x26D645B90]();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269854CD4();
      }

      OUTLINED_FUNCTION_23_8();
      sub_269854CF4();
      v48 = v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v44;
      sub_269840550(v48, v43, isUniquelyReferenced_nonNull_native, v50, v51, v52, v53, v54, v69, *(&v69 + 1));

      OUTLINED_FUNCTION_1_15();
      sub_26970720C(v77, v55);
      v56 = v80;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      v57 = swift_allocObject();
      *(v57 + 16) = v69;
      *(v57 + 32) = v35;
      v58 = v35;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v81 = v44;
      sub_269840550(v57, v43, v59, v60, v61, v62, v63, v64, v69, *(&v69 + 1));

      OUTLINED_FUNCTION_1_15();
      sub_26970720C(v77, v65);
      v56 = v81;
    }

    v78 = v56;
    v22 = v79;
    if (v79 <= v43)
    {
      v22 = v43;
    }

    v13 = v73;
    v16 = v76;
    v24 = &qword_280323B48;
  }

  sub_26981D2A4(v79, v78);
  if (v67)
  {
    v24 = v67;
    if (sub_26975004C() == 1 && sub_26975004C())
    {
      sub_269750050();
      if ((v24 & 0xC000000000000001) == 0)
      {
        v68 = *(v24 + 32);
LABEL_29:

        goto LABEL_32;
      }

LABEL_34:
      MEMORY[0x26D646120](0, v24);
      goto LABEL_29;
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269705008(uint64_t a1, int a2)
{
  v54 = a2;
  v50[2] = a1;
  sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v52 = v3;
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v51 = v5 - v4;
  v6 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = sub_269851E64();
  OUTLINED_FUNCTION_8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = v18 - v17;
  v55 = sub_269851E84();
  OUTLINED_FUNCTION_8();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v27 = OUTLINED_FUNCTION_8_9(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = v50 - v32;
  sub_269851E54();
  (*(v15 + 104))(v19, *MEMORY[0x277CC9968], v13);
  sub_269851D24();
  sub_269851E44();
  v34 = *(v8 + 8);
  v35 = OUTLINED_FUNCTION_23_8();
  v50[1] = v36;
  v34(v35);
  (*(v15 + 8))(v19, v13);
  (*(v21 + 8))(v25, v55);
  OUTLINED_FUNCTION_20_9(v33);
  if (v37)
  {
    sub_269851D24();
    v30 = v12;
  }

  else
  {
    sub_269707020(v33, v30);
    result = OUTLINED_FUNCTION_20_9(v30);
    if (v37)
    {
      __break(1u);
      return result;
    }
  }

  sub_269851D04();
  v40 = v39;
  (v34)(v30, v6);
  type metadata accessor for DeviceSelectionDonationAggregations(0);
  sub_269851D04();
  v42 = v41;
  v43 = v54;
  v44 = v53;
  v45 = v51;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(v44, qword_28033D910);
  v46 = v52;
  (*(v52 + 16))(v45);
  v47 = sub_2698548B4();
  v48 = sub_269854F14();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 67109376;
    *(v49 + 4) = v43 & 1;
    *(v49 + 8) = 1024;
    *(v49 + 10) = v40 < v42;
    _os_log_impl(&dword_269684000, v47, v48, "PlayVideoDeviceResolutionStrategy.preferredDeviceRequiresConfirmation hasPreviousSelections:%{BOOL}d isLastSelectionWithinSevenDays: %{BOOL}d", v49, 0xEu);
    OUTLINED_FUNCTION_10();
  }

  (*(v46 + 8))(v45, v44);
  sub_26969B0C0(v33, &unk_280322D50, &unk_2698583F0);
  return (v40 >= v42) | ((v43 & 1) == 0);
}

uint64_t sub_269705490(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_3_16();
  return MEMORY[0x2822009F8](v3);
}

void sub_2697054B8()
{
  v1 = v0[2];
  v11 = MEMORY[0x277D84F90];
  v2 = sub_26975004C();
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  while (v2 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x26D646120](v3, v0[2]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_16;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    sub_269854654();
    v9 = sub_2698547B4();
    if (v9 == sub_2698547B4())
    {
      sub_269855284();
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
    }

    else
    {
    }

    ++v3;
  }

  v0[4] = v11;
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_269705648;

  sub_269705750();
}

uint64_t sub_269705648()
{
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v3 = *v0;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;

  OUTLINED_FUNCTION_28_2();

  return v5(v2);
}

uint64_t sub_269705750()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2698548D4();
  v1[10] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[11] = v4;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_269705814()
{
  sub_2696A73F8(v0[9] + 96, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_2697058E0;

  return MEMORY[0x2821C8A70](4000, 4000, v1, v2);
}

uint64_t sub_2697058E0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  if (v0)
  {
    v5 = sub_269705EA0;
  }

  else
  {
    v5 = sub_2697059E8;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697059E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  v15 = v14[16];
  __swift_destroy_boxed_opaque_existential_0(v14 + 2);
  v16 = sub_26975004C();
  v17 = 0;
  v18 = v15 & 0xC000000000000001;
  v19 = v15 & 0xFFFFFFFFFFFFFF8;
  v20 = v15 + 32;
  while (1)
  {
    if (v16 == v17)
    {

      v18 = 0;
      v24 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

    if (v18)
    {
      v21 = MEMORY[0x26D646120](v17, v14[16]);
    }

    else
    {
      if (v17 >= *(v19 + 16))
      {
        goto LABEL_53;
      }

      v21 = *(v20 + 8 * v17);
    }

    v22 = v21;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    sub_269854654();
    v23 = sub_2698547B4();
    if (v23 == sub_2698547B4())
    {
      break;
    }

    ++v17;
  }

  a10 = v14;
  v25 = v14[8];

  a11 = MEMORY[0x277D84F90];
  v26 = sub_26975004C();
  v27 = v25 & 0xC000000000000001;
  v28 = v25 & 0xFFFFFFFFFFFFFF8;
  v29 = v25 + 32;
  v14 = v22;
  for (i = 0; v26 != i; ++i)
  {
    if (v27)
    {
      v31 = MEMORY[0x26D646120](i, a10[8]);
    }

    else
    {
      if (i >= *(v28 + 16))
      {
        goto LABEL_55;
      }

      v31 = *(v29 + 8 * i);
    }

    v32 = v31;
    if (__OFADD__(i, 1))
    {
      goto LABEL_54;
    }

    v18 = sub_269854644();
    v34 = v33;
    v35 = sub_269854644();
    if (v34)
    {
      if (!v36)
      {
        goto LABEL_26;
      }

      if (v18 == v35 && v34 == v36)
      {
      }

      else
      {
        v18 = sub_269855584();

        if ((v18 & 1) == 0)
        {

          continue;
        }
      }
    }

    else if (v36)
    {
LABEL_26:

      continue;
    }

    sub_269855284();
    sub_2698552B4();
    sub_2698552C4();
    sub_269855294();
  }

  v18 = v14;

  v14 = a10;
  v24 = a11;
LABEL_32:
  if (!sub_26975004C())
  {

    goto LABEL_42;
  }

  sub_269750050();
  if ((v24 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x26D646120](0, v24);
  }

  else
  {
    v38 = *(v24 + 32);
  }

  v39 = v38;
  v40 = sub_26975004C();

  if (v40 != 1)
  {

LABEL_42:
    if (qword_2803226E0 == -1)
    {
LABEL_43:
      OUTLINED_FUNCTION_33_0(v14[10], qword_28033D910);
      v47 = OUTLINED_FUNCTION_38_1();
      v48(v47);
      v49 = sub_2698548B4();
      v50 = sub_269854F14();
      v51 = os_log_type_enabled(v49, v50);
      v52 = v14[13];
      v54 = v14[10];
      v53 = v14[11];
      if (v51)
      {
        v55 = OUTLINED_FUNCTION_16_2();
        *v55 = 0;
        _os_log_impl(&dword_269684000, v49, v50, "PlayVideoDeviceResolutionStrategy.selectDeviceInSameRoomAsCurrentDevice None or more than one device is in same room as current device, unable to select a single one.", v55, 2u);
        OUTLINED_FUNCTION_16_9();
      }

      else
      {
      }

      (*(v53 + 8))(v52, v54);
      goto LABEL_49;
    }

LABEL_56:
    OUTLINED_FUNCTION_0_22();
    swift_once();
    goto LABEL_43;
  }

  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v41 = v14[14];
  v42 = v14[11];
  OUTLINED_FUNCTION_33_0(v14[10], qword_28033D910);
  (*(v42 + 16))(v41);
  v43 = sub_2698548B4();
  v44 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v44))
  {
    v45 = OUTLINED_FUNCTION_16_2();
    *v45 = 0;
    _os_log_impl(&dword_269684000, v43, v44, "PlayVideoDeviceResolutionStrategy.selectDeviceInSameRoomAsCurrentDevice Returning single device in same room as current device.", v45, 2u);
    OUTLINED_FUNCTION_10();
    v46 = v18;
  }

  else
  {
    v46 = v43;
    v43 = v18;
  }

  v56 = v14[14];
  v57 = v14[10];
  v58 = v14[11];

  (*(v58 + 8))(v56, v57);
LABEL_49:

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_116();

  return v61(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269705EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  __swift_destroy_boxed_opaque_existential_0(v22 + 2);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v25 = v22[17];
  OUTLINED_FUNCTION_33_0(v22[10], qword_28033D910);
  v26 = OUTLINED_FUNCTION_38_1();
  v27(v26);
  v28 = v25;
  v29 = sub_2698548B4();
  v30 = sub_269854F24();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v22[17];
  v33 = v22[11];
  v34 = v22[12];
  v35 = v22[10];
  if (v31)
  {
    a10 = v22[12];
    v36 = OUTLINED_FUNCTION_27_2();
    v37 = OUTLINED_FUNCTION_9_3();
    a11 = v37;
    *v36 = 136315138;
    v22[7] = v32;
    v38 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v39 = sub_269854AE4();
    v41 = sub_26974F520(v39, v40, &a11);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_269684000, v29, v30, "Failure getting devicesWithProximity: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_16_9();

    (*(v33 + 8))(a10, v35);
  }

  else
  {

    (*(v33 + 8))(v34, v35);
  }

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_116();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269706094()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v0;
  v2 = sub_2698548D4();
  v1[9] = v2;
  OUTLINED_FUNCTION_5_12(v2);
  v1[10] = v3;
  v1[11] = swift_task_alloc();
  v4 = sub_2698545B4();
  OUTLINED_FUNCTION_8_9(v4);
  v1[12] = swift_task_alloc();
  v5 = sub_2698545E4();
  v1[13] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[14] = v6;
  v1[15] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2697061BC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[8];
  sub_2698545D4();
  sub_269854594();
  sub_2698545C4();
  sub_2696A73F8(v4 + 96, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B00, &unk_26985C1E0);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[16] = v8;
  *(v8 + 16) = xmmword_269857710;
  (*(v2 + 16))(v8 + v7, v1, v3);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_269706318;

  return MEMORY[0x2821C8A80](v8, v5, v6);
}

uint64_t sub_269706318(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_6_13();
  *v8 = v7;
  *(v5 + 144) = v1;

  if (v1)
  {
    v9 = sub_2697064F4;
  }

  else
  {

    *(v5 + 152) = a1;
    v9 = sub_26970643C;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26970643C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = sub_2697E2660();

  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_28_2();

  return v2(v1);
}

uint64_t sub_2697064F4()
{
  v24 = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_33_0(*(v0 + 72), qword_28033D910);
  v2 = OUTLINED_FUNCTION_38_1();
  v3(v2);
  v4 = v1;
  v5 = sub_2698548B4();
  v6 = sub_269854F24();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 144);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = OUTLINED_FUNCTION_27_2();
    v12 = OUTLINED_FUNCTION_9_3();
    v23 = v12;
    *v11 = 136315138;
    *(v0 + 56) = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v14 = sub_269854AE4();
    v16 = sub_26974F520(v14, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_269684000, v5, v6, "Error gettinig Apple TV devices: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_10();

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 72);

    (*(v18 + 8))(v17, v19);
  }

  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

  OUTLINED_FUNCTION_28_2();
  v21 = MEMORY[0x277D84F90];

  return v20(v21);
}

void sub_269706734()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v60 = v2;
  v58 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v57 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_35_2(v6 - v5);
  v55 = sub_2698525E4();
  OUTLINED_FUNCTION_8();
  v54 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_35_2(v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v12 = OUTLINED_FUNCTION_8_9(v11);
  MEMORY[0x28223BE20](v12);
  v14 = v53 - v13;
  v59 = type metadata accessor for MediaNLIntent(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  v19 = sub_269853F44();
  OUTLINED_FUNCTION_8();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  v26 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_1();
  v32 = v31 - v30;
  (*(v28 + 16))(v31 - v30, v1, v26);
  v33 = OUTLINED_FUNCTION_23_8();
  v35 = v34(v33);
  if (v35 == *MEMORY[0x277D5C128])
  {
    v36 = OUTLINED_FUNCTION_23_8();
    v37(v36);
    (*(v21 + 32))(v25, v32, v19);
    (*(v21 + 16))(v18, v25, v19);
    if (qword_2803225E8 != -1)
    {
      swift_once();
    }

    sub_2696DAEF8();
    OUTLINED_FUNCTION_34_2();
    v14 = v64;
    if (v64)
    {
      v32 = v63;
      v38 = HIBYTE(v64) & 0xF;
      if ((v64 & 0x2000000000000000) == 0)
      {
        v38 = v63 & 0xFFFFFFFFFFFFLL;
      }

      if (v38)
      {
      }

      else
      {

        v32 = 0;
        v14 = 0;
      }
    }

    else
    {
      v32 = 0;
    }

    if (qword_2803225E0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_34_2();
    v26 = v64;
    if (v64)
    {
      v1 = v63;
      OUTLINED_FUNCTION_10_11();
      (*(v21 + 8))(v25, v19);
LABEL_37:
      v52 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v52 = v1 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
      }

      else
      {

        v1 = 0;
        v26 = 0;
      }

      goto LABEL_43;
    }

    if (qword_2803225F8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_34_2();
    OUTLINED_FUNCTION_10_11();
    (*(v21 + 8))(v25, v19);
    v26 = v64;
    if (v64)
    {
      v1 = v63;
      goto LABEL_37;
    }

    v1 = 0;
LABEL_43:
    v48 = 0;
    v50 = 0;
    goto LABEL_44;
  }

  v39 = v35 == *MEMORY[0x277D5C140] || v35 == *MEMORY[0x277D5C148];
  if (!v39)
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
      swift_once();
    }

    v1 = v58;
    OUTLINED_FUNCTION_33_0(v58, qword_28033D910);
    v42 = v57;
    v43 = v56;
    (*(v57 + 16))(v56);
    v44 = sub_2698548B4();
    v14 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_4(v14))
    {
      v45 = OUTLINED_FUNCTION_16_2();
      *v45 = 0;
      _os_log_impl(&dword_269684000, v44, v14, "Unexpected parse type, using default filter", v45, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v42 + 8))(v43, v1);
    v46 = OUTLINED_FUNCTION_23_8();
    v47(v46);
    goto LABEL_22;
  }

  v40 = OUTLINED_FUNCTION_23_8();
  v41(v40);
  sub_2696CB644(v14);
  v26 = sub_269852474();
  OUTLINED_FUNCTION_20_9(v14);
  if (v39)
  {
    sub_26969B0C0(v14, &qword_280323360, &unk_26985AB80);
LABEL_22:
    OUTLINED_FUNCTION_37_2();
    goto LABEL_43;
  }

  v1 = v53[1];
  sub_269852414();
  (*(*(v26 - 8) + 8))(v14, v26);
  v48 = sub_269851FD4();
  v50 = v49;
  (*(v54 + 8))(v1, v55);
  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_37_2();
LABEL_44:
  v62[0] = 0;
  v62[1] = 0;
  LOBYTE(v62[2]) = 1;
  *(&v62[2] + 1) = *v73;
  HIDWORD(v62[2]) = *&v73[3];
  v62[3] = v1;
  v62[4] = v26;
  v62[5] = v32;
  v62[6] = v14;
  v62[7] = v48;
  v62[8] = v50;
  v63 = 0;
  v64 = 0;
  v65 = 1;
  *&v66[3] = *&v73[3];
  *v66 = *v73;
  v67 = v1;
  v68 = v26;
  v69 = v32;
  v70 = v14;
  v71 = v48;
  v72 = v50;
  sub_269706F14(v62, &v61);
  sub_269706F70(&v63);
  memcpy(v60, v62, 0x48uLL);
  OUTLINED_FUNCTION_21_0();
}

void *sub_269706E7C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_269706EBC()
{
  sub_269706E7C();

  return MEMORY[0x2821FE8D8](v0, 200, 7);
}

uint64_t sub_269706FC4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_269854664();
      result = sub_269854CE4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_269707020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269707090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSelectionDonationAggregations(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697070F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSelectionDonationAggregations(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269707158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B40, &qword_26985C438);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26970720C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_269707264(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_269701818(result);
  }

  else
  {
  }
}

uint64_t OUTLINED_FUNCTION_7_19()
{

  return sub_269854CD4();
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_9_12()
{

  JUMPOUT(0x26D647170);
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return sub_26970720C(v0, type metadata accessor for MediaNLIntent);
}

void OUTLINED_FUNCTION_16_9()
{

  JUMPOUT(0x26D647170);
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return sub_2696C8108(0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_32_1(uint64_t a1, float a2)
{
  *v2 = a2;

  return sub_269854604();
}

void *OUTLINED_FUNCTION_34_2()
{

  return sub_269853D54();
}

void OUTLINED_FUNCTION_42_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_269855114();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return sub_2696C78DC(v0, 0, 3);
}

unint64_t OUTLINED_FUNCTION_49_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_26974F520(a1, a2, va);
}

uint64_t sub_269707524()
{
  qword_28033D660 = qword_280323D80;
  *algn_28033D668 = off_280323D88;
}

uint64_t sub_269707540(uint64_t a1)
{
  sub_269852C84();
  sub_269852BB4();
  type metadata accessor for ExecutePlayVideoIntentFlow(0);
  v2 = swift_allocObject();
  sub_2697075A4(v5, a1, &v4);
  return v2;
}

uint64_t sub_2697075A4(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v7 = OBJC_IVAR____TtC16SiriVideoIntents26ExecutePlayVideoIntentFlow_input;
  v8 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  sub_26968E5D4(a1, v3 + 56);
  *(v3 + 96) = a2;
  sub_26968E5D4(a3, v3 + 16);
  return v3;
}

uint64_t sub_269707620(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_269853854();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC16SiriVideoIntents26ExecutePlayVideoIntentFlow_input;
  swift_beginAccess();
  sub_269702838(v5, v1 + v7);
  swift_endAccess();
  return 1;
}

uint64_t sub_269707724()
{
  OUTLINED_FUNCTION_2_7();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_2698548D4();
  v1[12] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[13] = v4;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v5 = sub_2698519C4();
  v1[16] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[17] = v6;
  v1[18] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269851A44();
  v1[19] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[20] = v8;
  v1[21] = OUTLINED_FUNCTION_4_7();
  v9 = sub_2698538B4();
  v1[22] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[23] = v10;
  v1[24] = OUTLINED_FUNCTION_4_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v11 = sub_269853854();
  v1[26] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[27] = v12;
  v1[28] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_269707944);
}

uint64_t sub_269707944()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[11];
  v4 = OBJC_IVAR____TtC16SiriVideoIntents26ExecutePlayVideoIntentFlow_input;
  swift_beginAccess();
  sub_26970897C(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2697089EC(v0[25]);
    return sub_269855354();
  }

  else
  {
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[22];
    (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
    sub_269853844();
    sub_2696CB944();
    v10 = v9;
    (*(v7 + 8))(v6, v8);
    if (v10)
    {

      sub_269851A34();
      v11 = sub_2698543F4();
      if (v12)
      {

        sub_2698519B4();
        v15 = swift_task_alloc();
        v0[29] = v15;
        v14 = sub_269708A54(&qword_280323B78, MEMORY[0x277CBA370], MEMORY[0x277CBA368]);
        *v15 = v0;
        v15[1] = sub_269707D00;
        v12 = v0[18];
        v13 = v0[19];
        v11 = (v0 + 2);
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x28210B3D0](v11, v12, v13, v14);
    }

    else
    {
      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_280322700);
      }

      v16 = v0[15];
      v17 = v0[12];
      v18 = v0[13];
      v19 = __swift_project_value_buffer(v17, qword_281571B38);
      (*(v18 + 16))(v16, v19, v17);
      v20 = sub_2698548B4();
      v21 = sub_269854F24();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_269684000, v20, v21, "Unable to extract searach term from input", v22, 2u);
        MEMORY[0x26D647170](v22, -1, -1);
      }

      v23 = OUTLINED_FUNCTION_22_3();
      v24(v23);
      sub_269853164();
      v25 = OUTLINED_FUNCTION_0_23();
      v26(v25);

      OUTLINED_FUNCTION_28_2();

      return v27(2);
    }
  }
}

uint64_t sub_269707D00()
{
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  v4 = v2[18];
  v5 = v2[17];
  v6 = v2[16];
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  v3[30] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v9 = sub_269707F98;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v9 = sub_269707E74;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_269707E74()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 88) + 56), *(*(v0 + 88) + 80));
  v1 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_269853494();

  sub_269853164();
  v2 = OUTLINED_FUNCTION_22_3();
  v3(v2);
  v4 = OUTLINED_FUNCTION_0_23();
  v5(v4);

  OUTLINED_FUNCTION_28_2();

  return v6(0);
}

uint64_t sub_269707F98()
{
  v28 = v0;
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v1 = v0[30];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F24();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[30];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    v0[9] = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v13 = sub_269854AE4();
    v15 = sub_26974F520(v13, v14, &v27);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_269684000, v7, v8, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D647170](v11, -1, -1);
    MEMORY[0x26D647170](v10, -1, -1);

    v16 = OUTLINED_FUNCTION_22_3();
    v17(v16);
  }

  else
  {

    v18 = OUTLINED_FUNCTION_22_3();
    v19(v18);
  }

  v20 = v0[30];
  sub_269853164();

  v21 = OUTLINED_FUNCTION_22_3();
  v22(v21);
  v23 = OUTLINED_FUNCTION_0_23();
  v24(v23);

  OUTLINED_FUNCTION_28_2();

  return v25(2);
}

uint64_t sub_26970821C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExecutePlayVideoIntentFlow(0);
  sub_269708A54(&qword_280323B70, type metadata accessor for ExecutePlayVideoIntentFlow, &unk_26985C4F0);
  return sub_269852B54();
}

void *sub_2697082AC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  sub_2697089EC(v0 + OBJC_IVAR____TtC16SiriVideoIntents26ExecutePlayVideoIntentFlow_input);
  return v0;
}

uint64_t sub_2697082EC()
{
  sub_2697082AC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ExecutePlayVideoIntentFlow(uint64_t a1)
{
  result = qword_280323B60;
  if (!qword_280323B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269708398(uint64_t a1)
{
  sub_2697012B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269708444()
{
  if (qword_280322458 != -1)
  {
    swift_once();
  }

  v0 = qword_28033D660;

  return v0;
}

uint64_t sub_2697084BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_269708558;

  return sub_269707724();
}

uint64_t sub_269708558()
{
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_28_2();

  return v5(v2);
}

uint64_t sub_269708668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_269708558;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_26970873C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_269708804;

  return sub_269738544(a1, a2, WitnessTable);
}

uint64_t sub_269708804()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2697088E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExecutePlayVideoIntentFlow(0);

  return sub_269852B84();
}

uint64_t sub_269708924(uint64_t a1)
{
  result = sub_269708A54(&qword_280323B70, type metadata accessor for ExecutePlayVideoIntentFlow, &unk_26985C4F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26970897C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697089EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269708A54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269708AC0()
{
  qword_28033D670 = qword_280323D18;
  *algn_28033D678 = off_280323D20;
}

uint64_t sub_269708ADC(uint64_t a1)
{
  sub_269852C84();
  sub_269852BB4();
  type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow(0);
  v2 = swift_allocObject();
  sub_269708B40(v5, a1, &v4);
  return v2;
}

uint64_t sub_269708B40(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v7 = OBJC_IVAR____TtC16SiriVideoIntents39ExecuteShowInAppSearchResultsIntentFlow_input;
  v8 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  sub_26968E5D4(a1, v3 + 56);
  *(v3 + 96) = a2;
  sub_26968E5D4(a3, v3 + 16);
  return v3;
}

uint64_t sub_269708BBC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_269853854();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC16SiriVideoIntents39ExecuteShowInAppSearchResultsIntentFlow_input;
  swift_beginAccess();
  sub_269702838(v5, v1 + v7);
  swift_endAccess();
  return 1;
}

uint64_t sub_269708CC0()
{
  OUTLINED_FUNCTION_2_7();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_2698548D4();
  v1[12] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[13] = v4;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v5 = sub_2698519C4();
  v1[16] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[17] = v6;
  v1[18] = OUTLINED_FUNCTION_4_7();
  sub_269851A24();
  v1[19] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269851994();
  v1[20] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[21] = v8;
  v1[22] = OUTLINED_FUNCTION_4_7();
  v9 = sub_2698538B4();
  v1[23] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[24] = v10;
  v1[25] = OUTLINED_FUNCTION_4_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v1[26] = OUTLINED_FUNCTION_4_7();
  v11 = sub_269853854();
  v1[27] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[28] = v12;
  v1[29] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_269708F04);
}

void sub_269708F04()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[11];
  v4 = OBJC_IVAR____TtC16SiriVideoIntents39ExecuteShowInAppSearchResultsIntentFlow_input;
  swift_beginAccess();
  sub_26970897C(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2697089EC(v0[26]);
    sub_269855354();
    OUTLINED_FUNCTION_28_1();
  }

  else
  {
    v6 = v0[24];
    v5 = v0[25];
    v7 = v0[23];
    (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
    sub_269853844();
    sub_2696CB944();
    v9 = v8;
    (*(v6 + 8))(v5, v7);
    if (!v9)
    {
      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_280322700);
      }

      v17 = v0[15];
      v18 = v0[12];
      v19 = v0[13];
      v20 = __swift_project_value_buffer(v18, qword_281571B38);
      (*(v19 + 16))(v17, v20, v18);
      v21 = sub_2698548B4();
      v22 = sub_269854F24();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_269684000, v21, v22, "Unable to extract searach term from input", v23, 2u);
        MEMORY[0x26D647170](v23, -1, -1);
      }

      v24 = OUTLINED_FUNCTION_22_3();
      v25(v24);
      sub_269853164();
      v26 = OUTLINED_FUNCTION_0_24();
      v27(v26);

      OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_28_1();

      __asm { BRAA            X2, X16 }
    }

    v10 = v0[19];

    sub_269851A14();
    MEMORY[0x26D642880](v10);
    v11 = sub_2698543F4();
    if (v12)
    {

      sub_2698519B4();
      v15 = swift_task_alloc();
      v0[30] = v15;
      sub_269709CC8(&qword_280323BA0, MEMORY[0x277CB9B78], MEMORY[0x277CB9B70]);
      *v15 = v0;
      v15[1] = sub_2697092C8;
      OUTLINED_FUNCTION_28_1();
    }

    else
    {
      __break(1u);
    }

    MEMORY[0x28210B3D0](v11, v12, v13, v14);
  }
}

uint64_t sub_2697092C8()
{
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  v4 = v2[18];
  v5 = v2[17];
  v6 = v2[16];
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  v3[31] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v9 = sub_269709568;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v9 = sub_26970943C;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26970943C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 88) + 56), *(*(v0 + 88) + 80));
  v1 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_269853494();

  sub_269853164();
  v2 = OUTLINED_FUNCTION_22_3();
  v3(v2);
  v4 = OUTLINED_FUNCTION_0_24();
  v5(v4);

  OUTLINED_FUNCTION_28_2();

  return v6(0);
}

uint64_t sub_269709568()
{
  v28 = v0;
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v1 = v0[31];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F24();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    v0[9] = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v13 = sub_269854AE4();
    v15 = sub_26974F520(v13, v14, &v27);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_269684000, v7, v8, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D647170](v11, -1, -1);
    MEMORY[0x26D647170](v10, -1, -1);

    v16 = OUTLINED_FUNCTION_22_3();
    v17(v16);
  }

  else
  {

    v18 = OUTLINED_FUNCTION_22_3();
    v19(v18);
  }

  v20 = v0[31];
  sub_269853164();

  v21 = OUTLINED_FUNCTION_22_3();
  v22(v21);
  v23 = OUTLINED_FUNCTION_0_24();
  v24(v23);

  OUTLINED_FUNCTION_28_2();

  return v25(2);
}

uint64_t sub_2697097F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow(0);
  sub_269709CC8(&qword_280323B98, type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow, &unk_26985C608);
  return sub_269852B54();
}

void *sub_269709884()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  sub_2697089EC(v0 + OBJC_IVAR____TtC16SiriVideoIntents39ExecuteShowInAppSearchResultsIntentFlow_input);
  return v0;
}

uint64_t sub_2697098C4()
{
  sub_269709884();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow(uint64_t a1)
{
  result = qword_280323B88;
  if (!qword_280323B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269709970(uint64_t a1)
{
  sub_2697012B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269709A1C()
{
  if (qword_280322460 != -1)
  {
    swift_once();
  }

  v0 = qword_28033D670;

  return v0;
}

uint64_t sub_269709A84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_269708558;

  return sub_269708CC0();
}

uint64_t sub_269709B6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_269708804;

  return sub_269738544(a1, a2, WitnessTable);
}

uint64_t sub_269709C34(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow(0);

  return sub_269852B84();
}

uint64_t sub_269709C70(uint64_t a1)
{
  result = sub_269709CC8(&qword_280323B98, type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow, &unk_26985C608);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269709CC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269709D34()
{
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  sub_2698538C4();
  sub_269852C84();
  if (qword_2803226B0 != -1)
  {
    swift_once();
  }

  v2 = qword_28033D8E0;
  v3 = sub_269853264();
  swift_allocObject();
  v4 = sub_269853254();
  v40[3] = v0;
  v40[4] = &off_287A3DBA0;
  v40[0] = v1;
  v38 = &type metadata for AppInfoProvider;
  v39 = &off_287A41388;
  v5 = type metadata accessor for SiriSignalsRecorder();
  v35 = v5;
  v36 = &off_287A44CA0;
  v34[0] = v2;
  v32 = &type metadata for CoreAnalyticsService;
  v33 = &xmmword_287A41610;
  v29 = v3;
  v30 = MEMORY[0x277D5BD58];
  *&v28 = v4;
  type metadata accessor for ThirdPartyAppDisambiguationStrategy(0);
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v40, v0);
  v27[1] = v27;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v17 = *v10;
  v18 = *v15;
  v19 = (v6 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_dialogProvider);
  v19[3] = v0;
  v19[4] = &off_287A3DBA0;
  *v19 = v17;
  v20 = v6 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appInfoProvider;
  *(v20 + 24) = &type metadata for AppInfoProvider;
  *(v20 + 32) = &off_287A41388;
  v21 = (v6 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_signalRecorder);
  v21[3] = v5;
  v21[4] = &off_287A44CA0;
  *v21 = v18;
  v22 = v6 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_analyticsService;
  *(v22 + 24) = &type metadata for CoreAnalyticsService;
  *(v22 + 32) = &xmmword_287A41610;
  v23 = OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appDisambiguationContext;
  v24 = type metadata accessor for AppDisambiguationContext(0);
  __swift_storeEnumTagSinglePayload(v6 + v23, 1, 1, v24);
  sub_26970EF58(v42, v6 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_deviceState);
  sub_26968E5D4(&v41, v6 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_aceServiceInvoker);
  sub_26968E5D4(&v28, v6 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_responseGenerator);
  type metadata accessor for LocUtil();
  v25 = swift_allocObject();
  sub_26968E5D4(v42, v25 + 16);
  *(v6 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_locUtil) = v25;

  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v40);
  return v6;
}

uint64_t sub_26970A0FC()
{
  v388 = *MEMORY[0x277D85DE8];
  v349 = type metadata accessor for SignalRecordingContext(0);
  OUTLINED_FUNCTION_8();
  v348 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v381 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323798, &unk_26985C770);
  OUTLINED_FUNCTION_8_9(v4);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_15_1(&v346 - v6);
  v355 = type metadata accessor for AppDisambiguationContext(v7);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v10 - v9);
  v365 = sub_2698523C4();
  OUTLINED_FUNCTION_8();
  v364 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v363 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v15);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_1(&v346 - v17);
  v369 = sub_269851EF4();
  OUTLINED_FUNCTION_8();
  v368 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v21 - v20);
  v373 = sub_269852474();
  OUTLINED_FUNCTION_8();
  v362 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15_1(&v346 - v25);
  v374 = sub_269853874();
  OUTLINED_FUNCTION_8();
  v372 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v29 - v28);
  v379 = sub_2698538A4();
  OUTLINED_FUNCTION_8();
  v378 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v32);
  v383 = &v346 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323700, qword_26985B120);
  OUTLINED_FUNCTION_8_9(v34);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v35);
  v366 = &v346 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323330, qword_26985B080);
  OUTLINED_FUNCTION_8_9(v37);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v346 - v39;
  v384 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v382 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  v53 = MEMORY[0x28223BE20](v52);
  v55 = &v346 - v54;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v57);
  v59 = OUTLINED_FUNCTION_15_1(&v346 - v58);
  v380 = type metadata accessor for MediaNLIntent(v59);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3_1();
  v63 = v62 - v61;
  v64 = sub_269853F44();
  OUTLINED_FUNCTION_8();
  v66 = v65;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_3_1();
  v70 = v69 - v68;
  v71 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v73 = v72;
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_3_1();
  v77 = (v76 - v75);
  sub_269853844();
  v78 = (*(v73 + 88))(v77, v71);
  if (v78 == *MEMORY[0x277D5C128])
  {
    v79 = OUTLINED_FUNCTION_16_10();
    v80(v79);
    v81 = OUTLINED_FUNCTION_24_6();
    v82(v81);
    v383 = v66;
    (*(v66 + 2))(v63, v70, v64);
    if (qword_280322628 != -1)
    {
      swift_once();
    }

    sub_26970F014(qword_280323548, type metadata accessor for MediaNLIntent, &unk_269860BD8);
    sub_269853D54();
    v83 = v384;
    v84 = v381;
    if (v386 == 7)
    {
      goto LABEL_5;
    }

    if (sub_2697A9738(v386) == 0x6C65636E6163 && v134 == 0xE600000000000000)
    {
    }

    else
    {
      v136 = sub_269855584();

      if ((v136 & 1) == 0)
      {
LABEL_5:
        v379 = v64;
        sub_269853F24();
        v85 = sub_269853D94();
        if (__swift_getEnumTagSinglePayload(v40, 1, v85) == 1)
        {
          sub_26969B0C0(v40, &qword_280323330, qword_26985B080);
          v86 = 0;
          v87 = 0;
          v88 = 0x280322000uLL;
LABEL_7:
          if (*(v88 + 1760) != -1)
          {
            OUTLINED_FUNCTION_0_10(&qword_2803226E0);
          }

          v89 = __swift_project_value_buffer(v83, qword_28033D910);
          v90 = v382;
          v91 = v83;
          v92 = v375;
          (*(v382 + 16))(v375, v89, v91);

          v93 = sub_2698548B4();
          v94 = sub_269854F14();

          if (os_log_type_enabled(v93, v94))
          {
            v95 = OUTLINED_FUNCTION_27_2();
            v381 = v63;
            v96 = v70;
            v97 = v95;
            v98 = OUTLINED_FUNCTION_9_3();
            *&v386 = v98;
            *v97 = 136315138;
            if (v87)
            {
              v99 = v86;
            }

            else
            {
              v99 = 7104878;
            }

            if (!v87)
            {
              v87 = 0xE300000000000000;
            }

            v100 = sub_26974F520(v99, v87, &v386);

            *(v97 + 4) = v100;
            _os_log_impl(&dword_269684000, v93, v94, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse NLv3 intent domain %s is not media", v97, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v98);
            OUTLINED_FUNCTION_10();
            v70 = v96;
            v63 = v381;
            OUTLINED_FUNCTION_10();
          }

          else
          {
          }

          (*(v90 + 8))(v92, v91);
          v191 = v383;
          sub_269853694();
          v156 = sub_269853674();
          OUTLINED_FUNCTION_1_16();
          sub_26970F05C(v63, v192);
          (*(v191 + 1))(v70, v379);
          return v156;
        }

        v378 = v70;
        v86 = sub_269853D74();
        v87 = v157;
        OUTLINED_FUNCTION_3_14();
        v158 = OUTLINED_FUNCTION_0_17();
        v159(v158);
        if (v86 == 0x616964656DLL && v87 == 0xE500000000000000)
        {

          v162 = v376;
        }

        else
        {
          v161 = sub_269855584();
          v162 = v376;
          v70 = v378;
          v88 = 0x280322000;
          if ((v161 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        v193 = v366;
        if (qword_2803225D0 != -1)
        {
          swift_once();
        }

        v194 = _s10MediaNLAppVMa(0);
        sub_26970F014(qword_280323708, _s10MediaNLAppVMa, &unk_2698609DC);
        v195 = v63;
        sub_269853D44();
        if (__swift_getEnumTagSinglePayload(v193, 1, v194) == 1)
        {
          sub_26969B0C0(v193, &qword_280323700, qword_26985B120);
          v167 = v382;
LABEL_102:
          OUTLINED_FUNCTION_34_3();
          if (!v113)
          {
            v247 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
          }

          OUTLINED_FUNCTION_15_8(v247, qword_28033D910);
          v248 = v361;
          v249(v361);
          v250 = sub_2698548B4();
          v251 = sub_269854F14();
          v252 = OUTLINED_FUNCTION_17_2(v251);
          v253 = v379;
          v254 = v383;
          if (v252)
          {
            v255 = OUTLINED_FUNCTION_16_2();
            OUTLINED_FUNCTION_30_2(v255);
            OUTLINED_FUNCTION_10_12();
            _os_log_impl(v256, v257, v258, v259, v260, 2u);
            OUTLINED_FUNCTION_18_7();
          }

          (*(v167 + 8))(v248, v83);
          sub_269853694();
          sub_2696BAE9C();
          v261 = swift_allocError();
          OUTLINED_FUNCTION_5_14(v262, 1);
          v156 = sub_269853654();
          OUTLINED_FUNCTION_1_16();
          sub_26970F05C(v195, v263);
          (*(v254 + 1))(v378, v253);
          goto LABEL_140;
        }

        v213 = sub_2697A5220();
        v165 = v214;
        sub_26970F05C(v193, _s10MediaNLAppVMa);
        v167 = v382;
        if (!v165)
        {
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_1_16();
        sub_26970F05C(v195, v215);
        (*(v383 + 1))(v378, v379);

        v166 = v213;
        goto LABEL_90;
      }
    }

    v168 = v63;
    v169 = v70;
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v170 = __swift_project_value_buffer(v83, qword_28033D910);
    v171 = v382;
    v172 = v377;
    (*(v382 + 16))(v377, v170, v83);
    v173 = sub_2698548B4();
    v174 = sub_269854F14();
    v175 = OUTLINED_FUNCTION_17_2(v174);
    v176 = v383;
    if (v175)
    {
      v177 = OUTLINED_FUNCTION_16_2();
      *v177 = 0;
      _os_log_impl(&dword_269684000, v173, v172, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse NLv3IntentOnly cancel", v177, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v171 + 8))(v377, v83);
    sub_269853694();
    v156 = sub_269853664();
    OUTLINED_FUNCTION_1_16();
    sub_26970F05C(v168, v178);
    (*(v176 + 1))(v169, v64);
    return v156;
  }

  if (v78 == *MEMORY[0x277D5C150])
  {
    v101 = OUTLINED_FUNCTION_16_10();
    v102(v101);
    (*(v378 + 32))(v383, v77, v379);
    OUTLINED_FUNCTION_34_3();
    if (!v113)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v103 = v384;
    v104 = __swift_project_value_buffer(v384, qword_28033D910);
    v105 = v382;
    v106 = *(v382 + 16);
    v106(v55, v104, v103);
    v107 = sub_2698548B4();
    v108 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v108))
    {
      v109 = OUTLINED_FUNCTION_16_2();
      *v109 = 0;
      _os_log_impl(&dword_269684000, v107, v108, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse directInvocation", v109, 2u);
      OUTLINED_FUNCTION_10();
    }

    v110 = *(v105 + 8);
    v111 = v55;
    v83 = v384;
    v110(v111, v384);
    v113 = sub_269853884() == 0xD00000000000002CLL && 0x800000026987A070 == v112;
    v114 = MEMORY[0x277D84F70];
    if (v113)
    {
    }

    else
    {
      v115 = sub_269855584();

      if ((v115 & 1) == 0)
      {
        if (sub_269853884() == 0xD00000000000002DLL && 0x800000026987A0A0 == v116)
        {
        }

        else
        {
          v118 = sub_269855584();

          if ((v118 & 1) == 0)
          {
            v119 = v350;
            v106(v350, v104, v83);
            v120 = v378;
            v121 = v347;
            v122 = v379;
            (*(v378 + 16))(v347, v383, v379);
            v123 = sub_2698548B4();
            v124 = sub_269854F14();
            if (os_log_type_enabled(v123, v124))
            {
              v125 = v121;
              v126 = OUTLINED_FUNCTION_27_2();
              v127 = OUTLINED_FUNCTION_9_3();
              *&v386 = v127;
              *v126 = 136315138;
              v382 = sub_269853884();
              v129 = v128;
              v130 = *(v120 + 8);
              v130(v125, v379);
              v131 = sub_26974F520(v382, v129, &v386);
              v122 = v379;

              *(v126 + 4) = v131;
              _os_log_impl(&dword_269684000, v123, v124, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse ignoring unsupported directInvocation %s", v126, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v127);
              OUTLINED_FUNCTION_10();
              OUTLINED_FUNCTION_18_7();

              v132 = v350;
              v133 = v384;
            }

            else
            {
              v312 = v83;

              v130 = *(v120 + 8);
              v130(v121, v122);
              v132 = v119;
              v133 = v312;
            }

            v110(v132, v133);
            sub_269853694();
            v156 = sub_269853674();
            v130(v383, v122);
            return v156;
          }
        }

        if (sub_269853894())
        {
          v274 = objc_opt_self();
          v114 = sub_2698549D4();

          *&v386 = 0;
          v275 = [v274 dataWithJSONObject:v114 options:0 error:&v386];

          v276 = v386;
          if (v275)
          {
            sub_269851C94();

            if (qword_280322440 != -1)
            {
              swift_once();
            }

            sub_2696CC3A4();
            sub_269851A84();
            v313 = OUTLINED_FUNCTION_24_6();
            sub_2696C1F3C(v313, v314);
            v114 = *(&v386 + 1);
            if (*(&v386 + 1))
            {
              v315 = *(&v387[0] + 1);

              if (v315)
              {
                sub_269853694();
                sub_269854404();
                sub_2698543E4();
                v156 = sub_269853684();

                v316 = OUTLINED_FUNCTION_8_13();
                v317(v316);
                return v156;
              }
            }
          }

          else
          {
            v298 = v276;
            v299 = sub_269851BD4();

            swift_willThrow();
          }
        }

        v300 = OUTLINED_FUNCTION_36_2(&v384);
        v106(v300, v104, v83);
        v197 = sub_2698548B4();
        v301 = sub_269854F24();
        if (!OUTLINED_FUNCTION_17_2(v301))
        {
          goto LABEL_139;
        }

        goto LABEL_138;
      }
    }

    if (sub_269853894())
    {
      sub_26981CFD4();

      if (*(&v387[0] + 1))
      {
        if (swift_dynamicCast())
        {
          v163 = OUTLINED_FUNCTION_8_13();
          v164(v163);
          v166 = v385[0];
          v165 = v385[1];

          v167 = v382;
LABEL_81:
          v84 = v381;
          goto LABEL_82;
        }

LABEL_78:
        v196 = OUTLINED_FUNCTION_36_2(&v389);
        v106(v196, v104, v83);
        v197 = sub_2698548B4();
        v198 = sub_269854F14();
        if (!OUTLINED_FUNCTION_17_2(v198))
        {
LABEL_139:

          v110(v114, v83);
          sub_269853694();
          sub_2696BAE9C();
          v261 = swift_allocError();
          OUTLINED_FUNCTION_5_14(v308, 1);
          v156 = sub_269853654();
          v309 = OUTLINED_FUNCTION_8_13();
          v310(v309);
LABEL_140:

          return v156;
        }

LABEL_138:
        v302 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v302);
        OUTLINED_FUNCTION_10_12();
        _os_log_impl(v303, v304, v305, v306, v307, 2u);
        OUTLINED_FUNCTION_18_7();
        goto LABEL_139;
      }
    }

    else
    {
      v386 = 0u;
      v387[0] = 0u;
    }

    sub_26969B0C0(&v386, &qword_280322F88, qword_26985AB90);
    goto LABEL_78;
  }

  if (v78 == *MEMORY[0x277D5C140])
  {
    v137 = OUTLINED_FUNCTION_16_10();
    v138(v137);
    v139 = v372;
    v140 = v371;
    v141 = OUTLINED_FUNCTION_24_6();
    v142 = v374;
    v143(v141);
    v144 = v367;
    sub_269853864();
    v145 = v370;
    sub_2696D3C74();
    OUTLINED_FUNCTION_3_15();
    v146(v144, v369);
    v147 = v373;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v145, 1, v373);
    v83 = v384;
    v149 = v382;
    if (EnumTagSinglePayload == 1)
    {
      v150 = sub_26969B0C0(v145, &qword_280323360, &unk_26985AB80);
      if (qword_2803226E0 != -1)
      {
        v150 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      OUTLINED_FUNCTION_15_8(v150, qword_28033D910);
      v151 = v357;
      v152(v357);
      v153 = sub_2698548B4();
      v154 = sub_269854F14();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v155);
        _os_log_impl(&dword_269684000, v153, v154, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse, pegasusResults has no videoClientComponent", v144, 2u);
        OUTLINED_FUNCTION_18_7();
      }

      (*(v149 + 8))(v151, v83);
      sub_269853694();
      v156 = sub_269853674();
      (*(v139 + 8))(v140, v142);
      return v156;
    }

    v199 = v362;
    v200 = v382;
    v201 = v358;
    (*(v362 + 32))(v358, v145, v147);
    v202 = v363;
    sub_269852424();
    v203 = sub_2698521E4();
    v204 = v140;
    v165 = v205;
    OUTLINED_FUNCTION_3_15();
    v206(v202, v365);
    v207 = v201;
    v167 = v200;
    (*(v199 + 8))(v207, v147);
    v166 = v203;
    (*(v139 + 8))(v204, v374);

    goto LABEL_81;
  }

  v83 = v384;
  v179 = v382;
  if (v78 != *MEMORY[0x277D5C148])
  {
    OUTLINED_FUNCTION_34_3();
    if (!v113)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    v208 = __swift_project_value_buffer(v83, qword_28033D910);
    v209 = v356;
    (*(v179 + 16))(v356, v208, v83);
    v210 = sub_2698548B4();
    v211 = sub_269854F24();
    if (os_log_type_enabled(v210, v211))
    {
      v212 = OUTLINED_FUNCTION_16_2();
      *v212 = 0;
      _os_log_impl(&dword_269684000, v210, v211, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse, unsupported parse type, will ignore", v212, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v179 + 8))(v209, v83);
    sub_269853694();
    v156 = sub_269853674();
    (*(v73 + 8))(v77, v71);
    return v156;
  }

  v180 = OUTLINED_FUNCTION_16_10();
  v181(v180);
  v182 = *v77;
  sub_2696D6C54();
  v84 = v381;
  v167 = v179;
  if (!v183)
  {
LABEL_124:
    if (qword_2803226E0 != -1)
    {
      v183 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    OUTLINED_FUNCTION_15_8(v183, qword_28033D910);
    v287 = v352;
    v288(v352);
    v289 = sub_2698548B4();
    v290 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v290))
    {
      v291 = OUTLINED_FUNCTION_16_2();
      *v291 = 0;
      _os_log_impl(&dword_269684000, v289, v290, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse, pommesResponse has no appBundleIdentifier", v291, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v167 + 8))(v287, v83);
    sub_269853694();
    v156 = sub_269853674();

    return v156;
  }

  v184 = v183;
  v185 = v353;
  sub_269854544();

  v186 = v363;
  sub_269852424();
  OUTLINED_FUNCTION_3_15();
  v187(v185, v373);
  v166 = sub_2698521E4();
  v165 = v188;
  OUTLINED_FUNCTION_3_15();
  v189(v186, v365);
  v190 = HIBYTE(v165) & 0xF;
  if ((v165 & 0x2000000000000000) == 0)
  {
    v190 = v166 & 0xFFFFFFFFFFFFLL;
  }

  if (!v190)
  {

    goto LABEL_124;
  }

LABEL_82:
  v162 = v376;
LABEL_90:
  OUTLINED_FUNCTION_34_3();
  if (!v113)
  {
    v216 = OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  OUTLINED_FUNCTION_15_8(v216, qword_28033D910);
  v379 = v217;
  v383 = v218;
  v380 = v219;
  v219(v162);

  v220 = sub_2698548B4();
  v221 = sub_269854F14();

  if (os_log_type_enabled(v220, v221))
  {
    v222 = OUTLINED_FUNCTION_27_2();
    v223 = OUTLINED_FUNCTION_9_3();
    *&v386 = v223;
    *v222 = 136315138;
    v224 = OUTLINED_FUNCTION_37_3();
    *(v222 + 4) = sub_26974F520(v224, v225, v226);
    OUTLINED_FUNCTION_10_12();
    _os_log_impl(v227, v228, v229, v230, v231, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v223);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_18_7();
  }

  v232 = *(v167 + 8);
  v232(v162, v83);
  if (v166 == 0xD000000000000020 && 0x800000026987D5B0 == v165)
  {
  }

  else
  {
    OUTLINED_FUNCTION_37_3();
    v234 = sub_269855584();

    if ((v234 & 1) == 0)
    {
      swift_beginAccess();
      v235 = v354;
      sub_26970EEA0();
      v236 = __swift_getEnumTagSinglePayload(v235, 1, v355);
      v378 = v165;
      v377 = v232;
      if (v236 == 1)
      {
        sub_26969B0C0(v235, &qword_280323798, &unk_26985C770);
        OUTLINED_FUNCTION_36_2(&v376);
        OUTLINED_FUNCTION_9_13();
        v237();
        v238 = sub_2698548B4();
        v239 = sub_269854F24();
        if (OUTLINED_FUNCTION_17_2(v239))
        {
          v240 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_30_2(v240);
          OUTLINED_FUNCTION_10_12();
          _os_log_impl(v241, v242, v243, v244, v245, 2u);
          OUTLINED_FUNCTION_18_7();
        }

        v246 = OUTLINED_FUNCTION_27_4();
        (v232)(v246);
        v280 = MEMORY[0x277D84F90];
      }

      else
      {
        v277 = v360;
        sub_26970EEFC();
        v278 = *v277;
        v279 = *(*v277 + 16);
        v280 = MEMORY[0x277D84F90];
        if (v279)
        {
          *&v386 = MEMORY[0x277D84F90];
          sub_269814F0C(0, v279, 0);
          v280 = v386;
          v281 = (v278 + 40);
          do
          {
            v283 = *(v281 - 1);
            v282 = *v281;
            *&v386 = v280;
            v285 = *(v280 + 16);
            v284 = *(v280 + 24);

            if (v285 >= v284 >> 1)
            {
              sub_269814F0C(v284 > 1, v285 + 1, 1);
              v280 = v386;
            }

            *(v280 + 16) = v285 + 1;
            v286 = v280 + 16 * v285;
            *(v286 + 32) = v283;
            *(v286 + 40) = v282;
            v281 += 3;
            --v279;
          }

          while (v279);
          v84 = v381;
        }

        v292 = sub_2698054AC(v278);
        v294 = v293;
        v295 = *(v360 + 16);
        sub_26970EF58(v359 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_analyticsService, v385);
        v296 = __swift_project_boxed_opaque_existential_1(v385, v385[3]);
        if ((v295 & 1) != 0 && v294 && (v166 != v292 || v294 != v378))
        {
          v296 = OUTLINED_FUNCTION_38_2(v296, v378);
        }

        if ((v295 & 6) != 0)
        {
          if (v294)
          {
            if (v166 != v292 || v294 != v378)
            {
              OUTLINED_FUNCTION_38_2(v296, v378);
            }
          }
        }

        else
        {
        }

        v319 = v360 + *(v355 + 28);
        v320 = (v319 + *(type metadata accessor for ModelParams(0) + 28));
        v321 = v320[2];
        v387[0] = v320[1];
        v387[1] = v321;
        v386 = *v320;
        sub_2697B3690();
        __swift_destroy_boxed_opaque_existential_0(v385);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C08, &unk_26985C780);
        v322 = *(v348 + 72);
        v323 = (*(v348 + 80) + 32) & ~*(v348 + 80);
        v324 = swift_allocObject();
        *(v324 + 16) = xmmword_2698580D0;
        v376 = v324;
        v325 = (v324 + v323);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
        v326 = v378;
        *v325 = v166;
        v325[1] = v326;
        sub_26970EFB8();
        swift_storeEnumTagMultiPayload();
        v327 = (v325 + v322);
        v381 = v166;
        v328 = v378;
        *v327 = v166;
        v327[1] = v328;
        sub_26970EFB8();
        swift_storeEnumTagMultiPayload();
        v329 = (v359 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_signalRecorder);
        swift_bridgeObjectRetain_n();
        v330 = 0;
        do
        {
          v331 = v330;
          sub_26970EFB8();
          __swift_project_boxed_opaque_existential_1(v329, v329[3]);
          sub_2697F9524();
          if (v332)
          {
            __swift_project_boxed_opaque_existential_1(v329, v329[3]);
            sub_2697F9BE8();
          }

          sub_26970F05C(v84, type metadata accessor for SignalRecordingContext);
          v330 = 1;
        }

        while ((v331 & 1) == 0);
        swift_setDeallocating();
        sub_269819D6C();
        sub_26970F05C(v360, type metadata accessor for AppDisambiguationContext);

        v83 = v384;
      }

      OUTLINED_FUNCTION_37_3();
      sub_26970C48C();
      v334 = v333;

      if (v334)
      {
        v335 = v351;
        OUTLINED_FUNCTION_9_13();
        v336();

        v337 = sub_2698548B4();
        v338 = sub_269854F24();

        if (os_log_type_enabled(v337, v338))
        {
          v339 = OUTLINED_FUNCTION_27_2();
          v340 = OUTLINED_FUNCTION_9_3();
          v385[0] = v340;
          *v339 = 136315138;
          MEMORY[0x26D645BC0](v280, MEMORY[0x277D837D0]);

          v341 = OUTLINED_FUNCTION_0_17();
          v344 = sub_26974F520(v341, v342, v343);

          *(v339 + 4) = v344;
          _os_log_impl(&dword_269684000, v337, v338, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse could not find appId in disambiguationAppIds (%s", v339, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v340);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();

          v345 = v351;
        }

        else
        {

          v345 = v335;
        }

        v377(v345, v83);
      }

      else
      {
      }

      sub_269853694();
      sub_269854404();
      OUTLINED_FUNCTION_37_3();
      sub_2698543E4();
      v156 = sub_269853684();

      return v156;
    }
  }

  OUTLINED_FUNCTION_36_2(v387 + 8);
  OUTLINED_FUNCTION_9_13();
  v264();
  v265 = sub_2698548B4();
  v266 = sub_269854F14();
  if (OUTLINED_FUNCTION_17_2(v266))
  {
    v267 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v267);
    OUTLINED_FUNCTION_10_12();
    _os_log_impl(v268, v269, v270, v271, v272, 2u);
    OUTLINED_FUNCTION_10();
  }

  v273 = OUTLINED_FUNCTION_27_4();
  (v232)(v273);
  sub_269853694();
  return sub_269853674();
}

uint64_t sub_26970C48C()
{
  OUTLINED_FUNCTION_31_2();
  v2 = 0;
  v4 = *(v3 + 16);
  v5 = (v3 + 40);
  while (v4 != v2)
  {
    v6 = *(v5 - 1) == v1 && *v5 == v0;
    if (v6 || (sub_269855584() & 1) != 0)
    {
      return v2;
    }

    ++v2;
    v5 += 2;
  }

  return 0;
}

uint64_t sub_26970C514()
{
  OUTLINED_FUNCTION_2_7();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  OUTLINED_FUNCTION_5_12(v4);
  v1[18] = v5;
  v1[19] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v6);
  v1[20] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269853634();
  v1[21] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[22] = v8;
  v1[23] = OUTLINED_FUNCTION_4_7();
  v9 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  v1[24] = v9;
  OUTLINED_FUNCTION_8_9(v9);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269851E24();
  v1[26] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[27] = v11;
  v1[28] = OUTLINED_FUNCTION_4_7();
  v12 = sub_269853234();
  v1[29] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v1[30] = v13;
  v1[31] = OUTLINED_FUNCTION_4_7();
  v14 = sub_2698548D4();
  v1[32] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[33] = v15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26970C748);
}

uint64_t sub_26970C748()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v1 = v0[35];
  v2 = v0[33];
  v28 = __swift_project_value_buffer(v0[32], qword_28033D910);
  v27 = *(v2 + 16);
  v27(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v4))
  {
    v5 = OUTLINED_FUNCTION_16_2();
    *v5 = 0;
    _os_log_impl(&dword_269684000, v3, v4, "ThirdPartyAppDisambiguationStrategy#makeDisambiguationPrompt", v5, 2u);
    OUTLINED_FUNCTION_10();
  }

  v6 = v0[33];
  v8 = v0[27];
  v7 = v0[28];
  v29 = v0[26];
  v10 = v0[16];
  v9 = v0[17];

  v11 = *(v6 + 8);
  v12 = OUTLINED_FUNCTION_0_17();
  v11(v12);
  v13 = v11;
  __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_deviceState), *(v9 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_deviceState + 24));
  OUTLINED_FUNCTION_0_17();
  sub_269852C94();
  sub_26970E7D4(v10, v7);
  sub_269836F4C();
  sub_269837944();

  (*(v8 + 8))(v7, v29);
  sub_269830114();
  v0[12] = v14;
  v0[13] = v15;
  v0[36] = v15;
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1((v0[17] + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_dialogProvider), *(v0[17] + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_dialogProvider + 24));
    v16 = swift_task_alloc();
    v0[37] = v16;
    *v16 = v0;
    v16[1] = sub_26970CB28;

    return sub_26977F2C4(0xD000000000000017, 0x800000026987D590);
  }

  else
  {
    (v27)(v0[34], v28, v0[32]);
    v18 = sub_2698548B4();
    v19 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v19))
    {
      v20 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v20);
      _os_log_impl(&dword_269684000, v18, v19, "Unable to get localized label for app disambiguation snippet", v7, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v21 = v0[34];
    v22 = v0[32];

    (v13)(v21, v22);
    sub_2696BAE9C();
    swift_allocError();
    OUTLINED_FUNCTION_5_14(v23, 7);
    swift_willThrow();
    v24 = OUTLINED_FUNCTION_20_10();
    v25(v24);

    OUTLINED_FUNCTION_7_7();

    return v26();
  }
}

uint64_t sub_26970CB28()
{
  OUTLINED_FUNCTION_2_7();
  v7 = *v1;
  v7[7] = v1;
  v7[8] = v2;
  v7[9] = v0;
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  v7[38] = v0;

  if (v0)
  {

    v5 = sub_26970D124;
  }

  else
  {
    v5 = sub_26970CC40;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26970CC40()
{
  v1 = v0[16];
  v2 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v3 = sub_26975004C();
  v4 = v3;
  v5 = 0;
  v27 = v0;
  while (v4 != v5)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D646120](v5, v0[16]);
    }

    else
    {
      if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }
    }

    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    sub_2698543F4();
    if (v6)
    {

      MEMORY[0x26D645B90](v7);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269854CD4();
      }

      v3 = sub_269854CF4();
      v2 = v30;
      ++v5;
      v0 = v27;
    }

    else
    {

      ++v5;
    }
  }

  v8 = sub_26975004C();
  if (v8)
  {
    v9 = v8;
    v29 = MEMORY[0x277D84F90];
    sub_2698150D0(0, v8 & ~(v8 >> 63), 0);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = v29;
      v25 = v2 & 0xC000000000000001;
      v26 = v2;
      v24 = v2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_31;
        }

        if (v25)
        {
          MEMORY[0x26D646120](v10, v26);
        }

        else
        {
          if (v10 >= *(v24 + 16))
          {
            goto LABEL_32;
          }
        }

        sub_26970D430();

        v14 = *(v29 + 16);
        v13 = *(v29 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_2698150D0(v13 > 1, v14 + 1, 1);
        }

        *(v29 + 16) = v14 + 1;
        v3 = sub_26970EEFC();
        ++v10;
        if (v12 == v9)
        {

          v0 = v27;
          goto LABEL_26;
        }
      }
    }

LABEL_33:
    __break(1u);
    return MEMORY[0x2821BB468](v3);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_26:
  v28 = v0[8];
  v15 = v0[36];
  v16 = v0[12];
  v17 = v0[31];
  v18 = v0;
  v19 = v0[17];
  v18[39] = v28;
  v18[10] = v16;
  v18[11] = v15;
  sub_269852674();
  v18[14] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A70, &unk_26985BEE0);
  sub_269852674();
  *(v18 + 336) = 10;
  sub_269852674();
  sub_269852E84();
  *(swift_task_alloc() + 16) = v17;
  sub_2698535C4();

  __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_responseGenerator), *(v19 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_responseGenerator + 24));
  v18[5] = type metadata accessor for VideoDataModels(0);
  v18[6] = sub_26970F014(&qword_280323A28, type metadata accessor for VideoDataModels, &protocol conformance descriptor for VideoDataModels);
  __swift_allocate_boxed_opaque_existential_1(v18 + 2);
  sub_26970EFB8();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v20 = swift_allocObject();
  v18[40] = v20;
  *(v20 + 16) = xmmword_2698590C0;
  *(v20 + 32) = v28;
  v21 = v28;
  v22 = swift_task_alloc();
  v18[41] = v22;
  *v22 = v18;
  v22[1] = sub_26970D1EC;
  v3 = v18[15];

  return MEMORY[0x2821BB468](v3);
}

uint64_t sub_26970D124(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_20_10();
  v2(v1);

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_26970D1EC()
{
  OUTLINED_FUNCTION_2_7();
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v1 = v3;

  __swift_destroy_boxed_opaque_existential_0((v3 + 16));

  return MEMORY[0x2822009F8](sub_26970D300);
}

uint64_t sub_26970D300()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);

  (*(v5 + 8))(v6, v7);
  sub_26970F05C(v4, type metadata accessor for VideoDataModels.DisambiguateItemsModel);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_7_7();

  return v8();
}

uint64_t sub_26970D430()
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v0 = MEMORY[0x28223BE20](v52);
  v57 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x28223BE20](v0);
  v55 = &v43 - v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A78, &unk_26985BEF0);
  v6 = MEMORY[0x28223BE20](v51);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = (&v43 - v10);
  v61 = sub_269852624();
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
  v14 = swift_allocObject();
  v49 = xmmword_269857710;
  *(v14 + 16) = xmmword_269857710;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F8, &unk_26985BB00);
  inited = swift_initStackObject();
  *(inited + 16) = v49;
  v59 = 0x696669746E656469;
  v60 = 0xEA00000000007265;
  v16 = MEMORY[0x277D837D0];
  sub_2698551B4();
  v17 = sub_2698543F4();
  *(inited + 96) = v16;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v18)
  {
    v20 = v18;
  }

  *(inited + 72) = v19;
  *(inited + 80) = v20;
  sub_269854A04();
  v21 = sub_269852664();
  v22 = MEMORY[0x277D63778];
  *(v14 + 56) = v21;
  *(v14 + 64) = v22;
  __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  sub_269852654();

  sub_269852634();
  v23 = sub_2698543F4();
  v25 = v24;
  *&v49 = sub_2696CB408();
  v48 = v26;
  v27 = sub_2698543F4();
  v56 = v11;
  if (v28)
  {
    *v11 = v27;
    v11[1] = v28;
    v29 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
    swift_storeEnumTagMultiPayload();
    v30 = v11;
    v31 = 0;
  }

  else
  {
    v29 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
    v30 = v11;
    v31 = 1;
  }

  __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
  v32 = 0xE000000000000000;
  if (v25)
  {
    v32 = v25;
  }

  v46 = v32;
  if (v25)
  {
    v33 = v23;
  }

  else
  {
    v33 = 0;
  }

  v44 = v33;
  v34 = *(v58 + 16);
  v35 = v13;
  v50 = v13;
  v36 = v61;
  v34(v5, v35, v61);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v36);
  v37 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  v43 = v37[5];
  v59 = 0;
  v60 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v47 = v5;
  v59 = 0;
  v60 = 0;
  sub_269852674();
  v45 = v37[7];
  type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  v38 = v53;
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v29);
  sub_26970EEA0();
  sub_269852674();
  sub_26969B0C0(v38, &qword_280323A78, &unk_26985BEF0);
  v51 = v37[8];
  v39 = v55;
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v36);
  sub_26970EEA0();
  sub_269852674();
  sub_26969B0C0(v39, &qword_2803239E0, &unk_26985D8B0);
  v59 = v44;
  v60 = v46;
  sub_269852674();
  v59 = v49;
  v60 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  v59 = 0;
  v60 = 0;
  sub_2698526A4();
  v40 = v56;
  sub_26970EEA0();
  sub_26970EEA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
  sub_2698526A4();
  sub_26969B0C0(v38, &qword_280323A78, &unk_26985BEF0);
  v41 = v47;
  sub_26970EEA0();
  sub_26970EEA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  sub_2698526A4();
  sub_26969B0C0(v39, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B0C0(v41, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B0C0(v40, &qword_280323A78, &unk_26985BEF0);
  return (*(v58 + 8))(v50, v61);
}

uint64_t sub_26970DB6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_269852F34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_2698535F4();
  sub_269853624();
  v10 = sub_269853234();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  sub_269853604();
  sub_2698535E4();
  (*(v4 + 104))(v6, *MEMORY[0x277D5BC50], v3);
  return sub_2698535D4();
}

uint64_t sub_26970DD24()
{
  sub_26969B0C0(v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appDisambiguationContext, &qword_280323798, &unk_26985C770);
  sub_2696D1E70(v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_dialogProvider);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_deviceState));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appInfoProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_aceServiceInvoker));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_signalRecorder));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_analyticsService));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_responseGenerator));
  return v0;
}

uint64_t sub_26970DDDC()
{
  sub_26970DD24();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ThirdPartyAppDisambiguationStrategy(uint64_t a1)
{
  result = qword_280323BE8;
  if (!qword_280323BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26970DE88(uint64_t a1)
{
  sub_26970DF3C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26970DF3C(uint64_t a1)
{
  if (!qword_280323BF8)
  {
    type metadata accessor for AppDisambiguationContext(255);
    v1 = sub_2698550A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280323BF8);
    }
  }
}

uint64_t sub_26970DFB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696BBFF8;

  return sub_26970C514();
}

uint64_t sub_26970E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBAB0](a1, a2, a3, a4);
}

uint64_t sub_26970E128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBAB8](a1, a2, a3, a4);
}

uint64_t sub_26970E1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBAA8](a1, a2, a3, a4);
}

uint64_t sub_26970E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2696BBE14;

  return MEMORY[0x2821BBAA0](a1, a2, a3, a4, a5);
}

uint64_t sub_26970E37C(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v59 = a9;
  v60 = a14;
  __swift_allocate_boxed_opaque_existential_1(v58);
  OUTLINED_FUNCTION_3_14();
  (*(v18 + 32))();
  v56 = a10;
  v57 = a15;
  __swift_allocate_boxed_opaque_existential_1(v55);
  OUTLINED_FUNCTION_3_14();
  (*(v19 + 32))();
  v53 = a11;
  v54 = a16;
  __swift_allocate_boxed_opaque_existential_1(v52);
  OUTLINED_FUNCTION_3_14();
  (*(v20 + 32))();
  v50 = a13;
  v51 = a18;
  __swift_allocate_boxed_opaque_existential_1(v49);
  OUTLINED_FUNCTION_3_14();
  (*(v21 + 32))();
  v47 = a12;
  v48 = a17;
  __swift_allocate_boxed_opaque_existential_1(&v46);
  OUTLINED_FUNCTION_3_14();
  (*(v22 + 32))();
  type metadata accessor for ThirdPartyAppDisambiguationStrategy(0);
  v23 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_1();
  v27 = (v26 - v25);
  (*(v28 + 16))(v26 - v25);
  __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
  __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_1();
  v32 = (v31 - v30);
  (*(v33 + 16))(v31 - v30);
  __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  v34 = *v27;
  v35 = *v32;
  v36 = (v23 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_dialogProvider);
  v36[3] = type metadata accessor for BaseDialogProvider();
  v36[4] = &off_287A3DBA0;
  *v36 = v34;
  v37 = v23 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appInfoProvider;
  *(v37 + 24) = &type metadata for AppInfoProvider;
  *(v37 + 32) = &off_287A41388;
  v38 = (v23 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_signalRecorder);
  v38[3] = type metadata accessor for SiriSignalsRecorder();
  v38[4] = &off_287A44CA0;
  *v38 = v35;
  v39 = v23 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_analyticsService;
  *(v39 + 24) = &type metadata for CoreAnalyticsService;
  *(v39 + 32) = &xmmword_287A41610;
  v40 = OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appDisambiguationContext;
  v41 = type metadata accessor for AppDisambiguationContext(0);
  __swift_storeEnumTagSinglePayload(v23 + v40, 1, 1, v41);
  sub_26970EF58(a2, v23 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_deviceState);
  sub_26968E5D4(a4, v23 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_aceServiceInvoker);
  sub_26968E5D4(&v46, v23 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_responseGenerator);
  type metadata accessor for LocUtil();
  v42 = swift_allocObject();
  sub_26968E5D4(a2, v42 + 16);
  *(v23 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_locUtil) = v42;
  __swift_destroy_boxed_opaque_existential_0(v49);
  __swift_destroy_boxed_opaque_existential_0(v52);
  __swift_destroy_boxed_opaque_existential_0(v55);
  __swift_destroy_boxed_opaque_existential_0(v58);
  return v23;
}

uint64_t sub_26970E7D4(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C00, qword_26986AA30);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v41 - v4;
  v51 = sub_269852EF4();
  v54 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v58 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269852FE4();
  v53 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v41 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v61 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = sub_269853714();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  v60 = a1;
  result = sub_26975004C();
  v43 = v16;
  v44 = v15;
  v42 = v18;
  if (!result)
  {
    v62 = v19;
LABEL_28:
    v39 = v42;
    sub_2698536F4();
    v40 = sub_269853704();

    (*(v43 + 8))(v39, v44);
    sub_26980B9A4(v40);
    return v63;
  }

  v21 = result;
  if (result >= 1)
  {
    v22 = 0;
    v59 = v60 & 0xC000000000000001;
    v56 = (v53 + 16);
    v46 = (v53 + 8);
    v47 = v53 + 32;
    v45 = v54 + 32;
    v23 = MEMORY[0x277D84F90];
    v62 = MEMORY[0x277D84F90];
    v48 = result;
    v49 = v14;
    do
    {
      if (v59)
      {
        MEMORY[0x26D646120](v22, v60);
      }

      else
      {
      }

      sub_2698543F4();
      if (v24)
      {
        sub_2698534D4();
        swift_allocObject();
        swift_retain_n();
        sub_2698534C4();
        sub_2698534B4();
        v26 = v25;

        if (v26)
        {
          if (qword_280322550 != -1)
          {
            swift_once();
          }

          sub_269853BC4();
          v27 = v49;
          sub_269852F84();
          if (qword_280322548 != -1)
          {
            swift_once();
          }

          sub_269853BC4();
          sub_269852F84();
          v28 = *v56;
          (*v56)(v57, v27, v6);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v29 = v62;
          }

          else
          {
            sub_26977C5AC();
            v29 = v35;
          }

          v30 = *(v29 + 16);
          if (v30 >= *(v29 + 24) >> 1)
          {
            sub_26977C5AC();
            v29 = v36;
          }

          *(v29 + 16) = v30 + 1;
          v31 = (*(v53 + 80) + 32) & ~*(v53 + 80);
          v62 = v29;
          (*(v53 + 32))(v29 + v31 + *(v53 + 72) * v30, v57, v6);
          v32 = v52;
          v28(v52, v27, v6);
          __swift_storeEnumTagSinglePayload(v32, 0, 1, v6);
          v28(v50, v61, v6);
          sub_269852ED4();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26977C4D4();
            v23 = v37;
          }

          v33 = *(v23 + 16);
          if (v33 >= *(v23 + 24) >> 1)
          {
            sub_26977C4D4();
            v23 = v38;
          }

          v34 = *v46;
          (*v46)(v61, v6);
          v34(v27, v6);
          *(v23 + 16) = v33 + 1;
          (*(v54 + 32))(v23 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v33, v58, v51);
          v63 = v23;
          v21 = v48;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v22;
    }

    while (v21 != v22);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_26970EEA0()
{
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_4_3();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26970EEFC()
{
  OUTLINED_FUNCTION_31_2();
  v2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26970EF58(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_3_14();
  (*v3)(a2);
  return a2;
}

uint64_t sub_26970EFB8()
{
  OUTLINED_FUNCTION_31_2();
  v2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26970F014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26970F05C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_38_2(uint64_t a1, uint64_t a2)
{

  return sub_269855584();
}

uint64_t sub_26970F1C8(char a1)
{
  if (!a1)
  {
    return 0x6E65746E49707061;
  }

  if (a1 == 1)
  {
    return 0x4974694B69726973;
  }

  return 0x726F707075736E75;
}

unint64_t sub_26970F238(uint64_t a1, uint64_t a2)
{
  v2 = sub_2698553E4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26970F2A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26970F238(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26970F2D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26970F1C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26970F31C(int a1)
{
  v41 = a1;
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v40 = sub_2697B9550();
  if (qword_280322680 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D8B0;
  v70 = type metadata accessor for RoutingAppPredictor();
  v71 = &off_287A445F8;
  *&v69 = v1;
  v2 = qword_2803226B0;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_2_15(&qword_2803226B0);
  }

  v3 = qword_28033D8E0;
  v39[2] = qword_28033D8E0;
  v64 = &type metadata for LSApplicationRecordProvider;
  v65 = &xmmword_287A41430;
  v67 = &type metadata for AppIntentsMetadataProvider;
  v68 = &off_287A413C0;
  v66 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  sub_269852C84();
  v4 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v5 = sub_269853264();
  swift_allocObject();
  v6 = sub_269853254();
  v60 = v5;
  v61 = MEMORY[0x277D5BD58];
  v58[4] = &xmmword_287A41430;
  *&v59 = v6;
  v58[3] = &type metadata for LSApplicationRecordProvider;
  v7 = type metadata accessor for SiriSignalsRecorder();
  v57[3] = v7;
  v57[4] = &off_287A44CA0;
  v57[0] = v3;
  v55 = &type metadata for ThirdPartyIntentSupportProvider;
  v56 = &off_287A47040;
  v54[0] = swift_allocObject();
  sub_2696B6ED8(v63, v54[0] + 16);
  v52 = &type metadata for RunningBoardForegroundAppProvider;
  v53 = &off_287A41CC0;
  v49 = &type metadata for CoreAnalyticsService;
  v50 = &xmmword_287A41610;
  v46 = &type metadata for AppIntentsMetadataProvider;
  v47 = &off_287A413C0;
  v45[0] = v4;
  v43 = &type metadata for FeatureFlagServiceImpl;
  v44 = &off_287A41BD8;
  type metadata accessor for ThirdPartyAppResolutionFlow(0);
  v8 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v58, &type metadata for LSApplicationRecordProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v57, v7);
  v39[1] = v39;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = (v11 - v10);
  (*(v13 + 16))(v11 - v10);
  __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = (v16 - v15);
  (*(v18 + 16))(v16 - v15);
  __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v22 = (v21 - v20);
  (*(v23 + 16))(v21 - v20);
  __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
  v24 = *v12;
  v25 = *v22;
  v26 = v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_applicationRecordProvider;
  *(v26 + 24) = &type metadata for LSApplicationRecordProvider;
  *(v26 + 32) = &xmmword_287A41430;
  v27 = (v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_signalRecorder);
  v27[3] = v7;
  v27[4] = &off_287A44CA0;
  *v27 = v24;
  v28 = (v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_intentSupportProvider);
  v28[3] = &type metadata for ThirdPartyIntentSupportProvider;
  v28[4] = &off_287A47040;
  v29 = swift_allocObject();
  *v28 = v29;
  memcpy((v29 + 16), v17, 0x50uLL);
  v30 = v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_foregroundAppProvider;
  *(v30 + 24) = &type metadata for RunningBoardForegroundAppProvider;
  *(v30 + 32) = &off_287A41CC0;
  v31 = v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_analyticsService;
  *(v31 + 24) = &type metadata for CoreAnalyticsService;
  *(v31 + 32) = &xmmword_287A41610;
  v32 = (v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_appIntentsMetadata);
  v32[3] = &type metadata for AppIntentsMetadataProvider;
  v32[4] = &off_287A413C0;
  *v32 = v25;
  v33 = v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_featureFlags;
  *(v33 + 24) = &type metadata for FeatureFlagServiceImpl;
  *(v33 + 32) = &off_287A41BD8;
  v34 = OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_input;
  v35 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v8 + v34, 1, 1, v35);
  v36 = v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state;
  *v36 = xmmword_26985C790;
  *(v36 + 16) = 0;
  *(v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_usecase) = v41;
  v37 = (v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_userDefaultsProvider);
  *v37 = v40;
  v37[1] = &off_287A41E38;
  sub_26968E5D4(&v69, v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_smartAppSelector);
  sub_26968E5D4(&v62, v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_aceServiceInvoker);
  sub_26968E5D4(&v59, v8 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_responseGenerator);

  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(v45);
  __swift_destroy_boxed_opaque_existential_0(v48);
  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v54);
  __swift_destroy_boxed_opaque_existential_0(v57);
  __swift_destroy_boxed_opaque_existential_0(v58);
  sub_2696B6F40(v63);
  return v8;
}

uint64_t sub_26970F95C()
{
  if ((*(v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state + 8) - 1) < 3)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state);

  return v1;
}

BOOL sub_26970F9C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v4 = OUTLINED_FUNCTION_8_9(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = v1 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state;
  v8 = *(v1 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state + 8);
  if (v8 == 1)
  {
    v9 = sub_269853854();
    (*(*(v9 - 8) + 16))(v6, a1, v9);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
    v10 = OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_input;
    swift_beginAccess();
    sub_269702838(v6, v1 + v10);
    swift_endAccess();
    v11 = *v7;
    v12 = *(v7 + 8);
    *v7 = xmmword_26985C7A0;
    *(v7 + 16) = 0;
    sub_2697114F0(v11, v12);
  }

  return v8 == 1;
}

uint64_t sub_26970FB08(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ThirdPartyAppResolutionFlow(0);
  sub_269711574(&qword_280323CB8, type metadata accessor for ThirdPartyAppResolutionFlow, &unk_26985C8C0);
  return sub_269852B54();
}

uint64_t sub_26970FB98()
{
  OUTLINED_FUNCTION_2_7();
  v1[71] = v0;
  v1[70] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323798, &unk_26985C770);
  OUTLINED_FUNCTION_8_9(v3);
  v1[72] = OUTLINED_FUNCTION_4_7();
  v4 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action(0);
  v1[73] = v4;
  OUTLINED_FUNCTION_8_9(v4);
  v1[74] = OUTLINED_FUNCTION_4_7();
  v5 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse(0);
  OUTLINED_FUNCTION_8_9(v5);
  v1[75] = OUTLINED_FUNCTION_4_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v6);
  v1[76] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269853854();
  v1[77] = v7;
  v1[78] = *(v7 - 8);
  v1[79] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_26970FCEC);
}

uint64_t sub_26970FCEC()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 568);
  v4 = OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_input;
  swift_beginAccess();
  sub_26970897C(v3 + v4, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_269698048(*(v0 + 608), &qword_280323AF8, &unk_26985C1D0);
    return sub_269855354();
  }

  v5 = *(v0 + 568);
  (*(*(v0 + 624) + 32))(*(v0 + 632), *(v0 + 608), *(v0 + 616));
  v6 = OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state;
  *(v0 + 640) = OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state;
  v7 = v5 + v6;
  *(v0 + 648) = *(v5 + v6);
  v8 = *(v5 + v6 + 8);
  *(v0 + 664) = *(v7 + 16);
  if (v8 == 1)
  {
    return sub_269855354();
  }

  if (v8 == 2)
  {
    v9 = *(v0 + 568);
    v10 = *(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_usecase);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_smartAppSelector, v0 + 24);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_signalRecorder, v0 + 64);
    v19 = *(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_userDefaultsProvider);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_intentSupportProvider, v0 + 120);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_foregroundAppProvider, v0 + 160);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_analyticsService, v0 + 200);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_aceServiceInvoker, v0 + 240);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_applicationRecordProvider, v0 + 280);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_appIntentsMetadata, v0 + 320);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_featureFlags, v0 + 360);
    *(v0 + 16) = v10;
    *(v0 + 104) = v19;
    swift_unknownObjectRetain();
    v11 = swift_task_alloc();
    *(v0 + 656) = v11;
    *v11 = v0;
    v11[1] = sub_269710044;
    v12 = *(v0 + 632);
    v13 = *(v0 + 600);

    return sub_2697118DC(v13, v12);
  }

  else
  {
    v15 = *(v0 + 632);
    v16 = *(v0 + 624);
    v17 = *(v0 + 616);
    sub_269853164();
    (*(v16 + 8))(v15, v17);
    OUTLINED_FUNCTION_8_14();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_269710044()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_269710134);
}

uint64_t sub_269710134()
{
  v59 = v1;
  v3 = v1[74];
  v4 = v1[73];
  sub_2696E2244(v1[75], v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = v1[74];
      v26 = v1[72];
      v27 = *v25;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803237A0, qword_26985B440);
      sub_2696E2358(v25 + *(v28 + 48), v26);
      v55 = type metadata accessor for ThirdPartyAppDisambiguationStrategy(0);
      v29 = type metadata accessor for BaseDialogProvider();
      v30 = swift_allocObject();

      sub_2698538C4();
      sub_269852C84();
      if (qword_2803226B0 == -1)
      {
        goto LABEL_7;
      }

      break;
    case 2u:
      OUTLINED_FUNCTION_6_17();
      v16 = v1[74];
      v18 = v1[71] + v17;
      v20 = *v16;
      v19 = v16[1];
      v21 = *v18;
      v22 = *(v18 + 8);
      *v18 = v20;
      *(v18 + 8) = v19;
      *(v18 + 16) = 512;
      goto LABEL_5;
    case 3u:
      OUTLINED_FUNCTION_6_17();
      v24 = v1[71] + v23;
      v21 = *v24;
      v22 = *(v24 + 8);
      *v24 = 0;
      *(v24 + 8) = 0;
      *(v24 + 16) = 0;
LABEL_5:
      sub_2697114F0(v21, v22);
      sub_269853164();
      sub_2696E22FC(v0);
      sub_2696E22A8((v1 + 2));
      (*(v2 + 8))(v3, v4);
      goto LABEL_12;
    default:
      v54 = v1[79];
      v5 = v1[78];
      v6 = v1[77];
      v7 = v1[75];
      v8 = v1[74];
      v9 = v1[71] + v1[80];
      v10 = *v8;
      v11 = *(v8 + 8);
      v12 = *(v8 + 16);
      v13 = v12 | (sub_2697108F4(*v8, v11) << 8);
      v14 = *v9;
      v15 = *(v9 + 8);
      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v13;
      sub_2697114F0(v14, v15);
      sub_269853164();
      sub_2696E22FC(v7);
      sub_2696E22A8((v1 + 2));
      (*(v5 + 8))(v54, v6);
      goto LABEL_12;
  }

  while (1)
  {
    OUTLINED_FUNCTION_2_15(&qword_2803226B0);
LABEL_7:
    v52 = v1[72];
    v31 = qword_28033D8E0;
    sub_2696A73F8(v1[71] + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_responseGenerator, (v1 + 50));
    v33 = v1[53];
    v32 = v1[54];
    v34 = __swift_mutable_project_boxed_opaque_existential_1((v1 + 50), v33);
    OUTLINED_FUNCTION_3_20();
    v36 = v35;
    v37 = OUTLINED_FUNCTION_4_7();
    (*(v36 + 16))(v37, v34, v33);
    v1[66] = v30;
    v1[67] = v31;
    v38 = type metadata accessor for SiriSignalsRecorder();

    v41 = sub_26970E37C((v1 + 66), &v57, v39, v58, (v1 + 67), v40, v37, v55, v29, &type metadata for AppInfoProvider, v38, v33, &type metadata for CoreAnalyticsService, &off_287A3DBA0, &off_287A41388, &off_287A44CA0, v32, &xmmword_287A41610);

    __swift_destroy_boxed_opaque_existential_0(v1 + 50);

    v42 = OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appDisambiguationContext;
    swift_beginAccess();
    sub_2696E23C8(v52, v41 + v42);
    swift_endAccess();
    v1[68] = v41;
    v30 = *(v27 + 16);
    if (!v30)
    {
      break;
    }

    *&v58[0] = MEMORY[0x277D84F90];
    v29 = v58;
    sub_2698552A4();
    sub_269854404();
    v43 = 0;
    v44 = v27 + 40;
    while (v43 < *(v27 + 16))
    {
      ++v43;

      sub_2698543E4();
      v29 = v58;
      sub_269855284();
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
      v44 += 16;
      if (v30 == v43)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

LABEL_11:

  v45 = v1[81];
  v46 = v1[78];
  v53 = v1[77];
  v56 = v1[79];
  v51 = v1[75];
  v47 = v1[72];
  sub_269853524();
  sub_269711574(&qword_280323C98, type metadata accessor for ThirdPartyAppDisambiguationStrategy, &unk_26985C720);
  v48 = sub_269852804();

  __swift_destroy_boxed_opaque_existential_0(v1 + 55);
  v1[69] = v48;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CA0, &qword_26985C918);
  sub_269711510();
  sub_269853124();

  sub_2697114F0(v45, 2);
  sub_269698048(v47, &qword_280323798, &unk_26985C770);
  sub_2696E22FC(v51);
  sub_2696E22A8((v1 + 2));
  (*(v46 + 8))(v56, v53);

LABEL_12:
  OUTLINED_FUNCTION_8_14();

  v49 = v1[1];

  return v49();
}

uint64_t sub_269710728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CB0, &qword_26985C920);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  (*(v5 + 16))(&v18 - v6, a1, v4);
  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x277D5BC38])
  {
    (*(v5 + 8))(v7, v4);
LABEL_9:
    v10 = 0;
    v13 = 0;
    v11 = 3;
    goto LABEL_10;
  }

  (*(v5 + 96))(v7, v4);
  if (!sub_269853644())
  {
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_2698543F4();
  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_2697108F4(v8, v9);

  v13 = v12 << 8;
LABEL_10:
  v14 = a2 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state;
  v15 = *(a2 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state);
  v16 = *(a2 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state + 8);
  *v14 = v10;
  *(v14 + 8) = v11;
  *(v14 + 16) = v13;
  return sub_2697114F0(v15, v16);
}

uint64_t sub_2697108F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a1;
  v4 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v64 - v11;
  v13 = *(&v2->isa + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_usecase);
  v14 = &qword_280323000;
  __swift_project_boxed_opaque_existential_1((&v2->isa + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_intentSupportProvider), *(&v2[3].isa + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_intentSupportProvider));
  if (v13)
  {
    v15 = OUTLINED_FUNCTION_3_21();
    v17 = sub_269832F24(v15, v16);
    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = v17;
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    v19 = __swift_project_value_buffer(v4, qword_281571B38);
    (*(v6 + 16))(v10, v19, v4);

    v20 = sub_2698548B4();
    v21 = sub_269854F44();

    v22 = os_log_type_enabled(v20, v21);
    v67 = v13;
    if (v22)
    {
      v23 = swift_slowAlloc();
      LODWORD(v64) = v21;
      v24 = v23;
      v65 = swift_slowAlloc();
      v69 = v65;
      *v24 = 136315394;
      v25 = OUTLINED_FUNCTION_3_21();
      v28 = sub_26974F520(v25, v26, v27);
      OUTLINED_FUNCTION_11_12(v28);
      sub_269851A04();
      sub_269711574(&unk_2803263A0, MEMORY[0x277CBA000], MEMORY[0x277CBA008]);
      v29 = sub_269854E54();
      v31 = sub_26974F520(v29, v30, &v69);
      v66 = v3;
      v32 = v31;

      *(v24 + 14) = v32;
      _os_log_impl(&dword_269684000, v20, v64, "%s supports scopes: %s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v3 = v66;
    }

    else
    {
    }

    (*(v6 + 8))(v10, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242B0, &unk_26985F2F0);
    v50 = sub_269851A04();
    OUTLINED_FUNCTION_3_20();
    v52 = v51;
    v54 = *(v53 + 72);
    v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_26985C7B0;
    v57 = v56 + v55;
    v58 = *(v52 + 104);
    v58(v57, *MEMORY[0x277CB9FE0], v50);
    v58(v57 + v54, *MEMORY[0x277CB9FF0], v50);
    v58(v57 + 2 * v54, *MEMORY[0x277CB9FE8], v50);
    LOBYTE(v50) = sub_26983406C(v56, v18);

    swift_setDeallocating();
    sub_269819D40();
    v14 = &qword_280323000;
    if (v50)
    {
LABEL_15:
      v49 = 0;
LABEL_20:
      __swift_project_boxed_opaque_existential_1((&v3->isa + v14[394]), *(&v3[3].isa + v14[394]));
      v59 = OUTLINED_FUNCTION_3_21();
      if (sub_269833A58(v59, v60))
      {
        return 1;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v33 = OUTLINED_FUNCTION_3_21();
    if (!sub_269832854(v33, v34))
    {
      v49 = 0;
      goto LABEL_22;
    }

    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    v35 = __swift_project_value_buffer(v4, qword_281571B38);
    (*(v6 + 16))(v12, v35, v4);

    v36 = sub_2698548B4();
    v37 = sub_269854F44();

    LODWORD(v65) = v37;
    v66 = v36;
    v38 = os_log_type_enabled(v36, v37);
    v67 = v13;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v69 = v64;
      *v39 = 136315394;
      v40 = OUTLINED_FUNCTION_3_21();
      v43 = sub_26974F520(v40, v41, v42);
      OUTLINED_FUNCTION_11_12(v43);
      sub_2698519E4();
      sub_269711574(&unk_280326380, MEMORY[0x277CB9E20], MEMORY[0x277CB9E28]);
      v44 = sub_269854E54();
      v46 = v45;

      v47 = sub_26974F520(v44, v46, &v69);

      *(v39 + 14) = v47;
      v48 = v66;
      _os_log_impl(&dword_269684000, v66, v65, "%s supports video categories: %s", v39, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      v14 = &qword_280323000;
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }

    (*(v6 + 8))(v12, v4);
  }

  if ((sub_2697B93E8() & 1) == 0)
  {
    return 0;
  }

  v49 = 1;
  if (v67)
  {
    goto LABEL_20;
  }

LABEL_22:
  __swift_project_boxed_opaque_existential_1((&v3->isa + v14[394]), *(&v3[3].isa + v14[394]));
  v62 = OUTLINED_FUNCTION_3_21();
  if (sub_2698339A4(v62, v63))
  {
    return 1;
  }

LABEL_23:
  if (v49)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_269710F7C()
{
  sub_269698048(v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_input, &qword_280323AF8, &unk_26985C1D0);
  sub_2697114F0(*(v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state), *(v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state + 8));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_applicationRecordProvider));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_smartAppSelector));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_signalRecorder));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_intentSupportProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_foregroundAppProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_analyticsService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_aceServiceInvoker));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_appIntentsMetadata));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_responseGenerator));
  return v0;
}

uint64_t sub_26971107C()
{
  sub_269710F7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ThirdPartyAppResolutionFlow(uint64_t a1)
{
  result = qword_280323C88;
  if (!qword_280323C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269711128(uint64_t a1)
{
  sub_2697012B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents27ThirdPartyAppResolutionFlowC5State33_AB35DF52C1047766A6FE1C9F5B8ED0B9LLO(uint64_t a1)
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

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_269711228(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 18))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269711284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_2697112E4(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_269711350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2696DF218;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_269711424()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DEBD8;

  return sub_26970FB98();
}

uint64_t sub_2697114C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_26970F95C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_2697114F0(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

unint64_t sub_269711510()
{
  result = qword_280323CA8;
  if (!qword_280323CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323CA0, &qword_26985C918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323CA8);
  }

  return result;
}

uint64_t sub_269711574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2697115BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_2697115FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26971164C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26971169C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2697116F4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ThirdPartyAppResolutionFlow.ResolvedApp.ExecutionPath(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_269711808()
{
  result = qword_280323CC0;
  if (!qword_280323CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323CC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_14()
{
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;
  return 0;
}

uint64_t sub_2697118DC(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for SignalRecordingContext(0);
  v3[23] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v3[24] = v5;
  v3[25] = OUTLINED_FUNCTION_4_7();
  v6 = sub_2698538A4();
  v3[26] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v3[27] = v7;
  v3[28] = OUTLINED_FUNCTION_37_0();
  v3[29] = swift_task_alloc();
  v8 = sub_2698523C4();
  v3[30] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v3[31] = v9;
  v3[32] = OUTLINED_FUNCTION_4_7();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v10);
  v3[33] = OUTLINED_FUNCTION_4_7();
  v11 = sub_269851EF4();
  v3[34] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v3[35] = v12;
  v3[36] = OUTLINED_FUNCTION_4_7();
  v13 = sub_269852474();
  v3[37] = v13;
  OUTLINED_FUNCTION_5_12(v13);
  v3[38] = v14;
  v3[39] = OUTLINED_FUNCTION_37_0();
  v3[40] = swift_task_alloc();
  v15 = sub_269853874();
  v3[41] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v3[42] = v16;
  v3[43] = OUTLINED_FUNCTION_4_7();
  v17 = type metadata accessor for MediaNLIntent(0);
  v3[44] = v17;
  OUTLINED_FUNCTION_8_9(v17);
  v3[45] = OUTLINED_FUNCTION_4_7();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323700, qword_26985B120);
  OUTLINED_FUNCTION_8_9(v18);
  v3[46] = OUTLINED_FUNCTION_4_7();
  v19 = sub_269853F44();
  v3[47] = v19;
  OUTLINED_FUNCTION_5_12(v19);
  v3[48] = v20;
  v3[49] = OUTLINED_FUNCTION_4_7();
  v21 = sub_2698538B4();
  v3[50] = v21;
  OUTLINED_FUNCTION_5_12(v21);
  v3[51] = v22;
  v3[52] = OUTLINED_FUNCTION_37_0();
  v3[53] = swift_task_alloc();
  v23 = sub_2698548D4();
  v3[54] = v23;
  OUTLINED_FUNCTION_5_12(v23);
  v3[55] = v24;
  v3[56] = OUTLINED_FUNCTION_37_0();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269711D64);
}

uint64_t sub_269711D64()
{
  v322 = v0;
  v321[1] = *MEMORY[0x277D85DE8];
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v1 = v0[70];
  v314 = (v0[55] + 16);
  v316 = __swift_project_value_buffer(v0[54], qword_28033D910);
  v317 = *v314;
  (*v314)(v1);
  v2 = sub_2698548B4();
  v3 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v3))
  {
    v4 = OUTLINED_FUNCTION_16_2();
    *v4 = 0;
    _os_log_impl(&dword_269684000, v2, v3, "ThirdPartyAppResolutionUtil#resolveApp", v4, 2u);
    OUTLINED_FUNCTION_10();
  }

  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[50];
  v8 = v0[51];

  v9 = OUTLINED_FUNCTION_34_0();
  v319 = v10;
  (v10)(v9);
  sub_269853844();
  v11 = sub_2696CB944();
  v313 = v12;
  v0[71] = v12;
  v13 = *(v8 + 8);
  v13(v5, v7);
  sub_269853844();
  v14 = (*(v8 + 88))(v6, v7);
  v320 = v0;
  v312 = v11;
  if (v14 == *MEMORY[0x277D5C128])
  {
    v15 = v0[52];
    v16 = v0[49];
    v18 = v0[47];
    v17 = v0[48];
    v19 = v0[45];
    (*(v0[51] + 96))(v15, v0[50]);
    (*(v17 + 32))(v16, v15, v18);
    v309 = sub_2696CAAE8();
    v21 = v20;
    (*(v17 + 16))(v19, v16, v18);
    if (qword_2803225D0 != -1)
    {
      swift_once();
    }

    v22 = v0[45];
    v23 = v0[46];
    v24 = _s10MediaNLAppVMa(0);
    sub_2696DFA64(qword_280323548, type metadata accessor for MediaNLIntent, &unk_269860BD8);
    sub_2696DFA64(qword_280323708, _s10MediaNLAppVMa, &unk_2698609DC);
    OUTLINED_FUNCTION_8_3();
    sub_269853D44();
    sub_269715174(v22, type metadata accessor for MediaNLIntent);
    v25 = v24;
    v26 = v0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v25);
    v28 = v0[46];
    if (EnumTagSinglePayload == 1)
    {

      sub_26969B0C0(v28, &qword_280323700, qword_26985B120);
      goto LABEL_40;
    }

    v301 = sub_2697A5220();
    v58 = v57;
    sub_269715174(v28, _s10MediaNLAppVMa);
    if (!v58)
    {

LABEL_40:
      v104 = OUTLINED_FUNCTION_8_15();
      v105(v104);
      v75 = sub_2698548B4();
      v106 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_5(v106))
      {
        v107 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v107);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v108, v109, "ThirdPartyAppResolutionUtil#resolveApp NLv3IntentOnly intent has no app ID");
        OUTLINED_FUNCTION_18_7();
      }

LABEL_83:
      v201 = v26[20];

      v202 = OUTLINED_FUNCTION_6_18();
      v203(v202);
      v204 = OUTLINED_FUNCTION_44_0();
      v205(v204);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_11_13((v201 + v206));
      *(v201 + v207) = 0;
      goto LABEL_84;
    }

    v307 = v58;
    (*(v320[48] + 8))(v320[49], v320[47]);
    goto LABEL_44;
  }

  if (v14 == *MEMORY[0x277D5C150])
  {
    v26 = v0;
    v29 = v0[52];
    v30 = v0[29];
    v32 = v0[26];
    v31 = v0[27];
    (*(v320[51] + 96))(v320[52], v320[50]);
    (*(v31 + 32))(v30, v29, v32);
    if (sub_269853884() == 0xD00000000000002DLL && 0x800000026987A0A0 == v33)
    {
    }

    else
    {
      v35 = sub_269855584();

      if ((v35 & 1) == 0)
      {
        v36 = v320[63];
        v37 = v320[54];
        v39 = v320[28];
        v38 = v320[29];
        v41 = v320[26];
        v40 = v320[27];

        (v317)(v36, v316, v37);
        (*(v40 + 16))(v39, v38, v41);
        v42 = sub_2698548B4();
        v43 = sub_269854F14();
        v44 = os_log_type_enabled(v42, v43);
        v45 = v320[63];
        v318 = v320[54];
        v46 = v320[29];
        v47 = v320[26];
        v48 = v320[27];
        if (v44)
        {
          v49 = OUTLINED_FUNCTION_27_2();
          v50 = OUTLINED_FUNCTION_9_3();
          v321[0] = v50;
          *v49 = 136315138;
          v51 = sub_269853884();
          v315 = v46;
          v53 = v52;
          v54 = *(v48 + 8);
          v55 = OUTLINED_FUNCTION_25_2();
          v54(v55);
          v56 = sub_26974F520(v51, v53, v321);

          *(v49 + 4) = v56;
          _os_log_impl(&dword_269684000, v42, v43, "ThirdPartyAppResolutionUtil#resolveApp unsupported directInvocation %s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          OUTLINED_FUNCTION_10();
          v26 = v320;
          OUTLINED_FUNCTION_10();

          v319(v45, v318);
          (v54)(v315, v47);
        }

        else
        {

          v187 = *(v48 + 8);
          v188 = OUTLINED_FUNCTION_25_2();
          v187(v188);
          v319(v45, v318);
          v189 = OUTLINED_FUNCTION_31_3();
          v187(v189);
        }

        v171 = v26[20];
        OUTLINED_FUNCTION_3_22();
        goto LABEL_75;
      }
    }

    if (sub_269853894())
    {
      v80 = objc_opt_self();
      v81 = sub_2698549D4();

      v320[19] = 0;
      v82 = [v80 dataWithJSONObject:v81 options:0 error:v320 + 19];

      v83 = v320[19];
      if (!v82)
      {
        v185 = v83;

        v186 = sub_269851BD4();

        swift_willThrow();
        goto LABEL_81;
      }

      v84 = v83;
      sub_269851C94();

      if (qword_280322440 != -1)
      {
        swift_once();
      }

      sub_2696CC3A4();
      sub_269851A84();
      v192 = OUTLINED_FUNCTION_8_3();
      sub_2696C1F3C(v192, v193);
      if (v320[3])
      {
        v194 = v320[5];
        v301 = v320[4];

        if (v194)
        {
          v307 = v194;
          (*(v320[27] + 8))(v320[29], v320[26]);
          v309 = 0;
          v21 = 0;
          goto LABEL_44;
        }
      }
    }

LABEL_81:
    v195 = OUTLINED_FUNCTION_8_15();
    v196(v195);
    v75 = sub_2698548B4();
    v197 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v197))
    {
      v198 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v198);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v199, v200, "ThirdPartyAppResolutionUtil#resolveApp directInvocation is missing appBundleIdentifier");
      OUTLINED_FUNCTION_18_7();
    }

    goto LABEL_83;
  }

  if (v14 == *MEMORY[0x277D5C140])
  {
    (*(v0[51] + 96))(v0[52], v0[50]);
    v59 = OUTLINED_FUNCTION_8_3();
    v60(v59);
    v61 = OUTLINED_FUNCTION_5_19();
    v62(v61);
    v63 = sub_2698548B4();
    v64 = sub_269854F14();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_16_2();
      *v65 = 0;
      _os_log_impl(&dword_269684000, v63, v64, "ThirdPartyAppResolutionUtil#resolveApp getting App bundle ID from pegasusResult", v65, 2u);
      OUTLINED_FUNCTION_10();
    }

    v66 = v0[68];
    v67 = v0[54];
    v310 = v0[37];
    v68 = v0[36];
    v70 = v0[34];
    v69 = v0[35];
    v71 = v0[33];

    v319(v66, v67);
    sub_269853864();
    sub_2696D3C74();
    (*(v69 + 8))(v68, v70);
    if (__swift_getEnumTagSinglePayload(v71, 1, v310) == 1)
    {
      v72 = v0[33];

      sub_26969B0C0(v72, &qword_280323360, &unk_26985AB80);
      v73 = OUTLINED_FUNCTION_5_19();
      v74(v73);
      v75 = sub_2698548B4();
      v76 = sub_269854F14();
      v26 = v0;
      if (OUTLINED_FUNCTION_19_5(v76))
      {
        v77 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v77);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v78, v79, "ThirdPartyAppResolutionUtil#resolveApp pegasusResults missing videoClientComponent");
        OUTLINED_FUNCTION_18_7();
      }

      goto LABEL_83;
    }

    v110 = v0[42];
    v111 = v0[40];
    v297 = v0[41];
    v299 = v0[43];
    v113 = v0[37];
    v112 = v0[38];
    v114 = v0[32];
    v116 = v0[30];
    v115 = v0[31];
    (*(v320[38] + 32))(v320[40], v320[33], v320[37]);
    sub_269852424();
    v309 = sub_269851FD4();
    v304 = v117;
    v118 = *(v115 + 8);
    v118(v114, v116);
    sub_269852424();
    v301 = sub_2698521E4();
    v307 = v119;
    v118(v114, v116);
    v120 = v111;
    v21 = v304;
    (*(v112 + 8))(v120, v113);
    (*(v110 + 8))(v299, v297);
    v26 = v320;
  }

  else
  {
    if (v14 != *MEMORY[0x277D5C148])
    {
      v172 = v0[54];

      v173 = OUTLINED_FUNCTION_5_19();
      v174(v173);
      v175 = sub_2698548B4();
      v176 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_4(v176))
      {
        v177 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v177);
        _os_log_impl(&dword_269684000, v175, v176, "ThirdPartyAppResolutionUtil#resolveApp unsupported intent type", v172, 2u);
        OUTLINED_FUNCTION_18_7();
      }

      v178 = v320[62];
      v179 = v320[54];
      v180 = v320[52];
      v181 = v320[50];
      v182 = v320[20];

      v319(v178, v179);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_11_13((v182 + v183));
      *(v182 + v184) = 0;
      v13(v180, v181);
      goto LABEL_84;
    }

    v85 = v0[52];
    (*(v0[51] + 96))(v85, v0[50]);
    v86 = *v85;
    sub_2696D6C54();
    if (!v87)
    {

      v209 = OUTLINED_FUNCTION_5_19();
      v210(v209);
      v211 = sub_2698548B4();
      v212 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_5(v212))
      {
        v213 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v213);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v214, v215, "ThirdPartyAppResolutionUtil#resolveApp pommesResponse missing VideoExperience");
        OUTLINED_FUNCTION_18_7();
      }

      v216 = v0[20];

      v217 = OUTLINED_FUNCTION_6_18();
      v218(v217);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      goto LABEL_93;
    }

    v88 = v87;
    v303 = v86;
    v89 = v0[38];
    v90 = v0[31];
    v91 = v0[32];
    v92 = v0[30];
    sub_269854544();
    sub_269852424();
    v93 = *(v89 + 8);
    v94 = OUTLINED_FUNCTION_44_0();
    v93(v94);
    v95 = sub_2698521E4();
    v97 = v96;
    v98 = *(v90 + 8);
    v98(v91, v92);
    v99 = HIBYTE(v97) & 0xF;
    v301 = v95;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v99 = v95 & 0xFFFFFFFFFFFFLL;
    }

    if (!v99)
    {

      v258 = OUTLINED_FUNCTION_5_19();
      v259(v258);
      v260 = sub_2698548B4();
      v261 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_5(v261))
      {
        v262 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v262);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v263, v264, "ThirdPartyAppResolutionUtil#resolveApp pommesResponse missing appBundleIdentifier");
        OUTLINED_FUNCTION_18_7();
      }

      v265 = v0[20];

      v266 = OUTLINED_FUNCTION_6_18();
      v267(v266);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_11_13((v265 + v268));
      *(v265 + v269) = 1;
      goto LABEL_84;
    }

    v307 = v97;
    v100 = v0[39];
    v101 = v0[37];
    v102 = v0[32];
    v298 = v0[30];
    sub_269854544();
    sub_269852424();
    (v93)(v100, v101);
    v309 = sub_269851FD4();
    v21 = v103;

    v98(v102, v298);
    v26 = v0;
  }

LABEL_44:
  v26[72] = v21;
  v121 = OUTLINED_FUNCTION_8_15();
  v122(v121);
  v123 = sub_2698548B4();
  v124 = sub_269854F14();
  v305 = v21;
  if (OUTLINED_FUNCTION_19_4(v124))
  {
    v125 = OUTLINED_FUNCTION_27_2();
    v126 = OUTLINED_FUNCTION_9_3();
    v321[0] = v126;
    *v125 = 136315138;
    v127 = v307;

    v128 = sub_26974F520(v301, v307, v321);

    *(v125 + 4) = v128;
    _os_log_impl(&dword_269684000, v123, v124, "ThirdPartyAppResolutionUtil#resolveApp appId is %s", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v126);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v129 = OUTLINED_FUNCTION_28_3();
    v130(v129);
  }

  else
  {

    v131 = OUTLINED_FUNCTION_28_3();
    v132(v131);
    v127 = v307;
  }

  v133 = v320;
  v134 = *(v320[22] + 88);
  v135 = sub_2697B934C();
  if (v136)
  {
    v137 = v135;
    v138 = v136;
    v139 = OUTLINED_FUNCTION_8_15();
    v140(v139);

    v134 = sub_2698548B4();
    v141 = sub_269854F14();

    v142 = os_log_type_enabled(v134, v141);
    v143 = v320[60];
    v144 = v320[54];
    if (v142)
    {
      v145 = OUTLINED_FUNCTION_27_2();
      v146 = v137;
      v147 = OUTLINED_FUNCTION_9_3();
      v321[0] = v147;
      *v145 = 136315138;
      *(v145 + 4) = sub_26974F520(v146, v138, v321);
      _os_log_impl(&dword_269684000, v134, v141, "ThirdPartyAppResolutionUtil#resolveApp appId overridden to %s", v145, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v147);
      v137 = v146;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    v319(v143, v144);

    v127 = v138;
    v133 = v320;
  }

  else
  {
    v137 = v301;
  }

  *(v133 + 73) = v127;
  if (v137 != 0xD000000000000020 || 0x800000026987D5B0 != v127)
  {
    OUTLINED_FUNCTION_24_6();
    if ((sub_269855584() & 1) == 0)
    {

      v153 = v137 == 0xD000000000000021 && 0x800000026987D6D0 == v127;
      v308 = v127;
      if (v153 || (OUTLINED_FUNCTION_24_6(), (sub_269855584() & 1) != 0))
      {
        v154 = *(v133 + 22);

        __swift_project_boxed_opaque_existential_1((v154 + 144), *(v154 + 168));
        sub_2697B62D0();
        if (v156)
        {
          v157 = v155;
          v158 = v156;
          v159 = OUTLINED_FUNCTION_8_15();
          v160(v159);

          v161 = sub_2698548B4();
          v162 = sub_269854F14();

          v163 = os_log_type_enabled(v161, v162);
          v164 = *(v133 + 59);
          v165 = *(v133 + 54);
          if (v163)
          {
            v166 = OUTLINED_FUNCTION_27_2();
            v167 = OUTLINED_FUNCTION_9_3();
            v321[0] = v167;
            *v166 = 136315138;
            v168 = OUTLINED_FUNCTION_34_0();
            *(v166 + 4) = sub_26974F520(v168, v169, v170);
            _os_log_impl(&dword_269684000, v161, v162, "ThirdPartyAppResolutionUtil#resolveApp foreground app is %s", v166, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v167);
            v133 = v320;
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_10();
          }

          v319(v164, v165);
          v171 = *(v133 + 20);
          *v171 = v157;
          *(v171 + 8) = v158;
          *(v171 + 16) = 0;
          OUTLINED_FUNCTION_3_22();
          swift_storeEnumTagMultiPayload();

          goto LABEL_76;
        }

        v219 = OUTLINED_FUNCTION_8_15();
        v220(v219);
        v221 = sub_2698548B4();
        v222 = sub_269854F14();
        if (OUTLINED_FUNCTION_19_5(v222))
        {
          v223 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_30_2(v223);
          OUTLINED_FUNCTION_31_0(&dword_269684000, v224, v225, "ThirdPartyAppResolutionUtil#resolveApp no foreground app found");
          OUTLINED_FUNCTION_18_7();
        }

        v216 = *(v133 + 20);

        v226 = OUTLINED_FUNCTION_6_18();
        v227(v226);
        OUTLINED_FUNCTION_3_22();
        swift_storeEnumTagMultiPayload();

LABEL_93:
        OUTLINED_FUNCTION_7_20();
        OUTLINED_FUNCTION_11_13((v216 + v228));
        *(v216 + v229) = 0;
        goto LABEL_84;
      }

      __swift_project_boxed_opaque_existential_1((*(v133 + 22) + 264), *(*(v133 + 22) + 288));

      v230 = OUTLINED_FUNCTION_24_6();
      sub_2697ADE90(v230, v231, v232);

      if (!*(v133 + 15))
      {
        v270 = *(v133 + 20);

        sub_26969B0C0((v133 + 6), &unk_2803263B0, &unk_26985D0B0);
        OUTLINED_FUNCTION_3_22();
        swift_storeEnumTagMultiPayload();

        OUTLINED_FUNCTION_7_20();
        OUTLINED_FUNCTION_11_13((v270 + v271));
        *(v270 + v272) = 1;
        goto LABEL_84;
      }

      v233 = *(v133 + 22);
      sub_26968E5D4(v133 + 6, v133 + 56);
      __swift_project_boxed_opaque_existential_1((v233 + 104), *(v233 + 128));
      OUTLINED_FUNCTION_26_6();

      v234 = OUTLINED_FUNCTION_24_6();
      sub_269832F24(v234, v235);
      OUTLINED_FUNCTION_26_6();

      if (v134)
      {
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((v233 + 104), *(v233 + 128));
        OUTLINED_FUNCTION_26_6();

        v236 = OUTLINED_FUNCTION_24_6();
        sub_269832854(v236, v237);
        OUTLINED_FUNCTION_26_6();

        v292 = *(v133 + 10);
        v293 = *(v133 + 11);
        __swift_project_boxed_opaque_existential_1(v133 + 7, v292);
        v294 = (*(v293 + 40))(v292, v293);
        LOBYTE(v292) = sub_269807CB4(0xD000000000000014, 0x800000026987B820, v294);

        if ((v292 & 1) == 0 && (sub_2697B8B00() & 1) == 0)
        {
          v295 = *(v133 + 22);
          v171 = *(v133 + 20);

          __swift_project_boxed_opaque_existential_1((v295 + 184), *(v295 + 208));
          v296 = *v295;

          sub_2697DE598(v296);
          OUTLINED_FUNCTION_24_6();
          sub_2697B3BFC();

          __swift_destroy_boxed_opaque_existential_0(v133 + 7);
          *v171 = v137;
          *(v171 + 8) = v308;
          OUTLINED_FUNCTION_3_22();
LABEL_75:
          swift_storeEnumTagMultiPayload();
LABEL_76:
          OUTLINED_FUNCTION_7_20();
          OUTLINED_FUNCTION_11_13((v171 + v190));
          *(v171 + v191) = 0;
LABEL_84:

          v208 = v320[1];

          return v208();
        }
      }

      v238 = *(v133 + 57);
      v239 = *(v133 + 54);
      v240 = *(v133 + 22);
      __swift_project_boxed_opaque_existential_1((v240 + 184), *(v240 + 208));
      v241 = *v240;

      v302 = v241;
      sub_2697DE598(v241);
      v311 = v137;
      sub_2697B3BFC();

      __swift_project_boxed_opaque_existential_1((v240 + 224), *(v240 + 248));
      OUTLINED_FUNCTION_44_0();
      v242 = sub_269853474();
      v244 = v243;
      (v317)(v238, v316, v239);

      v245 = sub_2698548B4();
      v246 = v133;
      v247 = sub_269854F14();

      v248 = os_log_type_enabled(v245, v247);
      v249 = *(v246 + 57);
      v250 = *(v246 + 54);
      v306 = v242;
      if (v248)
      {
        v251 = OUTLINED_FUNCTION_27_2();
        v300 = v250;
        v252 = OUTLINED_FUNCTION_9_3();
        v321[0] = v252;
        *v251 = 136315138;
        *(v246 + 17) = v242;
        *(v246 + 18) = v244;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
        v253 = sub_269854AE4();
        v255 = sub_26974F520(v253, v254, v321);

        *(v251 + 4) = v255;
        _os_log_impl(&dword_269684000, v245, v247, "ThirdPartyAppResolutionUtil#resolveApp requestId %s", v251, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v252);
        OUTLINED_FUNCTION_18_7();
        OUTLINED_FUNCTION_10();

        v256 = v249;
        v257 = v300;
      }

      else
      {

        v256 = v249;
        v257 = v250;
      }

      v319(v256, v257);
      if (v244)
      {
        v273 = v320;
        v274 = v320[24];
        v275 = v320[22];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C08, &unk_26985C780);
        v276 = *(v274 + 72);
        v277 = (*(v274 + 80) + 32) & ~*(v274 + 80);
        v278 = swift_allocObject();
        *(v278 + 16) = xmmword_2698580D0;
        v279 = v278 + v277;
        *v279 = v302;
        *(v279 + 8) = v312;
        *(v279 + 16) = v313;
        *(v279 + 24) = v311;
        *(v279 + 32) = v308;
        OUTLINED_FUNCTION_34_0();
        swift_storeEnumTagMultiPayload();
        v280 = v279 + v276;
        *v280 = v302;
        *(v280 + 8) = v312;
        *(v280 + 16) = v313;
        *(v280 + 24) = v311;
        *(v280 + 32) = v308;
        *(v280 + 40) = v306;
        *(v280 + 48) = v244;
        swift_storeEnumTagMultiPayload();
        swift_bridgeObjectRetain_n();

        v281 = 0;
        v282 = 0;
        do
        {
          v283 = v281;
          sub_2697151CC(v279 + v282 * v276, v320[25], type metadata accessor for SignalRecordingContext);
          __swift_project_boxed_opaque_existential_1((v275 + 48), *(v275 + 72));
          sub_2697F9524();
          if (v284)
          {
            __swift_project_boxed_opaque_existential_1((v275 + 48), *(v275 + 72));
            sub_2697F9BE8();
          }

          OUTLINED_FUNCTION_13_10(v320[25]);
          v281 = 1;
          v282 = 1;
        }

        while ((v283 & 1) == 0);
        swift_setDeallocating();
        sub_269819D6C();
        __swift_project_boxed_opaque_existential_1((v275 + 48), *(v275 + 72));
        sub_2697FBD40();
      }

      else
      {
        v273 = v320;
        v285 = v320[56];
        v286 = v320[54];

        (v317)(v285, v316, v286);
        v287 = sub_2698548B4();
        v288 = sub_269854F24();
        if (OUTLINED_FUNCTION_19_4(v288))
        {
          v289 = OUTLINED_FUNCTION_16_2();
          *v289 = 0;
          _os_log_impl(&dword_269684000, v287, v288, "ThirdPartyAppResolutionUtil could not get request ID for play on 3p", v289, 2u);
          OUTLINED_FUNCTION_10();
        }

        v290 = OUTLINED_FUNCTION_6_18();
        v291(v290);
      }

      v171 = v273[20];
      __swift_destroy_boxed_opaque_existential_0(v273 + 7);
      *v171 = v311;
      *(v171 + 8) = v308;
      *(v171 + 16) = 0;
      OUTLINED_FUNCTION_3_22();
      goto LABEL_75;
    }
  }

  v149 = **(v133 + 22);
  v150 = swift_task_alloc();
  *(v133 + 74) = v150;
  *v150 = v133;
  v150[1] = sub_2697139E4;
  v151 = *(v133 + 20);

  return sub_26971413C(v151, v149, v312, v313, v309, v305);
}

uint64_t sub_2697139E4()
{

  return MEMORY[0x2822009F8](sub_269713B4C);
}

uint64_t sub_269713B4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_269713D54(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action(0);
  OUTLINED_FUNCTION_4_3();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v40 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D10, &qword_26985CB98);
  v14 = OUTLINED_FUNCTION_8_9(v13);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  v18 = &v40 + *(v15 + 56) - v16;
  sub_2697151CC(a1, &v40 - v16, type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action);
  sub_2697151CC(a2, v18, type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v35 = OUTLINED_FUNCTION_1_17();
      sub_2697151CC(v35, v10, v36);
      v37 = *v10;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_2803237A0, qword_26985B440) + 48);
      if (OUTLINED_FUNCTION_33_1() == 1)
      {
        v27 = sub_26981A618(v37, *v18);

        sub_26969B0C0(&v18[v38], &qword_280323798, &unk_26985C770);
        sub_26969B0C0(v10 + v38, &qword_280323798, &unk_26985C770);
        goto LABEL_26;
      }

      sub_26969B0C0(v10 + v38, &qword_280323798, &unk_26985C770);
      goto LABEL_20;
    case 2u:
      v28 = OUTLINED_FUNCTION_1_17();
      sub_2697151CC(v28, v7, v29);
      v31 = *v7;
      v30 = v7[1];
      if (OUTLINED_FUNCTION_33_1() != 2)
      {
        goto LABEL_20;
      }

      v32 = *v18;
      v33 = *(v18 + 1);
      if (v31 == v32 && v30 == v33)
      {
        v27 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_31_3();
        v27 = sub_269855584();
      }

      goto LABEL_26;
    case 3u:
      if (OUTLINED_FUNCTION_33_1() != 3)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_12_14();
      v27 = 1;
      return v27 & 1;
    default:
      v19 = OUTLINED_FUNCTION_1_17();
      sub_2697151CC(v19, v12, v20);
      v22 = *v12;
      v21 = *(v12 + 1);
      v23 = v12[16];
      if (!OUTLINED_FUNCTION_33_1())
      {
        v24 = v18[16];
        if (v22 == *v18 && v21 == *(v18 + 1))
        {
        }

        else
        {
          OUTLINED_FUNCTION_31_3();
          v26 = sub_269855584();

          v27 = 0;
          if ((v26 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v27 = v23 ^ v24 ^ 1;
LABEL_26:
        OUTLINED_FUNCTION_12_14();
        return v27 & 1;
      }

LABEL_20:

LABEL_21:
      sub_26969B0C0(v17, &qword_280323D10, &qword_26985CB98);
      v27 = 0;
      return v27 & 1;
  }
}

uint64_t sub_269714098(uint64_t a1, uint64_t a2)
{
  if ((sub_269713D54(a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (sub_269855584() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v11 = 0;
    return v11 & 1;
  }

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_9:
  v11 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  return v11 & 1;
}

uint64_t sub_26971413C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 216) = a2;
  *(v7 + 32) = a1;
  *(v7 + 40) = a3;
  *(v7 + 80) = type metadata accessor for AppDisambiguationContext(0);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = type metadata accessor for SignalRecordingContext(0);
  *(v7 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CC8, &unk_269866680);
  *(v7 + 112) = swift_task_alloc();
  v8 = sub_2698548D4();
  *(v7 + 120) = v8;
  *(v7 + 128) = *(v8 - 8);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = type metadata accessor for AppSelectionResult(0);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26971430C);
}

uint64_t sub_26971430C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 216);
  v3 = v1[4];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v3);
  __swift_project_boxed_opaque_existential_1(v1 + 28, v1[31]);
  v5 = sub_269853474();
  v7 = v6;
  *(v0 + 200) = v6;
  v13 = (*(v4 + 8) + **(v4 + 8));
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = sub_269714490;
  v9 = *(v0 + 192);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);

  return v13(v9, v2 & 1, v10, v11, v5, v7, v3, v4);
}

uint64_t sub_269714490()
{

  return MEMORY[0x2822009F8](sub_2697145A8);
}

uint64_t sub_2697145A8()
{
  v143 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = __swift_project_value_buffer(*(v0 + 120), qword_28033D910);
  v4 = *(v2 + 16);
  v140 = v3;
  v4(v1);
  OUTLINED_FUNCTION_2_16();
  v5 = OUTLINED_FUNCTION_25_2();
  sub_2697151CC(v5, v6, v7);
  v8 = sub_2698548B4();
  v9 = sub_269854F14();
  v10 = OUTLINED_FUNCTION_19_4(v9);
  v11 = *(v0 + 184);
  if (v10)
  {
    v12 = *(v0 + 176);
    v13 = *(v0 + 128);
    v135 = *(v0 + 120);
    v136 = *(v0 + 152);
    v14 = OUTLINED_FUNCTION_27_2();
    v137 = v4;
    v15 = OUTLINED_FUNCTION_9_3();
    v142 = v15;
    *v14 = 136315138;
    OUTLINED_FUNCTION_2_16();
    sub_2697151CC(v11, v12, v16);
    v17 = sub_269854AE4();
    v19 = v18;
    OUTLINED_FUNCTION_0_25();
    sub_269715174(v11, v20);
    v21 = sub_26974F520(v17, v19, &v142);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_269684000, v8, v9, "SmartAppSelector predict result: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v4 = v137;
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v22 = *(v13 + 8);
    v22(v136, v135);
  }

  else
  {
    v23 = *(v0 + 152);
    v24 = *(v0 + 120);
    v25 = *(v0 + 128);

    OUTLINED_FUNCTION_0_25();
    sub_269715174(v11, v26);
    v22 = *(v25 + 8);
    v22(v23, v24);
  }

  v27 = *(v0 + 168);
  OUTLINED_FUNCTION_2_16();
  sub_2697151CC(v28, v27, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v72 = *(v0 + 88);
      sub_26971522C(*(v0 + 168), v72);
      v73 = *v72;
      v74 = *(*v72 + 16);
      v75 = MEMORY[0x277D84F90];
      if (v74)
      {
        v142 = MEMORY[0x277D84F90];
        sub_269814F0C(0, v74, 0);
        v75 = v142;
        v76 = v142[2];
        v77 = 16 * v76;
        v78 = (v73 + 40);
        do
        {
          v80 = *(v78 - 1);
          v79 = *v78;
          v142 = v75;
          v81 = v76 + 1;
          v82 = *(v75 + 24);

          if (v76 >= v82 >> 1)
          {
            sub_269814F0C(v82 > 1, v81, 1);
            v75 = v142;
          }

          *(v75 + 16) = v81;
          v83 = v75 + v77;
          *(v83 + 32) = v80;
          *(v83 + 40) = v79;
          v77 += 16;
          v78 += 3;
          ++v76;
          --v74;
        }

        while (v74);
      }

      v84 = *(v0 + 192);
      v86 = *(v0 + 80);
      v85 = *(v0 + 88);
      v87 = *(v0 + 32);
      sub_269714F5C(*(v85 + *(v86 + 40)), *(v85 + *(v86 + 40) + 8));
      OUTLINED_FUNCTION_0_25();
      sub_269715174(v84, v88);
      v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_2803237A0, qword_26985B440) + 48);
      *v87 = v75;
      sub_2697151CC(v85, v87 + v89, type metadata accessor for AppDisambiguationContext);
      __swift_storeEnumTagSinglePayload(v87 + v89, 0, 1, v86);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_11_13((v87 + v90));
      *(v87 + v91) = 0;
      sub_269715174(v85, type metadata accessor for AppDisambiguationContext);
      goto LABEL_40;
    case 2u:
      OUTLINED_FUNCTION_0_25();
      sub_269715174(v46, v47);
      goto LABEL_11;
    case 3u:
      v41 = *(v0 + 32);
      sub_269715174(*(v0 + 192), type metadata accessor for AppSelectionResult);
      v42 = OUTLINED_FUNCTION_25_2();
      sub_269715174(v42, v43);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_11_13((v41 + v44));
      *(v41 + v45) = 0;
      goto LABEL_40;
    case 4u:
      v92 = *(v0 + 72);
      v93 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1(v92 + 33, v92[36]);
      v94 = __swift_project_boxed_opaque_existential_1(v92 + 38, v92[41]);
      __swift_project_boxed_opaque_existential_1(v92 + 43, v92[46]);
      v95 = sub_2697F17C8(v93 & 1, MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], *v94);
      v96 = v95;
      v97 = v95[2];
      v98 = *(v0 + 192);
      if (v97 == 1)
      {
        v99 = *(v0 + 32);
        v101 = v95[4];
        v100 = v95[5];

        OUTLINED_FUNCTION_0_25();
        sub_269715174(v98, v102);
        *v99 = v101;
        *(v99 + 8) = v100;
        *(v99 + 16) = 0;
        OUTLINED_FUNCTION_3_22();
LABEL_29:
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_7_20();
        OUTLINED_FUNCTION_11_13((v99 + v109));
        *(v99 + v110) = 0;
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_0_25();
      sub_269715174(v98, v106);
      if (v97)
      {
        v107 = *(v0 + 80);
        v99 = *(v0 + 32);
        v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_2803237A0, qword_26985B440) + 48);
        *v99 = v96;
        __swift_storeEnumTagSinglePayload(v99 + v108, 1, 1, v107);
        OUTLINED_FUNCTION_3_22();
        goto LABEL_29;
      }

      v118 = *(v0 + 56);
      v117 = *(v0 + 64);
      v119 = *(v0 + 32);

      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      v120 = OUTLINED_FUNCTION_7_20();
      v122 = (v119 + v121);
      *v122 = v118;
      v122[1] = v117;
      *(v119 + *(v120 + 24)) = 0;
LABEL_15:

      goto LABEL_40;
    case 5u:
LABEL_11:
      v48 = *(v0 + 136);
      v49 = *(v0 + 120);
      __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 224), *(*(v0 + 72) + 248));
      OUTLINED_FUNCTION_34_0();
      v50 = sub_269853474();
      v52 = v51;
      (v4)(v48, v140, v49);

      v53 = sub_2698548B4();
      v54 = sub_269854F14();

      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 136);
      v57 = *(v0 + 120);
      if (v55)
      {
        v141 = v50;
        v58 = OUTLINED_FUNCTION_27_2();
        v59 = OUTLINED_FUNCTION_9_3();
        v142 = v59;
        *v58 = 136315138;
        *(v0 + 16) = v141;
        *(v0 + 24) = v52;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
        v60 = sub_269854AE4();
        v139 = v56;
        v62 = sub_26974F520(v60, v61, &v142);

        *(v58 + 4) = v62;
        _os_log_impl(&dword_269684000, v53, v54, "ThirdPartyAppResolutionUtil#resolveWithSmartAppSelection requestId %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        OUTLINED_FUNCTION_10();
        v50 = v141;
        OUTLINED_FUNCTION_10();

        v22(v139, v57);
      }

      else
      {

        v63 = OUTLINED_FUNCTION_44_0();
        (v22)(v63);
      }

      v64 = *(v0 + 192);
      v65 = *(v0 + 64);
      v66 = *(v0 + 56);
      v67 = *(v0 + 32);
      sub_269714F5C(v50, v52);

      OUTLINED_FUNCTION_0_25();
      sub_269715174(v64, v68);
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      v69 = OUTLINED_FUNCTION_7_20();
      v71 = (v67 + v70);
      *v71 = v66;
      v71[1] = v65;
      *(v67 + *(v69 + 24)) = 0;
      goto LABEL_15;
    default:
      v30 = *(v0 + 168);
      v31 = *(v0 + 112);
      v32 = v30[1];
      v138 = *v30;
      v33 = v30[2];
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F48, &unk_2698667E0);
      v35 = (v30 + *(v34 + 80));
      v37 = *v35;
      v36 = v35[1];
      sub_269715290(v30 + *(v34 + 64), v31);
      v38 = type metadata accessor for ModelParams(0);
      if (__swift_getEnumTagSinglePayload(v31, 1, v38) == 1)
      {
        OUTLINED_FUNCTION_0_25();
        sub_269715174(v39, v40);

LABEL_26:

        goto LABEL_39;
      }

      v103 = *(v33 + 16);

      if (v103 <= 1)
      {
        OUTLINED_FUNCTION_0_25();
        sub_269715174(v104, v105);
        goto LABEL_26;
      }

      v111 = OUTLINED_FUNCTION_31_3();
      sub_269714F5C(v111, v112);
      if (v36)
      {
        v113 = *(v0 + 104);
        v114 = *(v0 + 72);
        *v113 = v37;
        v113[1] = v36;
        swift_storeEnumTagMultiPayload();
        __swift_project_boxed_opaque_existential_1((v114 + 48), *(v114 + 72));
        sub_2697F9524();
        if (v115)
        {
          __swift_project_boxed_opaque_existential_1((v114 + 48), *(v114 + 72));
          sub_2697F9BE8();
        }

        v116 = *(v0 + 192);
        OUTLINED_FUNCTION_13_10(*(v0 + 104));
      }

      else
      {
        (v4)(*(v0 + 144), v140, *(v0 + 120));
        v123 = sub_2698548B4();
        v124 = sub_269854F24();
        v125 = os_log_type_enabled(v123, v124);
        v116 = *(v0 + 192);
        if (v125)
        {
          v126 = OUTLINED_FUNCTION_16_2();
          *v126 = 0;
          _os_log_impl(&dword_269684000, v123, v124, "ThirdPartyAppResolutionUtil could not get request ID for evaluation message", v126, 2u);
          OUTLINED_FUNCTION_10();
        }

        v127 = OUTLINED_FUNCTION_34_0();
        (v22)(v127);
      }

      OUTLINED_FUNCTION_0_25();
      sub_269715174(v116, v128);
LABEL_39:
      v129 = *(v0 + 112);
      v130 = *(v0 + 32);
      *v130 = v138;
      *(v130 + 8) = v32;
      *(v130 + 16) = 1;
      OUTLINED_FUNCTION_3_22();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_11_13((v130 + v131));
      *(v130 + v132) = 0;
      sub_26969B0C0(v129, &qword_280323CC8, &unk_269866680);
LABEL_40:

      v133 = *(v0 + 8);

      return v133();
  }
}

void sub_269714F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
    sub_2697FBD40();
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v4, qword_28033D910);
    (*(v5 + 16))(v7, v8, v4);
    v9 = sub_2698548B4();
    v10 = sub_269854F24();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_269684000, v9, v10, "ThirdPartyAppResolutionUtil no request ID for trigger message", v11, 2u);
      MEMORY[0x26D647170](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_269715174(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2697151CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26971522C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppDisambiguationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269715290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323CC8, &unk_269866680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269715308(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_269715348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269715424(uint64_t a1)
{
  type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action(319);
  if (v1 <= 0x3F)
  {
    sub_2697154B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2697154B0()
{
  if (!qword_280323CE0)
  {
    v0 = sub_2698550A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280323CE0);
    }
  }
}

void sub_269715500(uint64_t a1)
{
  sub_269715588();
  if (v1 <= 0x3F)
  {
    sub_2697155EC(319);
    if (v2 <= 0x3F)
    {
      sub_269715678();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_269715588()
{
  if (!qword_280323CF8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280323CF8);
    }
  }
}

void sub_2697155EC(uint64_t a1)
{
  if (!qword_280323D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322878, &qword_2698587A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280323798, &unk_26985C770);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280323D00);
    }
  }
}

uint64_t sub_269715678()
{
  result = qword_280323D08;
  if (!qword_280323D08)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280323D08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return sub_269715174(v0, type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action);
}

uint64_t OUTLINED_FUNCTION_13_10(uint64_t a1)
{

  return sub_269715174(a1, type metadata accessor for SignalRecordingContext);
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return swift_getEnumCaseMultiPayload();
}

BOOL sub_2697157F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + 144);
  if (v4 != 1)
  {
    v5 = sub_269853854();
    v6 = OUTLINED_FUNCTION_22_3();
    v7(v6);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
    v8 = OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyFindWrapperFlow_input;
    swift_beginAccess();
    sub_269702838(v3, v0 + v8);
    swift_endAccess();
  }

  return v4 != 1;
}

uint64_t sub_269715910()
{
  OUTLINED_FUNCTION_2_7();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D50, &unk_2698605C0);
  v1[16] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[17] = v4;
  v1[18] = OUTLINED_FUNCTION_4_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D58, &unk_26985CD10);
  v1[19] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[20] = v6;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v7 = sub_2698548D4();
  v1[23] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_4_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v1[26] = OUTLINED_FUNCTION_4_7();
  v9 = sub_269853854();
  v1[27] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[28] = v10;
  v1[29] = OUTLINED_FUNCTION_4_7();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11);
}

void sub_269715AF4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 120);
  v4 = OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyFindWrapperFlow_input;
  swift_beginAccess();
  sub_26970897C(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 208), *(v0 + 216));
    *(v0 + 40) = &type metadata for SiriVideoFeatureKeys;
    v5 = sub_2696A2978();
    *(v0 + 16) = 3;
    *(v0 + 48) = v5;
    v6 = sub_269853B34();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if (v6)
    {
      v7 = *(v0 + 120);
      v8 = *(v7 + 136);
      *(v0 + 240) = v8;
      v9 = *(v7 + 144);
      *(v0 + 248) = v9;
      v10 = *(v7 + 152);
      *(v0 + 264) = v10;
      switch(v9)
      {
        case 0uLL:
          v12 = *(v0 + 224);
          v11 = *(v0 + 232);
          v52 = *(v0 + 216);
          __swift_project_boxed_opaque_existential_1((v7 + 96), *(v7 + 120));
          sub_269852C74();

          sub_269852C64();
          sub_269852BC4();

          sub_26971683C(v11);
          (*(v12 + 8))(v11, v52);
          break;
        case 1uLL:
        case 3uLL:
          goto LABEL_3;
        case 2uLL:
          sub_269853524();
          sub_269852774();
          swift_allocObject();
          *(v0 + 104) = sub_269852764();
          sub_269853144();

          v30 = OUTLINED_FUNCTION_22_3();
          v31(v30);
          break;
        default:
          if (v10 >> 8)
          {
            if (v10 >> 8 == 1)
            {

              v32 = swift_task_alloc();
              *(v0 + 256) = v32;
              *v32 = v0;
              v32[1] = sub_2697162EC;
              OUTLINED_FUNCTION_11_14();

              sub_269716C34();
              return;
            }

            v40 = *(v0 + 224);
            v39 = *(v0 + 232);
            v41 = *(v0 + 216);
            v42 = swift_allocObject();
            *(v42 + 16) = v8;
            *(v42 + 24) = v9;
            *(v42 + 32) = v10 & 1;
            *(v42 + 33) = 2;
            v43 = OUTLINED_FUNCTION_6_19();
            sub_269717780(v43, v44);

            sub_269853524();
            sub_269852774();
            swift_allocObject();
            *(v0 + 96) = sub_269852764();
            sub_269853144();
            v45 = OUTLINED_FUNCTION_6_19();
            sub_269717660(v45, v46);

            (*(v40 + 8))(v39, v41);
          }

          else
          {
            v35 = *(v0 + 224);
            v34 = *(v0 + 232);
            v36 = *(v0 + 216);

            sub_2697169FC(v34, v8, v9);
            v37 = OUTLINED_FUNCTION_6_19();
            sub_269717660(v37, v38);
            (*(v35 + 8))(v34, v36);
          }

          break;
      }
    }

    else
    {
      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_280322700);
      }

      v14 = *(v0 + 192);
      v13 = *(v0 + 200);
      v15 = *(v0 + 184);
      v16 = __swift_project_value_buffer(v15, qword_281571B38);
      (*(v14 + 16))(v13, v16, v15);
      v17 = sub_2698548B4();
      v18 = sub_269854F44();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_269684000, v17, v18, "AppIntents feature flag disabled, using app resolving RCHFlow", v19, 2u);
        OUTLINED_FUNCTION_10();
      }

      v50 = *(v0 + 232);
      v51 = *(v0 + 224);
      v53 = *(v0 + 216);
      v21 = *(v0 + 192);
      v20 = *(v0 + 200);
      v23 = *(v0 + 176);
      v22 = *(v0 + 184);
      v25 = *(v0 + 160);
      v24 = *(v0 + 168);
      v26 = *(v0 + 152);
      v47 = *(v0 + 144);
      v48 = *(v0 + 128);
      v49 = *(v0 + 136);

      (*(v21 + 8))(v20, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D40, &unk_26985CD00);
      v27 = swift_allocObject();
      sub_26979927C();
      (*(v25 + 16))(v24, v23, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D60, &unk_26985CD20);
      swift_allocObject();
      sub_269852B24();
      *(v0 + 80) = v27;
      sub_269693204(&qword_280323D68, &qword_280323D40, &unk_26985CD00, &unk_26985B038);

      sub_269853064();
      *(v0 + 88) = sub_269853044();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D70, &qword_2698605D0);
      sub_269693204(&qword_280323D78, &qword_280323D70, &qword_2698605D0, MEMORY[0x277D5B820]);
      sub_269852B34();

      (*(v49 + 8))(v47, v48);
      (*(v25 + 8))(v23, v26);
      sub_269852A14();
      sub_269853154();

      (*(v51 + 8))(v50, v53);
    }

    OUTLINED_FUNCTION_12_15();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_11_14();

    __asm { BRAA            X1, X16 }
  }

  sub_2697089EC(*(v0 + 208));
LABEL_3:
  sub_269855354();
  OUTLINED_FUNCTION_11_14();
}

uint64_t sub_2697162EC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2697163D0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  sub_269717660(v0[30], v0[31]);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_12_15();

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_26971648C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696DA938;

  return MEMORY[0x2821BB9F8](a1, 0, 0);
}

uint64_t sub_269716530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_269716554);
}

void sub_269716554()
{
  sub_269854404();

  *(v0 + 40) = sub_2698543E4();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_269716628;

  JUMPOUT(0x269853784);
}

uint64_t sub_269716628()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_269716750);
  }

  else
  {

    OUTLINED_FUNCTION_7_7();

    return v6();
  }
}

uint64_t sub_269716750()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_2697167AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ThirdPartyFindWrapperFlow(0);
  sub_26971767C(&qword_280323D48, type metadata accessor for ThirdPartyFindWrapperFlow, &unk_26985CCA8);
  return sub_269852B54();
}

uint64_t sub_26971683C(uint64_t a1)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  *(v1 + 136) = xmmword_26985C790;
  *(v1 + 152) = 0;
  sub_269717660(v3, v4);
  type metadata accessor for ThirdPartyAppResolutionFlow(0);
  sub_26970F314();
  sub_26970F9C8(a1);
  sub_26971767C(&qword_280323CB8, type metadata accessor for ThirdPartyAppResolutionFlow, &unk_26985C8C0);
  sub_269852B44();

  sub_269853134();
}

uint64_t sub_26971694C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v5 = *(a2 + 136);
    v6 = *(a2 + 144);
    v7 = xmmword_26985C7A0;
LABEL_5:
    *(a2 + 136) = v7;
    *(a2 + 152) = 0;
    v8 = v6;

    return sub_269717660(v5, v8);
  }

  if (v4 == 1)
  {
    v5 = *(a2 + 136);
    v6 = *(a2 + 144);
    v7 = xmmword_26985CBA0;
    goto LABEL_5;
  }

  v10 = *(a1 + 16);
  v11 = *(a2 + 136);
  v12 = *(a2 + 144);
  *(a2 + 136) = *a1;
  *(a2 + 144) = v4;
  *(a2 + 152) = v10 & 0xFF01;

  v5 = v11;
  v8 = v12;

  return sub_269717660(v5, v8);
}

uint64_t sub_2697169FC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_2698548D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v12 = __swift_project_value_buffer(v8, qword_281571B38);
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_2698548B4();
  v14 = sub_269854F44();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v22 = a1;
    v23 = v17;
    v18 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_26974F520(a2, a3, &v23);
    _os_log_impl(&dword_269684000, v13, v14, "Executing AppIntents flow with bundleId: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_10();
    v4 = v21;
    OUTLINED_FUNCTION_10();
  }

  (*(v9 + 8))(v11, v8);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_26979B798(a2, a3);
  sub_269852A14();
  sub_269853154();
}

uint64_t sub_269716C34()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 128) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 16) = v6;
  v7 = sub_2698538B4();
  *(v1 + 56) = v7;
  OUTLINED_FUNCTION_5_12(v7);
  *(v1 + 64) = v8;
  *(v1 + 72) = OUTLINED_FUNCTION_4_7();
  v9 = sub_2698548D4();
  *(v1 + 80) = v9;
  OUTLINED_FUNCTION_5_12(v9);
  *(v1 + 88) = v10;
  *(v1 + 96) = OUTLINED_FUNCTION_4_7();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_269716D30()
{
  v16 = v0;
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = __swift_project_value_buffer(v3, qword_281571B38);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_2698548B4();
  v6 = sub_269854F44();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[4];
    v7 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_26974F520(v8, v7, &v15);
    _os_log_impl(&dword_269684000, v5, v6, "Executing RCHFlow with bundleId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v11 = OUTLINED_FUNCTION_22_3();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D40, &unk_26985CD00);
  v0[13] = swift_allocObject();
  sub_269853844();
  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_269716F64;

  return sub_2697177E0();
}

uint64_t sub_269716F64(uint64_t a1)
{
  *(*v2 + 120) = a1;

  if (v1)
  {

    v3 = OUTLINED_FUNCTION_22_3();
    v4(v3);
    v5 = sub_2697171F0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_22_3();
    v7(v6);
    v5 = sub_2697170FC;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697170FC()
{
  if (*(v0 + 128))
  {
    sub_2697A1F9C();
  }

  v1 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((*(v0 + 48) + 56), *(*(v0 + 48) + 80));
  v2 = v1;
  sub_26979B4A8();

  sub_269853154();

  OUTLINED_FUNCTION_7_7();

  return v3();
}

void *sub_269717270()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_269717660(v0[17], v0[18]);
  sub_2697089EC(v0 + OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyFindWrapperFlow_input);
  return v0;
}

uint64_t sub_2697172BC()
{
  sub_269717270();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ThirdPartyFindWrapperFlow(uint64_t a1)
{
  result = qword_280323D30;
  if (!qword_280323D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269717368(uint64_t a1)
{
  sub_2697012B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents25ThirdPartyFindWrapperFlowC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_269717428(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 18))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2697174B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2696E1660;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_269717588()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_269715910();
}

uint64_t sub_269717624(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ThirdPartyFindWrapperFlow(0);

  return sub_269852B84();
}

uint64_t sub_269717660(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_26971767C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2697176C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2696DA938;

  return sub_269716530(a1, v4, v5);
}

uint64_t sub_269717780(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_15()
{
}

uint64_t sub_2697177E0()
{
  OUTLINED_FUNCTION_2_7();
  v0[9] = v1;
  v0[10] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v3);
  v0[11] = OUTLINED_FUNCTION_4_7();
  v4 = sub_269851EF4();
  v0[12] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v0[13] = v5;
  v0[14] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269852474();
  v0[15] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v0[16] = v7;
  v0[17] = OUTLINED_FUNCTION_37_0();
  v0[18] = swift_task_alloc();
  v8 = sub_2698538A4();
  v0[19] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v0[20] = v9;
  v0[21] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269853874();
  v0[22] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v0[23] = v11;
  v0[24] = OUTLINED_FUNCTION_4_7();
  v12 = sub_2698548D4();
  v0[25] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v0[26] = v13;
  v0[27] = OUTLINED_FUNCTION_37_0();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v14 = sub_269853F44();
  v0[35] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v0[36] = v15;
  v0[37] = OUTLINED_FUNCTION_37_0();
  v0[38] = swift_task_alloc();
  v16 = sub_2698538B4();
  v0[39] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v0[40] = v17;
  v0[41] = OUTLINED_FUNCTION_37_0();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v18);
}