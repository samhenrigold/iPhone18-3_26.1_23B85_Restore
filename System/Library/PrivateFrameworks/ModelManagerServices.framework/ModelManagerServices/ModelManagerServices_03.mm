unint64_t sub_19798E008()
{
  result = qword_1EAF48AD8;
  if (!qword_1EAF48AD8)
  {
    result = swift_getWitnessTable(asc_197A8950C, &type metadata for Assertion.DaemonRep.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48AD8);
  }

  return result;
}

unint64_t sub_19798E060()
{
  result = qword_1ED87E920;
  if (!qword_1ED87E920)
  {
    result = swift_getWitnessTable(aU_19, &type metadata for Assertion.DaemonRep.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87E920);
  }

  return result;
}

unint64_t sub_19798E0B8()
{
  result = qword_1ED87E928;
  if (!qword_1ED87E928)
  {
    result = swift_getWitnessTable(byte_197A894A4, &type metadata for Assertion.DaemonRep.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87E928);
  }

  return result;
}

uint64_t sub_19798E14C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_19798E240;

  return v5(v2 + 32);
}

uint64_t sub_19798E240()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_13();

  return v8();
}

uint64_t sub_19798E33C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_71_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_0(v1);

  return v4(v3);
}

uint64_t sub_19798E3CC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v4[1] = sub_197960E38;
  v6 = OUTLINED_FUNCTION_7();

  return sub_19798BA08(v6, v7, v1, v2);
}

uint64_t sub_19798E46C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_19798E49C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_19798E46C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_19798E4B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion.DaemonRep(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19798E528()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v1[1] = sub_197960FB0;
  OUTLINED_FUNCTION_7();

  return sub_19798A434();
}

uint64_t sub_19798E5D4()
{
  OUTLINED_FUNCTION_9();

  return sub_19798B308();
}

uint64_t sub_19798E6B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    sub_197990B74(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  OUTLINED_FUNCTION_52_1();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t InferenceError.Context.underlyingError.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    v4 = sub_197A87548();
    OUTLINED_FUNCTION_7_0();
    v7 = sub_19798FA98(v5, v6, MEMORY[0x1E698C270]);
  }

  else
  {
    v4 = 0;
    v7 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v7;
}

uint64_t InferenceError.Context.retryAfter.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_58_1();

  return sub_19798E8A4(v1 + v3, a1);
}

uint64_t sub_19798E8A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19798E914()
{
  OUTLINED_FUNCTION_67();
  sub_197A87558();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_60_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v3);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_65_0();
  v5 = *(v0 + 56);
  if (v5)
  {
    v17 = sub_197A87548();
    OUTLINED_FUNCTION_7_0();
    v18 = sub_19798FA98(v6, v7, MEMORY[0x1E698C270]);
    *&v16 = v5;
    sub_197945EF8(&v16, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E78, &qword_197A8D7E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_197A88E50;
    sub_197945EF8(v19, v8 + 32);
  }

  else if ((sub_19798EBA8() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E78, &qword_197A8D7E0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_197A88E50;
    OUTLINED_FUNCTION_58_1();
    sub_19798E8A4(v0 + v10, v1);
    OUTLINED_FUNCTION_71_1();
    v11();
    v12 = sub_197A87548();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    sub_197A878A8();
    sub_197A878A8();
    v13 = sub_197A87538();
    *(v9 + 56) = v12;
    OUTLINED_FUNCTION_7_0();
    *(v9 + 64) = sub_19798FA98(v14, v15, MEMORY[0x1E698C270]);
    *(v9 + 32) = v13;
  }

  OUTLINED_FUNCTION_66();
}

uint64_t sub_19798EBA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v1);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  if (*v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v0 + 8) == 0xE000000000000000;
  }

  if (!v5 && (sub_197A88218() & 1) == 0 || (*(v0 + 16) || *(v0 + 24) != 0xE000000000000000) && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  if (*(v0 + 32))
  {
    return 0;
  }

  v6 = *(v0 + 40);
  v7 = sub_197A87898();
  LOBYTE(v6) = sub_19798F578(v6, v7);

  if ((v6 & 1) == 0 || (*(v0 + 48) & 1) != 0 || *(v0 + 56))
  {
    return 0;
  }

  OUTLINED_FUNCTION_58_1();
  sub_19798E8A4(v0 + v10, v4);
  v11 = sub_197A87258();
  OUTLINED_FUNCTION_64_0(v4, 1, v11);
  v8 = v5;
  sub_197947A40(v4, &qword_1EAF48B20, &qword_197A89620);
  return v8;
}

void InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)()
{
  OUTLINED_FUNCTION_67();
  v55 = v2;
  v53 = v3;
  v54 = v4;
  v51 = v5;
  v52 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v14 = OUTLINED_FUNCTION_28(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_27();
  v17 = v15 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_76_0();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  OUTLINED_FUNCTION_71_1();
  sub_197947A40(v27, v28, v29);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v23);
  sub_19798E8A4(v0, v1);
  *v12 = v10;
  *(v12 + 8) = v8;
  v33 = v52;
  *(v12 + 16) = v51;
  *(v12 + 24) = v33;
  v34 = v54;
  *(v12 + 32) = v53;
  *(v12 + 40) = v34;
  *(v12 + 48) = v55;
  *(v12 + 56) = 0;
  sub_19798E8A4(v1, v17);
  LODWORD(v8) = __swift_getEnumTagSinglePayload(v17, 1, v23);
  OUTLINED_FUNCTION_71_1();
  sub_197947A40(v35, v36, v37);
  OUTLINED_FUNCTION_71_1();
  sub_197947A40(v38, v39, v40);
  if (v8 == 1)
  {
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v23);
    OUTLINED_FUNCTION_64_0(v17, 1, v23);
    if (!v44)
    {
      sub_197947A40(v17, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
    (*(v45 + 32))(v21, v17, v23);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v23);
  }

  OUTLINED_FUNCTION_58_1();
  sub_19798F508(v21, v12 + v49);
  OUTLINED_FUNCTION_66();
}

void InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)()
{
  OUTLINED_FUNCTION_67();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v54 = v10;
  v55 = v11;
  v52 = v12;
  v53 = v13;
  v51 = v14;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v18 = OUTLINED_FUNCTION_28(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_68();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v48 - v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_77_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_76_0();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  if (v5)
  {
    v50 = v9;
    v56 = v5;
    MEMORY[0x19A8EBBD0](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B30, &qword_197A89638);
    if (swift_dynamicCast())
    {
      if (*(&v58 + 1))
      {
        sub_197945EF8(&v57, v60);
        v49 = v7;
        v48[1] = v60[4];
        __swift_project_boxed_opaque_existential_1(v60, v60[3]);
        LOBYTE(v7) = v49;
        sub_197A87568();
        sub_197947A40(v1, &qword_1EAF48B20, &qword_197A89620);
        sub_19798F508(v3, v1);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        v9 = v50;
        goto LABEL_9;
      }
    }

    else
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
    }

    sub_197947A40(v1, &qword_1EAF48B20, &qword_197A89620);
    v9 = v50;
  }

  else
  {
    sub_197947A40(v1, &qword_1EAF48B20, &qword_197A89620);
    v57 = 0u;
    v58 = 0u;
    v59 = 0;
  }

  sub_197947A40(&v57, &qword_1EAF48B28, &unk_197A89628);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
LABEL_9:
  sub_19798E8A4(v1, v2);
  v32 = v52;
  *v16 = v51;
  *(v16 + 8) = v32;
  v33 = v54;
  *(v16 + 16) = v53;
  *(v16 + 24) = v33;
  *(v16 + 32) = v55;
  *(v16 + 40) = v9;
  *(v16 + 48) = v7 & 1;
  if (v5)
  {
    sub_197A87548();
    MEMORY[0x19A8EBBD0](v5);
    v34 = sub_197A87528();
  }

  else
  {
    v34 = 0;
  }

  *(v16 + 56) = v34;
  sub_19798E8A4(v2, v0);
  v35 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_64_0(v35, v36, v25);
  if (v37)
  {
    if (v34)
    {
      sub_197A87518();

      OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_75_2();
    }

    else
    {

      OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_75_2();
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v25);
    }

    v45 = OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_64_0(v45, v46, v25);
    if (!v37)
    {
      sub_197947A40(v0, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {

    OUTLINED_FUNCTION_73_0();
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_71_1();
    v38();
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v25);
  }

  OUTLINED_FUNCTION_58_1();
  sub_19798F508(v22, v16 + v47);
  OUTLINED_FUNCTION_66();
}

void InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:retryAfter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_67();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v61 = a21;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v41 = OUTLINED_FUNCTION_28(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v42);
  v62 = &v61 - v43;
  *v39 = v37;
  *(v39 + 8) = v35;
  *(v39 + 16) = v33;
  *(v39 + 24) = v31;
  *(v39 + 32) = v29;
  *(v39 + 40) = v27;
  *(v39 + 48) = v25;
  if (v23)
  {
    sub_197A87548();
    MEMORY[0x19A8EBBD0](v23);
    v44 = sub_197A87528();
  }

  else
  {
    v44 = 0;
  }

  *(v39 + 56) = v44;
  v45 = v61;
  sub_19798E8A4(v61, v21);
  v46 = sub_197A87258();
  v47 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_64_0(v47, v48, v46);
  v49 = v62;
  if (v50)
  {
    if (v44)
    {
      sub_197A87518();

      sub_197947A40(v45, &qword_1EAF48B20, &qword_197A89620);
    }

    else
    {
      sub_197947A40(v45, &qword_1EAF48B20, &qword_197A89620);

      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v46);
    }

    v58 = OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_64_0(v58, v59, v46);
    if (!v50)
    {
      sub_197947A40(v21, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    sub_197947A40(v45, &qword_1EAF48B20, &qword_197A89620);

    OUTLINED_FUNCTION_36_0();
    (*(v51 + 32))(v49, v21, v46);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v46);
  }

  OUTLINED_FUNCTION_58_1();
  sub_19798F508(v49, v39 + v60);
  OUTLINED_FUNCTION_66();
}

uint64_t sub_19798F508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19798F578(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];
    sub_197A878A8();
    sub_197A878A8();
    v20 = sub_197A407F0(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_197A88218();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
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
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void static InferenceError.Context.== infix(_:_:)()
{
  OUTLINED_FUNCTION_67();
  v4 = v3;
  v6 = v5;
  v7 = sub_197A87258();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_60_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v11);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_80_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B38, &qword_197A89640);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66_0();
  v15 = *v6 == *v4 && *(v6 + 8) == *(v4 + 8);
  if (v15 || (sub_197A88218() & 1) != 0)
  {
    v16 = *(v6 + 16) == *(v4 + 16) && *(v6 + 24) == *(v4 + 24);
    if (v16 || (sub_197A88218()) && *(v6 + 32) == *(v4 + 32) && (sub_19798F578(*(v6 + 40), *(v4 + 40)) & 1) != 0 && *(v6 + 48) == *(v4 + 48))
    {
      v17 = *(v4 + 56);
      if (*(v6 + 56))
      {
        if (!v17)
        {
          goto LABEL_14;
        }

        sub_197A87548();
        OUTLINED_FUNCTION_7_0();
        sub_19798FA98(v18, v19, MEMORY[0x1E698C288]);

        v20 = sub_197A87918();

        if ((v20 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (v17)
      {
        goto LABEL_14;
      }

      v21 = *(type metadata accessor for InferenceError.Context(0) + 40);
      v22 = *(v13 + 48);
      sub_19798E8A4(v6 + v21, v1);
      sub_19798E8A4(v4 + v21, v1 + v22);
      v23 = OUTLINED_FUNCTION_62_0();
      OUTLINED_FUNCTION_64_0(v23, v24, v7);
      if (v15)
      {
        OUTLINED_FUNCTION_64_0(v1 + v22, 1, v7);
        if (v15)
        {
          sub_197947A40(v1, &qword_1EAF48B20, &qword_197A89620);
          goto LABEL_14;
        }
      }

      else
      {
        sub_19798E8A4(v1, v2);
        OUTLINED_FUNCTION_64_0(v1 + v22, 1, v7);
        if (!v25)
        {
          (*(v9 + 32))(v0, v1 + v22, v7);
          OUTLINED_FUNCTION_23_0();
          sub_19798FA98(v26, v27, MEMORY[0x1E6969550]);
          sub_197A87918();
          v28 = *(v9 + 8);
          v28(v0, v7);
          v28(v2, v7);
          sub_197947A40(v1, &qword_1EAF48B20, &qword_197A89620);
          goto LABEL_14;
        }

        (*(v9 + 8))(v2, v7);
      }

      sub_197947A40(v1, &qword_1EAF48B38, &qword_197A89640);
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_19798FA98(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19798FAE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000197AA2100 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701080931 && a2 == 0xE400000000000000;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6B6361626C6C6166 && a2 == 0xEF6465776F6C6C41;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x8000000197AA2120 == a2;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x7466417972746572 && a2 == 0xEA00000000007265)
            {

              return 6;
            }

            else
            {
              v12 = sub_197A88218();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_19798FD30(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 1701080931;
      break;
    case 3:
      result = 0x6F666E4972657375;
      break;
    case 4:
      result = 0x6B6361626C6C6166;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x7466417972746572;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_19798FE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19798FAE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19798FE3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19798FD28();
  *a1 = result;
  return result;
}

uint64_t sub_19798FE64(uint64_t a1)
{
  v2 = sub_197990188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19798FEA0(uint64_t a1)
{
  v2 = sub_197990188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceError.Context.encode(to:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B50, &qword_197A89648);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_66_0();
  v3 = OUTLINED_FUNCTION_49();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  sub_197990188();
  sub_197A883D8();
  OUTLINED_FUNCTION_55();
  sub_197A880B8();
  if (!v1)
  {
    OUTLINED_FUNCTION_55();
    sub_197A880B8();
    OUTLINED_FUNCTION_55();
    sub_197A880D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B58, &qword_197A89650);
    sub_19796471C(&qword_1ED87FC00, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    OUTLINED_FUNCTION_48_0();
    sub_197A880E8();
    OUTLINED_FUNCTION_55();
    sub_197A880C8();
    sub_197A87548();
    OUTLINED_FUNCTION_7_0();
    sub_19798FA98(v5, v6, MEMORY[0x1E698C280]);
    OUTLINED_FUNCTION_48_0();
    sub_197A88098();
    type metadata accessor for InferenceError.Context(0);
    sub_197A87258();
    OUTLINED_FUNCTION_23_0();
    sub_19798FA98(v7, v8, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_48_0();
    sub_197A88098();
  }

  v9 = OUTLINED_FUNCTION_61();
  return v10(v9);
}

unint64_t sub_197990188()
{
  result = qword_1ED87F068;
  if (!qword_1ED87F068)
  {
    result = swift_getWitnessTable(aU_20, &type metadata for InferenceError.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F068);
  }

  return result;
}

uint64_t InferenceError.Context.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v5);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_66_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B60, &qword_197A89658);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_65_0();
  v8 = type metadata accessor for InferenceError.Context(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197990188();
  sub_197A883A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v24) = 0;
  *v12 = sub_197A87FA8();
  *(v12 + 8) = v13;
  OUTLINED_FUNCTION_51_0(1);
  *(v12 + 16) = sub_197A87FA8();
  *(v12 + 24) = v14;
  OUTLINED_FUNCTION_51_0(2);
  *(v12 + 32) = sub_197A87FC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B58, &qword_197A89650);
  sub_19796471C(&qword_1ED87F888, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  OUTLINED_FUNCTION_57_0();
  sub_197A87FD8();
  *(v12 + 40) = v24;
  OUTLINED_FUNCTION_51_0(4);
  *(v12 + 48) = sub_197A87FB8() & 1;
  sub_197A87548();
  OUTLINED_FUNCTION_7_0();
  sub_19798FA98(v15, v16, MEMORY[0x1E698C290]);
  OUTLINED_FUNCTION_57_0();
  sub_197A87F88();
  *(v12 + 56) = v24;
  sub_197A87258();
  OUTLINED_FUNCTION_23_0();
  sub_19798FA98(v17, v18, MEMORY[0x1E6969558]);
  sub_197A87F88();
  v19 = OUTLINED_FUNCTION_49();
  v20(v19);
  sub_19798F508(v3, v12 + *(v8 + 40));
  sub_197990B74(v12, a2, type metadata accessor for InferenceError.Context);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  OUTLINED_FUNCTION_6_1();
  return sub_197990BD0(v12, v21);
}

uint64_t InferenceError.caseName.getter()
{
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_3_1();
  sub_197990B74(v0, v1, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 8u:
    case 0xFu:
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_1_2();
      sub_197990BD0(v1, v4);
      break;
    case 0x10u:
      sub_197990BD0(v1, type metadata accessor for InferenceError);
      goto LABEL_6;
    case 0x12u:
    case 0x16u:
    case 0x18u:
      return OUTLINED_FUNCTION_63();
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x17u:
LABEL_6:
      OUTLINED_FUNCTION_38_0();
      break;
    default:
      sub_197990BD0(v1, type metadata accessor for InferenceError);
      break;
  }

  return OUTLINED_FUNCTION_63();
}

uint64_t sub_197990B74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_22();
  v5(v4);
  return a2;
}

uint64_t sub_197990BD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t InferenceError.description.getter()
{
  v0 = InferenceError.caseName.getter();
  v2 = v1;
  v3 = *(InferenceError.underlyingErrors.getter() + 16);

  if (!v3)
  {
    v8 = 0;
    v7 = 0xE000000000000000;
    goto LABEL_5;
  }

  v11 = 14906;
  v12 = 0xE200000000000000;
  v4 = InferenceError.underlyingErrors.getter();
  sub_19797F3D0(v4, v9);

  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v6 = sub_197A88148();
    MEMORY[0x19A8EAC80](v6);

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v8 = v11;
    v7 = v12;
LABEL_5:
    v9[0] = v0;
    v9[1] = v2;
    sub_197A878A8();
    MEMORY[0x19A8EAC80](v8, v7);

    return v9[0];
  }

  __break(1u);
  return result;
}

uint64_t InferenceError.underlyingErrors.getter()
{
  v3 = sub_197A87558();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_60_0();
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_80_0();
  v8 = type metadata accessor for InferenceError.Context(0);
  v9 = OUTLINED_FUNCTION_28(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_3_1();
  sub_197990B74(v0, v2, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 0xF || ((1 << EnumCaseMultiPayload) & 0xCFFF) == 0)
  {
    OUTLINED_FUNCTION_1_2();
    sub_197990BD0(v2, v22);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v16 = OUTLINED_FUNCTION_45_0();
    sub_19799747C(v16, v12, v17);
    InferenceError.category.getter(v1);
    sub_19798E914();
    v19 = v18;
    (*(v5 + 8))(v1, v3);
    OUTLINED_FUNCTION_6_1();
    sub_197990BD0(v12, v20);
  }

  return v19;
}

uint64_t InferenceError.context.getter()
{
  v2 = v0;
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_60_0();
  v4 = type metadata accessor for InferenceError.Context(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_3_1();
  sub_197990B74(v2, v1, v9);
  if (swift_getEnumCaseMultiPayload() > 0xF)
  {
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v4);
    OUTLINED_FUNCTION_1_2();
    return sub_197990BD0(v1, v20);
  }

  else
  {
    sub_19799747C(v1, v8, type metadata accessor for InferenceError.Context);
    v10 = OUTLINED_FUNCTION_61();
    sub_19799747C(v10, v11, type metadata accessor for InferenceError.Context);
    OUTLINED_FUNCTION_52_1();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

void InferenceError.init(wrapping:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v109 = type metadata accessor for InferenceError.Context(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_80_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v7 = OUTLINED_FUNCTION_28(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27();
  v107 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35();
  v108 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_35();
  v106 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v99 - v15;
  v16 = type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_0();
  v104 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B68, &qword_197A89660);
  OUTLINED_FUNCTION_28(v20);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v99 - v22;
  v24 = type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_27();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v99 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B70, &unk_197A89668);
  OUTLINED_FUNCTION_28(v32);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v99 - v34;
  v110 = v2;
  MEMORY[0x19A8EBBD0](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (swift_dynamicCast())
  {

    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v16);
    OUTLINED_FUNCTION_4_1();
    sub_19799747C(v35, v4, v39);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_41();
  v103 = v16;
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v16);
  sub_197947A40(v35, &qword_1EAF48B70, &unk_197A89668);
  v110 = v2;
  MEMORY[0x19A8EBBD0](v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v24);
    sub_197947A40(v23, &qword_1EAF48B68, &qword_197A89660);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v24);
  sub_19799747C(v23, v31, type metadata accessor for ModelManagerError);
  sub_197990B74(v31, v28, type metadata accessor for ModelManagerError);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_197990BD0(v31, type metadata accessor for ModelManagerError);
    v46 = OUTLINED_FUNCTION_63();
    sub_197990BD0(v46, v47);
LABEL_7:
    v51 = sub_197A870D8();
    if (qword_1ED880370 != -1)
    {
      OUTLINED_FUNCTION_50(&qword_1ED880370);
    }

    v104 = v4;
    v52 = sub_197A87608();
    __swift_project_value_buffer(v52, qword_1ED880520);
    MEMORY[0x19A8EBBD0](v2);
    v53 = sub_197A875E8();
    v54 = sub_197A87D58();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      MEMORY[0x19A8EBBD0](v2);
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&dword_197941000, v53, v54, "InferenceError: got unrecognized error %@", v55, 0xCu);
      sub_197947A40(v56, &qword_1EAF48A90, &qword_197A891A0);
      MEMORY[0x19A8EBE00](v56, -1, -1);
      MEMORY[0x19A8EBE00](v55, -1, -1);
    }

    v110 = v2;
    MEMORY[0x19A8EBBD0](v2);
    v58 = sub_197A87988();
    v101 = v59;
    v102 = v58;
    v60 = [v51 domain];
    v99 = sub_197A87938();
    v62 = v61;

    v63 = [v51 code];
    v100 = v51;
    v64 = v63;
    v65 = sub_197A87898();
    v66 = sub_197A87258();
    v67 = v105;
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v66);
    sub_197947A40(v67, &qword_1EAF48B20, &qword_197A89620);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v66);
    v74 = v106;
    sub_19798E8A4(v67, v106);
    v75 = v101;
    *v0 = v102;
    *(v0 + 8) = v75;
    *(v0 + 16) = v99;
    *(v0 + 24) = v62;
    *(v0 + 32) = v64;
    *(v0 + 40) = v65;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    v76 = v107;
    sub_19798E8A4(v74, v107);
    LODWORD(v64) = __swift_getEnumTagSinglePayload(v76, 1, v66);

    sub_197947A40(v74, &qword_1EAF48B20, &qword_197A89620);
    sub_197947A40(v67, &qword_1EAF48B20, &qword_197A89620);
    if (v64 == 1)
    {
      v77 = v108;
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v66);
      OUTLINED_FUNCTION_64_0(v76, 1, v66);
      v81 = v104;
      v82 = v109;
      if (!v83)
      {
        sub_197947A40(v76, &qword_1EAF48B20, &qword_197A89620);
      }
    }

    else
    {
      OUTLINED_FUNCTION_36_0();
      v77 = v108;
      (*(v84 + 32))(v108, v76, v66);
      OUTLINED_FUNCTION_52_1();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
      v81 = v104;
      v82 = v109;
    }

    sub_19798F508(v77, v0 + *(v82 + 40));
    v89 = OUTLINED_FUNCTION_45_0();
    sub_19799747C(v89, v81, v90);
    swift_storeEnumTagMultiPayload();
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_4_1();
  v91 = v104;
  sub_19799747C(v28, v104, v92);
  OUTLINED_FUNCTION_3_1();
  sub_197990B74(v91, v4, v93);
  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50(&qword_1ED880370);
  }

  v94 = sub_197A87608();
  __swift_project_value_buffer(v94, qword_1ED880520);
  v95 = sub_197A875E8();
  v96 = sub_197A87D68();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_197941000, v95, v96, "Received a ModelManagerError wrapping an InferenceError", v97, 2u);
    MEMORY[0x19A8EBE00](v97, -1, -1);
  }

  OUTLINED_FUNCTION_1_2();
  sub_197990BD0(v91, v98);
  sub_197990BD0(v31, type metadata accessor for ModelManagerError);
