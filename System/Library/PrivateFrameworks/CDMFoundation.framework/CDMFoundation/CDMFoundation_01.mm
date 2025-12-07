uint64_t sub_1DC2A6184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1DC2A61CC()
{
  v2 = sub_1DC517BEC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  sub_1DC517BCC();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v7 = sub_1DC5173CC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_1();
  v8 = OBJC_IVAR___CDMDeviceStateLogger_queue;
  sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
  sub_1DC5173BC();
  v13 = 0;
  OUTLINED_FUNCTION_4_33();
  sub_1DC2A6184(v9, v10, MEMORY[0x1E69E8048]);
  sub_1DC5183DC();
  (*(v4 + 104))(v1, *MEMORY[0x1E69E8098], v2);
  *&v0[v8] = sub_1DC517C1C();
  *&v0[OBJC_IVAR___CDMDeviceStateLogger_memoryPressureSource] = 0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for DeviceStateLogger();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1)
{

  return sub_1DC5176CC();
}

uint64_t OUTLINED_FUNCTION_21_4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = (a3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000) + 23;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_21_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_13(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1DC2A65E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC51670C();
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v6 = sub_1DC511FFC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v16 = OUTLINED_FUNCTION_30();
  sub_1DC2A6784(v16, v17);
  sub_1DC5166FC();
  sub_1DC2A67DC();
  OUTLINED_FUNCTION_30();
  sub_1DC51677C();
  if (!v2)
  {
    (*(v8 + 16))(v12, v15, v6);
    a2 = sub_1DC2A72B0(v12);
    (*(v8 + 8))(v15, v6);
  }

  return a2;
}

uint64_t sub_1DC2A6784(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_1DC2A67DC()
{
  result = qword_1ECC7BDB8;
  if (!qword_1ECC7BDB8)
  {
    sub_1DC511FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BDB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return sub_1DC28F358(va1, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_50_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DC517E5C();
}

uint64_t OUTLINED_FUNCTION_50_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_50_10(uint64_t a1)
{

  return sub_1DC28EB30(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_50_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *sub_1DC2A6974(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), void (*a8)(void))
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
  v15 = sub_1DC2AC408(v14, v13, a5, a6, a7);
  a8(0);
  OUTLINED_FUNCTION_24();
  if (v11)
  {
    sub_1DC2AB394(a4 + v16, v14, v15 + v16, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void sub_1DC2A6A80()
{
  v2 = v1;
  OUTLINED_FUNCTION_38_2();
  v3 = sub_1DC5122FC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v56 = v7;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = sub_1DC511FBC();
  v13 = v12;
  v14 = sub_1DC511F5C();
  v15 = *(v14 + 16);
  if (v15)
  {
    v46 = v11;
    v47 = v13;
    v48 = v0;
    v58 = MEMORY[0x1E69E7CC0];
    v49 = v15;
    sub_1DC2DAC98(0, v15, 0);
    v16 = 0;
    OUTLINED_FUNCTION_24();
    v17 = v58;
    v53 = v14 + v18;
    v51 = v5;
    v52 = v5 + 16;
    v54 = v5 + 8;
    v55 = v14;
    v50 = v10;
    while (v16 < *(v14 + 16))
    {
      v19 = *(v5 + 16);
      v19(v10, v53 + *(v5 + 72) * v16, v3);
      v20 = v56;
      v19(v56, v10, v3);
      sub_1DC2DCA34(v20, v21, v22, v23, v24, v25, v26, v27, v46, v47);
      if (v2)
      {

        sub_1DC51208C();
        OUTLINED_FUNCTION_0_2();
        (*(v42 + 8))(v48);
        v43 = OUTLINED_FUNCTION_59();
        v44(v43, v3);

        return;
      }

      v31 = v28;
      v32 = v29;
      v33 = v30;
      v57 = 0;
      v34 = OUTLINED_FUNCTION_59();
      v35 = v3;
      v36(v34, v3);
      v58 = v17;
      v38 = *(v17 + 16);
      v37 = *(v17 + 24);
      if (v38 >= v37 >> 1)
      {
        v40 = OUTLINED_FUNCTION_26(v37);
        sub_1DC2DAC98(v40, v38 + 1, 1);
        v17 = v58;
      }

      ++v16;
      *(v17 + 16) = v38 + 1;
      v39 = (v17 + 24 * v38);
      v39[4] = v31;
      v39[5] = v32;
      v39[6] = v33;
      v3 = v35;
      v10 = v50;
      v5 = v51;
      v2 = v57;
      v14 = v55;
      if (v49 == v16)
      {
        sub_1DC51208C();
        OUTLINED_FUNCTION_0_2();
        (*(v45 + 8))(v48);

        return;
      }
    }

    __break(1u);
  }

  else
  {

    sub_1DC51208C();
    OUTLINED_FUNCTION_0_2();
    (*(v41 + 8))(v0);
  }
}

void *sub_1DC2A6D98(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
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
    v19 = MEMORY[0x1E69E7CC0];
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
    sub_1DC2D502C(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void sub_1DC2A6F60()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_52(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v7(0);
  OUTLINED_FUNCTION_24();
  if (v10)
  {
    sub_1DC3FE7DC(v8 + v24, v14, v21 + v24, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC2A710C()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = OUTLINED_FUNCTION_384();
  v17 = v7(v16);
  OUTLINED_FUNCTION_52(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_24;
  }

  v22[2] = v14;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_19:
  v7(0);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_24();
  if (v10)
  {
    sub_1DC43EF94(v8 + v25, v14, v22 + v25, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2A72B0(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7CC0];
  sub_1DC2A731C();
  sub_1DC511FFC();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(a1);
  return v4;
}

void sub_1DC2A731C()
{
  OUTLINED_FUNCTION_33();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0C0, &unk_1DC5229F0);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v58 - v3;
  type metadata accessor for NLRouterOverride(0);
  OUTLINED_FUNCTION_0();
  v60 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v62 = v7 - v8;
  OUTLINED_FUNCTION_22();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v59 = v13;
  OUTLINED_FUNCTION_12();
  v74 = sub_1DC511FDC();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v66 = v17 - v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v58 - v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  v61 = v0;
  v24 = *(*v0 + 16);
  v25 = sub_1DC511FEC();
  v26 = 0;
  v73 = *(v25 + 16);
  v63 = MEMORY[0x1E69E7CC0];
  v72 = v15;
  *&v27 = 136315394;
  v64 = v27;
  v69 = v15 + 16;
  v70 = v25;
  v67 = v12;
  v68 = (v15 + 8);
  v65 = v23;
LABEL_2:
  v28 = v74;
  while (1)
  {
    if (v73 == v26)
    {

      sub_1DC2AD5B0(v63);
      OUTLINED_FUNCTION_34();
      return;
    }

    if (v26 >= *(v25 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_22_0();
    v32 = *(v31 + 72);
    v76 = v33;
    v34 = *(v31 + 16);
    v34(v23, v29 + v30 + v32 * v33, v28);
    v35 = v71;
    v34(v71, v23, v28);
    sub_1DC2A793C(v35, v24, v36, v37, v38, v39, v40, v41, v58, v59);
    v42 = __OFADD__(v24, 1);
    v43 = v24 + 1;
    if (v42)
    {
      goto LABEL_16;
    }

    v75 = v43;
    OUTLINED_FUNCTION_7_3();
    sub_1DC2A94B0(v12, v4);
    OUTLINED_FUNCTION_18_3();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    (*v68)(v23, v28);
    OUTLINED_FUNCTION_5_3(v4);
    if (!v48)
    {
      v49 = v59;
      sub_1DC2A94B0(v4, v59);
      sub_1DC2A94B0(v49, v62);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v63 = sub_1DC2DF3B0(0, v63[2] + 1, 1, v63);
      }

      v52 = v63[2];
      v51 = v63[3];
      if (v52 >= v51 >> 1)
      {
        v57 = OUTLINED_FUNCTION_26(v51);
        v63 = sub_1DC2DF3B0(v57, v52 + 1, 1, v63);
      }

      v63[2] = v52 + 1;
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_7_3();
      v54 = v53;
      sub_1DC2A94B0(v55, v56);
      v26 = v54;
      v25 = v70;
      goto LABEL_2;
    }

    sub_1DC2AAF50(v4, &qword_1ECC7C0C0, &unk_1DC5229F0);
    v24 = v75;
    v26 = v76 + 1;
    v25 = v70;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1DC2A793C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_1();
  v102 = v10;
  v98 = v11;
  v13 = v12;
  v15 = v14;
  sub_1DC5165FC();
  OUTLINED_FUNCTION_0();
  v95 = v17;
  v96 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v94 = v19 - v18;
  OUTLINED_FUNCTION_12();
  v97 = sub_1DC51223C();
  OUTLINED_FUNCTION_0();
  v104 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v103 = v23 - v22;
  OUTLINED_FUNCTION_12();
  v24 = sub_1DC5122BC();
  v25 = OUTLINED_FUNCTION_10(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v28 = (v27 - v26);
  v29 = type metadata accessor for NLRouterOverrideRoute(0);
  v30 = OUTLINED_FUNCTION_10(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v34);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v87 - v36;
  v38 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_1();
  v44 = (v43 - v42);
  sub_1DC511FBC();
  sub_1DC510B0C();
  v45 = v38;

  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
    v46 = sub_1DC2AAF50(v37, &unk_1ECC7CA30, &qword_1DC522A00);
    v49 = sub_1DC2D2774(v46, v47, v48);
    OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v49);
    *v50 = 0xD000000000000016;
    *(v50 + 8) = 0x80000001DC53D2C0;
    *(v50 + 16) = 0;
    swift_willThrow();
    sub_1DC511FDC();
    OUTLINED_FUNCTION_0_2();
    (*(v51 + 8))(v13);
LABEL_7:
    OUTLINED_FUNCTION_26_0();
    return;
  }

  (*(v40 + 4))(v44, v37, v38);
  (*(v40 + 2))(v15, v44, v38);
  v52 = sub_1DC511F9C();
  v53 = type metadata accessor for NLRouterOverride(0);
  v15[v53[5]] = v52 & 1;
  v15[v53[6]] = sub_1DC511FAC() & 1;
  v15[v53[7]] = sub_1DC511F8C() & 1;
  v15[v53[8]] = sub_1DC511F4C() & 1;
  sub_1DC511FCC();
  v54 = v102;
  sub_1DC2A80D8();
  v55 = v54;
  if (v54)
  {
    sub_1DC511FDC();
    OUTLINED_FUNCTION_0_2();
    (*(v56 + 8))(v13);
    OUTLINED_FUNCTION_33_3();
    v28(v44, v45);
    goto LABEL_5;
  }

  v92 = v44;
  v93 = 0;
  sub_1DC2A94B0(v33, &v15[v53[10]]);
  v28 = *(sub_1DC511F5C() + 16);

  if (!v28)
  {
    v28 = 0x80000001DC53D2E0;
    v76 = sub_1DC2D2774(v59, v60, v61);
    OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v76);
    *v77 = 0xD000000000000015;
    *(v77 + 8) = 0x80000001DC53D2E0;
    *(v77 + 16) = 0;
    swift_willThrow();
    sub_1DC511FDC();
    OUTLINED_FUNCTION_0_2();
    (*(v78 + 8))(v13);
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x80000001DC53D2E0](v92, v45);
    v55 = v93;
LABEL_5:
    v28(v15, v45);
    if (!v55)
    {
      OUTLINED_FUNCTION_2_8();
      sub_1DC2DFCF4(&v15[v57], v58);
    }

    goto LABEL_7;
  }

  v90 = v45;
  v91 = v13;
  v62 = sub_1DC511F5C();
  if (!*(v62 + 16))
  {

    v67 = MEMORY[0x1E69E7CC0];
LABEL_20:
    *&v15[v53[9]] = v67;
    v82 = v91;
    if (sub_1DC511F7C())
    {
      v83 = v94;
      sub_1DC511F6C();
      sub_1DC5165EC();
      sub_1DC511FDC();
      OUTLINED_FUNCTION_0_2();
      (*(v84 + 8))(v82);
      (*(v95 + 8))(v83, v96);
    }

    else
    {
      sub_1DC510A4C();
      sub_1DC511FDC();
      OUTLINED_FUNCTION_0_2();
      (*(v85 + 8))(v82, v86);
    }

    (*(v40 + 1))(v92, v90);
    *&v15[v53[12]] = v98;
    goto LABEL_7;
  }

  v88 = v53;
  v89 = v15;
  v63 = OUTLINED_FUNCTION_36_2(MEMORY[0x1E69E7CC0]);
  v99 = v64;
  sub_1DC2A9508(v63, v64, 0);
  v65 = 0;
  OUTLINED_FUNCTION_22_0();
  v102 = v62 + v66;
  v67 = a10;
  v100 = v68 + 8;
  v101 = v68 + 16;
  v69 = v93;
  v70 = v97;
  while (v65 < *(v62 + 16))
  {
    v71 = v103;
    (*(v104 + 16))(v103, v102 + *(v104 + 72) * v65, v70);
    sub_1DC2A9660(v105);
    if (v69)
    {

      sub_1DC511FDC();
      OUTLINED_FUNCTION_0_2();
      (*(v79 + 8))(v91);
      OUTLINED_FUNCTION_55_3();
      v80(v71, v70);
      OUTLINED_FUNCTION_33_3();
      v81 = v90;
      v28(v92, v90);
      v45 = v81;

      v15 = v89;
      v55 = v93;
      goto LABEL_5;
    }

    v28 = v40;
    OUTLINED_FUNCTION_55_3();
    v72(v71, v70);
    v74 = *(a10 + 16);
    v73 = *(a10 + 24);
    if (v74 >= v73 >> 1)
    {
      v75 = OUTLINED_FUNCTION_26(v73);
      sub_1DC2A9508(v75, v74 + 1, 1);
    }

    ++v65;
    *(a10 + 16) = v74 + 1;
    sub_1DC28F9B0(v105, a10 + 40 * v74 + 32);
    v40 = v28;
    if (v99 == v65)
    {

      v93 = 0;
      v15 = v89;
      v53 = v88;
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_1DC2A80D8()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v58 = v3;
  v4 = sub_1DC51348C();
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  sub_1DC5122AC();
  OUTLINED_FUNCTION_0();
  v57[1] = v7;
  v57[2] = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0C8, &qword_1DC522A08);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v57 - v10;
  v12 = sub_1DC51227C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v57 - v17;
  sub_1DC51228C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1DC2AAF50(v11, &qword_1ECC7C0C8, &qword_1DC522A08);
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1DC517F4C();
    MEMORY[0x1E1296160](0xD000000000000014, 0x80000001DC53D300);
    MEMORY[0x1E1296160](0xD000000000000015, 0x80000001DC5229F0);
    v19 = MEMORY[0x1E1296160](0xD00000000000003ALL, 0x80000001DC53D320);
    v22 = sub_1DC2D2774(v19, v20, v21);
    v23 = OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v22);
    OUTLINED_FUNCTION_62_5(v23, v24);
    sub_1DC5122BC();
    OUTLINED_FUNCTION_0_2();
    (*(v25 + 8))(v2);
  }

  else
  {
    (*(v14 + 32))(v18, v11, v12);
    v26 = OUTLINED_FUNCTION_56();
    v27(v26);
    v28 = OUTLINED_FUNCTION_50_0();
    v30 = v29(v28);
    if (v30 == *MEMORY[0x1E69D0D10])
    {
      sub_1DC5122BC();
      OUTLINED_FUNCTION_0_2();
      (*(v31 + 8))(v2);
      v32 = *(v14 + 8);
      v33 = OUTLINED_FUNCTION_16();
      v32(v33);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0D0, &qword_1DC522A28);
      __swift_storeEnumTagSinglePayload(v58, 1, 1, v34);
      v35 = OUTLINED_FUNCTION_50_0();
      v32(v35);
    }

    else if (v30 == *MEMORY[0x1E69D0D18])
    {
      v36 = OUTLINED_FUNCTION_50_0();
      v37(v36);
      v38 = OUTLINED_FUNCTION_51();
      v39(v38);
      sub_1DC51229C();
      v40 = v58;
      NLRoutingDecisionMessage.RoutingDecision.init(protobuf:)();
      sub_1DC5122BC();
      OUTLINED_FUNCTION_0_2();
      (*(v41 + 8))(v2);
      v42 = OUTLINED_FUNCTION_51();
      v43(v42);
      v44 = OUTLINED_FUNCTION_16();
      v45(v44);
      if (!v0)
      {
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0D0, &qword_1DC522A28);
        __swift_storeEnumTagSinglePayload(v40, 0, 1, v56);
      }
    }

    else
    {
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1DC517F4C();
      MEMORY[0x1E1296160](0x206E776F6E6B6E55, 0xEE002065756C6176);
      MEMORY[0x1E1296160](0xD000000000000030, 0x80000001DC53D360);
      MEMORY[0x1E1296160](46, 0xE100000000000000);
      v46 = sub_1DC517FEC();
      v49 = sub_1DC2D2774(v46, v47, v48);
      v50 = OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v49);
      OUTLINED_FUNCTION_62_5(v50, v51);
      sub_1DC5122BC();
      OUTLINED_FUNCTION_0_2();
      (*(v52 + 8))(v2);
      v53 = *(v14 + 8);
      v54 = OUTLINED_FUNCTION_16();
      v53(v54);
      v55 = OUTLINED_FUNCTION_50_0();
      v53(v55);
    }
  }

  OUTLINED_FUNCTION_26_0();
}

void NLRoutingDecisionMessage.RoutingDecision.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_1();
  v144 = v2;
  v145 = v0;
  v4 = v3;
  v5 = sub_1DC51313C();
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v131 = v7;
  OUTLINED_FUNCTION_12();
  sub_1DC5133DC();
  OUTLINED_FUNCTION_0();
  v133 = v9;
  v134 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v132 = v10;
  OUTLINED_FUNCTION_12();
  v141 = sub_1DC51329C();
  OUTLINED_FUNCTION_0();
  v143 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v139 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v140 = v127 - v16;
  OUTLINED_FUNCTION_12();
  v138 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v142 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  v148 = v19;
  OUTLINED_FUNCTION_12();
  sub_1DC51333C();
  OUTLINED_FUNCTION_0();
  v136 = v21;
  v137 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v135 = v22;
  OUTLINED_FUNCTION_12();
  v23 = sub_1DC5132DC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEE0, &qword_1DC522310);
  OUTLINED_FUNCTION_10(v25);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v127 - v27;
  v29 = sub_1DC51334C();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_42_3();
  sub_1DC51340C();
  OUTLINED_FUNCTION_39(v28, 1, v29);
  if (v37)
  {
    v38 = sub_1DC2AAF50(v28, &qword_1ECC7BEE0, &qword_1DC522310);
    v41 = sub_1DC2D2774(v38, v39, v40);
    OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v41);
    OUTLINED_FUNCTION_21_4(v42, 50);
    sub_1DC51348C();
    OUTLINED_FUNCTION_0_2();
    (*(v43 + 8))(v4);
LABEL_9:
    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_26_0();
    return;
  }

  v130 = v4;
  (*(v31 + 32))(v1, v28, v29);
  (*(v31 + 16))(v35, v1, v29);
  v44 = OUTLINED_FUNCTION_30();
  v46 = v45(v44);
  v47 = v29;
  if (v46 == *MEMORY[0x1E69D0F48])
  {
    sub_1DC51348C();
    OUTLINED_FUNCTION_0_2();
    (*(v48 + 8))(v130);
    v49 = OUTLINED_FUNCTION_53_0();
    v4(v49);
    v50 = MEMORY[0x1E69D02D8];
LABEL_6:
    v51 = *v50;
    sub_1DC5157EC();
    OUTLINED_FUNCTION_35();
    (*(v52 + 104))(v144, v51);
    v53 = OUTLINED_FUNCTION_30();
    v4(v53);
    goto LABEL_9;
  }

  if (v46 == *MEMORY[0x1E69D0F40])
  {
    v54 = OUTLINED_FUNCTION_20_5();
    v55(v54);
    v56 = OUTLINED_FUNCTION_9_0();
    v57(v56, v35, v23);
    v58 = sub_1DC5132AC();
    sub_1DC51348C();
    OUTLINED_FUNCTION_0_2();
    (*(v59 + 8))(v130);
    v60 = OUTLINED_FUNCTION_25_1();
    v61(v60, v23);
    (*(v31 + 8))(v1, v29);
    v62 = v144;
    *v144 = v58;
    v63 = *MEMORY[0x1E69D02D0];
    sub_1DC5157EC();
    OUTLINED_FUNCTION_35();
    (*(v64 + 104))(v62, v63);
    goto LABEL_9;
  }

  if (v46 == *MEMORY[0x1E69D0F60])
  {
    sub_1DC51348C();
    OUTLINED_FUNCTION_0_2();
    (*(v65 + 8))(v130);
    v66 = OUTLINED_FUNCTION_53_0();
    v4(v66);
    v50 = MEMORY[0x1E69D02F8];
    goto LABEL_6;
  }

  v67 = v145;
  if (v46 != *MEMORY[0x1E69D0F38])
  {
    if (v46 == *MEMORY[0x1E69D0F50])
    {
      v128 = v1;
      v86 = OUTLINED_FUNCTION_20_5();
      v87(v86);
      v88 = OUTLINED_FUNCTION_9_0();
      v89 = v35;
      v90 = v134;
      v91(v88, v89, v134);
      sub_1DC5133AC();
      v92 = v144;
      AjaxMetadata.init(protobuf:)();
      v93 = v130;
      sub_1DC51348C();
      OUTLINED_FUNCTION_0_2();
      (*(v94 + 8))(v93);
      v95 = OUTLINED_FUNCTION_25_1();
      v96(v95, v90);
      (*(v31 + 8))(v128, v29);
      if (!v67)
      {
        v125 = *MEMORY[0x1E69D02E0];
        sub_1DC5157EC();
        OUTLINED_FUNCTION_35();
        (*(v126 + 104))(v92, v125);
      }
    }

    else
    {
      v97 = v130;
      if (v46 == *MEMORY[0x1E69D0F58])
      {
        sub_1DC51348C();
        OUTLINED_FUNCTION_0_2();
        (*(v98 + 8))(v97);
        v99 = *(v31 + 8);
        v99(v1, v47);
        v100 = *MEMORY[0x1E69D02F0];
        sub_1DC5157EC();
        OUTLINED_FUNCTION_35();
        (*(v101 + 104))(v144, v100);
        v102 = OUTLINED_FUNCTION_30();
        (v99)(v102);
      }

      else
      {
        v146 = 0;
        v147 = 0xE000000000000000;
        sub_1DC517F4C();
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_31_1();
        MEMORY[0x1E1296160](0xD000000000000032);
        OUTLINED_FUNCTION_38_5();
        v113 = v1;
        v114 = v47;
        v115 = sub_1DC517FEC();
        v116 = v146;
        v117 = v147;
        v120 = sub_1DC2D2774(v115, v118, v119);
        v121 = OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v120);
        *v122 = v116;
        v122[1] = v117;
        OUTLINED_FUNCTION_35_2(v121, v122);
        sub_1DC51348C();
        OUTLINED_FUNCTION_0_2();
        (*(v123 + 8))(v97);
        v124 = *(v31 + 8);
        v124(v113, v114);
        v124(v35, v114);
      }
    }

    goto LABEL_9;
  }

  v128 = v1;
  v68 = OUTLINED_FUNCTION_20_5();
  v69(v68);
  v70 = v135;
  v71 = v136;
  v72 = v137;
  (*(v136 + 32))(v135, v35, v137);
  v73 = sub_1DC5132AC();
  v74 = *(v73 + 16);
  if (!v74)
  {

    sub_1DC51348C();
    OUTLINED_FUNCTION_0_2();
    (*(v103 + 8))(v130);
    (*(v71 + 8))(v70, v72);
    (*(v31 + 8))(v128, v47);
    v134 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v110 = v144;
    *v144 = v134;
    v111 = *MEMORY[0x1E69D02C8];
    sub_1DC5157EC();
    OUTLINED_FUNCTION_35();
    (*(v112 + 104))(v110, v111);
    goto LABEL_9;
  }

  v127[2] = v47;
  v127[1] = v31;
  v146 = MEMORY[0x1E69E7CC0];
  sub_1DC2AA348(0, v74, 0);
  v75 = 0;
  OUTLINED_FUNCTION_22_0();
  v132 = v73 + v76;
  v131 = v77 + 16;
  v133 = (v77 + 8);
  v134 = v146;
  v129 = v142 + 32;
  while (v75 < *(v73 + 16))
  {
    v78 = *(v143 + 16);
    v79 = v140;
    v80 = v141;
    v78(v140, v132 + *(v143 + 72) * v75, v141);
    v78(v139, v79, v80);
    NLRoutingDecisionMessage.QueryRewrite.init(protobuf:)();
    if (v67)
    {

      sub_1DC51348C();
      OUTLINED_FUNCTION_0_2();
      (*(v104 + 8))(v130);
      (*v133)(v79, v80);
      (*(v136 + 8))(v135, v137);
      v105 = OUTLINED_FUNCTION_56_5();
      v106(v105);

      goto LABEL_9;
    }

    (*v133)(v79, v80);
    v146 = v134;
    v82 = *(v134 + 16);
    v81 = *(v134 + 24);
    if (v82 >= v81 >> 1)
    {
      sub_1DC2AA348((v81 > 1), v82 + 1, 1);
      v134 = v146;
    }

    ++v75;
    *(v134 + 16) = v82 + 1;
    OUTLINED_FUNCTION_22_0();
    (*(v85 + 32))(v84 + v83 + *(v85 + 72) * v82, v148, v138);
    v67 = 0;
    if (v74 == v75)
    {

      sub_1DC51348C();
      OUTLINED_FUNCTION_0_2();
      (*(v107 + 8))(v130);
      (*(v136 + 8))(v135, v137);
      v108 = OUTLINED_FUNCTION_56_5();
      v109(v108);
      goto LABEL_28;
    }
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_48_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1DC2BE044(a1, v3);
}

id OUTLINED_FUNCTION_48_5(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_48_7(uint64_t a1, float a2)
{
  *v2 = a2;

  return sub_1DC515D7C();
}

uint64_t OUTLINED_FUNCTION_48_8(uint64_t a1, uint64_t a2)
{

  return sub_1DC5180AC();
}

uint64_t sub_1DC2A9458()
{
  v2 = OUTLINED_FUNCTION_5_1();
  v3(v2);
  OUTLINED_FUNCTION_35();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1DC2A94B0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

void *sub_1DC2A9508(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC2A9528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC2A9528(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C048, &unk_1DC522820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C050, qword_1DC522870);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC2A9660@<X0>(uint64_t *a1@<X8>)
{
  sub_1DC51220C();
  OUTLINED_FUNCTION_0();
  v88 = v6;
  v89 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v86 = v7;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v87 = v9;
  OUTLINED_FUNCTION_12();
  v10 = sub_1DC51208C();
  OUTLINED_FUNCTION_0();
  v90 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_56_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFB0, &unk_1DC522530);
  OUTLINED_FUNCTION_10(v17);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40();
  v19 = sub_1DC51205C();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v85 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_55_2();
  sub_1DC5121EC();
  v26 = v19;
  if (__swift_getEnumTagSinglePayload(v1, 1, v19) == 1)
  {
    v27 = sub_1DC2AAF50(v1, &qword_1ECC7BFB0, &unk_1DC522530);
    sub_1DC2D2774(v27, v28, v29);
    swift_allocError();
    *v30 = xmmword_1DC522510;
    *(v30 + 16) = 0;
    return swift_willThrow();
  }

  (*(v21 + 32))(v4, v1, v19);
  v32 = v19;
  v33 = *(v21 + 16);
  v33(v3, v4, v32);
  v34 = OUTLINED_FUNCTION_32_1();
  v36 = v35(v34);
  if (v36 == *MEMORY[0x1E69D0CB8])
  {
    OUTLINED_FUNCTION_21_5();
    v37 = OUTLINED_FUNCTION_32_1();
    v38(v37);
    sub_1DC51222C();
    OUTLINED_FUNCTION_81(&off_1F57F59B0);
    OUTLINED_FUNCTION_7_1();
    (*(v39 + 32))();
    return (*(v21 + 8))(v4, v26);
  }

  if (v36 == *MEMORY[0x1E69D0C50])
  {
    OUTLINED_FUNCTION_21_5();
    v40 = OUTLINED_FUNCTION_32_1();
    v41(v40);
    (*(v90 + 32))(v2, v3, v10);
    (*(v90 + 16))(v15, v2, v10);
    sub_1DC2A6A80();
    if (!v92)
    {
      a1[3] = &type metadata for UtteranceRegexWrapper;
      a1[4] = &off_1F57F59C0;
      *a1 = v42;
      a1[1] = v43;
      a1[2] = v44;
    }

    (*(v90 + 8))(v2, v10);
    return (*(v21 + 8))(v4, v26);
  }

  if (v36 == *MEMORY[0x1E69D0C88])
  {
    OUTLINED_FUNCTION_21_5();
    v45 = OUTLINED_FUNCTION_32_1();
    v46(v45);
    sub_1DC51216C();
    OUTLINED_FUNCTION_81(&off_1F57F59D0);
    OUTLINED_FUNCTION_7_1();
    v48 = *(v47 + 32);
LABEL_27:
    v48();
    return (*(v21 + 8))(v4, v26);
  }

  if (v36 == *MEMORY[0x1E69D0CA0])
  {
    v49 = OUTLINED_FUNCTION_10_3();
    v50(v49);
    sub_1DC5121BC();
    v51 = &off_1F57F59E0;
LABEL_26:
    OUTLINED_FUNCTION_81(v51);
    OUTLINED_FUNCTION_7_1();
    v48 = *(v64 + 32);
    goto LABEL_27;
  }

  if (v36 == *MEMORY[0x1E69D0C48])
  {
    v52 = OUTLINED_FUNCTION_10_3();
    v53(v52);
    sub_1DC51204C();
    v51 = &off_1F57F59F0;
    goto LABEL_26;
  }

  if (v36 == *MEMORY[0x1E69D0C90])
  {
    v54 = OUTLINED_FUNCTION_10_3();
    v55(v54);
    sub_1DC51202C();
    v51 = &off_1F57F5A00;
    goto LABEL_26;
  }

  if (v36 == *MEMORY[0x1E69D0C60])
  {
    v56 = OUTLINED_FUNCTION_10_3();
    v57(v56);
    sub_1DC5120CC();
    v51 = &off_1F57F5A10;
    goto LABEL_26;
  }

  if (v36 == *MEMORY[0x1E69D0C78])
  {
    v58 = OUTLINED_FUNCTION_10_3();
    v59(v58);
    sub_1DC51214C();
    v51 = &off_1F57F5A20;
    goto LABEL_26;
  }

  if (v36 == *MEMORY[0x1E69D0C58])
  {
    v60 = OUTLINED_FUNCTION_10_3();
    v61(v60);
    sub_1DC5120BC();
    v51 = &off_1F57F5A30;
    goto LABEL_26;
  }

  if (v36 == *MEMORY[0x1E69D0C80])
  {
    v62 = OUTLINED_FUNCTION_10_3();
    v63(v62);
    sub_1DC51200C();
    v51 = &off_1F57F5A40;
    goto LABEL_26;
  }

  if (v36 == *MEMORY[0x1E69D0CB0])
  {
    v65 = OUTLINED_FUNCTION_10_3();
    v66(v65);
    v67 = OUTLINED_FUNCTION_47_0();
    v68(v67);
    (*(v88 + 16))(v86, v87, v89);
    sub_1DC2AC14C();
    if (!v92)
    {
      a1[3] = &type metadata for MatchRuleExcludingWrapper;
      a1[4] = &off_1F57F5A70;
      *a1 = v69;
    }

    (*(v88 + 8))(v87, v89);
    return (*(v21 + 8))(v4, v26);
  }

  if (v36 == *MEMORY[0x1E69D0CA8])
  {
    v70 = OUTLINED_FUNCTION_10_3();
    v71(v70);
    sub_1DC5121DC();
    v51 = &off_1F57F5A50;
    goto LABEL_26;
  }

  if (v36 == *MEMORY[0x1E69D0C70])
  {
    v72 = OUTLINED_FUNCTION_10_3();
    v73(v72);
    sub_1DC5120AC();
    v51 = &off_1F57F5A60;
    goto LABEL_26;
  }

  if (v36 == *MEMORY[0x1E69D0C68])
  {
    OUTLINED_FUNCTION_21_5();
    v74(v3, v26);
    sub_1DC51213C();
    v75 = &off_1F57F5A80;
LABEL_40:
    OUTLINED_FUNCTION_81(v75);
    OUTLINED_FUNCTION_7_1();
    (*(v77 + 32))();
    return (*(v21 + 8))(v4, v26);
  }

  if (v36 == *MEMORY[0x1E69D0C98])
  {
    OUTLINED_FUNCTION_21_5();
    v76(v3, v26);
    sub_1DC51219C();
    v75 = &off_1F57F5AC0;
    goto LABEL_40;
  }

  sub_1DC517F4C();

  v33(v85, v4, v26);
  v78 = sub_1DC51777C();
  MEMORY[0x1E1296160](v78);

  sub_1DC2D2774(v79, v80, v81);
  swift_allocError();
  *v82 = 0xD000000000000010;
  *(v82 + 8) = 0x80000001DC53D170;
  *(v82 + 16) = 2;
  swift_willThrow();
  v83 = *(v21 + 8);
  v83(v4, v26);
  v84 = OUTLINED_FUNCTION_47_0();
  return (v83)(v84);
}

uint64_t OUTLINED_FUNCTION_79_1()
{

  return sub_1DC2DB2AC();
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return sub_1DC5179EC();
}

uint64_t OUTLINED_FUNCTION_79_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_79_7()
{
}

void OUTLINED_FUNCTION_79_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_1DC2AA134(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_38_2();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_50();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[9]) = (a2 - 1);
      return;
    }

    type metadata accessor for NLRouterOverrideRoute(0);
    OUTLINED_FUNCTION_50();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      v10 = sub_1DC510AFC();
      v14 = a4[11];
    }

    v11 = v4 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1DC2AA24C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_38_2();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_50();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_54(*(v3 + a3[9]));
    }

    type metadata accessor for NLRouterOverrideRoute(0);
    OUTLINED_FUNCTION_50();
    if (*(v12 + 84) == a2)
    {
      v8 = v11;
      v13 = a3[10];
    }

    else
    {
      v8 = sub_1DC510AFC();
      v13 = a3[11];
    }

    v9 = v3 + v13;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void *sub_1DC2AA348(void *a1, int64_t a2, char a3)
{
  result = sub_1DC2A6D98(a1, a2, a3, *v3, &qword_1ECC7BFA8, &unk_1DC5224D0, MEMORY[0x1E69D0348], MEMORY[0x1E69D0348]);
  *v3 = result;
  return result;
}

void NLRoutingDecisionMessage.QueryRewrite.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_1();
  v103 = v0;
  v4 = v3;
  v106 = v5;
  v6 = sub_1DC5135BC();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v94 = v8;
  OUTLINED_FUNCTION_12();
  sub_1DC5131FC();
  OUTLINED_FUNCTION_0();
  v96 = v10;
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v95 = v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC5135EC();
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v98 = v14;
  OUTLINED_FUNCTION_12();
  sub_1DC51325C();
  OUTLINED_FUNCTION_0();
  v100 = v16;
  v101 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v99 = v17;
  OUTLINED_FUNCTION_12();
  v18 = sub_1DC5136CC();
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_4();
  v20 = sub_1DC51317C();
  OUTLINED_FUNCTION_0();
  v102 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEF0, &qword_1DC522318);
  OUTLINED_FUNCTION_10(v26);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_11_1();
  v28 = sub_1DC51318C();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  v34 = (v32 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v92 - v36;
  sub_1DC5131BC();
  OUTLINED_FUNCTION_39(v1, 1, v28);
  if (!v38)
  {
    v93 = v4;
    v45 = OUTLINED_FUNCTION_50_0();
    v46(v45);
    (*(v30 + 16))(v34, v37, v28);
    v47 = (*(v30 + 88))(v34, v28);
    if (v47 == *MEMORY[0x1E69D0F10])
    {
      v101 = v37;
      v48 = OUTLINED_FUNCTION_19_5();
      v49(v48);
      v50 = v102;
      (*(v102 + 32))(v25, v34, v20);
      sub_1DC51314C();
      v51 = v106;
      v52 = v103;
      NLRoutingDecisionMessage.SiriXQueryRewrite.init(protobuf:)(v2, v106);
      if (v52)
      {
        sub_1DC51329C();
        OUTLINED_FUNCTION_0_2();
        (*(v53 + 8))(v93);
        (*(v50 + 8))(v25, v20);
        (*(v30 + 8))(v101, v28);
        goto LABEL_17;
      }

      sub_1DC51329C();
      OUTLINED_FUNCTION_0_2();
      (*(v73 + 8))(v93);
      (*(v50 + 8))(v25, v20);
      v64 = MEMORY[0x1E69D0330];
LABEL_15:
      v74 = OUTLINED_FUNCTION_30();
      v75(v74);
      v76 = *v64;
      sub_1DC51588C();
      OUTLINED_FUNCTION_35();
      (*(v77 + 104))(v51, v76);
      goto LABEL_17;
    }

    if (v47 == *MEMORY[0x1E69D0F20])
    {
      v54 = OUTLINED_FUNCTION_19_5();
      v55(v54);
      v56 = v99;
      v57 = OUTLINED_FUNCTION_9_0();
      v58 = v101;
      v59(v57, v34, v101);
      v51 = v56;
      sub_1DC51322C();
      OUTLINED_FUNCTION_54_5();
      NLRoutingDecisionMessage.PlannerQueryRewrite.init(protobuf:)();
      v60 = v93;
      if (!v0)
      {
        sub_1DC51329C();
        OUTLINED_FUNCTION_0_2();
        (*(v61 + 8))(v60);
        v62 = OUTLINED_FUNCTION_25_1();
        v63(v62, v58);
        v64 = MEMORY[0x1E69D0340];
        goto LABEL_15;
      }
    }

    else
    {
      if (v47 != *MEMORY[0x1E69D0F18])
      {
        OUTLINED_FUNCTION_13_3();
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_31_1();
        MEMORY[0x1E1296160](0xD00000000000002FLL);
        OUTLINED_FUNCTION_38_5();
        v78 = sub_1DC517FEC();
        v79 = v37;
        v80 = v104;
        v81 = v105;
        v84 = sub_1DC2D2774(v78, v82, v83);
        v85 = OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v84);
        *v86 = v80;
        v86[1] = v81;
        OUTLINED_FUNCTION_35_2(v85, v86);
        sub_1DC51329C();
        OUTLINED_FUNCTION_0_2();
        (*(v87 + 8))(v93);
        v88 = *(v30 + 8);
        v88(v79, v28);
        v88(v34, v28);
        goto LABEL_17;
      }

      v65 = OUTLINED_FUNCTION_19_5();
      v66(v65);
      v67 = v95;
      v68 = OUTLINED_FUNCTION_9_0();
      v58 = v97;
      v69(v68, v34, v97);
      v51 = v67;
      sub_1DC5131CC();
      OUTLINED_FUNCTION_54_5();
      NLRoutingDecisionMessage.SearchQueryRewrite.init(protobuf:)();
      v60 = v93;
      if (!v0)
      {
        sub_1DC51329C();
        OUTLINED_FUNCTION_0_2();
        (*(v89 + 8))(v60);
        v90 = OUTLINED_FUNCTION_25_1();
        v91(v90, v58);
        v64 = MEMORY[0x1E69D0338];
        goto LABEL_15;
      }
    }

    sub_1DC51329C();
    OUTLINED_FUNCTION_0_2();
    (*(v70 + 8))(v60);
    v71 = OUTLINED_FUNCTION_25_1();
    v72(v71, v58);
    (*(v30 + 8))(v37, v28);
    goto LABEL_17;
  }

  v39 = sub_1DC2AAF50(v1, &qword_1ECC7BEF0, &qword_1DC522318);
  v42 = sub_1DC2D2774(v39, v40, v41);
  OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v42);
  OUTLINED_FUNCTION_21_4(v43, 47);
  sub_1DC51329C();
  OUTLINED_FUNCTION_0_2();
  (*(v44 + 8))(v4);
