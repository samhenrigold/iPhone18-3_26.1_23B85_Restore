uint64_t sub_1D415179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  sub_1D4166A10();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1D415308C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D4166B30();
    MEMORY[0x1DA6D1C60](0xD00000000000003FLL, 0x80000001D416C990);
    v11 = sub_1D4166D10();
    MEMORY[0x1DA6D1C60](v11);

    MEMORY[0x1DA6D1C60](46, 0xE100000000000000);
    result = sub_1D4166BB0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D41519B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_9_5();
  if (qword_1ED9ACD78 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_1ED9ACD78);
  }

  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = v9;
  v15[7] = a3;
  v18 = sub_1D41527F8(v15, v16, v17);

  v20(&type metadata for Definition, a9, v15, a4, &type metadata for Definition, a6, v18);
}

void sub_1D4151AB0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = a3;
  v80 = a2;
  v83 = sub_1D4165C70();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v75[-v13];
  v14 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0();
  v77 = v15;
  OUTLINED_FUNCTION_13();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v75[-v18];
  v82 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v81 = v21 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47E0, &qword_1D41683C8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v75[-v23];
  v25 = sub_1D41657E0();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  sub_1D41657C0();
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    v32 = &qword_1EC7C47E0;
    v33 = &qword_1D41683C8;
    v34 = v24;
LABEL_10:
    sub_1D414F5DC(v34, v32, v33);
LABEL_11:
    v54 = v83;
    if (qword_1EC7C43D8 != -1)
    {
      OUTLINED_FUNCTION_2_1(&qword_1EC7C43D8);
    }

    v55 = sub_1D4165D70();
    __swift_project_value_buffer(v55, qword_1EC7C5F48);
    (*(v8 + 16))(v12, a1, v54);
    v56 = sub_1D4165D50();
    v57 = sub_1D4166A90();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v86[0] = v59;
      *v58 = 136446210;
      sub_1D4152F2C();
      v60 = sub_1D4166C00();
      v62 = v61;
      v63 = OUTLINED_FUNCTION_5_3();
      v64(v63);
      v65 = sub_1D41529BC(v60, v62, v86);

      *(v58 + 4) = v65;
      _os_log_impl(&dword_1D4134000, v56, v57, "[Scene:%{public}s] could not find context", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      OUTLINED_FUNCTION_10_6();
      OUTLINED_FUNCTION_10_6();
    }

    else
    {

      v66 = OUTLINED_FUNCTION_5_3();
      v67(v66);
    }

    return;
  }

  v35 = (*(v27 + 32))(v31, v24, v25);
  sub_1D4152904(v35, v36, v37);
  sub_1D41657F0();
  if (!*&v85[0])
  {
    v52 = OUTLINED_FUNCTION_4_3();
    v53(v52);
    v32 = &unk_1EC7C47F0;
    v33 = &unk_1D41683D0;
    v34 = v85;
    goto LABEL_10;
  }

  v86[0] = v85[0];
  v86[1] = v85[1];
  v86[2] = v85[2];
  sub_1D4152F84(v86, v85);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47F8, &qword_1D41683D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D414F5DC(v86, &qword_1EC7C4808, &qword_1D41683E0);
    v68 = OUTLINED_FUNCTION_4_3();
    v69(v68);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, a5);
    (*(v77 + 8))(v19, v14);
    goto LABEL_11;
  }

  __swift_storeEnumTagSinglePayload(v19, 0, 1, a5);
  (*(v82 + 32))(v81, v19, a5);
  if (qword_1EC7C43D8 != -1)
  {
    OUTLINED_FUNCTION_2_1(&qword_1EC7C43D8);
  }

  v38 = sub_1D4165D70();
  __swift_project_value_buffer(v38, qword_1EC7C5F48);
  v39 = v78;
  v40 = v83;
  (*(v8 + 16))(v78, a1, v83);
  v41 = sub_1D4165D50();
  v42 = sub_1D4166A90();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *&v85[0] = v77;
    *v43 = 136446466;
    sub_1D4152F2C();
    v76 = v42;
    v44 = sub_1D4166C00();
    v45 = v39;
    v47 = v46;
    (*(v8 + 8))(v45, v40);
    v48 = sub_1D41529BC(v44, v47, v85);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v84 = a5;
    swift_getMetatypeMetadata();
    v49 = sub_1D4166930();
    v51 = sub_1D41529BC(v49, v50, v85);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_1D4134000, v41, v76, "[Scene:%{public}s] calling handler for %s", v43, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_10_6();
  }

  else
  {

    v70 = OUTLINED_FUNCTION_5_3();
    v71(v70);
  }

  v72 = v81;
  v80(v81);
  (*(v82 + 8))(v72, a5);
  sub_1D414F5DC(v86, &qword_1EC7C4808, &qword_1D41683E0);
  v73 = OUTLINED_FUNCTION_4_3();
  v74(v73);
}

uint64_t sub_1D41522A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_9_5();
  if (qword_1ED9ACD78 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_1ED9ACD78);
  }

  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = v9;
  v15[7] = a3;

  v17(a9, v15, a4, a6);
}

uint64_t sub_1D4152384(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a3;
  v55 = a2;
  v53 = a7;
  sub_1D4165570();
  OUTLINED_FUNCTION_0();
  v51 = v9;
  v52 = v8;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  sub_1D4166AD0();
  OUTLINED_FUNCTION_0();
  v48 = v14;
  v49 = v13;
  OUTLINED_FUNCTION_13();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v50 = *(a5 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47E0, &qword_1D41683C8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  v27 = sub_1D41657E0();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  sub_1D41657C0();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    v34 = &qword_1EC7C47E0;
    v35 = &qword_1D41683C8;
    v36 = v26;
    return sub_1D414F5DC(v36, v34, v35);
  }

  v37 = (*(v29 + 32))(v33, v26, v27);
  sub_1D4152904(v37, v38, v39);
  sub_1D41657F0();
  if (!v56)
  {
    v44 = OUTLINED_FUNCTION_6_5();
    v45(v44);
    v34 = &unk_1EC7C47F0;
    v35 = &unk_1D41683D0;
    v36 = &v56;
    return sub_1D414F5DC(v36, v34, v35);
  }

  sub_1D4143978(&v57, v58);
  sub_1D4152958(v58, &v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47F8, &qword_1D41683D8);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v18, 0, 1, a5);
    v40 = v50;
    (*(v50 + 32))(v23, v18, a5);
    (*(v40 + 16))(v21, v23, a5);
    sub_1D4165560();
    v55(v12);
    (*(v51 + 8))(v12, v52);
    (*(v40 + 8))(v23, a5);
    __swift_destroy_boxed_opaque_existential_1(v58);
    v41 = OUTLINED_FUNCTION_6_5();
    return v42(v41);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, a5);
    __swift_destroy_boxed_opaque_existential_1(v58);
    v46 = OUTLINED_FUNCTION_6_5();
    v47(v46);
    return (*(v48 + 8))(v18, v49);
  }
}

unint64_t sub_1D41527F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C48C0;
  if (!qword_1EC7C48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C48C0);
  }

  return result;
}

unint64_t sub_1D4152904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C47E8;
  if (!qword_1EC7C47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C47E8);
  }

  return result;
}

uint64_t sub_1D4152958(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D41529BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D4152A80(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1D4152FF4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D4152A80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D4152B80(a5, a6);
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
    result = sub_1D4166B50();
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

uint64_t sub_1D4152B80(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D4152BCC(a1, a2);
  sub_1D4152CE4(&unk_1F4F85260);
  return v3;
}

uint64_t sub_1D4152BCC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1D4166980())
  {
    result = sub_1D4152DC8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1D4166B20();
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
          result = sub_1D4166B50();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D4152CE4(uint64_t result)
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

    result = sub_1D4152E38(result, v7, 1, v3);
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

void *sub_1D4152DC8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4810, &qword_1D41683E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1D4152E38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4810, &qword_1D41683E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1D4152F2C()
{
  result = qword_1EC7C4800;
  if (!qword_1EC7C4800)
  {
    sub_1D4165C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4800);
  }

  return result;
}

uint64_t sub_1D4152F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4808, &qword_1D41683E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4152FF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D41530BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  OUTLINED_FUNCTION_17_3();
  v14();
  sub_1D4166A20();
  v15 = sub_1D4166A10();
  v16 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 2) = v15;
  *(v17 + 3) = v18;
  *(v17 + 4) = a1;
  *(v17 + 5) = a2;
  (*(v5 + 32))(&v17[v16], &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1D415326C();
}

void sub_1D415326C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  sub_1D414E718(v5, v23 - v10, &qword_1EC7C46D0, &qword_1D4168010);
  v12 = sub_1D4166A50();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D414E5B4(v11, &qword_1EC7C46D0, &qword_1D4168010);
  }

  else
  {
    sub_1D4166A40();
    OUTLINED_FUNCTION_14();
    (*(v14 + 8))(v11, v12);
  }

  v15 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D4166A00();
    v18 = v17;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v19 = sub_1D4166940() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      *(v20 + 24) = v1;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v21 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v23[1] = 7;
      v23[2] = v21;
      v23[3] = v19;
      swift_task_create();

      sub_1D414E5B4(v5, &qword_1EC7C46D0, &qword_1D4168010);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1D414E5B4(v5, &qword_1EC7C46D0, &qword_1D4168010);
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v1;
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_28();
}

void Button.init<A>(intent:label:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v27[1] = v8;
  v27[2] = v9;
  v11 = v10;
  v27[0] = v12;
  OUTLINED_FUNCTION_2();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v19 = v27[3];
    OUTLINED_FUNCTION_17_3();
    v23(v20, v21, v22);
    v24 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = v7;
    *(v25 + 3) = v5;
    *(v25 + 4) = v3;
    *(v25 + 5) = v1;
    (*(v14 + 32))(&v25[v24], v18, v5);
    v26 = v19;
    sub_1D41667E0();

    (*(v14 + 8))(v11, v5);
    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_12_4();
    __break(1u);
  }
}

uint64_t sub_1D4153728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a4;
  sub_1D4166A20();
  v8[5] = sub_1D4166A10();
  v10 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D4155C44, v10, v9);
}

void Button<>.init<A>(_:intent:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(v8 - v7, v9, v10);
  Button.init<A>(intent:label:)();

  (*(v5 + 8))(v3, v1);
  OUTLINED_FUNCTION_28();
}

void Button<>.init<A, B>(_:intent:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_0();
  (*(v10 + 16))(v0);
  Button.init<A>(intent:label:)();
  (*(v10 + 8))(v6, v2);
  OUTLINED_FUNCTION_14();
  (*(v12 + 8))(v8, v4);
  OUTLINED_FUNCTION_28();
}

void Button.init<A>(role:intent:label:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v35 = v2;
  v36 = v3;
  v5 = v4;
  v33 = v6;
  v34 = v7;
  v9 = v8;
  v11 = v10;
  v32 = v12;
  OUTLINED_FUNCTION_2();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v23 = v37;
    sub_1D414E718(v11, v22, &qword_1EC7C4818, &qword_1D41683F0);
    OUTLINED_FUNCTION_17_3();
    v24();
    v25 = *(v14 + 80);
    v30 = v9;
    v31 = v11;
    v26 = (v25 + 48) & ~v25;
    v27 = swift_allocObject();
    v28 = v36;
    *(v27 + 2) = v35;
    *(v27 + 3) = v5;
    *(v27 + 4) = v28;
    *(v27 + 5) = v1;
    (*(v14 + 32))(&v27[v26], v18, v5);
    v29 = v23;
    sub_1D41667C0();

    (*(v14 + 8))(v30, v5);
    sub_1D414E5B4(v31, &qword_1EC7C4818, &qword_1D41683F0);
    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_12_4();
    __break(1u);
  }
}

void sub_1D4153CB0()
{
  OUTLINED_FUNCTION_39();
  v24[0] = v1;
  v24[1] = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_11_0();
  v18 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v18);
  (*(v12 + 16))(v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v6);
  sub_1D4166A20();
  v19 = sub_1D4166A10();
  v20 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 2) = v19;
  *(v21 + 3) = v22;
  *(v21 + 4) = v8;
  *(v21 + 5) = v6;
  v23 = v24[0];
  *(v21 + 6) = v4;
  *(v21 + 7) = v23;
  (*(v12 + 32))(&v21[v20], v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1D415326C();

  OUTLINED_FUNCTION_28();
}

uint64_t objectdestroyTm_1()
{
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D4153F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a4;
  sub_1D4166A20();
  v8[5] = sub_1D4166A10();
  v10 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D4153FF0, v10, v9);
}

uint64_t sub_1D4153FF0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  sub_1D41530BC(v2, v1);
  OUTLINED_FUNCTION_17();

  return v3();
}

void Button<>.init<A>(_:role:intent:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v13 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_24_0();
  sub_1D414E718(v5, v0, &qword_1EC7C4818, &qword_1D41683F0);
  v11 = OUTLINED_FUNCTION_16_3();
  v12(v11, v13, v2);
  Button.init<A>(role:intent:label:)();

  (*(v7 + 8))(v13, v2);
  sub_1D414E5B4(v5, &qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_28();
}

void Button<>.init<A, B>(_:role:intent:)()
{
  OUTLINED_FUNCTION_39();
  v18 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_24_0();
  sub_1D414E718(v7, v0, &qword_1EC7C4818, &qword_1D41683F0);
  v15 = OUTLINED_FUNCTION_16_3();
  v16(v15, v18, v3);
  OUTLINED_FUNCTION_20_2();
  Button.init<A>(role:intent:label:)();
  (*(v11 + 8))(v18, v3);
  sub_1D414E5B4(v7, &qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_14();
  (*(v17 + 8))(v9, v5);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D41543F0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(v4 - v3);
  OUTLINED_FUNCTION_17_3();
  result = sub_1D4166560();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

void Button<>.init<A>(_:systemImage:role:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_39();
  v23 = v22;
  v25 = v24;
  v47 = v26;
  v48 = v24;
  v46 = v27;
  v29 = v28;
  v45 = v30;
  v44 = v31;
  v33 = v32;
  v50 = v34;
  OUTLINED_FUNCTION_2();
  v36 = v35;
  v49 = a22;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1_5();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v39);
  sub_1D414E718(v25, &v43 - v40, &qword_1EC7C4818, &qword_1D41683F0);
  v41 = OUTLINED_FUNCTION_16_3();
  v42(v41, v23, a21);
  v51 = v33;
  v52 = v44;
  v53 = v45;
  v54 = v29;
  v55 = v46;
  v56 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C4820, &qword_1D4168C60);
  sub_1D415476C();
  OUTLINED_FUNCTION_20_2();
  Button.init<A>(role:intent:label:)();

  (*(v36 + 8))(v23, a21);
  sub_1D414E5B4(v48, &qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D41546C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D4166710();
}

unint64_t sub_1D415476C()
{
  result = qword_1ED9ACF28;
  if (!qword_1ED9ACF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7C4820, &qword_1D4168C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACF28);
  }

  return result;
}

void Button<>.init<A, B>(_:systemImage:role:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_39();
  v47 = v21;
  v48 = v22;
  v24 = v23;
  v26 = v25;
  v44 = v28;
  v45 = v27;
  v30 = v29;
  v46 = v29;
  v32 = v31;
  v49 = v33;
  OUTLINED_FUNCTION_2();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1_5();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v38);
  sub_1D414E718(v30, &v44 - v39, &qword_1EC7C4818, &qword_1D41683F0);
  v40 = OUTLINED_FUNCTION_16_3();
  v41 = v44;
  v42(v40, v44, v24);
  v50 = v26;
  v51 = v24;
  v52 = v48;
  v53 = a21;
  v54 = v32;
  v55 = v45;
  v56 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C4820, &qword_1D4168C60);
  sub_1D415476C();
  Button.init<A>(role:intent:label:)();

  (*(v35 + 8))(v41, v24);
  sub_1D414E5B4(v46, &qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_14();
  (*(v43 + 8))(v32, v26);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D41549D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));

  return sub_1D4166720();
}