LABEL_16:
  OUTLINED_FUNCTION_66();
}

uint64_t InferenceError.errorCode.getter()
{
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1_0();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_3_1();
  v4 = OUTLINED_FUNCTION_63();
  sub_197990B74(v4, v5, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 2000;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2014;
      break;
    case 2:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2003;
      break;
    case 3:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2004;
      break;
    case 4:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2005;
      break;
    case 5:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2006;
      break;
    case 6:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2007;
      break;
    case 7:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2008;
      break;
    case 8:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2009;
      break;
    case 9:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2010;
      break;
    case 10:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2011;
      break;
    case 11:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2012;
      break;
    case 12:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2016;
      break;
    case 13:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2017;
      break;
    case 14:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 3001;
      break;
    case 15:
    case 16:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2001;
      break;
    case 17:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2015;
      break;
    case 18:
      return result;
    case 19:
      result = 2013;
      break;
    case 20:
      result = 2018;
      break;
    case 21:
      result = 2019;
      break;
    case 22:
      result = 2020;
      break;
    case 23:
      result = 2021;
      break;
    case 24:
      result = 3000;
      break;
    default:
      sub_197990BD0(v3, type metadata accessor for InferenceError);
      result = 2002;
      break;
  }

  return result;
}

uint64_t InferenceError.retryAfterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B78, &qword_197A89678);
  OUTLINED_FUNCTION_28(v3);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_60_0();
  InferenceError.context.getter();
  v5 = type metadata accessor for InferenceError.Context(0);
  OUTLINED_FUNCTION_64_0(v1, 1, v5);
  if (v6)
  {
    sub_197947A40(v1, &qword_1EAF48B78, &qword_197A89678);
    sub_197A87258();
    OUTLINED_FUNCTION_41();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    sub_19798E8A4(v1 + *(v5 + 40), a1);
    OUTLINED_FUNCTION_6_1();
    return sub_197990BD0(v1, v11);
  }
}

uint64_t InferenceError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_3_1();
  sub_197990B74(v2, v7, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      v9 = MEMORY[0x1E698C2A0];
      goto LABEL_14;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 0xEu:
      v9 = MEMORY[0x1E698C330];
      goto LABEL_14;
    case 8u:
      v9 = MEMORY[0x1E698C2F0];
      goto LABEL_14;
    case 9u:
      v9 = MEMORY[0x1E698C2B8];
      goto LABEL_14;
    case 0xAu:
      v9 = MEMORY[0x1E698C2C0];
      goto LABEL_14;
    case 0xCu:
      v9 = MEMORY[0x1E698C328];
      goto LABEL_14;
    case 0xDu:
      v9 = MEMORY[0x1E698C300];
      goto LABEL_14;
    case 0xFu:
      v9 = MEMORY[0x1E698C2C8];
      goto LABEL_14;
    case 0x10u:
      sub_197990BD0(v7, type metadata accessor for InferenceError);
      goto LABEL_12;
    case 0x11u:
      sub_197990BD0(v7, type metadata accessor for InferenceError);
      goto LABEL_16;
    case 0x12u:
LABEL_12:
      v10 = MEMORY[0x1E698C2C8];
      goto LABEL_17;
    case 0x13u:
      v10 = MEMORY[0x1E698C348];
      goto LABEL_17;
    case 0x14u:
      v10 = MEMORY[0x1E698C2F8];
      goto LABEL_17;
    case 0x15u:
    case 0x16u:
    case 0x18u:
LABEL_16:
      v10 = MEMORY[0x1E698C330];
      goto LABEL_17;
    case 0x17u:
      v10 = MEMORY[0x1E698C300];
LABEL_17:
      v15 = *v10;
      sub_197A87558();
      OUTLINED_FUNCTION_6();
      result = (*(v16 + 104))(a1, v15);
      break;
    default:
      v9 = MEMORY[0x1E698C2B0];
LABEL_14:
      v11 = *v9;
      sub_197A87558();
      OUTLINED_FUNCTION_6();
      (*(v12 + 104))(a1, v11);
      OUTLINED_FUNCTION_1_2();
      result = sub_197990BD0(v7, v13);
      break;
  }

  return result;
}