LABEL_17:
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_26_0();
}

uint64_t NLRoutingDecisionMessage.SiriXQueryRewrite.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_1();
  v8 = sub_1DC51365C();
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - v16;
  if (sub_1DC5136AC())
  {
    sub_1DC51366C();
    NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome.init(protobuf:)();
    if (v2)
    {
      goto LABEL_9;
    }

    v18 = sub_1DC5157FC();
    v19 = 0;
  }

  else
  {
    v18 = sub_1DC5157FC();
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v19, 1, v18);
  v20 = OUTLINED_FUNCTION_41();
  v22 = sub_1DC2AADC8(v20, v21);
  MEMORY[0x1EEE9AC00](v22);
  v33[-2] = v17;
  v33[-1] = a1;
  sub_1DC51583C();
  v23 = sub_1DC51587C();
  OUTLINED_FUNCTION_39(v3, 1, v23);
  if (v24)
  {
    v25 = sub_1DC2AAF50(v3, &qword_1ECC7BF00, &unk_1DC529C30);
    v28 = OUTLINED_FUNCTION_58_1(v25, v26, v27);
    OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v28);
    OUTLINED_FUNCTION_15_0(v29, 92);
  }

  else
  {
    OUTLINED_FUNCTION_7_1();
    (*(v30 + 32))(a2, v3, v23);
  }

  sub_1DC2AAF50(v17, &qword_1ECC7BF08, &unk_1DC522330);
LABEL_9:
  sub_1DC5136CC();
  OUTLINED_FUNCTION_0_2();
  return (*(v31 + 8))(a1);
}

uint64_t sub_1DC2AADC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC2AAE38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC2AAEA8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1DC2AAE38(a2, &v7 - v5);
  sub_1DC51584C();
  sub_1DC51368C();
  return sub_1DC51586C();
}

uint64_t sub_1DC2AAF50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(a1);
  return a1;
}

void AjaxMetadata.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v2;
  v37 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEF8, &unk_1DC522320);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_40();
  v7 = sub_1DC51358C();
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_4();
  v9 = sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  v38 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  v39 = v12;
  OUTLINED_FUNCTION_12();
  v13 = sub_1DC5130AC();
  v14 = OUTLINED_FUNCTION_10(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v15 = sub_1DC5162EC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  sub_1DC51310C();
  QueryType.init(protobuf:)();
  if (v0)
  {
    sub_1DC51313C();
    OUTLINED_FUNCTION_0_2();
    (*(v22 + 8))(v3);
  }

  else
  {
    v36 = v9;
    sub_1DC5130EC();
    PrescribedAjaxTool.init(protobuf:)();
    MEMORY[0x1EEE9AC00](v23);
    *(&v35 - 2) = v21;
    *(&v35 - 1) = v39;
    sub_1DC515EEC();
    v24 = sub_1DC515F3C();
    OUTLINED_FUNCTION_39(v1, 1, v24);
    if (v25)
    {
      v26 = sub_1DC2AAF50(v1, &qword_1ECC7BEF8, &unk_1DC522320);
      v29 = sub_1DC2D2774(v26, v27, v28);
      v30 = OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v29);
      *v31 = 0xD000000000000052;
      v31[1] = 0x80000001DC53CE00;
      OUTLINED_FUNCTION_35_2(v30, v31);
      sub_1DC51313C();
      OUTLINED_FUNCTION_0_2();
      (*(v32 + 8))(v3);
    }

    else
    {
      sub_1DC51313C();
      OUTLINED_FUNCTION_0_2();
      (*(v33 + 8))(v3);
      OUTLINED_FUNCTION_7_1();
      (*(v34 + 32))(v37, v1, v24);
    }

    (*(v38 + 8))(v39, v36);
    (*(v17 + 8))(v21, v15);
  }

  OUTLINED_FUNCTION_26_0();
}