void Button<>.init<A>(_:image:role:intent:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v16 = v3;
  v5 = v4;
  v17 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_11_0();
  sub_1D414E718(v5, v0, &qword_1EC7C4818, &qword_1D41683F0);
  v13 = OUTLINED_FUNCTION_16_3();
  v14(v13, v16, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C4820, &qword_1D4168C60);
  sub_1D415476C();
  OUTLINED_FUNCTION_20_2();
  Button.init<A>(role:intent:label:)();

  (*(v9 + 8))(v16, v2);
  sub_1D414E5B4(v17, &qword_1EC7C4818, &qword_1D41683F0);
  sub_1D4165CE0();
  OUTLINED_FUNCTION_14();
  (*(v15 + 8))(v7);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D4154CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1D4165CE0();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a5);

  return sub_1D4166730();
}

void Button<>.init<A, B>(_:image:role:intent:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v20 = v8;
  v21 = v10;
  v12 = v11;
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_11_0();
  sub_1D414E718(v9, v1, &qword_1EC7C4818, &qword_1D41683F0);
  (*(v14 + 16))(v0, v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C4820, &qword_1D4168C60);
  sub_1D415476C();
  OUTLINED_FUNCTION_20_2();
  Button.init<A>(role:intent:label:)();
  (*(v14 + 8))(v7, v3);
  sub_1D414E5B4(v20, &qword_1EC7C4818, &qword_1D41683F0);
  sub_1D4165CE0();
  OUTLINED_FUNCTION_14();
  (*(v18 + 8))(v21);
  OUTLINED_FUNCTION_14();
  (*(v19 + 8))(v12, v5);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D4155010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D4165CE0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  (*(v14 + 16))(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D4166740();
}

uint64_t sub_1D41551A8()
{
  OUTLINED_FUNCTION_2_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_4(v1);

  return sub_1D4153F54(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D4155280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  sub_1D4166A20();
  v6[9] = sub_1D4166A10();
  v8 = sub_1D4166A00();
  v6[10] = v8;
  v6[11] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D415531C, v8, v7);
}

uint64_t sub_1D415531C()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1D41553B4;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x1EEDB2D50](1, v2, v3);
}

uint64_t sub_1D41553B4()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1D4155544;
  }

  else
  {
    v5 = sub_1D41554EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D41554EC()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1D4155544()
{
  v1 = *(v0 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A8, &qword_1D4168310);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D4168270;
  sub_1D4166B30();
  swift_getDynamicType();
  v3 = sub_1D4166D10();
  v5 = v4;

  MEMORY[0x1DA6D1C60](0xD00000000000001FLL, 0x80000001D416CA10);
  swift_getErrorValue();
  v6 = sub_1D4166C70();
  MEMORY[0x1DA6D1C60](v6);

  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_1D4166CC0();

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_1D41556B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D41557B0;

  return v6(a1);
}

uint64_t sub_1D41557B0()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_1D4155898()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_7(v1);

  return v4(v3);
}

uint64_t sub_1D415592C()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_7(v1);

  return v4(v3);
}

uint64_t sub_1D41559C0(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7(v8);
  *v9 = v10;
  v9[1] = sub_1D414E4D0;

  return sub_1D4155280(a1, v6, v7, v1 + v5, v3, v4);
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1D4155B68()
{
  OUTLINED_FUNCTION_2_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_4(v1);

  return sub_1D4153728(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D4155CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_5(a1, a2, a3);
  OUTLINED_FUNCTION_1_6();

  return MEMORY[0x1EEDDC7F0]();
}

uint64_t sub_1D4155D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_5(a1, a2, a3);
  OUTLINED_FUNCTION_1_6();

  return MEMORY[0x1EEDDC3F0]();
}

uint64_t (*sub_1D4155D7C(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return sub_1D4156D88;
}

uint64_t sub_1D4155E64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1D4155D7C(*a1, a1[1]);
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_1D4156D5C;
  a2[1] = result;
  return result;
}

uint64_t sub_1D4155ECC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_1D4165DB0();
}

uint64_t sub_1D4155FC8()
{
  result = sub_1D4155FE8();
  qword_1EC7C5F60 = result;
  return result;
}

uint64_t sub_1D4155FE8()
{
  v0 = sub_1D4166AB0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D4166AA0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D4166880();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D4156C20(0, &qword_1EC7C48D8, 0x1E69E9610);
  sub_1D4166870();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1D4156C60(&qword_1EC7C48E0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C48E8, &qword_1D4168570);
  sub_1D4156CA8();
  sub_1D4166B00();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  return sub_1D4166AC0();
}

uint64_t sub_1D4156228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_1D4165C70();
  v3[11] = v4;
  OUTLINED_FUNCTION_24(v4);
  v3[12] = v5;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47E0, &qword_1D41683C8);
  v3[15] = swift_task_alloc();
  v6 = sub_1D41657E0();
  v3[16] = v6;
  OUTLINED_FUNCTION_24(v6);
  v3[17] = v7;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D415637C, 0, 0);
}

uint64_t sub_1D415637C()
{
  sub_1D41657D0();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  sub_1D4165C60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C48B0, &qword_1D4168560);
  swift_allocObject();
  v5 = sub_1D4165730();
  sub_1D4156C20(0, &qword_1EC7C48B8, 0x1E698E5F8);

  v6 = sub_1D41568C8(sub_1D4156C1C, v5);
  if (qword_1EC7C43E0 != -1)
  {
    swift_once();
  }

  [v6 setQueue_];
  v7 = sub_1D41657B0();
  sub_1D41527F8(v7, v8, v9);
  v10 = v6;
  v13 = sub_1D4165D80();
  v15 = *(v0 + 136);
  v14 = *(v0 + 144);
  v16 = *(v0 + 128);
  v17 = *(v0 + 64);
  v26 = *(v0 + 72);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  *(v0 + 16) = v5;
  *(v0 + 48) = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 24));
  v19 = (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, v17);
  sub_1D4152904(v19, v20, v21);

  v22 = v13;
  sub_1D4165800();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C48D0, &qword_1D4168568);
  v23 = sub_1D4165870();
  OUTLINED_FUNCTION_24(v23);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D4168270;
  v25 = v22;
  sub_1D4165740();
  sub_1D4165860();

  (*(v15 + 8))(v14, v16);

  v11 = *(v0 + 8);

  return v11(v24);
}

id sub_1D41568C8(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D4156978;
  v5[3] = &block_descriptor;
  v2 = _Block_copy(v5);
  v3 = [swift_getObjCClassFromMetadata() responderWithHandler_];
  _Block_release(v2);

  return v3;
}

void sub_1D4156978(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D41569E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4156A8C;

  return sub_1D4156228(a1, a2, a3);
}

uint64_t sub_1D4156A8C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D4156BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47E0, &qword_1D41683C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4156C20(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D4156C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D4156CA8()
{
  result = qword_1EC7C48F0;
  if (!qword_1EC7C48F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C48E8, &qword_1D4168570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C48F0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D4156D24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1D4156D90()
{
  OUTLINED_FUNCTION_2_6();
  result = EnvironmentValues.attributeSet.getter(v1, v2, v3);
  *v0 = result;
  return result;
}

void *sub_1D4156DE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = EnvironmentValues.displayLocation.getter(a2, a3, a4);
  *a1 = v6;
  return result;
}

uint64_t sub_1D4156E58()
{
  OUTLINED_FUNCTION_2_6();
  result = EnvironmentValues.searchString.getter(v1, v2, v3);
  *v0 = result;
  v0[1] = v5;
  return result;
}

uint64_t sub_1D4156E80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EnvironmentValues.searchString.setter(v1, v2, v3);
}

uint64_t DisplayRepresentation.init<A>(content:)@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v39 = a3;
  v40 = a1;
  v35 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4960, &qword_1D4168578);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = v32 - v6;
  v34 = sub_1D4165C10();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1();
  v32[1] = v8 - v7;
  sub_1D41658F0();
  OUTLINED_FUNCTION_2();
  v36 = v10;
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = sub_1D4165820();
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_1();
  v15 = sub_1D4165AD0();
  OUTLINED_FUNCTION_2();
  v38 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_2();
  v22 = v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v32 - v28;
  v40(v27);
  sub_1D4165B90();
  swift_allocObject();
  sub_1D4165B80();
  (*(v22 + 16))(v26, v29, a2);
  v40 = a2;
  sub_1D4142CA0(v26, a2, v39);
  (*(v36 + 104))(v13, *MEMORY[0x1E695A1E8], v37);
  sub_1D4165AC0();
  sub_1D41576F4(qword_1ED9ACAE8, MEMORY[0x1E695A6C0], MEMORY[0x1E695A6C8]);
  v30 = v41;
  sub_1D4165B70();
  if (v30)
  {

    (*(v38 + 8))(v20, v15);
  }

  else
  {
    v41 = v15;
    sub_1D4165C00();
    __swift_storeEnumTagSinglePayload(v33, 1, 1, v34);
    sub_1D4165950();

    (*(v38 + 8))(v20, v41);
  }

  return (*(v22 + 8))(v29, v40);
}

void static DisplayRepresentation.view(from:attributeSet:displayLocation:searchString:)(uint64_t a3@<X2>, uint64_t *a7@<X8>)
{
  v27 = a7;
  v9 = type metadata accessor for SharedIndexedViewFormatDecodable(0);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  sub_1D4165B60();
  swift_allocObject();
  sub_1D4165B50();
  sub_1D41576F4(&qword_1EC7C4380, type metadata accessor for SharedIndexedViewFormatDecodable, &unk_1D4167C88);
  sub_1D4165B40();
  if (v7)
  {

    sub_1D4143840(v13, v14, v15);
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v16 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    swift_getKeyPath();
    v19[0] = a3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4968, &qword_1D41685A8);
    v25 = sub_1D4165F80();
    v22 = *(v16 + 24);
    v23 = sub_1D415773C(&qword_1EC7C4338, &qword_1EC7C4968, &qword_1D41685A8);
    WitnessTable = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v24);
    sub_1D41665C0();

    __swift_project_boxed_opaque_existential_1(v24, v25);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4970, &qword_1D41685D8);
    v20 = sub_1D4165F80();
    sub_1D415773C(&qword_1EC7C4348, &qword_1EC7C4970, &qword_1D41685D8);
    v21 = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v19);
    sub_1D41665C0();

    __swift_project_boxed_opaque_existential_1(v19, v20);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4978, &qword_1D4168608);
    v17 = sub_1D4165F80();
    v18 = v27;
    v27[3] = v17;
    sub_1D415773C(&qword_1EC7C4340, &qword_1EC7C4978, &qword_1D4168608);
    v18[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v18);

    sub_1D41665C0();

    sub_1D41437E4(v12);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }
}

uint64_t sub_1D41576F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D415773C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_1D4157790()
{
  if (qword_1EC7C4420 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC7C4428;
  v1 = qword_1EC7C5F88;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC7C5F90;
  v3 = objc_opt_self();
  v4 = v2;
  result = [v3 clearColor];
  qword_1EC7C4980 = v1;
  *algn_1EC7C4988 = v4;
  qword_1EC7C4990 = result;
  qword_1EC7C4998 = 0;
  return result;
}

id static ShortcutsLinkStyle.automatic.getter()
{
  if (qword_1EC7C43E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_6(&qword_1EC7C4980);
  v1 = v0;

  return v3;
}

id sub_1D41578E8()
{
  if (qword_1EC7C4428 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC7C4420;
  v1 = qword_1EC7C5F90;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC7C5F88;
  result = [v2 colorWithAlphaComponent_];
  qword_1EC7C49A0 = v1;
  *algn_1EC7C49A8 = v2;
  qword_1EC7C49B0 = result;
  unk_1EC7C49B8 = 0x3FF0000000000000;
  return result;
}

id static ShortcutsLinkStyle.automaticOutline.getter()
{
  if (qword_1EC7C43F0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_6(&qword_1EC7C49A0);
  v1 = v0;

  return v3;
}

id sub_1D4157A30()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 blackColor];
  result = [v0 clearColor];
  qword_1EC7C49C0 = v1;
  *algn_1EC7C49C8 = v2;
  qword_1EC7C49D0 = result;
  unk_1EC7C49D8 = 0;
  return result;
}

id static ShortcutsLinkStyle.light.getter()
{
  if (qword_1EC7C43F8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_6(&qword_1EC7C49C0);
  v1 = v0;

  return v3;
}

void sub_1D4157B3C()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 blackColor];
  v3 = [v0 blackColor];
  v4 = [v3 colorWithAlphaComponent_];

  qword_1EC7C49E0 = v1;
  *algn_1EC7C49E8 = v2;
  qword_1EC7C49F0 = v4;
  unk_1EC7C49F8 = 0x3FF0000000000000;
}

id static ShortcutsLinkStyle.lightOutline.getter()
{
  if (qword_1EC7C4400 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_6(&qword_1EC7C49E0);
  v1 = v0;

  return v3;
}

id sub_1D4157C70()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v0 whiteColor];
  result = [v0 clearColor];
  qword_1EC7C4A00 = v1;
  *algn_1EC7C4A08 = v2;
  qword_1EC7C4A10 = result;
  unk_1EC7C4A18 = 0;
  return result;
}