uint64_t sub_197991E20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C706D49746F6ELL && a2 == 0xEE006465746E656DLL;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000197AA1FD0 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x8000000197AA2070 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x8000000197AA2050 == a2;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4C79646165726C61 && a2 == 0xED0000646564616FLL;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6564616F4C746F6ELL && a2 == 0xE900000000000064;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C69614664616F6CLL && a2 == 0xEA00000000006465;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x636E657265666E69 && a2 == 0xEF64656C69614665;
                  if (v13 || (sub_197A88218() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x8000000197AA2030 == a2;
                    if (v14 || (sub_197A88218() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000012 && 0x8000000197AA2010 == a2;
                      if (v15 || (sub_197A88218() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000014 && 0x8000000197AA1FF0 == a2;
                        if (v16 || (sub_197A88218() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6F4E6D6165727473 && a2 == 0xEE00646E756F4674;
                          if (v17 || (sub_197A88218() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x696D694C65746172 && a2 == 0xEB00000000646574;
                            if (v18 || (sub_197A88218() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245;
                              if (v19 || (sub_197A88218() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x456B726F7774656ELL && a2 == 0xEC000000726F7272;
                                if (v20 || (sub_197A88218() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x656372756F736572 && a2 == 0xED00007973754273;
                                  if (v21 || (sub_197A88218() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000016 && 0x8000000197AA2140 == a2;
                                    if (v22 || (sub_197A88218() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000015 && 0x8000000197AA2160 == a2;
                                      if (v23 || (sub_197A88218() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000013 && 0x8000000197AA2180 == a2;
                                        if (v24 || (sub_197A88218() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x6F72724574736F68 && a2 == 0xE900000000000072;
                                          if (v25 || (sub_197A88218() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6C69614674736F68 && a2 == 0xEA00000000006465;
                                            if (v26 || (sub_197A88218() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD00000000000001ALL && 0x8000000197AA2090 == a2;
                                              if (v27 || (sub_197A88218() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD00000000000001BLL && 0x8000000197AA20B0 == a2;
                                                if (v28 || (sub_197A88218() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (a1 == 0x726F727245637078 && a2 == 0xE800000000000000)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v30 = sub_197A88218();

                                                  if (v30)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 25;
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

uint64_t sub_1979925B8(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x656C706D49746F6ELL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x4C79646165726C61;
      break;
    case 6:
      result = 0x6564616F4C746F6ELL;
      break;
    case 7:
      v3 = 1684107116;
      goto LABEL_18;
    case 8:
      result = 0x636E657265666E69;
      break;
    case 9:
    case 19:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x6F4E6D6165727473;
      break;
    case 13:
      result = 0x696D694C65746172;
      break;
    case 14:
      result = 0x6C616E7265746E69;
      break;
    case 15:
      result = 0x456B726F7774656ELL;
      break;
    case 16:
      result = 0x656372756F736572;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0x6F72724574736F68;
      break;
    case 21:
      v3 = 1953722216;
LABEL_18:
      result = v3 | 0x6C69614600000000;
      break;
    case 22:
      result = 0xD00000000000001ALL;
      break;
    case 23:
      result = 0xD00000000000001BLL;
      break;
    case 24:
      result = 0x726F727245637078;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1979928B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_197A88218();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_197992928()
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](0);
  return sub_197A88358();
}

uint64_t sub_19799298C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197991E0C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1979929B8(uint64_t a1)
{
  v2 = sub_197997B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979929F4(uint64_t a1)
{
  v2 = sub_197997B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992A34(uint64_t a1)
{
  v2 = sub_197997970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992A70(uint64_t a1)
{
  v2 = sub_197997970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197991E20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197992ADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979925B0();
  *a1 = result;
  return result;
}

uint64_t sub_197992B04(uint64_t a1)
{
  v2 = sub_1979974D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992B40(uint64_t a1)
{
  v2 = sub_1979974D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992B7C(uint64_t a1)
{
  v2 = sub_197997778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992BB8(uint64_t a1)
{
  v2 = sub_197997778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992BF4(uint64_t a1)
{
  v2 = sub_197997724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992C30(uint64_t a1)
{
  v2 = sub_197997724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992C6C(uint64_t a1)
{
  v2 = sub_19799767C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992CA8(uint64_t a1)
{
  v2 = sub_19799767C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992CE4(uint64_t a1)
{
  v2 = sub_197997628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992D20(uint64_t a1)
{
  v2 = sub_197997628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992D5C(uint64_t a1)
{
  v2 = sub_197997A6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992D98(uint64_t a1)
{
  v2 = sub_197997A6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992DD4(uint64_t a1)
{
  v2 = sub_197997874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992E10(uint64_t a1)
{
  v2 = sub_197997874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992E4C(uint64_t a1)
{
  v2 = sub_197997C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992E88(uint64_t a1)
{
  v2 = sub_197997C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992EC4(uint64_t a1)
{
  v2 = sub_197997AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992F00(uint64_t a1)
{
  v2 = sub_197997AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992F3C(uint64_t a1)
{
  v2 = sub_197997820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992F78(uint64_t a1)
{
  v2 = sub_197997820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197992FB4(uint64_t a1)
{
  v2 = sub_197997CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197992FF0(uint64_t a1)
{
  v2 = sub_197997CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19799302C(uint64_t a1)
{
  v2 = sub_197997B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993068(uint64_t a1)
{
  v2 = sub_197997B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979930A4(uint64_t a1)
{
  v2 = sub_1979979C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979930E0(uint64_t a1)
{
  v2 = sub_1979979C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19799311C(uint64_t a1)
{
  v2 = sub_197997A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993158(uint64_t a1)
{
  v2 = sub_197997A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197993194(uint64_t a1)
{
  v2 = sub_1979978C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979931D0(uint64_t a1)
{
  v2 = sub_1979978C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19799320C(uint64_t a1)
{
  v2 = sub_1979977CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993248(uint64_t a1)
{
  v2 = sub_1979977CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197993284(uint64_t a1)
{
  v2 = sub_197997BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979932C0(uint64_t a1)
{
  v2 = sub_197997BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979932FC(uint64_t a1)
{
  v2 = sub_19799791C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993338(uint64_t a1)
{
  v2 = sub_19799791C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197993374(uint64_t a1)
{
  v2 = sub_197997580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979933B0(uint64_t a1)
{
  v2 = sub_197997580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979933EC(uint64_t a1)
{
  v2 = sub_197997D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993428(uint64_t a1)
{
  v2 = sub_197997D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197993464(uint64_t a1)
{
  v2 = sub_1979975D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979934A0(uint64_t a1)
{
  v2 = sub_1979975D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979934DC(uint64_t a1)
{
  v2 = sub_197997C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993518(uint64_t a1)
{
  v2 = sub_197997C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197993554(uint64_t a1)
{
  v2 = sub_1979976D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993590(uint64_t a1)
{
  v2 = sub_1979976D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1979935CC(uint64_t a1)
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](0);
  return sub_197A88358();
}

uint64_t sub_19799360C(uint64_t a1)
{
  v2 = sub_19799752C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197993648(uint64_t a1)
{
  v2 = sub_19799752C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceError.encode(to:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B80, &qword_197A89680);
  OUTLINED_FUNCTION_2();
  v232 = v5;
  v233 = v4;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_30();
  v231 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B88, &qword_197A89688);
  OUTLINED_FUNCTION_2();
  v229 = v9;
  v230 = v8;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_30();
  v227 = v11;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B90, &qword_197A89690);
  OUTLINED_FUNCTION_2();
  v226 = v12;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  v225[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B98, &qword_197A89698);
  OUTLINED_FUNCTION_2();
  v224[2] = v16;
  v225[0] = v15;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30();
  v224[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BA0, &qword_197A896A0);
  OUTLINED_FUNCTION_2();
  v223 = v20;
  v224[0] = v19;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_30();
  v222 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BA8, &qword_197A896A8);
  OUTLINED_FUNCTION_2_1(v23, &v242);
  v220[3] = v24;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BB0, &qword_197A896B0);
  OUTLINED_FUNCTION_2_1(v27, &v241);
  v220[0] = v28;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BB8, &qword_197A896B8);
  OUTLINED_FUNCTION_2_1(v31, v238);
  v217 = v32;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BC0, &qword_197A896C0);
  OUTLINED_FUNCTION_2_1(v35, &v240);
  v219 = v36;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BC8, &qword_197A896C8);
  OUTLINED_FUNCTION_2_1(v39, &v237);
  v216 = v40;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BD0, &qword_197A896D0);
  OUTLINED_FUNCTION_2_1(v43, v235);
  v214 = v44;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BD8, &qword_197A896D8);
  OUTLINED_FUNCTION_2_1(v47, &v232);
  v213 = v48;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BE0, &qword_197A896E0);
  OUTLINED_FUNCTION_2_1(v51, &v229);
  v212 = v52;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BE8, &qword_197A896E8);
  OUTLINED_FUNCTION_2_1(v55, &v226);
  v210 = v56;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BF0, &qword_197A896F0);
  OUTLINED_FUNCTION_2_1(v59, v224);
  v204 = v60;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48BF8, &qword_197A896F8);
  OUTLINED_FUNCTION_2_1(v63, v225);
  v208 = v64;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C00, &qword_197A89700);
  OUTLINED_FUNCTION_2_1(v67, v221);
  v202 = v68;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C08, &qword_197A89708);
  OUTLINED_FUNCTION_2_1(v71, v220);
  v198 = v72;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C10, &qword_197A89710);
  OUTLINED_FUNCTION_2_1(v75, v218);
  v195[33] = v76;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C18, &qword_197A89718);
  OUTLINED_FUNCTION_2_1(v79, &v217);
  v195[30] = v80;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C20, &qword_197A89720);
  OUTLINED_FUNCTION_2_1(v83, v215);
  v195[27] = v84;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C28, &qword_197A89728);
  OUTLINED_FUNCTION_2_1(v87, &v214);
  v195[24] = v88;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C30, &qword_197A89730);
  OUTLINED_FUNCTION_2_1(v91, &v213);
  v195[21] = v92;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C38, &qword_197A89738);
  OUTLINED_FUNCTION_2_1(v95, &v212);
  v195[18] = v96;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v98);
  v234 = type metadata accessor for InferenceError.Context(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v114);
  v116 = v195 - v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C40, &qword_197A89740);
  OUTLINED_FUNCTION_2();
  v195[1] = v118;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_65_0();
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_80_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48C48, &qword_197A89748);
  OUTLINED_FUNCTION_2();
  v235[1] = v121;
  v236 = v122;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v123);
  v125 = v195 - v124;
  v126 = *(a1 + 32);
  v127 = OUTLINED_FUNCTION_63();
  __swift_project_boxed_opaque_existential_1(v127, v128);
  sub_1979974D8();
  v235[0] = v125;
  sub_197A883D8();
  OUTLINED_FUNCTION_3_1();
  sub_197990B74(v237, v1, v129);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_59_0(v1, v196, type metadata accessor for InferenceError.Context);
      v239 = 2;
      sub_197997C64();
      OUTLINED_FUNCTION_42_1();
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v168, v169, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_1();
      v170 = OUTLINED_FUNCTION_24_1();
      v171(v170, v1);
      OUTLINED_FUNCTION_6_1();
      v135 = v2;
      goto LABEL_15;
    case 2u:
      OUTLINED_FUNCTION_59_0(v1, v197, type metadata accessor for InferenceError.Context);
      v239 = 3;
      sub_197997C10();
      OUTLINED_FUNCTION_10_1(&type metadata for InferenceError.UnsupportedRequestTypeCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v155, v156, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_26;
    case 3u:
      OUTLINED_FUNCTION_59_0(v1, &v198, type metadata accessor for InferenceError.Context);
      v239 = 4;
      sub_197997BBC();
      OUTLINED_FUNCTION_10_1(&type metadata for InferenceError.ResponseEncodingFailedCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v164, v165, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_26;
    case 4u:
      OUTLINED_FUNCTION_59_0(v1, v199, type metadata accessor for InferenceError.Context);
      v239 = 5;
      sub_197997B68();
      OUTLINED_FUNCTION_10_1(&type metadata for InferenceError.AlreadyLoadedCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v148, v149, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_26;
    case 5u:
      OUTLINED_FUNCTION_59_0(v1, v200, type metadata accessor for InferenceError.Context);
      v239 = 6;
      sub_197997B14();
      OUTLINED_FUNCTION_10_1(&type metadata for InferenceError.NotLoadedCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v178, v179, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_26;
    case 6u:
      OUTLINED_FUNCTION_59_0(v1, v201, type metadata accessor for InferenceError.Context);
      v239 = 7;
      sub_197997AC0();
      OUTLINED_FUNCTION_10_1(&type metadata for InferenceError.LoadFailedCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v182, v183, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_26;
    case 7u:
      OUTLINED_FUNCTION_59_0(v1, &v202, type metadata accessor for InferenceError.Context);
      v239 = 8;
      sub_197997A6C();
      OUTLINED_FUNCTION_10_1(&type metadata for InferenceError.InferenceFailedCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v166, v167, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_26;
    case 8u:
      OUTLINED_FUNCTION_59_0(v1, v203, type metadata accessor for InferenceError.Context);
      v239 = 9;
      sub_197997A18();
      OUTLINED_FUNCTION_10_1(&type metadata for InferenceError.OperationNotAllowedCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v187, v188, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_26;
    case 9u:
      OUTLINED_FUNCTION_59_0(v1, &v204, type metadata accessor for InferenceError.Context);
      v239 = 12;
      sub_19799791C();
      OUTLINED_FUNCTION_10_1(&type metadata for InferenceError.StreamNotFoundCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v152, v153, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_26;
    case 0xAu:
      OUTLINED_FUNCTION_59_0(v1, v205, type metadata accessor for InferenceError.Context);
      v239 = 13;
      sub_1979978C8();
      OUTLINED_FUNCTION_10_1(&type metadata for InferenceError.RateLimitedCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v185, v186, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_26;
    case 0xBu:
      OUTLINED_FUNCTION_59_0(v1, v206, type metadata accessor for InferenceError.Context);
      v239 = 14;
      sub_197997874();
      OUTLINED_FUNCTION_10_1(&type metadata for InferenceError.InternalErrorCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v146, v147, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_26;
    case 0xCu:
      OUTLINED_FUNCTION_59_0(v1, v207, type metadata accessor for InferenceError.Context);
      v239 = 15;
      sub_197997820();
      OUTLINED_FUNCTION_10_1(&type metadata for InferenceError.NetworkErrorCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v150, v151, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_26;
    case 0xDu:
      OUTLINED_FUNCTION_59_0(v1, &v208, type metadata accessor for InferenceError.Context);
      v239 = 16;
      sub_1979977CC();
      OUTLINED_FUNCTION_10_1(&type metadata for InferenceError.ResourcesBusyCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v180, v181, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_17_1();
      goto LABEL_26;
    case 0xEu:
      OUTLINED_FUNCTION_59_0(v1, v209, type metadata accessor for InferenceError.Context);
      v239 = 21;
      sub_197997628();
      OUTLINED_FUNCTION_16_0(&type metadata for InferenceError.HostFailedCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v139, v140, protocol conformance descriptor for InferenceError.Context);
      v141 = OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_26_1(v141, v142, v143, v144, v145);
      goto LABEL_26;
    case 0xFu:
      OUTLINED_FUNCTION_59_0(v1, v211, type metadata accessor for InferenceError.Context);
      v239 = 22;
      sub_1979975D4();
      OUTLINED_FUNCTION_16_0(&type metadata for InferenceError.UnspecifiedUnderlyingErrorCodingKeys, &v239);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v157, v158, protocol conformance descriptor for InferenceError.Context);
      v159 = OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_26_1(v159, v160, v161, v162, v163);
LABEL_26:
      v189 = OUTLINED_FUNCTION_61();
      v190(v189);
      OUTLINED_FUNCTION_6_1();
      sub_197990BD0(v2, v191);
      goto LABEL_27;
    case 0x10u:
      v239 = 23;
      sub_197997580();
      v136 = v227;
      OUTLINED_FUNCTION_25_2(&type metadata for InferenceError.UnrecognizedUnderlyingErrorCodingKeys, &v239);
      OUTLINED_FUNCTION_61();
      v137 = v230;
      sub_197A880B8();

      v138 = v229;
      goto LABEL_17;
    case 0x11u:
      v239 = 24;
      sub_19799752C();
      v136 = v231;
      OUTLINED_FUNCTION_25_2(&type metadata for InferenceError.XpcErrorCodingKeys, &v239);
      OUTLINED_FUNCTION_61();
      v137 = v233;
      sub_197A880B8();

      v138 = v232;
LABEL_17:
      (*(v138 + 8))(v136, v137);
LABEL_27:
      v174 = *(v236 + 8);
      v172 = v125;
      v173 = v1;
      goto LABEL_28;
    case 0x12u:
      v239 = 0;
      sub_197997D0C();
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      OUTLINED_FUNCTION_32();
      v176 = v2;
      v184 = v117;
      goto LABEL_33;
    case 0x13u:
      v239 = 10;
      sub_1979979C4();
      OUTLINED_FUNCTION_31_0(&type metadata for InferenceError.OperationCancelledCodingKeys, &v239);
      OUTLINED_FUNCTION_32();
      v176 = v126;
      v177 = v224;
      goto LABEL_32;
    case 0x14u:
      v239 = 11;
      sub_197997970();
      OUTLINED_FUNCTION_31_0(&type metadata for InferenceError.AssetVersionMismatchCodingKeys, &v239);
      OUTLINED_FUNCTION_32();
      v176 = v126;
      v177 = &v226;
      goto LABEL_32;
    case 0x15u:
      v239 = 17;
      sub_197997778();
      OUTLINED_FUNCTION_31_0(&type metadata for InferenceError.ConversionNotSupportedCodingKeys, &v239);
      OUTLINED_FUNCTION_32();
      v176 = v126;
      v177 = v238;
      goto LABEL_32;
    case 0x16u:
      v239 = 18;
      sub_197997724();
      OUTLINED_FUNCTION_31_0(&type metadata for InferenceError.DeviceConnectionErrorCodingKeys, &v239);
      OUTLINED_FUNCTION_32();
      v176 = v126;
      v177 = &v241;
      goto LABEL_32;
    case 0x17u:
      v239 = 19;
      sub_1979976D0();
      OUTLINED_FUNCTION_31_0(&type metadata for InferenceError.VersionNotSupportedCodingKeys, &v239);
      OUTLINED_FUNCTION_32();
      v176 = v126;
      v177 = &v242;
LABEL_32:
      v184 = *(v177 - 32);
LABEL_33:
      v175(v176, v184);
      goto LABEL_34;
    case 0x18u:
      v239 = 20;
      sub_19799767C();
      v154 = v222;
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      (*(v223 + 8))(v154, v224[0]);
LABEL_34:
      v193 = OUTLINED_FUNCTION_63();
      result = v194(v193);
      break;
    default:
      sub_19799747C(v1, v116, type metadata accessor for InferenceError.Context);
      v239 = 1;
      sub_197997CB8();
      OUTLINED_FUNCTION_42_1();
      OUTLINED_FUNCTION_47();
      sub_197A88058();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v130, v131, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_74_1();
      v132 = OUTLINED_FUNCTION_24_1();
      v133(v132, v1);
      OUTLINED_FUNCTION_6_1();
      v135 = v116;
LABEL_15:
      sub_197990BD0(v135, v134);
      v172 = OUTLINED_FUNCTION_61();
LABEL_28:
      result = v174(v172, v173);
      break;
  }

  return result;
}

void InferenceError.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v308 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D00, &qword_197A89750);
  OUTLINED_FUNCTION_2_1(v5, v315);
  v286 = v6;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_30();
  v307 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D08, &qword_197A89758);
  OUTLINED_FUNCTION_2_1(v9, &v314);
  v285 = v10;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_30();
  v306 = v12;
  v309[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D10, &qword_197A89760);
  OUTLINED_FUNCTION_2();
  v284 = v13;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  v305[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D18, &qword_197A89768);
  OUTLINED_FUNCTION_2_1(v16, &v313);
  v283 = v17;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_30();
  v305[0] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D20, &qword_197A89770);
  OUTLINED_FUNCTION_2_1(v20, &v312);
  v289[24] = v21;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30();
  v304 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D28, &qword_197A89778);
  OUTLINED_FUNCTION_2_1(v24, &v310);
  v289[22] = v25;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_30();
  v303 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D30, &qword_197A89780);
  OUTLINED_FUNCTION_2_1(v28, v309);
  v289[20] = v29;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_30();
  v302 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D38, &qword_197A89788);
  OUTLINED_FUNCTION_2_1(v32, &v306);
  v289[17] = v33;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_30();
  v300[1] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D40, &qword_197A89790);
  OUTLINED_FUNCTION_2_1(v36, &v307);
  v282 = v37;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_30();
  v301 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D48, &qword_197A89798);
  OUTLINED_FUNCTION_2_1(v40, v305);
  v281 = v41;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_30();
  v300[0] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D50, &qword_197A897A0);
  OUTLINED_FUNCTION_2_1(v44, &v304);
  v280 = v45;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_30();
  v299 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D58, &qword_197A897A8);
  OUTLINED_FUNCTION_2_1(v48, &v303);
  v279 = v49;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D60, &qword_197A897B0);
  OUTLINED_FUNCTION_2_1(v52, &v302);
  v278 = v53;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D68, &qword_197A897B8);
  OUTLINED_FUNCTION_2_1(v56, &v301);
  v289[11] = v57;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D70, &qword_197A897C0);
  OUTLINED_FUNCTION_2_1(v60, &v299);
  v289[8] = v61;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D78, &qword_197A897C8);
  OUTLINED_FUNCTION_2_1(v64, v300);
  v277 = v65;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D80, &qword_197A897D0);
  OUTLINED_FUNCTION_2_1(v68, v298);
  v276 = v69;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D88, &qword_197A897D8);
  OUTLINED_FUNCTION_2_1(v72, v297);
  v275 = v73;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D90, &qword_197A897E0);
  OUTLINED_FUNCTION_2_1(v76, v296);
  v274 = v77;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48D98, &qword_197A897E8);
  OUTLINED_FUNCTION_2_1(v80, v295);
  v273 = v81;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DA0, &qword_197A897F0);
  OUTLINED_FUNCTION_2_1(v84, v294);
  v272 = v85;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_30();
  v312 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DA8, &qword_197A897F8);
  OUTLINED_FUNCTION_2_1(v88, v293);
  v271 = v89;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DB0, &qword_197A89800);
  OUTLINED_FUNCTION_2_1(v92, v292);
  v270 = v93;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_30();
  v311 = v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DB8, &qword_197A89808);
  OUTLINED_FUNCTION_2_1(v96, &v291);
  v269 = v97;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DC0, &qword_197A89810);
  OUTLINED_FUNCTION_2_1(v100, v290);
  v287 = v101;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v103);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DC8, &qword_197A89818);
  OUTLINED_FUNCTION_2();
  v309[1] = v104;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_30();
  v315[1] = v106;
  v310 = type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_77_1();
  v122 = MEMORY[0x1EEE9AC00](v121);
  v124 = &v261 - v123;
  v125 = MEMORY[0x1EEE9AC00](v122);
  v127 = &v261 - v126;
  v128 = MEMORY[0x1EEE9AC00](v125);
  v130 = &v261 - v129;
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v261 - v132;
  v314 = a1;
  v134 = OUTLINED_FUNCTION_63();
  __swift_project_boxed_opaque_existential_1(v134, v135);
  sub_1979974D8();
  v136 = v315[0];
  sub_197A883A8();
  if (v136)
  {
    goto LABEL_9;
  }

  v264 = v2;
  v265 = v130;
  v266 = v127;
  v267 = v124;
  v268 = v3;
  v137 = v311;
  v138 = v312;
  v139 = v310;
  v315[0] = v133;
  v140 = v313;
  v141 = sub_197A88028();
  sub_197952474(v141, 0);
  if (v144 == v145 >> 1)
  {
    goto LABEL_7;
  }

  v263 = 0;
  if (v144 >= (v145 >> 1))
  {
    __break(1u);
    return;
  }

  v262 = *(v143 + v144);
  sub_197953C00(v144 + 1, v145 >> 1, v142, v143, v144, v145);
  v147 = v146;
  v149 = v148;
  swift_unknownObjectRelease();
  if (v147 != v149 >> 1)
  {
LABEL_7:
    sub_197A87E88();
    swift_allocError();
    v156 = v155;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DD0, &qword_197A89820);
    *v156 = v139;
    sub_197A87F38();
    sub_197A87E78();
    OUTLINED_FUNCTION_36_0();
    (*(v157 + 104))(v156);
    swift_willThrow();
    swift_unknownObjectRelease();
    v158 = OUTLINED_FUNCTION_49();
LABEL_8:
    v159(v158);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v314);
    return;
  }

  v150 = v309[0];
  switch(v262)
  {
    case 1:
      v316 = 1;
      sub_197997CB8();
      v190 = v289[30];
      OUTLINED_FUNCTION_20_2(&type metadata for InferenceError.NotImplementedCodingKeys, &v316);
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v191, v192, protocol conformance descriptor for InferenceError.Context);
      v193 = v264;
      v194 = v289[0];
      sub_197A87FD8();
      if (v140)
      {
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_32();
        v195(v190, v194);
        v158 = OUTLINED_FUNCTION_82_0();
        goto LABEL_8;
      }

      v263 = 0;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_32();
      v245(v190, v194);
      v246 = OUTLINED_FUNCTION_82_0();
      v247(v246);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_1();
      v244 = v193;
      goto LABEL_59;
    case 2:
      v316 = 2;
      sub_197997C64();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.InvalidClientDataCodingKeys, &v316);
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v175, v176, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_42_1();
      OUTLINED_FUNCTION_72_1(0, v177);
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_32();
      v237(v137, v138);
      v238 = OUTLINED_FUNCTION_39_1();
      v239(v238, v313);
      goto LABEL_54;
    case 3:
      v316 = 3;
      sub_197997C10();
      v180 = v291;
      OUTLINED_FUNCTION_20_2(&type metadata for InferenceError.UnsupportedRequestTypeCodingKeys, &v316);
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v181, v182, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_42_1();
      OUTLINED_FUNCTION_72_1(0, v183);
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_32();
      v240(v180, v138);
      v241 = OUTLINED_FUNCTION_39_1();
      v242(v241, v313);
LABEL_54:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_1();
      v244 = v137;
      goto LABEL_59;
    case 4:
      v316 = 4;
      sub_197997BBC();
      OUTLINED_FUNCTION_20_2(&type metadata for InferenceError.ResponseEncodingFailedCodingKeys, &v316);
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v168, v169, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v140)
      {
        swift_unknownObjectRelease();
        v170 = OUTLINED_FUNCTION_24_1();
        v184(v170, v150);
        v185 = OUTLINED_FUNCTION_39_1();
        v187 = v313;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_0();
      v230 = OUTLINED_FUNCTION_24_1();
      v231(v230, v150);
      v232 = OUTLINED_FUNCTION_39_1();
      v233(v232, v313);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_58;
    case 5:
      v316 = 5;
      sub_197997B68();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.AlreadyLoadedCodingKeys, &v316);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v204, v205, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v140)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    case 6:
      v316 = 6;
      sub_197997B14();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.NotLoadedCodingKeys, &v316);
      type metadata accessor for InferenceError.Context(0);
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v210, v211, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_33_0();
      v248 = OUTLINED_FUNCTION_9_0();
      v249(v248);
      v250 = OUTLINED_FUNCTION_11_0();
      v251(v250);
      OUTLINED_FUNCTION_44_3();
      goto LABEL_58;
    case 7:
      v316 = 7;
      sub_197997AC0();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.LoadFailedCodingKeys, &v316);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v188, v189, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v140)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    case 8:
      v316 = 8;
      sub_197997A6C();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.InferenceFailedCodingKeys, &v316);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v220, v221, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v140)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    case 9:
      v316 = 9;
      sub_197997A18();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.OperationNotAllowedCodingKeys, &v316);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v173, v174, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v140)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    case 10:
      v316 = 10;
      sub_1979979C4();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.OperationCancelledCodingKeys, &v316);
      OUTLINED_FUNCTION_33_0();
      v216 = OUTLINED_FUNCTION_24_1();
      v217(v216, v289[9]);
      v218 = OUTLINED_FUNCTION_11_0();
      v219(v218);
      OUTLINED_FUNCTION_28_1();
      goto LABEL_47;
    case 11:
      v316 = 11;
      sub_197997970();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.AssetVersionMismatchCodingKeys, &v316);
      OUTLINED_FUNCTION_33_0();
      v164 = OUTLINED_FUNCTION_24_1();
      v165(v164, v289[12]);
      v166 = OUTLINED_FUNCTION_11_0();
      v167(v166);
      OUTLINED_FUNCTION_28_1();
      goto LABEL_47;
    case 12:
      v316 = 12;
      sub_19799791C();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.StreamNotFoundCodingKeys, &v316);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v171, v172, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v140)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    case 13:
      v316 = 13;
      sub_1979978C8();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.RateLimitedCodingKeys, &v316);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v208, v209, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v140)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    case 14:
      v316 = 14;
      sub_197997874();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.InternalErrorCodingKeys, &v316);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v162, v163, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v140)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    case 15:
      v316 = 15;
      sub_197997820();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.NetworkErrorCodingKeys, &v316);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v178, v179, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v140)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    case 16:
      v316 = 16;
      sub_1979977CC();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.ResourcesBusyCodingKeys, &v316);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v160, v161, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v140)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    case 17:
      v316 = 17;
      sub_197997778();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.ConversionNotSupportedCodingKeys, &v316);
      OUTLINED_FUNCTION_33_0();
      v196 = OUTLINED_FUNCTION_24_1();
      v197(v196, v289[18]);
      v198 = OUTLINED_FUNCTION_11_0();
      v199(v198);
      OUTLINED_FUNCTION_28_1();
      goto LABEL_47;
    case 18:
      v316 = 18;
      sub_197997724();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.DeviceConnectionErrorCodingKeys, &v316);
      OUTLINED_FUNCTION_33_0();
      v212 = OUTLINED_FUNCTION_24_1();
      v213(v212, v289[21]);
      v214 = OUTLINED_FUNCTION_11_0();
      v215(v214);
      OUTLINED_FUNCTION_28_1();
      goto LABEL_47;
    case 19:
      v316 = 19;
      sub_1979976D0();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.VersionNotSupportedCodingKeys, &v316);
      OUTLINED_FUNCTION_33_0();
      v226 = OUTLINED_FUNCTION_24_1();
      v227(v226, v289[23]);
      v228 = OUTLINED_FUNCTION_11_0();
      v229(v228);
      OUTLINED_FUNCTION_28_1();
      goto LABEL_47;
    case 20:
      v316 = 20;
      sub_19799767C();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.HostErrorCodingKeys, &v316);
      OUTLINED_FUNCTION_33_0();
      v200 = OUTLINED_FUNCTION_24_1();
      v201(v200, v289[25]);
      v202 = OUTLINED_FUNCTION_11_0();
      v203(v202);
      OUTLINED_FUNCTION_28_1();
      goto LABEL_47;
    case 21:
      v316 = 21;
      sub_197997628();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.HostFailedCodingKeys, &v316);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v206, v207, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_22_0();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v140)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    case 22:
      v316 = 22;
      sub_1979975D4();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.UnspecifiedUnderlyingErrorCodingKeys, &v316);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_0_3();
      sub_19798FA98(v222, v223, protocol conformance descriptor for InferenceError.Context);
      OUTLINED_FUNCTION_19_1();
      sub_197A87FD8();
      OUTLINED_FUNCTION_43_0();
      if (v140)
      {
LABEL_44:
        swift_unknownObjectRelease();
        v224 = OUTLINED_FUNCTION_9_0();
        v225(v224);
        v185 = OUTLINED_FUNCTION_21_0();
LABEL_45:
        v186(v185, v187);
        goto LABEL_9;
      }

LABEL_57:
      OUTLINED_FUNCTION_33_0();
      v252 = OUTLINED_FUNCTION_9_0();
      v253(v252);
      v254 = OUTLINED_FUNCTION_21_0();
      v255(v254);
      OUTLINED_FUNCTION_44_3();
LABEL_58:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_1();
      v244 = v138;
LABEL_59:
      v140 = v315[0];
      sub_19799747C(v244, v315[0], v243);
LABEL_60:
      v256 = v314;
      OUTLINED_FUNCTION_4_1();
      sub_19799747C(v140, v308, v257);
      __swift_destroy_boxed_opaque_existential_1Tm(v256);
      break;
    case 23:
      v316 = 23;
      sub_197997580();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.UnrecognizedUnderlyingErrorCodingKeys, &v316);
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_79_3();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_32();
      v258(0, v140);
      v259 = OUTLINED_FUNCTION_67_0();
      v260(v259);
      OUTLINED_FUNCTION_78_1(&v288);
      goto LABEL_61;
    case 24:
      v316 = 24;
      sub_19799752C();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.XpcErrorCodingKeys, &v316);
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_79_3();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_32();
      v234(0, v140);
      v235 = OUTLINED_FUNCTION_67_0();
      v236(v235);
      OUTLINED_FUNCTION_78_1(v289);
LABEL_61:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_1();
      v244 = 0;
      goto LABEL_59;
    default:
      v316 = 0;
      sub_197997D0C();
      OUTLINED_FUNCTION_12_1(&type metadata for InferenceError.UnspecifiedCodingKeys, &v316);
      OUTLINED_FUNCTION_33_0();
      v151 = OUTLINED_FUNCTION_24_1();
      v152(v151, v288);
      v153 = OUTLINED_FUNCTION_11_0();
      v154(v153);
      OUTLINED_FUNCTION_28_1();
LABEL_47:
      swift_storeEnumTagMultiPayload();
      goto LABEL_60;
  }
}

uint64_t sub_197997290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19798FA98(&qword_1ED87E448, type metadata accessor for InferenceError, protocol conformance descriptor for InferenceError);

  return MEMORY[0x1EEDED5E0](a1, a2, a3, v6);
}

uint64_t sub_197997314(uint64_t a1)
{
  v2 = sub_19798FA98(&qword_1ED87E450, type metadata accessor for InferenceError, protocol conformance descriptor for InferenceError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_197997380(uint64_t a1)
{
  v2 = sub_19798FA98(&qword_1ED87E450, type metadata accessor for InferenceError, protocol conformance descriptor for InferenceError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

void sub_1979973F8()
{
  sub_19798FA98(&qword_1ED87E448, type metadata accessor for InferenceError, protocol conformance descriptor for InferenceError);

  JUMPOUT(0x19A8EA860);
}

uint64_t sub_19799747C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_22();
  v5(v4);
  return a2;
}

unint64_t sub_1979974D8()
{
  result = qword_1ED87F190;
  if (!qword_1ED87F190)
  {
    result = swift_getWitnessTable(byte_197A8B6F4, &type metadata for InferenceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F190);
  }

  return result;
}

unint64_t sub_19799752C()
{
  result = qword_1EAF48C50;
  if (!qword_1EAF48C50)
  {
    result = swift_getWitnessTable(byte_197A8B6A4, &type metadata for InferenceError.XpcErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48C50);
  }

  return result;
}

unint64_t sub_197997580()
{
  result = qword_1EAF48C58;
  if (!qword_1EAF48C58)
  {
    result = swift_getWitnessTable(aE_21, &type metadata for InferenceError.UnrecognizedUnderlyingErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48C58);
  }

  return result;
}

unint64_t sub_1979975D4()
{
  result = qword_1EAF48C60;
  if (!qword_1EAF48C60)
  {
    result = swift_getWitnessTable(byte_197A8B604, &type metadata for InferenceError.UnspecifiedUnderlyingErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48C60);
  }

  return result;
}

unint64_t sub_197997628()
{
  result = qword_1ED87D608;
  if (!qword_1ED87D608)
  {
    result = swift_getWitnessTable(byte_197A8B5B4, &type metadata for InferenceError.HostFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D608);
  }

  return result;
}

unint64_t sub_19799767C()
{
  result = qword_1EAF48C68;
  if (!qword_1EAF48C68)
  {
    result = swift_getWitnessTable(aU_21, &type metadata for InferenceError.HostErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48C68);
  }

  return result;
}

unint64_t sub_1979976D0()
{
  result = qword_1EAF48C70;
  if (!qword_1EAF48C70)
  {
    result = swift_getWitnessTable(byte_197A8B514, &type metadata for InferenceError.VersionNotSupportedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48C70);
  }

  return result;
}

unint64_t sub_197997724()
{
  result = qword_1EAF48C78;
  if (!qword_1EAF48C78)
  {
    result = swift_getWitnessTable(byte_197A8B4C4, &type metadata for InferenceError.DeviceConnectionErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48C78);
  }

  return result;
}

unint64_t sub_197997778()
{
  result = qword_1EAF48C80;
  if (!qword_1EAF48C80)
  {
    result = swift_getWitnessTable(aE_18, &type metadata for InferenceError.ConversionNotSupportedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48C80);
  }

  return result;
}

unint64_t sub_1979977CC()
{
  result = qword_1EAF48C88;
  if (!qword_1EAF48C88)
  {
    result = swift_getWitnessTable(byte_197A8B424, &type metadata for InferenceError.ResourcesBusyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48C88);
  }

  return result;
}

unint64_t sub_197997820()
{
  result = qword_1EAF48C90;
  if (!qword_1EAF48C90)
  {
    result = swift_getWitnessTable(byte_197A8B3D4, &type metadata for InferenceError.NetworkErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48C90);
  }

  return result;
}

unint64_t sub_197997874()
{
  result = qword_1EAF48C98;
  if (!qword_1EAF48C98)
  {
    result = swift_getWitnessTable(a5_8, &type metadata for InferenceError.InternalErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48C98);
  }

  return result;
}

unint64_t sub_1979978C8()
{
  result = qword_1EAF48CA0;
  if (!qword_1EAF48CA0)
  {
    result = swift_getWitnessTable(byte_197A8B334, &type metadata for InferenceError.RateLimitedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48CA0);
  }

  return result;
}

unint64_t sub_19799791C()
{
  result = qword_1EAF48CA8;
  if (!qword_1EAF48CA8)
  {
    result = swift_getWitnessTable(byte_197A8B2E4, &type metadata for InferenceError.StreamNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48CA8);
  }

  return result;
}

unint64_t sub_197997970()
{
  result = qword_1EAF48CB0;
  if (!qword_1EAF48CB0)
  {
    result = swift_getWitnessTable(asc_197A8B294, &type metadata for InferenceError.AssetVersionMismatchCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48CB0);
  }

  return result;
}

unint64_t sub_1979979C4()
{
  result = qword_1EAF48CB8;
  if (!qword_1EAF48CB8)
  {
    result = swift_getWitnessTable(aU_22, &type metadata for InferenceError.OperationCancelledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48CB8);
  }

  return result;
}

unint64_t sub_197997A18()
{
  result = qword_1EAF48CC0;
  if (!qword_1EAF48CC0)
  {
    result = swift_getWitnessTable(byte_197A8B1F4, &type metadata for InferenceError.OperationNotAllowedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48CC0);
  }

  return result;
}

unint64_t sub_197997A6C()
{
  result = qword_1ED87E468;
  if (!qword_1ED87E468)
  {
    result = swift_getWitnessTable(byte_197A8B1A4, &type metadata for InferenceError.InferenceFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87E468);
  }

  return result;
}

unint64_t sub_197997AC0()
{
  result = qword_1EAF48CC8;
  if (!qword_1EAF48CC8)
  {
    result = swift_getWitnessTable(aE_19, &type metadata for InferenceError.LoadFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48CC8);
  }

  return result;
}

unint64_t sub_197997B14()
{
  result = qword_1EAF48CD0;
  if (!qword_1EAF48CD0)
  {
    result = swift_getWitnessTable(byte_197A8B104, &type metadata for InferenceError.NotLoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48CD0);
  }

  return result;
}

unint64_t sub_197997B68()
{
  result = qword_1ED87D180;
  if (!qword_1ED87D180)
  {
    result = swift_getWitnessTable(byte_197A8B0B4, &type metadata for InferenceError.AlreadyLoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D180);
  }

  return result;
}

unint64_t sub_197997BBC()
{
  result = qword_1EAF48CD8;
  if (!qword_1EAF48CD8)
  {
    result = swift_getWitnessTable(aU_23, &type metadata for InferenceError.ResponseEncodingFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48CD8);
  }

  return result;
}

unint64_t sub_197997C10()
{
  result = qword_1EAF48CE0;
  if (!qword_1EAF48CE0)
  {
    result = swift_getWitnessTable(byte_197A8B014, &type metadata for InferenceError.UnsupportedRequestTypeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48CE0);
  }

  return result;
}

unint64_t sub_197997C64()
{
  result = qword_1EAF48CE8;
  if (!qword_1EAF48CE8)
  {
    result = swift_getWitnessTable(byte_197A8AFC4, &type metadata for InferenceError.InvalidClientDataCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48CE8);
  }

  return result;
}

unint64_t sub_197997CB8()
{
  result = qword_1EAF48CF0;
  if (!qword_1EAF48CF0)
  {
    result = swift_getWitnessTable(aE_20, &type metadata for InferenceError.NotImplementedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48CF0);
  }

  return result;
}

unint64_t sub_197997D0C()
{
  result = qword_1EAF48CF8;
  if (!qword_1EAF48CF8)
  {
    result = swift_getWitnessTable(byte_197A8AF24, &type metadata for InferenceError.UnspecifiedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48CF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InferenceError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_197998144(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for InferenceError.Context.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1979982D0()
{
  result = qword_1EAF48DD8;
  if (!qword_1EAF48DD8)
  {
    result = swift_getWitnessTable(asc_197A89F24, &type metadata for InferenceError.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48DD8);
  }

  return result;
}

unint64_t sub_197998328()
{
  result = qword_1EAF48DE0;
  if (!qword_1EAF48DE0)
  {
    result = swift_getWitnessTable(aM_23, &type metadata for InferenceError.XpcErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48DE0);
  }

  return result;
}

unint64_t sub_197998380()
{
  result = qword_1EAF48DE8;
  if (!qword_1EAF48DE8)
  {
    result = swift_getWitnessTable(byte_197A8A094, &type metadata for InferenceError.UnrecognizedUnderlyingErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48DE8);
  }

  return result;
}

unint64_t sub_1979983D8()
{
  result = qword_1EAF48DF0;
  if (!qword_1EAF48DF0)
  {
    result = swift_getWitnessTable(byte_197A8A14C, &type metadata for InferenceError.UnspecifiedUnderlyingErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48DF0);
  }

  return result;
}

unint64_t sub_197998430()
{
  result = qword_1EAF48DF8;
  if (!qword_1EAF48DF8)
  {
    result = swift_getWitnessTable(aE_22, &type metadata for InferenceError.HostFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48DF8);
  }

  return result;
}

unint64_t sub_197998488()
{
  result = qword_1EAF48E00;
  if (!qword_1EAF48E00)
  {
    result = swift_getWitnessTable(aM_24, &type metadata for InferenceError.ResourcesBusyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E00);
  }

  return result;
}

unint64_t sub_1979984E0()
{
  result = qword_1EAF48E08;
  if (!qword_1EAF48E08)
  {
    result = swift_getWitnessTable(byte_197A8A4B4, &type metadata for InferenceError.NetworkErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E08);
  }

  return result;
}

unint64_t sub_197998538()
{
  result = qword_1EAF48E10;
  if (!qword_1EAF48E10)
  {
    result = swift_getWitnessTable(byte_197A8A56C, &type metadata for InferenceError.InternalErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E10);
  }

  return result;
}

unint64_t sub_197998590()
{
  result = qword_1EAF48E18;
  if (!qword_1EAF48E18)
  {
    result = swift_getWitnessTable(asc_197A8A624, &type metadata for InferenceError.RateLimitedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E18);
  }

  return result;
}

unint64_t sub_1979985E8()
{
  result = qword_1EAF48E20;
  if (!qword_1EAF48E20)
  {
    result = swift_getWitnessTable(aM_25, &type metadata for InferenceError.StreamNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E20);
  }

  return result;
}

unint64_t sub_197998640()
{
  result = qword_1EAF48E28;
  if (!qword_1EAF48E28)
  {
    result = swift_getWitnessTable(byte_197A8A834, &type metadata for InferenceError.OperationNotAllowedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E28);
  }

  return result;
}

unint64_t sub_197998698()
{
  result = qword_1EAF48E30;
  if (!qword_1EAF48E30)
  {
    result = swift_getWitnessTable(asc_197A8A8EC, &type metadata for InferenceError.InferenceFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E30);
  }

  return result;
}

unint64_t sub_1979986F0()
{
  result = qword_1EAF48E38;
  if (!qword_1EAF48E38)
  {
    result = swift_getWitnessTable(byte_197A8A9A4, &type metadata for InferenceError.LoadFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E38);
  }

  return result;
}

unint64_t sub_197998748()
{
  result = qword_1EAF48E40;
  if (!qword_1EAF48E40)
  {
    result = swift_getWitnessTable(byte_197A8AA5C, &type metadata for InferenceError.NotLoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E40);
  }

  return result;
}

unint64_t sub_1979987A0()
{
  result = qword_1EAF48E48;
  if (!qword_1EAF48E48)
  {
    result = swift_getWitnessTable(a5_9, &type metadata for InferenceError.AlreadyLoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E48);
  }

  return result;
}

unint64_t sub_1979987F8()
{
  result = qword_1EAF48E50;
  if (!qword_1EAF48E50)
  {
    result = swift_getWitnessTable(asc_197A8ABCC, &type metadata for InferenceError.ResponseEncodingFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E50);
  }

  return result;
}

unint64_t sub_197998850()
{
  result = qword_1EAF48E58;
  if (!qword_1EAF48E58)
  {
    result = swift_getWitnessTable(byte_197A8AC84, &type metadata for InferenceError.UnsupportedRequestTypeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E58);
  }

  return result;
}

unint64_t sub_1979988A8()
{
  result = qword_1EAF48E60;
  if (!qword_1EAF48E60)
  {
    result = swift_getWitnessTable(asc_197A8AD3C, &type metadata for InferenceError.InvalidClientDataCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E60);
  }

  return result;
}

unint64_t sub_197998900()
{
  result = qword_1EAF48E68;
  if (!qword_1EAF48E68)
  {
    result = swift_getWitnessTable(aU_24, &type metadata for InferenceError.NotImplementedCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E68);
  }

  return result;
}

unint64_t sub_197998958()
{
  result = qword_1EAF48E70;
  if (!qword_1EAF48E70)
  {
    result = swift_getWitnessTable(aM_26, &type metadata for InferenceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF48E70);
  }

  return result;
}

unint64_t sub_1979989B0()
{
  result = qword_1ED87F130;
  if (!qword_1ED87F130)
  {
    result = swift_getWitnessTable(byte_197A8AE1C, &type metadata for InferenceError.UnspecifiedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F130);
  }

  return result;
}

unint64_t sub_197998A08()
{
  result = qword_1ED87F138;
  if (!qword_1ED87F138)
  {
    result = swift_getWitnessTable(byte_197A8AE44, &type metadata for InferenceError.UnspecifiedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F138);
  }

  return result;
}

unint64_t sub_197998A60()
{
  result = qword_1ED87F100;
  if (!qword_1ED87F100)
  {
    result = swift_getWitnessTable(byte_197A8AD64, &type metadata for InferenceError.NotImplementedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F100);
  }

  return result;
}

unint64_t sub_197998AB8()
{
  result = qword_1ED87F108;
  if (!qword_1ED87F108)
  {
    result = swift_getWitnessTable(byte_197A8AD8C, &type metadata for InferenceError.NotImplementedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F108);
  }

  return result;
}

unint64_t sub_197998B10()
{
  result = qword_1ED87F0E0;
  if (!qword_1ED87F0E0)
  {
    result = swift_getWitnessTable(aE_23, &type metadata for InferenceError.InvalidClientDataCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F0E0);
  }

  return result;
}

unint64_t sub_197998B68()
{
  result = qword_1ED87F0E8;
  if (!qword_1ED87F0E8)
  {
    result = swift_getWitnessTable(asc_197A8ACD4, &type metadata for InferenceError.InvalidClientDataCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F0E8);
  }

  return result;
}

unint64_t sub_197998BC0()
{
  result = qword_1ED87F070;
  if (!qword_1ED87F070)
  {
    result = swift_getWitnessTable(byte_197A8ABF4, &type metadata for InferenceError.UnsupportedRequestTypeCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F070);
  }

  return result;
}

unint64_t sub_197998C18()
{
  result = qword_1ED87F078;
  if (!qword_1ED87F078)
  {
    result = swift_getWitnessTable(byte_197A8AC1C, &type metadata for InferenceError.UnsupportedRequestTypeCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F078);
  }

  return result;
}

unint64_t sub_197998C70()
{
  result = qword_1ED87F080;
  if (!qword_1ED87F080)
  {
    result = swift_getWitnessTable(byte_197A8AB3C, &type metadata for InferenceError.ResponseEncodingFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F080);
  }

  return result;
}

unint64_t sub_197998CC8()
{
  result = qword_1ED87F088;
  if (!qword_1ED87F088)
  {
    result = swift_getWitnessTable(byte_197A8AB64, &type metadata for InferenceError.ResponseEncodingFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F088);
  }

  return result;
}

unint64_t sub_197998D20()
{
  result = qword_1ED87F120;
  if (!qword_1ED87F120)
  {
    result = swift_getWitnessTable(aM_27, &type metadata for InferenceError.AlreadyLoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F120);
  }

  return result;
}

unint64_t sub_197998D78()
{
  result = qword_1ED87F128;
  if (!qword_1ED87F128)
  {
    result = swift_getWitnessTable(byte_197A8AAAC, &type metadata for InferenceError.AlreadyLoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F128);
  }

  return result;
}

unint64_t sub_197998DD0()
{
  result = qword_1ED87F170;
  if (!qword_1ED87F170)
  {
    result = swift_getWitnessTable(asc_197A8A9CC, &type metadata for InferenceError.NotLoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F170);
  }

  return result;
}

unint64_t sub_197998E28()
{
  result = qword_1ED87F178;
  if (!qword_1ED87F178)
  {
    result = swift_getWitnessTable(asc_197A8A9F4, &type metadata for InferenceError.NotLoadedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F178);
  }

  return result;
}

unint64_t sub_197998E80()
{
  result = qword_1ED87F150;
  if (!qword_1ED87F150)
  {
    result = swift_getWitnessTable(byte_197A8A914, &type metadata for InferenceError.LoadFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F150);
  }

  return result;
}

unint64_t sub_197998ED8()
{
  result = qword_1ED87F158;
  if (!qword_1ED87F158)
  {
    result = swift_getWitnessTable(byte_197A8A93C, &type metadata for InferenceError.LoadFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F158);
  }

  return result;
}

unint64_t sub_197998F30()
{
  result = qword_1ED87F198;
  if (!qword_1ED87F198)
  {
    result = swift_getWitnessTable(byte_197A8A85C, &type metadata for InferenceError.InferenceFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F198);
  }

  return result;
}

unint64_t sub_197998F88()
{
  result = qword_1ED87F1A0;
  if (!qword_1ED87F1A0)
  {
    result = swift_getWitnessTable(byte_197A8A884, &type metadata for InferenceError.InferenceFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F1A0);
  }

  return result;
}

unint64_t sub_197998FE0()
{
  result = qword_1ED87F0C0;
  if (!qword_1ED87F0C0)
  {
    result = swift_getWitnessTable(aM_28, &type metadata for InferenceError.OperationNotAllowedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F0C0);
  }

  return result;
}

unint64_t sub_197999038()
{
  result = qword_1ED87F0C8;
  if (!qword_1ED87F0C8)
  {
    result = swift_getWitnessTable(aE_24, &type metadata for InferenceError.OperationNotAllowedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F0C8);
  }

  return result;
}

unint64_t sub_197999090()
{
  result = qword_1ED87F0D0;
  if (!qword_1ED87F0D0)
  {
    result = swift_getWitnessTable(byte_197A8A754, &type metadata for InferenceError.OperationCancelledCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F0D0);
  }

  return result;
}

unint64_t sub_1979990E8()
{
  result = qword_1ED87F0D8;
  if (!qword_1ED87F0D8)
  {
    result = swift_getWitnessTable(byte_197A8A77C, &type metadata for InferenceError.OperationCancelledCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F0D8);
  }

  return result;
}

unint64_t sub_197999140()
{
  result = qword_1ED87F0A0;
  if (!qword_1ED87F0A0)
  {
    result = swift_getWitnessTable(byte_197A8A704, &type metadata for InferenceError.AssetVersionMismatchCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F0A0);
  }

  return result;
}

unint64_t sub_197999198()
{
  result = qword_1ED87F0A8;
  if (!qword_1ED87F0A8)
  {
    result = swift_getWitnessTable(byte_197A8A72C, &type metadata for InferenceError.AssetVersionMismatchCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F0A8);
  }

  return result;
}

unint64_t sub_1979991F0()
{
  result = qword_1ED87F0F0;
  if (!qword_1ED87F0F0)
  {
    result = swift_getWitnessTable(byte_197A8A64C, &type metadata for InferenceError.StreamNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F0F0);
  }

  return result;
}

unint64_t sub_197999248()
{
  result = qword_1ED87F0F8;
  if (!qword_1ED87F0F8)
  {
    result = swift_getWitnessTable(byte_197A8A674, &type metadata for InferenceError.StreamNotFoundCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F0F8);
  }

  return result;
}

unint64_t sub_1979992A0()
{
  result = qword_1ED87F140;
  if (!qword_1ED87F140)
  {
    result = swift_getWitnessTable(asc_197A8A594, &type metadata for InferenceError.RateLimitedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F140);
  }

  return result;
}

unint64_t sub_1979992F8()
{
  result = qword_1ED87F148;
  if (!qword_1ED87F148)
  {
    result = swift_getWitnessTable(aU_25, &type metadata for InferenceError.RateLimitedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F148);
  }

  return result;
}

unint64_t sub_197999350()
{
  result = qword_1ED87F1A8;
  if (!qword_1ED87F1A8)
  {
    result = swift_getWitnessTable(byte_197A8A4DC, &type metadata for InferenceError.InternalErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F1A8);
  }

  return result;
}

unint64_t sub_1979993A8()
{
  result = qword_1ED87F1B0;
  if (!qword_1ED87F1B0)
  {
    result = swift_getWitnessTable(asc_197A8A504, &type metadata for InferenceError.InternalErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F1B0);
  }

  return result;
}

unint64_t sub_197999400()
{
  result = qword_1ED87F1B8;
  if (!qword_1ED87F1B8)
  {
    result = swift_getWitnessTable(byte_197A8A424, &type metadata for InferenceError.NetworkErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F1B8);
  }

  return result;
}

unint64_t sub_197999458()
{
  result = qword_1ED87F1C0;
  if (!qword_1ED87F1C0)
  {
    result = swift_getWitnessTable(byte_197A8A44C, &type metadata for InferenceError.NetworkErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F1C0);
  }

  return result;
}

unint64_t sub_1979994B0()
{
  result = qword_1ED87F110;
  if (!qword_1ED87F110)
  {
    result = swift_getWitnessTable(byte_197A8A36C, &type metadata for InferenceError.ResourcesBusyCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F110);
  }

  return result;
}

unint64_t sub_197999508()
{
  result = qword_1ED87F118;
  if (!qword_1ED87F118)
  {
    result = swift_getWitnessTable(byte_197A8A394, &type metadata for InferenceError.ResourcesBusyCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F118);
  }

  return result;
}

unint64_t sub_197999560()
{
  result = qword_1ED87F090;
  if (!qword_1ED87F090)
  {
    result = swift_getWitnessTable(byte_197A8A31C, &type metadata for InferenceError.ConversionNotSupportedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F090);
  }

  return result;
}

unint64_t sub_1979995B8()
{
  result = qword_1ED87F098;
  if (!qword_1ED87F098)
  {
    result = swift_getWitnessTable(byte_197A8A344, &type metadata for InferenceError.ConversionNotSupportedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F098);
  }

  return result;
}

unint64_t sub_197999610()
{
  result = qword_1ED87F208;
  if (!qword_1ED87F208)
  {
    result = swift_getWitnessTable(asc_197A8A2CC, &type metadata for InferenceError.DeviceConnectionErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F208);
  }

  return result;
}

unint64_t sub_197999668()
{
  result = qword_1ED87F210;
  if (!qword_1ED87F210)
  {
    result = swift_getWitnessTable(asc_197A8A2F4, &type metadata for InferenceError.DeviceConnectionErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F210);
  }

  return result;
}

unint64_t sub_1979996C0()
{
  result = qword_1ED87F0B0;
  if (!qword_1ED87F0B0)
  {
    result = swift_getWitnessTable(aU_26, &type metadata for InferenceError.VersionNotSupportedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F0B0);
  }

  return result;
}

unint64_t sub_197999718()
{
  result = qword_1ED87F0B8;
  if (!qword_1ED87F0B8)
  {
    result = swift_getWitnessTable(byte_197A8A2A4, &type metadata for InferenceError.VersionNotSupportedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F0B8);
  }

  return result;
}

unint64_t sub_197999770()
{
  result = qword_1ED87F1C8;
  if (!qword_1ED87F1C8)
  {
    result = swift_getWitnessTable(byte_197A8A22C, &type metadata for InferenceError.HostErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F1C8);
  }

  return result;
}

unint64_t sub_1979997C8()
{
  result = qword_1ED87F1D0;
  if (!qword_1ED87F1D0)
  {
    result = swift_getWitnessTable(byte_197A8A254, &type metadata for InferenceError.HostErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F1D0);
  }

  return result;
}

unint64_t sub_197999820()
{
  result = qword_1ED87F160;
  if (!qword_1ED87F160)
  {
    result = swift_getWitnessTable(asc_197A8A174, &type metadata for InferenceError.HostFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F160);
  }

  return result;
}

unint64_t sub_197999878()
{
  result = qword_1ED87F168;
  if (!qword_1ED87F168)
  {
    result = swift_getWitnessTable(byte_197A8A19C, &type metadata for InferenceError.HostFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F168);
  }

  return result;
}

unint64_t sub_1979998D0()
{
  result = qword_1ED87F1F8;
  if (!qword_1ED87F1F8)
  {
    result = swift_getWitnessTable(a5_10, &type metadata for InferenceError.UnspecifiedUnderlyingErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F1F8);
  }

  return result;
}

unint64_t sub_197999928()
{
  result = qword_1ED87F200;
  if (!qword_1ED87F200)
  {
    result = swift_getWitnessTable(aM_29, &type metadata for InferenceError.UnspecifiedUnderlyingErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F200);
  }

  return result;
}

unint64_t sub_197999980()
{
  result = qword_1ED87F1E8;
  if (!qword_1ED87F1E8)
  {
    result = swift_getWitnessTable(byte_197A8A004, &type metadata for InferenceError.UnrecognizedUnderlyingErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F1E8);
  }

  return result;
}

unint64_t sub_1979999D8()
{
  result = qword_1ED87F1F0;
  if (!qword_1ED87F1F0)
  {
    result = swift_getWitnessTable(byte_197A8A02C, &type metadata for InferenceError.UnrecognizedUnderlyingErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F1F0);
  }

  return result;
}

unint64_t sub_197999A30()
{
  result = qword_1ED87F1D8;
  if (!qword_1ED87F1D8)
  {
    result = swift_getWitnessTable(byte_197A89F4C, &type metadata for InferenceError.XpcErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F1D8);
  }

  return result;
}

unint64_t sub_197999A88()
{
  result = qword_1ED87F1E0;
  if (!qword_1ED87F1E0)
  {
    result = swift_getWitnessTable(byte_197A89F74, &type metadata for InferenceError.XpcErrorCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F1E0);
  }

  return result;
}

unint64_t sub_197999AE0()
{
  result = qword_1ED87F180;
  if (!qword_1ED87F180)
  {
    result = swift_getWitnessTable(byte_197A8AE6C, &type metadata for InferenceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F180);
  }

  return result;
}

unint64_t sub_197999B38()
{
  result = qword_1ED87F188;
  if (!qword_1ED87F188)
  {
    result = swift_getWitnessTable(byte_197A8AE94, &type metadata for InferenceError.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F188);
  }

  return result;
}

unint64_t sub_197999B90()
{
  result = qword_1ED87F058;
  if (!qword_1ED87F058)
  {
    result = swift_getWitnessTable(asc_197A89E94, &type metadata for InferenceError.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F058);
  }

  return result;
}

unint64_t sub_197999BE8()
{
  result = qword_1ED87F060;
  if (!qword_1ED87F060)
  {
    result = swift_getWitnessTable(aU_27, &type metadata for InferenceError.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87F060);
  }

  return result;
}

uint64_t loadAssetBundle(_:)()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197999CF4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_2();
  v0[15] = swift_initStackObject();
  v0[16] = sub_1979489D4("Loading asset bundle", 20, 2);
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1ED880698);
  }

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_1(v1);

  return ModelXPCSender.loadAssetBundle(_:dynamicMode:)(v3, v2, 0);
}

uint64_t sub_197999E00()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t loadAssetBundleToDynamicMode(_:)()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197999FB0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_2();
  v0[15] = swift_initStackObject();
  v0[16] = sub_1979489D4("Loading asset bundle to dynamic mode", 36, 2);
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1ED880698);
  }

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_1(v1);

  return ModelXPCSender.loadAssetBundle(_:dynamicMode:)(v3, v2, 1);
}

uint64_t holdAssetBundle(_:)()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_19799A144()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_2();
  v0[15] = swift_initStackObject();
  v0[16] = sub_1979489D4("Holding asset bundle", 20, 2);
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1ED880698);
  }

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_1(v1);

  return ModelXPCSender.holdAssetBundle(_:)();
}

uint64_t sub_19799A24C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_19799A374()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_19799A414()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_9_1();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t forceAssetVersionSwitch()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_19799A538()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_2();
  v0[13] = swift_initStackObject();
  v0[14] = sub_1979489D4("Forcing asset version switch", 28, 2);
  if (qword_1ED880698 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1ED880698);
  }

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_19799A640;

  return ModelXPCSender.forceAssetVersionSwitch()();
}