void sub_1DC2AB394(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_35(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1DC2AB454(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_35(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1DC2AB514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA0, &qword_1DC5224C8);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_11_1();
  v11 = sub_1DC5162EC();
  OUTLINED_FUNCTION_35();
  v12 = OUTLINED_FUNCTION_30();
  v13(v12);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v11);
  sub_1DC515F1C();
  v14 = sub_1DC5161CC();
  OUTLINED_FUNCTION_35();
  (*(v15 + 16))(v8, a3, v14);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  return sub_1DC515F0C();
}

void QueryType.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_1();
  v4 = v3;
  v65 = v5;
  v6 = sub_1DC5130DC();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_44_1();
  v8 = sub_1DC51303C();
  OUTLINED_FUNCTION_0();
  v64 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF28, &qword_1DC522350);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_40();
  v13 = sub_1DC512FEC();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  sub_1DC512FFC();
  OUTLINED_FUNCTION_39(v1, 1, v13);
  if (v23)
  {
    v24 = sub_1DC2AAF50(v1, &qword_1ECC7BF28, &qword_1DC522350);
    v27 = sub_1DC2D2774(v24, v25, v26);
    OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v27);
    OUTLINED_FUNCTION_21_4(v28, 44);
    sub_1DC5130AC();
    OUTLINED_FUNCTION_0_2();
    (*(v29 + 8))(v4);
  }

  else
  {
    v63 = v4;
    (*(v15 + 32))(v22, v1, v13);
    (*(v15 + 16))(v19, v22, v13);
    v30 = OUTLINED_FUNCTION_50_0();
    v32 = v31(v30);
    if (v32 == *MEMORY[0x1E69D0EC0])
    {
      sub_1DC5130AC();
      OUTLINED_FUNCTION_0_2();
      (*(v33 + 8))(v63);
      v34 = *(v15 + 8);
      v35 = OUTLINED_FUNCTION_16();
      v34(v35);
      v36 = *MEMORY[0x1E69D08F0];
      sub_1DC5162EC();
      OUTLINED_FUNCTION_35();
      (*(v37 + 104))(v65, v36);
      v38 = OUTLINED_FUNCTION_50_0();
      v34(v38);
    }

    else if (v32 == *MEMORY[0x1E69D0EB8])
    {
      v39 = OUTLINED_FUNCTION_50_0();
      v40(v39);
      (*(v64 + 32))(v2, v19, v8);
      sub_1DC51300C();
      v41 = v65;
      AjaxRewrite.init(protobuf:)();
      v42 = v63;
      sub_1DC5130AC();
      OUTLINED_FUNCTION_0_2();
      (*(v43 + 8))(v42);
      v44 = OUTLINED_FUNCTION_55_1();
      v45(v44, v8);
      v46 = OUTLINED_FUNCTION_16();
      v47(v46);
      if (!v0)
      {
        v60 = *MEMORY[0x1E69D08E8];
        sub_1DC5162EC();
        OUTLINED_FUNCTION_35();
        (*(v61 + 104))(v41, v60);
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_3();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_31_1();
      MEMORY[0x1E1296160](0xD00000000000002CLL);
      OUTLINED_FUNCTION_38_5();
      v48 = sub_1DC517FEC();
      v49 = v66;
      v50 = v67;
      v53 = sub_1DC2D2774(v48, v51, v52);
      v54 = OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v53);
      *v55 = v49;
      v55[1] = v50;
      OUTLINED_FUNCTION_35_2(v54, v55);
      sub_1DC5130AC();
      OUTLINED_FUNCTION_0_2();
      (*(v56 + 8))(v63);
      v57 = *(v15 + 8);
      v58 = OUTLINED_FUNCTION_16();
      v57(v58);
      v59 = OUTLINED_FUNCTION_50_0();
      v57(v59);
    }
  }

  OUTLINED_FUNCTION_26_0();
}

void PrescribedAjaxTool.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF30, &qword_1DC522358);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_23_0();
  v7 = sub_1DC51355C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_42_3();
  sub_1DC51356C();
  OUTLINED_FUNCTION_39(v0, 1, v7);
  if (v12)
  {
    v13 = sub_1DC2AAF50(v0, &qword_1ECC7BF30, &qword_1DC522358);
    v16 = sub_1DC2D2774(v13, v14, v15);
    v17 = OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v16);
    *v18 = 0xD00000000000004CLL;
    v18[1] = 0x80000001DC53D060;
    OUTLINED_FUNCTION_35_2(v17, v18);
    sub_1DC51358C();
    OUTLINED_FUNCTION_0_2();
    (*(v19 + 8))(v2);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_48_2();
    v21(v20);
    v22 = OUTLINED_FUNCTION_49_1();
    v23(v22);
    v24 = OUTLINED_FUNCTION_16();
    v26 = v25(v24);
    if (v26 == *MEMORY[0x1E69D0F80])
    {
      v27 = MEMORY[0x1E69D0720];
    }

    else if (v26 == *MEMORY[0x1E69D0F90])
    {
      v27 = MEMORY[0x1E69D0730];
    }

    else if (v26 == *MEMORY[0x1E69D0F78])
    {
      v27 = MEMORY[0x1E69D0718];
    }

    else
    {
      if (v26 != *MEMORY[0x1E69D0F88])
      {
        OUTLINED_FUNCTION_13_3();
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_31_1();
        MEMORY[0x1E1296160](0xD000000000000035);
        OUTLINED_FUNCTION_38_5();
        v34 = sub_1DC517FEC();
        v37 = sub_1DC2D2774(v34, v35, v36);
        v38 = OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v37);
        *v39 = v44;
        v39[1] = v45;
        OUTLINED_FUNCTION_35_2(v38, v39);
        sub_1DC51358C();
        OUTLINED_FUNCTION_0_2();
        (*(v40 + 8))(v2);
        v41 = *(v9 + 8);
        v42 = OUTLINED_FUNCTION_47_0();
        v41(v42);
        v43 = OUTLINED_FUNCTION_16();
        v41(v43);
        goto LABEL_13;
      }

      v27 = MEMORY[0x1E69D0728];
    }

    sub_1DC51358C();
    OUTLINED_FUNCTION_0_2();
    (*(v28 + 8))(v2);
    v29 = *(v9 + 8);
    v30 = OUTLINED_FUNCTION_47_0();
    v29(v30);
    v31 = *v27;
    sub_1DC5161CC();
    OUTLINED_FUNCTION_35();
    (*(v32 + 104))(v4, v31);
    v33 = OUTLINED_FUNCTION_16();
    v29(v33);
  }

LABEL_13:
  OUTLINED_FUNCTION_26_0();
}

uint64_t OUTLINED_FUNCTION_70_1(uint64_t a1)
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_70_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_70_10()
{

  return MEMORY[0x1EEE3C618](v0);
}

uint64_t OUTLINED_FUNCTION_70_11()
{

  return sub_1DC516F7C();
}

uint64_t OUTLINED_FUNCTION_69_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_69_9(uint64_t a1)
{

  return sub_1DC516F6C();
}

uint64_t OUTLINED_FUNCTION_69_10(uint64_t a1)
{

  return MEMORY[0x1EEE49F08](a1, 0, 1, 0, 1, 0, 1, 0);
}

void sub_1DC2AC14C()
{
  v3 = v1;
  OUTLINED_FUNCTION_38_2();
  v4 = sub_1DC51223C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  v8 = sub_1DC511FEC();
  v9 = *(v8 + 16);
  if (v9)
  {
    v26 = MEMORY[0x1E69E7CC0];
    v22 = v9;
    sub_1DC2A9508(0, v9, 0);
    v10 = 0;
    OUTLINED_FUNCTION_24();
    v11 = v26;
    v23 = v8 + v12;
    v24 = (v6 + 8);
    while (v10 < *(v8 + 16))
    {
      (*(v6 + 16))(v2, v23 + *(v6 + 72) * v10, v4);
      sub_1DC2A9660(v25);
      if (v3)
      {

        sub_1DC51220C();
        OUTLINED_FUNCTION_0_2();
        (*(v20 + 8))(v0);
        (*v24)(v2, v4);

        return;
      }

      v13 = v8;
      (*v24)(v2, v4);
      v26 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        v18 = OUTLINED_FUNCTION_26(v14);
        sub_1DC2A9508(v18, v15 + 1, 1);
        v11 = v26;
      }

      ++v10;
      *(v11 + 16) = v15 + 1;
      v16 = OUTLINED_FUNCTION_71();
      sub_1DC28F9B0(v16, v17);
      v8 = v13;
      v3 = 0;
      if (v22 == v10)
      {
        sub_1DC51220C();
        OUTLINED_FUNCTION_0_2();
        (*(v21 + 8))(v0);

        return;
      }
    }

    __break(1u);
  }

  else
  {

    sub_1DC51220C();
    OUTLINED_FUNCTION_0_2();
    (*(v19 + 8))(v0);
  }
}

void *sub_1DC2AC408(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  OUTLINED_FUNCTION_52(v8);
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

void *sub_1DC2AC4FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_1@<X0>(uint64_t a1@<X8>)
{

  return sub_1DC28F3B8(v2 + a1, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_71_4(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_71_6(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_1DC2AC6D8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

id sub_1DC2AC7C4(uint64_t a1)
{
  v2 = type metadata accessor for NLRouterOverride(0);
  v3 = OUTLINED_FUNCTION_52(v2);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v52 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v11 = (v48 - v10);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 48);
    v14 = *(v9 + 80);
    v48[1] = a1;
    v15 = a1 + ((v14 + 32) & ~v14);
    v49 = *(v9 + 72);
    v50 = v13;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DC2ACC64(v15, v11);
      v18 = *v11;
      v19 = v11[1];
      v20 = v17[2];
      OUTLINED_FUNCTION_0_4();
      sub_1DC2A9458();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_5();
        v17 = sub_1DC2A6974(0, v20 + 1, 1, v17, &qword_1ECC7C090, &qword_1DC522980, v26, v27);
      }

      v22 = v17[2];
      v21 = v17[3];
      if (v22 >= v21 >> 1)
      {
        v28 = OUTLINED_FUNCTION_26(v21);
        v17 = sub_1DC2A6974(v28, v22 + 1, 1, v17, &qword_1ECC7C090, &qword_1DC522980, type metadata accessor for NLRouterOverride, type metadata accessor for NLRouterOverride);
      }

      v17[2] = v22 + 1;
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_0_4();
      sub_1DC2A9458();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = OUTLINED_FUNCTION_13_0();
        v16 = sub_1DC2B81A8(v29, v30, v31, v16);
      }

      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        v32 = OUTLINED_FUNCTION_26(v23);
        v16 = sub_1DC2B81A8(v32, v24 + 1, 1, v16);
      }

      v16[2] = v24 + 1;
      v25 = &v16[3 * v24];
      v25[4] = v18;
      v25[5] = v19;
      v25[6] = v20;
      v15 += v49;
      --v12;
    }

    while (v12);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v33 = [objc_allocWithZone(OVMarisaTrie) init];
  v34 = v16[2];
  if (v34)
  {
    v52 = &v57;
    v35 = v16 + 6;
    v36 = MEMORY[0x1E69E6290];
    do
    {
      v37 = *v35;

      OUTLINED_FUNCTION_12_3();
      v38 = sub_1DC5176FC();

      v56 = v37;
      v55[3] = v36;
      v55[4] = MEMORY[0x1E6969DF8];
      v55[0] = &v56;
      v55[1] = v52;
      v39 = __swift_project_boxed_opaque_existential_1(v55, v36);
      v40 = *v39;
      if (*v39)
      {
        v41 = v39[1];
        v42 = v41 - v40;
        if (v41 != v40)
        {
          if (v42 <= 14)
          {
            memset(__dst, 0, sizeof(__dst));
            v54 = v41 - v40;
            memcpy(__dst, v40, v41 - v40);
            v51 = v51 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v54 << 16)) << 32);
          }

          else
          {
            sub_1DC51077C();
            swift_allocObject();
            OUTLINED_FUNCTION_12_3();
            sub_1DC51073C();
            if (v42 >= 0x7FFFFFFF)
            {
              sub_1DC5109DC();
              v46 = swift_allocObject();
              *(v46 + 16) = 0;
              *(v46 + 24) = v42;
            }
          }
        }
      }

      v35 += 3;
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      OUTLINED_FUNCTION_12_3();
      v43 = sub_1DC5109EC();
      v44 = OUTLINED_FUNCTION_12_3();
      sub_1DC2AD740(v44, v45);
      [v33 addKey:v38 payload:v43];

      --v34;
    }

    while (v34);
  }

  [v33 buildKeyset];
  return v33;
}