id static ShortcutsLinkStyle.dark.getter()
{
  if (qword_1EC7C4408 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_6(&qword_1EC7C4A00);
  v1 = v0;

  return v3;
}

void sub_1D4157D7C()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v0 whiteColor];
  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  qword_1EC7C4A20 = v1;
  *algn_1EC7C4A28 = v2;
  qword_1EC7C4A30 = v4;
  unk_1EC7C4A38 = 0x3FF0000000000000;
}

id static ShortcutsLinkStyle.darkOutline.getter()
{
  if (qword_1EC7C4410 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_6(&qword_1EC7C4A20);
  v1 = v0;

  return v3;
}

uint64_t ShortcutsLink.init(action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
  return result;
}

uint64_t ShortcutsLink.body.getter@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A40, &qword_1D4168658);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v2);
  v106 = &v94 - v3;
  sub_1D4166170();
  OUTLINED_FUNCTION_0();
  v110 = v5;
  v111 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1D4165FF0();
  OUTLINED_FUNCTION_5();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v104 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v113 = (&v94 - v10);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A48, &qword_1D4168660);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v94 - v12;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A50, &qword_1D4168668);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v94 - v14;
  v15 = sub_1D4165FB0();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A58, &qword_1D4168670);
  OUTLINED_FUNCTION_0();
  v23 = v22;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v94 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A60, &qword_1D4168678);
  OUTLINED_FUNCTION_0();
  v101 = v28;
  v102 = v27;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v94 - v30;
  v32 = v1[1];
  v126 = *v1;
  v127 = v32;
  v128 = v1[2];
  v129 = *(v1 + 6);
  v33 = swift_allocObject();
  v34 = v1[1];
  *(v33 + 16) = *v1;
  *(v33 + 32) = v34;
  *(v33 + 48) = v1[2];
  *(v33 + 64) = *(v1 + 6);
  v116 = &v126;
  sub_1D4159A48(&v126, v124);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A68, &qword_1D4168680);
  sub_1D4159A80();
  sub_1D41667D0();
  sub_1D4165FA0();
  sub_1D41361D0(&qword_1EC7C4A90, &qword_1EC7C4A58, &qword_1D4168670, MEMORY[0x1E697D680]);
  sub_1D415AB2C(&qword_1EC7C4A98, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v100 = v31;
  sub_1D41665B0();
  (*(v17 + 8))(v20, v15);
  (*(v23 + 8))(v26, v21);
  v35 = *(v114 + 20);
  v36 = *MEMORY[0x1E697F468];
  v37 = sub_1D4166290();
  OUTLINED_FUNCTION_5();
  v39 = *(v38 + 104);
  v40 = v113;
  v97 = v38 + 104;
  v98 = v39;
  v39(v113 + v35, v36, v37);
  __asm { FMOV            V0.2D, #13.0 }

  v96 = _Q0;
  *v40 = _Q0;
  v130[0] = v126;
  v130[1] = v127;
  v131 = v128;
  v47 = *(&v126 + 1);
  v46 = v126;
  v48 = v127;
  v112 = v128;
  v95 = *(&v127 + 1);
  if (v128 == 1)
  {
    OUTLINED_FUNCTION_5_4();
    v49 = v47;
    v50 = v46;
  }

  else
  {
    sub_1D4159C10(v130, v124);
    sub_1D4166A80();
    v51 = sub_1D41663A0();
    sub_1D4165D40();

    v94 = v48;
    v52 = v47;
    v53 = v37;
    v54 = v36;
    v55 = v109;
    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(v130, &qword_1EC7C4AA0, &qword_1D4168698);
    (*(v110 + 8))(v55, v111);
    v50 = v117;
    v49 = v118;
    v36 = v54;
    v37 = v53;
    v47 = v52;
    v48 = v94;
  }

  v56 = sub_1D41666B0();
  if (v112)
  {
    OUTLINED_FUNCTION_5_4();
    v57 = v48;
    v58 = v47;
    v59 = v46;
  }

  else
  {
    sub_1D4159C10(v130, v124);
    sub_1D4166A80();
    v60 = sub_1D41663A0();
    sub_1D4165D40();

    v61 = v109;
    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(v130, &qword_1EC7C4AA0, &qword_1D4168698);
    (*(v110 + 8))(v61, v111);
    v59 = v117;
    v58 = v118;
    v57 = v119;
  }

  sub_1D4165DE0();
  v62 = v113;
  v63 = v115;
  sub_1D4159C80(v113, v115);
  v64 = *v124 * 0.5;
  v65 = v63 + *(v99 + 68);
  sub_1D4159C80(v62, v65);
  *(v65 + *(sub_1D4165FE0() + 20)) = v64;
  v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AA8, &qword_1D41686A0) + 36);
  v67 = v124[1];
  *v66 = v124[0];
  *(v66 + 16) = v67;
  *(v66 + 32) = v125;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AB0, &qword_1D41686A8);
  *(v65 + *(v68 + 52)) = v56;
  *(v65 + *(v68 + 56)) = 256;
  v69 = sub_1D4166840();
  v71 = v70;
  sub_1D4146F78(v62);
  v72 = (v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AB8, &qword_1D41686B0) + 36));
  *v72 = v69;
  v72[1] = v71;
  v73 = v104;
  v98(&v104[*(v114 + 20)], v36, v37);
  *v73 = v96;
  if (v112)
  {
    v120 = v46;
    v121 = v47;
    v122 = v48;
    v123 = v95;
    sub_1D4159C10(v130, &v117);
  }

  else
  {
    sub_1D4159C10(v130, &v117);
    sub_1D4166A80();
    v74 = sub_1D41663A0();
    sub_1D4165D40();

    v75 = v109;
    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(v130, &qword_1EC7C4AA0, &qword_1D4168698);
    (*(v110 + 8))(v75, v111);
    v47 = v121;
    v48 = v122;
  }

  v76 = sub_1D41666B0();
  v77 = v73;
  v78 = v106;
  sub_1D4159CE4(v77, v106);
  v79 = v107;
  *(v78 + *(v107 + 52)) = v76;
  *(v78 + *(v79 + 56)) = 256;
  v80 = sub_1D4166840();
  v82 = v81;
  v83 = v105;
  v84 = &v105[*(v103 + 36)];
  sub_1D4159D48(v78, v84);
  v85 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AC0, &qword_1D41686B8) + 36));
  *v85 = v80;
  v85[1] = v82;
  sub_1D4159DB8(v115, v83, &qword_1EC7C4A48, &qword_1D4168660);
  v86 = sub_1D4166840();
  v88 = v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AC8, &qword_1D41686C0);
  v90 = v108;
  v91 = v108 + *(v89 + 36);
  sub_1D4159DB8(v83, v91, &qword_1EC7C4A50, &qword_1D4168668);
  v92 = (v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AD0, &qword_1D41686C8) + 36));
  *v92 = v86;
  v92[1] = v88;
  return (*(v101 + 32))(v90, v100, v102);
}

uint64_t sub_1D4158980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A78, &qword_1D4168688);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-v6];
  v23 = a1;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AF8, &qword_1D4168818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B00, &unk_1D4168820);
  sub_1D415A0EC();
  sub_1D415A170();
  sub_1D4166700();
  v24 = xmmword_1D4168620;
  v25 = 0x4024000000000000;
  v8 = sub_1D41361D0(&qword_1EC7C4A80, &qword_1EC7C4A78, &qword_1D4168688, MEMORY[0x1E697D658]);
  sub_1D4159BBC(v8, v9, v10);
  sub_1D41665A0();
  (*(v5 + 8))(v7, v4);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A68, &qword_1D4168680) + 36));
  v12 = *(sub_1D4165FF0() + 20);
  v13 = *MEMORY[0x1E697F468];
  v14 = sub_1D4166290();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #13.0 }

  *v11 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A88, &qword_1D4168690);
  *&v11[*(result + 36)] = 256;
  return result;
}

void sub_1D4158BF4(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v42 = sub_1D4166170();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = a1[1];
  v47 = *a1;
  v48 = v4;
  v49 = a1[2];
  v50 = *(a1 + 6);
  v44[0] = sub_1D4158F38();
  v44[1] = v5;
  sub_1D415A230(v44[0], v5, v6);
  v7 = sub_1D4166560();
  v9 = v8;
  v11 = v10;
  sub_1D41664F0();
  v12 = sub_1D4166530();
  v14 = v13;
  v16 = v15;

  sub_1D414911C(v7, v9, v11 & 1);

  sub_1D4166440();
  v17 = sub_1D4166510();
  v19 = v18;
  v21 = v20;
  sub_1D414911C(v12, v14, v16 & 1);

  LOBYTE(v49) = *(a1 + 32);
  v22 = a1[1];
  v47 = *a1;
  v48 = v22;
  v23 = v47;
  if (v49 == 1)
  {
    v24 = v48;
    v45 = v47;
    v46 = v48;
    sub_1D4159C10(&v47, v44);
  }

  else
  {
    sub_1D4159C10(&v47, v44);
    sub_1D4166A80();
    v25 = sub_1D41663A0();
    sub_1D4165D40();

    v26 = v40;
    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(&v47, &qword_1EC7C4AA0, &qword_1D4168698);
    (*(v41 + 8))(v26, v42);
    v23 = v45;
    v24 = v46;
  }

  sub_1D41666B0();
  v27 = sub_1D4166520();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_1D414911C(v17, v19, v21 & 1);

  v34 = sub_1D4166400();
  sub_1D4165DC0();
  v35 = v43;
  *v43 = v27;
  v35[1] = v29;
  *(v35 + 16) = v31 & 1;
  v35[3] = v33;
  *(v35 + 32) = v34;
  v35[5] = v36;
  v35[6] = v37;
  v35[7] = v38;
  v35[8] = v39;
  *(v35 + 72) = 0;
}

uint64_t sub_1D4158F38()
{
  v0 = objc_opt_self();
  v1 = sub_1D415A9EC([v0 mainBundle], &selRef_localizedInfoDictionary);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = sub_1D415A9EC([v0 mainBundle], &selRef_infoDictionary);
    if (!v2)
    {
      v17 = 0u;
      v18 = 0u;
      goto LABEL_10;
    }
  }

  result = *MEMORY[0x1E695E4F8];
  if (*MEMORY[0x1E695E4F8])
  {
    v4 = sub_1D4166910();
    v6 = v5;

    sub_1D4159508(v2, &v15, v4, v6);

    if (v16)
    {

      sub_1D4147280(&v15, &v17);
    }

    else
    {
      sub_1D4159508(v2, &v17, 0xD000000000000013, 0x80000001D416CB30);

      if (v16)
      {
        sub_1D4137AEC(&v15, &qword_1EC7C4B18, &qword_1D4168CB0);
      }
    }

LABEL_10:
    v7 = MEMORY[0x1E69E6158];
    if (*(&v18 + 1))
    {
      if (swift_dynamicCast())
      {
        v9 = *(&v15 + 1);
        v8 = v15;
LABEL_15:
        type metadata accessor for AppSwiftUIBridge();
        v10 = [v0 bundleForClass_];
        sub_1D4165BE0();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B20, &qword_1D4168830);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1D4168270;
        *(v11 + 56) = v7;
        *(v11 + 64) = sub_1D415AA60(v11, v12, v13);
        *(v11 + 32) = v8;
        *(v11 + 40) = v9;
        v14 = sub_1D4166920();

        return v14;
      }
    }

    else
    {
      sub_1D4137AEC(&v17, &qword_1EC7C4B18, &qword_1D4168CB0);
    }

    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id sub_1D41591F0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D41666E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_1D4166170();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v28 = *(a1 + 32);
  v12 = a1[1];
  v26 = *a1;
  v27 = v12;
  v13 = v26;
  if (v28 == 1)
  {
    v14 = *(&v26 + 1);
    v15 = v27;
    v24 = v26;
    v25 = v27;
    sub_1D4159C10(&v26, v23);
  }

  else
  {
    sub_1D4159C10(&v26, v23);
    sub_1D4166A80();
    v16 = sub_1D41663A0();
    sub_1D4165D40();

    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(&v26, &qword_1EC7C4AA0, &qword_1D4168698);
    (*(v9 + 8))(v11, v8);
    v14 = *(&v24 + 1);
    v13 = v24;
    v15 = v25;
  }

  sub_1D415A1EC();
  type metadata accessor for AppSwiftUIBridge();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  result = sub_1D416063C(0x74756374726F6853, 0xE900000000000073, v18, 0);
  if (result)
  {
    v20 = result;
    sub_1D41666C0();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v21 = sub_1D41666F0();

    result = (*(v5 + 8))(v7, v4);
  }

  else
  {
    v21 = 0;
  }

  *a2 = v21;
  return result;
}

double sub_1D4159508@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_1D415A74C(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_1D4152FF4(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D415956C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B30, &qword_1D4168838);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_1D4165C50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() mainBundle];
  v8 = sub_1D415A97C(v7);
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1D4166B30();

  v16 = 0xD000000000000019;
  v17 = 0x80000001D416CB50;
  MEMORY[0x1DA6D1C60](v10, v11);

  sub_1D4165C40();

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_1D4137AEC(v2, &qword_1EC7C4B30, &qword_1D4168838);
  }

  (*(v4 + 32))(v6, v2, v3);
  v13 = [objc_opt_self() sharedApplication];
  v14 = sub_1D4165C30();
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1D415AB2C(&qword_1EC7C4490, type metadata accessor for OpenExternalURLOptionsKey, &unk_1D41677E8);
  sub_1D41668B0();
  v15 = sub_1D4166890();

  [v13 openURL:v14 options:v15 completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

uint64_t View.shortcutsLinkStyle(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1D41665C0();
}

void *sub_1D41598EC(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1D415AAB4(x0_0, a2, a3);

  return sub_1D4166180();
}

double sub_1D4159934@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1D41598EC(a2, a3, a4);
  result = v8;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1D4159980(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  *&v11 = *a1;
  *(&v11 + 1) = v1;
  v12 = v2;
  v13 = v3;
  v4 = v11;
  v5 = v1;
  v6 = v2;
  return sub_1D415A284(&v11, v7, v8, v9);
}

void sub_1D41599DC(void *a1, void *a2, void *a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

unint64_t sub_1D4159A80()
{
  result = qword_1EC7C4A70;
  if (!qword_1EC7C4A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4A68, &qword_1D4168680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4A78, &qword_1D4168688);
    v3 = sub_1D41361D0(&qword_1EC7C4A80, &qword_1EC7C4A78, &qword_1D4168688, MEMORY[0x1E697D658]);
    sub_1D4159BBC(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    sub_1D41361D0(&qword_1ED9ACCD8, &qword_1EC7C4A88, &qword_1D4168690, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4A70);
  }

  return result;
}

unint64_t sub_1D4159BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED9ACA90;
  if (!qword_1ED9ACA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACA90);
  }

  return result;
}