uint64_t sub_19799A640()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_19799A768()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_19799A808()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_9_1();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_19799A8A8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7_1();

  return sub_19799A374();
}

uint64_t sub_19799A914()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7_1();

  return sub_19799A414();
}

uint64_t sub_19799A9E4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EAF48E80;
  swift_beginAccess();
  return sub_19799D3C8(v1 + v3, a1);
}

uint64_t sub_19799AA3C(uint64_t a1)
{
  v3 = qword_1EAF48E80;
  swift_beginAccess();
  sub_19799D358(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_19799AA9C()
{
  v0 = OUTLINED_FUNCTION_22();
  sub_197948F1C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_19799AAE0()
{
  v0 = OUTLINED_FUNCTION_22();
  sub_197948F1C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t *sub_19799AB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  swift_defaultActor_initialize();
  v11 = qword_1EAF48E80;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  __swift_storeEnumTagSinglePayload(v5 + v11, 1, 1, v12);
  v13 = (v5 + qword_1EAF48E90);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v5 + qword_1EAF48E98);
  *v14 = 0;
  v14[1] = 0;
  type metadata accessor for BufferedStreamSequence.BufferValue(0, *(v10 + 80), v15, v16);
  v17 = sub_197A87B38();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v17);
  v5[14] = sub_197A87458();
  v18 = *v13;
  v19 = v13[1];
  *v13 = a2;
  v13[1] = a3;
  sub_197948F1C(a2, a3);
  sub_197956214(v18, v19);
  sub_197956214(a2, a3);
  v20 = *v14;
  v21 = v14[1];
  *v14 = a4;
  v14[1] = a5;
  sub_197948F1C(a4, a5);
  sub_197956214(v20, v21);
  sub_197956214(a4, a5);
  return v5;
}

uint64_t *BufferedStreamSequence.__allocating_init(onFirst:onCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BufferedStreamSequence.BufferValue(0, *(v4 + 80), a3, a4);
  v9 = sub_197A87B28();

  return sub_19799AB24(v9, a1, a2, a3, a4);
}

uint64_t *BufferedStreamSequence.__allocating_init(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BufferedStreamSequence.BufferValue(255, *(v4 + 80), a3, a4);
  sub_197A88158();
  swift_allocObject();
  v6 = sub_197A87B08();
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  sub_197A87B38();

  return sub_19799AB24(v6, 0, 0, 0, 0);
}

uint64_t sub_19799AE74(uint64_t a1)
{
  v2 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E88, &qword_197A8B7F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  OUTLINED_FUNCTION_2();
  v11 = v10;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  swift_beginAccess();
  type metadata accessor for BufferedStreamSequence.BufferValue(255, *(v2 + 80), v15, v16);
  sub_197A87448();
  sub_197A873D8();
  swift_endAccess();
  sub_19799A9E4(v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_19799C90C(v8);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    sub_197A87B88();
    (*(v11 + 8))(v14, v9);
  }

  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  return sub_19799AA3C(v6);
}

uint64_t sub_19799B088(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - v3;
  result = sub_19799AAE0();
  if (result)
  {
    v7 = result;
    v8 = v6;
    sub_19799AB18(0, 0);
    v9 = sub_197A87C08();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;
    v10[5] = v8;
    v10[6] = a1;
    MEMORY[0x19A8EBBD0](a1);
    sub_19795CB2C();
  }

  return result;
}

uint64_t sub_19799B194(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_197960E38;

  return v10(a6);
}

uint64_t sub_19799B28C()
{
  OUTLINED_FUNCTION_7_2();
  v3 = type metadata accessor for BufferedStreamSequence.BufferValue(0, *(v0 + 80), v1, v2);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_19799B088(0);
  swift_storeEnumTagMultiPayload();
  sub_19799AE74(v8);
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_19799B360()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_7_2();
  v4 = *(v3 + 80);
  v1[4] = v4;
  v7 = type metadata accessor for BufferedStreamSequence.BufferValue(0, v4, v5, v6);
  v1[5] = v7;
  OUTLINED_FUNCTION_10(v7);
  v1[6] = v8;
  v1[7] = OUTLINED_FUNCTION_78_0();
  v9 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_19799B418()
{
  v1 = sub_19799AA9C();
  v0[8] = v1;
  if (v1)
  {
    v3 = v1;
    v0[9] = v2;
    sub_19799AAD4(0, 0);
    v11 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_19799B5DC;
    v5 = v0[2];

    return v11(v5);
  }

  else
  {
    v7 = v0[7];
    (*(*(v0[4] - 8) + 16))(v7, v0[2]);
    OUTLINED_FUNCTION_60();
    swift_storeEnumTagMultiPayload();
    sub_19799AE74(v7);
    v8 = OUTLINED_FUNCTION_60();
    v9(v8);

    OUTLINED_FUNCTION_13();

    return v10();
  }
}

uint64_t sub_19799B5DC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_19799B6D4()
{
  OUTLINED_FUNCTION_9();
  sub_197956214(*(v0 + 64), *(v0 + 72));

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_19799B734(uint64_t a1)
{
  OUTLINED_FUNCTION_7_2();
  v5 = type metadata accessor for BufferedStreamSequence.BufferValue(0, *(v2 + 80), v3, v4);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v12 - v9);
  sub_19799B088(a1);
  *v10 = a1;
  swift_storeEnumTagMultiPayload();
  MEMORY[0x19A8EBBD0](a1);
  sub_19799AE74(v10);
  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_19799B820()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 160) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v0;
  OUTLINED_FUNCTION_7_2();
  v5 = *(v4 + 80);
  *(v1 + 72) = v5;
  *(v1 + 80) = type metadata accessor for BufferedStreamSequence.BufferValue(0, v5, v6, v7);
  OUTLINED_FUNCTION_2();
  *(v1 + 88) = v8;
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  v9 = sub_197A87DB8();
  *(v1 + 112) = v9;
  OUTLINED_FUNCTION_10(v9);
  *(v1 + 120) = v10;
  *(v1 + 128) = OUTLINED_FUNCTION_78_0();
  v11 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_19799B94C()
{
  *(v0 + 40) = sub_19799A9AC();
  v1 = sub_197A87448();
  *(v0 + 136) = v1;
  *(v0 + 144) = swift_getWitnessTable(MEMORY[0x1E6995680], v1);
  v2 = sub_197A87D28();

  if (v2)
  {
    v5 = type metadata accessor for BufferedStreamSequence(255, *(v0 + 72), v3, v4);
    swift_getWitnessTable(protocol conformance descriptor for BufferedStreamSequence<A>, v5);
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v6[1] = sub_19799BC8C;
    OUTLINED_FUNCTION_12_0();

    MEMORY[0x1EEE6DDE0](v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v15 = *(v0 + 136);
    v16 = *(v0 + 128);
    v17 = *(v0 + 80);
    v18 = sub_19799A9AC();
    *(v0 + 48) = v18;
    sub_197A87D18();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      v19 = *(v0 + 160);
      (*(*(v0 + 88) + 32))(*(v0 + 56), *(v0 + 128), *(v0 + 80));

      if (v19 == 1)
      {
        v20 = *(v0 + 104);
        OUTLINED_FUNCTION_13_3();
        v21(v20);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v23 = *(v16 + 8);
        v23(v20, v18);
        if (!EnumCaseMultiPayload)
        {
          OUTLINED_FUNCTION_9_2();
          sub_197A873A8();
          v23(EnumCaseMultiPayload, v15);
          swift_endAccess();
        }
      }

      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_12_0();

      __asm { BRAA            X1, X16 }
    }

    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    sub_197A87ED8();
    OUTLINED_FUNCTION_12_0();
  }
}

uint64_t sub_19799BC8C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_19799BD84()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  *(v0 + 48) = sub_19799A9AC();
  sub_197A87D18();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    v3 = *(v0 + 160);
    (*(*(v0 + 88) + 32))(*(v0 + 56), *(v0 + 128), *(v0 + 80));

    if (v3 == 1)
    {
      v4 = *(v0 + 104);
      OUTLINED_FUNCTION_13_3();
      v5(v4);
      OUTLINED_FUNCTION_60();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = *(v2 + 8);
      v8 = OUTLINED_FUNCTION_60();
      v7(v8);
      if (!EnumCaseMultiPayload)
      {
        OUTLINED_FUNCTION_9_2();
        sub_197A873A8();
        (v7)(EnumCaseMultiPayload, v1);
        swift_endAccess();
      }
    }

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12_0();

    __asm { BRAA            X1, X16 }
  }

  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

  sub_197A87ED8();
  OUTLINED_FUNCTION_12_0();
}