uint64_t sub_1DC2ACC64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1DC2ACCD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DC2ACDDC(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1DC2AD2F4(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC2AC6D8(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t sub_1DC2ACED4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DC2ACF2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC2ACF9C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1DC510B6C();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0B8, &qword_1DC5229B8);
  result = sub_1DC517EFC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1DC2A3304(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1DC291740(&qword_1ECC7BEA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1DC51767C();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_1DC2AD2F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0B0, &qword_1DC5229B0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860) - 8);
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

uint64_t AjaxRewrite.init(protobuf:)()
{
  OUTLINED_FUNCTION_45_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF38, qword_1DC522360);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_46_1();
  sub_1DC515DDC();
  v4 = sub_1DC515DEC();
  OUTLINED_FUNCTION_34_1(v4);
  if (v5)
  {
    v6 = sub_1DC2AAF50(v1, &qword_1ECC7BF38, qword_1DC522360);
    v9 = OUTLINED_FUNCTION_58_1(v6, v7, v8);
    OUTLINED_FUNCTION_33_1(&type metadata for ProtoError, v9);
    OUTLINED_FUNCTION_15_0(v10, 80);
  }

  else
  {
    OUTLINED_FUNCTION_7_1();
    v11 = OUTLINED_FUNCTION_41_1();
    v12(v11);
  }

  sub_1DC5130DC();
  OUTLINED_FUNCTION_0_2();
  return (*(v13 + 8))(v0);
}

uint64_t sub_1DC2AD5B0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DC2AD6B0(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for NLRouterOverride(0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_1DC2AD6B0(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1DC2A6974(result, v7, a2 & 1, v5, &qword_1ECC7C090, &qword_1DC522980, type metadata accessor for NLRouterOverride, type metadata accessor for NLRouterOverride);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DC2AD740(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_1DC2AD798(uint64_t a1)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C060, &qword_1DC522860);
  OUTLINED_FUNCTION_0();
  v86 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v99 = (&v83 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C068, &qword_1DC522868);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v83 - v6;
  v8 = sub_1DC51222C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v100 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v97 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v83 - v20;
  v95 = type metadata accessor for NLRouterOverride(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v88 = v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v85 = &v83 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v83 - v26;
  v108[5] = MEMORY[0x1E69E7CD0];
  v94 = *(a1 + 16);
  if (v94)
  {
    OUTLINED_FUNCTION_24();
    v84 = v30;
    v91 = a1 + v30;
    v90 = (v16 + 16);
    v89 = (v16 + 8);
    v105 = (v10 + 8);
    v106 = (v10 + 32);
    v31 = MEMORY[0x1E69E7CC0];
    *&v32 = 136315138;
    v83 = v32;
    v33 = MEMORY[0x1E69E7CC0];
    v98 = v27;
    v93 = a1;
    v92 = v29;
    while (v28 < *(a1 + 16))
    {
      v102 = v31;
      v103 = v33;
      v34 = *(v29 + 72);
      v104 = v28;
      v101 = v34;
      OUTLINED_FUNCTION_0_4();
      sub_1DC2AE0C8();
      v35 = v97;
      v36 = v100;
      (*v90)(v97, v27, v100);
      v37 = v96;
      LOBYTE(v35) = sub_1DC2AE120(v96, v35);
      (*v89)(v37, v36);
      if ((v35 & 1) == 0)
      {
        v38 = sub_1DC517B8C();
        sub_1DC297814();
        v39 = sub_1DC2A5914();
        OUTLINED_FUNCTION_0_4();
        v40 = v85;
        sub_1DC2AE0C8();
        if (os_log_type_enabled(v39, v38))
        {
          v41 = swift_slowAlloc();
          v42 = v38;
          v43 = swift_slowAlloc();
          v108[0] = v43;
          *v41 = v83;
          sub_1DC291740(&qword_1ECC7BE90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v44 = sub_1DC51823C();
          v46 = v45;
          OUTLINED_FUNCTION_1_3();
          sub_1DC2ACED4(v40, v47);
          v48 = sub_1DC291244(v44, v46, v108);
          v27 = v98;

          *(v41 + 4) = v48;
          _os_log_impl(&dword_1DC287000, v39, v42, "Duplicated override id: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          MEMORY[0x1E1298840](v43, -1, -1);
          MEMORY[0x1E1298840](v41, -1, -1);
        }

        else
        {

          OUTLINED_FUNCTION_1_3();
          sub_1DC2ACED4(v40, v49);
        }
      }

      v50 = *&v27[*(v95 + 36)];
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = v50 + 32;
        v53 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1DC28FB9C(v52, v108);
          sub_1DC28FB9C(v108, v107);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C050, qword_1DC522870);
          if (swift_dynamicCast())
          {
            __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
            (*v106)(v14, v7, v8);
            sub_1DC511FBC();
            v54 = sub_1DC51778C();
            v56 = v55;

            (*v105)(v14, v8);
            __swift_destroy_boxed_opaque_existential_1Tm(v108);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = OUTLINED_FUNCTION_13_0();
              v53 = sub_1DC2ACCD4(v60, v61, v62, v53);
            }

            v58 = *(v53 + 2);
            v57 = *(v53 + 3);
            if (v58 >= v57 >> 1)
            {
              v63 = OUTLINED_FUNCTION_26(v57);
              v53 = sub_1DC2ACCD4(v63, v58 + 1, 1, v53);
            }

            *(v53 + 2) = v58 + 1;
            v59 = &v53[16 * v58];
            *(v59 + 4) = v54;
            *(v59 + 5) = v56;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v108);
            __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
            sub_1DC28EB30(v7, &qword_1ECC7C068, &qword_1DC522868);
          }

          v52 += 40;
          --v51;
        }

        while (v51);
      }

      else
      {
        v53 = MEMORY[0x1E69E7CC0];
      }

      if (*(v53 + 2))
      {
        v65 = *(v53 + 4);
        v64 = *(v53 + 5);

        v27 = v98;
        v66 = v99;
        *v99 = v65;
        v66[1] = v64;
        OUTLINED_FUNCTION_0_4();
        sub_1DC2AE0C8();
        v31 = v102;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a1 = v93;
        v33 = v103;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v76 = OUTLINED_FUNCTION_13_0();
          v31 = sub_1DC2ACDDC(v76, v77, v78, v31);
        }

        v69 = v31[2];
        v68 = v31[3];
        if (v69 >= v68 >> 1)
        {
          v79 = OUTLINED_FUNCTION_26(v68);
          v31 = sub_1DC2ACDDC(v79, v69 + 1, 1, v31);
        }

        OUTLINED_FUNCTION_1_3();
        sub_1DC2ACED4(v27, v70);
        v31[2] = v69 + 1;
        OUTLINED_FUNCTION_24();
        sub_1DC2ACF2C(v99, v31 + v71 + *(v72 + 72) * v69);
      }

      else
      {

        OUTLINED_FUNCTION_0_4();
        v27 = v98;
        sub_1DC2AE0C8();
        v33 = v103;
        v73 = swift_isUniquelyReferenced_nonNull_native();
        a1 = v93;
        v31 = v102;
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_4_5();
          v33 = sub_1DC2A6974(0, v80 + 1, 1, v33, &qword_1ECC7C090, &qword_1DC522980, v81, v82);
        }

        v75 = v33[2];
        v74 = v33[3];
        if (v75 >= v74 >> 1)
        {
          v33 = sub_1DC2A6974((v74 > 1), v75 + 1, 1, v33, &qword_1ECC7C090, &qword_1DC522980, type metadata accessor for NLRouterOverride, type metadata accessor for NLRouterOverride);
        }

        sub_1DC2ACED4(v27, type metadata accessor for NLRouterOverride);
        v33[2] = v75 + 1;
        sub_1DC2A9458();
      }

      v28 = v104 + 1;
      v29 = v92;
      if (v104 + 1 == v94)
      {

        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
LABEL_34:

    sub_1DC2AC7C4(v31);
  }
}

uint64_t sub_1DC2AE0C8()
{
  v2 = OUTLINED_FUNCTION_5_1();
  v3(v2);
  OUTLINED_FUNCTION_35();
  (*(v4 + 16))(v0, v1);
  return v0;
}

BOOL sub_1DC2AE120(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_1DC510B6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_1DC291740(&qword_1ECC7BEA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v27 = a2;
  v9 = sub_1DC51767C();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_1DC2AE3E8(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_1DC291740(&qword_1ECC7BEA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v15 = sub_1DC5176CC();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t sub_1DC2AE3E8(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1DC510B6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DC2ACF9C(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1DC2AE674(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_1DC291740(&qword_1ECC7BEA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v13 = sub_1DC51767C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_1DC291740(&qword_1ECC7BEA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v15 = sub_1DC5176CC();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1DC2DC31C();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_1DC51828C();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_1DC2AE674(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1DC510B6C();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0B8, &qword_1DC5229B8);
  v7 = sub_1DC517EFC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1DC291740(&qword_1ECC7BEA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        result = sub_1DC51767C();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1DC2AE9E0()
{
  sub_1DC51737C();
  sub_1DC2A6184(&qword_1EDAC7FE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2A56AC();
  return sub_1DC517E9C();
}

uint64_t sub_1DC2AEAAC(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMDeviceStateLogger_memoryPressureSource;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

unint64_t sub_1DC2AEB04(uint64_t a1, uint64_t a2)
{
  sub_1DC5182FC();
  sub_1DC51769C();
  v4 = sub_1DC51833C();

  return sub_1DC2AEB7C(a1, a2, v4);
}

unint64_t sub_1DC2AEB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DC51825C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1DC2AECB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1DC2AECF4()
{
  v1 = v0;
  sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  v38 = v3;
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v36 = v5 - v4;
  v37 = sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v35 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1DC517C6C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = sub_1DC5173FC();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = *(v1 + OBJC_IVAR___CDMDeviceStateLogger_queue);
  *(v23 - v22) = v25;
  (*(v20 + 104))(v23 - v22, *MEMORY[0x1E69E8020], v18);
  v26 = v25;
  LOBYTE(v25) = sub_1DC51742C();
  result = (*(v20 + 8))(v24, v18);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v28 = MEMORY[0x1E69E7D40];
  v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  if (v29(result))
  {
    return swift_unknownObjectRelease();
  }

  sub_1DC298C74(0, &unk_1ECC7B968, 0x1E69E9630);
  sub_1DC517C2C();
  v30 = sub_1DC517C7C();
  (*(v13 + 8))(v17, v11);
  v31 = (*((*v28 & *v1) + 0x68))(v30);
  v32 = v29(v31);
  if (v32)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_195();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = sub_1DC40794C;
    v45 = v33;
    OUTLINED_FUNCTION_5_4();
    v41 = 1107296256;
    v42 = sub_1DC358C0C;
    v43 = &block_descriptor_6_0;
    v34 = _Block_copy(aBlock);

    sub_1DC51739C();
    sub_1DC2AE9E0();
    sub_1DC517C8C();
    _Block_release(v34);
    swift_unknownObjectRelease();
    (*(v38 + 8))(v36, v39);
    (*(v35 + 8))(v10, v37);
  }

  result = v29(v32);
  if (result)
  {
    swift_getObjectType();
    sub_1DC517CAC();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DC2AF134()
{
  MEMORY[0x1E1298910](v0 + 16);
  OUTLINED_FUNCTION_195();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1DC2B013C()
{
  sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v3 = sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_195();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v20 = sub_1DC2AE98C;
  v21 = v10;
  OUTLINED_FUNCTION_5_4();
  v17 = 1107296256;
  v18 = sub_1DC2AECB0;
  v19 = &block_descriptor_12;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_1DC51739C();
  sub_1DC2A6184(&qword_1EDAC7FE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2A56AC();
  sub_1DC517E9C();
  MEMORY[0x1E12964B0](0, v9, v1, v11);
  _Block_release(v11);
  v13 = OUTLINED_FUNCTION_30_6();
  v14(v13);
  (*(v5 + 8))(v9, v3);
}

uint64_t sub_1DC2B038C()
{
  OUTLINED_FUNCTION_195();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DC2B12A8()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 thermalState];

  switch(v1)
  {
    case 0uLL:
      if (qword_1ECC82D80 != -1)
      {
        OUTLINED_FUNCTION_0_54(&qword_1ECC82D80);
      }

      v2 = qword_1ECC8F608;
      v3 = sub_1DC517B8C();
      v4 = "Thermal state is within normal limits.";
      v5 = MEMORY[0x1E69E7CC0];
      v6 = 38;
      break;
    case 1uLL:
      if (qword_1ECC82D80 != -1)
      {
        OUTLINED_FUNCTION_0_54(&qword_1ECC82D80);
      }

      v2 = qword_1ECC8F608;
      v3 = sub_1DC517B8C();
      v4 = "Thermal state is slighty elevated.";
      v5 = MEMORY[0x1E69E7CC0];
      v6 = 34;
      break;
    case 2uLL:
      if (qword_1ECC82D80 != -1)
      {
        OUTLINED_FUNCTION_0_54(&qword_1ECC82D80);
      }

      v2 = qword_1ECC8F608;
      v3 = sub_1DC517B8C();
      v4 = "Thermal state is high";
      v5 = MEMORY[0x1E69E7CC0];
      v6 = 21;
      break;
    case 3uLL:
      if (qword_1ECC82D80 != -1)
      {
        OUTLINED_FUNCTION_0_54(&qword_1ECC82D80);
      }

      v2 = qword_1ECC8F608;
      v3 = sub_1DC517B8C();
      v4 = "Thermal state is critical. Performance may be impacted";
      v5 = MEMORY[0x1E69E7CC0];
      v6 = 54;
      break;
    default:
      if (qword_1ECC82D80 != -1)
      {
        OUTLINED_FUNCTION_0_54(&qword_1ECC82D80);
      }

      v2 = qword_1ECC8F608;
      v3 = sub_1DC517B8C();
      v4 = "Unknown thermal state.";
      v5 = MEMORY[0x1E69E7CC0];
      v6 = 22;
      break;
  }

  return sub_1DC516EFC(v4, v6, 2, &dword_1DC287000, v2, v3, v5);
}

void sub_1DC2B1640(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B17EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B1FDC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B2104(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B222C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B2354(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B2450(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1DC2B256C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B2688(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B2898(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DC2B2A18(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_95_2()
{

  return sub_1DC51825C();
}

void OUTLINED_FUNCTION_200_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void sub_1DC2B2C1C()
{
  OUTLINED_FUNCTION_33();
  sub_1DC510AFC();
  OUTLINED_FUNCTION_0();
  v95 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23_9();
  v8 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  v93 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v94 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_38_1();
  v20 = (*(v19 + 296))();
  if (!v20)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_19_1();
    v33(v0);
    v34 = sub_1DC516F6C();
    v35 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v35))
    {
      v36 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v36);
      OUTLINED_FUNCTION_33_10(&dword_1DC287000, v37, v38, "cdmClient is nil so nothing to release here");
      OUTLINED_FUNCTION_40_0();
    }

    v39 = OUTLINED_FUNCTION_229();
    goto LABEL_10;
  }

  v96 = v8;

  if ((*(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_isDecoupleFromSession) & 1) == 0)
  {
    sub_1DC28D414();
    v41 = v10;
    OUTLINED_FUNCTION_19_1();
    v22 = v96;
    v42(v2);
    v43 = sub_1DC516F6C();
    v44 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_14_7(v44))
    {
      v45 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v45);
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_56_4(v46, v47, v48, v49);
      OUTLINED_FUNCTION_58();
    }

    v32 = *(v41 + 8);
    v31 = v2;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_117_2();
  if ((*(v21 + 560))())
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_19_1();
    v22 = v8;
    v23(v3);
    v24 = sub_1DC516F6C();
    v25 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_14_7(v25))
    {
      v26 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v26);
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_145_1(v27, v28, v29, v30);
      OUTLINED_FUNCTION_40_0();
    }

    v31 = OUTLINED_FUNCTION_150_0();
LABEL_14:
    v32(v31, v22);
LABEL_15:
    OUTLINED_FUNCTION_64_2();
    (*(v50 + 304))(0);
    goto LABEL_16;
  }

  if (*(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_shouldAssetsTimeout) == 1)
  {
    sub_1DC510AEC();
    OUTLINED_FUNCTION_117_2();
    (*(v51 + 536))();
    sub_1DC510A6C();
    v52 = *(v95 + 8);
    v53 = OUTLINED_FUNCTION_146_1();
    v52(v53);
    v54 = sub_1DC510A8C();
    v55 = OUTLINED_FUNCTION_50_0();
    v52(v55);
    v56 = OUTLINED_FUNCTION_174();
    v52(v56);
    if (v54)
    {
      sub_1DC28D414();
      OUTLINED_FUNCTION_19_1();
      v57(v94);
      v58 = sub_1DC516F6C();
      v59 = sub_1DC517B8C();
      if (OUTLINED_FUNCTION_14_7(v59))
      {
        v60 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v60);
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_145_1(v61, v62, v63, v64);
        OUTLINED_FUNCTION_40_0();
      }

      v65 = OUTLINED_FUNCTION_41();
      v66(v65);
      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_117_2();
  (*(v67 + 416))();
  OUTLINED_FUNCTION_79_4();
  if (v69 || (v68 & 1) == 0)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_19_1();
    v83 = OUTLINED_FUNCTION_213_0();
    v84(v83);
    v85 = sub_1DC516F6C();
    v86 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_14_7(v86))
    {
      v87 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v87);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v88, v89, v90, v91, v92, 2u);
      OUTLINED_FUNCTION_31();
    }

    v39 = OUTLINED_FUNCTION_16();
LABEL_10:
    v40(v39);
    goto LABEL_16;
  }

  sub_1DC28D414();
  OUTLINED_FUNCTION_19_1();
  v70(v93);
  v71 = sub_1DC516F6C();
  v72 = sub_1DC517B8C();
  if (OUTLINED_FUNCTION_14_7(v72))
  {
    v73 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_18_12(v73);
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_145_1(v74, v75, v76, v77);
    OUTLINED_FUNCTION_40_0();
  }

  v78 = OUTLINED_FUNCTION_41();
  v79(v78);
  OUTLINED_FUNCTION_64_2();
  (*(v80 + 304))(0);
  OUTLINED_FUNCTION_64_2();
  (*(v81 + 424))(2);
  OUTLINED_FUNCTION_64_2();
  (*(v82 + 592))(0);
LABEL_16:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2B3338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t OUTLINED_FUNCTION_93_1(uint64_t a1, unint64_t a2)
{

  return sub_1DC291244(a1, a2, (v2 - 152));
}

void sub_1DC2B33C4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v85 = v4;
  v86 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v83 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32_4(v9, v76);
  v10 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v80 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v76 - v18;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v77 = v21 - v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v76 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v76 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v76 - v30;
  v81 = _MergedGlobals;
  v82 = v12;
  v32 = *(v0 + _MergedGlobals);
  v84 = v0;
  if (v32)
  {
    (*(v12 + 16))(&v76 - v30, v32 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionId, v10);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  __swift_storeEnumTagSinglePayload(v31, v33, 1, v10);
  v34 = v2;
  sub_1DC515D7C();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v10);
  v35 = *(v16 + 48);
  sub_1DC28F358(v31, v19, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28F358(v29, &v19[v35], &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_5_3(v19);
  if (!v37)
  {
    sub_1DC28F358(v19, v26, &unk_1ECC7CA30, &qword_1DC522A00);
    OUTLINED_FUNCTION_5_3(&v19[v35]);
    if (!v37)
    {
      v56 = v82;
      v57 = &v19[v35];
      v58 = v80;
      (*(v82 + 32))(v80, v57, v10);
      OUTLINED_FUNCTION_3_8();
      sub_1DC291788(v59, v60, MEMORY[0x1E69695C8]);
      HIDWORD(v76) = sub_1DC5176CC();
      v61 = *(v56 + 8);
      v61(v58, v10);
      sub_1DC28EB30(v29, &unk_1ECC7CA30, &qword_1DC522A00);
      sub_1DC28EB30(v31, &unk_1ECC7CA30, &qword_1DC522A00);
      v61(v26, v10);
      v62 = v85;
      sub_1DC28EB30(v19, &unk_1ECC7CA30, &qword_1DC522A00);
      v36 = v84;
      if ((v76 & 0x100000000) != 0)
      {
        goto LABEL_18;
      }

LABEL_13:
      v38 = sub_1DC29120C();
      v39 = v83;
      (*(v62 + 16))(v83, v38, v86);
      v40 = v34;

      v41 = sub_1DC516F6C();
      v42 = sub_1DC517B9C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v43 = 136446466;
        v44 = v80;
        sub_1DC515D7C();
        OUTLINED_FUNCTION_3_8();
        sub_1DC291788(v45, v46, MEMORY[0x1E69695E0]);
        v47 = sub_1DC51823C();
        v49 = v48;
        v50 = v82;
        (*(v82 + 8))(v44, v10);
        v51 = sub_1DC291244(v47, v49, &v87);

        *(v43 + 4) = v51;
        *(v43 + 12) = 2082;
        v52 = *(v36 + v81);
        v53 = v85;
        if (v52)
        {
          v54 = v77;
          (*(v50 + 16))(v77, v52 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionId, v10);
          v55 = 0;
        }

        else
        {
          v55 = 1;
          v54 = v77;
        }

        __swift_storeEnumTagSinglePayload(v54, v55, 1, v10);
        v73 = sub_1DC51777C();
        v75 = sub_1DC291244(v73, v74, &v87);

        *(v43 + 14) = v75;
        _os_log_impl(&dword_1DC287000, v41, v42, "Received SessionEndedMessage for session id: %{public}s, which is different from sessionContext's sessionId: %{public}s. Ignoring.", v43, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();

        (*(v53 + 8))(v83, v86);
      }

      else
      {

        (*(v62 + 8))(v39, v86);
      }

      goto LABEL_23;
    }

    sub_1DC28EB30(v29, &unk_1ECC7CA30, &qword_1DC522A00);
    sub_1DC28EB30(v31, &unk_1ECC7CA30, &qword_1DC522A00);
    (*(v82 + 8))(v26, v10);
LABEL_12:
    sub_1DC28EB30(v19, &qword_1ECC7CE20, &unk_1DC523AC8);
    v36 = v84;
    v62 = v85;
    goto LABEL_13;
  }

  sub_1DC28EB30(v29, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28EB30(v31, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_5_3(&v19[v35]);
  if (!v37)
  {
    goto LABEL_12;
  }

  sub_1DC28EB30(v19, &unk_1ECC7CA30, &qword_1DC522A00);
  v36 = v84;
LABEL_18:
  *(v36 + v81) = 0;

  if (*(v36 + qword_1EDAC7DA0))
  {

    sub_1DC517ACC();
  }

  sub_1DC517AAC();
  v63 = v79;
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  v69 = OUTLINED_FUNCTION_27_7();
  *(v36 + qword_1EDAC7D98) = sub_1DC315A04(v69, v70, v63, v71, v72);

LABEL_23:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2B3B7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC2B3BB4()
{
  sub_1DC2B3C0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DC2B3C0C()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionId;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_35();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionLocale;
  sub_1DC510C8C();
  OUTLINED_FUNCTION_35();
  (*(v4 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionStoreConversationHistoryProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionState));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterClient));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterExperimentController));

  return v0;
}

uint64_t sub_1DC2B3CFC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1DC2B3D44()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v1[1] = sub_1DC29F120;

  return sub_1DC2B3DC8();
}

uint64_t sub_1DC2B3DC8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = sub_1DC516F7C();
  v0[2] = v1;
  OUTLINED_FUNCTION_52(v1);
  v0[3] = v2;
  v0[4] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DC2B3E74()
{
  OUTLINED_FUNCTION_1_0();
  v1 = sub_1DC296704();
  v2 = *v1;
  v0[5] = *v1;
  v3 = (*v2 + 184) & 0xFFFFFFFFFFFFLL | 0xED9A000000000000;
  v0[6] = *(*v2 + 184);
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DC2B3F04, v2, 0);
}

uint64_t sub_1DC2B3F04()
{
  OUTLINED_FUNCTION_1_0();
  (*(v0 + 48))();

  v1 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x1EEE6DFA0](v1, v2, 0);
}

uint64_t sub_1DC2B3F70()
{
  type metadata accessor for ServiceStoreServiceKeyingFields(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1B8, &qword_1DC5271A0);
  OUTLINED_FUNCTION_0_43();
  sub_1DC2B3338(v0, v1, &unk_1DC527410);
  sub_1DC51764C();
  OUTLINED_FUNCTION_12_0();
  (*(v2 + 112))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1C0, qword_1DC5271A8);
  sub_1DC51764C();
  OUTLINED_FUNCTION_12_0();
  v4 = *(v3 + 136);

  return v4();
}

uint64_t sub_1DC2B4078(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_1DC2B41BC(uint64_t a1, uint64_t a2)
{
  v3 = qword_1ECC8F2B0;
  OUTLINED_FUNCTION_54_11(v2 + qword_1ECC8F2B0, a2);
  return *(v2 + v3);
}

uint64_t sub_1DC2B4238()
{
  sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v15 = OUTLINED_FUNCTION_74_4(v7, v8, v9, v10, v11, v12, v13, v14, *aBlock);
  v16(v15);
  v17 = (v5 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_224(v18);
  v20(v19);
  *(v18 + v17) = v1;
  OUTLINED_FUNCTION_27_5();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1DC2B4440;
  *(v21 + 24) = v18;
  v30 = sub_1DC292A1C;
  v31 = v21;
  OUTLINED_FUNCTION_69_5();
  v27 = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v28 = v22;
  v29 = &block_descriptor_41;
  v23 = _Block_copy(aBlock);

  dispatch_sync(v0, v23);
  _Block_release(v23);
  v24 = OUTLINED_FUNCTION_173(v21, "", 84, 383);

  if (v24)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC2B4458(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v2);
  OUTLINED_FUNCTION_21_10();
  v5 = *(v1 + v4);

  return a1(v1 + v3, v5);
}

void sub_1DC2B44E4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v101 = v6;
  v102 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v100 = v7;
  OUTLINED_FUNCTION_12();
  v8 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v99 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v93 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v91[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v94 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_1();
  v96 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v91[-v26];
  v103 = v10;
  v97 = *(v10 + 16);
  v98 = v4;
  v97(&v91[-v26], v4, v8);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v8);
  OUTLINED_FUNCTION_38_1();
  v32 = *(v31 + 464);
  v95 = v2;
  v32();
  v33 = *(v15 + 56);
  sub_1DC28F308(v27, v18, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28F308(v0, &v18[v33], &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_30_8(v18);
  if (v40)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v34, v35, v36);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v37, v38, v39);
    OUTLINED_FUNCTION_30_8(&v18[v33]);
    if (v40)
    {
      sub_1DC28EB30(v18, &unk_1ECC7CA30, &qword_1DC522A00);
LABEL_15:
      v85 = v94;
      v86 = OUTLINED_FUNCTION_27();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v8);
      OUTLINED_FUNCTION_38_1();
      (*(v89 + 472))(v85);
      sub_1DC292F48();
      OUTLINED_FUNCTION_38_1();
      (*(v90 + 848))();
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  sub_1DC28F308(v18, v96, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_30_8(&v18[v33]);
  if (v40)
  {
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v41, v42, v43);
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v44, v45, v46);
    v47 = OUTLINED_FUNCTION_205();
    v48(v47);
LABEL_9:
    sub_1DC28EB30(v18, &qword_1ECC7CE20, &unk_1DC523AC8);
    v50 = v100;
    v49 = v101;
    goto LABEL_10;
  }

  v71 = v103;
  (*(v103 + 32))(v93, &v18[v33], v8);
  OUTLINED_FUNCTION_2_11();
  sub_1DC293BE4(v72, v73, MEMORY[0x1E69695C8]);
  v92 = sub_1DC5176CC();
  v74 = *(v71 + 8);
  v75 = OUTLINED_FUNCTION_46_6();
  v74(v75);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v76, v77, v78);
  v79 = OUTLINED_FUNCTION_16();
  sub_1DC28EB30(v79, v80, &qword_1DC522A00);
  v81 = OUTLINED_FUNCTION_46_6();
  v74(v81);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v82, v83, v84);
  v50 = v100;
  v49 = v101;
  if (v92)
  {
    goto LABEL_15;
  }

LABEL_10:
  sub_1DC28D414();
  OUTLINED_FUNCTION_57_9();
  v51 = v102;
  v52(v50);
  v97(v99, v98, v8);
  v53 = sub_1DC516F6C();
  sub_1DC517BAC();
  OUTLINED_FUNCTION_182();
  if (os_log_type_enabled(v53, v54))
  {
    OUTLINED_FUNCTION_63();
    v55 = OUTLINED_FUNCTION_111();
    v104 = v55;
    *v0 = 136315138;
    OUTLINED_FUNCTION_2_11();
    sub_1DC293BE4(v56, v57, MEMORY[0x1E69695E0]);
    sub_1DC51823C();
    OUTLINED_FUNCTION_238();
    v58 = OUTLINED_FUNCTION_209();
    v59(v58, v8);
    v60 = OUTLINED_FUNCTION_12_3();
    v63 = sub_1DC291244(v60, v61, v62);

    *(v0 + 4) = v63;
    OUTLINED_FUNCTION_42_1();
    _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_31();

    (*(v49 + 8))(v50, v102);
  }

  else
  {

    v69 = OUTLINED_FUNCTION_209();
    v70(v69, v8);
    (*(v49 + 8))(v50, v51);
  }

LABEL_16:
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_133_0(uint64_t a1, uint64_t a2)
{

  return sub_1DC517E5C();
}

uint64_t OUTLINED_FUNCTION_20_6()
{

  return sub_1DC2DFCF4(v0, type metadata accessor for NLRouterOverride);
}

uint64_t OUTLINED_FUNCTION_20_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_10(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_20_17()
{

  return sub_1DC2C0F8C();
}

uint64_t sub_1DC2B4DD8()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DC2B4E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_155();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_50();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_54(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t objectdestroy_53Tm(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_0();

  v1 = OUTLINED_FUNCTION_50_9();
  v2(v1);

  v3 = OUTLINED_FUNCTION_177();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1DC2B5034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  objc_sync_exit(v9);

  a9.super_class = CDMClient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_1DC2B5284()
{
  sub_1DC2B52B8();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DC2B52B8()
{

  return v0;
}

uint64_t *marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x1E1297AD0](v7, 0x1050C80717B85FCLL);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x1E1297AD0](v4 - 8, 0x20C8093837F09);
  }

  return a1;
}

uint64_t *marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = *(v2 - 8);
    v4 = v2 - 8;
    v3 = v5;
    if (v5)
    {
      v6 = 8 * v3;
      do
      {
        v7 = *(v4 + v6);
        if (v7)
        {
          MEMORY[0x1E1297AD0](v7, 0x1000C8077774924);
        }

        v6 -= 8;
      }

      while (v6);
    }

    MEMORY[0x1E1297AD0](v4 - 8, 0x10C80436913F5);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_169_0(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DC516EFC(a1, a2, a3, a4, a5, v5, v6);
}

uint64_t OUTLINED_FUNCTION_169_1()
{

  return sub_1DC516F7C();
}

uint64_t sub_1DC2B55E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t objectdestroy_33Tm()
{
  sub_1DC510B6C();
  OUTLINED_FUNCTION_35();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1DC2B56C0()
{
  OUTLINED_FUNCTION_41_5();
  sub_1DC29120C();
  v1 = OUTLINED_FUNCTION_8_4();
  v2(v1);
  v3 = sub_1DC516F6C();
  v4 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_25_0(v4))
  {
    OUTLINED_FUNCTION_17_4();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_43_7(&dword_1DC287000, v5, v6, "Finished cleaning up NLRouterClient");
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  (*(v8 + 8))(v7, v9);

  OUTLINED_FUNCTION_2_2();

  return v10();
}

uint64_t sub_1DC2B57CC()
{
  if (qword_1ECC7FB80 != -1)
  {
    OUTLINED_FUNCTION_3_7(&qword_1ECC7FB80);
  }

  OUTLINED_FUNCTION_36_7(&qword_1ECC8F408, v1);
}

uint64_t sub_1DC2B5834()
{
  v1 = v0[5];
  v2 = v0[6];
  v0[6] = 0;
  v0[7] = 0;
  v0[5] = 0;
  return sub_1DC2B5848(v1, v2);
}

uint64_t sub_1DC2B5848(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_1DC2B5A6C()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceStateLogger();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC2B5AD4()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  if (result)
  {
    swift_getObjectType();
    sub_1DC517C9C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DC2B61A4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC2B629C()
{
  **(v0 + 16) = *(v0 + 74);
  OUTLINED_FUNCTION_2_2();
  return v1();
}

uint64_t sub_1DC2B62CC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_2_2();

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DC2B629C, 0, 0);
  }
}

uint64_t sub_1DC2B63E8()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_39_5();

  return v1();
}

id sub_1DC2B6444(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_17_19();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 16))(a1, v14, v15);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    (*(v9 + 32))(v13, v2, v7);
    v18 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    sub_1DC51094C();
    v19 = sub_1DC5176FC();

    v20 = [v18 contentsAtPath_];

    if (v20)
    {
      sub_1DC510A0C();

      v21 = objc_opt_self();
      OUTLINED_FUNCTION_41();
      v22 = sub_1DC5109EC();
      v48 = 0;
      v23 = [v21 propertyListWithData:v22 options:0 format:0 error:&v48];

      v24 = v48;
      if (v23)
      {
        sub_1DC517E8C();
        swift_unknownObjectRelease();
        sub_1DC2BAD90(v49, v50);
        sub_1DC291F78(v50, v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D990, &qword_1DC52A630);
        if (swift_dynamicCast())
        {
          v25 = OUTLINED_FUNCTION_41();
          sub_1DC2AD740(v25, v26);

          __swift_destroy_boxed_opaque_existential_1Tm(v50);
          (*(v9 + 8))(v13, v7);
          return v48;
        }

        sub_1DC517BAC();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v41 = sub_1DC296DBC();
        v42 = OUTLINED_FUNCTION_62_1();
        sub_1DC516F0C(v42, v43, v44, v45, 41, 2);
        v46 = OUTLINED_FUNCTION_41();
        sub_1DC2AD740(v46, v47);

        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        goto LABEL_11;
      }

      v33 = v24;
      v34 = sub_1DC51085C();

      swift_willThrow();
      sub_1DC517BAC();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v28 = sub_1DC296DBC();
      v35 = OUTLINED_FUNCTION_62_1();
      sub_1DC516F0C(v35, v36, v37, v38, 50, 2);
      v39 = OUTLINED_FUNCTION_41();
      sub_1DC2AD740(v39, v40);
    }

    else
    {
      sub_1DC517BAC();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v28 = sub_1DC296DBC();
      v29 = OUTLINED_FUNCTION_62_1();
      sub_1DC516F0C(v29, v30, v31, v32, 36, 2);
    }

LABEL_11:
    (*(v9 + 8))(v13, v7);
    return 0;
  }

  sub_1DC2AAF50(v2, &qword_1ECC7C950, &unk_1DC523CF0);
  v16 = sub_1DC517BAC();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v17 = sub_1DC296DBC();
  sub_1DC516F0C(v16, &dword_1DC287000, v17, "NLRouterMorphunConfig config not found", 38, 2, MEMORY[0x1E69E7CC0]);

  return 0;
}

id sub_1DC2B6910()
{
  v0 = [objc_opt_self() getSingletonCDMAssetsManager];

  return v0;
}

uint64_t sub_1DC2B6B04()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC2B6C04()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_39_5();

  return v2();
}

uint64_t sub_1DC2B6C64()
{
  OUTLINED_FUNCTION_37_4();
  if (v0[7])
  {
    OUTLINED_FUNCTION_28_11();
    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_1DC2B61A4;
    v2 = OUTLINED_FUNCTION_16_9();

    return v3(v2);
  }

  else
  {
    v5 = v0[2];
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v6 = sub_1DC296DBC();
    v7 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v7, v8, v9, v10, 73, 2);

    OUTLINED_FUNCTION_39_5();

    return v11();
  }
}

uint64_t sub_1DC2B6E10()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC2B6F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v13 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CF000]));
  v14 = v13;
  if (v13)
  {
    OUTLINED_FUNCTION_91_1(v13, sel_setExists_);
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E69CEFF8]) (v12 + 2936)];
  [v15 setEnded_];
  if (v15)
  {
    OUTLINED_FUNCTION_96_2();
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v16 = OUTLINED_FUNCTION_9_19();
    v17(v16);
    v18 = v15;
    v19 = OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_72_5(v19, sel_setTraceId_);
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) (v12 + 2936)];
  if (v20)
  {
    OUTLINED_FUNCTION_71_6([v20 setEventMetadata_], sel_setNlRouterSubComponentSetupContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    v21 = OUTLINED_FUNCTION_208();
    sub_1DC516F0C(v21, v22, v23, v24, 90, 2);

    OUTLINED_FUNCTION_49_10();
  }

  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_64_5();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_1DC2B70B4()
{
  OUTLINED_FUNCTION_1_0();
  v3 = OUTLINED_FUNCTION_84_3(v1, v2);
  v0[4] = v3;
  OUTLINED_FUNCTION_52(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_118();
  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC2B7150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC2B7168()
{
  OUTLINED_FUNCTION_37_4();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 80);
    v4 = v1;
    v6 = sub_1DC2B7588(v3 & 1, 0, v5);
    v7 = *v2;
    if (v6)
    {
      v8 = *(v7 + 200);
      v9 = v4;
      v27 = (v8 + *v8);
      v10 = swift_task_alloc();
      v11 = OUTLINED_FUNCTION_58_9(v10);
      *v11 = v12;
      v11[1] = sub_1DC2B6B04;
      v13 = OUTLINED_FUNCTION_33_12(*(v0 + 16));
      v14 = v27;
    }

    else
    {
      v22 = *(v7 + 208);
      v23 = v4;
      v28 = (v22 + *v22);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_77_4(v24);
      *v25 = v26;
      v25[1] = sub_1DC38DCC8;
      v13 = OUTLINED_FUNCTION_33_12(*(v0 + 16));
      v14 = v28;
    }

    return v14(v13);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v15 = sub_1DC296DBC();
    v16 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v16, v17, v18, v19, 108, 2);

    OUTLINED_FUNCTION_39_5();

    return v20();
  }
}