uint64_t sub_1D4159C10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AA0, &qword_1D4168698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4159C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4165FF0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4159CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4165FF0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4159D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A40, &qword_1D4168658);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4159DB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D4159E34(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D4159E74(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D4159ECC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1D4159F0C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1D4159F64()
{
  result = qword_1EC7C4AD8;
  if (!qword_1EC7C4AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4AC8, &qword_1D41686C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4A58, &qword_1D4168670);
    sub_1D4165FB0();
    sub_1D41361D0(&qword_1EC7C4A90, &qword_1EC7C4A58, &qword_1D4168670, MEMORY[0x1E697D680]);
    sub_1D415AB2C(&qword_1EC7C4A98, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    sub_1D41361D0(&qword_1EC7C4AE0, &qword_1EC7C4AD0, &qword_1D41686C8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4AD8);
  }

  return result;
}

unint64_t sub_1D415A0EC()
{
  result = qword_1EC7C4B08;
  if (!qword_1EC7C4B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4AF8, &qword_1D4168818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4B08);
  }

  return result;
}

unint64_t sub_1D415A170()
{
  result = qword_1EC7C4B10;
  if (!qword_1EC7C4B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4B00, &unk_1D4168820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4B10);
  }

  return result;
}

unint64_t sub_1D415A1EC()
{
  result = qword_1ED9ACA20;
  if (!qword_1ED9ACA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9ACA20);
  }

  return result;
}

unint64_t sub_1D415A230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED9ACA40;
  if (!qword_1ED9ACA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACA40);
  }

  return result;
}

id sub_1D415A2D4()
{
  if (qword_1EC7C43E8 != -1)
  {
    swift_once();
  }

  v0 = *algn_1EC7C4988;
  v4 = qword_1EC7C4990;
  qword_1EC7C5F68 = qword_1EC7C4980;
  unk_1EC7C5F70 = *algn_1EC7C4988;
  qword_1EC7C5F78 = qword_1EC7C4990;
  qword_1EC7C5F80 = qword_1EC7C4998;
  v1 = qword_1EC7C4980;
  v2 = v0;

  return v4;
}

id sub_1D415A370@<X0>(void *a1@<X8>)
{
  if (qword_1EC7C4418 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC7C5F68;
  v3 = unk_1EC7C5F70;
  v4 = qword_1EC7C5F78;
  v9 = qword_1EC7C5F78;
  v5 = qword_1EC7C5F80;
  *a1 = qword_1EC7C5F68;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  v6 = v2;
  v7 = v3;

  return v9;
}

id sub_1D415A40C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  result = sub_1D415A58C(sub_1D415A45C, 0);
  qword_1EC7C5F88 = result;
  return result;
}

id sub_1D415A45C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = &selRef_blackColor;
  }

  else
  {
    v2 = off_1E8465B18[v1];
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

id sub_1D415A4CC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  result = sub_1D415A58C(sub_1D415A51C, 0);
  qword_1EC7C5F90 = result;
  return result;
}

id sub_1D415A51C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = &selRef_whiteColor;
  }

  else
  {
    v2 = off_1E8465B30[v1];
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

id sub_1D415A58C(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D415A630;
  v6[3] = &block_descriptor_0;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

id sub_1D415A630(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

unint64_t sub_1D415A698(uint64_t a1)
{
  sub_1D4166CD0();
  type metadata accessor for CFString(0);
  sub_1D415AB2C(&qword_1EC7C4B40, type metadata accessor for CFString, &unk_1D41678B8);
  sub_1D4165CC0();
  v2 = sub_1D4166CF0();

  return sub_1D415A7C4(a1, v2);
}

unint64_t sub_1D415A74C(uint64_t a1, uint64_t a2)
{
  sub_1D4166CD0();
  sub_1D4166950();
  v4 = sub_1D4166CF0();

  return sub_1D415A8C8(a1, a2, v4);
}

unint64_t sub_1D415A7C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_1D415AB2C(&qword_1EC7C4B40, type metadata accessor for CFString, &unk_1D41678B8);
    v8 = v7;
    v9 = sub_1D4165CB0();

    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D415A8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1D4166C20() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1D415A97C(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D4166910();

  return v3;
}

uint64_t sub_1D415A9EC(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1D41668A0();

  return v4;
}

unint64_t sub_1D415AA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C4B28;
  if (!qword_1EC7C4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4B28);
  }

  return result;
}

unint64_t sub_1D415AAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7C4B38;
  if (!qword_1EC7C4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4B38);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D415AB2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _ProjectedIntentParameter.requestConfirmation<A>(for:dialog:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18();
  v19 = _ProjectedIntentParameter.requestConfirmation<A>(for:dialog:view:)(a1, a2, v17, a5, a6, a7);
  (*(v13 + 8))(v17, a6);
  return v19;
}

uint64_t _ProjectedIntentParameter.requestConfirmation<A>(for:dialog:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v27 - v9;
  v11 = sub_1D41659A0();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  (*(v21 + 16))(v20 - v19, a3, a5);
  v22 = sub_1D4166800();
  v27[6] = MEMORY[0x1E6981910];
  v27[7] = sub_1D413B5AC(v22, v23, v24);
  v27[3] = v22;

  sub_1D4165990();
  (*(v13 + 16))(v10, v17, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v25 = sub_1D4165A70();

  sub_1D413B600(v10);
  (*(v13 + 8))(v17, v11);
  return v25;
}

uint64_t static AppManager.registerSwiftUIHooks()()
{
  if (qword_1ED9ACD78 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_1D415AEE8()
{
  OUTLINED_FUNCTION_6();
  sub_1D4166A20();
  *(v0 + 16) = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_6_6();
  sub_1D4166A00();
  OUTLINED_FUNCTION_9_6();
  v1 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEE6DFA0](v1);
}

uint64_t sub_1D415AF60()
{

  sub_1D415B340(sub_1D415AFFC, 0, sub_1D415DD54);
  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_1D415AFFC@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v20 = a3;
  v22 = sub_1D4165790();
  v19 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D4165630();
  v6 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D4165840();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B48, &qword_1D4168950);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  sub_1D41655B0();
  sub_1D41655D0();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4BA0, &qword_1D41689B0);
  type metadata accessor for CGRect(0);
  sub_1D41662C0();
  sub_1D4165770();
  sub_1D4165830();
  (*(v19 + 8))(v5, v22);
  (*(v6 + 8))(v8, v21);
  (*(v9 + 8))(v11, v18);
  v15 = sub_1D4165920();
  result = __swift_getEnumTagSinglePayload(v14, 1, v15);
  if (result != 1)
  {
    return (*(*(v15 - 8) + 32))(v17, v14, v15);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D415B340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D4166300();
  v5 = MEMORY[0x1E69E7CC0];
  sub_1D41662E0();
  sub_1D41662F0();

  if (v3)
  {
  }

  return v5;
}

uint64_t sub_1D415B3E4()
{
  OUTLINED_FUNCTION_6();
  sub_1D4166A20();
  *(v0 + 16) = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_6_6();
  sub_1D4166A00();
  OUTLINED_FUNCTION_9_6();
  v1 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEE6DFA0](v1);
}

uint64_t sub_1D415B45C()
{

  sub_1D415B340(sub_1D415B4F8, 0, sub_1D415DD34);
  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_1D415B4F8()
{
  v4 = sub_1D4165790();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1D4165600();
  sub_1D4165680();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B78, &qword_1D4168980);
  sub_1D4166860();
  swift_getObjectType();
  type metadata accessor for CGRect(0);
  sub_1D41662C0();
  sub_1D4165770();
  return sub_1D4165930();
}

uint64_t sub_1D415B644()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 64) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 32) = v4;
  sub_1D4166A20();
  *(v0 + 56) = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_6_6();
  sub_1D4166A00();
  OUTLINED_FUNCTION_9_6();
  v5 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1D415B6C8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v8 = *(v0 + 32);

  sub_1D4166300();
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  sub_1D41662E0();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1 & 1;
  *(v3 + 32) = v8;
  *(v3 + 48) = v0 + 16;
  sub_1D41662F0();

  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 8);

  return v6(v4, v5);
}

void *sub_1D415B7C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v41 = a3;
  v38 = a7;
  v42 = a5;
  v44 = a4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B78, &qword_1D4168980);
  v7 = *(v43 - 8);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B80, &qword_1D4168988);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v36 - v15;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B88, &qword_1D4168990);
  sub_1D41361D0(&qword_1EC7C4B90, &qword_1EC7C4B88, &qword_1D4168990, &unk_1D4168A08);
  result = sub_1D41662D0();
  v17 = v45;
  v18 = *(v45 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v45 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    while (v19 < *(v17 + 16))
    {
      sub_1D4147124(v20 + *(v7 + 72) * v19, v11, &qword_1EC7C4B78, &qword_1D4168980);
      if (v44)
      {
        v21 = sub_1D4165600();
        v22 = v42;
      }

      else
      {
        v21 = sub_1D4166860();
        v22 = v41;
      }

      if (v21 == v22)
      {

        v25 = v11;
        v24 = v40;
        sub_1D415DCB4(v25, v40);
        v23 = 0;
        goto LABEL_11;
      }

      ++v19;
      result = sub_1D4137AEC(v11, &qword_1EC7C4B78, &qword_1D4168980);
      if (v18 == v19)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v23 = 1;
    v24 = v40;
LABEL_11:
    v26 = v43;
    __swift_storeEnumTagSinglePayload(v24, v23, 1, v43);
    v27 = v39;
    sub_1D4147124(v24, v39, &qword_1EC7C4B80, &qword_1D4168988);
    if (__swift_getEnumTagSinglePayload(v27, 1, v26) == 1)
    {
      sub_1D4137AEC(v24, &qword_1EC7C4B80, &qword_1D4168988);
      return sub_1D4137AEC(v27, &qword_1EC7C4B80, &qword_1D4168988);
    }

    else
    {
      v28 = v27;
      v29 = v37;
      sub_1D415DCB4(v28, v37);
      v30 = sub_1D4165610();
      v32 = v31;
      sub_1D4137AEC(v29, &qword_1EC7C4B78, &qword_1D4168980);
      sub_1D4137AEC(v24, &qword_1EC7C4B80, &qword_1D4168988);
      v33 = v38;
      v34 = *v38;
      v35 = v38[1];
      *v38 = v30;
      v33[1] = v32;
      return sub_1D415DD24(v34, v35);
    }
  }

  return result;
}

uint64_t sub_1D415BB70()
{
  OUTLINED_FUNCTION_6();
  sub_1D4166A20();
  *(v0 + 16) = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_6_6();
  sub_1D4166A00();
  OUTLINED_FUNCTION_9_6();
  v1 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEE6DFA0](v1);
}

uint64_t sub_1D415BBE8()
{
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D415BC48()
{
  OUTLINED_FUNCTION_6();
  v0[3] = v1;
  v2 = sub_1D4165790();
  v0[4] = v2;
  OUTLINED_FUNCTION_24(v2);
  v0[5] = v3;
  v0[6] = OUTLINED_FUNCTION_19();
  v4 = sub_1D4165630();
  v0[7] = v4;
  OUTLINED_FUNCTION_24(v4);
  v0[8] = v5;
  v0[9] = OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B48, &qword_1D4168950);
  v0[10] = OUTLINED_FUNCTION_19();
  v6 = sub_1D4165920();
  v0[11] = v6;
  OUTLINED_FUNCTION_24(v6);
  v0[12] = v7;
  v0[13] = OUTLINED_FUNCTION_19();
  v8 = sub_1D4165840();
  v0[14] = v8;
  OUTLINED_FUNCTION_24(v8);
  v0[15] = v9;
  v0[16] = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6DFA0](sub_1D415BE08, 0, 0);
}

uint64_t sub_1D415BE08()
{
  sub_1D4165A50();
  sub_1D4165A30();
  OUTLINED_FUNCTION_6_6();

  sub_1D415C230(v1);
  v2 = sub_1D4165A40();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[15];
    v5 = *(v4 + 16);
    v4 += 16;
    v26 = v5;
    v6 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v24 = (v0[8] + 8);
    v25 = (v0[5] + 8);
    v7 = MEMORY[0x1E69E7CC0];
    v22 = *(v4 + 56);
    v23 = (v4 - 8);
    v20 = v0[12];
    v21 = (v20 + 32);
    do
    {
      v31 = v7;
      v32 = v3;
      v8 = v0[16];
      v9 = v0[14];
      v27 = v0[10];
      v10 = v0[9];
      v11 = v0[6];
      v12 = v0[7];
      v28 = v0[4];
      v29 = v0[11];
      v30 = v6;
      v26(v8);
      v0[2] = MEMORY[0x1E69E7CC0];
      sub_1D4138620(&qword_1EC7C4B50, 255, MEMORY[0x1E6959D88], MEMORY[0x1E6959DA0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B58, &qword_1D4168958);
      sub_1D41361D0(&qword_1EC7C4B60, &qword_1EC7C4B58, &qword_1D4168958, MEMORY[0x1E69E6328]);
      sub_1D4166B00();
      sub_1D4165780();
      sub_1D4165830();
      (*v25)(v11, v28);
      (*v24)(v10, v12);
      (*v23)(v8, v9);
      if (__swift_getEnumTagSinglePayload(v27, 1, v29) == 1)
      {
        sub_1D4137AEC(v0[10], &qword_1EC7C4B48, &qword_1D4168950);
        v7 = v31;
      }

      else
      {
        v13 = *v21;
        (*v21)(v0[13], v0[10], v0[11]);
        v7 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D415D578(0, *(v31 + 16) + 1, 1, v31, &qword_1EC7C4B68, &qword_1D4168960, MEMORY[0x1E695A3B0], MEMORY[0x1E695A3B0]);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_1D415D578((v14 > 1), v15 + 1, 1, v7, &qword_1EC7C4B68, &qword_1D4168960, MEMORY[0x1E695A3B0], MEMORY[0x1E695A3B0]);
        }

        v16 = v0[13];
        v17 = v0[11];
        *(v7 + 2) = v15 + 1;
        v13(&v7[((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15], v16, v17);
      }

      v6 = v30 + v22;
      v3 = v32 - 1;
    }

    while (v32 != 1);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_23();

  return v18(v7);
}

void *sub_1D415C230(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D415D77C(*(a1 + 16), 0);
  v4 = sub_1D415DB9C(&v6, v3 + 8, v2, a1);
  sub_1D415DC84(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D415C2D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D415E0E0;

  return sub_1D415AEE8();
}

uint64_t sub_1D415C35C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D415C3E8;

  return sub_1D415B3E4();
}

uint64_t sub_1D415C3E8()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_35();
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_23();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1D415C4D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D415C588;

  return sub_1D415B644();
}

uint64_t sub_1D415C588(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35();
  v6 = *v3;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t sub_1D415C68C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D415C718;

  return sub_1D415BB70();
}

uint64_t sub_1D415C718()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_35();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D415C7FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D415E0E0;

  return sub_1D415BC48();
}