uint64_t sub_19799BF70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E88, &qword_197A8B7F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  return sub_19799AA3C(v4);
}

uint64_t sub_19799C054()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_7_2();
  v4 = *(v3 + 80);
  v1[4] = v4;
  v1[5] = type metadata accessor for BufferedStreamSequence.BufferValue(0, v4, v5, v6);
  v1[6] = OUTLINED_FUNCTION_78_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v1[7] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_8_1(v7);

  return sub_19799B820();
}

uint64_t sub_19799C120()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_19799C218()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[6];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      swift_willThrow();

      OUTLINED_FUNCTION_13();
      goto LABEL_7;
    }

    v4 = 1;
  }

  else
  {
    (*(*(v0[4] - 8) + 32))(v0[2], v1);
    v4 = 0;
  }

  __swift_storeEnumTagSinglePayload(v0[2], v4, 1, v0[4]);

  OUTLINED_FUNCTION_13();
LABEL_7:

  return v3();
}

uint64_t sub_19799C304()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v0;
  OUTLINED_FUNCTION_7_2();
  v5 = type metadata accessor for BufferedStreamSequence.BufferValue(0, *(v2 + 80), v3, v4);
  v1[3] = v5;
  OUTLINED_FUNCTION_10(v5);
  v1[4] = v6;
  v1[5] = OUTLINED_FUNCTION_78_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v1[6] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_8_1(v7);

  return sub_19799B820();
}