uint64_t sub_1DC2B7438@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC2B8140(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DC2B7464()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 73) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_2_2();

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DC2B7CB8, 0, 0);
  }
}

BOOL sub_1DC2B7588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DC2B814C(a1, a2, a3);
  sub_1DC5179EC();
  sub_1DC5179EC();
  return v5 == v4;
}

uint64_t sub_1DC2B7608(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_7(a1);
  v5 = *v2;
  v6 = v2[1];
  *v2 = a1;
  v2[1] = a2;
  return sub_1DC2A5760(v5, v6);
}

uint64_t sub_1DC2B7654(uint64_t a1, unint64_t a2)
{
  v40 = sub_1DC51072C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1DC51776C();
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v12 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v13 = sub_1DC5176FC();
  v14 = [v12 fileExistsAtPath_];

  if (!v14)
  {
    v15 = sub_1DC517BAC();
    sub_1DC297814();
    v16 = sub_1DC2A5914();
    if (os_log_type_enabled(v16, v15))
    {
      OUTLINED_FUNCTION_11();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v18 = swift_slowAlloc();
      v41 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1DC291244(a1, a2, &v41);
      _os_log_impl(&dword_1DC287000, v16, v15, "Override version file does not exist: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    return 0;
  }

  sub_1DC51775C();
  v41 = sub_1DC5176EC();
  v42 = v19;
  v20 = sub_1DC51071C();
  sub_1DC2A32B0(v20, v21, v22);
  v23 = sub_1DC517DDC();
  v39 = *(v5 + 8);
  v39(v9, v40);

  v25 = *(v23 + 16);
  if (!v25)
  {

LABEL_21:

    return 0;
  }

  v38 = v12;
  v26 = 0;
  v27 = (v23 + 40);
  while (1)
  {
    if (v26 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v28 = *v27;
    v41 = *(v27 - 1);
    v42 = v28;

    sub_1DC51070C();
    v29 = sub_1DC517E0C();
    v31 = v30;
    v39(v9, v40);

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v41 = v29;
      v42 = v31;
      v33 = sub_1DC517DEC();

      if (v33[2] == 2)
      {
        v34 = v33[4] == 0x6E6F6973726576 && v33[5] == 0xE700000000000000;
        if (v34 || (sub_1DC51825C() & 1) != 0)
        {
          break;
        }
      }
    }

    ++v26;
    v27 += 2;
    if (v25 == v26)
    {

      goto LABEL_21;
    }
  }

  if (v33[2] >= 2uLL)
  {
    v36 = v33[6];
    v37 = v33[7];

    v41 = v36;
    v42 = v37;
    sub_1DC5106FC();
    v35 = sub_1DC517E0C();

    v39(v9, v40);

    return v35;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DC2B7AEC()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_59_6();
    v25 = v1 + 328;
    v3 = v2;
    OUTLINED_FUNCTION_42_10(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25);
    v24 = (v11 + *v11);
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_58_9(v12);
    *v13 = v14;
    v13[1] = sub_1DC2B6E10;
    v15 = OUTLINED_FUNCTION_25_10();

    return v24(v15);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v17 = sub_1DC296DBC();
    v18 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v18, v19, v20, v21, 100, 2);

    OUTLINED_FUNCTION_39_5();

    return v22();
  }
}

uint64_t sub_1DC2B7C9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 80) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC2B7CB8(uint64_t a1)
{
  v22 = v1;
  v2 = sub_1DC517B9C();
  sub_1DC297814();
  v3 = sub_1DC296DBC();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v1 + 73);
    v5 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_1DC5183EC();
    v8 = sub_1DC291244(v6, v7, &v21);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = v4 & 1;
    *(v1 + 72) = v4 & 1;
    v10 = sub_1DC51777C();
    v12 = sub_1DC291244(v10, v11, &v21);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_1DC287000, v3, v2, "ServiceStore: ServiceSetupTask for %s. serviceSetupRepsonse: %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_67();
    MEMORY[0x1E1298840](v5, -1, -1);
  }

  else
  {
    v13 = *(v1 + 73);

    v9 = v13 & 1;
  }

  *(v1 + 74) = v9;
  v14 = mach_absolute_time();
  OUTLINED_FUNCTION_12_0();
  v20 = (*(v15 + 192) + **(v15 + 192));
  v16 = swift_task_alloc();
  *(v1 + 64) = v16;
  *v16 = v1;
  v16[1] = sub_1DC2B62CC;
  v18 = *(v1 + 40);
  v17 = *(v1 + 48);

  return v20(v18, v17, v14, v9);
}

uint64_t OUTLINED_FUNCTION_78_0()
{
}

uint64_t OUTLINED_FUNCTION_78_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_78_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_68_1()
{

  return sub_1DC2B8848(v4, v0, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_68_2(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_68_3()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 128), v0);
}

uint64_t OUTLINED_FUNCTION_68_5()
{
}

BOOL OUTLINED_FUNCTION_68_7()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_68_9(uint64_t a1, uint64_t a2)
{

  return sub_1DC51817C();
}

unint64_t sub_1DC2B814C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BC80;
  if (!qword_1ECC7BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC80);
  }

  return result;
}

void *sub_1DC2B81A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0A0, &qword_1DC5229A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0A8, &qword_1DC5229A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC2B834C(uint64_t result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DC2B83A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_16_7(a1);
  v7 = *v3;
  v8 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return sub_1DC2B834C(v7, v8);
}

void sub_1DC2B8404()
{
  OUTLINED_FUNCTION_33();
  v38[1] = v1;
  v2 = sub_1DC5108BC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - v11;
  v13 = sub_1DC5109BC();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v38 - v18;
  sub_1DC2A2428();
  OUTLINED_FUNCTION_2_6(v12);
  if (v20)
  {
    v21 = sub_1DC2A17A4(v12);
LABEL_7:
    v33 = 1;
    goto LABEL_8;
  }

  v22 = v12;
  v23 = *(v15 + 32);
  v23(v19, v22, v13);
  strcpy(v39, "version.yaml");
  v39[13] = 0;
  v40 = -5120;
  v24 = (*(v4 + 104))(v8, *MEMORY[0x1E6968F70], v2);
  sub_1DC2A32B0(v24, v25, v26);
  sub_1DC51099C();
  (*(v4 + 8))(v8, v2);
  v27 = [objc_opt_self() defaultManager];
  sub_1DC51095C();
  v28 = sub_1DC5176FC();

  v29 = [v27 fileExistsAtPath_];

  if (!v29)
  {
    v34 = sub_1DC517BAC();
    sub_1DC297814();
    v35 = sub_1DC296DBC();
    sub_1DC516F0C(v34, &dword_1DC287000, v35, "NLRouterOverrides asset version file does not exist", 51, 2, MEMORY[0x1E69E7CC0]);

    v36 = *(v15 + 8);
    v36(v0, v13);
    v37 = OUTLINED_FUNCTION_60();
    v21 = (v36)(v37);
    goto LABEL_7;
  }

  v30 = OUTLINED_FUNCTION_60();
  v31(v30);
  v32 = OUTLINED_FUNCTION_5_10();
  v21 = (v23)(v32);
  v33 = 0;
LABEL_8:
  OUTLINED_FUNCTION_12_8(v21, v33);
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_80_0()
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_80_1(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_80_3(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1DC2B8848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DC517CDC();

  return sub_1DC516F2C();
}

uint64_t OUTLINED_FUNCTION_156_0(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_156_1()
{
  *(v1 - 232) = v0;

  return sub_1DC51154C();
}

uint64_t sub_1DC2B8934(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation15NLRouterService_client;
  v4 = OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_142(v4, v5);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC2B8980()
{
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_63_6(float a1)
{
  *v2 = a1;

  return sub_1DC291244(v1, v3, (v4 - 96));
}

uint64_t OUTLINED_FUNCTION_63_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;

  return sub_1DC510B6C();
}

uint64_t OUTLINED_FUNCTION_63_9()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
}

BOOL OUTLINED_FUNCTION_63_10()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_63_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_207_1()
{

  return swift_slowAlloc();
}

void sub_1DC2B8BAC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v69 = v4 - v5;
  OUTLINED_FUNCTION_22();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v66 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v66 - v13;
  v15 = sub_1DC5109BC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v67 = v19 - v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  v68 = &v66 - v22;
  OUTLINED_FUNCTION_22();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v66 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v66 - v27;
  OUTLINED_FUNCTION_17_5();
  sub_1DC29D640();
  OUTLINED_FUNCTION_2_6(v14);
  if (!v29)
  {
    v40 = *(v17 + 32);
    v40(v28, v14, v15);
    sub_1DC517B9C();
    OUTLINED_FUNCTION_21_2();
    v41 = sub_1DC296DBC();
    v42 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v42, v43, v44, v45, 58, 2);

    v40(v1, v28, v15);
LABEL_10:
    v39 = 0;
    goto LABEL_11;
  }

  v66 = v17;
  sub_1DC2A17A4(v14);
  sub_1DC29D640();
  OUTLINED_FUNCTION_2_6(v12);
  if (!v29)
  {
    v46 = *(v66 + 32);
    v46(v26, v12, v15);
    sub_1DC517B9C();
    OUTLINED_FUNCTION_18_7();
    v47 = sub_1DC296DBC();
    v48 = OUTLINED_FUNCTION_9_7();
    sub_1DC516F0C(v48, v49, v50, v51, 52, 2);

    v46(v1, v26, v15);
    goto LABEL_10;
  }

  sub_1DC2A17A4(v12);
  v30 = objc_opt_self();
  v31 = [v30 getSingletonCDMAssetsManager];
  OUTLINED_FUNCTION_17_5();
  sub_1DC2A1B8C();

  OUTLINED_FUNCTION_2_6(v9);
  if (!v29)
  {
    v52 = *(v66 + 32);
    v53 = v68;
    v52(v68, v9, v15);
    sub_1DC517B9C();
    OUTLINED_FUNCTION_21_2();
    v54 = sub_1DC296DBC();
    v55 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v55, v56, v57, v58, 56, 2);

    v52(v1, v53, v15);
    goto LABEL_10;
  }

  sub_1DC2A17A4(v9);
  v32 = [v30 getSingletonCDMAssetsManager];
  v33 = v69;
  sub_1DC2A1B8C();

  OUTLINED_FUNCTION_2_6(v33);
  if (!v29)
  {
    v59 = *(v66 + 32);
    v60 = v67;
    v59(v67, v33, v15);
    sub_1DC517B9C();
    OUTLINED_FUNCTION_21_2();
    v61 = sub_1DC296DBC();
    v62 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v62, v63, v64, v65, 50, 2);

    v59(v1, v60, v15);
    goto LABEL_10;
  }

  sub_1DC2A17A4(v33);
  sub_1DC517BAC();
  OUTLINED_FUNCTION_21_2();
  v34 = sub_1DC296DBC();
  v35 = OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C(v35, v36, v37, v38, 26, 2);

  v39 = 1;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v1, v39, 1, v15);
  OUTLINED_FUNCTION_34();
}

void *sub_1DC2B90E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v153 = a8;
  v152 = a7;
  v180 = a5;
  v151 = a4;
  v150 = a3;
  v171 = a2;
  v163 = a1;
  v172 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v170 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v149 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14(&v147[-v17]);
  v164 = sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v159 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v21);
  v22 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v173 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_62();
  v160 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v147[-v30];
  v32 = OUTLINED_FUNCTION_229();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_53();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v147[-v39];
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v147[-v42];
  v44 = *v8;
  v45 = *(*v8 + class metadata base offset for NLBridge + 96);
  v169 = v8;
  v157 = v44 + class metadata base offset for NLBridge + 96;
  v156 = v45;
  (v45)(v41);
  v46 = v173;
  v47 = *(v173 + 16);
  v166 = v173 + 16;
  v165 = v47;
  v47(v40, v180, v22);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v22);
  v51 = *(v28 + 56);
  sub_1DC28F414(v43, v31, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28F414(v40, &v31[v51], &unk_1ECC7CA30, &qword_1DC522A00);
  if (OUTLINED_FUNCTION_69_0(v31) == 1)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v52, v53, v54);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v55, v56, v57);
    v58 = OUTLINED_FUNCTION_69_0(&v31[v51]);
    v59 = v169;
    if (v58 == 1)
    {
      sub_1DC28EB30(v31, &unk_1ECC7CA30, &qword_1DC522A00);
      OUTLINED_FUNCTION_30_11();
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_1DC28F414(v31, v9, &unk_1ECC7CA30, &qword_1DC522A00);
  if (OUTLINED_FUNCTION_69_0(&v31[v51]) == 1)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v60, v61, v62);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v63, v64, v65);
    (*(v46 + 8))(v9, v22);
LABEL_6:
    sub_1DC28EB30(v31, &qword_1ECC7CE20, &unk_1DC523AC8);
    OUTLINED_FUNCTION_30_11();