uint64_t sub_1D415C8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1D415E0DC;

  return MEMORY[0x1EEDB2A38](a1, a2, a3, v11, a5);
}

uint64_t sub_1D415C9D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D415CA80;

  return sub_1D4156B98();
}

uint64_t sub_1D415CA80()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_35();
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  OUTLINED_FUNCTION_23();

  return v5(v2);
}

uint64_t sub_1D415CB74(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  a2();
  sub_1D41669F0();
  swift_getWitnessTable();
  return sub_1D41669D0();
}

uint64_t sub_1D415CBFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v7 = *(a1 + 16);
  v8 = *(*v5 + 16);
  result = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D415D8B8(result, 1, a2, a3, a4);
  v11 = *v5;
  if (!*(a1 + 16))
  {

    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = (*(v11 + 24) >> 1) - *(v11 + 16);
  result = a5(0);
  if (v12 < v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v7)
  {
LABEL_8:
    *v5 = v11;
    return result;
  }

  v13 = *(v11 + 16);
  v14 = __OFADD__(v13, v7);
  v15 = v13 + v7;
  if (!v14)
  {
    *(v11 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D415CD18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D415CB68(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1D415CD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = a2;
  v8 = a3;
  return sub_1D415CB74(a1, sub_1D415E0A4, &v5, v6);
}

uint64_t sub_1D415CD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for AppViewAnchor(0, a4, v9, v10);
  *(a5 + *(result + 28)) = a2;
  *(a5 + *(result + 32)) = a3;
  return result;
}

void *sub_1D415CE10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27[0] = a5;
  v34 = a3;
  v35 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4BA0, &qword_1D41689B0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v31 = v27 - v11;
  v30 = sub_1D4165920();
  v12 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v38 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4BA8, &qword_1D41689B8);
  swift_getObjectType();
  sub_1D41361D0(&qword_1EC7C4BB0, &qword_1EC7C4BA8, &qword_1D41689B8, &unk_1D4168A08);
  v32 = a1;
  v33 = a2;
  sub_1D41662D0();
  v14 = v40;
  v15 = *(v40 + 16);
  if (v15)
  {
    v39 = MEMORY[0x1E69E7CC0];
    result = sub_1D415D94C(0, v15, 0);
    v17 = 0;
    v37 = v39;
    v18 = *(v10 + 80);
    v28 = v12;
    v29 = v14 + ((v18 + 32) & ~v18);
    v27[1] = v12 + 32;
    while (v17 < *(v14 + 16))
    {
      v19 = v15;
      v20 = v31;
      sub_1D4147124(v29 + *(v10 + 72) * v17, v31, &qword_1EC7C4BA0, &qword_1D41689B0);
      v34(v20, v32, v33);
      if (v6)
      {
        sub_1D4137AEC(v20, &qword_1EC7C4BA0, &qword_1D41689B0);
      }

      v36 = 0;
      v21 = v14;
      sub_1D4137AEC(v20, &qword_1EC7C4BA0, &qword_1D41689B0);
      v22 = v37;
      v39 = v37;
      v24 = *(v37 + 16);
      v23 = *(v37 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D415D94C((v23 > 1), v24 + 1, 1);
        v22 = v39;
      }

      ++v17;
      *(v22 + 16) = v24 + 1;
      v25 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v37 = v22;
      result = (*(v28 + 32))(v22 + v25 + *(v28 + 72) * v24, v38, v30);
      v15 = v19;
      v14 = v21;
      v6 = v36;
      if (v19 == v17)
      {

        v26 = v37;
        return sub_1D415CBFC(v26, &qword_1EC7C4B68, &qword_1D4168960, MEMORY[0x1E695A3B0], MEMORY[0x1E695A3B0]);
      }
    }

    __break(1u);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
    return sub_1D415CBFC(v26, &qword_1EC7C4B68, &qword_1D4168960, MEMORY[0x1E695A3B0], MEMORY[0x1E695A3B0]);
  }

  return result;
}

void *sub_1D415D1C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27[0] = a5;
  v34 = a3;
  v35 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B78, &qword_1D4168980);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v31 = v27 - v11;
  v30 = sub_1D4165940();
  v12 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v38 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B88, &qword_1D4168990);
  swift_getObjectType();
  sub_1D41361D0(&qword_1EC7C4B90, &qword_1EC7C4B88, &qword_1D4168990, &unk_1D4168A08);
  v32 = a1;
  v33 = a2;
  sub_1D41662D0();
  v14 = v40;
  v15 = *(v40 + 16);
  if (v15)
  {
    v39 = MEMORY[0x1E69E7CC0];
    result = sub_1D415D994(0, v15, 0);
    v17 = 0;
    v37 = v39;
    v18 = *(v10 + 80);
    v28 = v12;
    v29 = v14 + ((v18 + 32) & ~v18);
    v27[1] = v12 + 32;
    while (v17 < *(v14 + 16))
    {
      v19 = v15;
      v20 = v31;
      sub_1D4147124(v29 + *(v10 + 72) * v17, v31, &qword_1EC7C4B78, &qword_1D4168980);
      v34(v20, v32, v33);
      if (v6)
      {
        sub_1D4137AEC(v20, &qword_1EC7C4B78, &qword_1D4168980);
      }

      v36 = 0;
      v21 = v14;
      sub_1D4137AEC(v20, &qword_1EC7C4B78, &qword_1D4168980);
      v22 = v37;
      v39 = v37;
      v24 = *(v37 + 16);
      v23 = *(v37 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D415D994((v23 > 1), v24 + 1, 1);
        v22 = v39;
      }

      ++v17;
      *(v22 + 16) = v24 + 1;
      v25 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v37 = v22;
      result = (*(v28 + 32))(v22 + v25 + *(v28 + 72) * v24, v38, v30);
      v15 = v19;
      v14 = v21;
      v6 = v36;
      if (v19 == v17)
      {

        v26 = v37;
        return sub_1D415CBFC(v26, &qword_1EC7C4B98, &qword_1D41689A0, MEMORY[0x1E695A3B8], MEMORY[0x1E695A3B8]);
      }
    }

    __break(1u);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
    return sub_1D415CBFC(v26, &qword_1EC7C4B98, &qword_1D41689A0, MEMORY[0x1E695A3B8], MEMORY[0x1E695A3B8]);
  }

  return result;
}

void *sub_1D415D578(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
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
  v15 = sub_1D415D688(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_1D415D7F8(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1D415D688(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_24(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D415D77C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B70, &qword_1D4168968);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 4);
  return v4;
}

void sub_1D415D7F8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_5(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_8_5();

    MEMORY[0x1EEE6BD00](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_8_5();

    MEMORY[0x1EEE6BCF8](v9);
  }
}

void *sub_1D415D8B8(int64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v11;
  if (!result || a1 > *(v11 + 24) >> 1)
  {
    if (*(v11 + 16) <= a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = *(v11 + 16);
    }

    result = sub_1D415D578(result, v13, a2 & 1, v11, a3, a4, a5, a5);
    *v5 = result;
  }

  return result;
}

void *sub_1D415D94C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D415D9DC(a1, a2, a3, *v3, &qword_1EC7C4B68, &qword_1D4168960, MEMORY[0x1E695A3B0], MEMORY[0x1E695A3B0]);
  *v3 = result;
  return result;
}

void *sub_1D415D994(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D415D9DC(a1, a2, a3, *v3, &qword_1EC7C4B98, &qword_1D41689A0, MEMORY[0x1E695A3B8], MEMORY[0x1E695A3B8]);
  *v3 = result;
  return result;
}

void *sub_1D415D9DC(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
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
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = a7(0);
  OUTLINED_FUNCTION_24(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v20) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_1D415D7F8(a4 + v24, v14, v21 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

void *sub_1D415DB9C(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
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
    v9 = 0;
    a3 = 0;
LABEL_18:
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
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 8) | (4 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D415DCB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B78, &qword_1D4168980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D415DD24(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D415DD74(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1D415DEC0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void View.linkIntent<A>(_:perform:)()
{
  OUTLINED_FUNCTION_39();
  v55 = v1;
  v56 = v0;
  v3 = v2;
  v61 = v5;
  v62 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v54 = sub_1D4165A20();
  v53 = OUTLINED_FUNCTION_4_4(qword_1ED9ACEA0);
  v52 = OUTLINED_FUNCTION_3_6(&qword_1ED9ACE98);
  v69 = v7;
  v70 = v54;
  v71 = v3;
  v72 = v53;
  v14 = v3;
  v73 = v52;
  OUTLINED_FUNCTION_6_0();
  v51 = v15;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_12_5();
  v49 = sub_1D4165F80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BC0, &unk_1D4168CD0);
  OUTLINED_FUNCTION_10_3();
  v16 = sub_1D4165F80();
  OUTLINED_FUNCTION_0();
  v57 = v17;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  OUTLINED_FUNCTION_10_3();
  v50 = sub_1D4165F80();
  OUTLINED_FUNCTION_0();
  v60 = v21;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v22);
  v48 = &v45 - v23;
  sub_1D4165620();
  OUTLINED_FUNCTION_0();
  v58 = v25;
  v59 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D415E598(v11, v9);
  v47 = v13;
  v28 = v55;
  v29 = v62;
  sub_1D41655F0();
  sub_1D415F4F8();
  v30 = swift_allocObject();
  v30[2] = v7;
  v30[3] = v29;
  v46 = v14;
  v30[4] = v14;
  v30[5] = v28;
  v30[6] = v13;
  v31 = v7;
  v69 = v7;
  v70 = v54;
  v71 = v14;
  v72 = v53;
  v73 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_8();
  v35 = sub_1D41361D0(v33, &qword_1EC7C4BB8, &unk_1D4168A80, v34);
  v67 = OpaqueTypeConformance2;
  v68 = v35;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_7();
  v39 = sub_1D41361D0(v37, &qword_1EC7C4BC0, &unk_1D4168CD0, v38);
  v65 = WitnessTable;
  v66 = v39;
  v40 = swift_getWitnessTable();
  v41 = v48;
  sub_1D4166690();

  (*(v57 + 8))(v20, v16);
  v42 = swift_allocObject();
  v43 = v62;
  v42[2] = v31;
  v42[3] = v43;
  v42[4] = v46;
  v42[5] = v28;
  v42[6] = v47;
  v63 = v40;
  v64 = MEMORY[0x1E69805D0];
  v44 = v50;
  swift_getWitnessTable();
  sub_1D41665D0();

  (*(v60 + 8))(v41, v44);
  (*(v58 + 8))(v27, v59);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D415E598(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D415E5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  sub_1D4165720();
  sub_1D4165700();
  a6(a1, a5);
}

void View.linkEntity<A>(_:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  (*(v9 + 16))(v0, v4, v2);
  OUTLINED_FUNCTION_13_4();
  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_28();
}

void View.representedAppEntity(_:)()
{
  OUTLINED_FUNCTION_39();
  v42 = v0;
  v43 = v1;
  v3 = v2;
  v36 = v2;
  v5 = v4;
  v7 = v6;
  v41 = sub_1D4165A20();
  v40 = OUTLINED_FUNCTION_4_4(qword_1ED9ACEA0);
  v48 = v5;
  v49 = v41;
  v50 = v3;
  v51 = v40;
  v52 = OUTLINED_FUNCTION_3_6(&qword_1ED9ACE98);
  OUTLINED_FUNCTION_6_0();
  v38 = v9;
  v39 = v8;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_12_5();
  v37 = sub_1D4165F80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BD0, &unk_1D4168A90);
  OUTLINED_FUNCTION_10_3();
  v10 = sub_1D4165F80();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v35 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = v7[3];
  v19 = __swift_project_boxed_opaque_existential_1(v7, v18);
  v20 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v35 - v24;
  (*(*(v18 - 8) + 16))(&v35 - v24, v19, v18);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v18);
  v26 = v36;
  _s7SwiftUI4ViewP012_AppIntents_aB0E011representedD6EntityyQrqd__Sg0dE00dG0Rd__lF_0();
  (*(v22 + 8))(v25, v20);
  (*(v12 + 16))(v35, v17, v10);
  v48 = v5;
  v49 = v41;
  v50 = v26;
  v51 = v40;
  v52 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_8();
  v30 = sub_1D41361D0(v28, &qword_1EC7C4BB8, &unk_1D4168A80, v29);
  v46 = OpaqueTypeConformance2;
  v47 = v30;
  OUTLINED_FUNCTION_10_8();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_7();
  v34 = sub_1D41361D0(v32, &qword_1EC7C4BD0, &unk_1D4168A90, v33);
  v44 = WitnessTable;
  v45 = v34;
  swift_getWitnessTable();
  *v43 = sub_1D4166800();
  (*(v12 + 8))(v17, v10);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D415EAAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(v5 + 80);
  v9 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 > v7)
  {
    v11 = v9 + ((v8 + 8) & ~v8);
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_8;
    }

    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= 0xFF)
      {
        if (v14 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v13 = *(a1 + v11);
        if (!*(a1 + v11))
        {
          goto LABEL_23;
        }

LABEL_15:
        v15 = (v13 - 1) << v12;
        if (v11 > 3)
        {
          v15 = 0;
        }

        if (v11)
        {
          if (v11 > 3)
          {
            LODWORD(v11) = 4;
          }

          switch(v11)
          {
            case 2:
              LODWORD(v11) = *a1;
              break;
            case 3:
              LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v11) = *a1;
              break;
            default:
              LODWORD(v11) = *a1;
              break;
          }
        }

        return v7 + (v11 | v15) + 1;
      }

      v13 = *(a1 + v11);
      if (*(a1 + v11))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v6 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v8 + 8) & ~v8, v6, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D415EC44(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 + 80);
  v12 = (v11 + 8) & ~v11;
  v13 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  v14 = v13 + v12;
  v15 = 8 * (v13 + v12);
  v16 = a3 >= v10;
  v17 = a3 - v10;
  if (v17 != 0 && v16)
  {
    if (v14 <= 3)
    {
      v18 = ((v17 + ~(-1 << v15)) >> v15) + 1;
      if (HIWORD(v18))
      {
        v6 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v6 = v19;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if (v9 >= 2)
          {
            v23 = &a1[v11 + 8] & ~v11;
            v24 = a2 + 1;

            __swift_storeEnumTagSinglePayload(v23, v24, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v10 + a2;
    if (v14 < 4)
    {
      v21 = (v20 >> v15) + 1;
      if (v14)
      {
        v22 = v20 & ~(-1 << v15);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v14 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v20;
      v21 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v14] = v21;
        break;
      case 2:
        *&a1[v14] = v21;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v14] = v21;
        break;
      default:
        return;
    }
  }
}

void sub_1D415EE80()
{
  OUTLINED_FUNCTION_39();
  v31 = v0;
  v2 = v1;
  v33 = v3;
  v34 = v4;
  v5 = *(v1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_9_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_5();
  v27[1] = sub_1D4166320();
  type metadata accessor for CGRect(255);
  v28 = *(v2 + 16);
  v29 = v8;
  v11 = type metadata accessor for AppViewAnchor(255, v28, v9, v10);
  type metadata accessor for AppViewPreferenceKey(255, v11, v12, v13);
  OUTLINED_FUNCTION_7_3();
  v27[2] = swift_getWitnessTable();
  v30 = sub_1D4166370();
  v14 = sub_1D4165F80();
  OUTLINED_FUNCTION_0();
  v32 = v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v27 - v20;
  sub_1D41667A0();
  (*(v5 + 16))(v7, v31, v2);
  v22 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v28;
  (*(v5 + 32))(v23 + v22, v7, v2);
  OUTLINED_FUNCTION_2_2();
  WitnessTable = swift_getWitnessTable();
  sub_1D4166640();

  OUTLINED_FUNCTION_5_5();
  v25 = swift_getWitnessTable();
  v35 = WitnessTable;
  v36 = v25;
  OUTLINED_FUNCTION_10();
  swift_getWitnessTable();
  sub_1D41605A4();
  v26 = *(v32 + 8);
  v26(v19, v14);
  sub_1D41605A4();
  v26(v21, v14);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D415F188(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v25[0] = a2;
  v25[1] = a1;
  v6 = type metadata accessor for AppViewAnchor(0, a4, a3, a4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v9 = sub_1D4166AD0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - v12;
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v25 - v18;
  v22 = type metadata accessor for AppViewModifier(0, a4, v20, v21);
  (*(v10 + 16))(v13, &a3[*(v22 + 28)], v9);
  if (__swift_getEnumTagSinglePayload(v13, 1, a4) == 1)
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v14 + 32))(v19, v13, a4);
  (*(v14 + 16))(v17, v19, a4);
  v24 = sub_1D4166850();
  sub_1D415CD8C(v17, v24, v25[0], a4, v8);
  sub_1D41669F0();

  sub_1D41669E0();
  return (*(v14 + 8))(v19, a4);
}

uint64_t sub_1D415F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(type metadata accessor for AppViewModifier(0, v7, a3, a4) - 8);
  v9 = (v4 + ((*(v8 + 80) + 24) & ~*(v8 + 80)));

  return sub_1D415F188(a1, a2, v9, v7);
}

void sub_1D415F4F8()
{
  OUTLINED_FUNCTION_39();
  v56 = v1;
  v57 = v2;
  v4 = v3;
  v58 = v5;
  v59 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C60, &qword_1D4168CC8);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v49 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4BC0, &unk_1D4168CD0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v49 - v13;
  v14 = sub_1D4165620();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = sub_1D4165A20();
  OUTLINED_FUNCTION_20_3();
  v23 = sub_1D413653C(v22, v0, MEMORY[0x1E695A4B0]);
  OUTLINED_FUNCTION_4_5();
  v26 = sub_1D413653C(v24, v0, v25);
  v62 = v6;
  v63 = v21;
  v64 = v4;
  v65 = v23;
  v66 = v26;
  OUTLINED_FUNCTION_6_0();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  v50 = sub_1D4165F80();
  OUTLINED_FUNCTION_0();
  v54 = v27;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v49 - v29;
  v31 = *(v16 + 16);
  v32 = v8;
  v31(v20, v8, v14);
  v33 = sub_1D4165A00();
  v62 = v33;
  v52 = v23;
  sub_1D4137BA4();
  v34 = v51;

  v31(v34, v32, v14);
  v35 = v53;
  OUTLINED_FUNCTION_18_0();
  v36 = v14;
  v37 = v55;
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v36);
  *v35 = 0;
  sub_1D41371A4(v34, v35 + *(v37 + 28), &qword_1EC7C4C60, &qword_1D4168CC8);
  if (qword_1ED9ACD78 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_1ED9ACD78);
  }

  sub_1D4137AEC(v34, &qword_1EC7C4C60, &qword_1D4168CC8);
  v62 = v58;
  v63 = v21;
  v64 = v59;
  v65 = v52;
  v66 = v26;
  OUTLINED_FUNCTION_18_3();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_8();
  v46 = sub_1D41361D0(v42, v43, v44, v45);
  v60 = OpaqueTypeConformance2;
  v61 = v46;
  OUTLINED_FUNCTION_10();
  v47 = v50;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1DA6D1980](v35, v47, v37, WitnessTable);
  sub_1D4137AEC(v35, &qword_1EC7C4BC0, &unk_1D4168CD0);
  (*(v54 + 8))(v30, v47);
  OUTLINED_FUNCTION_28();
}