uint64_t sub_19799C3F0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_19799C4E8()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[5];
  v2 = v0[3];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *v1;
  }

  else
  {
    (*(v0[4] + 8))(v1, v2);
    v3 = 0;
  }

  v4 = v0[1];

  return v4(v3);
}

uint64_t BufferedStreamSequence.deinit()
{

  sub_19799C90C(v0 + qword_1EAF48E80);
  sub_197956214(*(v0 + qword_1EAF48E90), *(v0 + qword_1EAF48E90 + 8));
  sub_197956214(*(v0 + qword_1EAF48E98), *(v0 + qword_1EAF48E98 + 8));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t BufferedStreamSequence.__deallocating_deinit()
{
  BufferedStreamSequence.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_19799C644@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_19799AE6C();

  *a1 = v3;
  return result;
}

uint64_t sub_19799C678()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960E38;

  return sub_19799C054();
}

uint64_t sub_19799C714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  v15 = type metadata accessor for BufferedStreamSequence(0, *(a5 + 80), v13, v14);
  *v12 = v6;
  v12[1] = sub_19799C7FC;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, v15, a6, v6 + 16);
}

uint64_t sub_19799C7FC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t sub_19799C90C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E88, &qword_197A8B7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19799C99C(uint64_t a1)
{
  sub_19799CF30(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t dispatch thunk of BufferedStreamSequence.pushElement(_:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_7_2();
  v6 = (*(v3 + 264) + **(v3 + 264));
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_197960E38;

  return v6(v2);
}

uint64_t dispatch thunk of BufferedStreamSequence.next()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v6 = (*(v1 + 288) + **(v1 + 288));
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of BufferedStreamSequence.immediateError.getter()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v4 = (*(v1 + 296) + **(v1 + 296));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_19799CE44;

  return v4();
}

uint64_t sub_19799CE44()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

void sub_19799CF30(uint64_t a1)
{
  if (!qword_1EAF48F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAF48F28, &qword_197A96700);
    v1 = sub_197A87DB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF48F20);
    }
  }
}

uint64_t sub_19799CF9C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_19799D2FC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_19799D014(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_19799D138(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_19799D2FC()
{
  result = qword_1EAF48FB0;
  if (!qword_1EAF48FB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EAF48FB0);
  }

  return result;
}

uint64_t sub_19799D358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E88, &qword_197A8B7F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19799D3C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48E88, &qword_197A8B7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19799D440()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 16) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_8_1(v7);

  return sub_19799B194(v9, v2, v3, v4, v5, v6);
}

uint64_t BuiltInInferenceProvider.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_197A87EF8();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_19799D5A4()
{
  result = qword_1EAF48FB8;
  if (!qword_1EAF48FB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BuiltInInferenceProvider, &type metadata for BuiltInInferenceProvider, v0, v1);
    atomic_store(result, &qword_1EAF48FB8);
  }

  return result;
}

unint64_t sub_19799D6B8()
{
  result = qword_1EAF48FC0;
  if (!qword_1EAF48FC0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48FC8, &qword_197A8BA70);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EAF48FC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BuiltInInferenceProvider(_BYTE *result, int a2, int a3)
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

unint64_t sub_19799D7C8()
{
  result = qword_1EAF48FD0;
  if (!qword_1EAF48FD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BuiltInInferenceProvider, &type metadata for BuiltInInferenceProvider, v0, v1);
    atomic_store(result, &qword_1EAF48FD0);
  }

  return result;
}

uint64_t sub_19799D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_197A87B58();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19799D8C0, v6, v8);
}

uint64_t sub_19799D8C0()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 64) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_77_2(v1);

  return sub_1979A55D8();
}

uint64_t sub_19799D94C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];

    return MEMORY[0x1EEE6DFA0](sub_19799DA60, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v9();
  }
}

uint64_t sub_19799DA60()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 16) = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_63();
  swift_dynamicCast();
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v1);
  OUTLINED_FUNCTION_119();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_23_1();

  return v2();
}

uint64_t sub_19799DB34()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  if (v3)
  {
    OUTLINED_FUNCTION_126_0(v2, v3);
    v4 = sub_197A87B58();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v1[5] = v4;
  v1[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19799DBC4, v4, v6);
}

uint64_t sub_19799DBC4()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 56) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_77_2(v1);

  return sub_197A12964(v3);
}

uint64_t sub_19799DC50()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_1979AA294, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v9();
  }
}

uint64_t sub_19799DD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_19799DE04;

  return sub_1979A40C8();
}

uint64_t sub_19799DE04()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      swift_getObjectType();
      v7 = sub_197A87B58();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_19799DF58, v7, v9);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v10();
  }
}

uint64_t sub_19799DF58()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 16) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_63();
  swift_dynamicCast();
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v1);
  OUTLINED_FUNCTION_119();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_23_1();

  return v2();
}

uint64_t sub_19799E02C()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  if (v3)
  {
    OUTLINED_FUNCTION_126_0(v2, v3);
    v4 = sub_197A87B58();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_19799E0B8, v4, v6);
}

uint64_t sub_19799E0B8()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_19799E150;
  v3 = *(v0 + 16);

  return InputStreamSequence.next()(v3);
}

uint64_t sub_19799E150()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_19799E234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_4(sub_19799E250);
}

uint64_t sub_19799E250()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 56) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_77_2(v1);

  return sub_197A12964(v3);
}

uint64_t sub_19799E2DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    if (*(v3 + 32))
    {
      swift_getObjectType();
      v7 = sub_197A87B58();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1979AA294, v7, v9);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v10();
  }
}

uint64_t sub_19799E430()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  if (v3)
  {
    OUTLINED_FUNCTION_126_0(v2, v3);
    v4 = sub_197A87B58();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v1[5] = v4;
  v1[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19799E4C0, v4, v6);
}

uint64_t sub_19799E4C0()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 56) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_77_2(v1);

  return InferenceMonitor.AsyncIterator.next()();
}

uint64_t sub_19799E550()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_19799E664, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v9();
  }
}

uint64_t sub_19799E664()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_19799E6EC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7170419;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7170419;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28022;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x6C61636973796870;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28022;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x6C61636973796870;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_86(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_19799E81C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6575716572627573;
  }

  else
  {
    v3 = 0x4974736575716572;
  }

  if (v2)
  {
    v4 = 0xE900000000000044;
  }

  else
  {
    v4 = 0xEC00000044497473;
  }

  if (a2)
  {
    v5 = 0x6575716572627573;
  }

  else
  {
    v5 = 0x4974736575716572;
  }

  if (a2)
  {
    v6 = 0xEC00000044497473;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_86(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_19799E8BC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_131();
      OUTLINED_FUNCTION_140_0();
      break;
    default:
      break;
  }

  sub_197A879B8();
}

uint64_t sub_19799E958(uint64_t a1, unsigned __int8 a2)
{
  sub_197A879B8();
}

uint64_t sub_19799E9E8(uint64_t a1, char a2)
{
  sub_197A879B8();
}

uint64_t sub_19799EA84(uint64_t a1, char a2)
{
  sub_197A879B8();
}

uint64_t sub_19799EB40(uint64_t a1, char a2)
{
  sub_197A879B8();
}

uint64_t InferenceProviderRequestConfiguration.sessionUUID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for InferenceProviderRequestConfiguration(v0);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_52_2();

  return v2(v1);
}

uint64_t InferenceProviderRequestConfiguration.sessionSetID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for InferenceProviderRequestConfiguration(v0);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_52_2();

  return v2(v1);
}

__n128 InferenceProviderRequestConfiguration.auditToken.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v3 = v1 + *(type metadata accessor for InferenceProviderRequestConfiguration(v2) + 48);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v6;
  *(v0 + 32) = v4;
  return result;
}

uint64_t InferenceProviderRequestConfiguration.useCaseIdentifier.getter()
{
  type metadata accessor for InferenceProviderRequestConfiguration(0);
  OUTLINED_FUNCTION_99();
  return OUTLINED_FUNCTION_22();
}

uint64_t InferenceProviderRequestConfiguration.assetBundleIdentifier.getter()
{
  type metadata accessor for InferenceProviderRequestConfiguration(0);
  OUTLINED_FUNCTION_99();
  return OUTLINED_FUNCTION_22();
}

double InferenceProviderRequestConfiguration.requestVersion.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v3 = v1 + *(type metadata accessor for InferenceProviderRequestConfiguration(v2) + 64);
  v4 = *(v3 + 8);
  result = *v3;
  *v0 = *v3;
  *(v0 + 8) = v4;
  return result;
}

uint64_t InferenceProviderRequestConfiguration.requestPriority.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  result = type metadata accessor for InferenceProviderRequestConfiguration(v2);
  *v0 = *(v1 + *(result + 68));
  return result;
}

uint64_t InferenceProviderRequestConfiguration.requestPriority.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InferenceProviderRequestConfiguration(0);
  *(v1 + *(result + 68)) = v2;
  return result;
}

void (*InferenceProviderRequestConfiguration.requestPriority.modify())()
{
  v0 = OUTLINED_FUNCTION_97();
  type metadata accessor for InferenceProviderRequestConfiguration(v0);
  return nullsub_1;
}