LABEL_7:
    sub_1DC28D414();
    OUTLINED_FUNCTION_57_9();
    v66 = v168;
    v67(v168);
    v68 = v167;
    OUTLINED_FUNCTION_16_8();
    v69();
    v70 = v171;

    v71 = sub_1DC516F6C();
    v72 = sub_1DC517BAC();

    if (os_log_type_enabled(v71, v72))
    {
      OUTLINED_FUNCTION_19_3();
      v73 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v179 = v180;
      *v73 = 136315650;
      v74 = v158;
      v156();
      if (OUTLINED_FUNCTION_69_0(v74))
      {
        sub_1DC28EB30(v74, &unk_1ECC7CA30, &qword_1DC522A00);
        v75 = 0xE300000000000000;
        v76 = 7104878;
        v77 = v173;
      }

      else
      {
        v111 = v160;
        OUTLINED_FUNCTION_16_8();
        v112();
        sub_1DC28EB30(v74, &unk_1ECC7CA30, &qword_1DC522A00);
        v76 = sub_1DC510B1C();
        v75 = v113;
        v77 = v173;
        (*(v173 + 8))(v111, v22);
      }

      v114 = sub_1DC291244(v76, v75, &v179);

      *(v73 + 4) = v114;
      *(v73 + 12) = 2080;
      OUTLINED_FUNCTION_0_33();
      sub_1DC2917D0(v115, v116, MEMORY[0x1E69695E0]);
      v117 = v167;
      sub_1DC51823C();
      (*(v77 + 8))(v117, v22);
      v118 = OUTLINED_FUNCTION_229();
      v121 = sub_1DC291244(v118, v119, v120);

      *(v73 + 14) = v121;
      *(v73 + 22) = 2080;
      *(v73 + 24) = sub_1DC291244(v163, v171, &v179);
      _os_log_impl(&dword_1DC287000, v71, v72, "Request does not belong to current session id: %s, request session id: %s for request id: %s", v73, 0x20u);
      v70 = v180;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();

      v78 = v40[1](v168, v172);
    }

    else
    {

      (*(v173 + 8))(v68, v22);
      v78 = v40[1](v66, v43);
    }

    sub_1DC388468(v78, v79, v80);
    swift_allocError();
    *v122 = 0;
    goto LABEL_22;
  }

  v81 = v160;
  (*(v46 + 32))(v160, &v31[v51], v22);
  OUTLINED_FUNCTION_0_33();
  sub_1DC2917D0(v82, v83, MEMORY[0x1E69695C8]);
  v148 = sub_1DC5176CC();
  v84 = *(v46 + 8);
  v84(v81, v22);
  sub_1DC28EB30(v40, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28EB30(v43, &unk_1ECC7CA30, &qword_1DC522A00);
  v84(v9, v22);
  sub_1DC28EB30(v31, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_30_11();
  v59 = v169;
  if ((v148 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  v85 = v161;
  (*(*v59 + class metadata base offset for NLBridge + 264))();
  v86 = v164;
  if (__swift_getEnumTagSinglePayload(v85, 1, v164) == 1)
  {
    sub_1DC28EB30(v85, &qword_1ECC7D010, &qword_1DC5263B0);
    sub_1DC28D414();
    OUTLINED_FUNCTION_57_9();
    v87 = OUTLINED_FUNCTION_56_11();
    v88(v87);
    v70 = sub_1DC516F6C();
    sub_1DC517BAC();
    v89 = OUTLINED_FUNCTION_24_8();
    if (os_log_type_enabled(v89, v90))
    {
      OUTLINED_FUNCTION_17_4();
      v91 = swift_slowAlloc();
      *v91 = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v92, v93, v94, v95, v91, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v96 = v40[1](v22, v43);
    sub_1DC388468(v96, v97, v98);
    swift_allocError();
    *v99 = 1;
LABEL_22:
    swift_willThrow();
    return v70;
  }

  v100 = v159;
  v101 = v85;
  v102 = v162;
  v103 = (*(v159 + 32))(v162, v101, v86);
  (*(*v59 + class metadata base offset for NLBridge + 120))(&v177, v103);
  if (v178)
  {
    sub_1DC28F9B0(&v177, &v179);
    OUTLINED_FUNCTION_16_8();
    v104();
    v180 = sub_1DC516AAC();
    v173 = v105;
    sub_1DC516A8C();
    v172 = sub_1DC516A7C();
    v106 = sub_1DC28FB9C(&v179, v175);
    v170 = (*(*v59 + class metadata base offset for NLBridge + 144))(v106);
    (*(*v59 + class metadata base offset for NLBridge + 168))(v174);
    v107 = (*(v100 + 16))(v155, v102, v86);
    v108 = (*(*v59 + class metadata base offset for NLBridge + 288))(v107);
    if (v108)
    {
      v109 = v108;
      v110 = sub_1DC5151FC();
    }

    else
    {
      v110 = 0;
    }

    type metadata accessor for NLRequestProcessor(0);
    v137 = v59;
    v138 = (*(*v59 + class metadata base offset for NLBridge + 312))();
    v140 = v139;
    v141 = (*(*v137 + class metadata base offset for NLBridge + 240))();
    v142 = (*(*v137 + class metadata base offset for NLBridge + 336))();
    v143 = (*(*v137 + class metadata base offset for NLBridge + 360))();
    v144 = v153;

    v145 = v171;

    OUTLINED_FUNCTION_53_10(v176);

    sub_1DC2BC120(v150, &unk_1ECC8F000, v154, v163, v145, v152, v144, v180, v173, &v177, v172, v175, v170, v174, v155, v110, v138, v140, v141 & 1, v142, v143);
    v70 = v146;
    __swift_destroy_boxed_opaque_existential_1Tm(&v179);
    (*(v159 + 8))(v162, v164);
  }

  else
  {
    sub_1DC28EB30(&v177, &qword_1ECC7C928, &qword_1DC523AB8);
    sub_1DC28D414();
    OUTLINED_FUNCTION_57_9();
    v124 = OUTLINED_FUNCTION_56_11();
    v125(v124);
    v70 = sub_1DC516F6C();
    sub_1DC517BAC();
    v126 = OUTLINED_FUNCTION_24_8();
    if (os_log_type_enabled(v126, v127))
    {
      OUTLINED_FUNCTION_17_4();
      v128 = swift_slowAlloc();
      *v128 = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v129, v130, v131, v132, v128, 2u);
      v100 = v159;
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v133 = v40[1](v22, v43);
    sub_1DC388468(v133, v134, v135);
    swift_allocError();
    *v136 = 2;
    swift_willThrow();
    (*(v100 + 8))(v162, v86);
  }

  return v70;
}

void *sub_1DC2BA0D8(uint64_t a1, uint64_t a2)
{
  v3 = qword_1ECC8F2B8;
  OUTLINED_FUNCTION_54_11(v2 + qword_1ECC8F2B8, a2);
  v4 = *(v2 + v3);
  v5 = v4;
  return v4;
}

uint64_t type metadata accessor for NLRequestProcessor(uint64_t a1)
{
  result = qword_1ECC82CD8;
  if (!qword_1ECC82CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DC2BA164()
{
  v1 = (v0 + qword_1ECC8F2D0);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1DC2BA1C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DC2BA20C()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19_9();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_22_4(27);
  sub_1DC29D640();
  OUTLINED_FUNCTION_2_6(v2);
  if (!v15)
  {
    v23 = OUTLINED_FUNCTION_26_3();
    v4(v23);
    sub_1DC517B9C();
    OUTLINED_FUNCTION_18_7();
    v24 = sub_1DC296DBC();
    v25 = OUTLINED_FUNCTION_9_7();
    sub_1DC516F0C(v25, v26, v27, v28, 48, 2);

    v29 = (v4)(v6, v1, v10);
LABEL_6:
    v22 = 0;
    goto LABEL_7;
  }

  sub_1DC2A17A4(v2);
  v16 = [objc_opt_self() getSingletonCDMAssetsManager];
  OUTLINED_FUNCTION_22_4(27);
  sub_1DC2A1B8C();

  OUTLINED_FUNCTION_2_6(v0);
  if (!v15)
  {
    v30 = *(v12 + 32);
    OUTLINED_FUNCTION_26_1();
    v30();
    v31 = sub_1DC517B9C();
    sub_1DC297814();
    v32 = sub_1DC296DBC();
    sub_1DC516F0C(v31, &dword_1DC287000, v32, "NLRouterMorphunConfig Loads from Asset Manager", 46, 2, MEMORY[0x1E69E7CC0]);

    v33 = OUTLINED_FUNCTION_5_10();
    v29 = (v30)(v33);
    goto LABEL_6;
  }

  sub_1DC2A17A4(v0);
  sub_1DC517BAC();
  OUTLINED_FUNCTION_18_7();
  v17 = sub_1DC296DBC();
  v18 = OUTLINED_FUNCTION_9_7();
  sub_1DC516F0C(v18, v19, v20, v21, 30, 2);

  v22 = 1;
LABEL_7:
  OUTLINED_FUNCTION_12_8(v29, v22);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2BA538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeuristicAgentKeywords(0);
  OUTLINED_FUNCTION_35();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  sub_1DC51094C();
  v12 = sub_1DC5176FC();

  v13 = [v11 contentsAtPath_];

  if (v13)
  {
    v35 = a2;
    sub_1DC510A0C();

    sub_1DC51080C();
    swift_allocObject();
    sub_1DC5107FC();
    sub_1DC2BB448();
    sub_1DC5107EC();
    sub_1DC510C8C();
    OUTLINED_FUNCTION_11_0();
    (*(v20 + 24))(v10, a1);
    v21 = sub_1DC517B9C();
    sub_1DC297814();
    v34 = sub_1DC2BE518();
    if (os_log_type_enabled(v34, v21))
    {
      v23 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36[0] = v33;
      *v23 = 136315138;
      swift_beginAccess();
      OUTLINED_FUNCTION_0_57();
      sub_1DC2BBA38(v10, v8, v24);
      v25 = sub_1DC51777C();
      v27 = v21;
      v28 = sub_1DC291244(v25, v26, v36);

      *(v23 + 4) = v28;
      v29 = v27;
      v30 = v34;
      _os_log_impl(&dword_1DC287000, v34, v29, "Heuristics AgentKeywords asset loaded: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      OUTLINED_FUNCTION_22_16();
    }

    else
    {

      OUTLINED_FUNCTION_22_16();
    }

    swift_beginAccess();
    OUTLINED_FUNCTION_0_57();
    v31 = v35;
    sub_1DC2BBA38(v10, v35, v32);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v4);
    return sub_1DC2BBAF0(v10);
  }

  else
  {
    v14 = sub_1DC517BAC();
    sub_1DC297814();
    v15 = sub_1DC2BE518();
    sub_1DC516F0C(v14, &dword_1DC287000, v15, "Heuristics AgentKeywords file couldn't be read", 46, 2, MEMORY[0x1E69E7CC0]);

    OUTLINED_FUNCTION_19();

    return __swift_storeEnumTagSinglePayload(v16, v17, v18, v4);
  }
}

unint64_t sub_1DC2BA9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BC68;
  if (!qword_1ECC7BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC68);
  }

  return result;
}

uint64_t sub_1DC2BAA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1DC5109BC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  type metadata accessor for NLRouterAssetsUtils();
  v14 = sub_1DC2B8400();
  sub_1DC2BE13C();

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1DC28EB30(v6, &qword_1ECC7C950, &unk_1DC523CF0);
    v15 = sub_1DC517BAC();
    sub_1DC297814();
    v16 = sub_1DC2BE518();
    sub_1DC516F0C(v15, &dword_1DC287000, v16, "Heuristics AgentKeywords asset config not found", 47, 2, MEMORY[0x1E69E7CC0]);

    type metadata accessor for HeuristicAgentKeywords(0);
    OUTLINED_FUNCTION_19();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  else
  {
    (*(v9 + 32))(v13, v6, v7);
    sub_1DC2BA538(a1, a2);
    return (*(v9 + 8))(v13, v7);
  }
}

void sub_1DC2BAC2C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (qword_1ECC8F3F8)
  {
    v4 = sub_1DC517B9C();
    sub_1DC297814();
    v5 = sub_1DC296DBC();
    sub_1DC516F0C(v4, &dword_1DC287000, v5, "HeuristicRulesConfigurationAsset was already loaded", 51, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    qword_1ECC8F3F8 = sub_1DC2BBBF0(a1, a2);
  }
}

id sub_1DC2BACF4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DC51090C();
  v4 = [v2 initWithURL_];

  v5 = sub_1DC5109BC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

_OWORD *sub_1DC2BAD90(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_1DC2BADA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DC2AEB04(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1DC291F78(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1DC2BAE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DC510E4C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_31_1();
  v14 = a1 == 0xD000000000000012 && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_3_37(0xD000000000000012) & 1) != 0)
  {

    v15 = MEMORY[0x1E69B28C0];
LABEL_7:
    (*(v8 + 104))(v12, *v15, v6);
    (*(v8 + 32))(a3, v12, v6);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }

  v17 = a1 == 0x7361437265776F4CLL && a2 == 0xE900000000000065;
  if (v17 || (OUTLINED_FUNCTION_3_37(0x7361437265776F4CLL) & 1) != 0)
  {

    v15 = MEMORY[0x1E69B28F8];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v19 = a1 == 0xD00000000000001FLL && v18 == a2;
  if (v19 || (OUTLINED_FUNCTION_3_37(0xD00000000000001FLL) & 1) != 0)
  {

    v15 = MEMORY[0x1E69B28F0];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v21 = a1 == 0xD000000000000013 && v20 == a2;
  if (v21 || (OUTLINED_FUNCTION_3_37(0xD000000000000013) & 1) != 0)
  {

    v15 = MEMORY[0x1E69B28C8];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v23 = a1 == 0xD000000000000010 && v22 == a2;
  if (v23 || (OUTLINED_FUNCTION_3_37(0xD000000000000010) & 1) != 0)
  {

    v15 = MEMORY[0x1E69B28A8];
    goto LABEL_7;
  }

  v24 = a1 == 0x7A696C616D726F4ELL && a2 == 0xEE007364726F5765;
  if (v24 || (OUTLINED_FUNCTION_3_37(0x7A696C616D726F4ELL) & 1) != 0)
  {

    v15 = MEMORY[0x1E69B2898];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v26 = a1 == 0xD000000000000014 && v25 == a2;
  if (v26 || (OUTLINED_FUNCTION_3_37(0xD000000000000014) & 1) != 0)
  {

    v15 = MEMORY[0x1E69B28D8];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v28 = a1 == 0xD000000000000011 && v27 == a2;
  if (v28 || (OUTLINED_FUNCTION_3_37(0xD000000000000011) & 1) != 0)
  {

    v15 = MEMORY[0x1E69B28B8];
    goto LABEL_7;
  }

  v29 = a1 == 0x745365766F6D6552 && a2 == 0xEF7364726F57706FLL;
  if (v29 || (OUTLINED_FUNCTION_3_37(0x745365766F6D6552) & 1) != 0)
  {

    v15 = MEMORY[0x1E69B28A0];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v31 = a1 == 0xD00000000000001ALL && v30 == a2;
  if (v31 || (OUTLINED_FUNCTION_3_37(0xD00000000000001ALL) & 1) != 0)
  {

    v15 = MEMORY[0x1E69B28E0];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v33 = a1 == 0xD000000000000013 && v32 == a2;
  if (v33 || (OUTLINED_FUNCTION_3_37(0xD000000000000013) & 1) != 0)
  {

    v15 = MEMORY[0x1E69B28D0];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  v35 = a1 == 0xD000000000000010 && v34 == a2;
  if (v35 || (OUTLINED_FUNCTION_3_37(0xD000000000000010) & 1) != 0)
  {

    v15 = MEMORY[0x1E69B28B0];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_1();
  if (a1 == 0xD00000000000001BLL && v36 == a2)
  {

    goto LABEL_83;
  }

  v38 = OUTLINED_FUNCTION_3_37(0xD00000000000001BLL);

  if (v38)
  {
LABEL_83:
    v15 = MEMORY[0x1E69B28E8];
    goto LABEL_7;
  }

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
}

void *sub_1DC2BB260(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1DC2BB34C(v8, v7);
  v10 = *(sub_1DC510E4C() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC455D00(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1DC2BB34C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7E008, &qword_1DC52F0A8);
  v4 = *(sub_1DC510E4C() - 8);
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

unint64_t sub_1DC2BB448()
{
  result = qword_1ECC7BC50;
  if (!qword_1ECC7BC50)
  {
    type metadata accessor for HeuristicAgentKeywords(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC50);
  }

  return result;
}

uint64_t sub_1DC2BB4A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D900, &unk_1DC529D78);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for HeuristicAgentKeywords(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  sub_1DC510C4C();
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC2BA9E0(v10, v11, v12);
  sub_1DC51834C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1DC510C8C();
    OUTLINED_FUNCTION_35();
    return (*(v13 + 8))(v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
    sub_1DC2BB778();
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_5_33();
    sub_1DC51814C();
    *(v9 + v5[5]) = v20;
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_5_33();
    sub_1DC51814C();
    *(v9 + v5[6]) = v20;
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_5_33();
    sub_1DC5180EC();
    if (v20)
    {
      v15 = v20;
    }

    else
    {
      v15 = &unk_1F57FC7D8;
    }

    v16 = OUTLINED_FUNCTION_4_34();
    v17(v16);
    *(v9 + v5[7]) = v15;
    OUTLINED_FUNCTION_0_57();
    sub_1DC2BBA38(v9, a2, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1DC2BBAF0(v9);
  }
}

unint64_t sub_1DC2BB778()
{
  result = qword_1ECC7B9E8;
  if (!qword_1ECC7B9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7C130, &unk_1DC5240F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7B9E8);
  }

  return result;
}

uint64_t sub_1DC2BB7FC(char a1)
{
  if (!a1)
  {
    return 0x6D614E746E656741;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD00000000000001DLL;
}

_BYTE *storeEnumTagSinglePayload for HeuristicAgentKeywords.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DC2BB928);
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

uint64_t getEnumTagSinglePayload for CDMPersonaError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1DC2BB9D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_35();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DC2BBA38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_11_0();
  v4 = OUTLINED_FUNCTION_43();
  v5(v4);
  return a2;
}

uint64_t sub_1DC2BBA90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_35();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DC2BBAF0(uint64_t a1)
{
  v2 = type metadata accessor for HeuristicAgentKeywords(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC2BBB4C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_1_22(v1, v2);
  sub_1DC43F2D0();
  return swift_endAccess();
}

uint64_t sub_1DC2BBBB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NLRouterAssetsUtils();
  result = sub_1DC2BA4FC();
  a1[3] = v2;
  a1[4] = &off_1F57FCFA0;
  *a1 = result;
  return result;
}

id sub_1DC2BBBF0(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34[-v5];
  v7 = sub_1DC5109BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 8))(a1, v11, v12);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    sub_1DC51094C();
    v14 = sub_1DC5176FC();

    v15 = [v13 contentsAtPath_];

    if (v15)
    {
      sub_1DC510A0C();

      v16 = objc_opt_self();
      OUTLINED_FUNCTION_16();
      v17 = sub_1DC5109EC();
      v35 = 0;
      v18 = [v16 propertyListWithData:v17 options:0 format:0 error:&v35];

      v19 = v35;
      if (v18)
      {
        sub_1DC517E8C();
        swift_unknownObjectRelease();
        sub_1DC2BAD90(&v36, v38);
        sub_1DC291F78(v38, &v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D990, &qword_1DC52A630);
        if (OUTLINED_FUNCTION_0_61())
        {
          sub_1DC2BADA0(0x6974736972756548, 0xEF73656C75527363, v35, &v36);

          if (v37)
          {
            if (OUTLINED_FUNCTION_0_61())
            {
              v20 = OUTLINED_FUNCTION_16();
              sub_1DC2AD740(v20, v21);
              __swift_destroy_boxed_opaque_existential_1Tm(v38);
              (*(v8 + 8))(v10, v7);
              return v35;
            }
          }

          else
          {
            sub_1DC2BE530(&v36, &qword_1ECC7D3F0, &qword_1DC5238B0);
          }
        }

        v30 = sub_1DC517BAC();
        sub_1DC297814();
        v31 = sub_1DC296DBC();
        sub_1DC516F0C(v30, &dword_1DC287000, v31, "NLRouterHeuristicRulesConfig is not a dictionary", 48, 2, MEMORY[0x1E69E7CC0]);
        v32 = OUTLINED_FUNCTION_16();
        sub_1DC2AD740(v32, v33);

        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        goto LABEL_14;
      }

      v25 = v19;
      v26 = sub_1DC51085C();

      swift_willThrow();
      v27 = sub_1DC517BAC();
      sub_1DC297814();
      v24 = sub_1DC296DBC();
      sub_1DC516F0C(v27, &dword_1DC287000, v24, "NLRouterHeuristicRulesConfig is not a valid property list", 57, 2, MEMORY[0x1E69E7CC0]);
      v28 = OUTLINED_FUNCTION_16();
      sub_1DC2AD740(v28, v29);
    }

    else
    {
      v23 = sub_1DC517BAC();
      sub_1DC297814();
      v24 = sub_1DC296DBC();
      sub_1DC516F0C(v23, &dword_1DC287000, v24, "Failed to load NLRouterHeuristicRulesConfig", 43, 2, MEMORY[0x1E69E7CC0]);
    }

LABEL_14:
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  sub_1DC2BE530(v6, &qword_1ECC7C950, &unk_1DC523CF0);
  return 0;
}

uint64_t sub_1DC2BC0D0(uint64_t a1, uint64_t a2)
{
  v3 = qword_1ECC8F2E8;
  OUTLINED_FUNCTION_54_11(v2 + qword_1ECC8F2E8, a2);
  return *(v2 + v3);
}

__n128 sub_1DC2BC120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21)
{
  swift_allocObject();
  LOBYTE(v26) = a19;
  sub_1DC2BC1F8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v26, a20, a21, v27, a15, a16, a13, a14, a11, a12, a9, a10, v28, a5, a6);
  return result;
}

void sub_1DC2BC1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_33();
  v35 = v33;
  v53 = v36;
  v52 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  sub_1DC515E1C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  sub_1DC51617C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  *(v33 + qword_1ECC8F5C0) = 0;
  *(v33 + qword_1ECC8F5B0) = 0;
  *(v33 + qword_1ECC8F5A8) = 0;
  *(v33 + _MergedGlobals_18) = 0;
  *(v33 + qword_1ECC8F5B8) = 0;
  sub_1DC28FB9C(a26, v33 + qword_1ECC7BCF0);
  sub_1DC28FB9C(a24, v33 + qword_1ECC8F5D8);
  *(v33 + qword_1EDAC95A0) = a25;
  v48 = qword_1ECC8F5D0;
  v49 = sub_1DC5162DC();
  v50 = *(v49 - 8);
  (*(v50 + 16))(v35 + v48, a27, v49);
  *(v35 + qword_1ECC8F5E8) = a28;
  *(v35 + qword_1EDAC95A8) = a31;
  type metadata accessor for NLRequestTimeoutTimerManager();

  *(v35 + qword_1ECC8F5A0) = sub_1DC2BC578();
  v51 = (v35 + qword_1EDAC95B0);
  *v51 = a29;
  v51[1] = a30;
  *(v35 + qword_1ECC8F5F8) = a32;
  *(v35 + qword_1ECC8F5F0) = a33;
  (*(v38 + 16))(v34, v53, v52);
  sub_1DC28FB9C(a22, &v54);
  sub_1DC51698C();

  (*(v50 + 8))(a27, v49);
  __swift_destroy_boxed_opaque_existential_1Tm(a26);
  __swift_destroy_boxed_opaque_existential_1Tm(a24);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  (*(v38 + 8))(v53, v52);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2BC578()
{
  OUTLINED_FUNCTION_27_5();
  v0 = swift_allocObject();
  sub_1DC2BC5AC();
  return v0;
}

uint64_t sub_1DC2BC5AC()
{
  v1 = sub_1DC517BCC();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v2 = sub_1DC517BEC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1DC5173CC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_1();
  sub_1DC298C74(0, &qword_1ECC7B9A0, 0x1E698D278);
  *(v0 + 24) = sub_1DC51764C();
  sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
  sub_1DC5173AC();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8098], v2);
  sub_1DC2BC840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD20, &qword_1DC525300);
  sub_1DC2BC7DC();
  sub_1DC517E9C();
  *(v0 + 16) = sub_1DC517C1C();
  return v0;
}

unint64_t sub_1DC2BC7DC()
{
  result = qword_1EDAC7FB0;
  if (!qword_1EDAC7FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC7CD20, &qword_1DC525300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC7FB0);
  }

  return result;
}

unint64_t sub_1DC2BC840()
{
  result = qword_1EDAC7FA8;
  if (!qword_1EDAC7FA8)
  {
    sub_1DC517BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC7FA8);
  }

  return result;
}

void sub_1DC2BC898()
{
  OUTLINED_FUNCTION_70_11();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_0();
  v5 = *MEMORY[0x1E69D0538];
  v6 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35();
  (*(v7 + 104))(v1, v5, v6);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  OUTLINED_FUNCTION_38_1();
  (*(v11 + qword_1ECC8F590 + 168))(v1);
  sub_1DC28D414();
  v12 = OUTLINED_FUNCTION_21_1();
  v13(v12);
  v14 = v0;
  v15 = sub_1DC516F6C();
  sub_1DC517B9C();

  if (OUTLINED_FUNCTION_169())
  {
    OUTLINED_FUNCTION_63();
    v16 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_54_15(v16, 5.7779e-34);
    OUTLINED_FUNCTION_52_14(&dword_1DC287000, v17, v18, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v16, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_67();
  }

  v19 = OUTLINED_FUNCTION_36();
  v20(v19);
  OUTLINED_FUNCTION_154();
}

uint64_t OUTLINED_FUNCTION_83_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_83_2(uint64_t a1)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_83_3(void *a1)
{

  return [a1 init];
}

uint64_t OUTLINED_FUNCTION_83_5()
{

  return swift_slowAlloc();
}

void sub_1DC2BCB50()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19_9();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_22_4(34);
  sub_1DC29D640();
  OUTLINED_FUNCTION_2_6(v2);
  if (!v15)
  {
    v23 = OUTLINED_FUNCTION_26_3();
    v4(v23);
    sub_1DC517B9C();
    OUTLINED_FUNCTION_18_7();
    v24 = sub_1DC296DBC();
    v25 = OUTLINED_FUNCTION_9_7();
    sub_1DC516F0C(v25, v26, v27, v28, 55, 2);

    v29 = (v4)(v6, v1, v10);
LABEL_6:
    v22 = 0;
    goto LABEL_7;
  }

  sub_1DC2A17A4(v2);
  v16 = [objc_opt_self() getSingletonCDMAssetsManager];
  OUTLINED_FUNCTION_22_4(34);
  sub_1DC2A1B8C();

  OUTLINED_FUNCTION_2_6(v0);
  if (!v15)
  {
    v30 = *(v12 + 32);
    OUTLINED_FUNCTION_26_1();
    v30();
    v31 = sub_1DC517B9C();
    sub_1DC297814();
    v32 = sub_1DC296DBC();
    sub_1DC516F0C(v31, &dword_1DC287000, v32, "NLRouterHeuristicRulesConfig Loads from Asset Manager", 53, 2, MEMORY[0x1E69E7CC0]);

    v33 = OUTLINED_FUNCTION_5_10();
    v29 = (v30)(v33);
    goto LABEL_6;
  }

  sub_1DC2A17A4(v0);
  sub_1DC517BAC();
  OUTLINED_FUNCTION_18_7();
  v17 = sub_1DC296DBC();
  v18 = OUTLINED_FUNCTION_9_7();
  sub_1DC516F0C(v18, v19, v20, v21, 37, 2);

  v22 = 1;
LABEL_7:
  OUTLINED_FUNCTION_12_8(v29, v22);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2BCE44(char a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = 5;

    return sub_1DC29F950(v3);
  }

  if (a1 == 3)
  {
    v3 = 2;

    return sub_1DC29F950(v3);
  }

  if (a1 != 1)
  {
    return 1;
  }

  if (sub_1DC2BCEFC())
  {
    v3 = 3;

    return sub_1DC29F950(v3);
  }

  return 0;
}

uint64_t sub_1DC2BCEFC()
{
  v224 = sub_1DC510BDC();
  OUTLINED_FUNCTION_0();
  v228 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v221 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED0, qword_1DC52A730);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_1();
  v210 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_1();
  v214 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_1();
  v222 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_1();
  v218 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  v226 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v201 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED8, &qword_1DC522250);
  MEMORY[0x1EEE9AC00](v23 - 8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  v209 = v26;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23_1();
  v223 = v28;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_1();
  v212 = v31;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23_1();
  v227 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_1();
  v213 = v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_1();
  v225 = v37;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23_1();
  v215 = v39;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_23_1();
  v211 = v41;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23_1();
  v217 = v43;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_23_1();
  v220 = v45;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  v219 = v47;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23_1();
  v216 = v49;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_52_2();
  v52 = MEMORY[0x1EEE9AC00](v51);
  v54 = &v201 - v53;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_36_0();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v201 - v56;
  v58 = sub_1DC510C6C();
  OUTLINED_FUNCTION_0();
  v60 = v59;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_1();
  v64 = v63 - v62;
  sub_1DC510C7C();
  sub_1DC510C5C();
  (*(v60 + 8))(v64, v58);
  v65 = v224;
  sub_1DC510BCC();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v65);
  v229 = v6;
  v66 = *(v6 + 48);
  v67 = OUTLINED_FUNCTION_45_0();
  sub_1DC2BE044(v67, v68);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_3_0(v22);
  if (!v71)
  {
    v69 = OUTLINED_FUNCTION_41();
    sub_1DC2BE044(v69, v70);
    OUTLINED_FUNCTION_3_0(&v22[v66]);
    if (!v71)
    {
      v87 = v57;
      OUTLINED_FUNCTION_20_4();
      v88 = OUTLINED_FUNCTION_19_4();
      v89(v88);
      v90 = sub_1DC2BE0B4();
      LODWORD(v202) = OUTLINED_FUNCTION_29(v90);
      v91 = *(v57 + 1);
      v91(v64, v66);
      sub_1DC28EB30(v1, &qword_1ECC7BED8, &qword_1DC522250);
      v91(v54, v66);
      v57 = v87;
      v65 = v66;
      sub_1DC28EB30(v22, &qword_1ECC7BED8, &qword_1DC522250);
      v74 = v227;
      v75 = v225;
      if (v202)
      {
        goto LABEL_25;
      }

LABEL_10:
      sub_1DC510BCC();
      OUTLINED_FUNCTION_6_0(v0);
      v76 = v226;
      sub_1DC2BE044(v0, v226);
      sub_1DC2BE044(v57, v76 + v66);
      OUTLINED_FUNCTION_3_0(v76);
      if (v71)
      {
        sub_1DC28EB30(v0, &qword_1ECC7BED8, &qword_1DC522250);
        OUTLINED_FUNCTION_3_0(v76 + v66);
        v78 = v222;
        v77 = v223;
        v79 = v220;
        if (v71)
        {
          v80 = v226;
LABEL_68:
          sub_1DC28EB30(v80, &qword_1ECC7BED8, &qword_1DC522250);
          goto LABEL_69;
        }
      }

      else
      {
        v81 = v216;
        sub_1DC2BE044(v76, v216);
        OUTLINED_FUNCTION_3_0(v76 + v66);
        if (!v82)
        {
          OUTLINED_FUNCTION_11_2();
          v99 = OUTLINED_FUNCTION_19_4();
          v100(v99);
          v101 = sub_1DC2BE0B4();
          v66 = OUTLINED_FUNCTION_29(v101);
          v102 = v81;
          v103 = *(v57 + 1);
          v103(v75, v65);
          v104 = OUTLINED_FUNCTION_39_0();
          sub_1DC28EB30(v104, v105, &qword_1DC522250);
          v103(v102, v65);
          v57 = v202;
          v74 = v227;
          v75 = v225;
          sub_1DC28EB30(v76, &qword_1ECC7BED8, &qword_1DC522250);
          v78 = v222;
          v77 = v223;
          v79 = v220;
          if (v66)
          {
            goto LABEL_69;
          }

LABEL_19:
          v85 = v219;
          sub_1DC510BCC();
          OUTLINED_FUNCTION_6_0(v85);
          v86 = v218;
          sub_1DC2BE044(v85, v218);
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_3_0(v86);
          if (v71)
          {
            sub_1DC28EB30(v85, &qword_1ECC7BED8, &qword_1DC522250);
            OUTLINED_FUNCTION_3_0(v86 + v66);
            if (v71)
            {
              goto LABEL_67;
            }
          }

          else
          {
            sub_1DC2BE044(v86, v79);
            OUTLINED_FUNCTION_3_0(v86 + v66);
            if (!v93)
            {
              OUTLINED_FUNCTION_20_4();
              v110 = OUTLINED_FUNCTION_19_4();
              v111(v110);
              sub_1DC2BE0B4();
              OUTLINED_FUNCTION_31_5();
              v66 = v65;
              sub_1DC5176CC();
              v112 = OUTLINED_FUNCTION_17();
              v77(v112);
              v75 = &qword_1ECC7BED8;
              v74 = &qword_1DC522250;
              OUTLINED_FUNCTION_32();
              sub_1DC28EB30(v113, v114, v115);
              v116 = OUTLINED_FUNCTION_54_4();
              v77(v116);
              v78 = v222;
              v77 = v223;
              OUTLINED_FUNCTION_60_1(v86);
              if (v65)
              {
                goto LABEL_69;
              }

LABEL_30:
              v96 = v217;
              sub_1DC510BCC();
              OUTLINED_FUNCTION_6_0(v96);
              v97 = OUTLINED_FUNCTION_41();
              sub_1DC2BE044(v97, v98);
              sub_1DC2BE044(v57, v78 + v66);
              OUTLINED_FUNCTION_3_0(v78);
              if (v71)
              {
                sub_1DC28EB30(v96, &qword_1ECC7BED8, &qword_1DC522250);
                OUTLINED_FUNCTION_3_0(v78 + v66);
                if (v71)
                {
LABEL_34:
                  v80 = v78;
                  goto LABEL_68;
                }
              }

              else
              {
                sub_1DC2BE044(v78, v211);
                OUTLINED_FUNCTION_3_0(v78 + v66);
                if (!v106)
                {
                  OUTLINED_FUNCTION_11_2();
                  v122 = OUTLINED_FUNCTION_19_4();
                  v123(v122);
                  sub_1DC2BE0B4();
                  OUTLINED_FUNCTION_31_5();
                  v66 = v65;
                  sub_1DC5176CC();
                  v124 = OUTLINED_FUNCTION_17();
                  v77(v124);
                  v75 = &qword_1ECC7BED8;
                  v74 = &qword_1DC522250;
                  OUTLINED_FUNCTION_32();
                  sub_1DC28EB30(v125, v126, v127);
                  v128 = OUTLINED_FUNCTION_54_4();
                  v77(v128);
                  OUTLINED_FUNCTION_44_0();
                  OUTLINED_FUNCTION_60_1(v78);
                  if (v65)
                  {
                    goto LABEL_69;
                  }

LABEL_41:
                  v109 = v215;
                  sub_1DC510BCC();
                  OUTLINED_FUNCTION_6_0(v109);
                  v86 = v214;
                  sub_1DC2BE044(v109, v214);
                  OUTLINED_FUNCTION_61_0();
                  OUTLINED_FUNCTION_3_0(v86);
                  if (v71)
                  {
                    sub_1DC28EB30(v109, &qword_1ECC7BED8, &qword_1DC522250);
                    OUTLINED_FUNCTION_3_0(v86 + v66);
                    if (v71)
                    {
                      goto LABEL_67;
                    }
                  }

                  else
                  {
                    sub_1DC2BE044(v86, v75);
                    OUTLINED_FUNCTION_3_0(v86 + v66);
                    if (!v117)
                    {
                      OUTLINED_FUNCTION_11_2();
                      v136 = OUTLINED_FUNCTION_19_4();
                      v137(v136);
                      v138 = sub_1DC2BE0B4();
                      OUTLINED_FUNCTION_29(v138);
                      v139 = OUTLINED_FUNCTION_17();
                      v77(v139);
                      OUTLINED_FUNCTION_32();
                      sub_1DC28EB30(v140, v141, v142);
                      v143 = OUTLINED_FUNCTION_47_1();
                      v77(v143);
                      OUTLINED_FUNCTION_44_0();
                      OUTLINED_FUNCTION_32();
                      v74 = v227;
                      sub_1DC28EB30(v144, v145, v146);
                      if (v66)
                      {
                        goto LABEL_69;
                      }

LABEL_52:
                      v119 = v213;
                      sub_1DC510BCC();
                      OUTLINED_FUNCTION_6_0(v119);
                      v120 = v210;
                      sub_1DC2BE044(v119, v210);
                      sub_1DC2BE044(v57, v120 + v66);
                      OUTLINED_FUNCTION_3_0(v120);
                      if (v71)
                      {
                        sub_1DC28EB30(v119, &qword_1ECC7BED8, &qword_1DC522250);
                        OUTLINED_FUNCTION_3_0(v120 + v66);
                        v121 = v212;
                        if (v71)
                        {
                          v80 = v120;
                          goto LABEL_68;
                        }
                      }

                      else
                      {
                        sub_1DC2BE044(v120, v74);
                        OUTLINED_FUNCTION_3_0(v120 + v66);
                        v121 = v212;
                        if (!v129)
                        {
                          OUTLINED_FUNCTION_20_4();
                          v151 = OUTLINED_FUNCTION_19_4();
                          v152(v151);
                          v153 = sub_1DC2BE0B4();
                          OUTLINED_FUNCTION_33_2(v74, v154, v155, v153);
                          v156 = OUTLINED_FUNCTION_17();
                          v77(v156);
                          sub_1DC28EB30(v213, &qword_1ECC7BED8, &qword_1DC522250);
                          (v77)(v74, v65);
                          v77 = v223;
                          v157 = OUTLINED_FUNCTION_39_0();
                          sub_1DC28EB30(v157, v158, &qword_1DC522250);
                          if (v66)
                          {
                            goto LABEL_69;
                          }

                          goto LABEL_63;
                        }

                        sub_1DC28EB30(v213, &qword_1ECC7BED8, &qword_1DC522250);
                        OUTLINED_FUNCTION_24_2();
                        v130(v74, v65);
                      }

                      sub_1DC28EB30(v120, &qword_1ECC7BED0, qword_1DC52A730);
LABEL_63:
                      sub_1DC510BCC();
                      OUTLINED_FUNCTION_6_0(v121);
                      v131 = v121;
                      v132 = v121;
                      v86 = v208;
                      sub_1DC2BE044(v131, v208);
                      OUTLINED_FUNCTION_61_0();
                      OUTLINED_FUNCTION_3_0(v86);
                      if (!v71)
                      {
                        sub_1DC2BE044(v86, v205);
                        OUTLINED_FUNCTION_3_0(v86 + v66);
                        v133 = v209;
                        if (!v147)
                        {
                          OUTLINED_FUNCTION_11_2();
                          v163 = OUTLINED_FUNCTION_19_4();
                          v164(v163);
                          v165 = sub_1DC2BE0B4();
                          OUTLINED_FUNCTION_29(v165);
                          v166 = OUTLINED_FUNCTION_17();
                          v77(v166);
                          v132 = &qword_1ECC7BED8;
                          OUTLINED_FUNCTION_32();
                          sub_1DC28EB30(v167, v168, v169);
                          v170 = OUTLINED_FUNCTION_47_1();
                          v77(v170);
                          OUTLINED_FUNCTION_44_0();
                          OUTLINED_FUNCTION_32();
                          sub_1DC28EB30(v171, v172, v173);
                          if (v66)
                          {
                            goto LABEL_69;
                          }

                          goto LABEL_79;
                        }

                        sub_1DC28EB30(v212, &qword_1ECC7BED8, &qword_1DC522250);
                        OUTLINED_FUNCTION_24_2();
                        v148 = OUTLINED_FUNCTION_47_1();
                        v149(v148);
LABEL_78:
                        sub_1DC28EB30(v86, &qword_1ECC7BED0, qword_1DC52A730);
LABEL_79:
                        sub_1DC510BCC();
                        OUTLINED_FUNCTION_6_0(v77);
                        v78 = v206;
                        sub_1DC2BE044(v77, v206);
                        sub_1DC2BE044(v57, v78 + v66);
                        OUTLINED_FUNCTION_3_0(v78);
                        if (!v71)
                        {
                          sub_1DC2BE044(v78, v133);
                          OUTLINED_FUNCTION_3_0(v78 + v66);
                          v150 = v207;
                          if (!v159)
                          {
                            OUTLINED_FUNCTION_11_2();
                            v175 = OUTLINED_FUNCTION_19_4();
                            v176(v175);
                            v177 = sub_1DC2BE0B4();
                            OUTLINED_FUNCTION_33_2(v133, v178, v179, v177);
                            v180 = OUTLINED_FUNCTION_17();
                            v77(v180);
                            v132 = &qword_1ECC7BED8;
                            OUTLINED_FUNCTION_32();
                            sub_1DC28EB30(v181, v182, v183);
                            (v77)(v133, v65);
                            v57 = v202;
                            OUTLINED_FUNCTION_32();
                            sub_1DC28EB30(v184, v185, v186);
                            if (v66)
                            {
                              goto LABEL_69;
                            }

                            goto LABEL_89;
                          }

                          sub_1DC28EB30(v223, &qword_1ECC7BED8, &qword_1DC522250);
                          OUTLINED_FUNCTION_24_2();
                          v160(v133, v65);
LABEL_88:
                          sub_1DC28EB30(v78, &qword_1ECC7BED0, qword_1DC52A730);
LABEL_89:
                          v161 = v203;
                          sub_1DC510BCC();
                          OUTLINED_FUNCTION_6_0(v161);
                          v162 = v204;
                          sub_1DC2BE044(v161, v204);
                          sub_1DC2D24EC(v57, v162 + v66);
                          OUTLINED_FUNCTION_3_0(v162);
                          if (!v71)
                          {
                            sub_1DC2BE044(v162, v150);
                            OUTLINED_FUNCTION_3_0(v162 + v66);
                            if (!v174)
                            {
                              v187 = v228;
                              v188 = OUTLINED_FUNCTION_19_4();
                              v189(v188);
                              v190 = sub_1DC2BE0B4();
                              v193 = OUTLINED_FUNCTION_33_2(v150, v191, v192, v190);
                              v194 = *(v187 + 8);
                              v194(v132, v65);
                              OUTLINED_FUNCTION_32();
                              sub_1DC28EB30(v195, v196, v197);
                              v194(v150, v65);
                              OUTLINED_FUNCTION_32();
                              sub_1DC28EB30(v198, v199, v200);
                              if (v193)
                              {
                                goto LABEL_70;
                              }

LABEL_100:
                              v134 = 0;
                              return v134 & 1;
                            }

                            sub_1DC28EB30(v161, &qword_1ECC7BED8, &qword_1DC522250);
                            (*(v228 + 8))(v150, v65);
LABEL_99:
                            sub_1DC28EB30(v162, &qword_1ECC7BED0, qword_1DC52A730);
                            goto LABEL_100;
                          }

                          sub_1DC28EB30(v161, &qword_1ECC7BED8, &qword_1DC522250);
                          OUTLINED_FUNCTION_3_0(v162 + v66);
                          if (!v71)
                          {
                            goto LABEL_99;
                          }

                          v57 = v162;
LABEL_69:
                          sub_1DC28EB30(v57, &qword_1ECC7BED8, &qword_1DC522250);
LABEL_70:
                          v92 = 8;
                          goto LABEL_71;
                        }

                        sub_1DC28EB30(v77, &qword_1ECC7BED8, &qword_1DC522250);
                        OUTLINED_FUNCTION_3_0(v78 + v66);
                        v150 = v207;
                        if (!v71)
                        {
                          goto LABEL_88;
                        }

                        goto LABEL_34;
                      }

                      sub_1DC28EB30(v132, &qword_1ECC7BED8, &qword_1DC522250);
                      OUTLINED_FUNCTION_3_0(v86 + v66);
                      v133 = v209;
                      if (!v71)
                      {
                        goto LABEL_78;
                      }

LABEL_67:
                      v80 = v86;
                      goto LABEL_68;
                    }

                    sub_1DC28EB30(v215, &qword_1ECC7BED8, &qword_1DC522250);
                    OUTLINED_FUNCTION_24_2();
                    v118(v75, v65);
                  }

                  sub_1DC28EB30(v86, &qword_1ECC7BED0, qword_1DC52A730);
                  goto LABEL_52;
                }

                sub_1DC28EB30(v217, &qword_1ECC7BED8, &qword_1DC522250);
                OUTLINED_FUNCTION_24_2();
                v107 = OUTLINED_FUNCTION_54_4();
                v108(v107);
              }

              sub_1DC28EB30(v78, &qword_1ECC7BED0, qword_1DC52A730);
              goto LABEL_41;
            }

            sub_1DC28EB30(v219, &qword_1ECC7BED8, &qword_1DC522250);
            OUTLINED_FUNCTION_24_2();
            v94 = OUTLINED_FUNCTION_54_4();
            v95(v94);
          }

          sub_1DC28EB30(v86, &qword_1ECC7BED0, qword_1DC52A730);
          goto LABEL_30;
        }

        sub_1DC28EB30(v0, &qword_1ECC7BED8, &qword_1DC522250);
        OUTLINED_FUNCTION_24_2();
        v83 = OUTLINED_FUNCTION_47_1();
        v84(v83);
        v78 = v222;
        v77 = v223;
        v79 = v220;
      }

      sub_1DC28EB30(v226, &qword_1ECC7BED0, qword_1DC52A730);
      goto LABEL_19;
    }

    sub_1DC28EB30(v1, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_24_2();
    v72 = OUTLINED_FUNCTION_47_1();
    v73(v72);
LABEL_9:
    sub_1DC28EB30(v22, &qword_1ECC7BED0, qword_1DC52A730);
    v74 = v227;
    v75 = v225;
    goto LABEL_10;
  }

  sub_1DC28EB30(v1, &qword_1ECC7BED8, &qword_1DC522250);
  OUTLINED_FUNCTION_3_0(&v22[v66]);
  if (!v71)
  {
    goto LABEL_9;
  }

  sub_1DC28EB30(v22, &qword_1ECC7BED8, &qword_1DC522250);
LABEL_25:
  sub_1DC28EB30(v57, &qword_1ECC7BED8, &qword_1DC522250);
  v92 = 9;
LABEL_71:
  v134 = sub_1DC29F950(v92);
  return v134 & 1;
}

uint64_t sub_1DC2BE044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED8, &qword_1DC522250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DC2BE0B4()
{
  result = qword_1ECC7BE70;
  if (!qword_1ECC7BE70)
  {
    sub_1DC510BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BE70);
  }

  return result;
}

void sub_1DC2BE13C()
{
  OUTLINED_FUNCTION_33();
  v52 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_23_9();
  v6 = sub_1DC5109BC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v10 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v49[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49[-v17];
  sub_1DC29D640();
  OUTLINED_FUNCTION_2_6(v1);
  if (!v19)
  {
    v26 = *(v8 + 32);
    v26(v18, v1, v6);
    v27 = sub_1DC517B9C();
    sub_1DC297814();
    v28 = sub_1DC296DBC();
    (*(v8 + 16))(v16, v18, v6);
    if (os_log_type_enabled(v28, v27))
    {
      v30 = swift_slowAlloc();
      v51 = v26;
      v31 = v30;
      v32 = swift_slowAlloc();
      v50 = v27;
      v33 = v32;
      v53 = v32;
      *v31 = 136315138;
      v34 = sub_1DC5108DC();
      v36 = v35;
      v37 = OUTLINED_FUNCTION_60();
      v38(v37);
      v39 = sub_1DC291244(v34, v36, &v53);

      *(v31 + 4) = v39;
      _os_log_impl(&dword_1DC287000, v28, v50, "AgentKeywords Loads from side loaded URL %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_66();
      v26 = v51;
      OUTLINED_FUNCTION_66();
    }

    else
    {

      v47 = OUTLINED_FUNCTION_60();
      v48(v47);
    }

    v46 = v52;
    v26(v52, v18, v6);
    goto LABEL_10;
  }

  sub_1DC2A17A4(v1);
  sub_1DC2A1B8C();
  OUTLINED_FUNCTION_2_6(v0);
  if (!v19)
  {
    v40 = *(v8 + 32);
    OUTLINED_FUNCTION_26_1();
    v40();
    sub_1DC517B9C();
    OUTLINED_FUNCTION_18_7();
    v41 = sub_1DC296DBC();
    v42 = OUTLINED_FUNCTION_9_7();
    sub_1DC516F0C(v42, v43, v44, v45, 38, 2);

    v46 = v52;
    (v40)(v52, v12, v6);
LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  sub_1DC2A17A4(v0);
  sub_1DC517BAC();
  OUTLINED_FUNCTION_18_7();
  v20 = sub_1DC296DBC();
  v21 = OUTLINED_FUNCTION_9_7();
  sub_1DC516F0C(v21, v22, v23, v24, 29, 2);

  v25 = 1;
  v46 = v52;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v46, v25, 1, v6);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2BE530(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_102_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DC3137AC(a1, &a9);
}

uint64_t sub_1DC2BE60C()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_2_2();

    return v6();
  }

  else
  {
    v8 = *(v4 + 8);

    return v8(v3 & 1);
  }
}

void sub_1DC2BE728()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  v3 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_4();
  v7 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_1DC28D414();
  OUTLINED_FUNCTION_55_10();
  v14(v13);
  v15 = v2;
  v16 = sub_1DC516F6C();
  sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    v24 = v5;
    v17 = OUTLINED_FUNCTION_31_17();
    OUTLINED_FUNCTION_36_18(v17, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v18, v19, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v17, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v5 = v24;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  (*(v9 + 8))(v13, v7);
  OUTLINED_FUNCTION_233();
  (*(v20 + qword_1ECC8F590 + 336))();
  OUTLINED_FUNCTION_110();
  (*(v21 + 144))();

  sub_1DC28FB9C(v1 + qword_1ECC7BCF0, v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1DC5169EC();
  sub_1DC515D6C();
  v22 = OUTLINED_FUNCTION_38_13();
  v23(v22);

  (*(v5 + 8))(v0, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_60_1(uint64_t a1)
{

  return sub_1DC28EB30(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_60_2(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_60_3()
{

  return sub_1DC28EB30(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_60_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_60_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60_10()
{

  return sub_1DC312FB4(0);
}

uint64_t OUTLINED_FUNCTION_100_2(uint64_t a1)
{

  return sub_1DC31360C(a1, v1 - 80);
}

uint64_t sub_1DC2BEBAC()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_27_5();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DC2BECD8;
  *(v2 + 24) = v0;
  v6[4] = sub_1DC292A1C;
  v6[5] = v2;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_0_26();
  v6[2] = v3;
  v6[3] = &block_descriptor_20_0;
  v4 = _Block_copy(v6);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

_BYTE *sub_1DC2BECE0(uint64_t a1)
{
  v2 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1DC28D414();
  (*(v4 + 16))(v8, v9, v2);
  v10 = sub_1DC516F6C();
  v11 = sub_1DC517B9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DC287000, v10, v11, "NLURequestTimeoutManager: canceling and removing all sendNluRequestTimeoutTimers", v12, 2u);
    OUTLINED_FUNCTION_66();
  }

  v13 = (*(v4 + 8))(v8, v2);
  result = (*(*a1 + 96))(v13);
  v15 = result;
  v16 = 0;
  v17 = 1 << result[32];
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = result + 64;
  v20 = v18 & *(result + 8);
  for (i = (v17 + 63) >> 6; v20; result = [*(*(v15 + 7) + ((v22 << 9) | (8 * v23))) cancelIfNotAlreadyCanceled])
  {
    v22 = v16;
LABEL_11:
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
  }

  while (1)
  {
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v22 >= i)
    {

      sub_1DC298C74(0, &qword_1ECC7B9A0, 0x1E698D278);
      v24 = sub_1DC51764C();
      return (*(*a1 + 104))(v24);
    }

    v20 = *&v19[8 * v22];
    ++v16;
    if (v20)
    {
      v16 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC2BEF84(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

void sub_1DC2BF018()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_158_0();
  v15 = v13 - v14;
  OUTLINED_FUNCTION_90();
  v16(v15, v6, v7);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  (*(v9 + 32))(v18 + v17, v15, v7);
  v19 = (v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v4;
  v19[1] = v2;
  OUTLINED_FUNCTION_27_5();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1DC2BF258;
  *(v20 + 24) = v18;
  v25[4] = sub_1DC292A1C;
  v25[5] = v20;
  OUTLINED_FUNCTION_5_4();
  v25[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v25[2] = v21;
  v25[3] = &block_descriptor_61;
  v22 = _Block_copy(v25);

  v23 = OUTLINED_FUNCTION_187();
  dispatch_sync(v23, v24);
  _Block_release(v22);
  LOBYTE(v2) = OUTLINED_FUNCTION_173(v20, "", 84, 522);

  if (v2)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC2BF258()
{
  v0 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v0);
  OUTLINED_FUNCTION_21_10();

  sub_1DC2BF2D8();
}

void sub_1DC2BF2D8()
{
  OUTLINED_FUNCTION_33();
  v99 = v3;
  v100 = v4;
  v98 = v5;
  OUTLINED_FUNCTION_38_2();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v101 = v7;
  v102 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v97 = v8;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v95 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v94 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v94 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v21 = OUTLINED_FUNCTION_10(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v94 - v24;
  OUTLINED_FUNCTION_38_1();
  v27 = *(v26 + 464);
  v96 = v1;
  v27();
  OUTLINED_FUNCTION_126_0();
  v28(v0, v98, v11);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v11);
  v32 = *(v16 + 56);
  sub_1DC28F308(v25, v19, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28F308(v0, &v19[v32], &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_39(v19, 1, v11);
  if (v43)
  {
    OUTLINED_FUNCTION_62_3();
    sub_1DC28EB30(v33, v34, v35);
    OUTLINED_FUNCTION_62_3();
    sub_1DC28EB30(v36, v37, v38);
    OUTLINED_FUNCTION_39(&v19[v32], 1, v11);
    if (v43)
    {
      sub_1DC28EB30(v19, &unk_1ECC7CA30, &qword_1DC522A00);
LABEL_14:
      sub_1DC28D414();
      OUTLINED_FUNCTION_18_13();
      v76(v95);

      v77 = sub_1DC516F6C();
      sub_1DC517B9C();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v78 = OUTLINED_FUNCTION_111();
        v104 = v78;
        *v25 = 136315138;
        v79 = OUTLINED_FUNCTION_89();
        *(v25 + 4) = sub_1DC291244(v79, v80, v81);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();
      }

      v87 = OUTLINED_FUNCTION_174();
      v88(v87);
      OUTLINED_FUNCTION_12_0();
      v90 = (*(v89 + 624))(v103);
      v91 = OUTLINED_FUNCTION_89();
      sub_1DC2BFB38(v91, v92, v93);
      sub_1DC28EB30(&v104, &qword_1ECC7CE28, &unk_1DC524E10);
      v90(v103, 0);
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v39 = OUTLINED_FUNCTION_205();
  sub_1DC28F308(v39, v40, v41, v42);
  OUTLINED_FUNCTION_39(&v19[v32], 1, v11);
  if (v43)
  {
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v44, v45, v46);
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v47, v48, v49);
    (*(v13 + 8))(v2, v11);
LABEL_9:
    sub_1DC28EB30(v19, &qword_1ECC7CE20, &unk_1DC523AC8);
    goto LABEL_10;
  }

  v63 = v94;
  (*(v13 + 32))(v94, &v19[v32], v11);
  OUTLINED_FUNCTION_2_11();
  sub_1DC293BE4(v64, v65, MEMORY[0x1E69695C8]);
  OUTLINED_FUNCTION_55();
  v66 = sub_1DC5176CC();
  v67 = *(v13 + 8);
  v67(v63, v11);
  OUTLINED_FUNCTION_179();
  sub_1DC28EB30(v68, v69, v70);
  OUTLINED_FUNCTION_179();
  sub_1DC28EB30(v71, v72, v73);
  v67(v2, v11);
  v74 = OUTLINED_FUNCTION_174();
  sub_1DC28EB30(v74, v75, &qword_1DC522A00);
  if (v66)
  {
    goto LABEL_14;
  }

LABEL_10:
  sub_1DC28D414();
  OUTLINED_FUNCTION_18_13();
  v50(v97);

  v51 = sub_1DC516F6C();
  sub_1DC517BAC();

  if (OUTLINED_FUNCTION_172())
  {
    OUTLINED_FUNCTION_63();
    v52 = OUTLINED_FUNCTION_111();
    v104 = v52;
    *v25 = 136315138;
    v53 = OUTLINED_FUNCTION_89();
    *(v25 + 4) = sub_1DC291244(v53, v54, v55);
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_31();
  }

  v61 = OUTLINED_FUNCTION_174();
  v62(v61);
LABEL_17:
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_163_0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1DC516F0C(v8, a2, v7, a4, 75, 2, a7);
}

uint64_t OUTLINED_FUNCTION_163_1()
{

  return sub_1DC51154C();
}

uint64_t OUTLINED_FUNCTION_163_2@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_192_1()
{
}

void OUTLINED_FUNCTION_128_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_56_4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_157(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_56_6()
{
}

uint64_t OUTLINED_FUNCTION_56_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_56_12(uint64_t a1)
{

  return swift_once();
}

double sub_1DC2BFB38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1DC2AEB04(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE48, qword_1DC524E30);
    sub_1DC517FFC();

    sub_1DC28F9B0((*(v9 + 56) + 40 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD18, &unk_1DC524D10);
    sub_1DC51800C();
    *v3 = v9;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DC2BFC38()
{
  v0 = sub_1DC2BFC8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DC2BFC8C()
{
  v0 = sub_1DC5169FC();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1ECC7BCF0));
  sub_1DC28EB30(v0 + qword_1ECC8F5E0, &unk_1ECC7D340, &qword_1DC525380);
  sub_1DC28EB30(v0 + qword_1ECC8F5C8, &qword_1ECC7D948, &unk_1DC52A108);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1ECC8F5D8));

  v1 = qword_1ECC8F5D0;
  sub_1DC5162DC();
  OUTLINED_FUNCTION_35();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1DC2BFDD8()
{
  sub_1DC2BFE08();
  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

id SiriNLUOverrideProxy.init(useTrie:useMemory:)()
{
  sub_1DC517BCC();
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v2 = sub_1DC5173CC();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v4 = sub_1DC517BEC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  *&v0[OBJC_IVAR___SiriNLUOverrideProxy_componentOverrideStore] = 0;
  *&v0[OBJC_IVAR___SiriNLUOverrideProxy_overrideResults] = 0;
  *&v0[OBJC_IVAR___SiriNLUOverrideProxy_swiftifiedInputs] = 0;
  sub_1DC51637C();
  *&v0[OBJC_IVAR___SiriNLUOverrideProxy_store] = sub_1DC51631C();
  sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8098], v4);
  sub_1DC51739C();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1DC293C74(&qword_1EDAC7FA8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD20, &qword_1DC525300);
  sub_1DC2BC7DC();
  sub_1DC517E9C();
  *&v0[OBJC_IVAR___SiriNLUOverrideProxy_queue] = sub_1DC517C1C();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SiriNLUOverrideProxy();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_1DC2C0E20(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1DC51772C();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = a4(v6, v8);

  return a4 & 1;
}

uint64_t sub_1DC2C0E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v5 = sub_1DC2C0F8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DC522F20;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1DC2C0FA4(v6, v7, v8);
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  sub_1DC516F0C(v4, &dword_1DC287000, v5, "Trie Overrides: About to load global override trie bundle at path:%@", 68, 2, v6);

  return sub_1DC51632C() & 1;
}

unint64_t sub_1DC2C0FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDAC7FC8;
  if (!qword_1EDAC7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC7FC8);
  }

  return result;
}

uint64_t sub_1DC2C1070@<X0>(char *a2@<X8>)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[4];
  v6 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v7 = sub_1DC2C0F8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DC522F20;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1DC2C0FA4(v8, v9, v10);
  *(v8 + 64) = v11;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;

  sub_1DC516F0C(v6, &dword_1DC287000, v7, "Trie Overrides: About to load component override trie bundle at path:%@", 71, 2, v8);

  sub_1DC51637C();
  swift_allocObject();
  sub_1DC51636C();
  if (sub_1DC51632C())
  {
    v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x80);

    v12(v13);
    v14 = sub_1DC517B9C();
    v15 = sub_1DC2C0F8C();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DC522F20;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = v11;
    *(v16 + 32) = v4;
    *(v16 + 40) = v3;

    sub_1DC516F0C(v14, &dword_1DC287000, v15, "Trie Overrides: Component override trie bundle initialized successsfully from path:%@", 85, 2, v16);

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  *a2 = v17;
  return result;
}

unint64_t sub_1DC2C1648(id *a1, _BYTE *a2)
{
  v4 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v92 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v83 - v11;
  v96 = sub_1DC51639C();
  OUTLINED_FUNCTION_0();
  v93 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v91 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v83 - v18;
  OUTLINED_FUNCTION_12();
  v90 = sub_1DC511A4C();
  OUTLINED_FUNCTION_0();
  v89 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v88 = v22 - v21;
  OUTLINED_FUNCTION_12();
  v23 = sub_1DC51670C();
  v24 = OUTLINED_FUNCTION_10(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7A8, &unk_1DC529770);
  v26 = OUTLINED_FUNCTION_10(v25);
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v83 - v27;
  OUTLINED_FUNCTION_12();
  v28 = sub_1DC51231C();
  OUTLINED_FUNCTION_0();
  v103 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  v87 = v31 - v32;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v83 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v97 = &v83 - v37;
  *a2 = 0;
  v102 = a1;
  v38 = sub_1DC2C20B8(a1);
  v104 = v28;
  v98 = v9;
  v85 = a2;
  v86 = v12;
  if (v38)
  {
    v39 = v38;
    v108 = MEMORY[0x1E69E7CC0];
    sub_1DC2C22A4(0, v38 & ~(v38 >> 63), 0);
    if ((v39 & 0x8000000000000000) == 0)
    {
      v84 = v4;
      v40 = 0;
      v41 = v108;
      v99 = v102 & 0xFFFFFFFFFFFFFF8;
      v100 = v103 + 32;
      v101 = v102 & 0xC000000000000001;
      while (1)
      {
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v101)
        {
          v43 = MEMORY[0x1E1296800](v40, v102);
        }

        else
        {
          if (v40 >= *(v99 + 16))
          {
            goto LABEL_35;
          }

          v43 = *(v102 + 8 * v40 + 32);
        }

        v44 = v43;
        sub_1DC2C22C4(v43);
        if (v45 >> 60 == 15)
        {
          goto LABEL_37;
        }

        v107 = 0;
        v105 = 0u;
        v106 = 0u;
        sub_1DC5166FC();
        OUTLINED_FUNCTION_2_31();
        sub_1DC293C74(&qword_1EDAC8038, v46, MEMORY[0x1E69D0D20]);
        sub_1DC51677C();

        v108 = v41;
        v48 = *(v41 + 16);
        v47 = *(v41 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1DC2C22A4((v47 > 1), v48 + 1, 1);
          v41 = v108;
        }

        *(v41 + 16) = v48 + 1;
        v28 = v104;
        (*(v103 + 32))(v41 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v48, v36, v104);
        ++v40;
        if (v42 == v39)
        {
          v4 = v84;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v41 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v49 = v94;
  sub_1DC2C2328(v41, MEMORY[0x1E69D0D28], v94);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v28);
  v51 = v96;
  if (EnumTagSinglePayload == 1)
  {

    sub_1DC28EB30(v49, &qword_1ECC7D7A8, &unk_1DC529770);
    return MEMORY[0x1E69E7CC0];
  }

  v53 = v103;
  (*(v103 + 32))(v97, v49, v28);
  v54 = v89;
  v55 = v88;
  v56 = v90;
  (*(v89 + 104))(v88, *MEMORY[0x1E69D0B88], v90);
  sub_1DC51634C();
  (*(v54 + 8))(v55, v56);
  v57 = v93;
  (*(v53 + 16))(v87, v97, v28);

  v58 = v95;
  OUTLINED_FUNCTION_29_0();
  sub_1DC51638C();
  v59 = v91;
  (*(v57 + 16))(v91, v58, v51);
  v60 = (*(v57 + 88))(v59, v51);
  if (v60 == *MEMORY[0x1E69D0918])
  {

    v61 = OUTLINED_FUNCTION_17_16();
    v62(v61);
    v63 = v92 + 32;
    v64 = *(v92 + 32);
    v65 = v86;
    v64(v86, v59, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D370, &unk_1DC5283D0);
    v66 = (*(v63 + 48) + 32) & ~*(v63 + 48);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1DC522F20;
    v64((v67 + v66), v65, v4);
LABEL_23:
    *&v105 = MEMORY[0x1E69E7CC0];
    v70 = *(v67 + 16);
    v71 = v98;
    if (v70)
    {
      v102 = *(v92 + 16);
      v72 = *(v92 + 80);
      v100 = v67;
      v73 = v67 + ((v72 + 32) & ~v72);
      v74 = *(v92 + 72);
      v75 = (v92 + 8);
      v101 = MEMORY[0x1E69E7CC0];
      do
      {
        (v102)(v71, v73, v4);
        sub_1DC293C74(&qword_1ECC7BE18, MEMORY[0x1E69D09E0], MEMORY[0x1E69D09D8]);
        v76 = sub_1DC51678C();
        v78 = v77;
        v79 = objc_allocWithZone(MEMORY[0x1E69D1240]);
        v80 = sub_1DC339190(v76, v78);
        v81 = (*v75)(v71, v4);
        if (v80)
        {
          MEMORY[0x1E12962A0](v81);
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DC517A3C();
          }

          OUTLINED_FUNCTION_29_0();
          sub_1DC517A5C();
          v101 = v105;
        }

        v71 = v98;
        v73 += v74;
        --v70;
      }

      while (v70);

      v51 = v96;
      v57 = v93;
      v52 = v101;
    }

    else
    {

      v52 = MEMORY[0x1E69E7CC0];
    }

    (*(v57 + 8))(v95, v51);
    (*(v103 + 8))(v97, v104);
    return v52;
  }

  if (v60 == *MEMORY[0x1E69D0910])
  {

    v68 = OUTLINED_FUNCTION_17_16();
    v69(v68);
    v67 = *v59;
    *v85 = 1;
    goto LABEL_23;
  }

  if (v60 == *MEMORY[0x1E69D0908])
  {

    v67 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_38:
  result = sub_1DC51824C();
  __break(1u);
  return result;
}

uint64_t sub_1DC2C20B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DC51802C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void *sub_1DC2C20DC(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7B8, &unk_1DC5297B0);
  v10 = *(sub_1DC51231C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC51231C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC4021E0(a4 + v16, v8, v13 + v16, MEMORY[0x1E69D0D28]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1DC2C22A4(void *a1, int64_t a2, char a3)
{
  result = sub_1DC2C20DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DC2C22C4(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DC510A0C();

  return v3;
}

uint64_t sub_1DC2C2328@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

void sub_1DC2C2600(_Unwind_Exception *a1)
{
  MEMORY[0x1E1297AF0](v1, 0x10F3C40F4CE41AFLL);
  _Unwind_Resume(a1);
}

void sub_1DC2C2770(_Unwind_Exception *a1)
{
  MEMORY[0x1E1297AF0](v1, 0x10F3C40F4CE41AFLL);
  _Unwind_Resume(a1);
}

uint64_t sub_1DC2C29A0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void sub_1DC2C2FD0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1DC2C435C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v5);
  OUTLINED_FUNCTION_21_10();
  v7 = *(v3 + 16);
  v9 = (v3 + v8);
  v10 = *v9;
  v11 = v9[1];

  return a3(a2, v7, v3 + v6, v10, v11);
}

void sub_1DC2C4400()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_245(v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE60, &qword_1DC524EF0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_36_7(v2 + 16, &v60);
  Strong = swift_weakLoadStrong();
  sub_1DC28D414();
  OUTLINED_FUNCTION_18_13();
  if (Strong)
  {
    v19 = OUTLINED_FUNCTION_215();
    v20(v19);
    v21 = sub_1DC516F6C();
    v22 = sub_1DC517B9C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_181(v23);
      OUTLINED_FUNCTION_246(&dword_1DC287000, v24, v25, "Received successFromSetup from CDM");
      OUTLINED_FUNCTION_66();
    }

    (*(v14 + 8))(v0, v12);
    v26 = OUTLINED_FUNCTION_85_3();
    v27(v26);
    OUTLINED_FUNCTION_115_1();
    v28 = OUTLINED_FUNCTION_225();
    v29(v28);
    OUTLINED_FUNCTION_78_4();
    v30 = OUTLINED_FUNCTION_244();
    v31 = OUTLINED_FUNCTION_135_0(v30);
    v32(v31);
    v33 = OUTLINED_FUNCTION_130_1();
    v34(v33);
    v59[4] = sub_1DC2C4C10;
    v59[5] = v0;
    OUTLINED_FUNCTION_19_13();
    v59[1] = 1107296256;
    OUTLINED_FUNCTION_3_14();
    v59[2] = v35;
    v59[3] = &block_descriptor_192;
    v36 = _Block_copy(v59);

    sub_1DC51739C();
    OUTLINED_FUNCTION_1_14();
    sub_1DC293BE4(v37, v38, MEMORY[0x1E69E7F70]);
    v39 = OUTLINED_FUNCTION_74();
    __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
    OUTLINED_FUNCTION_62_3();
    v44 = sub_1DC2C4B5C(v41, v42, v43);
    OUTLINED_FUNCTION_123_1(v44);
    OUTLINED_FUNCTION_171();
    _Block_release(v36);
    OUTLINED_FUNCTION_62_0();
    v45 = OUTLINED_FUNCTION_55();
    v46(v45);
    v47 = OUTLINED_FUNCTION_222();
    v48(v47);
  }

  else
  {
    v18(v1);
    v49 = sub_1DC516F6C();
    v50 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v50))
    {
      v51 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v51);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v52, v53, v54, v55, v56, 2u);
      OUTLINED_FUNCTION_31();
    }

    v57 = OUTLINED_FUNCTION_150_0();
    v58(v57, v12);
  }

  OUTLINED_FUNCTION_34();
}