void View.appEntityIdentifier<A>(forSelectionType:identifier:)()
{
  OUTLINED_FUNCTION_39();
  v21[2] = v0;
  v21[0] = v2;
  v21[1] = v1;
  v3 = sub_1D4165AF0();
  v4 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  OUTLINED_FUNCTION_2();
  v11 = v10;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;

  sub_1D4165AE0();
  (*(v11 + 16))(v9, v14, v3);
  OUTLINED_FUNCTION_18_0();
  v18 = __swift_storeEnumTagSinglePayload(v15, v16, v17, v3);
  OUTLINED_FUNCTION_22_2(v18, v19, v20);
  sub_1D4166660();
  (*(v6 + 8))(v9, v4);
  (*(v11 + 8))(v14, v3);
  OUTLINED_FUNCTION_28();
}

uint64_t View.appEntityUIElements(_:)(uint64_t a1, uint64_t a2)
{
  sub_1D4165640();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = (v6 - v5);
  *v7 = a1;
  v7[1] = a2;
  (*(v8 + 104))(v6 - v5, *MEMORY[0x1E6959DD0]);
  v9 = sub_1D4165650();
  OUTLINED_FUNCTION_35_2(v9);

  sub_1D4165660();
  sub_1D4165720();
  sub_1D4165700();
  type metadata accessor for DummyView();
  swift_allocObject();
  sub_1D413653C(&qword_1EC7C4BD8, type metadata accessor for DummyView, &unk_1D4168B20);
  OUTLINED_FUNCTION_17_4();
  sub_1D413653C(v10, type metadata accessor for DummyView, v11);
  v12 = sub_1D4165B10();
  OUTLINED_FUNCTION_35_2(v12);

  sub_1D4165B30();
  sub_1D4165710();

  v13 = sub_1D4165AB0();
  v14 = OUTLINED_FUNCTION_35_2(v13);

  OUTLINED_FUNCTION_31_2(v15, v16, v17, v18);
  OUTLINED_FUNCTION_6_7();
  sub_1D413653C(v19, v14, MEMORY[0x1E695A6A8]);
  OUTLINED_FUNCTION_3_7();
  sub_1D413653C(v20, v14, v21);
  sub_1D4137BA4();
}

uint64_t View.setEntityProvider<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  v29[3] = v13;
  v29[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v16 = *(v8 + 16);
  v16(boxed_opaque_existential_1, a1, a3);
  v17 = sub_1D4165AB0();
  OUTLINED_FUNCTION_35_2(v17);
  v22 = OUTLINED_FUNCTION_31_2(v18, v19, v20, v21);
  sub_1D4165720();
  sub_1D4165700();
  sub_1D4165B10();
  v16(v12, a1, a3);
  type metadata accessor for DummyView();
  swift_allocObject();
  sub_1D413653C(&qword_1EC7C4BD8, type metadata accessor for DummyView, &unk_1D4168B20);
  OUTLINED_FUNCTION_17_4();
  sub_1D413653C(v23, type metadata accessor for DummyView, v24);
  sub_1D4165B20();
  sub_1D4165710();

  v29[0] = v22;
  v25 = MEMORY[0x1E695A6B8];
  sub_1D413653C(&qword_1EC7C4BE8, MEMORY[0x1E695A6B8], MEMORY[0x1E695A6A8]);
  OUTLINED_FUNCTION_3_7();
  sub_1D413653C(v26, v25, v27);
  sub_1D4137BA4();
}

uint64_t sub_1D416009C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D4160214(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D4160434()
{
  result = qword_1ED9ACCB0;
  if (!qword_1ED9ACCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C18, &qword_1D4168C38);
    sub_1D4138A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACCB0);
  }

  return result;
}

unint64_t sub_1D41604C0()
{
  result = qword_1ED9ACCC8;
  if (!qword_1ED9ACCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C30, &qword_1D4168C50);
    sub_1D4138BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACCC8);
  }

  return result;
}

uint64_t sub_1D416054C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4166130();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_35_2(uint64_t a1)
{

  return swift_allocObject();
}

id sub_1D416063C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1D41668E0();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

id sub_1D41606C0()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemBackgroundColor];
  v2 = [v0 secondaryLabelColor];
  v3 = [v0 labelColor];
  v4 = [v0 tertiaryLabelColor];
  sub_1D415A1EC();
  type metadata accessor for AppSwiftUIBridge();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  result = sub_1D416063C(0x697269687053, 0xE600000000000000, v6, v7);
  qword_1ED9ACAA0 = v1;
  *algn_1ED9ACAA8 = v2;
  qword_1ED9ACAB0 = v3;
  unk_1ED9ACAB8 = v4;
  qword_1ED9ACAC0 = result;
  return result;
}

id static SiriTipViewStyle.automatic.getter()
{
  if (qword_1ED9ACA98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_7(&qword_1ED9ACAA0);
  v3 = v0;
  v4 = v1;
  v5 = v2;

  return v7;
}

id sub_1D416088C()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemBackgroundColor];
  v2 = objc_opt_self();
  v3 = [v2 traitCollectionWithUserInterfaceStyle_];
  v4 = [v1 resolvedColorWithTraitCollection_];

  v5 = [v0 secondaryLabelColor];
  v6 = [v2 traitCollectionWithUserInterfaceStyle_];
  v7 = [v5 resolvedColorWithTraitCollection_];

  v8 = [v0 labelColor];
  v9 = [v2 traitCollectionWithUserInterfaceStyle_];
  v10 = [v8 resolvedColorWithTraitCollection_];

  v11 = [v0 tertiaryLabelColor];
  v12 = [v2 traitCollectionWithUserInterfaceStyle_];
  v13 = [v11 resolvedColorWithTraitCollection_];

  sub_1D415A1EC();
  type metadata accessor for AppSwiftUIBridge();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  result = sub_1D416063C(0x697269687053, 0xE600000000000000, v15, [v2 traitCollectionWithUserInterfaceStyle_]);
  qword_1EC7C4C68 = v4;
  unk_1EC7C4C70 = v7;
  qword_1EC7C4C78 = v10;
  unk_1EC7C4C80 = v13;
  qword_1EC7C4C88 = result;
  return result;
}

id static SiriTipViewStyle.light.getter()
{
  if (qword_1EC7C4430 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_7(&qword_1EC7C4C68);
  v3 = v0;
  v4 = v1;
  v5 = v2;

  return v7;
}

id sub_1D4160B70()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemBackgroundColor];
  v2 = objc_opt_self();
  v3 = [v2 traitCollectionWithUserInterfaceStyle_];
  v4 = [v1 resolvedColorWithTraitCollection_];

  v5 = [v0 secondaryLabelColor];
  v6 = [v2 traitCollectionWithUserInterfaceStyle_];
  v7 = [v5 resolvedColorWithTraitCollection_];

  v8 = [v0 labelColor];
  v9 = [v2 traitCollectionWithUserInterfaceStyle_];
  v10 = [v8 resolvedColorWithTraitCollection_];

  v11 = [v0 tertiaryLabelColor];
  v12 = [v2 traitCollectionWithUserInterfaceStyle_];
  v13 = [v11 resolvedColorWithTraitCollection_];

  sub_1D415A1EC();
  type metadata accessor for AppSwiftUIBridge();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  result = sub_1D416063C(0x697269687053, 0xE600000000000000, v15, [v2 traitCollectionWithUserInterfaceStyle_]);
  qword_1EC7C4C90 = v4;
  *algn_1EC7C4C98 = v7;
  qword_1EC7C4CA0 = v10;
  unk_1EC7C4CA8 = v13;
  qword_1EC7C4CB0 = result;
  return result;
}

id static SiriTipViewStyle.dark.getter()
{
  if (qword_1EC7C4438 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_7(&qword_1EC7C4C90);
  v3 = v0;
  v4 = v1;
  v5 = v2;

  return v7;
}

uint64_t SiriTipView.init<A>(intent:isVisible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CB8, &qword_1D4168D18);
  sub_1D4166760();

  *(a7 + 72) = 0;
  *(a7 + 80) = 0;
  *(a7 + 88) = 0;
  v14 = *(a5 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  result = (*(v14 + 32))(v16 + v15, a1, a5);
  *(a7 + 96) = sub_1D4164030;
  *(a7 + 104) = v16;
  *(a7 + 48) = a2;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  return result;
}

uint64_t sub_1D4160FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D4165720();
  sub_1D4165700();
  v3 = sub_1D41656E0();

  return v3;
}

double SiriTipView.init(phrase:isVisible:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CB8, &qword_1D4168D18);
  sub_1D4166760();

  *a6 = KeyPath;
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (a2)
  {
    v14 = a2;
  }

  result = 0.0;
  *(a6 + 8) = 0u;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
  *(a6 + 72) = v13;
  *(a6 + 80) = v14;
  *(a6 + 96) = 0;
  *(a6 + 104) = 0;
  *(a6 + 88) = 0;
  return result;
}