uint64_t InferenceProviderRequestConfiguration.subrequestID.setter(int a1)
{
  result = type metadata accessor for InferenceProviderRequestConfiguration(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

void (*InferenceProviderRequestConfiguration.subrequestID.modify())()
{
  v0 = OUTLINED_FUNCTION_97();
  type metadata accessor for InferenceProviderRequestConfiguration(v0);
  return nullsub_1;
}

double InferenceProviderRequestConfiguration.init(sessionLoggingIdentifier:requestLoggingIdentifier:assetIdentifiers:requestUUID:sessionUUID:onBehalfOfPID:auditSessionUID:useCaseIdentifier:assetBundleIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for InferenceProviderRequestConfiguration(0);
  v21 = v20[8];
  v22 = sub_197A87298();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&a9[v21], a7, v22);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  v24 = *(v23 + 32);
  v24(&a9[v20[7]], a6, v22);
  v24(&a9[v20[11]], a7, v22);
  *&a9[v20[9]] = a8;
  *&a9[v20[10]] = 0;
  v25 = &a9[v20[12]];
  result = 0.0;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v25[32] = 1;
  *&a9[v20[13]] = a10;
  v27 = &a9[v20[14]];
  *v27 = a11;
  *(v27 + 1) = a12;
  v28 = &a9[v20[15]];
  *v28 = a13;
  *(v28 + 1) = a14;
  v29 = &a9[v20[16]];
  *v29 = 0;
  *(v29 + 2) = 0;
  a9[v20[17]] = 0;
  *&a9[v20[18]] = 0;
  return result;
}

void InferenceProviderRequestConfiguration.init(sessionLoggingIdentifier:requestLoggingIdentifier:assetIdentifiers:requestUUID:sessionUUID:sessionSetID:onBehalfOfPID:parentOfOnBehalfOfPID:auditToken:auditSessionUID:useCaseIdentifier:assetBundleIdentifier:requestVersion:requestPriority:subrequestID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, __n128 *a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, char *a18, int a19)
{
  v31 = a11[2].n128_u8[0];
  v34 = *(a17 + 2);
  v35 = *a18;
  v21 = OUTLINED_FUNCTION_122_0(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_6();
  v23 = *(v22 + 32);
  v24 = *a17;
  v29 = a11[1];
  v30 = *a11;
  OUTLINED_FUNCTION_85();
  v23();
  (v23)(a8 + v19[8], a6, v21);
  (v23)(a8 + v19[11], a7, v21);
  *(a8 + v19[9]) = a9;
  OUTLINED_FUNCTION_116_0(v19[10], v29, v30);
  *(v25 + 32) = v31;
  *(a8 + v19[13]) = a12;
  v26 = (a8 + v19[14]);
  *v26 = a13;
  v26[1] = a14;
  v27 = (a8 + v19[15]);
  *v27 = a15;
  v27[1] = a16;
  v28 = a8 + v19[16];
  *v28 = v24;
  *(v28 + 8) = v34;
  *(a8 + v19[17]) = v35;
  *(a8 + v19[18]) = a19;
}

void InferenceProviderRequestConfiguration.init(sessionLoggingIdentifier:requestLoggingIdentifier:assetIdentifiers:requestUUID:sessionUUID:sessionSetID:onBehalfOfPID:parentOfOnBehalfOfPID:auditToken:auditSessionUID:useCaseIdentifier:assetBundleIdentifier:requestPriority:subrequestID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, __n128 *a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18)
{
  v30 = a11[2].n128_u8[0];
  v32 = *a17;
  v21 = OUTLINED_FUNCTION_122_0(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_6();
  v23 = *(v22 + 32);
  v28 = a11[1];
  v29 = *a11;
  OUTLINED_FUNCTION_85();
  v23();
  (v23)(a8 + v18[8], a6, v21);
  (v23)(a8 + v18[11], a7, v21);
  *(a8 + v18[9]) = a9;
  OUTLINED_FUNCTION_116_0(v18[10], v28, v29);
  *(v24 + 32) = v30;
  *(a8 + v18[13]) = a12;
  v25 = (a8 + v18[14]);
  *v25 = a13;
  v25[1] = a14;
  v26 = (a8 + v18[15]);
  *v26 = a15;
  v26[1] = a16;
  v27 = a8 + v18[16];
  *v27 = 0;
  *(v27 + 8) = 0;
  *(a8 + v18[17]) = v32;
  *(a8 + v18[18]) = a18;
}

BOOL static InferenceProviderRequestConfiguration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_138(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v6 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  if ((sub_19799F5B0(v1[4], v0[4]) & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for InferenceProviderRequestConfiguration(0);
  if ((OUTLINED_FUNCTION_146_0() & 1) == 0 || (OUTLINED_FUNCTION_146_0() & 1) == 0 || *(v1 + v7[9]) != *(v0 + v7[9]) || *(v1 + v7[10]) != *(v0 + v7[10]) || (OUTLINED_FUNCTION_146_0() & 1) == 0)
  {
    return 0;
  }

  v8 = v7[12];
  v9 = (v1 + v8);
  v10 = *(v1 + v8 + 32);
  v11 = (v0 + v8);
  v12 = *(v0 + v8 + 32);
  if (v10)
  {
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v13 = *v11;
    v14 = v11[1];
    v15 = v9[1];
    v34[0] = *v9;
    v34[1] = v15;
    v35 = 0;
    if (v12)
    {
      return 0;
    }

    v33[0] = v13;
    v33[1] = v14;
    if ((static AuditToken.== infix(_:_:)(v34, v33) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_108();
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_42_2(v7[14]);
  v18 = v5 && v16 == v17;
  if (!v18 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_42_2(v7[15]);
  v21 = v5 && v19 == v20;
  if (!v21 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  v22 = v7[16];
  v23 = *(v1 + v22);
  v24 = *(v1 + v22 + 4);
  v25 = *(v1 + v22 + 8);
  v26 = (v0 + v22);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v30 = v23 == v27 && v24 == v28;
  v31 = v30 && v25 == v29;
  if (!v31 || (sub_1979577EC(*(v1 + v7[17]), *(v0 + v7[17])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_108();
  return v5;
}

uint64_t sub_19799F5B0(uint64_t result, uint64_t a2)
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
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v13 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v15 = *v13;
      v14 = v13[1];
      sub_197A882F8();
      sub_197A878A8();
      sub_197A879B8();
      v16 = sub_197A88358();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v15 && v19[1] == v14)
        {
          break;
        }

        v21 = sub_197A88218();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
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

    ++v10;
    if (*(v4 + 8 * v3))
    {
      OUTLINED_FUNCTION_67_1();
      v7 = v12 & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_19799F778()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v5 = OUTLINED_FUNCTION_114(v2, v0, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_103();
  v10 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  if (v3 == v1 || *(v3 + 16) != *(v1 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v13 = 0;
    v14 = *(v3 + 56);
    v35 = v3 + 56;
    v15 = 1 << *(v3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = (v15 + 63) >> 6;
    v41 = v1 + 56;
    v36 = v17;
    v37 = &v35 - v11;
    v38 = v12;
    v39 = v3;
    if ((v16 & v14) != 0)
    {
      while (2)
      {
        OUTLINED_FUNCTION_61_2();
        v40 = v18;
LABEL_13:
        OUTLINED_FUNCTION_98();
        sub_1979487E0();
        sub_19794B0C4();
        sub_197A882F8();
        sub_197A87298();
        OUTLINED_FUNCTION_0_5();
        sub_19796AA70(&qword_1ED880FE0);
        sub_197A878F8();
        v22 = sub_197A88358();
        v23 = ~(-1 << *(v1 + 32));
        do
        {
          v24 = v22 & v23;
          if (((*(v41 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
          {
            OUTLINED_FUNCTION_68_1();
            sub_197947A40(v32, v33, v34);
            goto LABEL_20;
          }

          sub_1979487E0();
          OUTLINED_FUNCTION_90();
          v25 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
          OUTLINED_FUNCTION_68_1();
          sub_197947A40(v26, v27, v28);
          v22 = v24 + 1;
        }

        while ((v25 & 1) == 0);
        OUTLINED_FUNCTION_68_1();
        sub_197947A40(v29, v30, v31);
        v17 = v36;
        if (v40)
        {
          continue;
        }

        break;
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        goto LABEL_20;
      }

      ++v19;
      if (*(v35 + 8 * v13))
      {
        OUTLINED_FUNCTION_67_1();
        v40 = v21 & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_19799FA20()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_43_1();
  v4 = sub_197A87298();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_109();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v30 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_17:
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v13 = 0;
    v31 = v1 + 56;
    OUTLINED_FUNCTION_89();
    v37 = v6 + 32;
    v39 = v0 + 56;
    v40 = v6 + 16;
    v15 = (v6 + 8);
    v32 = v14;
    v33 = v12;
    v34 = v6;
    v35 = v1;
    if (v16)
    {
      while (2)
      {
        OUTLINED_FUNCTION_61_2();
        v36 = v18;
LABEL_10:
        v22 = *(v1 + 48);
        v38 = *(v6 + 72);
        v23 = *(v6 + 16);
        v23(v12, v22 + v38 * (v17 | (v13 << 6)), v4);
        (*(v6 + 32))(v41, v12, v4);
        OUTLINED_FUNCTION_0_5();
        sub_19796AA70(&qword_1ED880FE0);
        v24 = sub_197A878E8();
        v25 = v0;
        v26 = ~(v3 << *(v0 + 32));
        do
        {
          v27 = v24 & v26;
          if (((*(v39 + (((v24 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v26)) & 1) == 0)
          {
            (*v15)(v41, v4);
            goto LABEL_17;
          }

          v23(v2, *(v25 + 48) + v27 * v38, v4);
          OUTLINED_FUNCTION_0_5();
          sub_19796AA70(&qword_1EAF488E8);
          v28 = sub_197A87918();
          v29 = *v15;
          (*v15)(v2, v4);
          v24 = v27 + 1;
        }

        while ((v28 & 1) == 0);
        v29(v41, v4);
        v0 = v25;
        v6 = v34;
        v1 = v35;
        v14 = v32;
        v12 = v33;
        v3 = -1;
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v14)
      {
        goto LABEL_17;
      }

      ++v19;
      if (*(v31 + 8 * v13))
      {
        OUTLINED_FUNCTION_67_1();
        v36 = v21 & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_19799FD2C()
{
  OUTLINED_FUNCTION_67();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_97();
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest(v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_103();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  if (v0 == v5 || *(v0 + 16) != *(v5 + 16))
  {
    goto LABEL_36;
  }

  v12 = 0;
  v34 = v0 + 56;
  OUTLINED_FUNCTION_89();
  v42 = v5 + 56;
  v35 = v13;
  v36 = v11;
  v40 = v5;
  v37 = v14;
  v38 = v0;
  if (!v15)
  {
    goto LABEL_5;
  }

  do
  {
    OUTLINED_FUNCTION_61_2();
    v39 = v16;
LABEL_10:
    OUTLINED_FUNCTION_16_1();
    sub_19796B948();
    sub_1979AA160();
    sub_197A882F8();
    sub_197A87298();
    OUTLINED_FUNCTION_0_5();
    sub_19796AA70(&qword_1ED880FE0);
    sub_197A878F8();
    v20 = *(active + 20);
    sub_19799E8BC(&v43, *(v2 + v20));
    v21 = sub_197A88358();
    v22 = v3 << *(v40 + 32);
    v23 = v21 & ~v22;
    if (((*(v42 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
LABEL_35:
      OUTLINED_FUNCTION_2_3();
      sub_19796B99C();
LABEL_36:
      OUTLINED_FUNCTION_66();
      return;
    }

    v24 = ~v22;
    while (1)
    {
      OUTLINED_FUNCTION_16_1();
      sub_19796B948();
      if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
      {
        OUTLINED_FUNCTION_2_3();
        sub_19796B99C();
        goto LABEL_29;
      }

      v25 = *(v2 + v20);
      v26 = 0xE400000000000000;
      v27 = 1701736302;
      switch(*(v1 + *(active + 20)))
      {
        case 1:
          v28 = 1801675106;
          goto LABEL_18;
        case 2:
          OUTLINED_FUNCTION_132();
          OUTLINED_FUNCTION_66_1();
          break;
        case 3:
          v28 = 1701998438;
LABEL_18:
          v27 = v28 | 0x756F726700000000;
          v26 = 0xEA0000000000646ELL;
          break;
        default:
          break;
      }

      v29 = 0xE400000000000000;
      v30 = 1701736302;
      switch(v25)
      {
        case 1:
          v31 = 1801675106;
          goto LABEL_23;
        case 2:
          OUTLINED_FUNCTION_130();
          v29 = 0xED00006465746169;
          break;
        case 3:
          v31 = 1701998438;
LABEL_23:
          v30 = v31 | 0x756F726700000000;
          v29 = 0xEA0000000000646ELL;
          break;
        default:
          break;
      }

      if (v27 == v30 && v26 == v29)
      {
        break;
      }

      v33 = sub_197A88218();

      OUTLINED_FUNCTION_2_3();
      sub_19796B99C();
      if (v33)
      {
        goto LABEL_32;
      }

LABEL_29:
      v23 = (v23 + 1) & v24;
      if (((*(v42 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    OUTLINED_FUNCTION_2_3();
    sub_19796B99C();
LABEL_32:
    OUTLINED_FUNCTION_2_3();
    sub_19796B99C();
    v13 = v35;
    v3 = -1;
  }

  while (v39);
LABEL_5:
  v17 = v12;
  while (1)
  {
    v12 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v12 >= v13)
    {
      goto LABEL_36;
    }

    ++v17;
    if (*(v34 + 8 * v12))
    {
      OUTLINED_FUNCTION_67_1();
      v39 = v19 & v18;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1979A0130(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000197AA2510 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x8000000197AA2530 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000197AA2550 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x5574736575716572 && a2 == 0xEB00000000444955;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x556E6F6973736573 && a2 == 0xEB00000000444955;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x666C616865426E6FLL && a2 == 0xED0000444950664FLL;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x8000000197AA2570 == a2;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x536E6F6973736573 && a2 == 0xEC00000044497465;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6B6F547469647561 && a2 == 0xEA00000000006E65;
                  if (v13 || (sub_197A88218() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x8000000197AA2590 == a2;
                    if (v14 || (sub_197A88218() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x8000000197AA25B0 == a2;
                      if (v15 || (sub_197A88218() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x8000000197AA25D0 == a2;
                        if (v16 || (sub_197A88218() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x5674736575716572 && a2 == 0xEE006E6F69737265;
                          if (v17 || (sub_197A88218() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x5074736575716572 && a2 == 0xEF797469726F6972;
                            if (v18 || (sub_197A88218() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x6575716572627573 && a2 == 0xEC00000044497473)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_197A88218();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

uint64_t sub_1979A05DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979A0130(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979A0604@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979A05D4();
  *a1 = result;
  return result;
}

uint64_t sub_1979A062C(uint64_t a1)
{
  v2 = sub_197978F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A0668(uint64_t a1)
{
  v2 = sub_197978F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void InferenceProviderRequestConfiguration.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FD8, &qword_197A8BAE0);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_104();
  v6 = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_113_0(v6, v7);
  v8 = sub_197978F70();
  OUTLINED_FUNCTION_125(&type metadata for InferenceProviderRequestConfiguration.CodingKeys, v9, v8);
  OUTLINED_FUNCTION_39_2();
  sub_197A880B8();
  if (!v0)
  {
    OUTLINED_FUNCTION_39_2();
    sub_197A880B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FE0, &qword_197A8BAE8);
    sub_197978AF8(&unk_1ED87F958);
    OUTLINED_FUNCTION_39_2();
    sub_197A880E8();
    type metadata accessor for InferenceProviderRequestConfiguration(0);
    sub_197A87298();
    OUTLINED_FUNCTION_0_5();
    sub_19796AA70(v10);
    OUTLINED_FUNCTION_141();
    OUTLINED_FUNCTION_39_2();
    sub_197A880E8();
    OUTLINED_FUNCTION_141();
    OUTLINED_FUNCTION_39_2();
    sub_197A880E8();
    OUTLINED_FUNCTION_20_3(5);
    sub_197A880D8();
    OUTLINED_FUNCTION_20_3(6);
    sub_197A880D8();
    OUTLINED_FUNCTION_141();
    OUTLINED_FUNCTION_39_2();
    sub_197A880E8();
    sub_1979741F8();
    OUTLINED_FUNCTION_27_0();
    sub_197A88098();
    OUTLINED_FUNCTION_20_3(9);
    sub_197A88118();
    OUTLINED_FUNCTION_39_2();
    sub_197A880B8();
    OUTLINED_FUNCTION_39_2();
    sub_197A880B8();
    sub_1979552D0();
    OUTLINED_FUNCTION_27_0();
    sub_197A880E8();
    sub_1979A6BD0();
    OUTLINED_FUNCTION_27_0();
    sub_197A880E8();
    OUTLINED_FUNCTION_20_3(14);
    sub_197A88118();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_93();
}

uint64_t InferenceProviderRequestConfiguration.hash(into:)(void *a1)
{
  sub_197A879B8();
  sub_197A879B8();
  sub_1979A7584(a1, *(v1 + 32));
  v3 = type metadata accessor for InferenceProviderRequestConfiguration(0);
  sub_197A87298();
  OUTLINED_FUNCTION_0_5();
  sub_19796AA70(v4);
  OUTLINED_FUNCTION_69_0();
  sub_197A878F8();
  OUTLINED_FUNCTION_69_0();
  sub_197A878F8();
  MEMORY[0x19A8EB5D0](*(v1 + v3[9]));
  MEMORY[0x19A8EB5D0](*(v1 + v3[10]));
  OUTLINED_FUNCTION_69_0();
  sub_197A878F8();
  if (*(v1 + v3[12] + 32))
  {
    sub_197A88328();
  }

  else
  {
    sub_197A88328();
    sub_197A88308();
  }

  sub_197A88338();
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_127();
  sub_197A88338();
  sub_197A88338();
  sub_197A88338();
  sub_19799E8BC(a1, *(v1 + v3[17]));
  return sub_197A88338();
}

uint64_t sub_1979A0CFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProvider.loadIn(inferenceAssetIdentifier:)();
}

uint64_t sub_1979A0D8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProvider.loadIn(inferenceAssetIdentifier:)();
}

uint64_t sub_1979A0E18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProvider.transitionAsset(withIdentifier:to:)();
}

void *InferenceProvider.requestStream(clientData:configuration:)()
{
  v1 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for InferenceError(v1);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v2);
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_70_0();
  v3 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CombinedResponseIterator();
  swift_allocObject();
  MEMORY[0x19A8EBBD0](v3);
  v4 = sub_197A125D8(v3, 1);
  v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48FF0, &qword_197A8BB10);
  v0[4] = sub_1979A76B8();
  result = swift_allocObject();
  *v0 = result;
  result[2] = 0;
  result[3] = 0;
  result[4] = v3;
  result[5] = nullsub_1;
  result[6] = 0;
  result[7] = v4;
  return result;
}

uint64_t InferenceProvider.requestStream(clientData:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  ClientData.data.getter(a1, a2, a3, a4, a5, a6, a7, a8, v21, v22[0], v22[1], v22[2], v23, v24, v25, v26, v27, v28);
  v12 = OUTLINED_FUNCTION_90();
  v13(v12);
  v14 = OUTLINED_FUNCTION_90();
  sub_197974AFC(v14, v15);
  v16 = v23;
  v17 = v24;
  v18 = __swift_project_boxed_opaque_existential_1(v22, v23);
  type metadata accessor for ClientData(255);
  v19 = sub_197A88178();
  a9[3] = v19;
  a9[4] = swift_getWitnessTable(MEMORY[0x1E69E88E0], v19);
  __swift_allocate_boxed_opaque_existential_1(a9);
  sub_1979A1840(v18, a3, v16, a4, v17);
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t sub_1979A10E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1979A116C;

  return InferenceProvider.requestOneShot(clientData:configuration:)();
}

uint64_t sub_1979A116C()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t InferenceProvider.requestOneShot(clientData:configuration:)()
{
  return (*(v0 + 8))(0, 0xC000000000000000);
}

{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);
  OUTLINED_FUNCTION_28(v7);
  v1[8] = OUTLINED_FUNCTION_78_0();
  v8 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979A128C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_197960FB0;

  return InferenceProvider.requestOneShot(clientData:configuration:)();
}

uint64_t sub_1979A151C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v7 = v6;
  OUTLINED_FUNCTION_24();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v7[12] = v0;

  if (v0)
  {
    v11 = sub_1979A1734;
  }

  else
  {
    v12 = v7[10];
    if (v12 >> 60 == 15)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7[9];
    }

    if (v12 >> 60 == 15)
    {
      v14 = 0xC000000000000000;
    }

    else
    {
      v14 = v7[10];
    }

    v7[13] = v3;
    v7[14] = v5;
    sub_197974AFC(v13, v14);
    v11 = sub_1979A1654;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1979A1654()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_197A877A8();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v0);
  v4 = OUTLINED_FUNCTION_63();
  sub_19797992C(v4, v5);
  v6 = OUTLINED_FUNCTION_63();
  sub_197974AFC(v6, v7);
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v0);
  type metadata accessor for ClientData(0);
  sub_19794B0C4();

  OUTLINED_FUNCTION_13();

  return v11();
}

uint64_t sub_1979A1734()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 80);
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 72);
  }

  if (v1 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
  }

  else
  {
    v3 = *(v0 + 80);
  }

  sub_197974AFC(v2, v3);

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_1979A17B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960E38;

  return InferenceProvider.cancelRequest(uuid:)();
}

uint64_t sub_1979A1840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  type metadata accessor for ClientData(0);
  sub_197A87CA8();
}

uint64_t sub_1979A1970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a1;
  v6[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49000, &qword_197A954A0);
  v6[6] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[7] = AssociatedTypeWitness;
  v6[8] = *(AssociatedTypeWitness - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979A1A88, 0, 0);
}

uint64_t sub_1979A1A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_49_0();
  (*(v10[8] + 16))(v10[9], v10[5], v10[7]);
  if (swift_dynamicCast())
  {
    v11 = sub_197A877A8();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    v15 = OUTLINED_FUNCTION_100_0();
    sub_19797992C(v15, v16);
    v17 = OUTLINED_FUNCTION_100_0();
    sub_197974AFC(v17, v18);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v11);
    type metadata accessor for ClientData(0);
    sub_19794B0C4();
  }

  else
  {
    type metadata accessor for InferenceError(0);
    OUTLINED_FUNCTION_1_4();
    sub_19796AA70(v22);
    OUTLINED_FUNCTION_70_0();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_117();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

void InferenceProviderAssetDescriptor.init(identifier:version:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_58_0();
  v10 = type metadata accessor for CustomAssetConfiguration(v9);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
  v16 = OUTLINED_FUNCTION_28(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v10);
  *v0 = v8;
  v0[1] = v6;
  v28[3] = &type metadata for GenerativeModels;
  v28[4] = sub_1979A771C();
  sub_197A878A8();
  v24 = sub_197A872C8();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  if (v24)
  {
    sub_1979487E0();
    OUTLINED_FUNCTION_64_0(v19, 1, v10);
    if (v25)
    {
      sub_197947A40(v19, &qword_1EAF49008, &qword_197A8BB38);
    }

    else
    {

      OUTLINED_FUNCTION_6_2();
      sub_1979AA160();
      v26 = (v14 + *(v10 + 32));
      v8 = *v26;
      v6 = v26[1];
      sub_197A878A8();
      OUTLINED_FUNCTION_3_3();
      sub_19796B99C();
    }
  }

  v0[2] = v8;
  v0[3] = v6;
  v27 = (v0 + *(type metadata accessor for InferenceProviderAssetDescriptor(0) + 28));
  *v27 = v4;
  v27[1] = v2;
  sub_19794B0C4();
  OUTLINED_FUNCTION_66();
}

void InferenceProviderAssetDescriptor.init(identifier:version:customAssetConfiguration:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
  OUTLINED_FUNCTION_28(v11);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_65_0();
  v13 = type metadata accessor for CustomAssetConfiguration(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  *v10 = v8;
  v10[1] = v6;
  v22[3] = &type metadata for GenerativeModels;
  v22[4] = sub_1979A771C();
  sub_197A878A8();
  v18 = sub_197A872C8();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (v18)
  {
    OUTLINED_FUNCTION_135();
    sub_1979487E0();
    OUTLINED_FUNCTION_64_0(v0, 1, v13);
    if (v19)
    {
      sub_197947A40(v0, &qword_1EAF49008, &qword_197A8BB38);
    }

    else
    {

      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_90();
      sub_1979AA160();
      v20 = (v17 + *(v13 + 32));
      v8 = *v20;
      v6 = v20[1];
      sub_197A878A8();
      OUTLINED_FUNCTION_3_3();
      sub_19796B99C();
    }
  }

  v10[2] = v8;
  v10[3] = v6;
  v21 = (v10 + *(type metadata accessor for InferenceProviderAssetDescriptor(0) + 28));
  *v21 = v4;
  v21[1] = v2;
  sub_19794B0C4();
  OUTLINED_FUNCTION_66();
}

void static InferenceProviderAssetDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_67();
  v3 = OUTLINED_FUNCTION_43_1();
  v4 = type metadata accessor for CustomAssetConfiguration(v3);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
  OUTLINED_FUNCTION_28(v6);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_104();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49010, &qword_197A8BB40);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66_0();
  v10 = *v1 == *v0 && v1[1] == v0[1];
  if (!v10 && (sub_197A88218() & 1) == 0)
  {
    goto LABEL_20;
  }

  v11 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v11 && (sub_197A88218() & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = type metadata accessor for InferenceProviderAssetDescriptor(0);
  v12 = *(v8 + 48);
  sub_1979487E0();
  sub_1979487E0();
  OUTLINED_FUNCTION_64_0(v2, 1, v4);
  if (!v10)
  {
    sub_1979487E0();
    OUTLINED_FUNCTION_64_0(v2 + v12, 1, v4);
    if (!v13)
    {
      OUTLINED_FUNCTION_6_2();
      sub_1979AA160();
      OUTLINED_FUNCTION_59_1();
      v14 = static CustomAssetConfiguration.== infix(_:_:)();
      sub_19796B99C();
      sub_19796B99C();
      sub_197947A40(v2, &qword_1EAF49008, &qword_197A8BB38);
      if ((v14 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_3_3();
    sub_19796B99C();
LABEL_19:
    sub_197947A40(v2, &qword_1EAF49010, &qword_197A8BB40);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_64_0(v2 + v12, 1, v4);
  if (!v10)
  {
    goto LABEL_19;
  }

  sub_197947A40(v2, &qword_1EAF49008, &qword_197A8BB38);
LABEL_22:
  v15 = *(v21 + 28);
  v16 = (v1 + v15);
  v17 = *(v1 + v15 + 8);
  v18 = (v0 + v15);
  v19 = v18[1];
  if (v17 && v19 && (*v16 != *v18 || v17 != v19))
  {
    sub_197A88218();
  }

LABEL_20:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_1979A228C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x8000000197AA25F0 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x8000000197AA2610 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_197A88218();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1979A2400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979A228C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979A2428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1979A23F8();
  *a1 = result;
  return result;
}

uint64_t sub_1979A2450(uint64_t a1)
{
  v2 = sub_19796A970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A248C(uint64_t a1)
{
  v2 = sub_19796A970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceProviderAssetDescriptor.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for CustomAssetConfiguration(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_90();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_28(v9);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_64_1();
  sub_197A879B8();
  sub_197A879B8();
  v11 = type metadata accessor for InferenceProviderAssetDescriptor(0);
  sub_1979487E0();
  v12 = OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_64_0(v12, v13, v2);
  if (v14)
  {
    sub_197A88328();
  }

  else
  {
    OUTLINED_FUNCTION_6_2();
    sub_1979AA160();
    sub_197A88328();
    sub_197A879B8();
    sub_197A879B8();
    sub_197A879B8();
    v15 = v6 + *(v2 + 28);
    if ((*(v15 + 32) & 1) == 0)
    {
      v16 = OUTLINED_FUNCTION_53_1();
      audit_token_to_pid(v16);
    }

    sub_197A88338();
    if ((*(v15 + 32) & 1) == 0)
    {
      v17 = OUTLINED_FUNCTION_53_1();
      audit_token_to_pidversion(v17);
    }

    sub_197A88338();
    OUTLINED_FUNCTION_3_3();
    sub_19796B99C();
  }

  if (!*(v1 + *(v11 + 28) + 8))
  {
    return sub_197A88328();
  }

  sub_197A88328();
  OUTLINED_FUNCTION_68_1();
  return sub_197A879B8();
}

__n128 InferenceProviderPrewarmInformation.requestorAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1979A26F0()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for InferenceProviderPrewarmInformation(v0);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_52_2();

  return v2(v1);
}

uint64_t sub_1979A2760()
{
  type metadata accessor for InferenceProviderPrewarmInformation(0);
  OUTLINED_FUNCTION_99();
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_1979A27B8()
{
  type metadata accessor for InferenceProviderPrewarmInformation(0);

  return sub_197A878A8();
}

void InferenceProviderPrewarmInformation.init(bundleIdentifier:requestorAuditToken:sessionUUID:useCaseIdentifier:onBehalfOfPid:metadata:)()
{
  OUTLINED_FUNCTION_95_0();
  *v4 = v2;
  *(v4 + 8) = v3;
  v6 = v5[1];
  *(v4 + 16) = *v5;
  *(v4 + 32) = v6;
  v7 = *(type metadata accessor for InferenceProviderPrewarmInformation(0) + 24);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v8 + 32))(v1 + v7, v0);
  OUTLINED_FUNCTION_82_1();
  *(v1 + v9) = 0;
}

__n128 InferenceProviderPrewarmInformation.init(bundleIdentifier:requestorAuditToken:sessionUUID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for InferenceProviderPrewarmInformation(0);
  v11 = v10[6];
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v12 + 32))(a5 + v11, a4);
  *a5 = a1;
  *(a5 + 8) = a2;
  result = *a3;
  v14 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v14;
  v15 = (a5 + v10[7]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  *(a5 + v10[8]) = 0;
  *(a5 + v10[9]) = 0;
  *(a5 + v10[10]) = 0;
  return result;
}

uint64_t static InferenceProviderPrewarmInformation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_138(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 32);
  v23[0] = *(v1 + 16);
  v23[1] = v6;
  v7 = *(v0 + 32);
  v22[0] = *(v0 + 16);
  v22[1] = v7;
  if ((static AuditToken.== infix(_:_:)(v23, v22) & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for InferenceProviderPrewarmInformation(0);
  if ((OUTLINED_FUNCTION_146_0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_42_2(v8[7]);
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_197A88218() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_108();
  if (!v5)
  {
    return 0;
  }

  v12 = v8[9];
  v13 = *(v1 + v12);
  v14 = *(v0 + v12);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    sub_197A878A8();
    v15 = sub_19798F578(v13, v14);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = v8[10];
  v17 = *(v0 + v16);
  if (*(v1 + v16))
  {
    if (v17)
    {
      sub_197A878A8();
      v18 = OUTLINED_FUNCTION_63();
      v20 = sub_1979A71AC(v18, v19);

      if (v20)
      {
        return 1;
      }
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1979A2A70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000197AA2630 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x8000000197AA2650 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000197AA2670 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x8000000197AA2690 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x8000000197AA26B0 == a2;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x8000000197AA26D0 == a2;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000021 && 0x8000000197AA26F0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_197A88218();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1979A2C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1979A2A70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1979A2CC4(uint64_t a1)
{
  v2 = sub_1979701EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1979A2D00(uint64_t a1)
{
  v2 = sub_1979701EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceProviderPrewarmInformation.hash(into:)(const void *a1)
{
  sub_197A879B8();
  sub_197A88308();
  v3 = type metadata accessor for InferenceProviderPrewarmInformation(0);
  sub_197A87298();
  OUTLINED_FUNCTION_0_5();
  sub_19796AA70(v4);
  sub_197A878F8();
  OUTLINED_FUNCTION_127();
  sub_197A88338();
  v5 = *(v1 + *(v3 + 36));
  sub_197A88328();
  if (v5)
  {
    sub_1979A8214(a1, v5);
  }

  if (!*(v1 + *(v3 + 40)))
  {
    return sub_197A88328();
  }

  sub_197A88328();
  v6 = OUTLINED_FUNCTION_60();
  return sub_1979A8034(v6, v7);
}

uint64_t sub_1979A2EB4(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_145();
  a1(v3);
  return sub_197A88358();
}

uint64_t sub_1979A2F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_197A882F8();
  a4(v6);
  return sub_197A88358();
}

uint64_t sub_1979A2F80()
{
  InferenceProviding.convertData(clientData:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1979A2FF8()
{
  v21 = type metadata accessor for InferenceError.Context(0);
  MEMORY[0x1EEE9AC00](v21);
  v1 = v20 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v20[0] = v20 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - v11;
  v13 = type metadata accessor for InferenceError(0);
  sub_19796AA70(&qword_1ED87F878);
  v20[3] = v13;
  v14 = swift_allocError();
  v20[1] = v15;
  v20[2] = v14;
  v16 = sub_197A87898();
  v17 = sub_197A87258();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v17);
  sub_197947A40(v12, &qword_1EAF48B20, &qword_197A89620);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v17);
  sub_1979487E0();
  *v1 = 0xD00000000000003DLL;
  *(v1 + 1) = 0x8000000197AA2370;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = 0;
  *(v1 + 5) = v16;
  v1[48] = 0;
  *(v1 + 7) = 0;
  sub_1979487E0();
  LODWORD(v16) = __swift_getEnumTagSinglePayload(v5, 1, v17);
  sub_197947A40(v10, &qword_1EAF48B20, &qword_197A89620);
  sub_197947A40(v12, &qword_1EAF48B20, &qword_197A89620);
  if (v16 == 1)
  {
    __swift_storeEnumTagSinglePayload(v20[0], 1, 1, v17);
    if (__swift_getEnumTagSinglePayload(v5, 1, v17) != 1)
    {
      sub_197947A40(v5, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    v18 = v20[0];
    (*(*(v17 - 8) + 32))(v20[0], v5, v17);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v17);
  }

  sub_19794B0C4();
  sub_1979AA160();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void InferenceProviding.convertData(clientData:)()
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for InferenceError.Context(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_0();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v6 = OUTLINED_FUNCTION_28(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_109();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v40[0] = v40 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v40 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v14);
  v40[3] = v13;
  OUTLINED_FUNCTION_70_0();
  v15 = swift_allocError();
  v40[1] = v16;
  v40[2] = v15;
  v17 = sub_197A87898();
  v18 = sub_197A87258();
  v19 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v22 = OUTLINED_FUNCTION_91();
  sub_197947A40(v22, v23, &qword_197A89620);
  v24 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v18);
  sub_1979487E0();
  *v4 = 0xD00000000000003DLL;
  *(v4 + 8) = 0x8000000197AA2370;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  *(v4 + 32) = 0;
  *(v4 + 40) = v17;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  sub_1979487E0();
  v27 = OUTLINED_FUNCTION_96();
  LODWORD(v17) = __swift_getEnumTagSinglePayload(v27, v28, v18);
  sub_197947A40(v12, &qword_1EAF48B20, &qword_197A89620);
  v29 = OUTLINED_FUNCTION_91();
  sub_197947A40(v29, v30, &qword_197A89620);
  if (v17 == 1)
  {
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v18);
    v34 = OUTLINED_FUNCTION_96();
    if (__swift_getEnumTagSinglePayload(v34, v35, v18) != 1)
    {
      sub_197947A40(v0, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
    (*(v36 + 32))(v40[0], v0, v18);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v18);
  }

  sub_19794B0C4();
  OUTLINED_FUNCTION_7_3();
  sub_1979AA160();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  OUTLINED_FUNCTION_93();
}

unint64_t InferenceProviding.requestStream(clientData:configuration:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for UnimplementedStream;
  result = sub_1979A8374();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1979A3714()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)();
}

uint64_t InferenceProviding.requestInputStreamStep(clientDataArray:configuration:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for InferenceError.Context(0);
  v0[2] = v1;
  OUTLINED_FUNCTION_28(v1);
  v0[3] = OUTLINED_FUNCTION_78_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v2);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1979A3870()
{
  v1 = *(v0 + 32);
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v2);
  OUTLINED_FUNCTION_70_0();
  swift_allocError();
  sub_197A87898();
  v3 = sub_197A87258();
  v4 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  v7 = OUTLINED_FUNCTION_91();
  sub_197947A40(v7, v8, &qword_197A89620);
  v9 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v3);
  OUTLINED_FUNCTION_100_0();
  sub_1979487E0();
  OUTLINED_FUNCTION_75_3(61);
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v1, 1, v3);
  v12 = OUTLINED_FUNCTION_83_0();
  sub_197947A40(v12, v13, &qword_197A89620);
  v14 = OUTLINED_FUNCTION_91();
  sub_197947A40(v14, v15, &qword_197A89620);
  if (v1 == 1)
  {
    v16 = OUTLINED_FUNCTION_25_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v3);
    v19 = OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_64_0(v19, v20, v3);
    if (!v21)
    {
      sub_197947A40(*(v0 + 32), &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
    v22 = OUTLINED_FUNCTION_100_0();
    v23(v22);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v3);
  }

  OUTLINED_FUNCTION_136();
  sub_19794B0C4();
  OUTLINED_FUNCTION_7_3();
  sub_1979AA160();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v27();
}

uint64_t sub_1979A3AEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return InferenceProvider.cancelRequest(uuid:)();
}

uint64_t sub_1979A3B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for InferenceError(0);
  v4[3] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1979A3C3C;

  return _s20ModelManagerServices18InferenceProvidingPAAE14requestOneShot10clientData13configurationAA06ClientJ0VAH_AA0D28ProviderRequestConfigurationVtYaAA0D5ErrorOYKF();
}

uint64_t sub_1979A3C3C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  if (v0)
  {
    sub_1979AA160();

    OUTLINED_FUNCTION_23_1();
  }

  else
  {

    OUTLINED_FUNCTION_13();
  }

  return v7();
}

uint64_t _s20ModelManagerServices18InferenceProvidingPAAE14requestOneShot10clientData13configurationAA06ClientJ0VAH_AA0D28ProviderRequestConfigurationVtYaAA0D5ErrorOYKF()
{
  OUTLINED_FUNCTION_9();
  v0[2] = v1;
  v2 = type metadata accessor for InferenceError.Context(0);
  v0[3] = v2;
  OUTLINED_FUNCTION_28(v2);
  v0[4] = OUTLINED_FUNCTION_78_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  OUTLINED_FUNCTION_28(v3);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979A3E24()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_197A87898();
  v5 = sub_197A87258();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = OUTLINED_FUNCTION_135();
  sub_197947A40(v9, v10, &qword_197A89620);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
  OUTLINED_FUNCTION_60();
  sub_1979487E0();
  *v3 = 0xD000000000000035;
  *(v3 + 8) = 0x8000000197AA23F0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  *(v3 + 32) = 0;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  sub_1979487E0();
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v2, 1, v5);
  sub_197947A40(v1, &qword_1EAF48B20, &qword_197A89620);
  v14 = OUTLINED_FUNCTION_135();
  sub_197947A40(v14, v15, &qword_197A89620);
  v16 = v0[5];
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v5);
    OUTLINED_FUNCTION_64_0(v16, 1, v5);
    if (!v20)
    {
      sub_197947A40(v0[5], &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
    v21 = OUTLINED_FUNCTION_60();
    v22(v21);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v5);
  }

  sub_19794B0C4();
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_49();
  sub_1979AA160();
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_90();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v26);
  OUTLINED_FUNCTION_90();
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_23_1();

  return v27();
}

uint64_t sub_1979A40C8()
{
  v0[2] = type metadata accessor for InferenceError.Context(0);
  v0[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979A41B4, 0, 0);
}

uint64_t sub_1979A41B4()
{
  v1 = *(v0 + 32);
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v2);
  OUTLINED_FUNCTION_70_0();
  swift_allocError();
  sub_197A87898();
  v3 = sub_197A87258();
  v4 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  v7 = OUTLINED_FUNCTION_91();
  sub_197947A40(v7, v8, &qword_197A89620);
  v9 = OUTLINED_FUNCTION_25_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v3);
  OUTLINED_FUNCTION_100_0();
  sub_1979487E0();
  OUTLINED_FUNCTION_75_3(52);
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v1, 1, v3);
  v12 = OUTLINED_FUNCTION_83_0();
  sub_197947A40(v12, v13, &qword_197A89620);
  v14 = OUTLINED_FUNCTION_91();
  sub_197947A40(v14, v15, &qword_197A89620);
  if (v1 == 1)
  {
    v16 = OUTLINED_FUNCTION_25_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v3);
    v19 = OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_64_0(v19, v20, v3);
    if (!v21)
    {
      sub_197947A40(*(v0 + 32), &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
    v22 = OUTLINED_FUNCTION_100_0();
    v23(v22);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v3);
  }

  OUTLINED_FUNCTION_136();
  sub_19794B0C4();
  OUTLINED_FUNCTION_7_3();
  sub_1979AA160();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  OUTLINED_FUNCTION_13();

  return v27();
}

uint64_t sub_1979A4430()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return sub_1979A40C8();
}

uint64_t sub_1979A44C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for InferenceError(0);
  v8 = swift_task_alloc();
  v4[3] = v8;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_1979AA2A4;

  return sub_19799DD64(a1, a2, a3, v8);
}

uint64_t _s20ModelManagerServices24InferenceProviderAdapterV15transitionAsset14withIdentifier2to4fromySS_AA9LoadStateOAItYaAA0D5ErrorOYKF(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  *(v6 + 32) = v5;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 97) = *a3;
  *(v6 + 98) = *a4;
  return OUTLINED_FUNCTION_4(sub_1979A4664);
}

void sub_1979A4664()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 97);
  OUTLINED_FUNCTION_94(*(v0 + 32));
  *(v0 + 96) = v1;
  OUTLINED_FUNCTION_26();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_78_2(v2);
  OUTLINED_FUNCTION_147();

  __asm { BRAA            X5, X16 }
}

uint64_t sub_1979A4780()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_1979A4D84;
  }

  else
  {
    v7 = sub_1979A4880;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1979A4880()
{
  OUTLINED_FUNCTION_49_0();
  if (*(v0 + 97))
  {
    if (*(v0 + 97) == 1)
    {
      v1 = 0x4D63696D616E7964;
    }

    else
    {
      v1 = 0x646564616F6CLL;
    }

    v2 = OUTLINED_FUNCTION_143_0(v1);

    if ((v2 & 1) == 0)
    {
      if (*(v0 + 98))
      {
        if (*(v0 + 98) == 1)
        {
          v3 = 0x4D63696D616E7964;
        }

        else
        {
          v3 = 0x646564616F6CLL;
        }

        v4 = OUTLINED_FUNCTION_143_0(v3);

        if ((v4 & 1) == 0)
        {
          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_147();

          __asm { BRAA            X1, X16 }
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_94(*(v0 + 32));
      OUTLINED_FUNCTION_26();
      v10 = swift_task_alloc();
      *(v0 + 80) = v10;
      *v10 = v0;
      OUTLINED_FUNCTION_78_2(v10);
      OUTLINED_FUNCTION_147();

      __asm { BRAA            X4, X16 }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_94(*(v0 + 32));
  OUTLINED_FUNCTION_26();
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_78_2(v7);
  OUTLINED_FUNCTION_147();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_1979A4B4C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1979A4E3C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t sub_1979A4C68()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1979A4EF4, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t sub_1979A4D84()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 56);
  MEMORY[0x19A8EBBD0](v1);
  OUTLINED_FUNCTION_118();
  InferenceError.init(wrapping:)();
  type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_1_4();
  sub_19796AA70(v2);
  OUTLINED_FUNCTION_52_2();
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_23_1();

  return v3();
}