uint64_t SiriTipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v109, v1, sizeof(v109));
  if (sub_1D4161C10())
  {
    v101 = a1;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CC8, &unk_1D4168D28);
    v100 = v88;
    OUTLINED_FUNCTION_0();
    v98 = v3;
    v5 = MEMORY[0x1EEE9AC00](v4);
    v97 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v96 = v88;
    MEMORY[0x1EEE9AC00](v5);
    v95 = v88 - v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4458, &qword_1D4167620);
    v94 = v88;
    v103 = v8;
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_13();
    MEMORY[0x1EEE9AC00](v9);
    v102 = v88 - v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CD0, &qword_1D4168D38);
    v93 = v88;
    OUTLINED_FUNCTION_13();
    MEMORY[0x1EEE9AC00](v11);
    v13 = v88 - v12;
    *v13 = sub_1D41661C0();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CE0, &qword_1D4168D48);
    sub_1D4161D64(__dst, &v13[*(v14 + 44)]);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CE8, &unk_1D4168D50);
    v92 = v88;
    v90 = v15;
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_13();
    MEMORY[0x1EEE9AC00](v16);
    v91 = (v88 - v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A40, &qword_1D4168658);
    v89 = v88;
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_13();
    MEMORY[0x1EEE9AC00](v19);
    v21 = v88 - v20;
    v22 = sub_1D4165FF0();
    v88[1] = v88;
    MEMORY[0x1EEE9AC00](v22 - 8);
    OUTLINED_FUNCTION_1();
    v25 = (v24 - v23);
    v27 = *(v26 + 28);
    v28 = *MEMORY[0x1E697F468];
    sub_1D4166290();
    OUTLINED_FUNCTION_5();
    (*(v29 + 104))(&v25[v27], v28);
    __asm { FMOV            V0.2D, #8.0 }

    *v25 = _Q0;
    *&v112[9] = *(&__dst[1] + 9);
    v111 = __dst[0];
    *v112 = __dst[1];
    if (BYTE8(__dst[2]) == 1)
    {
      v36 = *&v112[8];
      v35 = *&v112[16];
      v37 = *(&v111 + 1);
      v38 = *v112;
      v105 = v111;
      v106 = *v112;
      v107 = *&v112[8];
      v108 = *&v112[16];
      sub_1D4164C68(&v111, v109, &qword_1EC7C4CF0, &qword_1D4168D60);
    }

    else
    {
      sub_1D4164C68(&v111, v109, &qword_1EC7C4CF0, &qword_1D4168D60);
      sub_1D4166A80();
      v43 = sub_1D41663A0();
      sub_1D4165D40();

      v44 = sub_1D4166170();
      OUTLINED_FUNCTION_0();
      v46 = v45;
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_1();
      v50 = v49 - v48;
      sub_1D4166160();
      swift_getAtKeyPath();
      sub_1D4137AEC(&v111, &qword_1EC7C4CF0, &qword_1D4168D60);
      (*(v46 + 8))(v50, v44);
      v37 = *(&v105 + 1);
      v38 = v106;
      v36 = v107;
      v35 = v108;
    }

    v51 = sub_1D41666B0();
    sub_1D4159CE4(v25, v21);
    *&v21[*(v18 + 52)] = v51;
    *&v21[*(v18 + 56)] = 256;
    sub_1D4166840();
    sub_1D4166000();
    v52 = v91;
    sub_1D4164E44(v21, v91, &qword_1EC7C4A40, &qword_1D4168658);
    memcpy((v52 + *(v90 + 36)), v109, 0x70uLL);
    v53 = sub_1D4166840();
    v55 = v54;
    v56 = v102;
    v57 = v102 + *(v103 + 36);
    sub_1D4164E44(v52, v57, &qword_1EC7C4CE8, &unk_1D4168D50);
    v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CD8, &qword_1D4168D40) + 36));
    *v58 = v53;
    v58[1] = v55;
    sub_1D4164E44(v13, v56, &qword_1EC7C4CD0, &qword_1D4168D38);
    sub_1D4166A20();
    sub_1D4164150(__dst, &v105);
    v59 = sub_1D4166A10();
    v60 = swift_allocObject();
    v61 = MEMORY[0x1E69E85E0];
    v60[2] = v59;
    v60[3] = v61;
    memcpy(v60 + 4, __dst, 0x70uLL);
    v92 = sub_1D4166A50();
    v93 = v88;
    OUTLINED_FUNCTION_0();
    v63 = v62;
    v65 = *(v64 + 64);
    MEMORY[0x1EEE9AC00](v66);
    v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
    v68 = v88 - v67;
    sub_1D4166A30();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v90 = sub_1D4165F50();
      v91 = v88;
      OUTLINED_FUNCTION_0();
      v89 = v69;
      MEMORY[0x1EEE9AC00](v70);
      OUTLINED_FUNCTION_1();
      v73 = v72 - v71;
      *&v105 = 0;
      *(&v105 + 1) = 0xE000000000000000;
      sub_1D4166B30();

      *&v105 = 0xD000000000000032;
      *(&v105 + 1) = 0x80000001D416CC90;
      v104 = 156;
      v74 = sub_1D4166C00();
      MEMORY[0x1DA6D1C60](v74);

      MEMORY[0x1EEE9AC00](v75);
      v76 = v92;
      (*(v63 + 16))(v88 - v67, v68, v92);
      sub_1D4165F40();
      (*(v63 + 8))(v68, v76);
      v77 = v95;
      sub_1D4164E44(v102, v95, &qword_1EC7C4458, &qword_1D4167620);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4460, &qword_1D4167628);
      (v89[4])(v77 + *(v78 + 36), v73, v90);
    }

    else
    {
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4468, &qword_1D4167630);
      v77 = v95;
      v80 = (v95 + *(v79 + 36));
      v81 = sub_1D4165E50();
      (*(v63 + 32))(&v80[*(v81 + 20)], v88 - v67, v92);
      *v80 = &unk_1D4168D70;
      *(v80 + 1) = v60;
      sub_1D4164E44(v56, v77, &qword_1EC7C4458, &qword_1D4167620);
    }

    v83 = v97;
    v82 = v98;
    v84 = v99;
    (*(v98 + 32))(v97, v77, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CC0, &qword_1D4168D20);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_13();
    MEMORY[0x1EEE9AC00](v85);
    (*(v82 + 16))(v88 - v86, v83, v84);
    swift_storeEnumTagMultiPayload();
    v87 = sub_1D416406C();
    *&v105 = v103;
    *(&v105 + 1) = v87;
    OUTLINED_FUNCTION_3_8();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_10_10();
    sub_1D4166310();
    return (*(v82 + 8))(v83, v84);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CC0, &qword_1D4168D20);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_13();
    MEMORY[0x1EEE9AC00](v39);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CC8, &unk_1D4168D28);
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4458, &qword_1D4167620);
    v41 = sub_1D416406C();
    v109[0] = v40;
    v109[1] = v41;
    OUTLINED_FUNCTION_3_8();
    swift_getOpaqueTypeConformance2();
    return sub_1D4166310();
  }
}

BOOL sub_1D4161C10()
{
  v1 = v0;
  v3 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *(v0 + 64);
  v5 = *(v0 + 9);
  v6 = *(v0 + 10);
  v7 = *(v0 + 11);
  v13 = v0[6];
  if (v2)
  {
    *&v15 = *(v0 + 6);
    *(&v15 + 1) = v2;
    LOBYTE(v16) = v4 & 1;

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D70, &qword_1D4169010);
    MEMORY[0x1DA6D1B10](v14, v8);
    v9 = LOBYTE(v14[0]);

    if (v9 != 1)
    {
      return 0;
    }
  }

  v10 = v1[1];
  v15 = *v1;
  v16 = v10;
  v17 = v1[2];
  v18 = v3;
  v19 = v2;
  v20 = v4;
  *v21 = *(v1 + 65);
  *&v21[3] = *(v1 + 17);
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v13;
  sub_1D4163BA0();
  if (!v11)
  {
    return 0;
  }

  *&v15 = v5;
  *(&v15 + 1) = v6;
  *&v16 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D10, &qword_1D4168F40);
  sub_1D4166770();
  if (!v14[1])
  {
    return v13 != 0;
  }

  return 1;
}

uint64_t sub_1D4161D64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D20, &qword_1D4168F58);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D28, &qword_1D4168F60);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D30, &qword_1D4168F68);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D38, &qword_1D4168F70);
  v15 = v14 - 8;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  v47 = a1;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D40, &qword_1D4168F78);
  *&v48 = MEMORY[0x1E6981148];
  *(&v48 + 1) = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  sub_1D4166700();
  v48 = xmmword_1D4168CE0;
  v49 = 0x401C000000000000;
  v21 = sub_1D41361D0(&qword_1EC7C4330, &qword_1EC7C4D30, &qword_1D4168F68, MEMORY[0x1E697D658]);
  sub_1D4159BBC(v21, v22, v23);
  sub_1D41665A0();
  (*(v11 + 8))(v13, v10);
  *&v20[*(v15 + 44)] = 256;
  if (a1[7])
  {
    v24 = swift_allocObject();
    v25 = memcpy((v24 + 16), a1, 0x70uLL);
    MEMORY[0x1EEE9AC00](v25);
    *(&v42 - 2) = a1;
    sub_1D4164150(a1, &v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D50, &qword_1D4168F88);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4D58, &qword_1D4168F90);
    v27 = sub_1D4164CD4();
    *&v48 = v26;
    *(&v48 + 1) = v27;
    swift_getOpaqueTypeConformance2();
    v28 = v43;
    sub_1D41667D0();
    v29 = sub_1D4166400();
    sub_1D4165DC0();
    v30 = v44;
    v31 = v28 + *(v44 + 36);
    *v31 = v29;
    *(v31 + 8) = v32;
    *(v31 + 16) = v33;
    *(v31 + 24) = v34;
    *(v31 + 32) = v35;
    *(v31 + 40) = 0;
    sub_1D4164E44(v28, v9, &qword_1EC7C4D20, &qword_1D4168F58);
    v36 = 0;
    v37 = v30;
  }

  else
  {
    v36 = 1;
    v37 = v44;
  }

  __swift_storeEnumTagSinglePayload(v9, v36, 1, v37);
  sub_1D4164C68(v20, v18, &qword_1EC7C4D38, &qword_1D4168F70);
  sub_1D4164C68(v9, v7, &qword_1EC7C4D28, &qword_1D4168F60);
  v38 = v45;
  sub_1D4164C68(v18, v45, &qword_1EC7C4D38, &qword_1D4168F70);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D48, &qword_1D4168F80);
  v40 = v38 + *(v39 + 48);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_1D4164C68(v7, v38 + *(v39 + 64), &qword_1EC7C4D28, &qword_1D4168F60);
  sub_1D4137AEC(v9, &qword_1EC7C4D28, &qword_1D4168F60);
  sub_1D4137AEC(v20, &qword_1EC7C4D38, &qword_1D4168F70);
  sub_1D4137AEC(v7, &qword_1EC7C4D28, &qword_1D4168F60);
  return sub_1D4137AEC(v18, &qword_1EC7C4D38, &qword_1D4168F70);
}

uint64_t sub_1D4162308@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1D4165FD0();
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D78, &qword_1D4169018);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = sub_1D4165BB0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  sub_1D41627C0(v10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v43 = v3;
  v40 = v5;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4165BA0();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_1D4137AEC(v10, &qword_1EC7C4D78, &qword_1D4169018);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v16 = sub_1D4166550();
  v18 = v17;
  v20 = v19;
  sub_1D41664F0();
  v21 = sub_1D4166530();
  v23 = v22;
  v25 = v24;

  sub_1D414911C(v16, v18, v20 & 1);

  sub_1D41664B0();
  v26 = sub_1D4166510();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_1D414911C(v21, v23, v25 & 1);

  v44 = v26;
  v45 = v28;
  v46 = v30 & 1;
  v47 = v32;
  memcpy(__dst, v39, sizeof(__dst));
  v33 = v38;
  sub_1D41627C0(v38);
  LODWORD(v21) = __swift_getEnumTagSinglePayload(v33, 1, v11);
  sub_1D4137AEC(v33, &qword_1EC7C4D78, &qword_1D4169018);
  if (v21 == 1)
  {
    v34 = v40;
    sub_1D4165FC0();
    v35 = v43;
  }

  else
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1D4164F9C(&qword_1EC7C4358, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D80, &unk_1D4169020);
    sub_1D41361D0(&qword_1EC7C4320, &qword_1EC7C4D80, &unk_1D4169020, MEMORY[0x1E69E6328]);
    v34 = v40;
    v35 = v43;
    sub_1D4166B00();
  }

  sub_1D41666A0();
  (*(v41 + 8))(v34, v35);
  sub_1D414911C(v26, v28, v30 & 1);
}

uint64_t sub_1D41627C0@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4610, &qword_1D4167E78);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v66 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D88, &qword_1D4169030);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v58 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D90, &qword_1D4169038);
  MEMORY[0x1EEE9AC00](v69);
  v61 = &v58 - v6;
  v65 = sub_1D4166170();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D4165BB0();
  v68 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v72 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + 40);
  v91 = v13;
  v14 = *(v1 + 72);
  v15 = *(v1 + 80);
  v16 = *(v1 + 88);
  v78 = v14;
  v79 = v15;
  v80 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D10, &qword_1D4168F40);
  sub_1D4166770();
  v71 = v90;
  if (!v90)
  {
    goto LABEL_6;
  }

  v70 = v89;
  v59 = v9;
  v78 = v9;
  v79 = v10;
  v60 = v10;
  v62 = v11;
  v17 = v72;
  v80 = v11;
  v81 = v72;
  v82 = v12;
  v83 = v13;
  *v84 = *(v1 + 41);
  *&v84[15] = *(v1 + 56);
  v85 = v14;
  v86 = v15;
  v87 = v16;
  v88 = *(v1 + 96);
  v18 = sub_1D4163BA0();
  if (!v19)
  {

LABEL_6:
    v31 = 1;
    v33 = v74;
    v32 = v75;
    return __swift_storeEnumTagSinglePayload(v32, v31, 1, v33);
  }

  v21 = v12;
  v22 = v17;
  v78 = v18;
  v79 = v19;
  v89 = 16421;
  v90 = 0xE200000000000000;
  v23 = v71;
  v76 = v70;
  v77 = v71;
  sub_1D415A230(v18, v19, v20);
  sub_1D4166AE0();

  sub_1D4165BA0();
  v24 = v91;
  v25 = v59;
  v26 = v60;
  if (v91)
  {
    v78 = v59;
    v79 = v60;
    v27 = v62;
    v80 = v62;
    v81 = v22;
    v82 = v21;
    sub_1D4164EBC(v59, v60, v62, v22, v21, 1);
    v28 = v21;
    v29 = v22;
    v30 = v25;
  }

  else
  {
    v34 = v62;
    sub_1D4164EBC(v59, v60, v62, v22, v21, 0);
    sub_1D4166A80();
    v35 = sub_1D41663A0();
    sub_1D4165D40();

    v36 = v63;
    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4164188(v25, v26, v34, v22, v21, 0);
    (*(v64 + 8))(v36, v65);
    v30 = v78;
    v27 = v80;
    v29 = v81;
    v28 = v82;
  }

  v78 = sub_1D41666B0();
  v60 = sub_1D4164F48(v78, v37, v38);
  v39 = v73;
  sub_1D4165BC0();
  v78 = v70;
  v79 = v23;
  v40 = sub_1D4165CA0();
  v41 = v66;
  __swift_storeEnumTagSinglePayload(v66, 1, 1, v40);
  sub_1D4164F9C(&qword_1ED9ACAD8, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v42 = v67;
  v33 = v74;
  sub_1D4165C20();
  sub_1D4137AEC(v41, &qword_1EC7C4610, &qword_1D4167E78);

  if (__swift_getEnumTagSinglePayload(v42, 1, v69) == 1)
  {
    v43 = &qword_1EC7C4D88;
    v44 = &qword_1D4169030;
    v45 = v42;
  }

  else
  {
    v46 = v21;
    v47 = v61;
    sub_1D4164E44(v42, v61, &qword_1EC7C4D90, &qword_1D4169038);
    if (v24)
    {
      v78 = v25;
      v79 = v26;
      v48 = v72;
      v80 = v62;
      v81 = v72;
      v82 = v46;
      sub_1D4164EBC(v25, v26, v62, v72, v46, 1);
    }

    else
    {
      v49 = v62;
      v50 = v72;
      sub_1D4164EBC(v25, v26, v62, v72, v46, 0);
      sub_1D4166A80();
      v51 = v26;
      v52 = sub_1D41663A0();
      sub_1D4165D40();

      v53 = v63;
      sub_1D4166160();
      swift_getAtKeyPath();
      sub_1D4164188(v25, v51, v49, v50, v46, 0);
      (*(v64 + 8))(v53, v65);
      v25 = v78;
      v26 = v79;
      v48 = v81;
      v46 = v82;
    }

    v54 = sub_1D41666B0();
    sub_1D41361D0(&qword_1ED9ACA38, &qword_1EC7C4D90, &qword_1D4169038, MEMORY[0x1E69E66D8]);
    v55 = v73;
    v56 = sub_1D4165BD0();
    v89 = v54;
    sub_1D4165BF0();
    v56(&v78, 0);
    v45 = v47;
    v43 = &qword_1EC7C4D90;
    v44 = &qword_1D4169038;
    v39 = v55;
  }

  sub_1D4137AEC(v45, v43, v44);
  v32 = v75;
  (*(v68 + 32))(v75, v39, v33);
  v31 = 0;
  return __swift_storeEnumTagSinglePayload(v32, v31, 1, v33);
}

uint64_t sub_1D4163048@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D41666E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_1D4166170();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v27[9] = *(a1 + 25);
  v12 = a1[1];
  v26 = *a1;
  *v27 = v12;
  v13 = v26;
  if (v27[24] == 1)
  {
    v15 = *&v27[8];
    v14 = *&v27[16];
    v16 = *(&v26 + 1);
    v17 = *v27;
    v23 = v26;
    v24 = *v27;
    v25 = *&v27[8];
    sub_1D4164C68(&v26, v22, &qword_1EC7C4CF0, &qword_1D4168D60);
  }

  else
  {
    sub_1D4164C68(&v26, v22, &qword_1EC7C4CF0, &qword_1D4168D60);
    sub_1D4166A80();
    v18 = sub_1D41663A0();
    sub_1D4165D40();

    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(&v26, &qword_1EC7C4CF0, &qword_1D4168D60);
    (*(v9 + 8))(v11, v8);
    v16 = *(&v23 + 1);
    v13 = v23;
    v17 = v24;
    v14 = *(&v25 + 1);
    v15 = v25;
  }

  if (!v14)
  {
    [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  sub_1D41666C0();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v19 = sub_1D41666F0();

  result = (*(v5 + 8))(v7, v4);
  *a2 = v19;
  return result;
}

uint64_t sub_1D4163338(uint64_t result)
{
  if (*(result + 56))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D70, &qword_1D4169010);
    sub_1D4166820();
  }

  return result;
}

uint64_t sub_1D41633C8(__int128 *a1)
{
  v2 = sub_1D4166170();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D41666D0();
  *&v24[9] = *(a1 + 25);
  v7 = a1[1];
  v23 = *a1;
  *v24 = v7;
  v8 = v23;
  if (v24[24] == 1)
  {
    v9 = *&v24[16];
    v10 = *(&v23 + 1);
    v11 = *v24;
    v20 = v23;
    v21 = *v24;
    v22 = *&v24[8];
    sub_1D4164C68(&v23, v19, &qword_1EC7C4CF0, &qword_1D4168D60);
  }

  else
  {
    sub_1D4164C68(&v23, v19, &qword_1EC7C4CF0, &qword_1D4168D60);
    sub_1D4166A80();
    v12 = sub_1D41663A0();
    sub_1D4165D40();

    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(&v23, &qword_1EC7C4CF0, &qword_1D4168D60);
    (*(v3 + 8))(v5, v2);
    v10 = *(&v20 + 1);
    v8 = v20;
    v11 = v21;
    v9 = *(&v22 + 1);
  }

  v13 = sub_1D41666B0();
  KeyPath = swift_getKeyPath();
  v15 = sub_1D41664F0();
  v16 = swift_getKeyPath();
  v19[0] = v6;
  v19[1] = KeyPath;
  v19[2] = v13;
  v19[3] = v16;
  v19[4] = v15;
  sub_1D41664B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D58, &qword_1D4168F90);
  sub_1D4164CD4();
  sub_1D4166590();
}

uint64_t sub_1D4163660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a3;
  v4 = sub_1D4166B70();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  sub_1D4166A20();
  v3[24] = sub_1D4166A10();
  v6 = sub_1D4166A00();
  v3[25] = v6;
  v3[26] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D4163754, v6, v5);
}

uint64_t sub_1D4163754()
{
  v1 = *(v0 + 160);
  *(v0 + 80) = *(v1 + 72);
  v2 = *(v1 + 88);
  *(v0 + 216) = v2;
  *(v0 + 16) = *(v1 + 72);
  *(v0 + 32) = v2;
  *(v0 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D10, &qword_1D4168F40);
  sub_1D4166770();
  if (*(v0 + 104))
  {

LABEL_3:

    OUTLINED_FUNCTION_17();

    return v3();
  }

  v5 = *(v0 + 160);
  v6 = *(v5 + 96);
  *(v0 + 232) = v6;
  *(v0 + 240) = *(v5 + 104);
  if (!v6)
  {

    goto LABEL_3;
  }

  sub_1D4166C60();
  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_1D41638DC;

  return sub_1D41647C4(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D41638DC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = OUTLINED_FUNCTION_10_10();
    v5(v4);
    v6 = *(v2 + 200);
    v7 = *(v2 + 208);
    v8 = sub_1D4165044;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_10_10();
    v10(v9);
    v6 = *(v2 + 200);
    v7 = *(v2 + 208);
    v8 = sub_1D4163A60;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1D4163A60()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);

  v5 = v2(v4);
  v6 = *(v0 + 80);
  *(v0 + 64) = v6;
  *(v0 + 144) = v3;
  *(v0 + 40) = v6;
  *(v0 + 56) = v3;
  *(v0 + 112) = v5;
  *(v0 + 120) = v7;
  sub_1D4164C68(v0 + 64, v0 + 128, &qword_1EC7C4CB8, &qword_1D4168D18);
  sub_1D4164C68(v0 + 144, v0 + 152, &qword_1EC7C4D18, &qword_1D4168F50);
  sub_1D4166780();
  sub_1D415DD24(v2, v1);
  sub_1D4137AEC(v0 + 64, &qword_1EC7C4CB8, &qword_1D4168D18);
  sub_1D4137AEC(v0 + 144, &qword_1EC7C4D18, &qword_1D4168F50);

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_1D4163BA0()
{
  sub_1D4165720();
  sub_1D4165700();
  v0 = sub_1D41656F0();
  v2 = v1;

  if (v2)
  {
    type metadata accessor for AppSwiftUIBridge();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = objc_opt_self();
    v5 = [v4 bundleForClass_];
    v6 = [v5 localizations];
    if (!v6)
    {
      sub_1D41669B0();
      v6 = sub_1D41669A0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D98, &qword_1D4169040);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D4168270;
    *(v7 + 32) = v0;
    *(v7 + 40) = v2;
    v8 = sub_1D41669A0();

    v9 = [v4 preferredLocalizationsFromArray:v6 forPreferences:v8];

    v10 = sub_1D41669B0();
    if (*(v10 + 16))
    {
      v11 = *(v10 + 40);
    }

    else
    {
      v11 = 0;
    }

    v17 = sub_1D41668E0();
    v18 = sub_1D41668E0();
    if (v11)
    {
      v19 = sub_1D41668E0();
    }

    else
    {
      v19 = 0;
    }

    v20 = [v5 localizedStringForKey:v17 value:v18 table:0 localization:v19];

    v16 = sub_1D4166910();
  }

  else
  {
    if (qword_1ED9ACCE0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D4165D70();
    __swift_project_value_buffer(v12, qword_1ED9AD488);
    v13 = sub_1D4165D50();
    v14 = sub_1D4166A70();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D4134000, v13, v14, "Siri language unavailable, hiding tip", v15, 2u);
      MEMORY[0x1DA6D2650](v15, -1, -1);
    }

    return 0;
  }

  return v16;
}

uint64_t View.siriTipViewStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1D41665C0();
}

void *sub_1D4163F38(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1D4164FE4(x0_0, a2, a3);

  return sub_1D4166180();
}

double sub_1D4163F80@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1D4163F38(a2, a3, a4);
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_1D4163FC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v15[0] = *a1;
  v15[1] = v1;
  v15[2] = v2;
  v15[3] = v3;
  v15[4] = v4;
  v5 = v4;
  v6 = v15[0];
  v7 = v1;
  v8 = v2;
  v9 = v3;
  return sub_1D4164628(v15, v10, v11, v12, v13);
}

unint64_t sub_1D416406C()
{
  result = qword_1EC7C4360;
  if (!qword_1EC7C4360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4458, &qword_1D4167620);
    sub_1D41361D0(&qword_1EC7C4328, &qword_1EC7C4CD0, &qword_1D4168D38, MEMORY[0x1E69817F8]);
    sub_1D41361D0(&qword_1ED9ACA60, &qword_1EC7C4CD8, &qword_1D4168D40, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4360);
  }

  return result;
}

void sub_1D4164188(void *a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

uint64_t sub_1D41641FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D41642A0;

  return sub_1D4163660(v2, v3, v0 + 32);
}

uint64_t sub_1D41642A0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D41643B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D41643F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_SSSgIegho_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D4164490(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
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

uint64_t sub_1D41644E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_1D4164560()
{
  result = qword_1EC7C4350;
  if (!qword_1EC7C4350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4CF8, &qword_1D4168F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4458, &qword_1D4167620);
    sub_1D416406C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4350);
  }

  return result;
}

id sub_1D4164670()
{
  if (qword_1ED9ACA98 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9ACAA0;
  v1 = *algn_1ED9ACAA8;
  v2 = qword_1ED9ACAB0;
  v8 = unk_1ED9ACAB8;
  qword_1ED9AD460 = qword_1ED9ACAA0;
  *algn_1ED9AD468 = *algn_1ED9ACAA8;
  qword_1ED9AD470 = qword_1ED9ACAB0;
  unk_1ED9AD478 = unk_1ED9ACAB8;
  qword_1ED9AD480 = qword_1ED9ACAC0;
  v3 = qword_1ED9ACAC0;
  v4 = v0;
  v5 = v1;
  v6 = v2;

  return v8;
}

id sub_1D416471C@<X0>(void *a1@<X8>)
{
  if (qword_1ED9ACAD0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED9AD460;
  v3 = *algn_1ED9AD468;
  v5 = qword_1ED9AD470;
  v4 = unk_1ED9AD478;
  v12 = unk_1ED9AD478;
  v6 = qword_1ED9AD480;
  *a1 = qword_1ED9AD460;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v6;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  v10 = v5;

  return v12;
}

uint64_t sub_1D41647C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D4166B60();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D41648C4, 0, 0);
}

uint64_t sub_1D41648C4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D4166B70();
  v5 = sub_1D4164F9C(&qword_1EC7C4310, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D4166C40();
  sub_1D4164F9C(&qword_1EC7C4318, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D4166B80();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D4164A54;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D4164A54()
{
  v2 = *(*v1 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v7;
  *(v7 + 120) = v0;

  v4 = OUTLINED_FUNCTION_10_10();
  v2(v4);
  if (!v0)
  {

    OUTLINED_FUNCTION_17();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1D4164C00, 0, 0);
}

uint64_t sub_1D4164C00()
{

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1D4164C68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_33(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_11_8();
  v6(v5);
  return v4;
}

unint64_t sub_1D4164CD4()
{
  result = qword_1ED9ACA68;
  if (!qword_1ED9ACA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4D58, &qword_1D4168F90);
    sub_1D4164D8C();
    sub_1D41361D0(qword_1ED9ACF30, &qword_1EC7C4C40, &qword_1D4168C68, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACA68);
  }

  return result;
}

unint64_t sub_1D4164D8C()
{
  result = qword_1ED9ACA70;
  if (!qword_1ED9ACA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4D60, &qword_1D4168F98);
    sub_1D41361D0(&qword_1ED9ACA50, &qword_1EC7C4D68, &unk_1D4168FA0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACA70);
  }

  return result;
}

uint64_t sub_1D4164E44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_33(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_11_8();
  v6(v5);
  return v4;
}

id sub_1D4164EBC(void *a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  if (a6)
  {
    v9 = a5;
    v10 = a1;
    v11 = a2;
    v12 = a3;

    return a4;
  }

  else
  {
  }
}

unint64_t sub_1D4164F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED9ACAE0;
  if (!qword_1ED9ACAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACAE0);
  }

  return result;
}

uint64_t sub_1D4164F9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D4164FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED9ACAC8;
  if (!qword_1ED9ACAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACAC8);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_1EC7C4DB8 == -1)
  {
    if (qword_1EC7C4DC0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EC7C4DC0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EC7C4DB0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EC7C4DA4 > a3)
      {
        return 1;
      }

      if (dword_1EC7C4DA4 >= a3)
      {
        return dword_1EC7C4DA8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EC7C4DC0;
  if (qword_1EC7C4DC0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EC7C4DC0 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1DA6D2110](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EC7C4DA4, &dword_1EC7C4DA8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}